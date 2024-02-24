namespace Win32.Security.Cryptography.Certificates;

using System;
using Win32.Foundation;
using Win32.Security.Authentication.Identity;
using Win32.Security.Cryptography;
using Win32.System.Com;

static
{
	#region Constants
	public const String wszREGKEYNOSYSTEMCERTSVCPATH = "CurrentControlSet\\Services\\CertSvc";
	public const String wszREGKEYCERTSVCPATH = "SYSTEM\\CurrentControlSet\\Services\\CertSvc";
	public const uint32 CA_DISP_INCOMPLETE = 0;
	public const uint32 CA_DISP_ERROR = 1;
	public const uint32 CA_DISP_REVOKED = 2;
	public const uint32 CA_DISP_VALID = 3;
	public const uint32 CA_DISP_INVALID = 4;
	public const uint32 CA_DISP_UNDER_SUBMISSION = 5;
	public const uint32 KRA_DISP_EXPIRED = 0;
	public const uint32 KRA_DISP_NOTFOUND = 1;
	public const uint32 KRA_DISP_REVOKED = 2;
	public const uint32 KRA_DISP_VALID = 3;
	public const uint32 KRA_DISP_INVALID = 4;
	public const uint32 KRA_DISP_UNTRUSTED = 5;
	public const uint32 KRA_DISP_NOTLOADED = 6;
	public const uint32 CA_ACCESS_MASKROLES = 255;
	public const uint32 CA_CRL_BASE = 1;
	public const uint32 CA_CRL_DELTA = 2;
	public const uint32 CA_CRL_REPUBLISH = 16;
	public const uint32 ICF_ALLOWFOREIGN = 65536;
	public const uint32 ICF_EXISTINGROW = 131072;
	public const uint32 IKF_OVERWRITE = 65536;
	public const String wszOCSPCAPROP_CACERTIFICATE = "CACertificate";
	public const String wszOCSPCAPROP_HASHALGORITHMID = "HashAlgorithmId";
	public const String wszOCSPCAPROP_SIGNINGFLAGS = "SigningFlags";
	public const String wszOCSPCAPROP_REMINDERDURATION = "ReminderDuration";
	public const String wszOCSPCAPROP_SIGNINGCERTIFICATE = "SigningCertificate";
	public const String wszOCSPCAPROP_CSPNAME = "CSPName";
	public const String wszOCSPCAPROP_KEYSPEC = "KeySpec";
	public const String wszOCSPCAPROP_ERRORCODE = "ErrorCode";
	public const String wszOCSPCAPROP_PROVIDERCLSID = "ProviderCLSID";
	public const String wszOCSPCAPROP_PROVIDERPROPERTIES = "Provider";
	public const String wszOCSPCAPROP_LOCALREVOCATIONINFORMATION = "LocalRevocationInformation";
	public const String wszOCSPCAPROP_SIGNINGCERTIFICATETEMPLATE = "SigningCertificateTemplate";
	public const String wszOCSPCAPROP_CACONFIG = "CAConfig";
	public const String wszOCSPPROP_LOGLEVEL = "LogLevel";
	public const String wszOCSPPROP_DEBUG = "Debug";
	public const String wszOCSPPROP_AUDITFILTER = "AuditFilter";
	public const String wszOCSPPROP_ARRAYCONTROLLER = "ArrayController";
	public const String wszOCSPPROP_ARRAYMEMBERS = "ArrayMembers";
	public const String wszOCSPPROP_ENROLLPOLLINTERVAL = "EnrollPollInterval";
	public const String wszOCSPISAPIPROP_VIRTUALROOTNAME = "VirtualRootName";
	public const String wszOCSPISAPIPROP_NUMOFTHREADS = "NumOfThreads";
	public const String wszOCSPISAPIPROP_NUMOFBACKENDCONNECTIONS = "NumOfBackendConnections";
	public const String wszOCSPISAPIPROP_REFRESHRATE = "RefreshRate";
	public const String wszOCSPISAPIPROP_MAXNUMOFCACHEENTRIES = "MaxNumOfCacheEntries";
	public const String wszOCSPISAPIPROP_MAXAGE = "MaxAge";
	public const String wszOCSPISAPIPROP_DEBUG = "ISAPIDebug";
	public const String wszOCSPCOMMONPROP_REQFLAGS = "RequestFlags";
	public const String wszOCSPCOMMONPROP_MAXINCOMINGMESSAGESIZE = "MaxIncomingMessageSize";
	public const String wszOCSPCOMMONPROP_MAXNUMOFREQUESTENTRIES = "MaxNumOfRequestEntries";
	public const String wszOCSPREVPROP_CRLURLTIMEOUT = "CrlUrlTimeOut";
	public const String wszOCSPREVPROP_BASECRLURLS = "BaseCrlUrls";
	public const String wszOCSPREVPROP_SERIALNUMBERSDIRS = "IssuedSerialNumbersDirectories";
	public const String wszOCSPREVPROP_BASECRL = "BaseCrl";
	public const String wszOCSPREVPROP_DELTACRLURLS = "DeltaCrlUrls";
	public const String wszOCSPREVPROP_DELTACRL = "DeltaCrl";
	public const String wszOCSPREVPROP_REFRESHTIMEOUT = "RefreshTimeOut";
	public const String wszOCSPREVPROP_ERRORCODE = "RevocationErrorCode";
	public const String szBACKUPANNOTATION = "Cert Server Backup Interface";
	public const String szRESTOREANNOTATION = "Cert Server Restore Interface";
	public const uint32 CSBACKUP_TYPE_MASK = 3;
	public const uint32 CSRESTORE_TYPE_FULL = 1;
	public const uint32 CSRESTORE_TYPE_ONLINE = 2;
	public const uint32 CSRESTORE_TYPE_CATCHUP = 4;
	public const uint32 CSRESTORE_TYPE_MASK = 5;
	public const uint32 CSBACKUP_DISABLE_INCREMENTAL = 4294967295;
	public const uint32 CSBFT_DIRECTORY = 128;
	public const uint32 CSBFT_DATABASE_DIRECTORY = 64;
	public const uint32 CSBFT_LOG_DIRECTORY = 32;
	public const uint64 CSCONTROL_SHUTDOWN = 1uL;
	public const uint64 CSCONTROL_SUSPEND = 2uL;
	public const uint64 CSCONTROL_RESTART = 3uL;
	public const String wszCONFIG_COMMONNAME = "CommonName";
	public const String wszCONFIG_ORGUNIT = "OrgUnit";
	public const String wszCONFIG_ORGANIZATION = "Organization";
	public const String wszCONFIG_LOCALITY = "Locality";
	public const String wszCONFIG_STATE = "State";
	public const String wszCONFIG_COUNTRY = "Country";
	public const String wszCONFIG_CONFIG = "Config";
	public const String wszCONFIG_EXCHANGECERTIFICATE = "ExchangeCertificate";
	public const String wszCONFIG_SIGNATURECERTIFICATE = "SignatureCertificate";
	public const String wszCONFIG_DESCRIPTION = "Description";
	public const String wszCONFIG_COMMENT = "Comment";
	public const String wszCONFIG_SERVER = "Server";
	public const String wszCONFIG_AUTHORITY = "Authority";
	public const String wszCONFIG_SANITIZEDNAME = "SanitizedName";
	public const String wszCONFIG_SHORTNAME = "ShortName";
	public const String wszCONFIG_SANITIZEDSHORTNAME = "SanitizedShortName";
	public const String wszCONFIG_FLAGS = "Flags";
	public const String wszCONFIG_WEBENROLLMENTSERVERS = "WebEnrollmentServers";
	public const uint32 CAIF_DSENTRY = 1;
	public const uint32 CAIF_SHAREDFOLDERENTRY = 2;
	public const uint32 CAIF_REGISTRY = 4;
	public const uint32 CAIF_LOCAL = 8;
	public const uint32 CAIF_REGISTRYPARENT = 16;
	public const uint32 CR_IN_ENCODEANY = 255;
	public const uint32 CR_IN_ENCODEMASK = 255;
	public const uint32 CR_IN_FORMATANY = 0;
	public const uint32 CR_IN_PKCS10 = 256;
	public const uint32 CR_IN_KEYGEN = 512;
	public const uint32 CR_IN_PKCS7 = 768;
	public const uint32 CR_IN_CMC = 1024;
	public const uint32 CR_IN_CHALLENGERESPONSE = 1280;
	public const uint32 CR_IN_SIGNEDCERTIFICATETIMESTAMPLIST = 1536;
	public const uint32 CR_IN_FORMATMASK = 65280;
	public const uint32 CR_IN_SCEP = 65536;
	public const uint32 CR_IN_RPC = 131072;
	public const uint32 CR_IN_HTTP = 196608;
	public const uint32 CR_IN_FULLRESPONSE = 262144;
	public const uint32 CR_IN_CRLS = 524288;
	public const uint32 CR_IN_MACHINE = 1048576;
	public const uint32 CR_IN_ROBO = 2097152;
	public const uint32 CR_IN_CLIENTIDNONE = 4194304;
	public const uint32 CR_IN_CONNECTONLY = 8388608;
	public const uint32 CR_IN_RETURNCHALLENGE = 16777216;
	public const uint32 CR_IN_SCEPPOST = 33554432;
	public const uint32 CR_IN_CERTIFICATETRANSPARENCY = 67108864;
	public const uint32 CR_DISP_REVOKED = 6;
	public const uint32 CR_OUT_BASE64REQUESTHEADER = 3;
	public const uint32 CR_OUT_HEX = 4;
	public const uint32 CR_OUT_HEXASCII = 5;
	public const uint32 CR_OUT_BASE64X509CRLHEADER = 9;
	public const uint32 CR_OUT_HEXADDR = 10;
	public const uint32 CR_OUT_HEXASCIIADDR = 11;
	public const uint32 CR_OUT_HEXRAW = 12;
	public const uint32 CR_OUT_ENCODEMASK = 255;
	public const uint32 CR_OUT_CHAIN = 256;
	public const uint32 CR_OUT_CRLS = 512;
	public const uint32 CR_OUT_NOCRLF = 1073741824;
	public const uint32 CR_OUT_NOCR = 2147483648;
	public const uint32 CR_GEMT_DEFAULT = 0;
	public const uint32 CR_GEMT_HRESULT_STRING = 1;
	public const uint32 CR_GEMT_HTTP_ERROR = 2;
	public const uint32 CR_PROP_NONE = 0;
	public const uint32 CR_PROP_FILEVERSION = 1;
	public const uint32 CR_PROP_PRODUCTVERSION = 2;
	public const uint32 CR_PROP_EXITCOUNT = 3;
	public const uint32 CR_PROP_EXITDESCRIPTION = 4;
	public const uint32 CR_PROP_POLICYDESCRIPTION = 5;
	public const uint32 CR_PROP_CANAME = 6;
	public const uint32 CR_PROP_SANITIZEDCANAME = 7;
	public const uint32 CR_PROP_SHAREDFOLDER = 8;
	public const uint32 CR_PROP_PARENTCA = 9;
	public const uint32 CR_PROP_CATYPE = 10;
	public const uint32 CR_PROP_CASIGCERTCOUNT = 11;
	public const uint32 CR_PROP_CASIGCERT = 12;
	public const uint32 CR_PROP_CASIGCERTCHAIN = 13;
	public const uint32 CR_PROP_CAXCHGCERTCOUNT = 14;
	public const uint32 CR_PROP_CAXCHGCERT = 15;
	public const uint32 CR_PROP_CAXCHGCERTCHAIN = 16;
	public const uint32 CR_PROP_BASECRL = 17;
	public const uint32 CR_PROP_DELTACRL = 18;
	public const uint32 CR_PROP_CACERTSTATE = 19;
	public const uint32 CR_PROP_CRLSTATE = 20;
	public const uint32 CR_PROP_CAPROPIDMAX = 21;
	public const uint32 CR_PROP_DNSNAME = 22;
	public const uint32 CR_PROP_ROLESEPARATIONENABLED = 23;
	public const uint32 CR_PROP_KRACERTUSEDCOUNT = 24;
	public const uint32 CR_PROP_KRACERTCOUNT = 25;
	public const uint32 CR_PROP_KRACERT = 26;
	public const uint32 CR_PROP_KRACERTSTATE = 27;
	public const uint32 CR_PROP_ADVANCEDSERVER = 28;
	public const uint32 CR_PROP_TEMPLATES = 29;
	public const uint32 CR_PROP_BASECRLPUBLISHSTATUS = 30;
	public const uint32 CR_PROP_DELTACRLPUBLISHSTATUS = 31;
	public const uint32 CR_PROP_CASIGCERTCRLCHAIN = 32;
	public const uint32 CR_PROP_CAXCHGCERTCRLCHAIN = 33;
	public const uint32 CR_PROP_CACERTSTATUSCODE = 34;
	public const uint32 CR_PROP_CAFORWARDCROSSCERT = 35;
	public const uint32 CR_PROP_CABACKWARDCROSSCERT = 36;
	public const uint32 CR_PROP_CAFORWARDCROSSCERTSTATE = 37;
	public const uint32 CR_PROP_CABACKWARDCROSSCERTSTATE = 38;
	public const uint32 CR_PROP_CACERTVERSION = 39;
	public const uint32 CR_PROP_SANITIZEDCASHORTNAME = 40;
	public const uint32 CR_PROP_CERTCDPURLS = 41;
	public const uint32 CR_PROP_CERTAIAURLS = 42;
	public const uint32 CR_PROP_CERTAIAOCSPURLS = 43;
	public const uint32 CR_PROP_LOCALENAME = 44;
	public const uint32 CR_PROP_SUBJECTTEMPLATE_OIDS = 45;
	public const uint32 CR_PROP_SCEPSERVERCERTS = 1000;
	public const uint32 CR_PROP_SCEPSERVERCAPABILITIES = 1001;
	public const uint32 CR_PROP_SCEPSERVERCERTSCHAIN = 1002;
	public const uint32 CR_PROP_SCEPMIN = 1000;
	public const uint32 CR_PROP_SCEPMAX = 1002;
	public const uint32 FR_PROP_CLAIMCHALLENGE = 22;
	public const uint32 EAN_NAMEOBJECTID = 2147483648;
	public const uint32 EANR_SUPPRESS_IA5CONVERSION = 2147483648;
	public const uint32 CERTENROLL_INDEX_BASE = 0;
	public const uint32 EXITEVENT_INVALID = 0;
	public const uint32 EXITEVENT_STARTUP = 128;
	public const uint32 EXITEVENT_CERTIMPORTED = 512;
	public const uint32 ENUMEXT_OBJECTID = 1;
	public const uint32 CMM_REFRESHONLY = 1;
	public const uint32 CMM_READONLY = 2;
	public const uint32 DBG_CERTSRV = 1;
	public const String wszSERVICE_NAME = "CertSvc";
	public const String wszREGKEYBASE = "SYSTEM\\CurrentControlSet\\Services\\CertSvc";
	public const String wszREGKEYCONFIG = "Configuration";
	public const String wszREGACTIVE = "Active";
	public const String wszREGDIRECTORY = "ConfigurationDirectory";
	public const String wszREGDBDIRECTORY = "DBDirectory";
	public const String wszREGDBLOGDIRECTORY = "DBLogDirectory";
	public const String wszREGDBSYSDIRECTORY = "DBSystemDirectory";
	public const String wszREGDBTEMPDIRECTORY = "DBTempDirectory";
	public const String wszREGDBSESSIONCOUNT = "DBSessionCount";
	public const String wszREGDBMAXREADSESSIONCOUNT = "DBMaxReadSessionCount";
	public const String wszREGDBFLAGS = "DBFlags";
	public const String wszREGDBLASTFULLBACKUP = "DBLastFullBackup";
	public const String wszREGDBLASTINCREMENTALBACKUP = "DBLastIncrementalBackup";
	public const String wszREGDBLASTRECOVERY = "DBLastRecovery";
	public const String wszREGWEBCLIENTCAMACHINE = "WebClientCAMachine";
	public const String wszREGVERSION = "Version";
	public const String wszREGWEBCLIENTCANAME = "WebClientCAName";
	public const String wszREGWEBCLIENTCATYPE = "WebClientCAType";
	public const String wszREGLDAPFLAGS = "LDAPFlags";
	public const String wszREGCERTSRVDEBUG = "Debug";
	public const uint32 DBSESSIONCOUNTDEFAULT = 100;
	public const uint32 DBFLAGS_READONLY = 1;
	public const uint32 DBFLAGS_CREATEIFNEEDED = 2;
	public const uint32 DBFLAGS_CIRCULARLOGGING = 4;
	public const uint32 DBFLAGS_LAZYFLUSH = 8;
	public const uint32 DBFLAGS_MAXCACHESIZEX100 = 16;
	public const uint32 DBFLAGS_CHECKPOINTDEPTH60MB = 32;
	public const uint32 DBFLAGS_LOGBUFFERSLARGE = 64;
	public const uint32 DBFLAGS_LOGBUFFERSHUGE = 128;
	public const uint32 DBFLAGS_LOGFILESIZE16MB = 256;
	public const uint32 DBFLAGS_MULTITHREADTRANSACTIONS = 512;
	public const uint32 DBFLAGS_DISABLESNAPSHOTBACKUP = 1024;
	public const uint32 DBFLAGS_ENABLEVOLATILEREQUESTS = 2048;
	public const uint32 LDAPF_SSLENABLE = 1;
	public const uint32 LDAPF_SIGNDISABLE = 2;
	public const uint32 CSVER_MAJOR_WIN2K = 1;
	public const uint32 CSVER_MINOR_WIN2K = 1;
	public const uint32 CSVER_MAJOR_WHISTLER = 2;
	public const uint32 CSVER_MINOR_WHISTLER_BETA2 = 1;
	public const uint32 CSVER_MINOR_WHISTLER_BETA3 = 2;
	public const uint32 CSVER_MAJOR_LONGHORN = 3;
	public const uint32 CSVER_MINOR_LONGHORN_BETA1 = 1;
	public const uint32 CSVER_MAJOR_WIN7 = 4;
	public const uint32 CSVER_MINOR_WIN7 = 1;
	public const uint32 CSVER_MAJOR_WIN8 = 5;
	public const uint32 CSVER_MINOR_WIN8 = 1;
	public const uint32 CSVER_MAJOR_WINBLUE = 6;
	public const uint32 CSVER_MINOR_WINBLUE = 1;
	public const uint32 CSVER_MAJOR_THRESHOLD = 7;
	public const uint32 CSVER_MINOR_THRESHOLD = 1;
	public const uint32 CSVER_MAJOR = 7;
	public const uint32 CSVER_MINOR = 1;
	public const String wszREGKEYRESTOREINPROGRESS = "RestoreInProgress";
	public const String wszREGKEYDBPARAMETERS = "DBParameters";
	public const String wszREGCADESCRIPTION = "CADescription";
	public const String wszREGCACERTHASH = "CACertHash";
	public const String wszREGCASERIALNUMBER = "CACertSerialNumber";
	public const String wszREGCAXCHGCERTHASH = "CAXchgCertHash";
	public const String wszREGKRACERTHASH = "KRACertHash";
	public const String wszREGKRACERTCOUNT = "KRACertCount";
	public const String wszREGKRAFLAGS = "KRAFlags";
	public const String wszREGCATYPE = "CAType";
	public const String wszREGCERTENROLLCOMPATIBLE = "CertEnrollCompatible";
	public const String wszREGENFORCEX500NAMELENGTHS = "EnforceX500NameLengths";
	public const String wszREGCOMMONNAME = "CommonName";
	public const String wszREGCLOCKSKEWMINUTES = "ClockSkewMinutes";
	public const String wszREGCRLNEXTPUBLISH = "CRLNextPublish";
	public const String wszREGCRLPERIODSTRING = "CRLPeriod";
	public const String wszREGCRLPERIODCOUNT = "CRLPeriodUnits";
	public const String wszREGCRLOVERLAPPERIODSTRING = "CRLOverlapPeriod";
	public const String wszREGCRLOVERLAPPERIODCOUNT = "CRLOverlapUnits";
	public const String wszREGCRLDELTANEXTPUBLISH = "CRLDeltaNextPublish";
	public const String wszREGCRLDELTAPERIODSTRING = "CRLDeltaPeriod";
	public const String wszREGCRLDELTAPERIODCOUNT = "CRLDeltaPeriodUnits";
	public const String wszREGCRLDELTAOVERLAPPERIODSTRING = "CRLDeltaOverlapPeriod";
	public const String wszREGCRLDELTAOVERLAPPERIODCOUNT = "CRLDeltaOverlapUnits";
	public const String wszREGCRLPUBLICATIONURLS = "CRLPublicationURLs";
	public const String wszREGCACERTPUBLICATIONURLS = "CACertPublicationURLs";
	public const String wszREGCAXCHGVALIDITYPERIODSTRING = "CAXchgValidityPeriod";
	public const String wszREGCAXCHGVALIDITYPERIODCOUNT = "CAXchgValidityPeriodUnits";
	public const String wszREGCAXCHGOVERLAPPERIODSTRING = "CAXchgOverlapPeriod";
	public const String wszREGCAXCHGOVERLAPPERIODCOUNT = "CAXchgOverlapPeriodUnits";
	public const String wszREGCRLPATH_OLD = "CRLPath";
	public const String wszREGCRLEDITFLAGS = "CRLEditFlags";
	public const String wszREGCRLFLAGS = "CRLFlags";
	public const String wszREGCRLATTEMPTREPUBLISH = "CRLAttemptRepublish";
	public const String wszREGENABLED = "Enabled";
	public const String wszREGFORCETELETEX = "ForceTeletex";
	public const String wszREGLOGLEVEL = "LogLevel";
	public const String wszREGHIGHSERIAL = "HighSerial";
	public const String wszREGPOLICYFLAGS = "PolicyFlags";
	public const String wszREGNAMESEPARATOR = "SubjectNameSeparator";
	public const String wszREGSUBJECTTEMPLATE = "SubjectTemplate";
	public const String wszREGCAUSEDS = "UseDS";
	public const String wszREGVALIDITYPERIODSTRING = "ValidityPeriod";
	public const String wszREGVALIDITYPERIODCOUNT = "ValidityPeriodUnits";
	public const String wszREGPARENTCAMACHINE = "ParentCAMachine";
	public const String wszREGPARENTCANAME = "ParentCAName";
	public const String wszREGREQUESTFILENAME = "RequestFileName";
	public const String wszREGREQUESTID = "RequestId";
	public const String wszREGREQUESTKEYCONTAINER = "RequestKeyContainer";
	public const String wszREGREQUESTKEYINDEX = "RequestKeyIndex";
	public const String wszREGCASERVERNAME = "CAServerName";
	public const String wszREGCACERTFILENAME = "CACertFileName";
	public const String wszREGCASECURITY = "Security";
	public const String wszREGAUDITFILTER = "AuditFilter";
	public const String wszREGOFFICERRIGHTS = "OfficerRights";
	public const String wszENROLLMENTAGENTRIGHTS = "EnrollmentAgentRights";
	public const String wszREGMAXINCOMINGMESSAGESIZE = "MaxIncomingMessageSize";
	public const String wszREGMAXINCOMINGALLOCSIZE = "MaxIncomingAllocSize";
	public const String wszREGROLESEPARATIONENABLED = "RoleSeparationEnabled";
	public const String wszREGALTERNATEPUBLISHDOMAINS = "AlternatePublishDomains";
	public const String wszREGSETUPSTATUS = "SetupStatus";
	public const String wszREGINTERFACEFLAGS = "InterfaceFlags";
	public const String wszREGDSCONFIGDN = "DSConfigDN";
	public const String wszREGDSDOMAINDN = "DSDomainDN";
	public const String wszREGVIEWAGEMINUTES = "ViewAgeMinutes";
	public const String wszREGVIEWIDLEMINUTES = "ViewIdleMinutes";
	public const String wszREGEKPUBLISTDIRECTORIES = "EndorsementKeyListDirectories";
	public const String wszCERTIFICATETRANSPARENCYFLAGS = "CertificateTransparencyFlags";
	public const String wszREGMAXSCTLISTSIZE = "MaxSCTListSize";
	public const String wszREGCERTIFICATETRANSPARENCYINFOOID = "CTInformationExtensionOid";
	public const String wszREGPROCESSINGFLAGS = "ProcessingFlags";
	public const String wszREGUSEDEFINEDCACERTINREQ = "UseDefinedCACertInRequest";
	public const String wszREGENABLEDEKUFORDEFINEDCACERT = "EnabledEKUForDefinedCACert";
	public const String wszREGEKUOIDSFORPUBLISHEXPIREDCERTINCRL = "EKUOIDsForPublishExpiredCertInCRL";
	public const String wszCRTFILENAMEEXT = ".crt";
	public const String wszPFXFILENAMEEXT = ".p12";
	public const String wszDATFILENAMEEXT = ".dat";
	public const String wszLOGFILENAMEEXT = ".log";
	public const String wszDBFILENAMEEXT = ".edb";
	public const String szDBBASENAMEPARM = "edb";
	public const String wszLOGPATH = "CertLog";
	public const String wszDBBACKUPSUBDIR = "DataBase";
	public const String wszDBBACKUPCERTBACKDAT = "certbkxp.dat";
	public const uint32 CCLOCKSKEWMINUTESDEFAULT = 10;
	public const uint32 CVIEWAGEMINUTESDEFAULT = 16;
	public const uint32 dwVALIDITYPERIODCOUNTDEFAULT_ROOT = 5;
	public const uint32 dwVALIDITYPERIODCOUNTDEFAULT_ENTERPRISE = 2;
	public const uint32 dwVALIDITYPERIODCOUNTDEFAULT_STANDALONE = 1;
	public const uint32 dwCAXCHGVALIDITYPERIODCOUNTDEFAULT = 1;
	public const uint32 dwCAXCHGOVERLAPPERIODCOUNTDEFAULT = 1;
	public const uint32 dwCRLPERIODCOUNTDEFAULT = 1;
	public const uint32 dwCRLOVERLAPPERIODCOUNTDEFAULT = 0;
	public const uint32 dwCRLDELTAPERIODCOUNTDEFAULT = 1;
	public const uint32 dwCRLDELTAOVERLAPPERIODCOUNTDEFAULT = 0;
	public const uint32 SETUP_SERVER_FLAG = 1;
	public const uint32 SETUP_CLIENT_FLAG = 2;
	public const uint32 SETUP_SUSPEND_FLAG = 4;
	public const uint32 SETUP_REQUEST_FLAG = 8;
	public const uint32 SETUP_ONLINE_FLAG = 16;
	public const uint32 SETUP_DENIED_FLAG = 32;
	public const uint32 SETUP_CREATEDB_FLAG = 64;
	public const uint32 SETUP_ATTEMPT_VROOT_CREATE = 128;
	public const uint32 SETUP_FORCECRL_FLAG = 256;
	public const uint32 SETUP_UPDATE_CAOBJECT_SVRTYPE = 512;
	public const uint32 SETUP_SERVER_UPGRADED_FLAG = 1024;
	public const uint32 SETUP_W2K_SECURITY_NOT_UPGRADED_FLAG = 2048;
	public const uint32 SETUP_SECURITY_CHANGED = 4096;
	public const uint32 SETUP_DCOM_SECURITY_UPDATED_FLAG = 8192;
	public const uint32 SETUP_SERVER_IS_UP_TO_DATE_FLAG = 16384;
	public const uint32 CRLF_DELTA_USE_OLDEST_UNEXPIRED_BASE = 1;
	public const uint32 CRLF_DELETE_EXPIRED_CRLS = 2;
	public const uint32 CRLF_CRLNUMBER_CRITICAL = 4;
	public const uint32 CRLF_REVCHECK_IGNORE_OFFLINE = 8;
	public const uint32 CRLF_IGNORE_INVALID_POLICIES = 16;
	public const uint32 CRLF_REBUILD_MODIFIED_SUBJECT_ONLY = 32;
	public const uint32 CRLF_SAVE_FAILED_CERTS = 64;
	public const uint32 CRLF_IGNORE_UNKNOWN_CMC_ATTRIBUTES = 128;
	public const uint32 CRLF_IGNORE_CROSS_CERT_TRUST_ERROR = 256;
	public const uint32 CRLF_PUBLISH_EXPIRED_CERT_CRLS = 512;
	public const uint32 CRLF_ENFORCE_ENROLLMENT_AGENT = 1024;
	public const uint32 CRLF_DISABLE_RDN_REORDER = 2048;
	public const uint32 CRLF_DISABLE_ROOT_CROSS_CERTS = 4096;
	public const uint32 CRLF_LOG_FULL_RESPONSE = 8192;
	public const uint32 CRLF_USE_XCHG_CERT_TEMPLATE = 16384;
	public const uint32 CRLF_USE_CROSS_CERT_TEMPLATE = 32768;
	public const uint32 CRLF_ALLOW_REQUEST_ATTRIBUTE_SUBJECT = 65536;
	public const uint32 CRLF_REVCHECK_IGNORE_NOREVCHECK = 131072;
	public const uint32 CRLF_PRESERVE_EXPIRED_CA_CERTS = 262144;
	public const uint32 CRLF_PRESERVE_REVOKED_CA_CERTS = 524288;
	public const uint32 CRLF_DISABLE_CHAIN_VERIFICATION = 1048576;
	public const uint32 CRLF_BUILD_ROOTCA_CRLENTRIES_BASEDONKEY = 2097152;
	public const uint32 KRAF_ENABLEFOREIGN = 1;
	public const uint32 KRAF_SAVEBADREQUESTKEY = 2;
	public const uint32 KRAF_ENABLEARCHIVEALL = 4;
	public const uint32 KRAF_DISABLEUSEDEFAULTPROVIDER = 8;
	public const uint32 IF_LOCKICERTREQUEST = 1;
	public const uint32 IF_NOREMOTEICERTREQUEST = 2;
	public const uint32 IF_NOLOCALICERTREQUEST = 4;
	public const uint32 IF_NORPCICERTREQUEST = 8;
	public const uint32 IF_NOREMOTEICERTADMIN = 16;
	public const uint32 IF_NOLOCALICERTADMIN = 32;
	public const uint32 IF_NOREMOTEICERTADMINBACKUP = 64;
	public const uint32 IF_NOLOCALICERTADMINBACKUP = 128;
	public const uint32 IF_NOSNAPSHOTBACKUP = 256;
	public const uint32 IF_ENFORCEENCRYPTICERTREQUEST = 512;
	public const uint32 IF_ENFORCEENCRYPTICERTADMIN = 1024;
	public const uint32 IF_ENABLEEXITKEYRETRIEVAL = 2048;
	public const uint32 IF_ENABLEADMINASAUDITOR = 4096;
	public const uint32 PROCFLG_NONE = 0;
	public const uint32 PROCFLG_ENFORCEGOODKEYS = 1;
	public const uint32 CSURL_SERVERPUBLISH = 1;
	public const uint32 CSURL_ADDTOCERTCDP = 2;
	public const uint32 CSURL_ADDTOFRESHESTCRL = 4;
	public const uint32 CSURL_ADDTOCRLCDP = 8;
	public const uint32 CSURL_PUBLISHRETRY = 16;
	public const uint32 CSURL_ADDTOCERTOCSP = 32;
	public const uint32 CSURL_SERVERPUBLISHDELTA = 64;
	public const uint32 CSURL_ADDTOIDP = 128;
	public const String wszREGKEYCSP = "CSP";
	public const String wszREGKEYENCRYPTIONCSP = "EncryptionCSP";
	public const String wszREGKEYEXITMODULES = "ExitModules";
	public const String wszREGKEYPOLICYMODULES = "PolicyModules";
	public const String wszSECUREDATTRIBUTES = "SignedAttributes";
	public const String wszzDEFAULTSIGNEDATTRIBUTES = "RequesterName\x00";
	public const String wszREGBACKUPLOGDIRECTORY = "BackupLogDirectory";
	public const String wszREGCHECKPOINTFILE = "CheckPointFile";
	public const String wszREGHIGHLOGNUMBER = "HighLogNumber";
	public const String wszREGLOWLOGNUMBER = "LowLogNumber";
	public const String wszREGLOGPATH = "LogPath";
	public const String wszREGRESTOREMAPCOUNT = "RestoreMapCount";
	public const String wszREGRESTOREMAP = "RestoreMap";
	public const String wszREGDATABASERECOVERED = "DatabaseRecovered";
	public const String wszREGRESTORESTATUS = "RestoreStatus";
	public const String wszREGB2ICERTMANAGEMODULE = "ICertManageModule";
	public const String wszREGSP4DEFAULTCONFIGURATION = "DefaultConfiguration";
	public const String wszREGSP4KEYSETNAME = "KeySetName";
	public const String wszREGSP4SUBJECTNAMESEPARATOR = "SubjectNameSeparator";
	public const String wszREGSP4NAMES = "Names";
	public const String wszREGSP4QUERIES = "Queries";
	public const String wszREGNETSCAPECERTTYPE = "NetscapeCertType";
	public const String wszNETSCAPEREVOCATIONTYPE = "Netscape";
	public const String wszREGPROVIDERTYPE = "ProviderType";
	public const String wszREGPROVIDER = "Provider";
	public const String wszHASHALGORITHM = "HashAlgorithm";
	public const String wszENCRYPTIONALGORITHM = "EncryptionAlgorithm";
	public const String wszMACHINEKEYSET = "MachineKeyset";
	public const String wszREGKEYSIZE = "KeySize";
	public const String wszREGSYMMETRICKEYSIZE = "SymmetricKeySize";
	public const String wszCNGPUBLICKEYALGORITHM = "CNGPublicKeyAlgorithm";
	public const String wszCNGHASHALGORITHM = "CNGHashAlgorithm";
	public const String wszCNGENCRYPTIONALGORITHM = "CNGEncryptionAlgorithm";
	public const String wszREGALTERNATESIGNATUREALGORITHM = "AlternateSignatureAlgorithm";
	public const String szNAMESEPARATORDEFAULT = "\n";
	public const String wszPERIODYEARS = "Years";
	public const String wszPERIODMONTHS = "Months";
	public const String wszPERIODWEEKS = "Weeks";
	public const String wszPERIODDAYS = "Days";
	public const String wszPERIODHOURS = "Hours";
	public const String wszPERIODMINUTES = "Minutes";
	public const String wszPERIODSECONDS = "Seconds";
	public const String wszREGISSUERCERTURLFLAGS = "IssuerCertURLFlags";
	public const String wszREGEDITFLAGS = "EditFlags";
	public const String wszREGUPNMAP = "UPNMap";
	public const String wszREGSUBJECTALTNAME = "SubjectAltName";
	public const String wszREGSUBJECTALTNAME2 = "SubjectAltName2";
	public const String wszREGREQUESTDISPOSITION = "RequestDisposition";
	public const String wszREGCAPATHLENGTH = "CAPathLength";
	public const String wszREGREVOCATIONTYPE = "RevocationType";
	public const String wszREGLDAPREVOCATIONCRLURL_OLD = "LDAPRevocationCRLURL";
	public const String wszREGREVOCATIONCRLURL_OLD = "RevocationCRLURL";
	public const String wszREGFTPREVOCATIONCRLURL_OLD = "FTPRevocationCRLURL";
	public const String wszREGFILEREVOCATIONCRLURL_OLD = "FileRevocationCRLURL";
	public const String wszREGREVOCATIONURL = "RevocationURL";
	public const String wszREGLDAPISSUERCERTURL_OLD = "LDAPIssuerCertURL";
	public const String wszREGISSUERCERTURL_OLD = "IssuerCertURL";
	public const String wszREGFTPISSUERCERTURL_OLD = "FTPIssuerCertURL";
	public const String wszREGFILEISSUERCERTURL_OLD = "FileIssuerCertURL";
	public const String wszREGENABLEREQUESTEXTENSIONLIST = "EnableRequestExtensionList";
	public const String wszREGENABLEENROLLEEREQUESTEXTENSIONLIST = "EnableEnrolleeRequestExtensionList";
	public const String wszREGDISABLEEXTENSIONLIST = "DisableExtensionList";
	public const String wszREGEKUOIDSFORVOLATILEREQUESTS = "EKUOIDsforVolatileRequests";
	public const String wszREGLDAPSESSIONOPTIONS = "LDAPSessionOptions";
	public const String wszLDAPSESSIONOPTIONVALUE = "LDAPSessionOptionValue";
	public const String wszREGDEFAULTSMIME = "DefaultSMIME";
	public const uint32 CAPATHLENGTH_INFINITE = 4294967295;
	public const uint32 REQDISP_PENDING = 0;
	public const uint32 REQDISP_ISSUE = 1;
	public const uint32 REQDISP_DENY = 2;
	public const uint32 REQDISP_USEREQUESTATTRIBUTE = 3;
	public const uint32 REQDISP_MASK = 255;
	public const uint32 REQDISP_PENDINGFIRST = 256;
	public const uint32 REQDISP_DEFAULT_ENTERPRISE = 1;
	public const uint32 REVEXT_CDPLDAPURL_OLD = 1;
	public const uint32 REVEXT_CDPHTTPURL_OLD = 2;
	public const uint32 REVEXT_CDPFTPURL_OLD = 4;
	public const uint32 REVEXT_CDPFILEURL_OLD = 8;
	public const uint32 REVEXT_CDPURLMASK_OLD = 255;
	public const uint32 REVEXT_CDPENABLE = 256;
	public const uint32 REVEXT_ASPENABLE = 512;
	public const uint32 REVEXT_DEFAULT_NODS = 256;
	public const uint32 REVEXT_DEFAULT_DS = 256;
	public const uint32 ISSCERT_LDAPURL_OLD = 1;
	public const uint32 ISSCERT_HTTPURL_OLD = 2;
	public const uint32 ISSCERT_FTPURL_OLD = 4;
	public const uint32 ISSCERT_FILEURL_OLD = 8;
	public const uint32 ISSCERT_URLMASK_OLD = 255;
	public const uint32 ISSCERT_ENABLE = 256;
	public const uint32 ISSCERT_DEFAULT_NODS = 256;
	public const uint32 ISSCERT_DEFAULT_DS = 256;
	public const uint32 EDITF_ENABLEREQUESTEXTENSIONS = 1;
	public const uint32 EDITF_REQUESTEXTENSIONLIST = 2;
	public const uint32 EDITF_DISABLEEXTENSIONLIST = 4;
	public const uint32 EDITF_ADDOLDKEYUSAGE = 8;
	public const uint32 EDITF_ADDOLDCERTTYPE = 16;
	public const uint32 EDITF_ATTRIBUTEENDDATE = 32;
	public const uint32 EDITF_BASICCONSTRAINTSCRITICAL = 64;
	public const uint32 EDITF_BASICCONSTRAINTSCA = 128;
	public const uint32 EDITF_ENABLEAKIKEYID = 256;
	public const uint32 EDITF_ATTRIBUTECA = 512;
	public const uint32 EDITF_IGNOREREQUESTERGROUP = 1024;
	public const uint32 EDITF_ENABLEAKIISSUERNAME = 2048;
	public const uint32 EDITF_ENABLEAKIISSUERSERIAL = 4096;
	public const uint32 EDITF_ENABLEAKICRITICAL = 8192;
	public const uint32 EDITF_SERVERUPGRADED = 16384;
	public const uint32 EDITF_ATTRIBUTEEKU = 32768;
	public const uint32 EDITF_ENABLEDEFAULTSMIME = 65536;
	public const uint32 EDITF_EMAILOPTIONAL = 131072;
	public const uint32 EDITF_ATTRIBUTESUBJECTALTNAME2 = 262144;
	public const uint32 EDITF_ENABLELDAPREFERRALS = 524288;
	public const uint32 EDITF_ENABLECHASECLIENTDC = 1048576;
	public const uint32 EDITF_AUDITCERTTEMPLATELOAD = 2097152;
	public const uint32 EDITF_DISABLEOLDOSCNUPN = 4194304;
	public const uint32 EDITF_DISABLELDAPPACKAGELIST = 8388608;
	public const uint32 EDITF_ENABLEUPNMAP = 16777216;
	public const uint32 EDITF_ENABLEOCSPREVNOCHECK = 33554432;
	public const uint32 EDITF_ENABLERENEWONBEHALFOF = 67108864;
	public const uint32 EDITF_ENABLEKEYENCIPHERMENTCACERT = 134217728;
	public const String wszREGLDAPREVOCATIONDN_OLD = "LDAPRevocationDN";
	public const String wszREGLDAPREVOCATIONDNTEMPLATE_OLD = "LDAPRevocationDNTemplate";
	public const String wszCRLPUBLISHRETRYCOUNT = "CRLPublishRetryCount";
	public const String wszREGCERTPUBLISHFLAGS = "PublishCertFlags";
	public const uint32 EXITPUB_FILE = 1;
	public const uint32 EXITPUB_ACTIVEDIRECTORY = 2;
	public const uint32 EXITPUB_REMOVEOLDCERTS = 16;
	public const uint32 EXITPUB_DEFAULT_ENTERPRISE = 2;
	public const uint32 EXITPUB_DEFAULT_STANDALONE = 1;
	public const String wszCLASS_CERTADMIN = "CertificateAuthority.Admin";
	public const String wszCLASS_CERTCONFIG = "CertificateAuthority.Config";
	public const String wszCLASS_CERTGETCONFIG = "CertificateAuthority.GetConfig";
	public const String wszCLASS_CERTENCODE = "CertificateAuthority.Encode";
	public const String wszCLASS_CERTDBMEM = "CertificateAuthority.DBMem";
	public const String wszCLASS_CERTREQUEST = "CertificateAuthority.Request";
	public const String wszCLASS_CERTSERVEREXIT = "CertificateAuthority.ServerExit";
	public const String wszCLASS_CERTSERVERPOLICY = "CertificateAuthority.ServerPolicy";
	public const String wszCLASS_CERTVIEW = "CertificateAuthority.View";
	public const String wszMICROSOFTCERTMODULE_PREFIX = "CertificateAuthority_MicrosoftDefault";
	public const String wszCERTMANAGE_SUFFIX = "Manage";
	public const String wszCERTEXITMODULE_POSTFIX = ".Exit";
	public const String wszCERTPOLICYMODULE_POSTFIX = ".Policy";
	public const String wszCAPOLICYFILE = "CAPolicy.inf";
	public const String wszINFSECTION_CDP = "CRLDistributionPoint";
	public const String wszINFSECTION_AIA = "AuthorityInformationAccess";
	public const String wszINFSECTION_EKU = "EnhancedKeyUsageExtension";
	public const String wszINFSECTION_CCDP = "CrossCertificateDistributionPointsExtension";
	public const String wszINFSECTION_CERTSERVER = "certsrv_server";
	public const String wszINFKEY_RENEWALKEYLENGTH = "RenewalKeyLength";
	public const String wszINFKEY_RENEWALVALIDITYPERIODSTRING = "RenewalValidityPeriod";
	public const String wszINFKEY_RENEWALVALIDITYPERIODCOUNT = "RenewalValidityPeriodUnits";
	public const String wszINFKEY_UTF8 = "UTF8";
	public const String wszINFKEY_CRLPERIODSTRING = "CRLPeriod";
	public const String wszINFKEY_CRLPERIODCOUNT = "CRLPeriodUnits";
	public const String wszINFKEY_CRLDELTAPERIODSTRING = "CRLDeltaPeriod";
	public const String wszINFKEY_CRLDELTAPERIODCOUNT = "CRLDeltaPeriodUnits";
	public const String wszINFKEY_LOADDEFAULTTEMPLATES = "LoadDefaultTemplates";
	public const String wszINFKEY_ENABLEKEYCOUNTING = "EnableKeyCounting";
	public const String wszINFKEY_FORCEUTF8 = "ForceUTF8";
	public const String wszINFKEY_ALTERNATESIGNATUREALGORITHM = "AlternateSignatureAlgorithm";
	public const String wszINFKEY_SHOWALLCSPS = "ShowAllCSPs";
	public const String wszINFKEY_CRITICAL = "Critical";
	public const String wszINFKEY_EMPTY = "Empty";
	public const String wszINFKEY_CCDPSYNCDELTATIME = "SyncDeltaTime";
	public const String wszINFSECTION_CAPOLICY = "CAPolicy";
	public const String wszINFSECTION_POLICYSTATEMENT = "PolicyStatementExtension";
	public const String wszINFSECTION_APPLICATIONPOLICYSTATEMENT = "ApplicationPolicyStatementExtension";
	public const String wszINFKEY_POLICIES = "Policies";
	public const String wszINFKEY_OID = "OID";
	public const String wszINFKEY_NOTICE = "Notice";
	public const String wszINFKEY_FLAGS = "Flags";
	public const String wszINFSECTION_REQUESTATTRIBUTES = "RequestAttributes";
	public const String wszINFSECTION_NAMECONSTRAINTS = "NameConstraintsExtension";
	public const String wszINFKEY_INCLUDE = "Include";
	public const String wszINFKEY_EXCLUDE = "Exclude";
	public const String wszINFKEY_SUBTREE = "SubTree";
	public const String wszINFKEY_UPN = "UPN";
	public const String wszINFKEY_EMAIL = "EMail";
	public const String wszINFKEY_DNS = "DNS";
	public const String wszINFKEY_DIRECTORYNAME = "DirectoryName";
	public const String wszINFKEY_URL = "URL";
	public const String wszINFKEY_IPADDRESS = "IPAddress";
	public const String wszINFKEY_REGISTEREDID = "RegisteredId";
	public const String wszINFKEY_OTHERNAME = "OtherName";
	public const String wszINFSECTION_POLICYMAPPINGS = "PolicyMappingsExtension";
	public const String wszINFSECTION_APPLICATIONPOLICYMAPPINGS = "ApplicationPolicyMappingsExtension";
	public const String wszINFSECTION_POLICYCONSTRAINTS = "PolicyConstraintsExtension";
	public const String wszINFSECTION_APPLICATIONPOLICYCONSTRAINTS = "ApplicationPolicyConstraintsExtension";
	public const String wszINFKEY_REQUIREEXPLICITPOLICY = "RequireExplicitPolicy";
	public const String wszINFKEY_INHIBITPOLICYMAPPING = "InhibitPolicyMapping";
	public const String wszINFSECTION_BASICCONSTRAINTS = "BasicConstraintsExtension";
	public const String wszINFKEY_PATHLENGTH = "PathLength";
	public const String wszINFSECTION_EXTENSIONS = "Extensions";
	public const String wszINFSECTION_PROPERTIES = "Properties";
	public const String wszINFKEY_CONTINUE = "_continue_";
	public const String wszINFSECTION_NEWREQUEST = "NewRequest";
	public const String wszINFKEY_SUBJECT = "Subject";
	public const String wszINFKEY_SUBJECTNAMEFLAGS = "SubjectNameFlags";
	public const String wszINFKEY_X500NAMEFLAGS = "X500NameFlags";
	public const String wszINFKEY_EXPORTABLE = "Exportable";
	public const String wszINFKEY_EXPORTABLEENCRYPTED = "ExportableEncrypted";
	public const String wszINFKEY_HASHALGORITHM = "HashAlgorithm";
	public const String wszINFKEY_KEYALGORITHM = "KeyAlgorithm";
	public const String wszINFKEY_KEYALGORITHMPARMETERS = "KeyAlgorithmParameters";
	public const String wszINFKEY_KEYCONTAINER = "KeyContainer";
	public const String wszINFKEY_READERNAME = "ReaderName";
	public const String wszINFKEY_KEYLENGTH = "KeyLength";
	public const String wszINFKEY_LEGACYKEYSPEC = "KeySpec";
	public const String wszINFKEY_KEYUSAGEEXTENSION = "KeyUsage";
	public const String wszINFKEY_KEYUSAGEPROPERTY = "KeyUsageProperty";
	public const String wszINFKEY_MACHINEKEYSET = "MachineKeySet";
	public const String wszINFKEY_PRIVATEKEYARCHIVE = "PrivateKeyArchive";
	public const String wszINFKEY_ENCRYPTIONALGORITHM = "EncryptionAlgorithm";
	public const String wszINFKEY_ENCRYPTIONLENGTH = "EncryptionLength";
	public const String wszINFKEY_PROVIDERNAME = "ProviderName";
	public const String wszINFKEY_PROVIDERTYPE = "ProviderType";
	public const String wszINFKEY_RENEWALCERT = "RenewalCert";
	public const String wszINFKEY_REQUESTTYPE = "RequestType";
	public const String wszINFKEY_SECURITYDESCRIPTOR = "SecurityDescriptor";
	public const String wszINFKEY_SILENT = "Silent";
	public const String wszINFKEY_SMIME = "SMIME";
	public const String wszINFKEY_SUPPRESSDEFAULTS = "SuppressDefaults";
	public const String wszINFKEY_USEEXISTINGKEY = "UseExistingKeySet";
	public const String wszINFKEY_USERPROTECTED = "UserProtected";
	public const String wszINFKEY_KEYPROTECTION = "KeyProtection";
	public const String wszINFKEY_UICONTEXTMESSAGE = "UIContextMessage";
	public const String wszINFKEY_FRIENDLYNAME = "FriendlyName";
	public const String wszINFKEY_NOTBEFORE = "NotBefore";
	public const String wszINFKEY_NOTAFTER = "NotAfter";
	public const String wszINFKEY_ATTESTPRIVATEKEY = "AttestPrivateKey";
	public const String wszINFKEY_PUBLICKEY = "PublicKey";
	public const String wszINFKEY_PUBLICKEYPARAMETERS = "PublicKeyParameters";
	public const String wszINFKEY_ECCKEYPARAMETERS = "EccKeyParameters";
	public const String wszINFKEY_ECCKEYPARAMETERS_P = "EccKeyParameters_P";
	public const String wszINFKEY_ECCKEYPARAMETERS_A = "EccKeyParameters_A";
	public const String wszINFKEY_ECCKEYPARAMETERS_B = "EccKeyParameters_B";
	public const String wszINFKEY_ECCKEYPARAMETERS_SEED = "EccKeyParameters_Seed";
	public const String wszINFKEY_ECCKEYPARAMETERS_BASE = "EccKeyParameters_Base";
	public const String wszINFKEY_ECCKEYPARAMETERS_ORDER = "EccKeyParameters_Order";
	public const String wszINFKEY_ECCKEYPARAMETERS_COFACTOR = "EccKeyParameters_Cofactor";
	public const String wszINFKEY_ECCKEYPARAMETERSTYPE = "EccKeyParametersType";
	public const String wszINFKEY_SERIALNUMBER = "SerialNumber";
	public const String wszINFKEY_CATHUMBPRINT = "CAThumbprint";
	public const String wszINFKEY_CACERTS = "CACerts";
	public const String wszINFKEY_CACAPABILITIES = "CACapabilities";
	public const String wszINFKEY_CHALLENGEPASSWORD = "ChallengePassword";
	public const String wszINFVALUE_REQUESTTYPE_PKCS10 = "PKCS10";
	public const String wszINFVALUE_REQUESTTYPE_PKCS7 = "PKCS7";
	public const String wszINFVALUE_REQUESTTYPE_CMC = "CMC";
	public const String wszINFVALUE_REQUESTTYPE_CERT = "Cert";
	public const String wszINFVALUE_REQUESTTYPE_SCEP = "SCEP";
	public const String wszINFVALUE_ENDORSEMENTKEY = "EndorsementKey";
	public const String wszREGEXITSMTPKEY = "SMTP";
	public const String wszREGEXITSMTPTEMPLATES = "Templates";
	public const String wszREGEXITSMTPEVENTFILTER = "EventFilter";
	public const String wszREGEXITSMTPSERVER = "SMTPServer";
	public const String wszREGEXITSMTPAUTHENTICATE = "SMTPAuthenticate";
	public const String wszREGEXITDENIEDKEY = "Denied";
	public const String wszREGEXITISSUEDKEY = "Issued";
	public const String wszREGEXITPENDINGKEY = "Pending";
	public const String wszREGEXITREVOKEDKEY = "Revoked";
	public const String wszREGEXITCRLISSUEDKEY = "CRLIssued";
	public const String wszREGEXITSHUTDOWNKEY = "Shutdown";
	public const String wszREGEXITSTARTUPKEY = "Startup";
	public const String wszREGEXITIMPORTEDKEY = "Imported";
	public const String wszREGEXITSMTPFROM = "From";
	public const String wszREGEXITSMTPTO = "To";
	public const String wszREGEXITSMTPCC = "Cc";
	public const String wszREGEXITTITLEFORMAT = "TitleFormat";
	public const String wszREGEXITTITLEARG = "TitleArg";
	public const String wszREGEXITBODYFORMAT = "BodyFormat";
	public const String wszREGEXITBODYARG = "BodyArg";
	public const String wszREGEXITPROPNOTFOUND = "???";
	public const String wszREGKEYENROLLMENT = "Software\\Microsoft\\Cryptography\\AutoEnrollment";
	public const String wszREGKEYGROUPPOLICYENROLLMENT = "Software\\Policies\\Microsoft\\Cryptography\\AutoEnrollment";
	public const String wszREGMAXPENDINGREQUESTDAYS = "MaxPendingRequestDays";
	public const String wszREGAELOGLEVEL_OLD = "AEEventLogLevel";
	public const String wszREGENROLLFLAGS = "EnrollFlags";
	public const String wszREGVERIFYFLAGS = "VerifyFlags";
	public const String wszREGUNICODE = "Unicode";
	public const String wszREGAIKCLOUDCAURL = "AIKCloudCAURL";
	public const String wszREGAIKKEYALGORITHM = "AIKKeyAlgorithm";
	public const String wszREGAIKKEYLENGTH = "AIKKeyLength";
	public const String wszREGPRESERVESCEPDUMMYCERTS = "PreserveSCEPDummyCerts";
	public const String wszREGALLPROVIDERS = "All";
	public const uint32 TP_MACHINEPOLICY = 1;
	public const String wszREGKEYREPAIR = "KeyRepair";
	public const uint32 KR_ENABLE_MACHINE = 1;
	public const uint32 KR_ENABLE_USER = 2;
	public const String wszPROPDISTINGUISHEDNAME = "DistinguishedName";
	public const String wszPROPRAWNAME = "RawName";
	public const String wszPROPCOUNTRY = "Country";
	public const String wszPROPORGANIZATION = "Organization";
	public const String wszPROPORGUNIT = "OrgUnit";
	public const String wszPROPCOMMONNAME = "CommonName";
	public const String wszPROPLOCALITY = "Locality";
	public const String wszPROPSTATE = "State";
	public const String wszPROPTITLE = "Title";
	public const String wszPROPGIVENNAME = "GivenName";
	public const String wszPROPINITIALS = "Initials";
	public const String wszPROPSURNAME = "SurName";
	public const String wszPROPDOMAINCOMPONENT = "DomainComponent";
	public const String wszPROPEMAIL = "EMail";
	public const String wszPROPSTREETADDRESS = "StreetAddress";
	public const String wszPROPUNSTRUCTUREDNAME = "UnstructuredName";
	public const String wszPROPUNSTRUCTUREDADDRESS = "UnstructuredAddress";
	public const String wszPROPDEVICESERIALNUMBER = "DeviceSerialNumber";
	public const String wszPROPSUBJECTDOT = "Subject.";
	public const String wszPROPREQUESTDOT = "Request.";
	public const String wszPROPREQUESTREQUESTID = "RequestID";
	public const String wszPROPREQUESTRAWREQUEST = "RawRequest";
	public const String wszPROPREQUESTRAWARCHIVEDKEY = "RawArchivedKey";
	public const String wszPROPREQUESTARCHIVEDKEY = "ArchivedKey";
	public const String wszPROPREQUESTKEYRECOVERYHASHES = "KeyRecoveryHashes";
	public const String wszPROPREQUESTRAWOLDCERTIFICATE = "RawOldCertificate";
	public const String wszPROPREQUESTATTRIBUTES = "RequestAttributes";
	public const String wszPROPREQUESTTYPE = "RequestType";
	public const String wszPROPREQUESTFLAGS = "RequestFlags";
	public const String wszPROPREQUESTSTATUSCODE = "StatusCode";
	public const String wszPROPREQUESTDISPOSITION = "Disposition";
	public const String wszPROPREQUESTDISPOSITIONMESSAGE = "DispositionMessage";
	public const String wszPROPREQUESTSUBMITTEDWHEN = "SubmittedWhen";
	public const String wszPROPREQUESTRESOLVEDWHEN = "ResolvedWhen";
	public const String wszPROPREQUESTREVOKEDWHEN = "RevokedWhen";
	public const String wszPROPREQUESTREVOKEDEFFECTIVEWHEN = "RevokedEffectiveWhen";
	public const String wszPROPREQUESTREVOKEDREASON = "RevokedReason";
	public const String wszPROPREQUESTERNAME = "RequesterName";
	public const String wszPROPCALLERNAME = "CallerName";
	public const String wszPROPSIGNERPOLICIES = "SignerPolicies";
	public const String wszPROPSIGNERAPPLICATIONPOLICIES = "SignerApplicationPolicies";
	public const String wszPROPOFFICER = "Officer";
	public const String wszPROPPUBLISHEXPIREDCERTINCRL = "PublishExpiredCertInCRL";
	public const String wszPROPREQUESTERNAMEFROMOLDCERTIFICATE = "RequesterNameFromOldCertificate";
	public const String wszPROPATTESTATIONCHALLENGE = "AttestationChallenge";
	public const String wszPROPENDORSEMENTKEYHASH = "EndorsementKeyHash";
	public const String wszPROPENDORSEMENTCERTIFICATEHASH = "EndorsementCertificateHash";
	public const String wszPROPRAWPRECERTIFICATE = "RawPrecertificate";
	public const String wszPROPCHALLENGE = "Challenge";
	public const String wszPROPEXPECTEDCHALLENGE = "ExpectedChallenge";
	public const String wszPROPDISPOSITION = "Disposition";
	public const String wszPROPDISPOSITIONDENY = "Deny";
	public const String wszPROPDISPOSITIONPENDING = "Pending";
	public const String wszPROPVALIDITYPERIODSTRING = "ValidityPeriod";
	public const String wszPROPVALIDITYPERIODCOUNT = "ValidityPeriodUnits";
	public const String wszPROPEXPIRATIONDATE = "ExpirationDate";
	public const String wszPROPCERTTYPE = "CertType";
	public const String wszPROPCERTTEMPLATE = "CertificateTemplate";
	public const String wszPROPCERTUSAGE = "CertificateUsage";
	public const String wszPROPREQUESTOSVERSION = "RequestOSVersion";
	public const String wszPROPREQUESTCSPPROVIDER = "RequestCSPProvider";
	public const String wszPROPEXITCERTFILE = "CertFile";
	public const String wszPROPCLIENTBROWSERMACHINE = "cbm";
	public const String wszPROPCERTCLIENTMACHINE = "ccm";
	public const String wszPROPCLIENTDCDNS = "cdc";
	public const String wszPROPREQUESTMACHINEDNS = "rmd";
	public const String wszPROPSUBJECTALTNAME2 = "san";
	public const String wszPROPDNS = "dns";
	public const String wszPROPDN = "dn";
	public const String wszPROPURL = "url";
	public const String wszPROPIPADDRESS = "ipaddress";
	public const String wszPROPGUID = "guid";
	public const String wszPROPOID = "oid";
	public const String wszPROPUPN = "upn";
	public const String szPROPASNTAG = "{asn}";
	public const String wszPROPCRITICALTAG = "{critical}";
	public const String wszPROPUTF8TAG = "{utf8}";
	public const String wszPROPOCTETTAG = "{octet}";
	public const String wszPROPHEXTAG = "{hex}";
	public const String wszPROPTEXTTAG = "{text}";
	public const String wszPROPDECIMALTAG = "{decimal}";
	public const String wszPROPFILETAG = "{file}";
	public const String wszAT_EKCERTINF = "@EKCert";
	public const String wszAT_TESTROOT = "@TestRoot";
	public const String wszPROPCATYPE = "CAType";
	public const String wszPROPSANITIZEDCANAME = "SanitizedCAName";
	public const String wszPROPSANITIZEDSHORTNAME = "SanitizedShortName";
	public const String wszPROPMACHINEDNSNAME = "MachineDNSName";
	public const String wszPROPMODULEREGLOC = "ModuleRegistryLocation";
	public const String wszPROPUSEDS = "fUseDS";
	public const String wszPROPDELTACRLSDISABLED = "fDeltaCRLsDisabled";
	public const String wszPROPSERVERUPGRADED = "fServerUpgraded";
	public const String wszPROPCONFIGDN = "ConfigDN";
	public const String wszPROPDOMAINDN = "DomainDN";
	public const String wszPROPLOGLEVEL = "LogLevel";
	public const String wszPROPSESSIONCOUNT = "SessionCount";
	public const String wszPROPTEMPLATECHANGESEQUENCENUMBER = "TemplateChangeSequenceNumber";
	public const String wszPROPVOLATILEMODE = "VolatileMode";
	public const String wszLOCALIZEDTIMEPERIODUNITS = "LocalizedTimePeriodUnits";
	public const String wszPROPREQUESTERCAACCESS = "RequesterCAAccess";
	public const String wszPROPUSERDN = "UserDN";
	public const String wszPROPKEYARCHIVED = "KeyArchived";
	public const String wszPROPCERTCOUNT = "CertCount";
	public const String wszPROPRAWCACERTIFICATE = "RawCACertificate";
	public const String wszPROPCERTSTATE = "CertState";
	public const String wszPROPCERTSUFFIX = "CertSuffix";
	public const String wszPROPRAWCRL = "RawCRL";
	public const String wszPROPRAWDELTACRL = "RawDeltaCRL";
	public const String wszPROPCRLINDEX = "CRLIndex";
	public const String wszPROPCRLSTATE = "CRLState";
	public const String wszPROPCRLSUFFIX = "CRLSuffix";
	public const String wszPROPEVENTLOGTERSE = "EventLogTerse";
	public const String wszPROPEVENTLOGERROR = "EventLogError";
	public const String wszPROPEVENTLOGWARNING = "EventLogWarning";
	public const String wszPROPEVENTLOGVERBOSE = "EventLogVerbose";
	public const String wszPROPEVENTLOGEXHAUSTIVE = "EventLogExhaustive";
	public const String wszPROPDCNAME = "DCName";
	public const String wszPROPCROSSFOREST = "CrossForest";
	public const String wszPROPREQUESTERSAMNAME = "RequesterSAMName";
	public const String wszPROPREQUESTERUPN = "RequesterUPN";
	public const String wszPROPREQUESTERDN = "RequesterDN";
	public const String wszPROPSEAUDITID = "SEAuditId";
	public const String wszPROPSEAUDITFILTER = "SEAuditFilter";
	public const String wszPROPCERTIFICATEREQUESTID = "RequestID";
	public const String wszPROPRAWCERTIFICATE = "RawCertificate";
	public const String wszPROPCERTIFICATEHASH = "CertificateHash";
	public const String wszPROPCERTIFICATETEMPLATE = "CertificateTemplate";
	public const String wszPROPCERTIFICATEENROLLMENTFLAGS = "EnrollmentFlags";
	public const String wszPROPCERTIFICATEGENERALFLAGS = "GeneralFlags";
	public const String wszPROPCERTIFICATEPRIVATEKEYFLAGS = "PrivatekeyFlags";
	public const String wszPROPCERTIFICATESERIALNUMBER = "SerialNumber";
	public const String wszPROPCERTIFICATENOTBEFOREDATE = "NotBefore";
	public const String wszPROPCERTIFICATENOTAFTERDATE = "NotAfter";
	public const String wszPROPCERTIFICATESUBJECTKEYIDENTIFIER = "SubjectKeyIdentifier";
	public const String wszPROPCERTIFICATERAWPUBLICKEY = "RawPublicKey";
	public const String wszPROPCERTIFICATEPUBLICKEYLENGTH = "PublicKeyLength";
	public const String wszPROPCERTIFICATEPUBLICKEYALGORITHM = "PublicKeyAlgorithm";
	public const String wszPROPCERTIFICATERAWPUBLICKEYALGORITHMPARAMETERS = "RawPublicKeyAlgorithmParameters";
	public const String wszPROPCERTIFICATEUPN = "UPN";
	public const String wszPROPCERTIFICATETYPE = "CertificateType";
	public const String wszPROPCERTIFICATERAWSMIMECAPABILITIES = "RawSMIMECapabilities";
	public const String wszPROPNAMETYPE = "NameType";
	public const uint32 EXTENSION_CRITICAL_FLAG = 1;
	public const uint32 EXTENSION_DISABLE_FLAG = 2;
	public const uint32 EXTENSION_DELETE_FLAG = 4;
	public const uint32 EXTENSION_POLICY_MASK = 65535;
	public const uint32 EXTENSION_ORIGIN_REQUEST = 65536;
	public const uint32 EXTENSION_ORIGIN_POLICY = 131072;
	public const uint32 EXTENSION_ORIGIN_ADMIN = 196608;
	public const uint32 EXTENSION_ORIGIN_SERVER = 262144;
	public const uint32 EXTENSION_ORIGIN_RENEWALCERT = 327680;
	public const uint32 EXTENSION_ORIGIN_IMPORTEDCERT = 393216;
	public const uint32 EXTENSION_ORIGIN_PKCS7 = 458752;
	public const uint32 EXTENSION_ORIGIN_CMC = 524288;
	public const uint32 EXTENSION_ORIGIN_CACERT = 589824;
	public const uint32 EXTENSION_ORIGIN_MASK = 983040;
	public const String wszPROPEXTREQUESTID = "ExtensionRequestId";
	public const String wszPROPEXTNAME = "ExtensionName";
	public const String wszPROPEXTFLAGS = "ExtensionFlags";
	public const String wszPROPEXTRAWVALUE = "ExtensionRawValue";
	public const String wszPROPATTRIBREQUESTID = "AttributeRequestId";
	public const String wszPROPATTRIBNAME = "AttributeName";
	public const String wszPROPATTRIBVALUE = "AttributeValue";
	public const String wszPROPCRLROWID = "CRLRowId";
	public const String wszPROPCRLNUMBER = "CRLNumber";
	public const String wszPROPCRLMINBASE = "CRLMinBase";
	public const String wszPROPCRLNAMEID = "CRLNameId";
	public const String wszPROPCRLCOUNT = "CRLCount";
	public const String wszPROPCRLTHISUPDATE = "CRLThisUpdate";
	public const String wszPROPCRLNEXTUPDATE = "CRLNextUpdate";
	public const String wszPROPCRLTHISPUBLISH = "CRLThisPublish";
	public const String wszPROPCRLNEXTPUBLISH = "CRLNextPublish";
	public const String wszPROPCRLEFFECTIVE = "CRLEffective";
	public const String wszPROPCRLPROPAGATIONCOMPLETE = "CRLPropagationComplete";
	public const String wszPROPCRLLASTPUBLISHED = "CRLLastPublished";
	public const String wszPROPCRLPUBLISHATTEMPTS = "CRLPublishAttempts";
	public const String wszPROPCRLPUBLISHFLAGS = "CRLPublishFlags";
	public const String wszPROPCRLPUBLISHSTATUSCODE = "CRLPublishStatusCode";
	public const String wszPROPCRLPUBLISHERROR = "CRLPublishError";
	public const String wszPROPCRLRAWCRL = "CRLRawCRL";
	public const uint32 CPF_BASE = 1;
	public const uint32 CPF_DELTA = 2;
	public const uint32 CPF_COMPLETE = 4;
	public const uint32 CPF_SHADOW = 8;
	public const uint32 CPF_CASTORE_ERROR = 16;
	public const uint32 CPF_BADURL_ERROR = 32;
	public const uint32 CPF_MANUAL = 64;
	public const uint32 CPF_SIGNATURE_ERROR = 128;
	public const uint32 CPF_LDAP_ERROR = 256;
	public const uint32 CPF_FILE_ERROR = 512;
	public const uint32 CPF_FTP_ERROR = 1024;
	public const uint32 CPF_HTTP_ERROR = 2048;
	public const uint32 CPF_POSTPONED_BASE_LDAP_ERROR = 4096;
	public const uint32 CPF_POSTPONED_BASE_FILE_ERROR = 8192;
	public const uint32 PROPTYPE_MASK = 255;
	public const uint32 PROPCALLER_SERVER = 256;
	public const uint32 PROPCALLER_POLICY = 512;
	public const uint32 PROPCALLER_EXIT = 768;
	public const uint32 PROPCALLER_ADMIN = 1024;
	public const uint32 PROPCALLER_REQUEST = 1280;
	public const uint32 PROPCALLER_MASK = 3840;
	public const uint32 PROPFLAGS_INDEXED = 65536;
	public const uint32 CR_FLG_FORCETELETEX = 1;
	public const uint32 CR_FLG_RENEWAL = 2;
	public const uint32 CR_FLG_FORCEUTF8 = 4;
	public const uint32 CR_FLG_CAXCHGCERT = 8;
	public const uint32 CR_FLG_ENROLLONBEHALFOF = 16;
	public const uint32 CR_FLG_SUBJECTUNMODIFIED = 32;
	public const uint32 CR_FLG_VALIDENCRYPTEDKEYHASH = 64;
	public const uint32 CR_FLG_CACROSSCERT = 128;
	public const uint32 CR_FLG_ENFORCEUTF8 = 256;
	public const uint32 CR_FLG_DEFINEDCACERT = 512;
	public const uint32 CR_FLG_CHALLENGEPENDING = 1024;
	public const uint32 CR_FLG_CHALLENGESATISFIED = 2048;
	public const uint32 CR_FLG_TRUSTONUSE = 4096;
	public const uint32 CR_FLG_TRUSTEKCERT = 8192;
	public const uint32 CR_FLG_TRUSTEKKEY = 16384;
	public const uint32 CR_FLG_PUBLISHERROR = 2147483648;
	public const uint32 DB_DISP_ACTIVE = 8;
	public const uint32 DB_DISP_PENDING = 9;
	public const uint32 DB_DISP_QUEUE_MAX = 9;
	public const uint32 DB_DISP_FOREIGN = 12;
	public const uint32 DB_DISP_CA_CERT = 15;
	public const uint32 DB_DISP_CA_CERT_CHAIN = 16;
	public const uint32 DB_DISP_KRA_CERT = 17;
	public const uint32 DB_DISP_LOG_MIN = 20;
	public const uint32 DB_DISP_ISSUED = 20;
	public const uint32 DB_DISP_REVOKED = 21;
	public const uint32 DB_DISP_LOG_FAILED_MIN = 30;
	public const uint32 DB_DISP_ERROR = 30;
	public const uint32 DB_DISP_DENIED = 31;
	public const uint32 VR_PENDING = 0;
	public const uint32 VR_INSTANT_OK = 1;
	public const uint32 VR_INSTANT_BAD = 2;
	public const String wszCERT_TYPE = "RequestType";
	public const String wszCERT_TYPE_CLIENT = "Client";
	public const String wszCERT_TYPE_SERVER = "Server";
	public const String wszCERT_TYPE_CODESIGN = "CodeSign";
	public const String wszCERT_TYPE_CUSTOMER = "SetCustomer";
	public const String wszCERT_TYPE_MERCHANT = "SetMerchant";
	public const String wszCERT_TYPE_PAYMENT = "SetPayment";
	public const String wszCERT_VERSION = "Version";
	public const String wszCERT_VERSION_1 = "1";
	public const String wszCERT_VERSION_2 = "2";
	public const String wszCERT_VERSION_3 = "3";
	public const uint32 CV_OUT_HEXRAW = 12;
	public const uint32 CV_OUT_ENCODEMASK = 255;
	public const uint32 CV_OUT_NOCRLF = 1073741824;
	public const uint32 CV_OUT_NOCR = 2147483648;
	public const uint32 CVR_SEEK_NONE = 0;
	public const uint32 CVR_SEEK_MASK = 255;
	public const uint32 CVR_SEEK_NODELTA = 4096;
	public const uint32 CVR_SORT_NONE = 0;
	public const uint32 CVR_SORT_ASCEND = 1;
	public const uint32 CVR_SORT_DESCEND = 2;
	public const int32 CV_COLUMN_EXTENSION_DEFAULT = -4;
	public const int32 CV_COLUMN_ATTRIBUTE_DEFAULT = -5;
	public const int32 CV_COLUMN_CRL_DEFAULT = -6;
	public const int32 CV_COLUMN_LOG_REVOKED_DEFAULT = -7;
	public const uint32 CVRC_TABLE_MASK = 61440;
	public const uint32 CVRC_TABLE_SHIFT = 12;
	public const uint32 CRYPT_ENUM_ALL_PROVIDERS = 1;
	public const int32 XEPR_ENUM_FIRST = -1;
	public const uint32 XEPR_DATE = 5;
	public const uint32 XEPR_TEMPLATENAME = 6;
	public const uint32 XEPR_VERSION = 7;
	public const uint32 XEPR_V1TEMPLATENAME = 9;
	public const uint32 XEPR_V2TEMPLATEOID = 16;
	public const uint32 XEKL_KEYSIZE_DEFAULT = 4;
	public const uint32 XECP_STRING_PROPERTY = 1;
	public const uint32 XECI_DISABLE = 0;
	public const uint32 XECI_XENROLL = 1;
	public const uint32 XECI_AUTOENROLL = 2;
	public const uint32 XECI_REQWIZARD = 3;
	public const uint32 XECI_CERTREQ = 4;
	public const String wszCMM_PROP_NAME = "Name";
	public const String wszCMM_PROP_DESCRIPTION = "Description";
	public const String wszCMM_PROP_COPYRIGHT = "Copyright";
	public const String wszCMM_PROP_FILEVER = "File Version";
	public const String wszCMM_PROP_PRODUCTVER = "Product Version";
	public const String wszCMM_PROP_DISPLAY_HWND = "HWND";
	public const String wszCMM_PROP_ISMULTITHREADED = "IsMultiThreaded";
	#endregion
	
	#region Enums
	public enum CERT_VIEW_COLUMN_INDEX : int32
	{
		LOG_DEFAULT = -2,
		LOG_FAILED_DEFAULT = -3,
		QUEUE_DEFAULT = -1,
	}
	public enum CERT_DELETE_ROW_FLAGS : uint32
	{
		EXPIRED = 1,
		REQUEST_LAST_CHANGED = 2,
	}
	public enum FULL_RESPONSE_PROPERTY_ID : uint32
	{
		NONE = 0,
		FULLRESPONSE = 1,
		STATUSINFOCOUNT = 2,
		BODYPARTSTRING = 3,
		STATUS = 4,
		STATUSSTRING = 5,
		OTHERINFOCHOICE = 6,
		FAILINFO = 7,
		PENDINFOTOKEN = 8,
		PENDINFOTIME = 9,
		ISSUEDCERTIFICATEHASH = 10,
		ISSUEDCERTIFICATE = 11,
		ISSUEDCERTIFICATECHAIN = 12,
		ISSUEDCERTIFICATECRLCHAIN = 13,
		ENCRYPTEDKEYHASH = 14,
		FULLRESPONSENOPKCS7 = 15,
		CAEXCHANGECERTIFICATEHASH = 16,
		CAEXCHANGECERTIFICATE = 17,
		CAEXCHANGECERTIFICATECHAIN = 18,
		CAEXCHANGECERTIFICATECRLCHAIN = 19,
		ATTESTATIONCHALLENGE = 20,
		ATTESTATIONPROVIDERNAME = 21,
	}
	public enum CVRC_COLUMN : uint32
	{
		SCHEMA = 0,
		RESULT = 1,
		VALUE = 2,
		MASK = 4095,
	}
	public enum CERT_IMPORT_FLAGS : uint32
	{
		BASE64HEADER = 0,
		BASE64 = 1,
		BINARY = 2,
	}
	public enum CERT_GET_CONFIG_FLAGS : uint32
	{
		DEFAULTCONFIG = 0,
		FIRSTCONFIG = 2,
		LOCALACTIVECONFIG = 4,
		LOCALCONFIG = 3,
		UIPICKCONFIG = 1,
		UIPICKCONFIGSKIPLOCALCA = 5,
	}
	public enum ENUM_CERT_COLUMN_VALUE_FLAGS : uint32
	{
		BASE64 = 1,
		BASE64HEADER = 0,
		BASE64REQUESTHEADER = 3,
		BASE64X509CRLHEADER = 9,
		BINARY = 2,
		HEX = 4,
		HEXADDR = 10,
		HEXASCII = 5,
		HEXASCIIADDR = 11,
	}
	public enum PENDING_REQUEST_DESIRED_PROPERTY : uint32
	{
		CADNS = 1,
		CAFRIENDLYNAME = 3,
		CANAME = 2,
		HASH = 8,
		REQUESTID = 4,
	}
	public enum CERTADMIN_GET_ROLES_FLAGS : uint32
	{
		ADMIN = 1,
		AUDITOR = 4,
		ENROLL = 512,
		OFFICER = 2,
		OPERATOR = 8,
		READ = 256,
	}
	public enum CR_DISP : uint32
	{
		DENIED = 2,
		ERROR = 1,
		INCOMPLETE = 0,
		ISSUED = 3,
		ISSUED_OUT_OF_BAND = 4,
		UNDER_SUBMISSION = 5,
	}
	public enum XEKL_KEYSIZE : uint32
	{
		MIN = 1,
		MAX = 2,
		INC = 3,
	}
	public enum CERT_CREATE_REQUEST_FLAGS : uint32
	{
		CMC = 3,
		PKCS10_V1_5 = 4,
		PKCS10_V2_0 = 1,
		PKCS7 = 2,
	}
	public enum CERT_EXIT_EVENT_MASK : uint32
	{
		CERTDENIED = 4,
		CERTISSUED = 1,
		CERTPENDING = 2,
		CERTRETRIEVEPENDING = 16,
		CERTREVOKED = 8,
		CRLISSUED = 32,
		SHUTDOWN = 64,
	}
	public enum ADDED_CERT_TYPE : uint32
	{
		V1 = 1,
		V2 = 2,
	}
	public enum CVRC_TABLE : uint32
	{
		ATTRIBUTES = 16384,
		CRL = 20480,
		EXTENSIONS = 12288,
		REQCERT = 0,
	}
	public enum CERT_PROPERTY_TYPE : uint32
	{
		BINARY = 3,
		DATE = 2,
		LONG = 1,
		STRING = 4,
	}
	public enum CERT_ALT_NAME : uint32
	{
		RFC822_NAME = 2,
		DNS_NAME = 3,
		URL = 7,
		REGISTERED_ID = 9,
		DIRECTORY_NAME = 5,
		IP_ADDRESS = 8,
		OTHER_NAME = 1,
	}
	public enum CSBACKUP_TYPE : uint32
	{
		FULL = 1,
		LOGS_ONLY = 2,
	}
	public enum XEKL_KEYSPEC : uint32
	{
		KEYX = 1,
		SIG = 2,
	}
	public enum CERT_REQUEST_OUT_TYPE : uint32
	{
		BASE64HEADER = 0,
		BASE64 = 1,
		BINARY = 2,
	}
	public enum CERT_VIEW_SEEK_OPERATOR_FLAGS : uint32
	{
		EQ = 1,
		LE = 4,
		LT = 2,
		GE = 8,
		GT = 16,
	}
	public enum OCSPSigningFlag : int32
	{
		SILENT = 1,
		USE_CACERT = 2,
		ALLOW_SIGNINGCERT_AUTORENEWAL = 4,
		FORCE_SIGNINGCERT_ISSUER_ISCA = 8,
		AUTODISCOVER_SIGNINGCERT = 16,
		MANUAL_ASSIGN_SIGNINGCERT = 32,
		RESPONDER_ID_KEYHASH = 64,
		RESPONDER_ID_NAME = 128,
		ALLOW_NONCE_EXTENSION = 256,
		ALLOW_SIGNINGCERT_AUTOENROLLMENT = 512,
	}
	public enum OCSPRequestFlag : int32
	{
		OCSP_RF_REJECT_SIGNED_REQUESTS = 1,
	}
	public enum X509EnrollmentAuthFlags : int32
	{
		None = 0,
		Anonymous = 1,
		Kerberos = 2,
		Username = 4,
		Certificate = 8,
	}
	public enum X509SCEPMessageType : int32
	{
		Unknown = -1,
		CertResponse = 3,
		PKCSRequest = 19,
		GetCertInitial = 20,
		GetCert = 21,
		GetCRL = 22,
		ClaimChallengeAnswer = 41,
	}
	public enum X509SCEPDisposition : int32
	{
		Unknown = -1,
		Success = 0,
		Failure = 2,
		Pending = 3,
		PendingChallenge = 11,
	}
	public enum X509SCEPFailInfo : int32
	{
		Unknown = -1,
		BadAlgorithm = 0,
		BadMessageCheck = 1,
		BadRequest = 2,
		BadTime = 3,
		BadCertId = 4,
	}
	public enum CERTENROLL_OBJECTID : int32
	{
		OID_NONE = 0,
		OID_RSA = 1,
		OID_PKCS = 2,
		OID_RSA_HASH = 3,
		OID_RSA_ENCRYPT = 4,
		OID_PKCS_1 = 5,
		OID_PKCS_2 = 6,
		OID_PKCS_3 = 7,
		OID_PKCS_4 = 8,
		OID_PKCS_5 = 9,
		OID_PKCS_6 = 10,
		OID_PKCS_7 = 11,
		OID_PKCS_8 = 12,
		OID_PKCS_9 = 13,
		OID_PKCS_10 = 14,
		OID_PKCS_12 = 15,
		OID_RSA_RSA = 16,
		OID_RSA_MD2RSA = 17,
		OID_RSA_MD4RSA = 18,
		OID_RSA_MD5RSA = 19,
		OID_RSA_SHA1RSA = 20,
		OID_RSA_SETOAEP_RSA = 21,
		OID_RSA_DH = 22,
		OID_RSA_data = 23,
		OID_RSA_signedData = 24,
		OID_RSA_envelopedData = 25,
		OID_RSA_signEnvData = 26,
		OID_RSA_digestedData = 27,
		OID_RSA_hashedData = 28,
		OID_RSA_encryptedData = 29,
		OID_RSA_emailAddr = 30,
		OID_RSA_unstructName = 31,
		OID_RSA_contentType = 32,
		OID_RSA_messageDigest = 33,
		OID_RSA_signingTime = 34,
		OID_RSA_counterSign = 35,
		OID_RSA_challengePwd = 36,
		OID_RSA_unstructAddr = 37,
		OID_RSA_extCertAttrs = 38,
		OID_RSA_certExtensions = 39,
		OID_RSA_SMIMECapabilities = 40,
		OID_RSA_preferSignedData = 41,
		OID_RSA_SMIMEalg = 42,
		OID_RSA_SMIMEalgESDH = 43,
		OID_RSA_SMIMEalgCMS3DESwrap = 44,
		OID_RSA_SMIMEalgCMSRC2wrap = 45,
		OID_RSA_MD2 = 46,
		OID_RSA_MD4 = 47,
		OID_RSA_MD5 = 48,
		OID_RSA_RC2CBC = 49,
		OID_RSA_RC4 = 50,
		OID_RSA_DES_EDE3_CBC = 51,
		OID_RSA_RC5_CBCPad = 52,
		OID_ANSI_X942 = 53,
		OID_ANSI_X942_DH = 54,
		OID_X957 = 55,
		OID_X957_DSA = 56,
		OID_X957_SHA1DSA = 57,
		OID_DS = 58,
		OID_DSALG = 59,
		OID_DSALG_CRPT = 60,
		OID_DSALG_HASH = 61,
		OID_DSALG_SIGN = 62,
		OID_DSALG_RSA = 63,
		OID_OIW = 64,
		OID_OIWSEC = 65,
		OID_OIWSEC_md4RSA = 66,
		OID_OIWSEC_md5RSA = 67,
		OID_OIWSEC_md4RSA2 = 68,
		OID_OIWSEC_desECB = 69,
		OID_OIWSEC_desCBC = 70,
		OID_OIWSEC_desOFB = 71,
		OID_OIWSEC_desCFB = 72,
		OID_OIWSEC_desMAC = 73,
		OID_OIWSEC_rsaSign = 74,
		OID_OIWSEC_dsa = 75,
		OID_OIWSEC_shaDSA = 76,
		OID_OIWSEC_mdc2RSA = 77,
		OID_OIWSEC_shaRSA = 78,
		OID_OIWSEC_dhCommMod = 79,
		OID_OIWSEC_desEDE = 80,
		OID_OIWSEC_sha = 81,
		OID_OIWSEC_mdc2 = 82,
		OID_OIWSEC_dsaComm = 83,
		OID_OIWSEC_dsaCommSHA = 84,
		OID_OIWSEC_rsaXchg = 85,
		OID_OIWSEC_keyHashSeal = 86,
		OID_OIWSEC_md2RSASign = 87,
		OID_OIWSEC_md5RSASign = 88,
		OID_OIWSEC_sha1 = 89,
		OID_OIWSEC_dsaSHA1 = 90,
		OID_OIWSEC_dsaCommSHA1 = 91,
		OID_OIWSEC_sha1RSASign = 92,
		OID_OIWDIR = 93,
		OID_OIWDIR_CRPT = 94,
		OID_OIWDIR_HASH = 95,
		OID_OIWDIR_SIGN = 96,
		OID_OIWDIR_md2 = 97,
		OID_OIWDIR_md2RSA = 98,
		OID_INFOSEC = 99,
		OID_INFOSEC_sdnsSignature = 100,
		OID_INFOSEC_mosaicSignature = 101,
		OID_INFOSEC_sdnsConfidentiality = 102,
		OID_INFOSEC_mosaicConfidentiality = 103,
		OID_INFOSEC_sdnsIntegrity = 104,
		OID_INFOSEC_mosaicIntegrity = 105,
		OID_INFOSEC_sdnsTokenProtection = 106,
		OID_INFOSEC_mosaicTokenProtection = 107,
		OID_INFOSEC_sdnsKeyManagement = 108,
		OID_INFOSEC_mosaicKeyManagement = 109,
		OID_INFOSEC_sdnsKMandSig = 110,
		OID_INFOSEC_mosaicKMandSig = 111,
		OID_INFOSEC_SuiteASignature = 112,
		OID_INFOSEC_SuiteAConfidentiality = 113,
		OID_INFOSEC_SuiteAIntegrity = 114,
		OID_INFOSEC_SuiteATokenProtection = 115,
		OID_INFOSEC_SuiteAKeyManagement = 116,
		OID_INFOSEC_SuiteAKMandSig = 117,
		OID_INFOSEC_mosaicUpdatedSig = 118,
		OID_INFOSEC_mosaicKMandUpdSig = 119,
		OID_INFOSEC_mosaicUpdatedInteg = 120,
		OID_COMMON_NAME = 121,
		OID_SUR_NAME = 122,
		OID_DEVICE_SERIAL_NUMBER = 123,
		OID_COUNTRY_NAME = 124,
		OID_LOCALITY_NAME = 125,
		OID_STATE_OR_PROVINCE_NAME = 126,
		OID_STREET_ADDRESS = 127,
		OID_ORGANIZATION_NAME = 128,
		OID_ORGANIZATIONAL_UNIT_NAME = 129,
		OID_TITLE = 130,
		OID_DESCRIPTION = 131,
		OID_SEARCH_GUIDE = 132,
		OID_BUSINESS_CATEGORY = 133,
		OID_POSTAL_ADDRESS = 134,
		OID_POSTAL_CODE = 135,
		OID_POST_OFFICE_BOX = 136,
		OID_PHYSICAL_DELIVERY_OFFICE_NAME = 137,
		OID_TELEPHONE_NUMBER = 138,
		OID_TELEX_NUMBER = 139,
		OID_TELETEXT_TERMINAL_IDENTIFIER = 140,
		OID_FACSIMILE_TELEPHONE_NUMBER = 141,
		OID_X21_ADDRESS = 142,
		OID_INTERNATIONAL_ISDN_NUMBER = 143,
		OID_REGISTERED_ADDRESS = 144,
		OID_DESTINATION_INDICATOR = 145,
		OID_PREFERRED_DELIVERY_METHOD = 146,
		OID_PRESENTATION_ADDRESS = 147,
		OID_SUPPORTED_APPLICATION_CONTEXT = 148,
		OID_MEMBER = 149,
		OID_OWNER = 150,
		OID_ROLE_OCCUPANT = 151,
		OID_SEE_ALSO = 152,
		OID_USER_PASSWORD = 153,
		OID_USER_CERTIFICATE = 154,
		OID_CA_CERTIFICATE = 155,
		OID_AUTHORITY_REVOCATION_LIST = 156,
		OID_CERTIFICATE_REVOCATION_LIST = 157,
		OID_CROSS_CERTIFICATE_PAIR = 158,
		OID_GIVEN_NAME = 159,
		OID_INITIALS = 160,
		OID_DN_QUALIFIER = 161,
		OID_DOMAIN_COMPONENT = 162,
		OID_PKCS_12_FRIENDLY_NAME_ATTR = 163,
		OID_PKCS_12_LOCAL_KEY_ID = 164,
		OID_PKCS_12_KEY_PROVIDER_NAME_ATTR = 165,
		OID_LOCAL_MACHINE_KEYSET = 166,
		OID_PKCS_12_EXTENDED_ATTRIBUTES = 167,
		OID_KEYID_RDN = 168,
		OID_AUTHORITY_KEY_IDENTIFIER = 169,
		OID_KEY_ATTRIBUTES = 170,
		OID_CERT_POLICIES_95 = 171,
		OID_KEY_USAGE_RESTRICTION = 172,
		OID_SUBJECT_ALT_NAME = 173,
		OID_ISSUER_ALT_NAME = 174,
		OID_BASIC_CONSTRAINTS = 175,
		OID_KEY_USAGE = 176,
		OID_PRIVATEKEY_USAGE_PERIOD = 177,
		OID_BASIC_CONSTRAINTS2 = 178,
		OID_CERT_POLICIES = 179,
		OID_ANY_CERT_POLICY = 180,
		OID_AUTHORITY_KEY_IDENTIFIER2 = 181,
		OID_SUBJECT_KEY_IDENTIFIER = 182,
		OID_SUBJECT_ALT_NAME2 = 183,
		OID_ISSUER_ALT_NAME2 = 184,
		OID_CRL_REASON_CODE = 185,
		OID_REASON_CODE_HOLD = 186,
		OID_CRL_DIST_POINTS = 187,
		OID_ENHANCED_KEY_USAGE = 188,
		OID_CRL_NUMBER = 189,
		OID_DELTA_CRL_INDICATOR = 190,
		OID_ISSUING_DIST_POINT = 191,
		OID_FRESHEST_CRL = 192,
		OID_NAME_CONSTRAINTS = 193,
		OID_POLICY_MAPPINGS = 194,
		OID_LEGACY_POLICY_MAPPINGS = 195,
		OID_POLICY_CONSTRAINTS = 196,
		OID_RENEWAL_CERTIFICATE = 197,
		OID_ENROLLMENT_NAME_VALUE_PAIR = 198,
		OID_ENROLLMENT_CSP_PROVIDER = 199,
		OID_OS_VERSION = 200,
		OID_ENROLLMENT_AGENT = 201,
		OID_PKIX = 202,
		OID_PKIX_PE = 203,
		OID_AUTHORITY_INFO_ACCESS = 204,
		OID_BIOMETRIC_EXT = 205,
		OID_LOGOTYPE_EXT = 206,
		OID_CERT_EXTENSIONS = 207,
		OID_NEXT_UPDATE_LOCATION = 208,
		OID_REMOVE_CERTIFICATE = 209,
		OID_CROSS_CERT_DIST_POINTS = 210,
		OID_CTL = 211,
		OID_SORTED_CTL = 212,
		OID_SERIALIZED = 213,
		OID_NT_PRINCIPAL_NAME = 214,
		OID_PRODUCT_UPDATE = 215,
		OID_ANY_APPLICATION_POLICY = 216,
		OID_AUTO_ENROLL_CTL_USAGE = 217,
		OID_ENROLL_CERTTYPE_EXTENSION = 218,
		OID_CERT_MANIFOLD = 219,
		OID_CERTSRV_CA_VERSION = 220,
		OID_CERTSRV_PREVIOUS_CERT_HASH = 221,
		OID_CRL_VIRTUAL_BASE = 222,
		OID_CRL_NEXT_PUBLISH = 223,
		OID_KP_CA_EXCHANGE = 224,
		OID_KP_KEY_RECOVERY_AGENT = 225,
		OID_CERTIFICATE_TEMPLATE = 226,
		OID_ENTERPRISE_OID_ROOT = 227,
		OID_RDN_DUMMY_SIGNER = 228,
		OID_APPLICATION_CERT_POLICIES = 229,
		OID_APPLICATION_POLICY_MAPPINGS = 230,
		OID_APPLICATION_POLICY_CONSTRAINTS = 231,
		OID_ARCHIVED_KEY_ATTR = 232,
		OID_CRL_SELF_CDP = 233,
		OID_REQUIRE_CERT_CHAIN_POLICY = 234,
		OID_ARCHIVED_KEY_CERT_HASH = 235,
		OID_ISSUED_CERT_HASH = 236,
		OID_DS_EMAIL_REPLICATION = 237,
		OID_REQUEST_CLIENT_INFO = 238,
		OID_ENCRYPTED_KEY_HASH = 239,
		OID_CERTSRV_CROSSCA_VERSION = 240,
		OID_NTDS_REPLICATION = 241,
		OID_SUBJECT_DIR_ATTRS = 242,
		OID_PKIX_KP = 243,
		OID_PKIX_KP_SERVER_AUTH = 244,
		OID_PKIX_KP_CLIENT_AUTH = 245,
		OID_PKIX_KP_CODE_SIGNING = 246,
		OID_PKIX_KP_EMAIL_PROTECTION = 247,
		OID_PKIX_KP_IPSEC_END_SYSTEM = 248,
		OID_PKIX_KP_IPSEC_TUNNEL = 249,
		OID_PKIX_KP_IPSEC_USER = 250,
		OID_PKIX_KP_TIMESTAMP_SIGNING = 251,
		OID_PKIX_KP_OCSP_SIGNING = 252,
		OID_PKIX_OCSP_NOCHECK = 253,
		OID_IPSEC_KP_IKE_INTERMEDIATE = 254,
		OID_KP_CTL_USAGE_SIGNING = 255,
		OID_KP_TIME_STAMP_SIGNING = 256,
		OID_SERVER_GATED_CRYPTO = 257,
		OID_SGC_NETSCAPE = 258,
		OID_KP_EFS = 259,
		OID_EFS_RECOVERY = 260,
		OID_WHQL_CRYPTO = 261,
		OID_NT5_CRYPTO = 262,
		OID_OEM_WHQL_CRYPTO = 263,
		OID_EMBEDDED_NT_CRYPTO = 264,
		OID_ROOT_LIST_SIGNER = 265,
		OID_KP_QUALIFIED_SUBORDINATION = 266,
		OID_KP_KEY_RECOVERY = 267,
		OID_KP_DOCUMENT_SIGNING = 268,
		OID_KP_LIFETIME_SIGNING = 269,
		OID_KP_MOBILE_DEVICE_SOFTWARE = 270,
		OID_KP_SMART_DISPLAY = 271,
		OID_KP_CSP_SIGNATURE = 272,
		OID_DRM = 273,
		OID_DRM_INDIVIDUALIZATION = 274,
		OID_LICENSES = 275,
		OID_LICENSE_SERVER = 276,
		OID_KP_SMARTCARD_LOGON = 277,
		OID_YESNO_TRUST_ATTR = 278,
		OID_PKIX_POLICY_QUALIFIER_CPS = 279,
		OID_PKIX_POLICY_QUALIFIER_USERNOTICE = 280,
		OID_CERT_POLICIES_95_QUALIFIER1 = 281,
		OID_PKIX_ACC_DESCR = 282,
		OID_PKIX_OCSP = 283,
		OID_PKIX_CA_ISSUERS = 284,
		OID_VERISIGN_PRIVATE_6_9 = 285,
		OID_VERISIGN_ONSITE_JURISDICTION_HASH = 286,
		OID_VERISIGN_BITSTRING_6_13 = 287,
		OID_VERISIGN_ISS_STRONG_CRYPTO = 288,
		OID_NETSCAPE = 289,
		OID_NETSCAPE_CERT_EXTENSION = 290,
		OID_NETSCAPE_CERT_TYPE = 291,
		OID_NETSCAPE_BASE_URL = 292,
		OID_NETSCAPE_REVOCATION_URL = 293,
		OID_NETSCAPE_CA_REVOCATION_URL = 294,
		OID_NETSCAPE_CERT_RENEWAL_URL = 295,
		OID_NETSCAPE_CA_POLICY_URL = 296,
		OID_NETSCAPE_SSL_SERVER_NAME = 297,
		OID_NETSCAPE_COMMENT = 298,
		OID_NETSCAPE_DATA_TYPE = 299,
		OID_NETSCAPE_CERT_SEQUENCE = 300,
		OID_CT_PKI_DATA = 301,
		OID_CT_PKI_RESPONSE = 302,
		OID_PKIX_NO_SIGNATURE = 303,
		OID_CMC = 304,
		OID_CMC_STATUS_INFO = 305,
		OID_CMC_IDENTIFICATION = 306,
		OID_CMC_IDENTITY_PROOF = 307,
		OID_CMC_DATA_RETURN = 308,
		OID_CMC_TRANSACTION_ID = 309,
		OID_CMC_SENDER_NONCE = 310,
		OID_CMC_RECIPIENT_NONCE = 311,
		OID_CMC_ADD_EXTENSIONS = 312,
		OID_CMC_ENCRYPTED_POP = 313,
		OID_CMC_DECRYPTED_POP = 314,
		OID_CMC_LRA_POP_WITNESS = 315,
		OID_CMC_GET_CERT = 316,
		OID_CMC_GET_CRL = 317,
		OID_CMC_REVOKE_REQUEST = 318,
		OID_CMC_REG_INFO = 319,
		OID_CMC_RESPONSE_INFO = 320,
		OID_CMC_QUERY_PENDING = 321,
		OID_CMC_ID_POP_LINK_RANDOM = 322,
		OID_CMC_ID_POP_LINK_WITNESS = 323,
		OID_CMC_ID_CONFIRM_CERT_ACCEPTANCE = 324,
		OID_CMC_ADD_ATTRIBUTES = 325,
		OID_LOYALTY_OTHER_LOGOTYPE = 326,
		OID_BACKGROUND_OTHER_LOGOTYPE = 327,
		OID_PKIX_OCSP_BASIC_SIGNED_RESPONSE = 328,
		OID_PKCS_7_DATA = 329,
		OID_PKCS_7_SIGNED = 330,
		OID_PKCS_7_ENVELOPED = 331,
		OID_PKCS_7_SIGNEDANDENVELOPED = 332,
		OID_PKCS_7_DIGESTED = 333,
		OID_PKCS_7_ENCRYPTED = 334,
		OID_PKCS_9_CONTENT_TYPE = 335,
		OID_PKCS_9_MESSAGE_DIGEST = 336,
		OID_CERT_PROP_ID_PREFIX = 337,
		OID_CERT_KEY_IDENTIFIER_PROP_ID = 338,
		OID_CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 339,
		OID_CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 340,
		OID_CERT_MD5_HASH_PROP_ID = 341,
		OID_RSA_SHA256RSA = 342,
		OID_RSA_SHA384RSA = 343,
		OID_RSA_SHA512RSA = 344,
		OID_NIST_sha256 = 345,
		OID_NIST_sha384 = 346,
		OID_NIST_sha512 = 347,
		OID_RSA_MGF1 = 348,
		OID_ECC_PUBLIC_KEY = 349,
		OID_ECDSA_SHA1 = 350,
		OID_ECDSA_SPECIFIED = 351,
		OID_ANY_ENHANCED_KEY_USAGE = 352,
		OID_RSA_SSA_PSS = 353,
		OID_ATTR_SUPPORTED_ALGORITHMS = 355,
		OID_ATTR_TPM_SECURITY_ASSERTIONS = 356,
		OID_ATTR_TPM_SPECIFICATION = 357,
		OID_CERT_DISALLOWED_FILETIME_PROP_ID = 358,
		OID_CERT_SIGNATURE_HASH_PROP_ID = 359,
		OID_CERT_STRONG_KEY_OS_1 = 360,
		OID_CERT_STRONG_KEY_OS_CURRENT = 361,
		OID_CERT_STRONG_KEY_OS_PREFIX = 362,
		OID_CERT_STRONG_SIGN_OS_1 = 363,
		OID_CERT_STRONG_SIGN_OS_CURRENT = 364,
		OID_CERT_STRONG_SIGN_OS_PREFIX = 365,
		OID_DH_SINGLE_PASS_STDDH_SHA1_KDF = 366,
		OID_DH_SINGLE_PASS_STDDH_SHA256_KDF = 367,
		OID_DH_SINGLE_PASS_STDDH_SHA384_KDF = 368,
		OID_DISALLOWED_HASH = 369,
		OID_DISALLOWED_LIST = 370,
		OID_ECC_CURVE_P256 = 371,
		OID_ECC_CURVE_P384 = 372,
		OID_ECC_CURVE_P521 = 373,
		OID_ECDSA_SHA256 = 374,
		OID_ECDSA_SHA384 = 375,
		OID_ECDSA_SHA512 = 376,
		OID_ENROLL_CAXCHGCERT_HASH = 377,
		OID_ENROLL_EK_INFO = 378,
		OID_ENROLL_EKPUB_CHALLENGE = 379,
		OID_ENROLL_EKVERIFYCERT = 380,
		OID_ENROLL_EKVERIFYCREDS = 381,
		OID_ENROLL_EKVERIFYKEY = 382,
		OID_EV_RDN_COUNTRY = 383,
		OID_EV_RDN_LOCALE = 384,
		OID_EV_RDN_STATE_OR_PROVINCE = 385,
		OID_INHIBIT_ANY_POLICY = 386,
		OID_INTERNATIONALIZED_EMAIL_ADDRESS = 387,
		OID_KP_KERNEL_MODE_CODE_SIGNING = 388,
		OID_KP_KERNEL_MODE_HAL_EXTENSION_SIGNING = 389,
		OID_KP_KERNEL_MODE_TRUSTED_BOOT_SIGNING = 390,
		OID_KP_TPM_AIK_CERTIFICATE = 391,
		OID_KP_TPM_EK_CERTIFICATE = 392,
		OID_KP_TPM_PLATFORM_CERTIFICATE = 393,
		OID_NIST_AES128_CBC = 394,
		OID_NIST_AES128_WRAP = 395,
		OID_NIST_AES192_CBC = 396,
		OID_NIST_AES192_WRAP = 397,
		OID_NIST_AES256_CBC = 398,
		OID_NIST_AES256_WRAP = 399,
		OID_PKCS_12_PbeIds = 400,
		OID_PKCS_12_pbeWithSHA1And128BitRC2 = 401,
		OID_PKCS_12_pbeWithSHA1And128BitRC4 = 402,
		OID_PKCS_12_pbeWithSHA1And2KeyTripleDES = 403,
		OID_PKCS_12_pbeWithSHA1And3KeyTripleDES = 404,
		OID_PKCS_12_pbeWithSHA1And40BitRC2 = 405,
		OID_PKCS_12_pbeWithSHA1And40BitRC4 = 406,
		OID_PKCS_12_PROTECTED_PASSWORD_SECRET_BAG_TYPE_ID = 407,
		OID_PKINIT_KP_KDC = 408,
		OID_PKIX_CA_REPOSITORY = 409,
		OID_PKIX_OCSP_NONCE = 410,
		OID_PKIX_TIME_STAMPING = 411,
		OID_QC_EU_COMPLIANCE = 412,
		OID_QC_SSCD = 413,
		OID_QC_STATEMENTS_EXT = 414,
		OID_RDN_TPM_MANUFACTURER = 415,
		OID_RDN_TPM_MODEL = 416,
		OID_RDN_TPM_VERSION = 417,
		OID_REVOKED_LIST_SIGNER = 418,
		OID_RFC3161_counterSign = 419,
		OID_ROOT_PROGRAM_AUTO_UPDATE_CA_REVOCATION = 420,
		OID_ROOT_PROGRAM_AUTO_UPDATE_END_REVOCATION = 421,
		OID_ROOT_PROGRAM_FLAGS = 422,
		OID_ROOT_PROGRAM_NO_OCSP_FAILOVER_TO_CRL = 423,
		OID_RSA_PSPECIFIED = 424,
		OID_RSAES_OAEP = 425,
		OID_SUBJECT_INFO_ACCESS = 426,
		OID_TIMESTAMP_TOKEN = 427,
		OID_ENROLL_SCEP_ERROR = 428,
		OIDVerisign_MessageType = 429,
		OIDVerisign_PkiStatus = 430,
		OIDVerisign_FailInfo = 431,
		OIDVerisign_SenderNonce = 432,
		OIDVerisign_RecipientNonce = 433,
		OIDVerisign_TransactionID = 434,
		OID_ENROLL_ATTESTATION_CHALLENGE = 435,
		OID_ENROLL_ATTESTATION_STATEMENT = 436,
		OID_ENROLL_ENCRYPTION_ALGORITHM = 437,
		OID_ENROLL_KSP_NAME = 438,
	}
	public enum WebSecurityLevel : int32
	{
		Unsafe = 0,
		Safe = 1,
	}
	public enum EncodingType : int32
	{
		BASE64HEADER = 0,
		BASE64 = 1,
		BINARY = 2,
		BASE64REQUESTHEADER = 3,
		HEX = 4,
		HEXASCII = 5,
		BASE64_ANY = 6,
		ANY = 7,
		HEX_ANY = 8,
		BASE64X509CRLHEADER = 9,
		HEXADDR = 10,
		HEXASCIIADDR = 11,
		HEXRAW = 12,
		BASE64URI = 13,
		ENCODEMASK = 255,
		CHAIN = 256,
		TEXT = 512,
		PERCENTESCAPE = 134217728,
		HASHDATA = 268435456,
		STRICT = 536870912,
		NOCRLF = 1073741824,
		NOCR = -2147483648,
	}
	public enum PFXExportOptions : int32
	{
		EEOnly = 0,
		ChainNoRoot = 1,
		ChainWithRoot = 2,
	}
	[AllowDuplicates]
	public enum ObjectIdGroupId : int32
	{
		ANY_GROUP_ID = 0,
		HASH_ALG_OID_GROUP_ID = 1,
		ENCRYPT_ALG_OID_GROUP_ID = 2,
		PUBKEY_ALG_OID_GROUP_ID = 3,
		SIGN_ALG_OID_GROUP_ID = 4,
		RDN_ATTR_OID_GROUP_ID = 5,
		EXT_OR_ATTR_OID_GROUP_ID = 6,
		ENHKEY_USAGE_OID_GROUP_ID = 7,
		POLICY_OID_GROUP_ID = 8,
		TEMPLATE_OID_GROUP_ID = 9,
		KDF_OID_GROUP_ID = 10,
		LAST_OID_GROUP_ID = 10,
		FIRST_ALG_OID_GROUP_ID = 1,
		LAST_ALG_OID_GROUP_ID = 4,
		GROUP_ID_MASK = 65535,
		OID_PREFER_CNG_ALGID_FLAG = 1073741824,
		OID_DISABLE_SEARCH_DS_FLAG = -2147483648,
		OID_INFO_OID_GROUP_BIT_LEN_MASK = 268369920,
		OID_INFO_OID_GROUP_BIT_LEN_SHIFT = 16,
		KEY_LENGTH_MASK = 268369920,
	}
	public enum ObjectIdPublicKeyFlags : int32
	{
		ANY = 0,
		SIGN_KEY_FLAG = -2147483648,
		ENCRYPT_KEY_FLAG = 1073741824,
	}
	public enum AlgorithmFlags : int32
	{
		None = 0,
		Wrap = 1,
	}
	public enum X500NameFlags : int32
	{
		NAME_STR_NONE = 0,
		SIMPLE_NAME_STR = 1,
		OID_NAME_STR = 2,
		X500_NAME_STR = 3,
		XML_NAME_STR = 4,
		NAME_STR_SEMICOLON_FLAG = 1073741824,
		NAME_STR_NO_PLUS_FLAG = 536870912,
		NAME_STR_NO_QUOTING_FLAG = 268435456,
		NAME_STR_CRLF_FLAG = 134217728,
		NAME_STR_COMMA_FLAG = 67108864,
		NAME_STR_REVERSE_FLAG = 33554432,
		NAME_STR_FORWARD_FLAG = 16777216,
		NAME_STR_AMBIGUOUS_SEPARATOR_FLAGS = 1275068416,
		NAME_STR_DISABLE_IE4_UTF8_FLAG = 65536,
		NAME_STR_ENABLE_T61_UNICODE_FLAG = 131072,
		NAME_STR_ENABLE_UTF8_UNICODE_FLAG = 262144,
		NAME_STR_FORCE_UTF8_DIR_STR_FLAG = 524288,
		NAME_STR_DISABLE_UTF8_DIR_STR_FLAG = 1048576,
		NAME_STR_ENABLE_PUNYCODE_FLAG = 2097152,
		NAME_STR_DS_ESCAPED = 8388608,
	}
	public enum X509CertificateEnrollmentContext : int32
	{
		None = 0,
		User = 1,
		Machine = 2,
		AdministratorForceMachine = 3,
	}
	public enum EnrollmentEnrollStatus : int32
	{
		Enrolled = 1,
		EnrollPended = 2,
		EnrollUIDeferredEnrollmentRequired = 4,
		EnrollError = 16,
		EnrollUnknown = 32,
		EnrollSkipped = 64,
		EnrollDenied = 256,
	}
	public enum EnrollmentSelectionStatus : int32
	{
		No = 0,
		Yes = 1,
	}
	public enum EnrollmentDisplayStatus : int32
	{
		No = 0,
		Yes = 1,
	}
	public enum X509ProviderType : int32
	{
		NONE = 0,
		RSA_FULL = 1,
		RSA_SIG = 2,
		DSS = 3,
		FORTEZZA = 4,
		MS_EXCHANGE = 5,
		SSL = 6,
		RSA_SCHANNEL = 12,
		DSS_DH = 13,
		EC_ECDSA_SIG = 14,
		EC_ECNRA_SIG = 15,
		EC_ECDSA_FULL = 16,
		EC_ECNRA_FULL = 17,
		DH_SCHANNEL = 18,
		SPYRUS_LYNKS = 20,
		RNG = 21,
		INTEL_SEC = 22,
		REPLACE_OWF = 23,
		RSA_AES = 24,
	}
	public enum AlgorithmType : int32
	{
		UNKNOWN_INTERFACE = 0,
		CIPHER_INTERFACE = 1,
		HASH_INTERFACE = 2,
		ASYMMETRIC_ENCRYPTION_INTERFACE = 3,
		SIGNATURE_INTERFACE = 5,
		SECRET_AGREEMENT_INTERFACE = 4,
		RNG_INTERFACE = 6,
		KEY_DERIVATION_INTERFACE = 7,
	}
	public enum AlgorithmOperationFlags : int32
	{
		NO_OPERATION = 0,
		CIPHER_OPERATION = 1,
		HASH_OPERATION = 2,
		ASYMMETRIC_ENCRYPTION_OPERATION = 4,
		SECRET_AGREEMENT_OPERATION = 8,
		SIGNATURE_OPERATION = 16,
		RNG_OPERATION = 32,
		KEY_DERIVATION_OPERATION = 64,
		ANY_ASYMMETRIC_OPERATION = 28,
		PREFER_SIGNATURE_ONLY_OPERATION = 2097152,
		PREFER_NON_SIGNATURE_OPERATION = 4194304,
		EXACT_MATCH_OPERATION = 8388608,
		PREFERENCE_MASK_OPERATION = 14680064,
	}
	public enum X509KeySpec : int32
	{
		NONE = 0,
		KEYEXCHANGE = 1,
		SIGNATURE = 2,
	}
	public enum KeyIdentifierHashAlgorithm : int32
	{
		Default = 0,
		Sha1 = 1,
		CapiSha1 = 2,
		Sha256 = 3,
		HPKP = 5,
	}
	public enum X509PrivateKeyExportFlags : int32
	{
		EXPORT_NONE = 0,
		EXPORT_FLAG = 1,
		PLAINTEXT_EXPORT_FLAG = 2,
		ARCHIVING_FLAG = 4,
		PLAINTEXT_ARCHIVING_FLAG = 8,
	}
	public enum X509PrivateKeyUsageFlags : int32
	{
		USAGES_NONE = 0,
		DECRYPT_FLAG = 1,
		SIGNING_FLAG = 2,
		KEY_AGREEMENT_FLAG = 4,
		KEY_IMPORT_FLAG = 8,
		ALL_USAGES = 16777215,
	}
	public enum X509PrivateKeyProtection : int32
	{
		NO_PROTECTION_FLAG = 0,
		PROTECT_KEY_FLAG = 1,
		FORCE_HIGH_PROTECTION_FLAG = 2,
		FINGERPRINT_PROTECTION_FLAG = 4,
		APPCONTAINER_ACCESS_MEDIUM_FLAG = 8,
	}
	public enum X509PrivateKeyVerify : int32
	{
		None = 0,
		Silent = 1,
		SmartCardNone = 2,
		SmartCardSilent = 3,
		AllowUI = 4,
	}
	public enum X509HardwareKeyUsageFlags : int32
	{
		PCP_NONE = 0,
		TPM12_PROVIDER = 65536,
		PCP_SIGNATURE_KEY = 1,
		PCP_ENCRYPTION_KEY = 2,
		PCP_GENERIC_KEY = 3,
		PCP_STORAGE_KEY = 4,
		PCP_IDENTITY_KEY = 8,
	}
	public enum X509KeyParametersExportType : int32
	{
		NONE = 0,
		NAME_FOR_ENCODE_FLAG = 536870912,
		PARAMETERS_FOR_ENCODE_FLAG = 268435456,
	}
	[AllowDuplicates]
	public enum X509KeyUsageFlags : int32
	{
		NO_KEY_USAGE = 0,
		DIGITAL_SIGNATURE_KEY_USAGE = 128,
		NON_REPUDIATION_KEY_USAGE = 64,
		KEY_ENCIPHERMENT_KEY_USAGE = 32,
		DATA_ENCIPHERMENT_KEY_USAGE = 16,
		KEY_AGREEMENT_KEY_USAGE = 8,
		KEY_CERT_SIGN_KEY_USAGE = 4,
		OFFLINE_CRL_SIGN_KEY_USAGE = 2,
		CRL_SIGN_KEY_USAGE = 2,
		ENCIPHER_ONLY_KEY_USAGE = 1,
		DECIPHER_ONLY_KEY_USAGE = 32768,
	}
	public enum AlternativeNameType : int32
	{
		UNKNOWN = 0,
		OTHER_NAME = 1,
		RFC822_NAME = 2,
		DNS_NAME = 3,
		X400_ADDRESS = 4,
		DIRECTORY_NAME = 5,
		EDI_PARTY_NAME = 6,
		URL = 7,
		IP_ADDRESS = 8,
		REGISTERED_ID = 9,
		GUID = 10,
		USER_PRINCIPLE_NAME = 11,
	}
	public enum PolicyQualifierType : int32
	{
		Unknown = 0,
		Url = 1,
		UserNotice = 2,
		Flags = 3,
	}
	public enum RequestClientInfoClientId : int32
	{
		None = 0,
		XEnroll2003 = 1,
		AutoEnroll2003 = 2,
		Wizard2003 = 3,
		CertReq2003 = 4,
		DefaultRequest = 5,
		AutoEnroll = 6,
		RequestWizard = 7,
		EOBO = 8,
		CertReq = 9,
		Test = 10,
		WinRT = 11,
		UserStart = 1000,
	}
	[AllowDuplicates]
	public enum CERTENROLL_PROPERTYID : int32
	{
		PROPERTYID_NONE = 0,
		CERT_KEY_PROV_HANDLE_PROP_ID = 1,
		CERT_KEY_PROV_INFO_PROP_ID = 2,
		CERT_SHA1_HASH_PROP_ID = 3,
		CERT_MD5_HASH_PROP_ID = 4,
		CERT_HASH_PROP_ID = 3,
		CERT_KEY_CONTEXT_PROP_ID = 5,
		CERT_KEY_SPEC_PROP_ID = 6,
		CERT_IE30_RESERVED_PROP_ID = 7,
		CERT_PUBKEY_HASH_RESERVED_PROP_ID = 8,
		CERT_ENHKEY_USAGE_PROP_ID = 9,
		CERT_CTL_USAGE_PROP_ID = 9,
		CERT_NEXT_UPDATE_LOCATION_PROP_ID = 10,
		CERT_FRIENDLY_NAME_PROP_ID = 11,
		CERT_PVK_FILE_PROP_ID = 12,
		CERT_DESCRIPTION_PROP_ID = 13,
		CERT_ACCESS_STATE_PROP_ID = 14,
		CERT_SIGNATURE_HASH_PROP_ID = 15,
		CERT_SMART_CARD_DATA_PROP_ID = 16,
		CERT_EFS_PROP_ID = 17,
		CERT_FORTEZZA_DATA_PROP_ID = 18,
		CERT_ARCHIVED_PROP_ID = 19,
		CERT_KEY_IDENTIFIER_PROP_ID = 20,
		CERT_AUTO_ENROLL_PROP_ID = 21,
		CERT_PUBKEY_ALG_PARA_PROP_ID = 22,
		CERT_CROSS_CERT_DIST_POINTS_PROP_ID = 23,
		CERT_ISSUER_PUBLIC_KEY_MD5_HASH_PROP_ID = 24,
		CERT_SUBJECT_PUBLIC_KEY_MD5_HASH_PROP_ID = 25,
		CERT_ENROLLMENT_PROP_ID = 26,
		CERT_DATE_STAMP_PROP_ID = 27,
		CERT_ISSUER_SERIAL_NUMBER_MD5_HASH_PROP_ID = 28,
		CERT_SUBJECT_NAME_MD5_HASH_PROP_ID = 29,
		CERT_EXTENDED_ERROR_INFO_PROP_ID = 30,
		CERT_RENEWAL_PROP_ID = 64,
		CERT_ARCHIVED_KEY_HASH_PROP_ID = 65,
		CERT_AUTO_ENROLL_RETRY_PROP_ID = 66,
		CERT_AIA_URL_RETRIEVED_PROP_ID = 67,
		CERT_AUTHORITY_INFO_ACCESS_PROP_ID = 68,
		CERT_BACKED_UP_PROP_ID = 69,
		CERT_OCSP_RESPONSE_PROP_ID = 70,
		CERT_REQUEST_ORIGINATOR_PROP_ID = 71,
		CERT_SOURCE_LOCATION_PROP_ID = 72,
		CERT_SOURCE_URL_PROP_ID = 73,
		CERT_NEW_KEY_PROP_ID = 74,
		CERT_OCSP_CACHE_PREFIX_PROP_ID = 75,
		CERT_SMART_CARD_ROOT_INFO_PROP_ID = 76,
		CERT_NO_AUTO_EXPIRE_CHECK_PROP_ID = 77,
		CERT_NCRYPT_KEY_HANDLE_PROP_ID = 78,
		CERT_HCRYPTPROV_OR_NCRYPT_KEY_HANDLE_PROP_ID = 79,
		CERT_SUBJECT_INFO_ACCESS_PROP_ID = 80,
		CERT_CA_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 81,
		CERT_CA_DISABLE_CRL_PROP_ID = 82,
		CERT_ROOT_PROGRAM_CERT_POLICIES_PROP_ID = 83,
		CERT_ROOT_PROGRAM_NAME_CONSTRAINTS_PROP_ID = 84,
		CERT_SUBJECT_OCSP_AUTHORITY_INFO_ACCESS_PROP_ID = 85,
		CERT_SUBJECT_DISABLE_CRL_PROP_ID = 86,
		CERT_CEP_PROP_ID = 87,
		CERT_SIGN_HASH_CNG_ALG_PROP_ID = 89,
		CERT_SCARD_PIN_ID_PROP_ID = 90,
		CERT_SCARD_PIN_INFO_PROP_ID = 91,
		CERT_SUBJECT_PUB_KEY_BIT_LENGTH_PROP_ID = 92,
		CERT_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 93,
		CERT_ISSUER_PUB_KEY_BIT_LENGTH_PROP_ID = 94,
		CERT_ISSUER_CHAIN_SIGN_HASH_CNG_ALG_PROP_ID = 95,
		CERT_ISSUER_CHAIN_PUB_KEY_CNG_ALG_BIT_LENGTH_PROP_ID = 96,
		CERT_NO_EXPIRE_NOTIFICATION_PROP_ID = 97,
		CERT_AUTH_ROOT_SHA256_HASH_PROP_ID = 98,
		CERT_NCRYPT_KEY_HANDLE_TRANSFER_PROP_ID = 99,
		CERT_HCRYPTPROV_TRANSFER_PROP_ID = 100,
		CERT_SMART_CARD_READER_PROP_ID = 101,
		CERT_SEND_AS_TRUSTED_ISSUER_PROP_ID = 102,
		CERT_KEY_REPAIR_ATTEMPTED_PROP_ID = 103,
		CERT_DISALLOWED_FILETIME_PROP_ID = 104,
		CERT_ROOT_PROGRAM_CHAIN_POLICIES_PROP_ID = 105,
		CERT_SMART_CARD_READER_NON_REMOVABLE_PROP_ID = 106,
		CERT_SHA256_HASH_PROP_ID = 107,
		CERT_SCEP_SERVER_CERTS_PROP_ID = 108,
		CERT_SCEP_RA_SIGNATURE_CERT_PROP_ID = 109,
		CERT_SCEP_RA_ENCRYPTION_CERT_PROP_ID = 110,
		CERT_SCEP_CA_CERT_PROP_ID = 111,
		CERT_SCEP_SIGNER_CERT_PROP_ID = 112,
		CERT_SCEP_NONCE_PROP_ID = 113,
		CERT_SCEP_ENCRYPT_HASH_CNG_ALG_PROP_ID = 114,
		CERT_SCEP_FLAGS_PROP_ID = 115,
		CERT_SCEP_GUID_PROP_ID = 116,
		CERT_SERIALIZABLE_KEY_CONTEXT_PROP_ID = 117,
		CERT_ISOLATED_KEY_PROP_ID = 118,
		CERT_SERIAL_CHAIN_PROP_ID = 119,
		CERT_KEY_CLASSIFICATION_PROP_ID = 120,
		CERT_DISALLOWED_ENHKEY_USAGE_PROP_ID = 122,
		CERT_NONCOMPLIANT_ROOT_URL_PROP_ID = 123,
		CERT_PIN_SHA256_HASH_PROP_ID = 124,
		CERT_CLR_DELETE_KEY_PROP_ID = 125,
		CERT_NOT_BEFORE_FILETIME_PROP_ID = 126,
		CERT_CERT_NOT_BEFORE_ENHKEY_USAGE_PROP_ID = 127,
		CERT_FIRST_RESERVED_PROP_ID = 128,
		CERT_LAST_RESERVED_PROP_ID = 32767,
		CERT_FIRST_USER_PROP_ID = 32768,
		CERT_LAST_USER_PROP_ID = 65535,
		CERT_STORE_LOCALIZED_NAME_PROP_ID = 4096,
	}
	public enum EnrollmentPolicyServerPropertyFlags : int32
	{
		None = 0,
		PolicyServer = 1,
	}
	public enum PolicyServerUrlFlags : int32
	{
		None = 0,
		LocationGroupPolicy = 1,
		LocationRegistry = 2,
		UseClientId = 4,
		AutoEnrollmentEnabled = 16,
		AllowUnTrustedCA = 32,
	}
	public enum EnrollmentTemplateProperty : int32
	{
		CommonName = 1,
		FriendlyName = 2,
		EKUs = 3,
		CryptoProviders = 4,
		MajorRevision = 5,
		Description = 6,
		KeySpec = 7,
		SchemaVersion = 8,
		MinorRevision = 9,
		RASignatureCount = 10,
		MinimumKeySize = 11,
		OID = 12,
		Supersede = 13,
		RACertificatePolicies = 14,
		RAEKUs = 15,
		CertificatePolicies = 16,
		V1ApplicationPolicy = 17,
		AsymmetricAlgorithm = 18,
		KeySecurityDescriptor = 19,
		SymmetricAlgorithm = 20,
		SymmetricKeyLength = 21,
		HashAlgorithm = 22,
		KeyUsage = 23,
		EnrollmentFlags = 24,
		SubjectNameFlags = 25,
		PrivateKeyFlags = 26,
		GeneralFlags = 27,
		SecurityDescriptor = 28,
		Extensions = 29,
		ValidityPeriod = 30,
		RenewalPeriod = 31,
	}
	public enum CommitTemplateFlags : int32
	{
		SaveTemplateGenerateOID = 1,
		SaveTemplateUseCurrentOID = 2,
		SaveTemplateOverwrite = 3,
		DeleteTemplate = 4,
	}
	public enum EnrollmentCAProperty : int32
	{
		CommonName = 1,
		DistinguishedName = 2,
		SanitizedName = 3,
		SanitizedShortName = 4,
		DNSName = 5,
		CertificateTypes = 6,
		Certificate = 7,
		Description = 8,
		WebServers = 9,
		SiteName = 10,
		Security = 11,
		RenewalOnly = 12,
	}
	public enum X509EnrollmentPolicyLoadOption : int32
	{
		Default = 0,
		CacheOnly = 1,
		Reload = 2,
		RegisterForADChanges = 4,
	}
	public enum EnrollmentPolicyFlags : int32
	{
		GroupPolicyList = 2,
		UserServerList = 4,
	}
	public enum PolicyServerUrlPropertyID : int32
	{
		PolicyID = 0,
		FriendlyName = 1,
	}
	public enum X509EnrollmentPolicyExportFlags : int32
	{
		Templates = 1,
		OIDs = 2,
		CAs = 4,
	}
	public enum X509RequestType : int32
	{
		Any = 0,
		Pkcs10 = 1,
		Pkcs7 = 2,
		Cmc = 3,
		Certificate = 4,
	}
	public enum X509RequestInheritOptions : int32
	{
		Default = 0,
		NewDefaultKey = 1,
		NewSimilarKey = 2,
		PrivateKey = 3,
		PublicKey = 4,
		KeyMask = 15,
		None = 16,
		RenewalCertificateFlag = 32,
		TemplateFlag = 64,
		SubjectFlag = 128,
		ExtensionsFlag = 256,
		SubjectAltNameFlag = 512,
		ValidityPeriodFlag = 1024,
		Reserved80000000 = -2147483648,
	}
	public enum InnerRequestLevel : int32
	{
		Innermost = 0,
		Next = 1,
	}
	public enum Pkcs10AllowedSignatureTypes : int32
	{
		KeySignature = 1,
		NullSignature = 2,
	}
	public enum KeyAttestationClaimType : int32
	{
		NONE = 0,
		AUTHORITY_AND_SUBJECT = 3,
		AUTHORITY_ONLY = 1,
		SUBJECT_ONLY = 2,
		UNKNOWN = 4096,
	}
	public enum InstallResponseRestrictionFlags : int32
	{
		None = 0,
		NoOutstandingRequest = 1,
		UntrustedCertificate = 2,
		UntrustedRoot = 4,
	}
	public enum WebEnrollmentFlags : int32
	{
		EnrollPrompt = 1,
	}
	public enum CRLRevocationReason : int32
	{
		UNSPECIFIED = 0,
		KEY_COMPROMISE = 1,
		CA_COMPROMISE = 2,
		AFFILIATION_CHANGED = 3,
		SUPERSEDED = 4,
		CESSATION_OF_OPERATION = 5,
		CERTIFICATE_HOLD = 6,
		REMOVE_FROM_CRL = 8,
		PRIVILEGE_WITHDRAWN = 9,
		AA_COMPROMISE = 10,
	}
	public enum X509SCEPProcessMessageFlags : int32
	{
		Default = 0,
		SkipCertInstall = 1,
	}
	public enum DelayRetryAction : int32
	{
		Unknown = 0,
		None = 1,
		Short = 2,
		Long = 3,
		Success = 4,
		PastSuccess = 5,
	}
	public enum X509CertificateTemplateGeneralFlag : int32
	{
		MachineType = 64,
		CA = 128,
		CrossCA = 2048,
		Default = 65536,
		Modified = 131072,
		DonotPersist = 4096,
	}
	public enum X509CertificateTemplateEnrollmentFlag : int32
	{
		IncludeSymmetricAlgorithms = 1,
		PendAllRequests = 2,
		PublishToKRAContainer = 4,
		PublishToDS = 8,
		AutoEnrollmentCheckUserDSCertificate = 16,
		AutoEnrollment = 32,
		DomainAuthenticationNotRequired = 128,
		PreviousApprovalValidateReenrollment = 64,
		UserInteractionRequired = 256,
		AddTemplateName = 512,
		RemoveInvalidCertificateFromPersonalStore = 1024,
		AllowEnrollOnBehalfOf = 2048,
		AddOCSPNoCheck = 4096,
		ReuseKeyOnFullSmartCard = 8192,
		NoRevocationInfoInCerts = 16384,
		IncludeBasicConstraintsForEECerts = 32768,
		PreviousApprovalKeyBasedValidateReenrollment = 65536,
		CertificateIssuancePoliciesFromRequest = 131072,
		SkipAutoRenewal = 262144,
	}
	public enum X509CertificateTemplateSubjectNameFlag : int32
	{
		NameEnrolleeSupplies = 1,
		NameRequireDirectoryPath = -2147483648,
		NameRequireCommonName = 1073741824,
		NameRequireEmail = 536870912,
		NameRequireDNS = 268435456,
		NameAndAlternativeNameOldCertSupplies = 8,
		AlternativeNameEnrolleeSupplies = 65536,
		AlternativeNameRequireDirectoryGUID = 16777216,
		AlternativeNameRequireUPN = 33554432,
		AlternativeNameRequireEmail = 67108864,
		AlternativeNameRequireSPN = 8388608,
		AlternativeNameRequireDNS = 134217728,
		AlternativeNameRequireDomainDNS = 4194304,
	}
	[AllowDuplicates]
	public enum X509CertificateTemplatePrivateKeyFlag : int32
	{
		RequireArchival = 1,
		Exportable = 16,
		RequireStrongKeyProtection = 32,
		RequireAlternateSignatureAlgorithm = 64,
		RequireSameKeyRenewal = 128,
		UseLegacyProvider = 256,
		EKTrustOnUse = 512,
		EKValidateCert = 1024,
		EKValidateKey = 2048,
		AttestNone = 0,
		AttestPreferred = 4096,
		AttestRequired = 8192,
		AttestMask = 12288,
		AttestWithoutPolicy = 16384,
		ServerVersionMask = 983040,
		ServerVersionShift = 16,
		HelloKspKey = 1048576,
		HelloLogonKey = 2097152,
		ClientVersionMask = 251658240,
		ClientVersionShift = 24,
	}
	public enum ImportPFXFlags : int32
	{
		None = 0,
		MachineContext = 1,
		ForceOverwrite = 2,
		Silent = 4,
		SaveProperties = 8,
		Exportable = 16,
		ExportableEncrypted = 32,
		NoUserProtected = 64,
		UserProtected = 128,
		UserProtectedHigh = 256,
		InstallCertificate = 512,
		InstallChain = 1024,
		InstallChainAndRoot = 2048,
	}
	public enum ENUM_CATYPES : int32
	{
		ENTERPRISE_ROOTCA = 0,
		ENTERPRISE_SUBCA = 1,
		STANDALONE_ROOTCA = 3,
		STANDALONE_SUBCA = 4,
		UNKNOWN_CA = 5,
	}
	#endregion
	
	#region Function pointers
	public function HRESULT FNCERTSRVISSERVERONLINEW(PWSTR pwszServerName, out BOOL pfServerOnline);
	public function HRESULT FNCERTSRVBACKUPGETDYNAMICFILELISTW(void* hbc, out uint16* ppwszzFileList, out uint32 pcbSize);
	public function HRESULT FNCERTSRVBACKUPPREPAREW(PWSTR pwszServerName, uint32 grbitJet, uint32 dwBackupFlags, void** phbc);
	public function HRESULT FNCERTSRVBACKUPGETDATABASENAMESW(void* hbc, out uint16* ppwszzAttachmentInformation, out uint32 pcbSize);
	public function HRESULT FNCERTSRVBACKUPOPENFILEW(void* hbc, PWSTR pwszAttachmentName, uint32 cbReadHintSize, out LARGE_INTEGER pliFileSize);
	public function HRESULT FNCERTSRVBACKUPREAD(void* hbc, void* pvBuffer, uint32 cbBuffer, out uint32 pcbRead);
	public function HRESULT FNCERTSRVBACKUPCLOSE(void* hbc);
	public function HRESULT FNCERTSRVBACKUPGETBACKUPLOGSW(void* hbc, out uint16* ppwszzBackupLogFiles, out uint32 pcbSize);
	public function HRESULT FNCERTSRVBACKUPTRUNCATELOGS(void* hbc);
	public function HRESULT FNCERTSRVBACKUPEND(void* hbc);
	public function void FNCERTSRVBACKUPFREE(void* pv);
	public function HRESULT FNCERTSRVRESTOREGETDATABASELOCATIONSW(void* hbc, out uint16* ppwszzDatabaseLocationList, out uint32 pcbSize);
	public function HRESULT FNCERTSRVRESTOREPREPAREW(PWSTR pwszServerName, uint32 dwRestoreFlags, void** phbc);
	public function HRESULT FNCERTSRVRESTOREREGISTERW(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, out CSEDB_RSTMAPW rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
	public function HRESULT FNCERTSRVRESTOREREGISTERCOMPLETE(void* hbc, HRESULT hrRestoreState);
	public function HRESULT FNCERTSRVRESTOREEND(void* hbc);
	public function HRESULT FNCERTSRVSERVERCONTROLW(PWSTR pwszServerName, uint32 dwControlFlags, out uint32 pcbOut, out uint8* ppbOut);
	public function HRESULT FNIMPORTPFXTOPROVIDER(HWND hWndParent, in uint8 pbPFX, uint32 cbPFX, ImportPFXFlags ImportFlags, PWSTR pwszPassword, PWSTR pwszProviderName, PWSTR pwszReaderName, PWSTR pwszContainerNamePrefix, PWSTR pwszPin, PWSTR pwszFriendlyName, uint32* pcCertOut, CERT_CONTEXT*** prgpCertOut);
	public function void FNIMPORTPFXTOPROVIDERFREEDATA(uint32 cCert, CERT_CONTEXT** rgpCert);
	#endregion
	
	#region Structs
	[CRepr]
	public struct CSEDB_RSTMAPW
	{
		public PWSTR pwszDatabaseName;
		public PWSTR pwszNewDatabaseName;
	}
	[CRepr]
	public struct CERTTRANSBLOB
	{
		public uint32 cb;
		public uint8* pb;
	}
	[CRepr]
	public struct CERTVIEWRESTRICTION
	{
		public uint32 ColumnIndex;
		public int32 SeekOperator;
		public int32 SortOrder;
		public uint8* pbValue;
		public uint32 cbValue;
	}
	[CRepr]
	public struct CAINFO
	{
		public uint32 cbSize;
		public ENUM_CATYPES CAType;
		public uint32 cCASignatureCerts;
		public uint32 cCAExchangeCerts;
		public uint32 cExitModules;
		public int32 lPropIdMax;
		public int32 lRoleSeparationEnabled;
		public uint32 cKRACertUsedCount;
		public uint32 cKRACertCount;
		public uint32 fAdvancedServer;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_CCertAdmin = .(0x37eabaf0, 0x7fb6, 0x11d0, 0x88, 0x17, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertView = .(0xa12d0f7a, 0x1e84, 0x11d1, 0x9b, 0xd6, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
	public const Guid CLSID_OCSPPropertyCollection = .(0xf935a528, 0xba8a, 0x4dd9, 0xba, 0x79, 0xf2, 0x83, 0x27, 0x5c, 0xb2, 0xde);
	public const Guid CLSID_OCSPAdmin = .(0xd3f73511, 0x92c9, 0x47cb, 0x8f, 0xf2, 0x8d, 0x89, 0x1a, 0x7c, 0x4d, 0xe4);
	public const Guid CLSID_CCertGetConfig = .(0xc6cc49b0, 0xce17, 0x11d0, 0x88, 0x33, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertConfig = .(0x372fce38, 0x4324, 0x11d0, 0x88, 0x10, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertRequest = .(0x98aff3f0, 0x5524, 0x11d0, 0x88, 0x12, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertServerPolicy = .(0xaa000926, 0xffbe, 0x11cf, 0x88, 0x00, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertServerExit = .(0x4c4a5e40, 0x732c, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertEncodeStringArray = .(0x19a76fe0, 0x7494, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertEncodeLongArray = .(0x4e0680a0, 0xa0a2, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertEncodeDateArray = .(0x301f77b0, 0xa470, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertEncodeCRLDistInfo = .(0x01fa60a0, 0xbbff, 0x11d0, 0x88, 0x25, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
	public const Guid CLSID_CCertEncodeAltName = .(0x1cfc4cda, 0x1271, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
	public const Guid CLSID_CCertEncodeBitString = .(0x6d6b3cd8, 0x1278, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
	public const Guid CLSID_CObjectId = .(0x884e2000, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CObjectIds = .(0x884e2001, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CBinaryConverter = .(0x884e2002, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX500DistinguishedName = .(0x884e2003, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCspInformation = .(0x884e2007, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCspInformations = .(0x884e2008, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCspStatus = .(0x884e2009, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509PublicKey = .(0x884e200b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509PrivateKey = .(0x884e200c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509EndorsementKey = .(0x11a25a1d, 0xb9a3, 0x4edd, 0xaf, 0x83, 0x3b, 0x59, 0xad, 0xbe, 0xd3, 0x61);
	public const Guid CLSID_CX509Extension = .(0x884e200d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509Extensions = .(0x884e200e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionKeyUsage = .(0x884e200f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionEnhancedKeyUsage = .(0x884e2010, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionTemplateName = .(0x884e2011, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionTemplate = .(0x884e2012, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CAlternativeName = .(0x884e2013, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CAlternativeNames = .(0x884e2014, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionAlternativeNames = .(0x884e2015, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionBasicConstraints = .(0x884e2016, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionSubjectKeyIdentifier = .(0x884e2017, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionAuthorityKeyIdentifier = .(0x884e2018, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CSmimeCapability = .(0x884e2019, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CSmimeCapabilities = .(0x884e201a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionSmimeCapabilities = .(0x884e201b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CPolicyQualifier = .(0x884e201c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CPolicyQualifiers = .(0x884e201d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertificatePolicy = .(0x884e201e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertificatePolicies = .(0x884e201f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionCertificatePolicies = .(0x884e2020, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509ExtensionMSApplicationPolicies = .(0x884e2021, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509Attribute = .(0x884e2022, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509Attributes = .(0x884e2023, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeExtensions = .(0x884e2024, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeClientId = .(0x884e2025, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeRenewalCertificate = .(0x884e2026, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeArchiveKey = .(0x884e2027, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeArchiveKeyHash = .(0x884e2028, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeOSVersion = .(0x884e202a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509AttributeCspProvider = .(0x884e202b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCryptAttribute = .(0x884e202c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCryptAttributes = .(0x884e202d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertProperty = .(0x884e202e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertProperties = .(0x884e202f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyFriendlyName = .(0x884e2030, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyDescription = .(0x884e2031, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyAutoEnroll = .(0x884e2032, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyRequestOriginator = .(0x884e2033, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertySHA1Hash = .(0x884e2034, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyKeyProvInfo = .(0x884e2036, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyArchived = .(0x884e2037, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyBackedUp = .(0x884e2038, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyEnrollment = .(0x884e2039, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyRenewal = .(0x884e203a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyArchivedKeyHash = .(0x884e203b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertPropertyEnrollmentPolicyServer = .(0x884e204c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CSignerCertificate = .(0x884e203d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509NameValuePair = .(0x884e203f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CCertificateAttestationChallenge = .(0x1362ada1, 0xeb60, 0x456a, 0xb6, 0xe1, 0x11, 0x80, 0x50, 0xdb, 0x74, 0x1b);
	public const Guid CLSID_CX509CertificateRequestPkcs10 = .(0x884e2042, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateRequestCertificate = .(0x884e2043, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateRequestPkcs7 = .(0x884e2044, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateRequestCmc = .(0x884e2045, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509Enrollment = .(0x884e2046, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509EnrollmentWebClassFactory = .(0x884e2049, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509EnrollmentHelper = .(0x884e2050, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509MachineEnrollmentFactory = .(0x884e2051, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509EnrollmentPolicyActiveDirectory = .(0x91f39027, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509EnrollmentPolicyWebService = .(0x91f39028, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509PolicyServerListManager = .(0x91f39029, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509PolicyServerUrl = .(0x91f3902a, 0x217f, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateTemplateADWritable = .(0x8336e323, 0x2e6a, 0x4a04, 0x93, 0x7c, 0x54, 0x8f, 0x68, 0x18, 0x39, 0xb3);
	public const Guid CLSID_CX509CertificateRevocationListEntry = .(0x884e205e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateRevocationListEntries = .(0x884e205f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509CertificateRevocationList = .(0x884e2060, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509SCEPEnrollment = .(0x884e2061, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CX509SCEPEnrollmentHelper = .(0x884e2062, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
	public const Guid CLSID_CEnroll2 = .(0x127698e4, 0xe730, 0x4e5c, 0xa2, 0xb1, 0x21, 0x49, 0x0a, 0x70, 0xc8, 0xa1);
	public const Guid CLSID_CEnroll = .(0x43f8f289, 0x7a20, 0x11d0, 0x8f, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IEnumCERTVIEWCOLUMN : IDispatch
	{
		public const new Guid IID = .(0x9c735be2, 0x57a5, 0x11d1, 0x9b, 0xdb, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out int32 pIndex) mut => VT.Next(ref this, out pIndex);
		public HRESULT GetName(out BSTR pstrOut) mut => VT.GetName(ref this, out pstrOut);
		public HRESULT GetDisplayName(out BSTR pstrOut) mut => VT.GetDisplayName(ref this, out pstrOut);
		public HRESULT ComGetType(out int32 pType) mut => VT.ComGetType(ref this, out pType);
		public HRESULT IsIndexed(out int32 pIndexed) mut => VT.IsIndexed(ref this, out pIndexed);
		public HRESULT GetMaxLength(out int32 pMaxLength) mut => VT.GetMaxLength(ref this, out pMaxLength);
		public HRESULT GetValue(ENUM_CERT_COLUMN_VALUE_FLAGS Flags, out VARIANT pvarValue) mut => VT.GetValue(ref this, Flags, out pvarValue);
		public HRESULT Skip(int32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumCERTVIEWCOLUMN* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out int32 pIndex) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out BSTR pstrOut) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out BSTR pstrOut) GetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out int32 pType) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out int32 pIndexed) IsIndexed;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out int32 pMaxLength) GetMaxLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, out VARIANT pvarValue) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, int32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWCOLUMN self, out IEnumCERTVIEWCOLUMN* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IEnumCERTVIEWATTRIBUTE : IDispatch
	{
		public const new Guid IID = .(0xe77db656, 0x7653, 0x11d1, 0x9b, 0xde, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out int32 pIndex) mut => VT.Next(ref this, out pIndex);
		public HRESULT GetName(out BSTR pstrOut) mut => VT.GetName(ref this, out pstrOut);
		public HRESULT GetValue(out BSTR pstrOut) mut => VT.GetValue(ref this, out pstrOut);
		public HRESULT Skip(int32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumCERTVIEWATTRIBUTE* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self, out int32 pIndex) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self, out BSTR pstrOut) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self, out BSTR pstrOut) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self, int32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWATTRIBUTE self, out IEnumCERTVIEWATTRIBUTE* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IEnumCERTVIEWEXTENSION : IDispatch
	{
		public const new Guid IID = .(0xe7dd1466, 0x7653, 0x11d1, 0x9b, 0xde, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out int32 pIndex) mut => VT.Next(ref this, out pIndex);
		public HRESULT GetName(out BSTR pstrOut) mut => VT.GetName(ref this, out pstrOut);
		public HRESULT ComGetFlags(out int32 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
		public HRESULT GetValue(CERT_PROPERTY_TYPE Type, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, out VARIANT pvarValue) mut => VT.GetValue(ref this, Type, Flags, out pvarValue);
		public HRESULT Skip(int32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumCERTVIEWEXTENSION* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, out int32 pIndex) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, out BSTR pstrOut) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, out int32 pFlags) ComGetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, CERT_PROPERTY_TYPE Type, ENUM_CERT_COLUMN_VALUE_FLAGS Flags, out VARIANT pvarValue) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, int32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWEXTENSION self, out IEnumCERTVIEWEXTENSION* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IEnumCERTVIEWROW : IDispatch
	{
		public const new Guid IID = .(0xd1157f4c, 0x5af2, 0x11d1, 0x9b, 0xdc, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out int32 pIndex) mut => VT.Next(ref this, out pIndex);
		public HRESULT EnumCertViewColumn(out IEnumCERTVIEWCOLUMN* ppenum) mut => VT.EnumCertViewColumn(ref this, out ppenum);
		public HRESULT EnumCertViewAttribute(int32 Flags, out IEnumCERTVIEWATTRIBUTE* ppenum) mut => VT.EnumCertViewAttribute(ref this, Flags, out ppenum);
		public HRESULT EnumCertViewExtension(int32 Flags, out IEnumCERTVIEWEXTENSION* ppenum) mut => VT.EnumCertViewExtension(ref this, Flags, out ppenum);
		public HRESULT Skip(int32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumCERTVIEWROW* ppenum) mut => VT.Clone(ref this, out ppenum);
		public HRESULT GetMaxIndex(out int32 pIndex) mut => VT.GetMaxIndex(ref this, out pIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, out int32 pIndex) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, out IEnumCERTVIEWCOLUMN* ppenum) EnumCertViewColumn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, int32 Flags, out IEnumCERTVIEWATTRIBUTE* ppenum) EnumCertViewAttribute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, int32 Flags, out IEnumCERTVIEWEXTENSION* ppenum) EnumCertViewExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, int32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, out IEnumCERTVIEWROW* ppenum) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCERTVIEWROW self, out int32 pIndex) GetMaxIndex;
		}
	}
	[CRepr]
	public struct ICertView : IDispatch
	{
		public const new Guid IID = .(0xc3fac344, 0x1e84, 0x11d1, 0x9b, 0xd6, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OpenConnection(BSTR strConfig) mut => VT.OpenConnection(ref this, strConfig);
		public HRESULT EnumCertViewColumn(CVRC_COLUMN fResultColumn, out IEnumCERTVIEWCOLUMN* ppenum) mut => VT.EnumCertViewColumn(ref this, fResultColumn, out ppenum);
		public HRESULT GetColumnCount(CVRC_COLUMN fResultColumn, out int32 pcColumn) mut => VT.GetColumnCount(ref this, fResultColumn, out pcColumn);
		public HRESULT GetColumnIndex(CVRC_COLUMN fResultColumn, BSTR strColumnName, out int32 pColumnIndex) mut => VT.GetColumnIndex(ref this, fResultColumn, strColumnName, out pColumnIndex);
		public HRESULT SetResultColumnCount(int32 cResultColumn) mut => VT.SetResultColumnCount(ref this, cResultColumn);
		public HRESULT SetResultColumn(int32 ColumnIndex) mut => VT.SetResultColumn(ref this, ColumnIndex);
		public HRESULT SetRestriction(CERT_VIEW_COLUMN_INDEX ColumnIndex, CERT_VIEW_SEEK_OPERATOR_FLAGS SeekOperator, int32 SortOrder, in VARIANT pvarValue) mut => VT.SetRestriction(ref this, ColumnIndex, SeekOperator, SortOrder, pvarValue);
		public HRESULT OpenView(out IEnumCERTVIEWROW* ppenum) mut => VT.OpenView(ref this, out ppenum);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, BSTR strConfig) OpenConnection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, CVRC_COLUMN fResultColumn, out IEnumCERTVIEWCOLUMN* ppenum) EnumCertViewColumn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, CVRC_COLUMN fResultColumn, out int32 pcColumn) GetColumnCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, CVRC_COLUMN fResultColumn, BSTR strColumnName, out int32 pColumnIndex) GetColumnIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, int32 cResultColumn) SetResultColumnCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, int32 ColumnIndex) SetResultColumn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, CERT_VIEW_COLUMN_INDEX ColumnIndex, CERT_VIEW_SEEK_OPERATOR_FLAGS SeekOperator, int32 SortOrder, in VARIANT pvarValue) SetRestriction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView self, out IEnumCERTVIEWROW* ppenum) OpenView;
		}
	}
	[CRepr]
	public struct ICertView2 : ICertView
	{
		public const new Guid IID = .(0xd594b282, 0x8851, 0x4b61, 0x9c, 0x66, 0x3e, 0xda, 0xdf, 0x84, 0x88, 0x63);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetTable(CVRC_TABLE Table) mut => VT.SetTable(ref this, Table);

		[CRepr]
		public struct VTable : ICertView.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertView2 self, CVRC_TABLE Table) SetTable;
		}
	}
	[CRepr]
	public struct ICertAdmin : IDispatch
	{
		public const new Guid IID = .(0x34df6950, 0x7fb6, 0x11d0, 0x88, 0x17, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsValidCertificate(BSTR strConfig, BSTR strSerialNumber, out int32 pDisposition) mut => VT.IsValidCertificate(ref this, strConfig, strSerialNumber, out pDisposition);
		public HRESULT GetRevocationReason(out int32 pReason) mut => VT.GetRevocationReason(ref this, out pReason);
		public HRESULT RevokeCertificate(BSTR strConfig, BSTR strSerialNumber, int32 Reason, double Date) mut => VT.RevokeCertificate(ref this, strConfig, strSerialNumber, Reason, Date);
		public HRESULT SetRequestAttributes(BSTR strConfig, int32 RequestId, BSTR strAttributes) mut => VT.SetRequestAttributes(ref this, strConfig, RequestId, strAttributes);
		public HRESULT SetCertificateExtension(BSTR strConfig, int32 RequestId, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, int32 Flags, in VARIANT pvarValue) mut => VT.SetCertificateExtension(ref this, strConfig, RequestId, strExtensionName, Type, Flags, pvarValue);
		public HRESULT DenyRequest(BSTR strConfig, int32 RequestId) mut => VT.DenyRequest(ref this, strConfig, RequestId);
		public HRESULT ResubmitRequest(BSTR strConfig, int32 RequestId, out int32 pDisposition) mut => VT.ResubmitRequest(ref this, strConfig, RequestId, out pDisposition);
		public HRESULT PublishCRL(BSTR strConfig, double Date) mut => VT.PublishCRL(ref this, strConfig, Date);
		public HRESULT GetCRL(BSTR strConfig, int32 Flags, out BSTR pstrCRL) mut => VT.GetCRL(ref this, strConfig, Flags, out pstrCRL);
		public HRESULT ImportCertificate(BSTR strConfig, BSTR strCertificate, CERT_IMPORT_FLAGS Flags, out int32 pRequestId) mut => VT.ImportCertificate(ref this, strConfig, strCertificate, Flags, out pRequestId);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, BSTR strSerialNumber, out int32 pDisposition) IsValidCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, out int32 pReason) GetRevocationReason;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, BSTR strSerialNumber, int32 Reason, double Date) RevokeCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, int32 RequestId, BSTR strAttributes) SetRequestAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, int32 RequestId, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, int32 Flags, in VARIANT pvarValue) SetCertificateExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, int32 RequestId) DenyRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, int32 RequestId, out int32 pDisposition) ResubmitRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, double Date) PublishCRL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, int32 Flags, out BSTR pstrCRL) GetCRL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin self, BSTR strConfig, BSTR strCertificate, CERT_IMPORT_FLAGS Flags, out int32 pRequestId) ImportCertificate;
		}
	}
	[CRepr]
	public struct ICertAdmin2 : ICertAdmin
	{
		public const new Guid IID = .(0xf7c3ac41, 0xb8ce, 0x4fb4, 0xaa, 0x58, 0x3d, 0x1d, 0xc0, 0xe3, 0x6b, 0x39);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PublishCRLs(BSTR strConfig, double Date, int32 CRLFlags) mut => VT.PublishCRLs(ref this, strConfig, Date, CRLFlags);
		public HRESULT GetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, out VARIANT pvarPropertyValue) mut => VT.GetCAProperty(ref this, strConfig, PropId, PropIndex, PropType, Flags, out pvarPropertyValue);
		public HRESULT SetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, ref VARIANT pvarPropertyValue) mut => VT.SetCAProperty(ref this, strConfig, PropId, PropIndex, PropType, ref pvarPropertyValue);
		public HRESULT GetCAPropertyFlags(BSTR strConfig, int32 PropId, out int32 pPropFlags) mut => VT.GetCAPropertyFlags(ref this, strConfig, PropId, out pPropFlags);
		public HRESULT GetCAPropertyDisplayName(BSTR strConfig, int32 PropId, out BSTR pstrDisplayName) mut => VT.GetCAPropertyDisplayName(ref this, strConfig, PropId, out pstrDisplayName);
		public HRESULT GetArchivedKey(BSTR strConfig, int32 RequestId, int32 Flags, out BSTR pstrArchivedKey) mut => VT.GetArchivedKey(ref this, strConfig, RequestId, Flags, out pstrArchivedKey);
		public HRESULT GetConfigEntry(BSTR strConfig, BSTR strNodePath, BSTR strEntryName, out VARIANT pvarEntry) mut => VT.GetConfigEntry(ref this, strConfig, strNodePath, strEntryName, out pvarEntry);
		public HRESULT SetConfigEntry(BSTR strConfig, BSTR strNodePath, BSTR strEntryName, ref VARIANT pvarEntry) mut => VT.SetConfigEntry(ref this, strConfig, strNodePath, strEntryName, ref pvarEntry);
		public HRESULT ImportKey(BSTR strConfig, int32 RequestId, BSTR strCertHash, CERT_IMPORT_FLAGS Flags, BSTR strKey) mut => VT.ImportKey(ref this, strConfig, RequestId, strCertHash, Flags, strKey);
		public HRESULT GetMyRoles(BSTR strConfig, out CERTADMIN_GET_ROLES_FLAGS pRoles) mut => VT.GetMyRoles(ref this, strConfig, out pRoles);
		public HRESULT DeleteRow(BSTR strConfig, CERT_DELETE_ROW_FLAGS Flags, double Date, CVRC_TABLE Table, int32 RowId, out int32 pcDeleted) mut => VT.DeleteRow(ref this, strConfig, Flags, Date, Table, RowId, out pcDeleted);

		[CRepr]
		public struct VTable : ICertAdmin.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, double Date, int32 CRLFlags) PublishCRLs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, out VARIANT pvarPropertyValue) GetCAProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, ref VARIANT pvarPropertyValue) SetCAProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 PropId, out int32 pPropFlags) GetCAPropertyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 PropId, out BSTR pstrDisplayName) GetCAPropertyDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 RequestId, int32 Flags, out BSTR pstrArchivedKey) GetArchivedKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, BSTR strNodePath, BSTR strEntryName, out VARIANT pvarEntry) GetConfigEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, BSTR strNodePath, BSTR strEntryName, ref VARIANT pvarEntry) SetConfigEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, int32 RequestId, BSTR strCertHash, CERT_IMPORT_FLAGS Flags, BSTR strKey) ImportKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, out CERTADMIN_GET_ROLES_FLAGS pRoles) GetMyRoles;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertAdmin2 self, BSTR strConfig, CERT_DELETE_ROW_FLAGS Flags, double Date, CVRC_TABLE Table, int32 RowId, out int32 pcDeleted) DeleteRow;
		}
	}
	[CRepr]
	public struct IOCSPProperty : IDispatch
	{
		public const new Guid IID = .(0x66fb7839, 0x5f04, 0x4c25, 0xad, 0x18, 0x9f, 0xf1, 0xa8, 0x37, 0x6e, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Name(out BSTR pVal) mut => VT.get_Name(ref this, out pVal);
		public HRESULT get_Value(out VARIANT pVal) mut => VT.get_Value(ref this, out pVal);
		public HRESULT put_Value(VARIANT newVal) mut => VT.put_Value(ref this, newVal);
		public HRESULT get_Modified(out int16 pVal) mut => VT.get_Modified(ref this, out pVal);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPProperty self, out BSTR pVal) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPProperty self, out VARIANT pVal) get_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPProperty self, VARIANT newVal) put_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPProperty self, out int16 pVal) get_Modified;
		}
	}
	[CRepr]
	public struct IOCSPPropertyCollection : IDispatch
	{
		public const new Guid IID = .(0x2597c18d, 0x54e6, 0x4b74, 0x9f, 0xa9, 0xa6, 0xbf, 0xda, 0x99, 0xcb, 0xbe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get__NewEnum(out IUnknown* ppVal) mut => VT.get__NewEnum(ref this, out ppVal);
		public HRESULT get_Item(int32 Index, out VARIANT pVal) mut => VT.get_Item(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get_ItemByName(BSTR bstrPropName, out VARIANT pVal) mut => VT.get_ItemByName(ref this, bstrPropName, out pVal);
		public HRESULT CreateProperty(BSTR bstrPropName, in VARIANT pVarPropValue, out IOCSPProperty* ppVal) mut => VT.CreateProperty(ref this, bstrPropName, pVarPropValue, out ppVal);
		public HRESULT DeleteProperty(BSTR bstrPropName) mut => VT.DeleteProperty(ref this, bstrPropName);
		public HRESULT InitializeFromProperties(in VARIANT pVarProperties) mut => VT.InitializeFromProperties(ref this, pVarProperties);
		public HRESULT GetAllProperties(out VARIANT pVarProperties) mut => VT.GetAllProperties(ref this, out pVarProperties);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, out IUnknown* ppVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, int32 Index, out VARIANT pVal) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, BSTR bstrPropName, out VARIANT pVal) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, BSTR bstrPropName, in VARIANT pVarPropValue, out IOCSPProperty* ppVal) CreateProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, BSTR bstrPropName) DeleteProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, in VARIANT pVarProperties) InitializeFromProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPPropertyCollection self, out VARIANT pVarProperties) GetAllProperties;
		}
	}
	[CRepr]
	public struct IOCSPCAConfiguration : IDispatch
	{
		public const new Guid IID = .(0xaec92b40, 0x3d46, 0x433f, 0x87, 0xd1, 0xb8, 0x4d, 0x5c, 0x1e, 0x79, 0x0d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Identifier(out BSTR pVal) mut => VT.get_Identifier(ref this, out pVal);
		public HRESULT get_CACertificate(out VARIANT pVal) mut => VT.get_CACertificate(ref this, out pVal);
		public HRESULT get_HashAlgorithm(out BSTR pVal) mut => VT.get_HashAlgorithm(ref this, out pVal);
		public HRESULT put_HashAlgorithm(BSTR newVal) mut => VT.put_HashAlgorithm(ref this, newVal);
		public HRESULT get_SigningFlags(out uint32 pVal) mut => VT.get_SigningFlags(ref this, out pVal);
		public HRESULT put_SigningFlags(uint32 newVal) mut => VT.put_SigningFlags(ref this, newVal);
		public HRESULT get_SigningCertificate(out VARIANT pVal) mut => VT.get_SigningCertificate(ref this, out pVal);
		public HRESULT put_SigningCertificate(VARIANT newVal) mut => VT.put_SigningCertificate(ref this, newVal);
		public HRESULT get_ReminderDuration(out uint32 pVal) mut => VT.get_ReminderDuration(ref this, out pVal);
		public HRESULT put_ReminderDuration(uint32 newVal) mut => VT.put_ReminderDuration(ref this, newVal);
		public HRESULT get_ErrorCode(out uint32 pVal) mut => VT.get_ErrorCode(ref this, out pVal);
		public HRESULT get_CSPName(out BSTR pVal) mut => VT.get_CSPName(ref this, out pVal);
		public HRESULT get_KeySpec(out uint32 pVal) mut => VT.get_KeySpec(ref this, out pVal);
		public HRESULT get_ProviderCLSID(out BSTR pVal) mut => VT.get_ProviderCLSID(ref this, out pVal);
		public HRESULT put_ProviderCLSID(BSTR newVal) mut => VT.put_ProviderCLSID(ref this, newVal);
		public HRESULT get_ProviderProperties(out VARIANT pVal) mut => VT.get_ProviderProperties(ref this, out pVal);
		public HRESULT put_ProviderProperties(VARIANT newVal) mut => VT.put_ProviderProperties(ref this, newVal);
		public HRESULT get_Modified(out int16 pVal) mut => VT.get_Modified(ref this, out pVal);
		public HRESULT get_LocalRevocationInformation(out VARIANT pVal) mut => VT.get_LocalRevocationInformation(ref this, out pVal);
		public HRESULT put_LocalRevocationInformation(VARIANT newVal) mut => VT.put_LocalRevocationInformation(ref this, newVal);
		public HRESULT get_SigningCertificateTemplate(out BSTR pVal) mut => VT.get_SigningCertificateTemplate(ref this, out pVal);
		public HRESULT put_SigningCertificateTemplate(BSTR newVal) mut => VT.put_SigningCertificateTemplate(ref this, newVal);
		public HRESULT get_CAConfig(out BSTR pVal) mut => VT.get_CAConfig(ref this, out pVal);
		public HRESULT put_CAConfig(BSTR newVal) mut => VT.put_CAConfig(ref this, newVal);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_Identifier;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out VARIANT pVal) get_CACertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, BSTR newVal) put_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out uint32 pVal) get_SigningFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, uint32 newVal) put_SigningFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out VARIANT pVal) get_SigningCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, VARIANT newVal) put_SigningCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out uint32 pVal) get_ReminderDuration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, uint32 newVal) put_ReminderDuration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out uint32 pVal) get_ErrorCode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_CSPName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out uint32 pVal) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_ProviderCLSID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, BSTR newVal) put_ProviderCLSID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out VARIANT pVal) get_ProviderProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, VARIANT newVal) put_ProviderProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out int16 pVal) get_Modified;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out VARIANT pVal) get_LocalRevocationInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, VARIANT newVal) put_LocalRevocationInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_SigningCertificateTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, BSTR newVal) put_SigningCertificateTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, out BSTR pVal) get_CAConfig;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfiguration self, BSTR newVal) put_CAConfig;
		}
	}
	[CRepr]
	public struct IOCSPCAConfigurationCollection : IDispatch
	{
		public const new Guid IID = .(0x2bebea0b, 0x5ece, 0x4f28, 0xa9, 0x1c, 0x86, 0xb4, 0xbb, 0x20, 0xf0, 0xd3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT get_Item(int32 Index, out VARIANT pVal) mut => VT.get_Item(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get_ItemByName(BSTR bstrIdentifier, out VARIANT pVal) mut => VT.get_ItemByName(ref this, bstrIdentifier, out pVal);
		public HRESULT CreateCAConfiguration(BSTR bstrIdentifier, VARIANT varCACert, out IOCSPCAConfiguration* ppVal) mut => VT.CreateCAConfiguration(ref this, bstrIdentifier, varCACert, out ppVal);
		public HRESULT DeleteCAConfiguration(BSTR bstrIdentifier) mut => VT.DeleteCAConfiguration(ref this, bstrIdentifier);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, int32 Index, out VARIANT pVal) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, BSTR bstrIdentifier, out VARIANT pVal) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, BSTR bstrIdentifier, VARIANT varCACert, out IOCSPCAConfiguration* ppVal) CreateCAConfiguration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPCAConfigurationCollection self, BSTR bstrIdentifier) DeleteCAConfiguration;
		}
	}
	[CRepr]
	public struct IOCSPAdmin : IDispatch
	{
		public const new Guid IID = .(0x322e830d, 0x67db, 0x4fe9, 0x95, 0x77, 0x45, 0x96, 0xd9, 0xf0, 0x92, 0x94);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_OCSPServiceProperties(out IOCSPPropertyCollection* ppVal) mut => VT.get_OCSPServiceProperties(ref this, out ppVal);
		public HRESULT get_OCSPCAConfigurationCollection(out IOCSPCAConfigurationCollection* pVal) mut => VT.get_OCSPCAConfigurationCollection(ref this, out pVal);
		public HRESULT GetConfiguration(BSTR bstrServerName, int16 bForce) mut => VT.GetConfiguration(ref this, bstrServerName, bForce);
		public HRESULT SetConfiguration(BSTR bstrServerName, int16 bForce) mut => VT.SetConfiguration(ref this, bstrServerName, bForce);
		public HRESULT GetMyRoles(BSTR bstrServerName, out int32 pRoles) mut => VT.GetMyRoles(ref this, bstrServerName, out pRoles);
		public HRESULT Ping(BSTR bstrServerName) mut => VT.Ping(ref this, bstrServerName);
		public HRESULT SetSecurity(BSTR bstrServerName, BSTR bstrVal) mut => VT.SetSecurity(ref this, bstrServerName, bstrVal);
		public HRESULT GetSecurity(BSTR bstrServerName, out BSTR pVal) mut => VT.GetSecurity(ref this, bstrServerName, out pVal);
		public HRESULT GetSigningCertificates(BSTR bstrServerName, in VARIANT pCACertVar, out VARIANT pVal) mut => VT.GetSigningCertificates(ref this, bstrServerName, pCACertVar, out pVal);
		public HRESULT GetHashAlgorithms(BSTR bstrServerName, BSTR bstrCAId, out VARIANT pVal) mut => VT.GetHashAlgorithms(ref this, bstrServerName, bstrCAId, out pVal);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, out IOCSPPropertyCollection* ppVal) get_OCSPServiceProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, out IOCSPCAConfigurationCollection* pVal) get_OCSPCAConfigurationCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, int16 bForce) GetConfiguration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, int16 bForce) SetConfiguration;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, out int32 pRoles) GetMyRoles;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName) Ping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, BSTR bstrVal) SetSecurity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, out BSTR pVal) GetSecurity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, in VARIANT pCACertVar, out VARIANT pVal) GetSigningCertificates;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOCSPAdmin self, BSTR bstrServerName, BSTR bstrCAId, out VARIANT pVal) GetHashAlgorithms;
		}
	}
	[CRepr]
	public struct ICertServerPolicy : IDispatch
	{
		public const new Guid IID = .(0xaa000922, 0xffbe, 0x11cf, 0x88, 0x00, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetContext(int32 Context) mut => VT.SetContext(ref this, Context);
		public HRESULT GetRequestProperty(BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) mut => VT.GetRequestProperty(ref this, strPropertyName, PropertyType, out pvarPropertyValue);
		public HRESULT GetRequestAttribute(BSTR strAttributeName, out BSTR pstrAttributeValue) mut => VT.GetRequestAttribute(ref this, strAttributeName, out pstrAttributeValue);
		public HRESULT GetCertificateProperty(BSTR strPropertyName, CERT_PROPERTY_TYPE PropertyType, out VARIANT pvarPropertyValue) mut => VT.GetCertificateProperty(ref this, strPropertyName, PropertyType, out pvarPropertyValue);
		public HRESULT SetCertificateProperty(BSTR strPropertyName, int32 PropertyType, in VARIANT pvarPropertyValue) mut => VT.SetCertificateProperty(ref this, strPropertyName, PropertyType, pvarPropertyValue);
		public HRESULT GetCertificateExtension(BSTR strExtensionName, CERT_PROPERTY_TYPE Type, out VARIANT pvarValue) mut => VT.GetCertificateExtension(ref this, strExtensionName, Type, out pvarValue);
		public HRESULT GetCertificateExtensionFlags(out int32 pExtFlags) mut => VT.GetCertificateExtensionFlags(ref this, out pExtFlags);
		public HRESULT SetCertificateExtension(BSTR strExtensionName, int32 Type, int32 ExtFlags, in VARIANT pvarValue) mut => VT.SetCertificateExtension(ref this, strExtensionName, Type, ExtFlags, pvarValue);
		public HRESULT EnumerateExtensionsSetup(int32 Flags) mut => VT.EnumerateExtensionsSetup(ref this, Flags);
		public HRESULT EnumerateExtensions(out BSTR pstrExtensionName) mut => VT.EnumerateExtensions(ref this, out pstrExtensionName);
		public HRESULT EnumerateExtensionsClose() mut => VT.EnumerateExtensionsClose(ref this);
		public HRESULT EnumerateAttributesSetup(int32 Flags) mut => VT.EnumerateAttributesSetup(ref this, Flags);
		public HRESULT EnumerateAttributes(out BSTR pstrAttributeName) mut => VT.EnumerateAttributes(ref this, out pstrAttributeName);
		public HRESULT EnumerateAttributesClose() mut => VT.EnumerateAttributesClose(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, int32 Context) SetContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) GetRequestProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strAttributeName, out BSTR pstrAttributeValue) GetRequestAttribute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strPropertyName, CERT_PROPERTY_TYPE PropertyType, out VARIANT pvarPropertyValue) GetCertificateProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strPropertyName, int32 PropertyType, in VARIANT pvarPropertyValue) SetCertificateProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strExtensionName, CERT_PROPERTY_TYPE Type, out VARIANT pvarValue) GetCertificateExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, out int32 pExtFlags) GetCertificateExtensionFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, BSTR strExtensionName, int32 Type, int32 ExtFlags, in VARIANT pvarValue) SetCertificateExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, int32 Flags) EnumerateExtensionsSetup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, out BSTR pstrExtensionName) EnumerateExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self) EnumerateExtensionsClose;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, int32 Flags) EnumerateAttributesSetup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self, out BSTR pstrAttributeName) EnumerateAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerPolicy self) EnumerateAttributesClose;
		}
	}
	[CRepr]
	public struct ICertServerExit : IDispatch
	{
		public const new Guid IID = .(0x4ba9eb90, 0x732c, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetContext(int32 Context) mut => VT.SetContext(ref this, Context);
		public HRESULT GetRequestProperty(BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) mut => VT.GetRequestProperty(ref this, strPropertyName, PropertyType, out pvarPropertyValue);
		public HRESULT GetRequestAttribute(BSTR strAttributeName, out BSTR pstrAttributeValue) mut => VT.GetRequestAttribute(ref this, strAttributeName, out pstrAttributeValue);
		public HRESULT GetCertificateProperty(BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) mut => VT.GetCertificateProperty(ref this, strPropertyName, PropertyType, out pvarPropertyValue);
		public HRESULT GetCertificateExtension(BSTR strExtensionName, int32 Type, out VARIANT pvarValue) mut => VT.GetCertificateExtension(ref this, strExtensionName, Type, out pvarValue);
		public HRESULT GetCertificateExtensionFlags(out int32 pExtFlags) mut => VT.GetCertificateExtensionFlags(ref this, out pExtFlags);
		public HRESULT EnumerateExtensionsSetup(int32 Flags) mut => VT.EnumerateExtensionsSetup(ref this, Flags);
		public HRESULT EnumerateExtensions(out BSTR pstrExtensionName) mut => VT.EnumerateExtensions(ref this, out pstrExtensionName);
		public HRESULT EnumerateExtensionsClose() mut => VT.EnumerateExtensionsClose(ref this);
		public HRESULT EnumerateAttributesSetup(int32 Flags) mut => VT.EnumerateAttributesSetup(ref this, Flags);
		public HRESULT EnumerateAttributes(out BSTR pstrAttributeName) mut => VT.EnumerateAttributes(ref this, out pstrAttributeName);
		public HRESULT EnumerateAttributesClose() mut => VT.EnumerateAttributesClose(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, int32 Context) SetContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) GetRequestProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, BSTR strAttributeName, out BSTR pstrAttributeValue) GetRequestAttribute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, BSTR strPropertyName, int32 PropertyType, out VARIANT pvarPropertyValue) GetCertificateProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, BSTR strExtensionName, int32 Type, out VARIANT pvarValue) GetCertificateExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, out int32 pExtFlags) GetCertificateExtensionFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, int32 Flags) EnumerateExtensionsSetup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, out BSTR pstrExtensionName) EnumerateExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self) EnumerateExtensionsClose;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, int32 Flags) EnumerateAttributesSetup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self, out BSTR pstrAttributeName) EnumerateAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertServerExit self) EnumerateAttributesClose;
		}
	}
	[CRepr]
	public struct ICertGetConfig : IDispatch
	{
		public const new Guid IID = .(0xc7ea09c0, 0xce17, 0x11d0, 0x88, 0x33, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetConfig(CERT_GET_CONFIG_FLAGS Flags, out BSTR pstrOut) mut => VT.GetConfig(ref this, Flags, out pstrOut);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertGetConfig self, CERT_GET_CONFIG_FLAGS Flags, out BSTR pstrOut) GetConfig;
		}
	}
	[CRepr]
	public struct ICertConfig : IDispatch
	{
		public const new Guid IID = .(0x372fce34, 0x4324, 0x11d0, 0x88, 0x10, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Reset(int32 Index, out int32 pCount) mut => VT.Reset(ref this, Index, out pCount);
		public HRESULT Next(out int32 pIndex) mut => VT.Next(ref this, out pIndex);
		public HRESULT GetField(BSTR strFieldName, out BSTR pstrOut) mut => VT.GetField(ref this, strFieldName, out pstrOut);
		public HRESULT GetConfig(int32 Flags, out BSTR pstrOut) mut => VT.GetConfig(ref this, Flags, out pstrOut);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertConfig self, int32 Index, out int32 pCount) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertConfig self, out int32 pIndex) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertConfig self, BSTR strFieldName, out BSTR pstrOut) GetField;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertConfig self, int32 Flags, out BSTR pstrOut) GetConfig;
		}
	}
	[CRepr]
	public struct ICertConfig2 : ICertConfig
	{
		public const new Guid IID = .(0x7a18edde, 0x7e78, 0x4163, 0x8d, 0xed, 0x78, 0xe2, 0xc9, 0xce, 0xe9, 0x24);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSharedFolder(BSTR strSharedFolder) mut => VT.SetSharedFolder(ref this, strSharedFolder);

		[CRepr]
		public struct VTable : ICertConfig.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertConfig2 self, BSTR strSharedFolder) SetSharedFolder;
		}
	}
	[CRepr]
	public struct ICertRequest : IDispatch
	{
		public const new Guid IID = .(0x014e4840, 0x5523, 0x11d0, 0x88, 0x12, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Submit(int32 Flags, BSTR strRequest, BSTR strAttributes, BSTR strConfig, out int32 pDisposition) mut => VT.Submit(ref this, Flags, strRequest, strAttributes, strConfig, out pDisposition);
		public HRESULT RetrievePending(int32 RequestId, BSTR strConfig, out int32 pDisposition) mut => VT.RetrievePending(ref this, RequestId, strConfig, out pDisposition);
		public HRESULT GetLastStatus(out int32 pStatus) mut => VT.GetLastStatus(ref this, out pStatus);
		public HRESULT GetRequestId(out int32 pRequestId) mut => VT.GetRequestId(ref this, out pRequestId);
		public HRESULT GetDispositionMessage(out BSTR pstrDispositionMessage) mut => VT.GetDispositionMessage(ref this, out pstrDispositionMessage);
		public HRESULT GetCACertificate(int32 fExchangeCertificate, BSTR strConfig, int32 Flags, out BSTR pstrCertificate) mut => VT.GetCACertificate(ref this, fExchangeCertificate, strConfig, Flags, out pstrCertificate);
		public HRESULT GetCertificate(int32 Flags, out BSTR pstrCertificate) mut => VT.GetCertificate(ref this, Flags, out pstrCertificate);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, int32 Flags, BSTR strRequest, BSTR strAttributes, BSTR strConfig, out int32 pDisposition) Submit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, int32 RequestId, BSTR strConfig, out int32 pDisposition) RetrievePending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, out int32 pStatus) GetLastStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, out int32 pRequestId) GetRequestId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, out BSTR pstrDispositionMessage) GetDispositionMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, int32 fExchangeCertificate, BSTR strConfig, int32 Flags, out BSTR pstrCertificate) GetCACertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest self, int32 Flags, out BSTR pstrCertificate) GetCertificate;
		}
	}
	[CRepr]
	public struct ICertRequest2 : ICertRequest
	{
		public const new Guid IID = .(0xa4772988, 0x4a85, 0x4fa9, 0x82, 0x4e, 0xb5, 0xcf, 0x5c, 0x16, 0x40, 0x5a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIssuedCertificate(BSTR strConfig, int32 RequestId, BSTR strSerialNumber, out CR_DISP pDisposition) mut => VT.GetIssuedCertificate(ref this, strConfig, RequestId, strSerialNumber, out pDisposition);
		public HRESULT GetErrorMessageText(int32 hrMessage, int32 Flags, out BSTR pstrErrorMessageText) mut => VT.GetErrorMessageText(ref this, hrMessage, Flags, out pstrErrorMessageText);
		public HRESULT GetCAProperty(BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, out VARIANT pvarPropertyValue) mut => VT.GetCAProperty(ref this, strConfig, PropId, PropIndex, PropType, Flags, out pvarPropertyValue);
		public HRESULT GetCAPropertyFlags(BSTR strConfig, int32 PropId, out int32 pPropFlags) mut => VT.GetCAPropertyFlags(ref this, strConfig, PropId, out pPropFlags);
		public HRESULT GetCAPropertyDisplayName(BSTR strConfig, int32 PropId, out BSTR pstrDisplayName) mut => VT.GetCAPropertyDisplayName(ref this, strConfig, PropId, out pstrDisplayName);
		public HRESULT GetFullResponseProperty(FULL_RESPONSE_PROPERTY_ID PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, CERT_REQUEST_OUT_TYPE Flags, out VARIANT pvarPropertyValue) mut => VT.GetFullResponseProperty(ref this, PropId, PropIndex, PropType, Flags, out pvarPropertyValue);

		[CRepr]
		public struct VTable : ICertRequest.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, BSTR strConfig, int32 RequestId, BSTR strSerialNumber, out CR_DISP pDisposition) GetIssuedCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, int32 hrMessage, int32 Flags, out BSTR pstrErrorMessageText) GetErrorMessageText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, BSTR strConfig, int32 PropId, int32 PropIndex, int32 PropType, int32 Flags, out VARIANT pvarPropertyValue) GetCAProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, BSTR strConfig, int32 PropId, out int32 pPropFlags) GetCAPropertyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, BSTR strConfig, int32 PropId, out BSTR pstrDisplayName) GetCAPropertyDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest2 self, FULL_RESPONSE_PROPERTY_ID PropId, int32 PropIndex, CERT_PROPERTY_TYPE PropType, CERT_REQUEST_OUT_TYPE Flags, out VARIANT pvarPropertyValue) GetFullResponseProperty;
		}
	}
	[CRepr]
	public struct ICertRequest3 : ICertRequest2
	{
		public const new Guid IID = .(0xafc8f92b, 0x33a2, 0x4861, 0xbf, 0x36, 0x29, 0x33, 0xb7, 0xcd, 0x67, 0xb3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCredential(int32 hWnd, X509EnrollmentAuthFlags AuthType, BSTR strCredential, BSTR strPassword) mut => VT.SetCredential(ref this, hWnd, AuthType, strCredential, strPassword);
		public HRESULT GetRequestIdString(out BSTR pstrRequestId) mut => VT.GetRequestIdString(ref this, out pstrRequestId);
		public HRESULT GetIssuedCertificate2(BSTR strConfig, BSTR strRequestId, BSTR strSerialNumber, out CR_DISP pDisposition) mut => VT.GetIssuedCertificate2(ref this, strConfig, strRequestId, strSerialNumber, out pDisposition);
		public HRESULT GetRefreshPolicy(out int16 pValue) mut => VT.GetRefreshPolicy(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertRequest2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest3 self, int32 hWnd, X509EnrollmentAuthFlags AuthType, BSTR strCredential, BSTR strPassword) SetCredential;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest3 self, out BSTR pstrRequestId) GetRequestIdString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest3 self, BSTR strConfig, BSTR strRequestId, BSTR strSerialNumber, out CR_DISP pDisposition) GetIssuedCertificate2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequest3 self, out int16 pValue) GetRefreshPolicy;
		}
	}
	[CRepr]
	public struct ICertManageModule : IDispatch
	{
		public const new Guid IID = .(0xe7d7ad42, 0xbd3d, 0x11d1, 0x9a, 0x4d, 0x00, 0xc0, 0x4f, 0xc2, 0x97, 0xeb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetProperty(BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, out VARIANT pvarProperty) mut => VT.GetProperty(ref this, strConfig, strStorageLocation, strPropertyName, Flags, out pvarProperty);
		public HRESULT SetProperty(BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, in VARIANT pvarProperty) mut => VT.SetProperty(ref this, strConfig, strStorageLocation, strPropertyName, Flags, pvarProperty);
		public HRESULT Configure(BSTR strConfig, BSTR strStorageLocation, int32 Flags) mut => VT.Configure(ref this, strConfig, strStorageLocation, Flags);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertManageModule self, BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, out VARIANT pvarProperty) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertManageModule self, BSTR strConfig, BSTR strStorageLocation, BSTR strPropertyName, int32 Flags, in VARIANT pvarProperty) SetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertManageModule self, BSTR strConfig, BSTR strStorageLocation, int32 Flags) Configure;
		}
	}
	[CRepr]
	public struct ICertPolicy : IDispatch
	{
		public const new Guid IID = .(0x38bb5a00, 0x7636, 0x11d0, 0xb4, 0x13, 0x00, 0xa0, 0xc9, 0x1b, 0xbf, 0x8c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strConfig) mut => VT.Initialize(ref this, strConfig);
		public HRESULT VerifyRequest(BSTR strConfig, int32 Context, int32 bNewRequest, int32 Flags, out int32 pDisposition) mut => VT.VerifyRequest(ref this, strConfig, Context, bNewRequest, Flags, out pDisposition);
		public HRESULT GetDescription(out BSTR pstrDescription) mut => VT.GetDescription(ref this, out pstrDescription);
		public HRESULT ShutDown() mut => VT.ShutDown(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPolicy self, BSTR strConfig) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPolicy self, BSTR strConfig, int32 Context, int32 bNewRequest, int32 Flags, out int32 pDisposition) VerifyRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPolicy self, out BSTR pstrDescription) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPolicy self) ShutDown;
		}
	}
	[CRepr]
	public struct ICertPolicy2 : ICertPolicy
	{
		public const new Guid IID = .(0x3db4910e, 0x8001, 0x4bf1, 0xaa, 0x1b, 0xf4, 0x3a, 0x80, 0x83, 0x17, 0xa0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetManageModule(out ICertManageModule* ppManageModule) mut => VT.GetManageModule(ref this, out ppManageModule);

		[CRepr]
		public struct VTable : ICertPolicy.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPolicy2 self, out ICertManageModule* ppManageModule) GetManageModule;
		}
	}
	[CRepr]
	public struct INDESPolicy : IUnknown
	{
		public const new Guid IID = .(0x13ca515d, 0x431d, 0x46cc, 0x8c, 0x2e, 0x1d, 0xa2, 0x69, 0xbb, 0xd6, 0x25);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize() mut => VT.Initialize(ref this);
		public HRESULT Uninitialize() mut => VT.Uninitialize(ref this);
		public HRESULT GenerateChallenge(PWSTR pwszTemplate, PWSTR pwszParams, out PWSTR ppwszResponse) mut => VT.GenerateChallenge(ref this, pwszTemplate, pwszParams, out ppwszResponse);
		public HRESULT VerifyRequest(out CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbSigningCertEncoded, PWSTR pwszTemplate, PWSTR pwszTransactionId, out BOOL pfVerified) mut => VT.VerifyRequest(ref this, out pctbRequest, out pctbSigningCertEncoded, pwszTemplate, pwszTransactionId, out pfVerified);
		public HRESULT Notify(PWSTR pwszChallenge, PWSTR pwszTransactionId, X509SCEPDisposition disposition, int32 lastHResult, out CERTTRANSBLOB pctbIssuedCertEncoded) mut => VT.Notify(ref this, pwszChallenge, pwszTransactionId, disposition, lastHResult, out pctbIssuedCertEncoded);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INDESPolicy self) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INDESPolicy self) Uninitialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INDESPolicy self, PWSTR pwszTemplate, PWSTR pwszParams, out PWSTR ppwszResponse) GenerateChallenge;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INDESPolicy self, out CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbSigningCertEncoded, PWSTR pwszTemplate, PWSTR pwszTransactionId, out BOOL pfVerified) VerifyRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INDESPolicy self, PWSTR pwszChallenge, PWSTR pwszTransactionId, X509SCEPDisposition disposition, int32 lastHResult, out CERTTRANSBLOB pctbIssuedCertEncoded) Notify;
		}
	}
	[CRepr]
	public struct IObjectId : IDispatch
	{
		public const new Guid IID = .(0x728ab300, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromName(CERTENROLL_OBJECTID Name) mut => VT.InitializeFromName(ref this, Name);
		public HRESULT InitializeFromValue(BSTR strValue) mut => VT.InitializeFromValue(ref this, strValue);
		public HRESULT InitializeFromAlgorithmName(ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, AlgorithmFlags AlgFlags, BSTR strAlgorithmName) mut => VT.InitializeFromAlgorithmName(ref this, GroupId, KeyFlags, AlgFlags, strAlgorithmName);
		public HRESULT get_Name(out CERTENROLL_OBJECTID pValue) mut => VT.get_Name(ref this, out pValue);
		public HRESULT get_FriendlyName(out BSTR pValue) mut => VT.get_FriendlyName(ref this, out pValue);
		public HRESULT put_FriendlyName(BSTR Value) mut => VT.put_FriendlyName(ref this, Value);
		public HRESULT get_Value(out BSTR pValue) mut => VT.get_Value(ref this, out pValue);
		public HRESULT GetAlgorithmName(ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, out BSTR pstrAlgorithmName) mut => VT.GetAlgorithmName(ref this, GroupId, KeyFlags, out pstrAlgorithmName);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, CERTENROLL_OBJECTID Name) InitializeFromName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, BSTR strValue) InitializeFromValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, AlgorithmFlags AlgFlags, BSTR strAlgorithmName) InitializeFromAlgorithmName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, out CERTENROLL_OBJECTID pValue) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, out BSTR pValue) get_FriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, BSTR Value) put_FriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, out BSTR pValue) get_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectId self, ObjectIdGroupId GroupId, ObjectIdPublicKeyFlags KeyFlags, out BSTR pstrAlgorithmName) GetAlgorithmName;
		}
	}
	[CRepr]
	public struct IObjectIds : IDispatch
	{
		public const new Guid IID = .(0x728ab301, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IObjectId* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IObjectId* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT AddRange(IObjectIds* pValue) mut => VT.AddRange(ref this, pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, int32 Index, out IObjectId* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, IObjectId* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectIds self, IObjectIds* pValue) AddRange;
		}
	}
	[CRepr]
	public struct IBinaryConverter : IDispatch
	{
		public const new Guid IID = .(0x728ab302, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StringToString(BSTR strEncodedIn, EncodingType EncodingIn, EncodingType Encoding, out BSTR pstrEncoded) mut => VT.StringToString(ref this, strEncodedIn, EncodingIn, Encoding, out pstrEncoded);
		public HRESULT VariantByteArrayToString(ref VARIANT pvarByteArray, EncodingType Encoding, out BSTR pstrEncoded) mut => VT.VariantByteArrayToString(ref this, ref pvarByteArray, Encoding, out pstrEncoded);
		public HRESULT StringToVariantByteArray(BSTR strEncoded, EncodingType Encoding, out VARIANT pvarByteArray) mut => VT.StringToVariantByteArray(ref this, strEncoded, Encoding, out pvarByteArray);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinaryConverter self, BSTR strEncodedIn, EncodingType EncodingIn, EncodingType Encoding, out BSTR pstrEncoded) StringToString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinaryConverter self, ref VARIANT pvarByteArray, EncodingType Encoding, out BSTR pstrEncoded) VariantByteArrayToString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinaryConverter self, BSTR strEncoded, EncodingType Encoding, out VARIANT pvarByteArray) StringToVariantByteArray;
		}
	}
	[CRepr]
	public struct IBinaryConverter2 : IBinaryConverter
	{
		public const new Guid IID = .(0x8d7928b4, 0x4e17, 0x428d, 0x9a, 0x17, 0x72, 0x8d, 0xf0, 0x0d, 0x1b, 0x2b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StringArrayToVariantArray(ref VARIANT pvarStringArray, out VARIANT pvarVariantArray) mut => VT.StringArrayToVariantArray(ref this, ref pvarStringArray, out pvarVariantArray);
		public HRESULT VariantArrayToStringArray(ref VARIANT pvarVariantArray, out VARIANT pvarStringArray) mut => VT.VariantArrayToStringArray(ref this, ref pvarVariantArray, out pvarStringArray);

		[CRepr]
		public struct VTable : IBinaryConverter.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinaryConverter2 self, ref VARIANT pvarStringArray, out VARIANT pvarVariantArray) StringArrayToVariantArray;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBinaryConverter2 self, ref VARIANT pvarVariantArray, out VARIANT pvarStringArray) VariantArrayToStringArray;
		}
	}
	[CRepr]
	public struct IX500DistinguishedName : IDispatch
	{
		public const new Guid IID = .(0x728ab303, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strEncodedName, EncodingType Encoding, X500NameFlags NameFlags) mut => VT.Decode(ref this, strEncodedName, Encoding, NameFlags);
		public HRESULT Encode(BSTR strName, X500NameFlags NameFlags) mut => VT.Encode(ref this, strName, NameFlags);
		public HRESULT get_Name(out BSTR pValue) mut => VT.get_Name(ref this, out pValue);
		public HRESULT get_EncodedName(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncodedName(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX500DistinguishedName self, BSTR strEncodedName, EncodingType Encoding, X500NameFlags NameFlags) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX500DistinguishedName self, BSTR strName, X500NameFlags NameFlags) Encode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX500DistinguishedName self, out BSTR pValue) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX500DistinguishedName self, EncodingType Encoding, out BSTR pValue) get_EncodedName;
		}
	}
	[CRepr]
	public struct IX509EnrollmentStatus : IDispatch
	{
		public const new Guid IID = .(0x728ab304, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AppendText(BSTR strText) mut => VT.AppendText(ref this, strText);
		public HRESULT get_Text(out BSTR pValue) mut => VT.get_Text(ref this, out pValue);
		public HRESULT put_Text(BSTR Value) mut => VT.put_Text(ref this, Value);
		public HRESULT get_Selected(out EnrollmentSelectionStatus pValue) mut => VT.get_Selected(ref this, out pValue);
		public HRESULT put_Selected(EnrollmentSelectionStatus Value) mut => VT.put_Selected(ref this, Value);
		public HRESULT get_Display(out EnrollmentDisplayStatus pValue) mut => VT.get_Display(ref this, out pValue);
		public HRESULT put_Display(EnrollmentDisplayStatus Value) mut => VT.put_Display(ref this, Value);
		public HRESULT get_Status(out EnrollmentEnrollStatus pValue) mut => VT.get_Status(ref this, out pValue);
		public HRESULT put_Status(EnrollmentEnrollStatus Value) mut => VT.put_Status(ref this, Value);
		public HRESULT get_Error(out HRESULT pValue) mut => VT.get_Error(ref this, out pValue);
		public HRESULT put_Error(HRESULT Value) mut => VT.put_Error(ref this, Value);
		public HRESULT get_ErrorText(out BSTR pValue) mut => VT.get_ErrorText(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, BSTR strText) AppendText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out BSTR pValue) get_Text;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, BSTR Value) put_Text;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out EnrollmentSelectionStatus pValue) get_Selected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, EnrollmentSelectionStatus Value) put_Selected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out EnrollmentDisplayStatus pValue) get_Display;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, EnrollmentDisplayStatus Value) put_Display;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out EnrollmentEnrollStatus pValue) get_Status;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, EnrollmentEnrollStatus Value) put_Status;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out HRESULT pValue) get_Error;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, HRESULT Value) put_Error;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentStatus self, out BSTR pValue) get_ErrorText;
		}
	}
	[CRepr]
	public struct ICspAlgorithm : IDispatch
	{
		public const new Guid IID = .(0x728ab305, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAlgorithmOid(int32 Length, AlgorithmFlags AlgFlags, out IObjectId* ppValue) mut => VT.GetAlgorithmOid(ref this, Length, AlgFlags, out ppValue);
		public HRESULT get_DefaultLength(out int32 pValue) mut => VT.get_DefaultLength(ref this, out pValue);
		public HRESULT get_IncrementLength(out int32 pValue) mut => VT.get_IncrementLength(ref this, out pValue);
		public HRESULT get_LongName(out BSTR pValue) mut => VT.get_LongName(ref this, out pValue);
		public HRESULT get_Valid(out int16 pValue) mut => VT.get_Valid(ref this, out pValue);
		public HRESULT get_MaxLength(out int32 pValue) mut => VT.get_MaxLength(ref this, out pValue);
		public HRESULT get_MinLength(out int32 pValue) mut => VT.get_MinLength(ref this, out pValue);
		public HRESULT get_Name(out BSTR pValue) mut => VT.get_Name(ref this, out pValue);
		public HRESULT get_Type(out AlgorithmType pValue) mut => VT.get_Type(ref this, out pValue);
		public HRESULT get_Operations(out AlgorithmOperationFlags pValue) mut => VT.get_Operations(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, int32 Length, AlgorithmFlags AlgFlags, out IObjectId* ppValue) GetAlgorithmOid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out int32 pValue) get_DefaultLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out int32 pValue) get_IncrementLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out BSTR pValue) get_LongName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out int16 pValue) get_Valid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out int32 pValue) get_MaxLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out int32 pValue) get_MinLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out BSTR pValue) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out AlgorithmType pValue) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithm self, out AlgorithmOperationFlags pValue) get_Operations;
		}
	}
	[CRepr]
	public struct ICspAlgorithms : IDispatch
	{
		public const new Guid IID = .(0x728ab306, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICspAlgorithm* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICspAlgorithm* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_ItemByName(BSTR strName, out ICspAlgorithm* ppValue) mut => VT.get_ItemByName(ref this, strName, out ppValue);
		public HRESULT get_IndexByObjectId(IObjectId* pObjectId, out int32 pIndex) mut => VT.get_IndexByObjectId(ref this, pObjectId, out pIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, int32 Index, out ICspAlgorithm* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, ICspAlgorithm* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, BSTR strName, out ICspAlgorithm* ppValue) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspAlgorithms self, IObjectId* pObjectId, out int32 pIndex) get_IndexByObjectId;
		}
	}
	[CRepr]
	public struct ICspInformation : IDispatch
	{
		public const new Guid IID = .(0x728ab307, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromName(BSTR strName) mut => VT.InitializeFromName(ref this, strName);
		public HRESULT InitializeFromType(X509ProviderType Type, IObjectId* pAlgorithm, int16 MachineContext) mut => VT.InitializeFromType(ref this, Type, pAlgorithm, MachineContext);
		public HRESULT get_CspAlgorithms(out ICspAlgorithms* ppValue) mut => VT.get_CspAlgorithms(ref this, out ppValue);
		public HRESULT get_HasHardwareRandomNumberGenerator(out int16 pValue) mut => VT.get_HasHardwareRandomNumberGenerator(ref this, out pValue);
		public HRESULT get_IsHardwareDevice(out int16 pValue) mut => VT.get_IsHardwareDevice(ref this, out pValue);
		public HRESULT get_IsRemovable(out int16 pValue) mut => VT.get_IsRemovable(ref this, out pValue);
		public HRESULT get_IsSoftwareDevice(out int16 pValue) mut => VT.get_IsSoftwareDevice(ref this, out pValue);
		public HRESULT get_Valid(out int16 pValue) mut => VT.get_Valid(ref this, out pValue);
		public HRESULT get_MaxKeyContainerNameLength(out int32 pValue) mut => VT.get_MaxKeyContainerNameLength(ref this, out pValue);
		public HRESULT get_Name(out BSTR pValue) mut => VT.get_Name(ref this, out pValue);
		public HRESULT get_Type(out X509ProviderType pValue) mut => VT.get_Type(ref this, out pValue);
		public HRESULT get_Version(out int32 pValue) mut => VT.get_Version(ref this, out pValue);
		public HRESULT get_KeySpec(out X509KeySpec pValue) mut => VT.get_KeySpec(ref this, out pValue);
		public HRESULT get_IsSmartCard(out int16 pValue) mut => VT.get_IsSmartCard(ref this, out pValue);
		public HRESULT GetDefaultSecurityDescriptor(int16 MachineContext, out BSTR pValue) mut => VT.GetDefaultSecurityDescriptor(ref this, MachineContext, out pValue);
		public HRESULT get_LegacyCsp(out int16 pValue) mut => VT.get_LegacyCsp(ref this, out pValue);
		public HRESULT GetCspStatusFromOperations(IObjectId* pAlgorithm, AlgorithmOperationFlags Operations, out ICspStatus* ppValue) mut => VT.GetCspStatusFromOperations(ref this, pAlgorithm, Operations, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, BSTR strName) InitializeFromName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, X509ProviderType Type, IObjectId* pAlgorithm, int16 MachineContext) InitializeFromType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out ICspAlgorithms* ppValue) get_CspAlgorithms;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_HasHardwareRandomNumberGenerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_IsHardwareDevice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_IsRemovable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_IsSoftwareDevice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_Valid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int32 pValue) get_MaxKeyContainerNameLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out BSTR pValue) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out X509ProviderType pValue) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int32 pValue) get_Version;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out X509KeySpec pValue) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_IsSmartCard;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, int16 MachineContext, out BSTR pValue) GetDefaultSecurityDescriptor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, out int16 pValue) get_LegacyCsp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformation self, IObjectId* pAlgorithm, AlgorithmOperationFlags Operations, out ICspStatus* ppValue) GetCspStatusFromOperations;
		}
	}
	[CRepr]
	public struct ICspInformations : IDispatch
	{
		public const new Guid IID = .(0x728ab308, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICspInformation* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICspInformation* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT AddAvailableCsps() mut => VT.AddAvailableCsps(ref this);
		public HRESULT get_ItemByName(BSTR strName, out ICspInformation* ppCspInformation) mut => VT.get_ItemByName(ref this, strName, out ppCspInformation);
		public HRESULT GetCspStatusFromProviderName(BSTR strProviderName, X509KeySpec LegacyKeySpec, out ICspStatus* ppValue) mut => VT.GetCspStatusFromProviderName(ref this, strProviderName, LegacyKeySpec, out ppValue);
		public HRESULT GetCspStatusesFromOperations(AlgorithmOperationFlags Operations, ICspInformation* pCspInformation, out ICspStatuses* ppValue) mut => VT.GetCspStatusesFromOperations(ref this, Operations, pCspInformation, out ppValue);
		public HRESULT GetEncryptionCspAlgorithms(ICspInformation* pCspInformation, out ICspAlgorithms* ppValue) mut => VT.GetEncryptionCspAlgorithms(ref this, pCspInformation, out ppValue);
		public HRESULT GetHashAlgorithms(ICspInformation* pCspInformation, out IObjectIds* ppValue) mut => VT.GetHashAlgorithms(ref this, pCspInformation, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, int32 Index, out ICspInformation* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, ICspInformation* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self) AddAvailableCsps;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, BSTR strName, out ICspInformation* ppCspInformation) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, BSTR strProviderName, X509KeySpec LegacyKeySpec, out ICspStatus* ppValue) GetCspStatusFromProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, AlgorithmOperationFlags Operations, ICspInformation* pCspInformation, out ICspStatuses* ppValue) GetCspStatusesFromOperations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, ICspInformation* pCspInformation, out ICspAlgorithms* ppValue) GetEncryptionCspAlgorithms;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspInformations self, ICspInformation* pCspInformation, out IObjectIds* ppValue) GetHashAlgorithms;
		}
	}
	[CRepr]
	public struct ICspStatus : IDispatch
	{
		public const new Guid IID = .(0x728ab309, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ICspInformation* pCsp, ICspAlgorithm* pAlgorithm) mut => VT.Initialize(ref this, pCsp, pAlgorithm);
		public HRESULT get_Ordinal(out int32 pValue) mut => VT.get_Ordinal(ref this, out pValue);
		public HRESULT put_Ordinal(int32 Value) mut => VT.put_Ordinal(ref this, Value);
		public HRESULT get_CspAlgorithm(out ICspAlgorithm* ppValue) mut => VT.get_CspAlgorithm(ref this, out ppValue);
		public HRESULT get_CspInformation(out ICspInformation* ppValue) mut => VT.get_CspInformation(ref this, out ppValue);
		public HRESULT get_EnrollmentStatus(out IX509EnrollmentStatus* ppValue) mut => VT.get_EnrollmentStatus(ref this, out ppValue);
		public HRESULT get_DisplayName(out BSTR pValue) mut => VT.get_DisplayName(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, ICspInformation* pCsp, ICspAlgorithm* pAlgorithm) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, out int32 pValue) get_Ordinal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, int32 Value) put_Ordinal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, out ICspAlgorithm* ppValue) get_CspAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, out ICspInformation* ppValue) get_CspInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, out IX509EnrollmentStatus* ppValue) get_EnrollmentStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatus self, out BSTR pValue) get_DisplayName;
		}
	}
	[CRepr]
	public struct ICspStatuses : IDispatch
	{
		public const new Guid IID = .(0x728ab30a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICspStatus* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICspStatus* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_ItemByName(BSTR strCspName, BSTR strAlgorithmName, out ICspStatus* ppValue) mut => VT.get_ItemByName(ref this, strCspName, strAlgorithmName, out ppValue);
		public HRESULT get_ItemByOrdinal(int32 Ordinal, out ICspStatus* ppValue) mut => VT.get_ItemByOrdinal(ref this, Ordinal, out ppValue);
		public HRESULT get_ItemByOperations(BSTR strCspName, BSTR strAlgorithmName, AlgorithmOperationFlags Operations, out ICspStatus* ppValue) mut => VT.get_ItemByOperations(ref this, strCspName, strAlgorithmName, Operations, out ppValue);
		public HRESULT get_ItemByProvider(ICspStatus* pCspStatus, out ICspStatus* ppValue) mut => VT.get_ItemByProvider(ref this, pCspStatus, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, int32 Index, out ICspStatus* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, ICspStatus* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, BSTR strCspName, BSTR strAlgorithmName, out ICspStatus* ppValue) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, int32 Ordinal, out ICspStatus* ppValue) get_ItemByOrdinal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, BSTR strCspName, BSTR strAlgorithmName, AlgorithmOperationFlags Operations, out ICspStatus* ppValue) get_ItemByOperations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICspStatuses self, ICspStatus* pCspStatus, out ICspStatus* ppValue) get_ItemByProvider;
		}
	}
	[CRepr]
	public struct IX509PublicKey : IDispatch
	{
		public const new Guid IID = .(0x728ab30b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IObjectId* pObjectId, BSTR strEncodedKey, BSTR strEncodedParameters, EncodingType Encoding) mut => VT.Initialize(ref this, pObjectId, strEncodedKey, strEncodedParameters, Encoding);
		public HRESULT InitializeFromEncodedPublicKeyInfo(BSTR strEncodedPublicKeyInfo, EncodingType Encoding) mut => VT.InitializeFromEncodedPublicKeyInfo(ref this, strEncodedPublicKeyInfo, Encoding);
		public HRESULT get_Algorithm(out IObjectId* ppValue) mut => VT.get_Algorithm(ref this, out ppValue);
		public HRESULT get_Length(out int32 pValue) mut => VT.get_Length(ref this, out pValue);
		public HRESULT get_EncodedKey(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncodedKey(ref this, Encoding, out pValue);
		public HRESULT get_EncodedParameters(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncodedParameters(ref this, Encoding, out pValue);
		public HRESULT ComputeKeyIdentifier(KeyIdentifierHashAlgorithm Algorithm, EncodingType Encoding, out BSTR pValue) mut => VT.ComputeKeyIdentifier(ref this, Algorithm, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, IObjectId* pObjectId, BSTR strEncodedKey, BSTR strEncodedParameters, EncodingType Encoding) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, BSTR strEncodedPublicKeyInfo, EncodingType Encoding) InitializeFromEncodedPublicKeyInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, out IObjectId* ppValue) get_Algorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, out int32 pValue) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, EncodingType Encoding, out BSTR pValue) get_EncodedKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, EncodingType Encoding, out BSTR pValue) get_EncodedParameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PublicKey self, KeyIdentifierHashAlgorithm Algorithm, EncodingType Encoding, out BSTR pValue) ComputeKeyIdentifier;
		}
	}
	[CRepr]
	public struct IX509PrivateKey : IDispatch
	{
		public const new Guid IID = .(0x728ab30c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open() mut => VT.Open(ref this);
		public HRESULT Create() mut => VT.Create(ref this);
		public HRESULT Close() mut => VT.Close(ref this);
		public HRESULT Delete() mut => VT.Delete(ref this);
		public HRESULT Verify(X509PrivateKeyVerify VerifyType) mut => VT.Verify(ref this, VerifyType);
		public HRESULT Import(BSTR strExportType, BSTR strEncodedKey, EncodingType Encoding) mut => VT.Import(ref this, strExportType, strEncodedKey, Encoding);
		public HRESULT Export(BSTR strExportType, EncodingType Encoding, out BSTR pstrEncodedKey) mut => VT.Export(ref this, strExportType, Encoding, out pstrEncodedKey);
		public HRESULT ExportPublicKey(out IX509PublicKey* ppPublicKey) mut => VT.ExportPublicKey(ref this, out ppPublicKey);
		public HRESULT get_ContainerName(out BSTR pValue) mut => VT.get_ContainerName(ref this, out pValue);
		public HRESULT put_ContainerName(BSTR Value) mut => VT.put_ContainerName(ref this, Value);
		public HRESULT get_ContainerNamePrefix(out BSTR pValue) mut => VT.get_ContainerNamePrefix(ref this, out pValue);
		public HRESULT put_ContainerNamePrefix(BSTR Value) mut => VT.put_ContainerNamePrefix(ref this, Value);
		public HRESULT get_ReaderName(out BSTR pValue) mut => VT.get_ReaderName(ref this, out pValue);
		public HRESULT put_ReaderName(BSTR Value) mut => VT.put_ReaderName(ref this, Value);
		public HRESULT get_CspInformations(out ICspInformations* ppValue) mut => VT.get_CspInformations(ref this, out ppValue);
		public HRESULT put_CspInformations(ICspInformations* pValue) mut => VT.put_CspInformations(ref this, pValue);
		public HRESULT get_CspStatus(out ICspStatus* ppValue) mut => VT.get_CspStatus(ref this, out ppValue);
		public HRESULT put_CspStatus(ICspStatus* pValue) mut => VT.put_CspStatus(ref this, pValue);
		public HRESULT get_ProviderName(out BSTR pValue) mut => VT.get_ProviderName(ref this, out pValue);
		public HRESULT put_ProviderName(BSTR Value) mut => VT.put_ProviderName(ref this, Value);
		public HRESULT get_ProviderType(out X509ProviderType pValue) mut => VT.get_ProviderType(ref this, out pValue);
		public HRESULT put_ProviderType(X509ProviderType Value) mut => VT.put_ProviderType(ref this, Value);
		public HRESULT get_LegacyCsp(out int16 pValue) mut => VT.get_LegacyCsp(ref this, out pValue);
		public HRESULT put_LegacyCsp(int16 Value) mut => VT.put_LegacyCsp(ref this, Value);
		public HRESULT get_Algorithm(out IObjectId* ppValue) mut => VT.get_Algorithm(ref this, out ppValue);
		public HRESULT put_Algorithm(IObjectId* pValue) mut => VT.put_Algorithm(ref this, pValue);
		public HRESULT get_KeySpec(out X509KeySpec pValue) mut => VT.get_KeySpec(ref this, out pValue);
		public HRESULT put_KeySpec(X509KeySpec Value) mut => VT.put_KeySpec(ref this, Value);
		public HRESULT get_Length(out int32 pValue) mut => VT.get_Length(ref this, out pValue);
		public HRESULT put_Length(int32 Value) mut => VT.put_Length(ref this, Value);
		public HRESULT get_ExportPolicy(out X509PrivateKeyExportFlags pValue) mut => VT.get_ExportPolicy(ref this, out pValue);
		public HRESULT put_ExportPolicy(X509PrivateKeyExportFlags Value) mut => VT.put_ExportPolicy(ref this, Value);
		public HRESULT get_KeyUsage(out X509PrivateKeyUsageFlags pValue) mut => VT.get_KeyUsage(ref this, out pValue);
		public HRESULT put_KeyUsage(X509PrivateKeyUsageFlags Value) mut => VT.put_KeyUsage(ref this, Value);
		public HRESULT get_KeyProtection(out X509PrivateKeyProtection pValue) mut => VT.get_KeyProtection(ref this, out pValue);
		public HRESULT put_KeyProtection(X509PrivateKeyProtection Value) mut => VT.put_KeyProtection(ref this, Value);
		public HRESULT get_MachineContext(out int16 pValue) mut => VT.get_MachineContext(ref this, out pValue);
		public HRESULT put_MachineContext(int16 Value) mut => VT.put_MachineContext(ref this, Value);
		public HRESULT get_SecurityDescriptor(out BSTR pValue) mut => VT.get_SecurityDescriptor(ref this, out pValue);
		public HRESULT put_SecurityDescriptor(BSTR Value) mut => VT.put_SecurityDescriptor(ref this, Value);
		public HRESULT get_Certificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_Certificate(ref this, Encoding, out pValue);
		public HRESULT put_Certificate(EncodingType Encoding, BSTR Value) mut => VT.put_Certificate(ref this, Encoding, Value);
		public HRESULT get_UniqueContainerName(out BSTR pValue) mut => VT.get_UniqueContainerName(ref this, out pValue);
		public HRESULT get_Opened(out int16 pValue) mut => VT.get_Opened(ref this, out pValue);
		public HRESULT get_DefaultContainer(out int16 pValue) mut => VT.get_DefaultContainer(ref this, out pValue);
		public HRESULT get_Existing(out int16 pValue) mut => VT.get_Existing(ref this, out pValue);
		public HRESULT put_Existing(int16 Value) mut => VT.put_Existing(ref this, Value);
		public HRESULT get_Silent(out int16 pValue) mut => VT.get_Silent(ref this, out pValue);
		public HRESULT put_Silent(int16 Value) mut => VT.put_Silent(ref this, Value);
		public HRESULT get_ParentWindow(out int32 pValue) mut => VT.get_ParentWindow(ref this, out pValue);
		public HRESULT put_ParentWindow(int32 Value) mut => VT.put_ParentWindow(ref this, Value);
		public HRESULT get_UIContextMessage(out BSTR pValue) mut => VT.get_UIContextMessage(ref this, out pValue);
		public HRESULT put_UIContextMessage(BSTR Value) mut => VT.put_UIContextMessage(ref this, Value);
		public HRESULT put_Pin(BSTR Value) mut => VT.put_Pin(ref this, Value);
		public HRESULT get_FriendlyName(out BSTR pValue) mut => VT.get_FriendlyName(ref this, out pValue);
		public HRESULT put_FriendlyName(BSTR Value) mut => VT.put_FriendlyName(ref this, Value);
		public HRESULT get_Description(out BSTR pValue) mut => VT.get_Description(ref this, out pValue);
		public HRESULT put_Description(BSTR Value) mut => VT.put_Description(ref this, Value);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self) Create;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self) Close;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509PrivateKeyVerify VerifyType) Verify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR strExportType, BSTR strEncodedKey, EncodingType Encoding) Import;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR strExportType, EncodingType Encoding, out BSTR pstrEncodedKey) Export;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out IX509PublicKey* ppPublicKey) ExportPublicKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_ContainerNamePrefix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_ContainerNamePrefix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_ReaderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_ReaderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out ICspInformations* ppValue) get_CspInformations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, ICspInformations* pValue) put_CspInformations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out ICspStatus* ppValue) get_CspStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, ICspStatus* pValue) put_CspStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out X509ProviderType pValue) get_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509ProviderType Value) put_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_LegacyCsp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int16 Value) put_LegacyCsp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out IObjectId* ppValue) get_Algorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, IObjectId* pValue) put_Algorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out X509KeySpec pValue) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509KeySpec Value) put_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int32 pValue) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int32 Value) put_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out X509PrivateKeyExportFlags pValue) get_ExportPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509PrivateKeyExportFlags Value) put_ExportPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out X509PrivateKeyUsageFlags pValue) get_KeyUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509PrivateKeyUsageFlags Value) put_KeyUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out X509PrivateKeyProtection pValue) get_KeyProtection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, X509PrivateKeyProtection Value) put_KeyProtection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_MachineContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int16 Value) put_MachineContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_SecurityDescriptor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_SecurityDescriptor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, EncodingType Encoding, out BSTR pValue) get_Certificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, EncodingType Encoding, BSTR Value) put_Certificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_UniqueContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_Opened;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_DefaultContainer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_Existing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int16 Value) put_Existing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int16 pValue) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int16 Value) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out int32 pValue) get_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, int32 Value) put_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_Pin;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_FriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_FriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, out BSTR pValue) get_Description;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey self, BSTR Value) put_Description;
		}
	}
	[CRepr]
	public struct IX509PrivateKey2 : IX509PrivateKey
	{
		public const new Guid IID = .(0x728ab362, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_HardwareKeyUsage(out X509HardwareKeyUsageFlags pValue) mut => VT.get_HardwareKeyUsage(ref this, out pValue);
		public HRESULT put_HardwareKeyUsage(X509HardwareKeyUsageFlags Value) mut => VT.put_HardwareKeyUsage(ref this, Value);
		public HRESULT get_AlternateStorageLocation(out BSTR pValue) mut => VT.get_AlternateStorageLocation(ref this, out pValue);
		public HRESULT put_AlternateStorageLocation(BSTR Value) mut => VT.put_AlternateStorageLocation(ref this, Value);
		public HRESULT get_AlgorithmName(out BSTR pValue) mut => VT.get_AlgorithmName(ref this, out pValue);
		public HRESULT put_AlgorithmName(BSTR Value) mut => VT.put_AlgorithmName(ref this, Value);
		public HRESULT get_AlgorithmParameters(EncodingType Encoding, out BSTR pValue) mut => VT.get_AlgorithmParameters(ref this, Encoding, out pValue);
		public HRESULT put_AlgorithmParameters(EncodingType Encoding, BSTR Value) mut => VT.put_AlgorithmParameters(ref this, Encoding, Value);
		public HRESULT get_ParametersExportType(out X509KeyParametersExportType pValue) mut => VT.get_ParametersExportType(ref this, out pValue);
		public HRESULT put_ParametersExportType(X509KeyParametersExportType Value) mut => VT.put_ParametersExportType(ref this, Value);

		[CRepr]
		public struct VTable : IX509PrivateKey.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, out X509HardwareKeyUsageFlags pValue) get_HardwareKeyUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, X509HardwareKeyUsageFlags Value) put_HardwareKeyUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, out BSTR pValue) get_AlternateStorageLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, BSTR Value) put_AlternateStorageLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, out BSTR pValue) get_AlgorithmName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, BSTR Value) put_AlgorithmName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, EncodingType Encoding, out BSTR pValue) get_AlgorithmParameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, EncodingType Encoding, BSTR Value) put_AlgorithmParameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, out X509KeyParametersExportType pValue) get_ParametersExportType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PrivateKey2 self, X509KeyParametersExportType Value) put_ParametersExportType;
		}
	}
	[CRepr]
	public struct IX509EndorsementKey : IDispatch
	{
		public const new Guid IID = .(0xb11cd855, 0xf4c4, 0x4fc6, 0xb7, 0x10, 0x44, 0x22, 0x23, 0x7f, 0x09, 0xe9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ProviderName(out BSTR pValue) mut => VT.get_ProviderName(ref this, out pValue);
		public HRESULT put_ProviderName(BSTR Value) mut => VT.put_ProviderName(ref this, Value);
		public HRESULT get_Length(out int32 pValue) mut => VT.get_Length(ref this, out pValue);
		public HRESULT get_Opened(out int16 pValue) mut => VT.get_Opened(ref this, out pValue);
		public HRESULT AddCertificate(EncodingType Encoding, BSTR strCertificate) mut => VT.AddCertificate(ref this, Encoding, strCertificate);
		public HRESULT RemoveCertificate(EncodingType Encoding, BSTR strCertificate) mut => VT.RemoveCertificate(ref this, Encoding, strCertificate);
		public HRESULT GetCertificateByIndex(int16 ManufacturerOnly, int32 dwIndex, EncodingType Encoding, out BSTR pValue) mut => VT.GetCertificateByIndex(ref this, ManufacturerOnly, dwIndex, Encoding, out pValue);
		public HRESULT GetCertificateCount(int16 ManufacturerOnly, out int32 pCount) mut => VT.GetCertificateCount(ref this, ManufacturerOnly, out pCount);
		public HRESULT ExportPublicKey(out IX509PublicKey* ppPublicKey) mut => VT.ExportPublicKey(ref this, out ppPublicKey);
		public HRESULT Open() mut => VT.Open(ref this);
		public HRESULT Close() mut => VT.Close(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, out BSTR pValue) get_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, BSTR Value) put_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, out int32 pValue) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, out int16 pValue) get_Opened;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, EncodingType Encoding, BSTR strCertificate) AddCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, EncodingType Encoding, BSTR strCertificate) RemoveCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, int16 ManufacturerOnly, int32 dwIndex, EncodingType Encoding, out BSTR pValue) GetCertificateByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, int16 ManufacturerOnly, out int32 pCount) GetCertificateCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self, out IX509PublicKey* ppPublicKey) ExportPublicKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EndorsementKey self) Close;
		}
	}
	[CRepr]
	public struct IX509Extension : IDispatch
	{
		public const new Guid IID = .(0x728ab30d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) mut => VT.Initialize(ref this, pObjectId, Encoding, strEncodedData);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);
		public HRESULT get_Critical(out int16 pValue) mut => VT.get_Critical(ref this, out pValue);
		public HRESULT put_Critical(int16 Value) mut => VT.put_Critical(ref this, Value);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extension self, IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extension self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extension self, EncodingType Encoding, out BSTR pValue) get_RawData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extension self, out int16 pValue) get_Critical;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extension self, int16 Value) put_Critical;
		}
	}
	[CRepr]
	public struct IX509Extensions : IDispatch
	{
		public const new Guid IID = .(0x728ab30e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509Extension* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509Extension* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_IndexByObjectId(IObjectId* pObjectId, out int32 pIndex) mut => VT.get_IndexByObjectId(ref this, pObjectId, out pIndex);
		public HRESULT AddRange(IX509Extensions* pValue) mut => VT.AddRange(ref this, pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, int32 Index, out IX509Extension* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, IX509Extension* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, IObjectId* pObjectId, out int32 pIndex) get_IndexByObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Extensions self, IX509Extensions* pValue) AddRange;
		}
	}
	[CRepr]
	public struct IX509ExtensionKeyUsage : IX509Extension
	{
		public const new Guid IID = .(0x728ab30f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(X509KeyUsageFlags UsageFlags) mut => VT.InitializeEncode(ref this, UsageFlags);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_KeyUsage(out X509KeyUsageFlags pValue) mut => VT.get_KeyUsage(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionKeyUsage self, X509KeyUsageFlags UsageFlags) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionKeyUsage self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionKeyUsage self, out X509KeyUsageFlags pValue) get_KeyUsage;
		}
	}
	[CRepr]
	public struct IX509ExtensionEnhancedKeyUsage : IX509Extension
	{
		public const new Guid IID = .(0x728ab310, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(IObjectIds* pValue) mut => VT.InitializeEncode(ref this, pValue);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_EnhancedKeyUsage(out IObjectIds* ppValue) mut => VT.get_EnhancedKeyUsage(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionEnhancedKeyUsage self, IObjectIds* pValue) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionEnhancedKeyUsage self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionEnhancedKeyUsage self, out IObjectIds* ppValue) get_EnhancedKeyUsage;
		}
	}
	[CRepr]
	public struct IX509ExtensionTemplateName : IX509Extension
	{
		public const new Guid IID = .(0x728ab311, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(BSTR strTemplateName) mut => VT.InitializeEncode(ref this, strTemplateName);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_TemplateName(out BSTR pValue) mut => VT.get_TemplateName(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplateName self, BSTR strTemplateName) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplateName self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplateName self, out BSTR pValue) get_TemplateName;
		}
	}
	[CRepr]
	public struct IX509ExtensionTemplate : IX509Extension
	{
		public const new Guid IID = .(0x728ab312, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(IObjectId* pTemplateOid, int32 MajorVersion, int32 MinorVersion) mut => VT.InitializeEncode(ref this, pTemplateOid, MajorVersion, MinorVersion);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_TemplateOid(out IObjectId* ppValue) mut => VT.get_TemplateOid(ref this, out ppValue);
		public HRESULT get_MajorVersion(out int32 pValue) mut => VT.get_MajorVersion(ref this, out pValue);
		public HRESULT get_MinorVersion(out int32 pValue) mut => VT.get_MinorVersion(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplate self, IObjectId* pTemplateOid, int32 MajorVersion, int32 MinorVersion) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplate self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplate self, out IObjectId* ppValue) get_TemplateOid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplate self, out int32 pValue) get_MajorVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionTemplate self, out int32 pValue) get_MinorVersion;
		}
	}
	[CRepr]
	public struct IAlternativeName : IDispatch
	{
		public const new Guid IID = .(0x728ab313, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromString(AlternativeNameType Type, BSTR strValue) mut => VT.InitializeFromString(ref this, Type, strValue);
		public HRESULT InitializeFromRawData(AlternativeNameType Type, EncodingType Encoding, BSTR strRawData) mut => VT.InitializeFromRawData(ref this, Type, Encoding, strRawData);
		public HRESULT InitializeFromOtherName(IObjectId* pObjectId, EncodingType Encoding, BSTR strRawData, int16 ToBeWrapped) mut => VT.InitializeFromOtherName(ref this, pObjectId, Encoding, strRawData, ToBeWrapped);
		public HRESULT get_Type(out AlternativeNameType pValue) mut => VT.get_Type(ref this, out pValue);
		public HRESULT get_StrValue(out BSTR pValue) mut => VT.get_StrValue(ref this, out pValue);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, AlternativeNameType Type, BSTR strValue) InitializeFromString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, AlternativeNameType Type, EncodingType Encoding, BSTR strRawData) InitializeFromRawData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, IObjectId* pObjectId, EncodingType Encoding, BSTR strRawData, int16 ToBeWrapped) InitializeFromOtherName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, out AlternativeNameType pValue) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, out BSTR pValue) get_StrValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeName self, EncodingType Encoding, out BSTR pValue) get_RawData;
		}
	}
	[CRepr]
	public struct IAlternativeNames : IDispatch
	{
		public const new Guid IID = .(0x728ab314, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IAlternativeName* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IAlternativeName* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self, int32 Index, out IAlternativeName* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self, IAlternativeName* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAlternativeNames self) Clear;
		}
	}
	[CRepr]
	public struct IX509ExtensionAlternativeNames : IX509Extension
	{
		public const new Guid IID = .(0x728ab315, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(IAlternativeNames* pValue) mut => VT.InitializeEncode(ref this, pValue);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_AlternativeNames(out IAlternativeNames* ppValue) mut => VT.get_AlternativeNames(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAlternativeNames self, IAlternativeNames* pValue) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAlternativeNames self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAlternativeNames self, out IAlternativeNames* ppValue) get_AlternativeNames;
		}
	}
	[CRepr]
	public struct IX509ExtensionBasicConstraints : IX509Extension
	{
		public const new Guid IID = .(0x728ab316, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(int16 IsCA, int32 PathLenConstraint) mut => VT.InitializeEncode(ref this, IsCA, PathLenConstraint);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_IsCA(out int16 pValue) mut => VT.get_IsCA(ref this, out pValue);
		public HRESULT get_PathLenConstraint(out int32 pValue) mut => VT.get_PathLenConstraint(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionBasicConstraints self, int16 IsCA, int32 PathLenConstraint) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionBasicConstraints self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionBasicConstraints self, out int16 pValue) get_IsCA;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionBasicConstraints self, out int32 pValue) get_PathLenConstraint;
		}
	}
	[CRepr]
	public struct IX509ExtensionSubjectKeyIdentifier : IX509Extension
	{
		public const new Guid IID = .(0x728ab317, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(EncodingType Encoding, BSTR strKeyIdentifier) mut => VT.InitializeEncode(ref this, Encoding, strKeyIdentifier);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_SubjectKeyIdentifier(EncodingType Encoding, out BSTR pValue) mut => VT.get_SubjectKeyIdentifier(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSubjectKeyIdentifier self, EncodingType Encoding, BSTR strKeyIdentifier) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSubjectKeyIdentifier self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSubjectKeyIdentifier self, EncodingType Encoding, out BSTR pValue) get_SubjectKeyIdentifier;
		}
	}
	[CRepr]
	public struct IX509ExtensionAuthorityKeyIdentifier : IX509Extension
	{
		public const new Guid IID = .(0x728ab318, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(EncodingType Encoding, BSTR strKeyIdentifier) mut => VT.InitializeEncode(ref this, Encoding, strKeyIdentifier);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_AuthorityKeyIdentifier(EncodingType Encoding, out BSTR pValue) mut => VT.get_AuthorityKeyIdentifier(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAuthorityKeyIdentifier self, EncodingType Encoding, BSTR strKeyIdentifier) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAuthorityKeyIdentifier self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionAuthorityKeyIdentifier self, EncodingType Encoding, out BSTR pValue) get_AuthorityKeyIdentifier;
		}
	}
	[CRepr]
	public struct ISmimeCapability : IDispatch
	{
		public const new Guid IID = .(0x728ab319, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IObjectId* pObjectId, int32 BitCount) mut => VT.Initialize(ref this, pObjectId, BitCount);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_BitCount(out int32 pValue) mut => VT.get_BitCount(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapability self, IObjectId* pObjectId, int32 BitCount) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapability self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapability self, out int32 pValue) get_BitCount;
		}
	}
	[CRepr]
	public struct ISmimeCapabilities : IDispatch
	{
		public const new Guid IID = .(0x728ab31a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ISmimeCapability* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ISmimeCapability* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT AddFromCsp(ICspInformation* pValue) mut => VT.AddFromCsp(ref this, pValue);
		public HRESULT AddAvailableSmimeCapabilities(int16 MachineContext) mut => VT.AddAvailableSmimeCapabilities(ref this, MachineContext);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, int32 Index, out ISmimeCapability* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, ISmimeCapability* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, ICspInformation* pValue) AddFromCsp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISmimeCapabilities self, int16 MachineContext) AddAvailableSmimeCapabilities;
		}
	}
	[CRepr]
	public struct IX509ExtensionSmimeCapabilities : IX509Extension
	{
		public const new Guid IID = .(0x728ab31b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(ISmimeCapabilities* pValue) mut => VT.InitializeEncode(ref this, pValue);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_SmimeCapabilities(out ISmimeCapabilities* ppValue) mut => VT.get_SmimeCapabilities(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSmimeCapabilities self, ISmimeCapabilities* pValue) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSmimeCapabilities self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionSmimeCapabilities self, out ISmimeCapabilities* ppValue) get_SmimeCapabilities;
		}
	}
	[CRepr]
	public struct IPolicyQualifier : IDispatch
	{
		public const new Guid IID = .(0x728ab31c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(BSTR strQualifier, PolicyQualifierType Type) mut => VT.InitializeEncode(ref this, strQualifier, Type);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_Qualifier(out BSTR pValue) mut => VT.get_Qualifier(ref this, out pValue);
		public HRESULT get_Type(out PolicyQualifierType pValue) mut => VT.get_Type(ref this, out pValue);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifier self, BSTR strQualifier, PolicyQualifierType Type) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifier self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifier self, out BSTR pValue) get_Qualifier;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifier self, out PolicyQualifierType pValue) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifier self, EncodingType Encoding, out BSTR pValue) get_RawData;
		}
	}
	[CRepr]
	public struct IPolicyQualifiers : IDispatch
	{
		public const new Guid IID = .(0x728ab31d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IPolicyQualifier* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IPolicyQualifier* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self, int32 Index, out IPolicyQualifier* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self, IPolicyQualifier* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPolicyQualifiers self) Clear;
		}
	}
	[CRepr]
	public struct ICertificatePolicy : IDispatch
	{
		public const new Guid IID = .(0x728ab31e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IObjectId* pValue) mut => VT.Initialize(ref this, pValue);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_PolicyQualifiers(out IPolicyQualifiers* ppValue) mut => VT.get_PolicyQualifiers(ref this, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicy self, IObjectId* pValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicy self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicy self, out IPolicyQualifiers* ppValue) get_PolicyQualifiers;
		}
	}
	[CRepr]
	public struct ICertificatePolicies : IDispatch
	{
		public const new Guid IID = .(0x728ab31f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICertificatePolicy* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICertificatePolicy* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self, int32 Index, out ICertificatePolicy* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self, ICertificatePolicy* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificatePolicies self) Clear;
		}
	}
	[CRepr]
	public struct IX509ExtensionCertificatePolicies : IX509Extension
	{
		public const new Guid IID = .(0x728ab320, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(ICertificatePolicies* pValue) mut => VT.InitializeEncode(ref this, pValue);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_Policies(out ICertificatePolicies* ppValue) mut => VT.get_Policies(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionCertificatePolicies self, ICertificatePolicies* pValue) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionCertificatePolicies self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionCertificatePolicies self, out ICertificatePolicies* ppValue) get_Policies;
		}
	}
	[CRepr]
	public struct IX509ExtensionMSApplicationPolicies : IX509Extension
	{
		public const new Guid IID = .(0x728ab321, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(ICertificatePolicies* pValue) mut => VT.InitializeEncode(ref this, pValue);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_Policies(out ICertificatePolicies* ppValue) mut => VT.get_Policies(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Extension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionMSApplicationPolicies self, ICertificatePolicies* pValue) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionMSApplicationPolicies self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509ExtensionMSApplicationPolicies self, out ICertificatePolicies* ppValue) get_Policies;
		}
	}
	[CRepr]
	public struct IX509Attribute : IDispatch
	{
		public const new Guid IID = .(0x728ab322, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) mut => VT.Initialize(ref this, pObjectId, Encoding, strEncodedData);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attribute self, IObjectId* pObjectId, EncodingType Encoding, BSTR strEncodedData) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attribute self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attribute self, EncodingType Encoding, out BSTR pValue) get_RawData;
		}
	}
	[CRepr]
	public struct IX509Attributes : IDispatch
	{
		public const new Guid IID = .(0x728ab323, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509Attribute* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509Attribute* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self, int32 Index, out IX509Attribute* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self, IX509Attribute* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Attributes self) Clear;
		}
	}
	[CRepr]
	public struct IX509AttributeExtensions : IX509Attribute
	{
		public const new Guid IID = .(0x728ab324, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(IX509Extensions* pExtensions) mut => VT.InitializeEncode(ref this, pExtensions);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_X509Extensions(out IX509Extensions* ppValue) mut => VT.get_X509Extensions(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeExtensions self, IX509Extensions* pExtensions) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeExtensions self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeExtensions self, out IX509Extensions* ppValue) get_X509Extensions;
		}
	}
	[CRepr]
	public struct IX509AttributeClientId : IX509Attribute
	{
		public const new Guid IID = .(0x728ab325, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(RequestClientInfoClientId ClientId, BSTR strMachineDnsName, BSTR strUserSamName, BSTR strProcessName) mut => VT.InitializeEncode(ref this, ClientId, strMachineDnsName, strUserSamName, strProcessName);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_ClientId(out RequestClientInfoClientId pValue) mut => VT.get_ClientId(ref this, out pValue);
		public HRESULT get_MachineDnsName(out BSTR pValue) mut => VT.get_MachineDnsName(ref this, out pValue);
		public HRESULT get_UserSamName(out BSTR pValue) mut => VT.get_UserSamName(ref this, out pValue);
		public HRESULT get_ProcessName(out BSTR pValue) mut => VT.get_ProcessName(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, RequestClientInfoClientId ClientId, BSTR strMachineDnsName, BSTR strUserSamName, BSTR strProcessName) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, out RequestClientInfoClientId pValue) get_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, out BSTR pValue) get_MachineDnsName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, out BSTR pValue) get_UserSamName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeClientId self, out BSTR pValue) get_ProcessName;
		}
	}
	[CRepr]
	public struct IX509AttributeRenewalCertificate : IX509Attribute
	{
		public const new Guid IID = .(0x728ab326, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(EncodingType Encoding, BSTR strCert) mut => VT.InitializeEncode(ref this, Encoding, strCert);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_RenewalCertificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_RenewalCertificate(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeRenewalCertificate self, EncodingType Encoding, BSTR strCert) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeRenewalCertificate self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeRenewalCertificate self, EncodingType Encoding, out BSTR pValue) get_RenewalCertificate;
		}
	}
	[CRepr]
	public struct IX509AttributeArchiveKey : IX509Attribute
	{
		public const new Guid IID = .(0x728ab327, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(IX509PrivateKey* pKey, EncodingType Encoding, BSTR strCAXCert, IObjectId* pAlgorithm, int32 EncryptionStrength) mut => VT.InitializeEncode(ref this, pKey, Encoding, strCAXCert, pAlgorithm, EncryptionStrength);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_EncryptedKeyBlob(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncryptedKeyBlob(ref this, Encoding, out pValue);
		public HRESULT get_EncryptionAlgorithm(out IObjectId* ppValue) mut => VT.get_EncryptionAlgorithm(ref this, out ppValue);
		public HRESULT get_EncryptionStrength(out int32 pValue) mut => VT.get_EncryptionStrength(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKey self, IX509PrivateKey* pKey, EncodingType Encoding, BSTR strCAXCert, IObjectId* pAlgorithm, int32 EncryptionStrength) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKey self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKey self, EncodingType Encoding, out BSTR pValue) get_EncryptedKeyBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKey self, out IObjectId* ppValue) get_EncryptionAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKey self, out int32 pValue) get_EncryptionStrength;
		}
	}
	[CRepr]
	public struct IX509AttributeArchiveKeyHash : IX509Attribute
	{
		public const new Guid IID = .(0x728ab328, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncodeFromEncryptedKeyBlob(EncodingType Encoding, BSTR strEncryptedKeyBlob) mut => VT.InitializeEncodeFromEncryptedKeyBlob(ref this, Encoding, strEncryptedKeyBlob);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_EncryptedKeyHashBlob(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncryptedKeyHashBlob(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKeyHash self, EncodingType Encoding, BSTR strEncryptedKeyBlob) InitializeEncodeFromEncryptedKeyBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKeyHash self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeArchiveKeyHash self, EncodingType Encoding, out BSTR pValue) get_EncryptedKeyHashBlob;
		}
	}
	[CRepr]
	public struct IX509AttributeOSVersion : IX509Attribute
	{
		public const new Guid IID = .(0x728ab32a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(BSTR strOSVersion) mut => VT.InitializeEncode(ref this, strOSVersion);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_OSVersion(out BSTR pValue) mut => VT.get_OSVersion(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeOSVersion self, BSTR strOSVersion) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeOSVersion self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeOSVersion self, out BSTR pValue) get_OSVersion;
		}
	}
	[CRepr]
	public struct IX509AttributeCspProvider : IX509Attribute
	{
		public const new Guid IID = .(0x728ab32b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEncode(X509KeySpec KeySpec, BSTR strProviderName, EncodingType Encoding, BSTR strSignature) mut => VT.InitializeEncode(ref this, KeySpec, strProviderName, Encoding, strSignature);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_KeySpec(out X509KeySpec pValue) mut => VT.get_KeySpec(ref this, out pValue);
		public HRESULT get_ProviderName(out BSTR pValue) mut => VT.get_ProviderName(ref this, out pValue);
		public HRESULT get_Signature(EncodingType Encoding, out BSTR pValue) mut => VT.get_Signature(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IX509Attribute.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeCspProvider self, X509KeySpec KeySpec, BSTR strProviderName, EncodingType Encoding, BSTR strSignature) InitializeEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeCspProvider self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeCspProvider self, out X509KeySpec pValue) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeCspProvider self, out BSTR pValue) get_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509AttributeCspProvider self, EncodingType Encoding, out BSTR pValue) get_Signature;
		}
	}
	[CRepr]
	public struct ICryptAttribute : IDispatch
	{
		public const new Guid IID = .(0x728ab32c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromObjectId(IObjectId* pObjectId) mut => VT.InitializeFromObjectId(ref this, pObjectId);
		public HRESULT InitializeFromValues(IX509Attributes* pAttributes) mut => VT.InitializeFromValues(ref this, pAttributes);
		public HRESULT get_ObjectId(out IObjectId* ppValue) mut => VT.get_ObjectId(ref this, out ppValue);
		public HRESULT get_Values(out IX509Attributes* ppValue) mut => VT.get_Values(ref this, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttribute self, IObjectId* pObjectId) InitializeFromObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttribute self, IX509Attributes* pAttributes) InitializeFromValues;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttribute self, out IObjectId* ppValue) get_ObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttribute self, out IX509Attributes* ppValue) get_Values;
		}
	}
	[CRepr]
	public struct ICryptAttributes : IDispatch
	{
		public const new Guid IID = .(0x728ab32d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICryptAttribute* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICryptAttribute* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_IndexByObjectId(IObjectId* pObjectId, out int32 pIndex) mut => VT.get_IndexByObjectId(ref this, pObjectId, out pIndex);
		public HRESULT AddRange(ICryptAttributes* pValue) mut => VT.AddRange(ref this, pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, int32 Index, out ICryptAttribute* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, ICryptAttribute* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, IObjectId* pObjectId, out int32 pIndex) get_IndexByObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICryptAttributes self, ICryptAttributes* pValue) AddRange;
		}
	}
	[CRepr]
	public struct ICertProperty : IDispatch
	{
		public const new Guid IID = .(0x728ab32e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut => VT.InitializeFromCertificate(ref this, MachineContext, Encoding, strCertificate);
		public HRESULT InitializeDecode(EncodingType Encoding, BSTR strEncodedData) mut => VT.InitializeDecode(ref this, Encoding, strEncodedData);
		public HRESULT get_PropertyId(out CERTENROLL_PROPERTYID pValue) mut => VT.get_PropertyId(ref this, out pValue);
		public HRESULT put_PropertyId(CERTENROLL_PROPERTYID Value) mut => VT.put_PropertyId(ref this, Value);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);
		public HRESULT RemoveFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut => VT.RemoveFromCertificate(ref this, MachineContext, Encoding, strCertificate);
		public HRESULT SetValueOnCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut => VT.SetValueOnCertificate(ref this, MachineContext, Encoding, strCertificate);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, EncodingType Encoding, BSTR strEncodedData) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, out CERTENROLL_PROPERTYID pValue) get_PropertyId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, CERTENROLL_PROPERTYID Value) put_PropertyId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, EncodingType Encoding, out BSTR pValue) get_RawData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) RemoveFromCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperty self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) SetValueOnCertificate;
		}
	}
	[CRepr]
	public struct ICertProperties : IDispatch
	{
		public const new Guid IID = .(0x728ab32f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICertProperty* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICertProperty* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT InitializeFromCertificate(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut => VT.InitializeFromCertificate(ref this, MachineContext, Encoding, strCertificate);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, int32 Index, out ICertProperty* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, ICertProperty* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertProperties self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificate;
		}
	}
	[CRepr]
	public struct ICertPropertyFriendlyName : ICertProperty
	{
		public const new Guid IID = .(0x728ab330, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strFriendlyName) mut => VT.Initialize(ref this, strFriendlyName);
		public HRESULT get_FriendlyName(out BSTR pValue) mut => VT.get_FriendlyName(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyFriendlyName self, BSTR strFriendlyName) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyFriendlyName self, out BSTR pValue) get_FriendlyName;
		}
	}
	[CRepr]
	public struct ICertPropertyDescription : ICertProperty
	{
		public const new Guid IID = .(0x728ab331, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strDescription) mut => VT.Initialize(ref this, strDescription);
		public HRESULT get_Description(out BSTR pValue) mut => VT.get_Description(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyDescription self, BSTR strDescription) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyDescription self, out BSTR pValue) get_Description;
		}
	}
	[CRepr]
	public struct ICertPropertyAutoEnroll : ICertProperty
	{
		public const new Guid IID = .(0x728ab332, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strTemplateName) mut => VT.Initialize(ref this, strTemplateName);
		public HRESULT get_TemplateName(out BSTR pValue) mut => VT.get_TemplateName(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyAutoEnroll self, BSTR strTemplateName) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyAutoEnroll self, out BSTR pValue) get_TemplateName;
		}
	}
	[CRepr]
	public struct ICertPropertyRequestOriginator : ICertProperty
	{
		public const new Guid IID = .(0x728ab333, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strRequestOriginator) mut => VT.Initialize(ref this, strRequestOriginator);
		public HRESULT InitializeFromLocalRequestOriginator() mut => VT.InitializeFromLocalRequestOriginator(ref this);
		public HRESULT get_RequestOriginator(out BSTR pValue) mut => VT.get_RequestOriginator(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRequestOriginator self, BSTR strRequestOriginator) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRequestOriginator self) InitializeFromLocalRequestOriginator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRequestOriginator self, out BSTR pValue) get_RequestOriginator;
		}
	}
	[CRepr]
	public struct ICertPropertySHA1Hash : ICertProperty
	{
		public const new Guid IID = .(0x728ab334, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EncodingType Encoding, BSTR strRenewalValue) mut => VT.Initialize(ref this, Encoding, strRenewalValue);
		public HRESULT get_SHA1Hash(EncodingType Encoding, out BSTR pValue) mut => VT.get_SHA1Hash(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertySHA1Hash self, EncodingType Encoding, BSTR strRenewalValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertySHA1Hash self, EncodingType Encoding, out BSTR pValue) get_SHA1Hash;
		}
	}
	[CRepr]
	public struct ICertPropertyKeyProvInfo : ICertProperty
	{
		public const new Guid IID = .(0x728ab336, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IX509PrivateKey* pValue) mut => VT.Initialize(ref this, pValue);
		public HRESULT get_PrivateKey(out IX509PrivateKey* ppValue) mut => VT.get_PrivateKey(ref this, out ppValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyKeyProvInfo self, IX509PrivateKey* pValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyKeyProvInfo self, out IX509PrivateKey* ppValue) get_PrivateKey;
		}
	}
	[CRepr]
	public struct ICertPropertyArchived : ICertProperty
	{
		public const new Guid IID = .(0x728ab337, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(int16 ArchivedValue) mut => VT.Initialize(ref this, ArchivedValue);
		public HRESULT get_Archived(out int16 pValue) mut => VT.get_Archived(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyArchived self, int16 ArchivedValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyArchived self, out int16 pValue) get_Archived;
		}
	}
	[CRepr]
	public struct ICertPropertyBackedUp : ICertProperty
	{
		public const new Guid IID = .(0x728ab338, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromCurrentTime(int16 BackedUpValue) mut => VT.InitializeFromCurrentTime(ref this, BackedUpValue);
		public HRESULT Initialize(int16 BackedUpValue, double Date) mut => VT.Initialize(ref this, BackedUpValue, Date);
		public HRESULT get_BackedUpValue(out int16 pValue) mut => VT.get_BackedUpValue(ref this, out pValue);
		public HRESULT get_BackedUpTime(out double pDate) mut => VT.get_BackedUpTime(ref this, out pDate);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyBackedUp self, int16 BackedUpValue) InitializeFromCurrentTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyBackedUp self, int16 BackedUpValue, double Date) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyBackedUp self, out int16 pValue) get_BackedUpValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyBackedUp self, out double pDate) get_BackedUpTime;
		}
	}
	[CRepr]
	public struct ICertPropertyEnrollment : ICertProperty
	{
		public const new Guid IID = .(0x728ab339, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(int32 RequestId, BSTR strCADnsName, BSTR strCAName, BSTR strFriendlyName) mut => VT.Initialize(ref this, RequestId, strCADnsName, strCAName, strFriendlyName);
		public HRESULT get_RequestId(out int32 pValue) mut => VT.get_RequestId(ref this, out pValue);
		public HRESULT get_CADnsName(out BSTR pValue) mut => VT.get_CADnsName(ref this, out pValue);
		public HRESULT get_CAName(out BSTR pValue) mut => VT.get_CAName(ref this, out pValue);
		public HRESULT get_FriendlyName(out BSTR pValue) mut => VT.get_FriendlyName(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollment self, int32 RequestId, BSTR strCADnsName, BSTR strCAName, BSTR strFriendlyName) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollment self, out int32 pValue) get_RequestId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollment self, out BSTR pValue) get_CADnsName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollment self, out BSTR pValue) get_CAName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollment self, out BSTR pValue) get_FriendlyName;
		}
	}
	[CRepr]
	public struct ICertPropertyRenewal : ICertProperty
	{
		public const new Guid IID = .(0x728ab33a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EncodingType Encoding, BSTR strRenewalValue) mut => VT.Initialize(ref this, Encoding, strRenewalValue);
		public HRESULT InitializeFromCertificateHash(int16 MachineContext, EncodingType Encoding, BSTR strCertificate) mut => VT.InitializeFromCertificateHash(ref this, MachineContext, Encoding, strCertificate);
		public HRESULT get_Renewal(EncodingType Encoding, out BSTR pValue) mut => VT.get_Renewal(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRenewal self, EncodingType Encoding, BSTR strRenewalValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRenewal self, int16 MachineContext, EncodingType Encoding, BSTR strCertificate) InitializeFromCertificateHash;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyRenewal self, EncodingType Encoding, out BSTR pValue) get_Renewal;
		}
	}
	[CRepr]
	public struct ICertPropertyArchivedKeyHash : ICertProperty
	{
		public const new Guid IID = .(0x728ab33b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EncodingType Encoding, BSTR strArchivedKeyHashValue) mut => VT.Initialize(ref this, Encoding, strArchivedKeyHashValue);
		public HRESULT get_ArchivedKeyHash(EncodingType Encoding, out BSTR pValue) mut => VT.get_ArchivedKeyHash(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyArchivedKeyHash self, EncodingType Encoding, BSTR strArchivedKeyHashValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyArchivedKeyHash self, EncodingType Encoding, out BSTR pValue) get_ArchivedKeyHash;
		}
	}
	[CRepr]
	public struct ICertPropertyEnrollmentPolicyServer : ICertProperty
	{
		public const new Guid IID = .(0x728ab34a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EnrollmentPolicyServerPropertyFlags PropertyFlags, X509EnrollmentAuthFlags AuthFlags, X509EnrollmentAuthFlags EnrollmentServerAuthFlags, PolicyServerUrlFlags UrlFlags, BSTR strRequestId, BSTR strUrl, BSTR strId, BSTR strEnrollmentServerUrl) mut => VT.Initialize(ref this, PropertyFlags, AuthFlags, EnrollmentServerAuthFlags, UrlFlags, strRequestId, strUrl, strId, strEnrollmentServerUrl);
		public HRESULT GetPolicyServerUrl(out BSTR pValue) mut => VT.GetPolicyServerUrl(ref this, out pValue);
		public HRESULT GetPolicyServerId(out BSTR pValue) mut => VT.GetPolicyServerId(ref this, out pValue);
		public HRESULT GetEnrollmentServerUrl(out BSTR pValue) mut => VT.GetEnrollmentServerUrl(ref this, out pValue);
		public HRESULT GetRequestIdString(out BSTR pValue) mut => VT.GetRequestIdString(ref this, out pValue);
		public HRESULT GetPropertyFlags(out EnrollmentPolicyServerPropertyFlags pValue) mut => VT.GetPropertyFlags(ref this, out pValue);
		public HRESULT GetUrlFlags(out PolicyServerUrlFlags pValue) mut => VT.GetUrlFlags(ref this, out pValue);
		public HRESULT GetAuthentication(out X509EnrollmentAuthFlags pValue) mut => VT.GetAuthentication(ref this, out pValue);
		public HRESULT GetEnrollmentServerAuthentication(out X509EnrollmentAuthFlags pValue) mut => VT.GetEnrollmentServerAuthentication(ref this, out pValue);

		[CRepr]
		public struct VTable : ICertProperty.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, EnrollmentPolicyServerPropertyFlags PropertyFlags, X509EnrollmentAuthFlags AuthFlags, X509EnrollmentAuthFlags EnrollmentServerAuthFlags, PolicyServerUrlFlags UrlFlags, BSTR strRequestId, BSTR strUrl, BSTR strId, BSTR strEnrollmentServerUrl) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out BSTR pValue) GetPolicyServerUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out BSTR pValue) GetPolicyServerId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out BSTR pValue) GetEnrollmentServerUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out BSTR pValue) GetRequestIdString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out EnrollmentPolicyServerPropertyFlags pValue) GetPropertyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out PolicyServerUrlFlags pValue) GetUrlFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out X509EnrollmentAuthFlags pValue) GetAuthentication;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertPropertyEnrollmentPolicyServer self, out X509EnrollmentAuthFlags pValue) GetEnrollmentServerAuthentication;
		}
	}
	[CRepr]
	public struct IX509SignatureInformation : IDispatch
	{
		public const new Guid IID = .(0x728ab33c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_HashAlgorithm(out IObjectId* ppValue) mut => VT.get_HashAlgorithm(ref this, out ppValue);
		public HRESULT put_HashAlgorithm(IObjectId* pValue) mut => VT.put_HashAlgorithm(ref this, pValue);
		public HRESULT get_PublicKeyAlgorithm(out IObjectId* ppValue) mut => VT.get_PublicKeyAlgorithm(ref this, out ppValue);
		public HRESULT put_PublicKeyAlgorithm(IObjectId* pValue) mut => VT.put_PublicKeyAlgorithm(ref this, pValue);
		public HRESULT get_Parameters(EncodingType Encoding, out BSTR pValue) mut => VT.get_Parameters(ref this, Encoding, out pValue);
		public HRESULT put_Parameters(EncodingType Encoding, BSTR Value) mut => VT.put_Parameters(ref this, Encoding, Value);
		public HRESULT get_AlternateSignatureAlgorithm(out int16 pValue) mut => VT.get_AlternateSignatureAlgorithm(ref this, out pValue);
		public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut => VT.put_AlternateSignatureAlgorithm(ref this, Value);
		public HRESULT get_AlternateSignatureAlgorithmSet(out int16 pValue) mut => VT.get_AlternateSignatureAlgorithmSet(ref this, out pValue);
		public HRESULT get_NullSigned(out int16 pValue) mut => VT.get_NullSigned(ref this, out pValue);
		public HRESULT put_NullSigned(int16 Value) mut => VT.put_NullSigned(ref this, Value);
		public HRESULT GetSignatureAlgorithm(int16 Pkcs7Signature, int16 SignatureKey, out IObjectId* ppValue) mut => VT.GetSignatureAlgorithm(ref this, Pkcs7Signature, SignatureKey, out ppValue);
		public HRESULT SetDefaultValues() mut => VT.SetDefaultValues(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, out IObjectId* ppValue) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, IObjectId* pValue) put_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, out IObjectId* ppValue) get_PublicKeyAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, IObjectId* pValue) put_PublicKeyAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, EncodingType Encoding, out BSTR pValue) get_Parameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, EncodingType Encoding, BSTR Value) put_Parameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, out int16 pValue) get_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, int16 Value) put_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, out int16 pValue) get_AlternateSignatureAlgorithmSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, out int16 pValue) get_NullSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, int16 Value) put_NullSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self, int16 Pkcs7Signature, int16 SignatureKey, out IObjectId* ppValue) GetSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SignatureInformation self) SetDefaultValues;
		}
	}
	[CRepr]
	public struct ISignerCertificate : IDispatch
	{
		public const new Guid IID = .(0x728ab33d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(int16 MachineContext, X509PrivateKeyVerify VerifyType, EncodingType Encoding, BSTR strCertificate) mut => VT.Initialize(ref this, MachineContext, VerifyType, Encoding, strCertificate);
		public HRESULT get_Certificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_Certificate(ref this, Encoding, out pValue);
		public HRESULT get_PrivateKey(out IX509PrivateKey* ppValue) mut => VT.get_PrivateKey(ref this, out ppValue);
		public HRESULT get_Silent(out int16 pValue) mut => VT.get_Silent(ref this, out pValue);
		public HRESULT put_Silent(int16 Value) mut => VT.put_Silent(ref this, Value);
		public HRESULT get_ParentWindow(out int32 pValue) mut => VT.get_ParentWindow(ref this, out pValue);
		public HRESULT put_ParentWindow(int32 Value) mut => VT.put_ParentWindow(ref this, Value);
		public HRESULT get_UIContextMessage(out BSTR pValue) mut => VT.get_UIContextMessage(ref this, out pValue);
		public HRESULT put_UIContextMessage(BSTR Value) mut => VT.put_UIContextMessage(ref this, Value);
		public HRESULT put_Pin(BSTR Value) mut => VT.put_Pin(ref this, Value);
		public HRESULT get_SignatureInformation(out IX509SignatureInformation* ppValue) mut => VT.get_SignatureInformation(ref this, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, int16 MachineContext, X509PrivateKeyVerify VerifyType, EncodingType Encoding, BSTR strCertificate) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, EncodingType Encoding, out BSTR pValue) get_Certificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, out IX509PrivateKey* ppValue) get_PrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, out int16 pValue) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, int16 Value) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, out int32 pValue) get_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, int32 Value) put_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, out BSTR pValue) get_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, BSTR Value) put_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, BSTR Value) put_Pin;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificate self, out IX509SignatureInformation* ppValue) get_SignatureInformation;
		}
	}
	[CRepr]
	public struct ISignerCertificates : IDispatch
	{
		public const new Guid IID = .(0x728ab33e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ISignerCertificate* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ISignerCertificate* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT Find(ISignerCertificate* pSignerCert, out int32 piSignerCert) mut => VT.Find(ref this, pSignerCert, out piSignerCert);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, int32 Index, out ISignerCertificate* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, ISignerCertificate* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISignerCertificates self, ISignerCertificate* pSignerCert, out int32 piSignerCert) Find;
		}
	}
	[CRepr]
	public struct IX509NameValuePair : IDispatch
	{
		public const new Guid IID = .(0x728ab33f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strName, BSTR strValue) mut => VT.Initialize(ref this, strName, strValue);
		public HRESULT get_Value(out BSTR pValue) mut => VT.get_Value(ref this, out pValue);
		public HRESULT get_Name(out BSTR pValue) mut => VT.get_Name(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePair self, BSTR strName, BSTR strValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePair self, out BSTR pValue) get_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePair self, out BSTR pValue) get_Name;
		}
	}
	[CRepr]
	public struct IX509NameValuePairs : IDispatch
	{
		public const new Guid IID = .(0x728ab340, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509NameValuePair* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509NameValuePair* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self, int32 Index, out IX509NameValuePair* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self, IX509NameValuePair* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509NameValuePairs self) Clear;
		}
	}
	[CRepr]
	public struct IX509CertificateTemplate : IDispatch
	{
		public const new Guid IID = .(0x54244a13, 0x555a, 0x4e22, 0x89, 0x6d, 0x1b, 0x0e, 0x52, 0xf7, 0x64, 0x06);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Property(EnrollmentTemplateProperty property, out VARIANT pValue) mut => VT.get_Property(ref this, property, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplate self, EnrollmentTemplateProperty property, out VARIANT pValue) get_Property;
		}
	}
	[CRepr]
	public struct IX509CertificateTemplates : IDispatch
	{
		public const new Guid IID = .(0x13b79003, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509CertificateTemplate* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509CertificateTemplate* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_ItemByName(BSTR bstrName, out IX509CertificateTemplate* ppValue) mut => VT.get_ItemByName(ref this, bstrName, out ppValue);
		public HRESULT get_ItemByOid(IObjectId* pOid, out IX509CertificateTemplate* ppValue) mut => VT.get_ItemByOid(ref this, pOid, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, int32 Index, out IX509CertificateTemplate* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, IX509CertificateTemplate* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, BSTR bstrName, out IX509CertificateTemplate* ppValue) get_ItemByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplates self, IObjectId* pOid, out IX509CertificateTemplate* ppValue) get_ItemByOid;
		}
	}
	[CRepr]
	public struct IX509CertificateTemplateWritable : IDispatch
	{
		public const new Guid IID = .(0xf49466a7, 0x395a, 0x4e9e, 0xb6, 0xe7, 0x32, 0xb3, 0x31, 0x60, 0x0d, 0xc0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IX509CertificateTemplate* pValue) mut => VT.Initialize(ref this, pValue);
		public HRESULT Commit(CommitTemplateFlags commitFlags, BSTR strServerContext) mut => VT.Commit(ref this, commitFlags, strServerContext);
		public HRESULT get_Property(EnrollmentTemplateProperty property, out VARIANT pValue) mut => VT.get_Property(ref this, property, out pValue);
		public HRESULT put_Property(EnrollmentTemplateProperty property, VARIANT value) mut => VT.put_Property(ref this, property, value);
		public HRESULT get_Template(out IX509CertificateTemplate* ppValue) mut => VT.get_Template(ref this, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplateWritable self, IX509CertificateTemplate* pValue) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplateWritable self, CommitTemplateFlags commitFlags, BSTR strServerContext) Commit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplateWritable self, EnrollmentTemplateProperty property, out VARIANT pValue) get_Property;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplateWritable self, EnrollmentTemplateProperty property, VARIANT value) put_Property;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateTemplateWritable self, out IX509CertificateTemplate* ppValue) get_Template;
		}
	}
	[CRepr]
	public struct ICertificationAuthority : IDispatch
	{
		public const new Guid IID = .(0x835d1f61, 0x1e95, 0x4bc8, 0xb4, 0xd3, 0x97, 0x6c, 0x42, 0xb9, 0x68, 0xf7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Property(EnrollmentCAProperty property, out VARIANT pValue) mut => VT.get_Property(ref this, property, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthority self, EnrollmentCAProperty property, out VARIANT pValue) get_Property;
		}
	}
	[CRepr]
	public struct ICertificationAuthorities : IDispatch
	{
		public const new Guid IID = .(0x13b79005, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out ICertificationAuthority* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(ICertificationAuthority* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT ComputeSiteCosts() mut => VT.ComputeSiteCosts(ref this);
		public HRESULT get_ItemByName(BSTR strName, out ICertificationAuthority* ppValue) mut => VT.get_ItemByName(ref this, strName, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, int32 Index, out ICertificationAuthority* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, ICertificationAuthority* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self) ComputeSiteCosts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificationAuthorities self, BSTR strName, out ICertificationAuthority* ppValue) get_ItemByName;
		}
	}
	[CRepr]
	public struct IX509EnrollmentPolicyServer : IDispatch
	{
		public const new Guid IID = .(0x13b79026, 0x2181, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR bstrPolicyServerUrl, BSTR bstrPolicyServerId, X509EnrollmentAuthFlags authFlags, int16 fIsUnTrusted, X509CertificateEnrollmentContext context) mut => VT.Initialize(ref this, bstrPolicyServerUrl, bstrPolicyServerId, authFlags, fIsUnTrusted, context);
		public HRESULT LoadPolicy(X509EnrollmentPolicyLoadOption option) mut => VT.LoadPolicy(ref this, option);
		public HRESULT GetTemplates(out IX509CertificateTemplates* pTemplates) mut => VT.GetTemplates(ref this, out pTemplates);
		public HRESULT GetCAsForTemplate(IX509CertificateTemplate* pTemplate, out ICertificationAuthorities* ppCAs) mut => VT.GetCAsForTemplate(ref this, pTemplate, out ppCAs);
		public HRESULT GetCAs(out ICertificationAuthorities* ppCAs) mut => VT.GetCAs(ref this, out ppCAs);
		public HRESULT Validate() mut => VT.Validate(ref this);
		public HRESULT GetCustomOids(out IObjectIds* ppObjectIds) mut => VT.GetCustomOids(ref this, out ppObjectIds);
		public HRESULT GetNextUpdateTime(out double pDate) mut => VT.GetNextUpdateTime(ref this, out pDate);
		public HRESULT GetLastUpdateTime(out double pDate) mut => VT.GetLastUpdateTime(ref this, out pDate);
		public HRESULT GetPolicyServerUrl(out BSTR pValue) mut => VT.GetPolicyServerUrl(ref this, out pValue);
		public HRESULT GetPolicyServerId(out BSTR pValue) mut => VT.GetPolicyServerId(ref this, out pValue);
		public HRESULT GetFriendlyName(out BSTR pValue) mut => VT.GetFriendlyName(ref this, out pValue);
		public HRESULT GetIsDefaultCEP(out int16 pValue) mut => VT.GetIsDefaultCEP(ref this, out pValue);
		public HRESULT GetUseClientId(out int16 pValue) mut => VT.GetUseClientId(ref this, out pValue);
		public HRESULT GetAllowUnTrustedCA(out int16 pValue) mut => VT.GetAllowUnTrustedCA(ref this, out pValue);
		public HRESULT GetCachePath(out BSTR pValue) mut => VT.GetCachePath(ref this, out pValue);
		public HRESULT GetCacheDir(out BSTR pValue) mut => VT.GetCacheDir(ref this, out pValue);
		public HRESULT GetAuthFlags(out X509EnrollmentAuthFlags pValue) mut => VT.GetAuthFlags(ref this, out pValue);
		public HRESULT SetCredential(int32 hWndParent, X509EnrollmentAuthFlags flag, BSTR strCredential, BSTR strPassword) mut => VT.SetCredential(ref this, hWndParent, flag, strCredential, strPassword);
		public HRESULT QueryChanges(out int16 pValue) mut => VT.QueryChanges(ref this, out pValue);
		public HRESULT InitializeImport(VARIANT val) mut => VT.InitializeImport(ref this, val);
		public HRESULT Export(X509EnrollmentPolicyExportFlags exportFlags, out VARIANT pVal) mut => VT.Export(ref this, exportFlags, out pVal);
		public HRESULT get_Cost(out uint32 pValue) mut => VT.get_Cost(ref this, out pValue);
		public HRESULT put_Cost(uint32 value) mut => VT.put_Cost(ref this, value);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, BSTR bstrPolicyServerUrl, BSTR bstrPolicyServerId, X509EnrollmentAuthFlags authFlags, int16 fIsUnTrusted, X509CertificateEnrollmentContext context) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, X509EnrollmentPolicyLoadOption option) LoadPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out IX509CertificateTemplates* pTemplates) GetTemplates;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, IX509CertificateTemplate* pTemplate, out ICertificationAuthorities* ppCAs) GetCAsForTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out ICertificationAuthorities* ppCAs) GetCAs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self) Validate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out IObjectIds* ppObjectIds) GetCustomOids;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out double pDate) GetNextUpdateTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out double pDate) GetLastUpdateTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out BSTR pValue) GetPolicyServerUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out BSTR pValue) GetPolicyServerId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out BSTR pValue) GetFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out int16 pValue) GetIsDefaultCEP;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out int16 pValue) GetUseClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out int16 pValue) GetAllowUnTrustedCA;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out BSTR pValue) GetCachePath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out BSTR pValue) GetCacheDir;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out X509EnrollmentAuthFlags pValue) GetAuthFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, int32 hWndParent, X509EnrollmentAuthFlags flag, BSTR strCredential, BSTR strPassword) SetCredential;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out int16 pValue) QueryChanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, VARIANT val) InitializeImport;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, X509EnrollmentPolicyExportFlags exportFlags, out VARIANT pVal) Export;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, out uint32 pValue) get_Cost;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentPolicyServer self, uint32 value) put_Cost;
		}
	}
	[CRepr]
	public struct IX509PolicyServerUrl : IDispatch
	{
		public const new Guid IID = .(0x884e204a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(X509CertificateEnrollmentContext context) mut => VT.Initialize(ref this, context);
		public HRESULT get_Url(out BSTR ppValue) mut => VT.get_Url(ref this, out ppValue);
		public HRESULT put_Url(BSTR pValue) mut => VT.put_Url(ref this, pValue);
		public HRESULT get_Default(out int16 pValue) mut => VT.get_Default(ref this, out pValue);
		public HRESULT put_Default(int16 value) mut => VT.put_Default(ref this, value);
		public HRESULT get_Flags(out PolicyServerUrlFlags pValue) mut => VT.get_Flags(ref this, out pValue);
		public HRESULT put_Flags(PolicyServerUrlFlags Flags) mut => VT.put_Flags(ref this, Flags);
		public HRESULT get_AuthFlags(out X509EnrollmentAuthFlags pValue) mut => VT.get_AuthFlags(ref this, out pValue);
		public HRESULT put_AuthFlags(X509EnrollmentAuthFlags Flags) mut => VT.put_AuthFlags(ref this, Flags);
		public HRESULT get_Cost(out uint32 pValue) mut => VT.get_Cost(ref this, out pValue);
		public HRESULT put_Cost(uint32 value) mut => VT.put_Cost(ref this, value);
		public HRESULT GetStringProperty(PolicyServerUrlPropertyID propertyId, out BSTR ppValue) mut => VT.GetStringProperty(ref this, propertyId, out ppValue);
		public HRESULT SetStringProperty(PolicyServerUrlPropertyID propertyId, BSTR pValue) mut => VT.SetStringProperty(ref this, propertyId, pValue);
		public HRESULT UpdateRegistry(X509CertificateEnrollmentContext context) mut => VT.UpdateRegistry(ref this, context);
		public HRESULT RemoveFromRegistry(X509CertificateEnrollmentContext context) mut => VT.RemoveFromRegistry(ref this, context);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, X509CertificateEnrollmentContext context) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, out BSTR ppValue) get_Url;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, BSTR pValue) put_Url;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, out int16 pValue) get_Default;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, int16 value) put_Default;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, out PolicyServerUrlFlags pValue) get_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, PolicyServerUrlFlags Flags) put_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, out X509EnrollmentAuthFlags pValue) get_AuthFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, X509EnrollmentAuthFlags Flags) put_AuthFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, out uint32 pValue) get_Cost;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, uint32 value) put_Cost;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, PolicyServerUrlPropertyID propertyId, out BSTR ppValue) GetStringProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, PolicyServerUrlPropertyID propertyId, BSTR pValue) SetStringProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, X509CertificateEnrollmentContext context) UpdateRegistry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerUrl self, X509CertificateEnrollmentContext context) RemoveFromRegistry;
		}
	}
	[CRepr]
	public struct IX509PolicyServerListManager : IDispatch
	{
		public const new Guid IID = .(0x884e204b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509PolicyServerUrl* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509PolicyServerUrl* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT Initialize(X509CertificateEnrollmentContext context, PolicyServerUrlFlags Flags) mut => VT.Initialize(ref this, context, Flags);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, int32 Index, out IX509PolicyServerUrl* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, IX509PolicyServerUrl* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509PolicyServerListManager self, X509CertificateEnrollmentContext context, PolicyServerUrlFlags Flags) Initialize;
		}
	}
	[CRepr]
	public struct IX509CertificateRequest : IDispatch
	{
		public const new Guid IID = .(0x728ab341, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut => VT.Initialize(ref this, Context);
		public HRESULT Encode() mut => VT.Encode(ref this);
		public HRESULT ResetForEncode() mut => VT.ResetForEncode(ref this);
		public HRESULT GetInnerRequest(InnerRequestLevel Level, out IX509CertificateRequest* ppValue) mut => VT.GetInnerRequest(ref this, Level, out ppValue);
		public HRESULT get_Type(out X509RequestType pValue) mut => VT.get_Type(ref this, out pValue);
		public HRESULT get_EnrollmentContext(out X509CertificateEnrollmentContext pValue) mut => VT.get_EnrollmentContext(ref this, out pValue);
		public HRESULT get_Silent(out int16 pValue) mut => VT.get_Silent(ref this, out pValue);
		public HRESULT put_Silent(int16 Value) mut => VT.put_Silent(ref this, Value);
		public HRESULT get_ParentWindow(out int32 pValue) mut => VT.get_ParentWindow(ref this, out pValue);
		public HRESULT put_ParentWindow(int32 Value) mut => VT.put_ParentWindow(ref this, Value);
		public HRESULT get_UIContextMessage(out BSTR pValue) mut => VT.get_UIContextMessage(ref this, out pValue);
		public HRESULT put_UIContextMessage(BSTR Value) mut => VT.put_UIContextMessage(ref this, Value);
		public HRESULT get_SuppressDefaults(out int16 pValue) mut => VT.get_SuppressDefaults(ref this, out pValue);
		public HRESULT put_SuppressDefaults(int16 Value) mut => VT.put_SuppressDefaults(ref this, Value);
		public HRESULT get_RenewalCertificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_RenewalCertificate(ref this, Encoding, out pValue);
		public HRESULT put_RenewalCertificate(EncodingType Encoding, BSTR Value) mut => VT.put_RenewalCertificate(ref this, Encoding, Value);
		public HRESULT get_ClientId(out RequestClientInfoClientId pValue) mut => VT.get_ClientId(ref this, out pValue);
		public HRESULT put_ClientId(RequestClientInfoClientId Value) mut => VT.put_ClientId(ref this, Value);
		public HRESULT get_CspInformations(out ICspInformations* ppValue) mut => VT.get_CspInformations(ref this, out ppValue);
		public HRESULT put_CspInformations(ICspInformations* pValue) mut => VT.put_CspInformations(ref this, pValue);
		public HRESULT get_HashAlgorithm(out IObjectId* ppValue) mut => VT.get_HashAlgorithm(ref this, out ppValue);
		public HRESULT put_HashAlgorithm(IObjectId* pValue) mut => VT.put_HashAlgorithm(ref this, pValue);
		public HRESULT get_AlternateSignatureAlgorithm(out int16 pValue) mut => VT.get_AlternateSignatureAlgorithm(ref this, out pValue);
		public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut => VT.put_AlternateSignatureAlgorithm(ref this, Value);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, X509CertificateEnrollmentContext Context) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self) Encode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self) ResetForEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, InnerRequestLevel Level, out IX509CertificateRequest* ppValue) GetInnerRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out X509RequestType pValue) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out X509CertificateEnrollmentContext pValue) get_EnrollmentContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out int16 pValue) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, int16 Value) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out int32 pValue) get_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, int32 Value) put_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out BSTR pValue) get_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, BSTR Value) put_UIContextMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out int16 pValue) get_SuppressDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, int16 Value) put_SuppressDefaults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, EncodingType Encoding, out BSTR pValue) get_RenewalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, EncodingType Encoding, BSTR Value) put_RenewalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out RequestClientInfoClientId pValue) get_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, RequestClientInfoClientId Value) put_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out ICspInformations* ppValue) get_CspInformations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, ICspInformations* pValue) put_CspInformations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out IObjectId* ppValue) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, IObjectId* pValue) put_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, out int16 pValue) get_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, int16 Value) put_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequest self, EncodingType Encoding, out BSTR pValue) get_RawData;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs10 : IX509CertificateRequest
	{
		public const new Guid IID = .(0x728ab342, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut => VT.InitializeFromTemplateName(ref this, Context, strTemplateName);
		public HRESULT InitializeFromPrivateKey(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, BSTR strTemplateName) mut => VT.InitializeFromPrivateKey(ref this, Context, pPrivateKey, strTemplateName);
		public HRESULT InitializeFromPublicKey(X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, BSTR strTemplateName) mut => VT.InitializeFromPublicKey(ref this, Context, pPublicKey, strTemplateName);
		public HRESULT InitializeFromCertificate(X509CertificateEnrollmentContext Context, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) mut => VT.InitializeFromCertificate(ref this, Context, strCertificate, Encoding, InheritOptions);
		public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut => VT.InitializeDecode(ref this, strEncodedData, Encoding);
		public HRESULT CheckSignature(Pkcs10AllowedSignatureTypes AllowedSignatureTypes) mut => VT.CheckSignature(ref this, AllowedSignatureTypes);
		public HRESULT IsSmartCard(out int16 pValue) mut => VT.IsSmartCard(ref this, out pValue);
		public HRESULT get_TemplateObjectId(out IObjectId* ppValue) mut => VT.get_TemplateObjectId(ref this, out ppValue);
		public HRESULT get_PublicKey(out IX509PublicKey* ppValue) mut => VT.get_PublicKey(ref this, out ppValue);
		public HRESULT get_PrivateKey(out IX509PrivateKey* ppValue) mut => VT.get_PrivateKey(ref this, out ppValue);
		public HRESULT get_NullSigned(out int16 pValue) mut => VT.get_NullSigned(ref this, out pValue);
		public HRESULT get_ReuseKey(out int16 pValue) mut => VT.get_ReuseKey(ref this, out pValue);
		public HRESULT get_OldCertificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_OldCertificate(ref this, Encoding, out pValue);
		public HRESULT get_Subject(out IX500DistinguishedName* ppValue) mut => VT.get_Subject(ref this, out ppValue);
		public HRESULT put_Subject(IX500DistinguishedName* pValue) mut => VT.put_Subject(ref this, pValue);
		public HRESULT get_CspStatuses(out ICspStatuses* ppValue) mut => VT.get_CspStatuses(ref this, out ppValue);
		public HRESULT get_SmimeCapabilities(out int16 pValue) mut => VT.get_SmimeCapabilities(ref this, out pValue);
		public HRESULT put_SmimeCapabilities(int16 Value) mut => VT.put_SmimeCapabilities(ref this, Value);
		public HRESULT get_SignatureInformation(out IX509SignatureInformation* ppValue) mut => VT.get_SignatureInformation(ref this, out ppValue);
		public HRESULT get_KeyContainerNamePrefix(out BSTR pValue) mut => VT.get_KeyContainerNamePrefix(ref this, out pValue);
		public HRESULT put_KeyContainerNamePrefix(BSTR Value) mut => VT.put_KeyContainerNamePrefix(ref this, Value);
		public HRESULT get_CryptAttributes(out ICryptAttributes* ppValue) mut => VT.get_CryptAttributes(ref this, out ppValue);
		public HRESULT get_X509Extensions(out IX509Extensions* ppValue) mut => VT.get_X509Extensions(ref this, out ppValue);
		public HRESULT get_CriticalExtensions(out IObjectIds* ppValue) mut => VT.get_CriticalExtensions(ref this, out ppValue);
		public HRESULT get_SuppressOids(out IObjectIds* ppValue) mut => VT.get_SuppressOids(ref this, out ppValue);
		public HRESULT get_RawDataToBeSigned(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawDataToBeSigned(ref this, Encoding, out pValue);
		public HRESULT get_Signature(EncodingType Encoding, out BSTR pValue) mut => VT.get_Signature(ref this, Encoding, out pValue);
		public HRESULT GetCspStatuses(X509KeySpec KeySpec, out ICspStatuses* ppCspStatuses) mut => VT.GetCspStatuses(ref this, KeySpec, out ppCspStatuses);

		[CRepr]
		public struct VTable : IX509CertificateRequest.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, BSTR strTemplateName) InitializeFromPrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, BSTR strTemplateName) InitializeFromPublicKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, X509CertificateEnrollmentContext Context, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) InitializeFromCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, Pkcs10AllowedSignatureTypes AllowedSignatureTypes) CheckSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out int16 pValue) IsSmartCard;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IObjectId* ppValue) get_TemplateObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IX509PublicKey* ppValue) get_PublicKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IX509PrivateKey* ppValue) get_PrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out int16 pValue) get_NullSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out int16 pValue) get_ReuseKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, EncodingType Encoding, out BSTR pValue) get_OldCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IX500DistinguishedName* ppValue) get_Subject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, IX500DistinguishedName* pValue) put_Subject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out ICspStatuses* ppValue) get_CspStatuses;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out int16 pValue) get_SmimeCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, int16 Value) put_SmimeCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IX509SignatureInformation* ppValue) get_SignatureInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out BSTR pValue) get_KeyContainerNamePrefix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, BSTR Value) put_KeyContainerNamePrefix;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out ICryptAttributes* ppValue) get_CryptAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IX509Extensions* ppValue) get_X509Extensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IObjectIds* ppValue) get_CriticalExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, out IObjectIds* ppValue) get_SuppressOids;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, EncodingType Encoding, out BSTR pValue) get_RawDataToBeSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, EncodingType Encoding, out BSTR pValue) get_Signature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10 self, X509KeySpec KeySpec, out ICspStatuses* ppCspStatuses) GetCspStatuses;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs10V2 : IX509CertificateRequestPkcs10
	{
		public const new Guid IID = .(0x728ab35b, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromTemplate(ref this, context, pPolicyServer, pTemplate);
		public HRESULT InitializeFromPrivateKeyTemplate(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromPrivateKeyTemplate(ref this, Context, pPrivateKey, pPolicyServer, pTemplate);
		public HRESULT InitializeFromPublicKeyTemplate(X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromPublicKeyTemplate(ref this, Context, pPublicKey, pPolicyServer, pTemplate);
		public HRESULT get_PolicyServer(out IX509EnrollmentPolicyServer* ppPolicyServer) mut => VT.get_PolicyServer(ref this, out ppPolicyServer);
		public HRESULT get_Template(out IX509CertificateTemplate* ppTemplate) mut => VT.get_Template(ref this, out ppTemplate);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs10.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V2 self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V2 self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPrivateKeyTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V2 self, X509CertificateEnrollmentContext Context, IX509PublicKey* pPublicKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPublicKeyTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V2 self, out IX509EnrollmentPolicyServer* ppPolicyServer) get_PolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V2 self, out IX509CertificateTemplate* ppTemplate) get_Template;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs10V3 : IX509CertificateRequestPkcs10V2
	{
		public const new Guid IID = .(0x54ea9942, 0x3d66, 0x4530, 0xb7, 0x6e, 0x7c, 0x91, 0x70, 0xd3, 0xec, 0x52);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_AttestPrivateKey(out int16 pValue) mut => VT.get_AttestPrivateKey(ref this, out pValue);
		public HRESULT put_AttestPrivateKey(int16 Value) mut => VT.put_AttestPrivateKey(ref this, Value);
		public HRESULT get_AttestationEncryptionCertificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_AttestationEncryptionCertificate(ref this, Encoding, out pValue);
		public HRESULT put_AttestationEncryptionCertificate(EncodingType Encoding, BSTR Value) mut => VT.put_AttestationEncryptionCertificate(ref this, Encoding, Value);
		public HRESULT get_EncryptionAlgorithm(out IObjectId* ppValue) mut => VT.get_EncryptionAlgorithm(ref this, out ppValue);
		public HRESULT put_EncryptionAlgorithm(IObjectId* pValue) mut => VT.put_EncryptionAlgorithm(ref this, pValue);
		public HRESULT get_EncryptionStrength(out int32 pValue) mut => VT.get_EncryptionStrength(ref this, out pValue);
		public HRESULT put_EncryptionStrength(int32 Value) mut => VT.put_EncryptionStrength(ref this, Value);
		public HRESULT get_ChallengePassword(out BSTR pValue) mut => VT.get_ChallengePassword(ref this, out pValue);
		public HRESULT put_ChallengePassword(BSTR Value) mut => VT.put_ChallengePassword(ref this, Value);
		public HRESULT get_NameValuePairs(out IX509NameValuePairs* ppValue) mut => VT.get_NameValuePairs(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs10V2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, out int16 pValue) get_AttestPrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, int16 Value) put_AttestPrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, EncodingType Encoding, out BSTR pValue) get_AttestationEncryptionCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, EncodingType Encoding, BSTR Value) put_AttestationEncryptionCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, out IObjectId* ppValue) get_EncryptionAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, IObjectId* pValue) put_EncryptionAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, out int32 pValue) get_EncryptionStrength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, int32 Value) put_EncryptionStrength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, out BSTR pValue) get_ChallengePassword;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, BSTR Value) put_ChallengePassword;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V3 self, out IX509NameValuePairs* ppValue) get_NameValuePairs;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs10V4 : IX509CertificateRequestPkcs10V3
	{
		public const new Guid IID = .(0x728ab363, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ClaimType(out KeyAttestationClaimType pValue) mut => VT.get_ClaimType(ref this, out pValue);
		public HRESULT put_ClaimType(KeyAttestationClaimType Value) mut => VT.put_ClaimType(ref this, Value);
		public HRESULT get_AttestPrivateKeyPreferred(out int16 pValue) mut => VT.get_AttestPrivateKeyPreferred(ref this, out pValue);
		public HRESULT put_AttestPrivateKeyPreferred(int16 Value) mut => VT.put_AttestPrivateKeyPreferred(ref this, Value);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs10V3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V4 self, out KeyAttestationClaimType pValue) get_ClaimType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V4 self, KeyAttestationClaimType Value) put_ClaimType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V4 self, out int16 pValue) get_AttestPrivateKeyPreferred;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs10V4 self, int16 Value) put_AttestPrivateKeyPreferred;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestCertificate : IX509CertificateRequestPkcs10
	{
		public const new Guid IID = .(0x728ab343, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CheckPublicKeySignature(IX509PublicKey* pPublicKey) mut => VT.CheckPublicKeySignature(ref this, pPublicKey);
		public HRESULT get_Issuer(out IX500DistinguishedName* ppValue) mut => VT.get_Issuer(ref this, out ppValue);
		public HRESULT put_Issuer(IX500DistinguishedName* pValue) mut => VT.put_Issuer(ref this, pValue);
		public HRESULT get_NotBefore(out double pValue) mut => VT.get_NotBefore(ref this, out pValue);
		public HRESULT put_NotBefore(double Value) mut => VT.put_NotBefore(ref this, Value);
		public HRESULT get_NotAfter(out double pValue) mut => VT.get_NotAfter(ref this, out pValue);
		public HRESULT put_NotAfter(double Value) mut => VT.put_NotAfter(ref this, Value);
		public HRESULT get_SerialNumber(EncodingType Encoding, out BSTR pValue) mut => VT.get_SerialNumber(ref this, Encoding, out pValue);
		public HRESULT put_SerialNumber(EncodingType Encoding, BSTR Value) mut => VT.put_SerialNumber(ref this, Encoding, Value);
		public HRESULT get_SignerCertificate(out ISignerCertificate* ppValue) mut => VT.get_SignerCertificate(ref this, out ppValue);
		public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut => VT.put_SignerCertificate(ref this, pValue);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs10.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, IX509PublicKey* pPublicKey) CheckPublicKeySignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, out IX500DistinguishedName* ppValue) get_Issuer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, IX500DistinguishedName* pValue) put_Issuer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, out double pValue) get_NotBefore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, double Value) put_NotBefore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, out double pValue) get_NotAfter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, double Value) put_NotAfter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, EncodingType Encoding, out BSTR pValue) get_SerialNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, EncodingType Encoding, BSTR Value) put_SerialNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, out ISignerCertificate* ppValue) get_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate self, ISignerCertificate* pValue) put_SignerCertificate;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestCertificate2 : IX509CertificateRequestCertificate
	{
		public const new Guid IID = .(0x728ab35a, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromTemplate(ref this, context, pPolicyServer, pTemplate);
		public HRESULT InitializeFromPrivateKeyTemplate(X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromPrivateKeyTemplate(ref this, Context, pPrivateKey, pPolicyServer, pTemplate);
		public HRESULT get_PolicyServer(out IX509EnrollmentPolicyServer* ppPolicyServer) mut => VT.get_PolicyServer(ref this, out ppPolicyServer);
		public HRESULT get_Template(out IX509CertificateTemplate* ppTemplate) mut => VT.get_Template(ref this, out ppTemplate);

		[CRepr]
		public struct VTable : IX509CertificateRequestCertificate.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate2 self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate2 self, X509CertificateEnrollmentContext Context, IX509PrivateKey* pPrivateKey, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromPrivateKeyTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate2 self, out IX509EnrollmentPolicyServer* ppPolicyServer) get_PolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCertificate2 self, out IX509CertificateTemplate* ppTemplate) get_Template;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs7 : IX509CertificateRequest
	{
		public const new Guid IID = .(0x728ab344, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut => VT.InitializeFromTemplateName(ref this, Context, strTemplateName);
		public HRESULT InitializeFromCertificate(X509CertificateEnrollmentContext Context, int16 RenewalRequest, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) mut => VT.InitializeFromCertificate(ref this, Context, RenewalRequest, strCertificate, Encoding, InheritOptions);
		public HRESULT InitializeFromInnerRequest(IX509CertificateRequest* pInnerRequest) mut => VT.InitializeFromInnerRequest(ref this, pInnerRequest);
		public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut => VT.InitializeDecode(ref this, strEncodedData, Encoding);
		public HRESULT get_RequesterName(out BSTR pValue) mut => VT.get_RequesterName(ref this, out pValue);
		public HRESULT put_RequesterName(BSTR Value) mut => VT.put_RequesterName(ref this, Value);
		public HRESULT get_SignerCertificate(out ISignerCertificate* ppValue) mut => VT.get_SignerCertificate(ref this, out ppValue);
		public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut => VT.put_SignerCertificate(ref this, pValue);

		[CRepr]
		public struct VTable : IX509CertificateRequest.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, X509CertificateEnrollmentContext Context, int16 RenewalRequest, BSTR strCertificate, EncodingType Encoding, X509RequestInheritOptions InheritOptions) InitializeFromCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, IX509CertificateRequest* pInnerRequest) InitializeFromInnerRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, out BSTR pValue) get_RequesterName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, BSTR Value) put_RequesterName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, out ISignerCertificate* ppValue) get_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7 self, ISignerCertificate* pValue) put_SignerCertificate;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestPkcs7V2 : IX509CertificateRequestPkcs7
	{
		public const new Guid IID = .(0x728ab35c, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromTemplate(ref this, context, pPolicyServer, pTemplate);
		public HRESULT get_PolicyServer(out IX509EnrollmentPolicyServer* ppPolicyServer) mut => VT.get_PolicyServer(ref this, out ppPolicyServer);
		public HRESULT get_Template(out IX509CertificateTemplate* ppTemplate) mut => VT.get_Template(ref this, out ppTemplate);
		public HRESULT CheckCertificateSignature(int16 ValidateCertificateChain) mut => VT.CheckCertificateSignature(ref this, ValidateCertificateChain);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs7.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7V2 self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7V2 self, out IX509EnrollmentPolicyServer* ppPolicyServer) get_PolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7V2 self, out IX509CertificateTemplate* ppTemplate) get_Template;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestPkcs7V2 self, int16 ValidateCertificateChain) CheckCertificateSignature;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestCmc : IX509CertificateRequestPkcs7
	{
		public const new Guid IID = .(0x728ab345, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromInnerRequestTemplateName(IX509CertificateRequest* pInnerRequest, BSTR strTemplateName) mut => VT.InitializeFromInnerRequestTemplateName(ref this, pInnerRequest, strTemplateName);
		public HRESULT get_TemplateObjectId(out IObjectId* ppValue) mut => VT.get_TemplateObjectId(ref this, out ppValue);
		public HRESULT get_NullSigned(out int16 pValue) mut => VT.get_NullSigned(ref this, out pValue);
		public HRESULT get_CryptAttributes(out ICryptAttributes* ppValue) mut => VT.get_CryptAttributes(ref this, out ppValue);
		public HRESULT get_NameValuePairs(out IX509NameValuePairs* ppValue) mut => VT.get_NameValuePairs(ref this, out ppValue);
		public HRESULT get_X509Extensions(out IX509Extensions* ppValue) mut => VT.get_X509Extensions(ref this, out ppValue);
		public HRESULT get_CriticalExtensions(out IObjectIds* ppValue) mut => VT.get_CriticalExtensions(ref this, out ppValue);
		public HRESULT get_SuppressOids(out IObjectIds* ppValue) mut => VT.get_SuppressOids(ref this, out ppValue);
		public HRESULT get_TransactionId(out int32 pValue) mut => VT.get_TransactionId(ref this, out pValue);
		public HRESULT put_TransactionId(int32 Value) mut => VT.put_TransactionId(ref this, Value);
		public HRESULT get_SenderNonce(EncodingType Encoding, out BSTR pValue) mut => VT.get_SenderNonce(ref this, Encoding, out pValue);
		public HRESULT put_SenderNonce(EncodingType Encoding, BSTR Value) mut => VT.put_SenderNonce(ref this, Encoding, Value);
		public HRESULT get_SignatureInformation(out IX509SignatureInformation* ppValue) mut => VT.get_SignatureInformation(ref this, out ppValue);
		public HRESULT get_ArchivePrivateKey(out int16 pValue) mut => VT.get_ArchivePrivateKey(ref this, out pValue);
		public HRESULT put_ArchivePrivateKey(int16 Value) mut => VT.put_ArchivePrivateKey(ref this, Value);
		public HRESULT get_KeyArchivalCertificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_KeyArchivalCertificate(ref this, Encoding, out pValue);
		public HRESULT put_KeyArchivalCertificate(EncodingType Encoding, BSTR Value) mut => VT.put_KeyArchivalCertificate(ref this, Encoding, Value);
		public HRESULT get_EncryptionAlgorithm(out IObjectId* ppValue) mut => VT.get_EncryptionAlgorithm(ref this, out ppValue);
		public HRESULT put_EncryptionAlgorithm(IObjectId* pValue) mut => VT.put_EncryptionAlgorithm(ref this, pValue);
		public HRESULT get_EncryptionStrength(out int32 pValue) mut => VT.get_EncryptionStrength(ref this, out pValue);
		public HRESULT put_EncryptionStrength(int32 Value) mut => VT.put_EncryptionStrength(ref this, Value);
		public HRESULT get_EncryptedKeyHash(EncodingType Encoding, out BSTR pValue) mut => VT.get_EncryptedKeyHash(ref this, Encoding, out pValue);
		public HRESULT get_SignerCertificates(out ISignerCertificates* ppValue) mut => VT.get_SignerCertificates(ref this, out ppValue);

		[CRepr]
		public struct VTable : IX509CertificateRequestPkcs7.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, IX509CertificateRequest* pInnerRequest, BSTR strTemplateName) InitializeFromInnerRequestTemplateName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IObjectId* ppValue) get_TemplateObjectId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out int16 pValue) get_NullSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out ICryptAttributes* ppValue) get_CryptAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IX509NameValuePairs* ppValue) get_NameValuePairs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IX509Extensions* ppValue) get_X509Extensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IObjectIds* ppValue) get_CriticalExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IObjectIds* ppValue) get_SuppressOids;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out int32 pValue) get_TransactionId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, int32 Value) put_TransactionId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, EncodingType Encoding, out BSTR pValue) get_SenderNonce;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, EncodingType Encoding, BSTR Value) put_SenderNonce;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IX509SignatureInformation* ppValue) get_SignatureInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out int16 pValue) get_ArchivePrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, int16 Value) put_ArchivePrivateKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, EncodingType Encoding, out BSTR pValue) get_KeyArchivalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, EncodingType Encoding, BSTR Value) put_KeyArchivalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out IObjectId* ppValue) get_EncryptionAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, IObjectId* pValue) put_EncryptionAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out int32 pValue) get_EncryptionStrength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, int32 Value) put_EncryptionStrength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, EncodingType Encoding, out BSTR pValue) get_EncryptedKeyHash;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc self, out ISignerCertificates* ppValue) get_SignerCertificates;
		}
	}
	[CRepr]
	public struct IX509CertificateRequestCmc2 : IX509CertificateRequestCmc
	{
		public const new Guid IID = .(0x728ab35d, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromTemplate(ref this, context, pPolicyServer, pTemplate);
		public HRESULT InitializeFromInnerRequestTemplate(IX509CertificateRequest* pInnerRequest, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromInnerRequestTemplate(ref this, pInnerRequest, pPolicyServer, pTemplate);
		public HRESULT get_PolicyServer(out IX509EnrollmentPolicyServer* ppPolicyServer) mut => VT.get_PolicyServer(ref this, out ppPolicyServer);
		public HRESULT get_Template(out IX509CertificateTemplate* ppTemplate) mut => VT.get_Template(ref this, out ppTemplate);
		public HRESULT CheckSignature(Pkcs10AllowedSignatureTypes AllowedSignatureTypes) mut => VT.CheckSignature(ref this, AllowedSignatureTypes);
		public HRESULT CheckCertificateSignature(ISignerCertificate* pSignerCertificate, int16 ValidateCertificateChain) mut => VT.CheckCertificateSignature(ref this, pSignerCertificate, ValidateCertificateChain);

		[CRepr]
		public struct VTable : IX509CertificateRequestCmc.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, IX509CertificateRequest* pInnerRequest, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromInnerRequestTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, out IX509EnrollmentPolicyServer* ppPolicyServer) get_PolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, out IX509CertificateTemplate* ppTemplate) get_Template;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, Pkcs10AllowedSignatureTypes AllowedSignatureTypes) CheckSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRequestCmc2 self, ISignerCertificate* pSignerCertificate, int16 ValidateCertificateChain) CheckCertificateSignature;
		}
	}
	[CRepr]
	public struct IX509Enrollment : IDispatch
	{
		public const new Guid IID = .(0x728ab346, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut => VT.Initialize(ref this, Context);
		public HRESULT InitializeFromTemplateName(X509CertificateEnrollmentContext Context, BSTR strTemplateName) mut => VT.InitializeFromTemplateName(ref this, Context, strTemplateName);
		public HRESULT InitializeFromRequest(IX509CertificateRequest* pRequest) mut => VT.InitializeFromRequest(ref this, pRequest);
		public HRESULT CreateRequest(EncodingType Encoding, out BSTR pValue) mut => VT.CreateRequest(ref this, Encoding, out pValue);
		public HRESULT Enroll() mut => VT.Enroll(ref this);
		public HRESULT InstallResponse(InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword) mut => VT.InstallResponse(ref this, Restrictions, strResponse, Encoding, strPassword);
		public HRESULT CreatePFX(BSTR strPassword, PFXExportOptions ExportOptions, EncodingType Encoding, out BSTR pValue) mut => VT.CreatePFX(ref this, strPassword, ExportOptions, Encoding, out pValue);
		public HRESULT get_Request(out IX509CertificateRequest* pValue) mut => VT.get_Request(ref this, out pValue);
		public HRESULT get_Silent(out int16 pValue) mut => VT.get_Silent(ref this, out pValue);
		public HRESULT put_Silent(int16 Value) mut => VT.put_Silent(ref this, Value);
		public HRESULT get_ParentWindow(out int32 pValue) mut => VT.get_ParentWindow(ref this, out pValue);
		public HRESULT put_ParentWindow(int32 Value) mut => VT.put_ParentWindow(ref this, Value);
		public HRESULT get_NameValuePairs(out IX509NameValuePairs* ppValue) mut => VT.get_NameValuePairs(ref this, out ppValue);
		public HRESULT get_EnrollmentContext(out X509CertificateEnrollmentContext pValue) mut => VT.get_EnrollmentContext(ref this, out pValue);
		public HRESULT get_Status(out IX509EnrollmentStatus* ppValue) mut => VT.get_Status(ref this, out ppValue);
		public HRESULT get_Certificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_Certificate(ref this, Encoding, out pValue);
		public HRESULT get_Response(EncodingType Encoding, out BSTR pValue) mut => VT.get_Response(ref this, Encoding, out pValue);
		public HRESULT get_CertificateFriendlyName(out BSTR pValue) mut => VT.get_CertificateFriendlyName(ref this, out pValue);
		public HRESULT put_CertificateFriendlyName(BSTR strValue) mut => VT.put_CertificateFriendlyName(ref this, strValue);
		public HRESULT get_CertificateDescription(out BSTR pValue) mut => VT.get_CertificateDescription(ref this, out pValue);
		public HRESULT put_CertificateDescription(BSTR strValue) mut => VT.put_CertificateDescription(ref this, strValue);
		public HRESULT get_RequestId(out int32 pValue) mut => VT.get_RequestId(ref this, out pValue);
		public HRESULT get_CAConfigString(out BSTR pValue) mut => VT.get_CAConfigString(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, X509CertificateEnrollmentContext Context) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, X509CertificateEnrollmentContext Context, BSTR strTemplateName) InitializeFromTemplateName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, IX509CertificateRequest* pRequest) InitializeFromRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, EncodingType Encoding, out BSTR pValue) CreateRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self) Enroll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword) InstallResponse;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, BSTR strPassword, PFXExportOptions ExportOptions, EncodingType Encoding, out BSTR pValue) CreatePFX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out IX509CertificateRequest* pValue) get_Request;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out int16 pValue) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, int16 Value) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out int32 pValue) get_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, int32 Value) put_ParentWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out IX509NameValuePairs* ppValue) get_NameValuePairs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out X509CertificateEnrollmentContext pValue) get_EnrollmentContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out IX509EnrollmentStatus* ppValue) get_Status;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, EncodingType Encoding, out BSTR pValue) get_Certificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, EncodingType Encoding, out BSTR pValue) get_Response;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out BSTR pValue) get_CertificateFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, BSTR strValue) put_CertificateFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out BSTR pValue) get_CertificateDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, BSTR strValue) put_CertificateDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out int32 pValue) get_RequestId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment self, out BSTR pValue) get_CAConfigString;
		}
	}
	[CRepr]
	public struct IX509Enrollment2 : IX509Enrollment
	{
		public const new Guid IID = .(0x728ab350, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromTemplate(X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) mut => VT.InitializeFromTemplate(ref this, context, pPolicyServer, pTemplate);
		public HRESULT InstallResponse2(InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword, BSTR strEnrollmentPolicyServerUrl, BSTR strEnrollmentPolicyServerID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags) mut => VT.InstallResponse2(ref this, Restrictions, strResponse, Encoding, strPassword, strEnrollmentPolicyServerUrl, strEnrollmentPolicyServerID, EnrollmentPolicyServerFlags, authFlags);
		public HRESULT get_PolicyServer(out IX509EnrollmentPolicyServer* ppPolicyServer) mut => VT.get_PolicyServer(ref this, out ppPolicyServer);
		public HRESULT get_Template(out IX509CertificateTemplate* ppTemplate) mut => VT.get_Template(ref this, out ppTemplate);
		public HRESULT get_RequestIdString(out BSTR pValue) mut => VT.get_RequestIdString(ref this, out pValue);

		[CRepr]
		public struct VTable : IX509Enrollment.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment2 self, X509CertificateEnrollmentContext context, IX509EnrollmentPolicyServer* pPolicyServer, IX509CertificateTemplate* pTemplate) InitializeFromTemplate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment2 self, InstallResponseRestrictionFlags Restrictions, BSTR strResponse, EncodingType Encoding, BSTR strPassword, BSTR strEnrollmentPolicyServerUrl, BSTR strEnrollmentPolicyServerID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags) InstallResponse2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment2 self, out IX509EnrollmentPolicyServer* ppPolicyServer) get_PolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment2 self, out IX509CertificateTemplate* ppTemplate) get_Template;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509Enrollment2 self, out BSTR pValue) get_RequestIdString;
		}
	}
	[CRepr]
	public struct IX509EnrollmentHelper : IDispatch
	{
		public const new Guid IID = .(0x728ab351, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddPolicyServer(BSTR strEnrollmentPolicyServerURI, BSTR strEnrollmentPolicyID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) mut => VT.AddPolicyServer(ref this, strEnrollmentPolicyServerURI, strEnrollmentPolicyID, EnrollmentPolicyServerFlags, authFlags, strCredential, strPassword);
		public HRESULT AddEnrollmentServer(BSTR strEnrollmentServerURI, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) mut => VT.AddEnrollmentServer(ref this, strEnrollmentServerURI, authFlags, strCredential, strPassword);
		public HRESULT Enroll(BSTR strEnrollmentPolicyServerURI, BSTR strTemplateName, EncodingType Encoding, WebEnrollmentFlags enrollFlags, out BSTR pstrCertificate) mut => VT.Enroll(ref this, strEnrollmentPolicyServerURI, strTemplateName, Encoding, enrollFlags, out pstrCertificate);
		public HRESULT Initialize(X509CertificateEnrollmentContext Context) mut => VT.Initialize(ref this, Context);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentHelper self, BSTR strEnrollmentPolicyServerURI, BSTR strEnrollmentPolicyID, PolicyServerUrlFlags EnrollmentPolicyServerFlags, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) AddPolicyServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentHelper self, BSTR strEnrollmentServerURI, X509EnrollmentAuthFlags authFlags, BSTR strCredential, BSTR strPassword) AddEnrollmentServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentHelper self, BSTR strEnrollmentPolicyServerURI, BSTR strTemplateName, EncodingType Encoding, WebEnrollmentFlags enrollFlags, out BSTR pstrCertificate) Enroll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentHelper self, X509CertificateEnrollmentContext Context) Initialize;
		}
	}
	[CRepr]
	public struct IX509EnrollmentWebClassFactory : IDispatch
	{
		public const new Guid IID = .(0x728ab349, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateObject(BSTR strProgID, out IUnknown* ppIUnknown) mut => VT.CreateObject(ref this, strProgID, out ppIUnknown);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509EnrollmentWebClassFactory self, BSTR strProgID, out IUnknown* ppIUnknown) CreateObject;
		}
	}
	[CRepr]
	public struct IX509MachineEnrollmentFactory : IDispatch
	{
		public const new Guid IID = .(0x728ab352, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateObject(BSTR strProgID, out IX509EnrollmentHelper* ppIHelper) mut => VT.CreateObject(ref this, strProgID, out ppIHelper);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509MachineEnrollmentFactory self, BSTR strProgID, out IX509EnrollmentHelper* ppIHelper) CreateObject;
		}
	}
	[CRepr]
	public struct IX509CertificateRevocationListEntry : IDispatch
	{
		public const new Guid IID = .(0x728ab35e, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EncodingType Encoding, BSTR SerialNumber, double RevocationDate) mut => VT.Initialize(ref this, Encoding, SerialNumber, RevocationDate);
		public HRESULT get_SerialNumber(EncodingType Encoding, out BSTR pValue) mut => VT.get_SerialNumber(ref this, Encoding, out pValue);
		public HRESULT get_RevocationDate(out double pValue) mut => VT.get_RevocationDate(ref this, out pValue);
		public HRESULT get_RevocationReason(out CRLRevocationReason pValue) mut => VT.get_RevocationReason(ref this, out pValue);
		public HRESULT put_RevocationReason(CRLRevocationReason Value) mut => VT.put_RevocationReason(ref this, Value);
		public HRESULT get_X509Extensions(out IX509Extensions* ppValue) mut => VT.get_X509Extensions(ref this, out ppValue);
		public HRESULT get_CriticalExtensions(out IObjectIds* ppValue) mut => VT.get_CriticalExtensions(ref this, out ppValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, EncodingType Encoding, BSTR SerialNumber, double RevocationDate) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, EncodingType Encoding, out BSTR pValue) get_SerialNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, out double pValue) get_RevocationDate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, out CRLRevocationReason pValue) get_RevocationReason;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, CRLRevocationReason Value) put_RevocationReason;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, out IX509Extensions* ppValue) get_X509Extensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntry self, out IObjectIds* ppValue) get_CriticalExtensions;
		}
	}
	[CRepr]
	public struct IX509CertificateRevocationListEntries : IDispatch
	{
		public const new Guid IID = .(0x728ab35f, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ItemByIndex(int32 Index, out IX509CertificateRevocationListEntry* pVal) mut => VT.get_ItemByIndex(ref this, Index, out pVal);
		public HRESULT get_Count(out int32 pVal) mut => VT.get_Count(ref this, out pVal);
		public HRESULT get__NewEnum(out IUnknown* pVal) mut => VT.get__NewEnum(ref this, out pVal);
		public HRESULT Add(IX509CertificateRevocationListEntry* pVal) mut => VT.Add(ref this, pVal);
		public HRESULT Remove(int32 Index) mut => VT.Remove(ref this, Index);
		public HRESULT Clear() mut => VT.Clear(ref this);
		public HRESULT get_IndexBySerialNumber(EncodingType Encoding, BSTR SerialNumber, out int32 pIndex) mut => VT.get_IndexBySerialNumber(ref this, Encoding, SerialNumber, out pIndex);
		public HRESULT AddRange(IX509CertificateRevocationListEntries* pValue) mut => VT.AddRange(ref this, pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, int32 Index, out IX509CertificateRevocationListEntry* pVal) get_ItemByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, out int32 pVal) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, out IUnknown* pVal) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, IX509CertificateRevocationListEntry* pVal) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, int32 Index) Remove;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self) Clear;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, EncodingType Encoding, BSTR SerialNumber, out int32 pIndex) get_IndexBySerialNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationListEntries self, IX509CertificateRevocationListEntries* pValue) AddRange;
		}
	}
	[CRepr]
	public struct IX509CertificateRevocationList : IDispatch
	{
		public const new Guid IID = .(0x728ab360, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize() mut => VT.Initialize(ref this);
		public HRESULT InitializeDecode(BSTR strEncodedData, EncodingType Encoding) mut => VT.InitializeDecode(ref this, strEncodedData, Encoding);
		public HRESULT Encode() mut => VT.Encode(ref this);
		public HRESULT ResetForEncode() mut => VT.ResetForEncode(ref this);
		public HRESULT CheckPublicKeySignature(IX509PublicKey* pPublicKey) mut => VT.CheckPublicKeySignature(ref this, pPublicKey);
		public HRESULT CheckSignature() mut => VT.CheckSignature(ref this);
		public HRESULT get_Issuer(out IX500DistinguishedName* ppValue) mut => VT.get_Issuer(ref this, out ppValue);
		public HRESULT put_Issuer(IX500DistinguishedName* pValue) mut => VT.put_Issuer(ref this, pValue);
		public HRESULT get_ThisUpdate(out double pValue) mut => VT.get_ThisUpdate(ref this, out pValue);
		public HRESULT put_ThisUpdate(double Value) mut => VT.put_ThisUpdate(ref this, Value);
		public HRESULT get_NextUpdate(out double pValue) mut => VT.get_NextUpdate(ref this, out pValue);
		public HRESULT put_NextUpdate(double Value) mut => VT.put_NextUpdate(ref this, Value);
		public HRESULT get_X509CRLEntries(out IX509CertificateRevocationListEntries* ppValue) mut => VT.get_X509CRLEntries(ref this, out ppValue);
		public HRESULT get_X509Extensions(out IX509Extensions* ppValue) mut => VT.get_X509Extensions(ref this, out ppValue);
		public HRESULT get_CriticalExtensions(out IObjectIds* ppValue) mut => VT.get_CriticalExtensions(ref this, out ppValue);
		public HRESULT get_SignerCertificate(out ISignerCertificate* ppValue) mut => VT.get_SignerCertificate(ref this, out ppValue);
		public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut => VT.put_SignerCertificate(ref this, pValue);
		public HRESULT get_CRLNumber(EncodingType Encoding, out BSTR pValue) mut => VT.get_CRLNumber(ref this, Encoding, out pValue);
		public HRESULT put_CRLNumber(EncodingType Encoding, BSTR Value) mut => VT.put_CRLNumber(ref this, Encoding, Value);
		public HRESULT get_CAVersion(out int32 pValue) mut => VT.get_CAVersion(ref this, out pValue);
		public HRESULT put_CAVersion(int32 pValue) mut => VT.put_CAVersion(ref this, pValue);
		public HRESULT get_BaseCRL(out int16 pValue) mut => VT.get_BaseCRL(ref this, out pValue);
		public HRESULT get_NullSigned(out int16 pValue) mut => VT.get_NullSigned(ref this, out pValue);
		public HRESULT get_HashAlgorithm(out IObjectId* ppValue) mut => VT.get_HashAlgorithm(ref this, out ppValue);
		public HRESULT put_HashAlgorithm(IObjectId* pValue) mut => VT.put_HashAlgorithm(ref this, pValue);
		public HRESULT get_AlternateSignatureAlgorithm(out int16 pValue) mut => VT.get_AlternateSignatureAlgorithm(ref this, out pValue);
		public HRESULT put_AlternateSignatureAlgorithm(int16 Value) mut => VT.put_AlternateSignatureAlgorithm(ref this, Value);
		public HRESULT get_SignatureInformation(out IX509SignatureInformation* ppValue) mut => VT.get_SignatureInformation(ref this, out ppValue);
		public HRESULT get_RawData(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawData(ref this, Encoding, out pValue);
		public HRESULT get_RawDataToBeSigned(EncodingType Encoding, out BSTR pValue) mut => VT.get_RawDataToBeSigned(ref this, Encoding, out pValue);
		public HRESULT get_Signature(EncodingType Encoding, out BSTR pValue) mut => VT.get_Signature(ref this, Encoding, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, BSTR strEncodedData, EncodingType Encoding) InitializeDecode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self) Encode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self) ResetForEncode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, IX509PublicKey* pPublicKey) CheckPublicKeySignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self) CheckSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IX500DistinguishedName* ppValue) get_Issuer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, IX500DistinguishedName* pValue) put_Issuer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out double pValue) get_ThisUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, double Value) put_ThisUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out double pValue) get_NextUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, double Value) put_NextUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IX509CertificateRevocationListEntries* ppValue) get_X509CRLEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IX509Extensions* ppValue) get_X509Extensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IObjectIds* ppValue) get_CriticalExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out ISignerCertificate* ppValue) get_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, ISignerCertificate* pValue) put_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, EncodingType Encoding, out BSTR pValue) get_CRLNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, EncodingType Encoding, BSTR Value) put_CRLNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out int32 pValue) get_CAVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, int32 pValue) put_CAVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out int16 pValue) get_BaseCRL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out int16 pValue) get_NullSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IObjectId* ppValue) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, IObjectId* pValue) put_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out int16 pValue) get_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, int16 Value) put_AlternateSignatureAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, out IX509SignatureInformation* ppValue) get_SignatureInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, EncodingType Encoding, out BSTR pValue) get_RawData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, EncodingType Encoding, out BSTR pValue) get_RawDataToBeSigned;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509CertificateRevocationList self, EncodingType Encoding, out BSTR pValue) get_Signature;
		}
	}
	[CRepr]
	public struct ICertificateAttestationChallenge : IDispatch
	{
		public const new Guid IID = .(0x6f175a7c, 0x4a3a, 0x40ae, 0x9d, 0xba, 0x59, 0x2f, 0xd6, 0xbb, 0xf9, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(EncodingType Encoding, BSTR strPendingFullCmcResponseWithChallenge) mut => VT.Initialize(ref this, Encoding, strPendingFullCmcResponseWithChallenge);
		public HRESULT DecryptChallenge(EncodingType Encoding, out BSTR pstrEnvelopedPkcs7ReencryptedToCA) mut => VT.DecryptChallenge(ref this, Encoding, out pstrEnvelopedPkcs7ReencryptedToCA);
		public HRESULT get_RequestID(out BSTR pstrRequestID) mut => VT.get_RequestID(ref this, out pstrRequestID);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateAttestationChallenge self, EncodingType Encoding, BSTR strPendingFullCmcResponseWithChallenge) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateAttestationChallenge self, EncodingType Encoding, out BSTR pstrEnvelopedPkcs7ReencryptedToCA) DecryptChallenge;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateAttestationChallenge self, out BSTR pstrRequestID) get_RequestID;
		}
	}
	[CRepr]
	public struct ICertificateAttestationChallenge2 : ICertificateAttestationChallenge
	{
		public const new Guid IID = .(0x4631334d, 0xe266, 0x47d6, 0xbd, 0x79, 0xbe, 0x53, 0xcb, 0x2e, 0x27, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT put_KeyContainerName(BSTR Value) mut => VT.put_KeyContainerName(ref this, Value);
		public HRESULT put_KeyBlob(EncodingType Encoding, BSTR Value) mut => VT.put_KeyBlob(ref this, Encoding, Value);

		[CRepr]
		public struct VTable : ICertificateAttestationChallenge.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateAttestationChallenge2 self, BSTR Value) put_KeyContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertificateAttestationChallenge2 self, EncodingType Encoding, BSTR Value) put_KeyBlob;
		}
	}
	[CRepr]
	public struct IX509SCEPEnrollment : IDispatch
	{
		public const new Guid IID = .(0x728ab361, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IX509CertificateRequestPkcs10* pRequest, BSTR strThumbprint, EncodingType ThumprintEncoding, BSTR strServerCertificates, EncodingType Encoding) mut => VT.Initialize(ref this, pRequest, strThumbprint, ThumprintEncoding, strServerCertificates, Encoding);
		public HRESULT InitializeForPending(X509CertificateEnrollmentContext Context) mut => VT.InitializeForPending(ref this, Context);
		public HRESULT CreateRequestMessage(EncodingType Encoding, out BSTR pValue) mut => VT.CreateRequestMessage(ref this, Encoding, out pValue);
		public HRESULT CreateRetrievePendingMessage(EncodingType Encoding, out BSTR pValue) mut => VT.CreateRetrievePendingMessage(ref this, Encoding, out pValue);
		public HRESULT CreateRetrieveCertificateMessage(X509CertificateEnrollmentContext Context, BSTR strIssuer, EncodingType IssuerEncoding, BSTR strSerialNumber, EncodingType SerialNumberEncoding, EncodingType Encoding, out BSTR pValue) mut => VT.CreateRetrieveCertificateMessage(ref this, Context, strIssuer, IssuerEncoding, strSerialNumber, SerialNumberEncoding, Encoding, out pValue);
		public HRESULT ProcessResponseMessage(BSTR strResponse, EncodingType Encoding, out X509SCEPDisposition pDisposition) mut => VT.ProcessResponseMessage(ref this, strResponse, Encoding, out pDisposition);
		public HRESULT put_ServerCapabilities(BSTR Value) mut => VT.put_ServerCapabilities(ref this, Value);
		public HRESULT get_FailInfo(out X509SCEPFailInfo pValue) mut => VT.get_FailInfo(ref this, out pValue);
		public HRESULT get_SignerCertificate(out ISignerCertificate* ppValue) mut => VT.get_SignerCertificate(ref this, out ppValue);
		public HRESULT put_SignerCertificate(ISignerCertificate* pValue) mut => VT.put_SignerCertificate(ref this, pValue);
		public HRESULT get_OldCertificate(out ISignerCertificate* ppValue) mut => VT.get_OldCertificate(ref this, out ppValue);
		public HRESULT put_OldCertificate(ISignerCertificate* pValue) mut => VT.put_OldCertificate(ref this, pValue);
		public HRESULT get_TransactionId(EncodingType Encoding, out BSTR pValue) mut => VT.get_TransactionId(ref this, Encoding, out pValue);
		public HRESULT put_TransactionId(EncodingType Encoding, BSTR Value) mut => VT.put_TransactionId(ref this, Encoding, Value);
		public HRESULT get_Request(out IX509CertificateRequestPkcs10* ppValue) mut => VT.get_Request(ref this, out ppValue);
		public HRESULT get_CertificateFriendlyName(out BSTR pValue) mut => VT.get_CertificateFriendlyName(ref this, out pValue);
		public HRESULT put_CertificateFriendlyName(BSTR Value) mut => VT.put_CertificateFriendlyName(ref this, Value);
		public HRESULT get_Status(out IX509EnrollmentStatus* ppValue) mut => VT.get_Status(ref this, out ppValue);
		public HRESULT get_Certificate(EncodingType Encoding, out BSTR pValue) mut => VT.get_Certificate(ref this, Encoding, out pValue);
		public HRESULT get_Silent(out int16 pValue) mut => VT.get_Silent(ref this, out pValue);
		public HRESULT put_Silent(int16 Value) mut => VT.put_Silent(ref this, Value);
		public HRESULT DeleteRequest() mut => VT.DeleteRequest(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, IX509CertificateRequestPkcs10* pRequest, BSTR strThumbprint, EncodingType ThumprintEncoding, BSTR strServerCertificates, EncodingType Encoding) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, X509CertificateEnrollmentContext Context) InitializeForPending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, EncodingType Encoding, out BSTR pValue) CreateRequestMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, EncodingType Encoding, out BSTR pValue) CreateRetrievePendingMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, X509CertificateEnrollmentContext Context, BSTR strIssuer, EncodingType IssuerEncoding, BSTR strSerialNumber, EncodingType SerialNumberEncoding, EncodingType Encoding, out BSTR pValue) CreateRetrieveCertificateMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, BSTR strResponse, EncodingType Encoding, out X509SCEPDisposition pDisposition) ProcessResponseMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, BSTR Value) put_ServerCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out X509SCEPFailInfo pValue) get_FailInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out ISignerCertificate* ppValue) get_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, ISignerCertificate* pValue) put_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out ISignerCertificate* ppValue) get_OldCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, ISignerCertificate* pValue) put_OldCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, EncodingType Encoding, out BSTR pValue) get_TransactionId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, EncodingType Encoding, BSTR Value) put_TransactionId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out IX509CertificateRequestPkcs10* ppValue) get_Request;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out BSTR pValue) get_CertificateFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, BSTR Value) put_CertificateFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out IX509EnrollmentStatus* ppValue) get_Status;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, EncodingType Encoding, out BSTR pValue) get_Certificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, out int16 pValue) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self, int16 Value) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment self) DeleteRequest;
		}
	}
	[CRepr]
	public struct IX509SCEPEnrollment2 : IX509SCEPEnrollment
	{
		public const new Guid IID = .(0x728ab364, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateChallengeAnswerMessage(EncodingType Encoding, out BSTR pValue) mut => VT.CreateChallengeAnswerMessage(ref this, Encoding, out pValue);
		public HRESULT ProcessResponseMessage2(X509SCEPProcessMessageFlags Flags, BSTR strResponse, EncodingType Encoding, out X509SCEPDisposition pDisposition) mut => VT.ProcessResponseMessage2(ref this, Flags, strResponse, Encoding, out pDisposition);
		public HRESULT get_ResultMessageText(out BSTR pValue) mut => VT.get_ResultMessageText(ref this, out pValue);
		public HRESULT get_DelayRetry(out DelayRetryAction pValue) mut => VT.get_DelayRetry(ref this, out pValue);
		public HRESULT get_ActivityId(out BSTR pValue) mut => VT.get_ActivityId(ref this, out pValue);
		public HRESULT put_ActivityId(BSTR Value) mut => VT.put_ActivityId(ref this, Value);

		[CRepr]
		public struct VTable : IX509SCEPEnrollment.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, EncodingType Encoding, out BSTR pValue) CreateChallengeAnswerMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, X509SCEPProcessMessageFlags Flags, BSTR strResponse, EncodingType Encoding, out X509SCEPDisposition pDisposition) ProcessResponseMessage2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, out BSTR pValue) get_ResultMessageText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, out DelayRetryAction pValue) get_DelayRetry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, out BSTR pValue) get_ActivityId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollment2 self, BSTR Value) put_ActivityId;
		}
	}
	[CRepr]
	public struct IX509SCEPEnrollmentHelper : IDispatch
	{
		public const new Guid IID = .(0x728ab365, 0x217d, 0x11da, 0xb2, 0xa4, 0x00, 0x0e, 0x7b, 0xbb, 0x2b, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strServerUrl, BSTR strRequestHeaders, IX509CertificateRequestPkcs10* pRequest, BSTR strCACertificateThumbprint) mut => VT.Initialize(ref this, strServerUrl, strRequestHeaders, pRequest, strCACertificateThumbprint);
		public HRESULT InitializeForPending(BSTR strServerUrl, BSTR strRequestHeaders, X509CertificateEnrollmentContext Context, BSTR strTransactionId) mut => VT.InitializeForPending(ref this, strServerUrl, strRequestHeaders, Context, strTransactionId);
		public HRESULT Enroll(X509SCEPProcessMessageFlags ProcessFlags, out X509SCEPDisposition pDisposition) mut => VT.Enroll(ref this, ProcessFlags, out pDisposition);
		public HRESULT FetchPending(X509SCEPProcessMessageFlags ProcessFlags, out X509SCEPDisposition pDisposition) mut => VT.FetchPending(ref this, ProcessFlags, out pDisposition);
		public HRESULT get_X509SCEPEnrollment(out IX509SCEPEnrollment* ppValue) mut => VT.get_X509SCEPEnrollment(ref this, out ppValue);
		public HRESULT get_ResultMessageText(out BSTR pValue) mut => VT.get_ResultMessageText(ref this, out pValue);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, BSTR strServerUrl, BSTR strRequestHeaders, IX509CertificateRequestPkcs10* pRequest, BSTR strCACertificateThumbprint) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, BSTR strServerUrl, BSTR strRequestHeaders, X509CertificateEnrollmentContext Context, BSTR strTransactionId) InitializeForPending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, X509SCEPProcessMessageFlags ProcessFlags, out X509SCEPDisposition pDisposition) Enroll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, X509SCEPProcessMessageFlags ProcessFlags, out X509SCEPDisposition pDisposition) FetchPending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, out IX509SCEPEnrollment* ppValue) get_X509SCEPEnrollment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IX509SCEPEnrollmentHelper self, out BSTR pValue) get_ResultMessageText;
		}
	}
	[CRepr]
	public struct ICertEncodeStringArray : IDispatch
	{
		public const new Guid IID = .(0x12a88820, 0x7494, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetStringType(out int32 pStringType) mut => VT.GetStringType(ref this, out pStringType);
		public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetValue(int32 Index, out BSTR pstr) mut => VT.GetValue(ref this, Index, out pstr);
		public HRESULT Reset(int32 Count, CERT_RDN_ATTR_VALUE_TYPE StringType) mut => VT.Reset(ref this, Count, StringType);
		public HRESULT SetValue(int32 Index, BSTR str) mut => VT.SetValue(ref this, Index, str);
		public HRESULT Encode(out BSTR pstrBinary) mut => VT.Encode(ref this, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, out int32 pStringType) GetStringType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, out int32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, int32 Index, out BSTR pstr) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, int32 Count, CERT_RDN_ATTR_VALUE_TYPE StringType) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, int32 Index, BSTR str) SetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray self, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeStringArray2 : ICertEncodeStringArray
	{
		public const new Guid IID = .(0x9c680d93, 0x9b7d, 0x4e95, 0x90, 0x18, 0x4f, 0xfe, 0x10, 0xba, 0x5a, 0xda);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, Encoding, out pstrEncodedData);

		[CRepr]
		public struct VTable : ICertEncodeStringArray.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeStringArray2 self, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
		}
	}
	[CRepr]
	public struct ICertEncodeLongArray : IDispatch
	{
		public const new Guid IID = .(0x15e2f230, 0xa0a2, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetValue(int32 Index, out int32 pValue) mut => VT.GetValue(ref this, Index, out pValue);
		public HRESULT Reset(int32 Count) mut => VT.Reset(ref this, Count);
		public HRESULT SetValue(int32 Index, int32 Value) mut => VT.SetValue(ref this, Index, Value);
		public HRESULT Encode(out BSTR pstrBinary) mut => VT.Encode(ref this, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, out int32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, int32 Index, out int32 pValue) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, int32 Count) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, int32 Index, int32 Value) SetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray self, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeLongArray2 : ICertEncodeLongArray
	{
		public const new Guid IID = .(0x4efde84a, 0xbd9b, 0x4fc2, 0xa1, 0x08, 0xc3, 0x47, 0xd4, 0x78, 0x84, 0x0f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, Encoding, out pstrEncodedData);

		[CRepr]
		public struct VTable : ICertEncodeLongArray.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeLongArray2 self, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
		}
	}
	[CRepr]
	public struct ICertEncodeDateArray : IDispatch
	{
		public const new Guid IID = .(0x2f9469a0, 0xa470, 0x11d0, 0x88, 0x21, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetCount(out int32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetValue(int32 Index, out double pValue) mut => VT.GetValue(ref this, Index, out pValue);
		public HRESULT Reset(int32 Count) mut => VT.Reset(ref this, Count);
		public HRESULT SetValue(int32 Index, double Value) mut => VT.SetValue(ref this, Index, Value);
		public HRESULT Encode(out BSTR pstrBinary) mut => VT.Encode(ref this, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, out int32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, int32 Index, out double pValue) GetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, int32 Count) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, int32 Index, double Value) SetValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray self, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeDateArray2 : ICertEncodeDateArray
	{
		public const new Guid IID = .(0x99a4edb5, 0x2b8e, 0x448d, 0xbf, 0x95, 0xbb, 0xa8, 0xd7, 0x78, 0x9d, 0xc8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, Encoding, out pstrEncodedData);

		[CRepr]
		public struct VTable : ICertEncodeDateArray.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeDateArray2 self, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
		}
	}
	[CRepr]
	public struct ICertEncodeCRLDistInfo : IDispatch
	{
		public const new Guid IID = .(0x01958640, 0xbbff, 0x11d0, 0x88, 0x25, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetDistPointCount(out int32 pDistPointCount) mut => VT.GetDistPointCount(ref this, out pDistPointCount);
		public HRESULT GetNameCount(int32 DistPointIndex, out int32 pNameCount) mut => VT.GetNameCount(ref this, DistPointIndex, out pNameCount);
		public HRESULT GetNameChoice(int32 DistPointIndex, int32 NameIndex, out int32 pNameChoice) mut => VT.GetNameChoice(ref this, DistPointIndex, NameIndex, out pNameChoice);
		public HRESULT GetName(int32 DistPointIndex, int32 NameIndex, out BSTR pstrName) mut => VT.GetName(ref this, DistPointIndex, NameIndex, out pstrName);
		public HRESULT Reset(int32 DistPointCount) mut => VT.Reset(ref this, DistPointCount);
		public HRESULT SetNameCount(int32 DistPointIndex, int32 NameCount) mut => VT.SetNameCount(ref this, DistPointIndex, NameCount);
		public HRESULT SetNameEntry(int32 DistPointIndex, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) mut => VT.SetNameEntry(ref this, DistPointIndex, NameIndex, NameChoice, strName);
		public HRESULT Encode(out BSTR pstrBinary) mut => VT.Encode(ref this, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, out int32 pDistPointCount) GetDistPointCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointIndex, out int32 pNameCount) GetNameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointIndex, int32 NameIndex, out int32 pNameChoice) GetNameChoice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointIndex, int32 NameIndex, out BSTR pstrName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointCount) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointIndex, int32 NameCount) SetNameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, int32 DistPointIndex, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) SetNameEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo self, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeCRLDistInfo2 : ICertEncodeCRLDistInfo
	{
		public const new Guid IID = .(0xb4275d4b, 0x3e30, 0x446f, 0xad, 0x36, 0x09, 0xd0, 0x31, 0x20, 0xb0, 0x78);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, Encoding, out pstrEncodedData);

		[CRepr]
		public struct VTable : ICertEncodeCRLDistInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeCRLDistInfo2 self, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
		}
	}
	[CRepr]
	public struct ICertEncodeAltName : IDispatch
	{
		public const new Guid IID = .(0x1c9a8c70, 0x1271, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetNameCount(out int32 pNameCount) mut => VT.GetNameCount(ref this, out pNameCount);
		public HRESULT GetNameChoice(int32 NameIndex, out int32 pNameChoice) mut => VT.GetNameChoice(ref this, NameIndex, out pNameChoice);
		public HRESULT GetName(int32 NameIndex, out BSTR pstrName) mut => VT.GetName(ref this, NameIndex, out pstrName);
		public HRESULT Reset(int32 NameCount) mut => VT.Reset(ref this, NameCount);
		public HRESULT SetNameEntry(int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) mut => VT.SetNameEntry(ref this, NameIndex, NameChoice, strName);
		public HRESULT Encode(out BSTR pstrBinary) mut => VT.Encode(ref this, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, out int32 pNameCount) GetNameCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, int32 NameIndex, out int32 pNameChoice) GetNameChoice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, int32 NameIndex, out BSTR pstrName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, int32 NameCount) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, int32 NameIndex, CERT_ALT_NAME NameChoice, BSTR strName) SetNameEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName self, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeAltName2 : ICertEncodeAltName
	{
		public const new Guid IID = .(0xf67fe177, 0x5ef1, 0x4535, 0xb4, 0xce, 0x29, 0xdf, 0x15, 0xe2, 0xe0, 0xc3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, Encoding, out pstrEncodedData);
		public HRESULT GetNameBlob(int32 NameIndex, EncodingType Encoding, out BSTR pstrName) mut => VT.GetNameBlob(ref this, NameIndex, Encoding, out pstrName);
		public HRESULT SetNameEntryBlob(int32 NameIndex, int32 NameChoice, BSTR strName, EncodingType Encoding) mut => VT.SetNameEntryBlob(ref this, NameIndex, NameChoice, strName, Encoding);

		[CRepr]
		public struct VTable : ICertEncodeAltName.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName2 self, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName2 self, int32 NameIndex, EncodingType Encoding, out BSTR pstrName) GetNameBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeAltName2 self, int32 NameIndex, int32 NameChoice, BSTR strName, EncodingType Encoding) SetNameEntryBlob;
		}
	}
	[CRepr]
	public struct ICertEncodeBitString : IDispatch
	{
		public const new Guid IID = .(0x6db525be, 0x1278, 0x11d1, 0x9b, 0xd4, 0x00, 0xc0, 0x4f, 0xb6, 0x83, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(BSTR strBinary) mut => VT.Decode(ref this, strBinary);
		public HRESULT GetBitCount(out int32 pBitCount) mut => VT.GetBitCount(ref this, out pBitCount);
		public HRESULT GetBitString(out BSTR pstrBitString) mut => VT.GetBitString(ref this, out pstrBitString);
		public HRESULT Encode(int32 BitCount, BSTR strBitString, out BSTR pstrBinary) mut => VT.Encode(ref this, BitCount, strBitString, out pstrBinary);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString self, BSTR strBinary) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString self, out int32 pBitCount) GetBitCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString self, out BSTR pstrBitString) GetBitString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString self, int32 BitCount, BSTR strBitString, out BSTR pstrBinary) Encode;
		}
	}
	[CRepr]
	public struct ICertEncodeBitString2 : ICertEncodeBitString
	{
		public const new Guid IID = .(0xe070d6e7, 0x23ef, 0x4dd2, 0x82, 0x42, 0xeb, 0xd9, 0xc9, 0x28, 0xcb, 0x30);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DecodeBlob(BSTR strEncodedData, EncodingType Encoding) mut => VT.DecodeBlob(ref this, strEncodedData, Encoding);
		public HRESULT EncodeBlob(int32 BitCount, BSTR strBitString, EncodingType EncodingIn, EncodingType Encoding, out BSTR pstrEncodedData) mut => VT.EncodeBlob(ref this, BitCount, strBitString, EncodingIn, Encoding, out pstrEncodedData);
		public HRESULT GetBitStringBlob(EncodingType Encoding, out BSTR pstrBitString) mut => VT.GetBitStringBlob(ref this, Encoding, out pstrBitString);

		[CRepr]
		public struct VTable : ICertEncodeBitString.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString2 self, BSTR strEncodedData, EncodingType Encoding) DecodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString2 self, int32 BitCount, BSTR strBitString, EncodingType EncodingIn, EncodingType Encoding, out BSTR pstrEncodedData) EncodeBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertEncodeBitString2 self, EncodingType Encoding, out BSTR pstrBitString) GetBitStringBlob;
		}
	}
	[CRepr]
	public struct ICertExit : IDispatch
	{
		public const new Guid IID = .(0xe19ae1a0, 0x7364, 0x11d0, 0x88, 0x16, 0x00, 0xa0, 0xc9, 0x03, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(BSTR strConfig, out CERT_EXIT_EVENT_MASK pEventMask) mut => VT.Initialize(ref this, strConfig, out pEventMask);
		public HRESULT Notify(int32 ExitEvent, int32 Context) mut => VT.Notify(ref this, ExitEvent, Context);
		public HRESULT GetDescription(out BSTR pstrDescription) mut => VT.GetDescription(ref this, out pstrDescription);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertExit self, BSTR strConfig, out CERT_EXIT_EVENT_MASK pEventMask) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertExit self, int32 ExitEvent, int32 Context) Notify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertExit self, out BSTR pstrDescription) GetDescription;
		}
	}
	[CRepr]
	public struct ICertExit2 : ICertExit
	{
		public const new Guid IID = .(0x0abf484b, 0xd049, 0x464d, 0xa7, 0xed, 0x55, 0x2e, 0x75, 0x29, 0xb0, 0xff);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetManageModule(out ICertManageModule* ppManageModule) mut => VT.GetManageModule(ref this, out ppManageModule);

		[CRepr]
		public struct VTable : ICertExit.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertExit2 self, out ICertManageModule* ppManageModule) GetManageModule;
		}
	}
	[CRepr]
	public struct ICEnroll : IDispatch
	{
		public const new Guid IID = .(0x43f8f288, 0x7a20, 0x11d0, 0x8f, 0x06, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT createFilePKCS10(BSTR DNName, BSTR Usage, BSTR wszPKCS10FileName) mut => VT.createFilePKCS10(ref this, DNName, Usage, wszPKCS10FileName);
		public HRESULT acceptFilePKCS7(BSTR wszPKCS7FileName) mut => VT.acceptFilePKCS7(ref this, wszPKCS7FileName);
		public HRESULT createPKCS10(BSTR DNName, BSTR Usage, out BSTR pPKCS10) mut => VT.createPKCS10(ref this, DNName, Usage, out pPKCS10);
		public HRESULT acceptPKCS7(BSTR PKCS7) mut => VT.acceptPKCS7(ref this, PKCS7);
		public HRESULT getCertFromPKCS7(BSTR wszPKCS7, out BSTR pbstrCert) mut => VT.getCertFromPKCS7(ref this, wszPKCS7, out pbstrCert);
		public HRESULT enumProviders(int32 dwIndex, int32 dwFlags, out BSTR pbstrProvName) mut => VT.enumProviders(ref this, dwIndex, dwFlags, out pbstrProvName);
		public HRESULT enumContainers(int32 dwIndex, out BSTR pbstr) mut => VT.enumContainers(ref this, dwIndex, out pbstr);
		public HRESULT freeRequestInfo(BSTR PKCS7OrPKCS10) mut => VT.freeRequestInfo(ref this, PKCS7OrPKCS10);
		public HRESULT get_MyStoreName(out BSTR pbstrName) mut => VT.get_MyStoreName(ref this, out pbstrName);
		public HRESULT put_MyStoreName(BSTR bstrName) mut => VT.put_MyStoreName(ref this, bstrName);
		public HRESULT get_MyStoreType(out BSTR pbstrType) mut => VT.get_MyStoreType(ref this, out pbstrType);
		public HRESULT put_MyStoreType(BSTR bstrType) mut => VT.put_MyStoreType(ref this, bstrType);
		public HRESULT get_MyStoreFlags(out int32 pdwFlags) mut => VT.get_MyStoreFlags(ref this, out pdwFlags);
		public HRESULT put_MyStoreFlags(int32 dwFlags) mut => VT.put_MyStoreFlags(ref this, dwFlags);
		public HRESULT get_CAStoreName(out BSTR pbstrName) mut => VT.get_CAStoreName(ref this, out pbstrName);
		public HRESULT put_CAStoreName(BSTR bstrName) mut => VT.put_CAStoreName(ref this, bstrName);
		public HRESULT get_CAStoreType(out BSTR pbstrType) mut => VT.get_CAStoreType(ref this, out pbstrType);
		public HRESULT put_CAStoreType(BSTR bstrType) mut => VT.put_CAStoreType(ref this, bstrType);
		public HRESULT get_CAStoreFlags(out int32 pdwFlags) mut => VT.get_CAStoreFlags(ref this, out pdwFlags);
		public HRESULT put_CAStoreFlags(int32 dwFlags) mut => VT.put_CAStoreFlags(ref this, dwFlags);
		public HRESULT get_RootStoreName(out BSTR pbstrName) mut => VT.get_RootStoreName(ref this, out pbstrName);
		public HRESULT put_RootStoreName(BSTR bstrName) mut => VT.put_RootStoreName(ref this, bstrName);
		public HRESULT get_RootStoreType(out BSTR pbstrType) mut => VT.get_RootStoreType(ref this, out pbstrType);
		public HRESULT put_RootStoreType(BSTR bstrType) mut => VT.put_RootStoreType(ref this, bstrType);
		public HRESULT get_RootStoreFlags(out int32 pdwFlags) mut => VT.get_RootStoreFlags(ref this, out pdwFlags);
		public HRESULT put_RootStoreFlags(int32 dwFlags) mut => VT.put_RootStoreFlags(ref this, dwFlags);
		public HRESULT get_RequestStoreName(out BSTR pbstrName) mut => VT.get_RequestStoreName(ref this, out pbstrName);
		public HRESULT put_RequestStoreName(BSTR bstrName) mut => VT.put_RequestStoreName(ref this, bstrName);
		public HRESULT get_RequestStoreType(out BSTR pbstrType) mut => VT.get_RequestStoreType(ref this, out pbstrType);
		public HRESULT put_RequestStoreType(BSTR bstrType) mut => VT.put_RequestStoreType(ref this, bstrType);
		public HRESULT get_RequestStoreFlags(out int32 pdwFlags) mut => VT.get_RequestStoreFlags(ref this, out pdwFlags);
		public HRESULT put_RequestStoreFlags(int32 dwFlags) mut => VT.put_RequestStoreFlags(ref this, dwFlags);
		public HRESULT get_ContainerName(out BSTR pbstrContainer) mut => VT.get_ContainerName(ref this, out pbstrContainer);
		public HRESULT put_ContainerName(BSTR bstrContainer) mut => VT.put_ContainerName(ref this, bstrContainer);
		public HRESULT get_ProviderName(out BSTR pbstrProvider) mut => VT.get_ProviderName(ref this, out pbstrProvider);
		public HRESULT put_ProviderName(BSTR bstrProvider) mut => VT.put_ProviderName(ref this, bstrProvider);
		public HRESULT get_ProviderType(out int32 pdwType) mut => VT.get_ProviderType(ref this, out pdwType);
		public HRESULT put_ProviderType(int32 dwType) mut => VT.put_ProviderType(ref this, dwType);
		public HRESULT get_KeySpec(out int32 pdw) mut => VT.get_KeySpec(ref this, out pdw);
		public HRESULT put_KeySpec(int32 dw) mut => VT.put_KeySpec(ref this, dw);
		public HRESULT get_ProviderFlags(out int32 pdwFlags) mut => VT.get_ProviderFlags(ref this, out pdwFlags);
		public HRESULT put_ProviderFlags(int32 dwFlags) mut => VT.put_ProviderFlags(ref this, dwFlags);
		public HRESULT get_UseExistingKeySet(out BOOL fUseExistingKeys) mut => VT.get_UseExistingKeySet(ref this, out fUseExistingKeys);
		public HRESULT put_UseExistingKeySet(BOOL fUseExistingKeys) mut => VT.put_UseExistingKeySet(ref this, fUseExistingKeys);
		public HRESULT get_GenKeyFlags(out int32 pdwFlags) mut => VT.get_GenKeyFlags(ref this, out pdwFlags);
		public HRESULT put_GenKeyFlags(int32 dwFlags) mut => VT.put_GenKeyFlags(ref this, dwFlags);
		public HRESULT get_DeleteRequestCert(out BOOL fDelete) mut => VT.get_DeleteRequestCert(ref this, out fDelete);
		public HRESULT put_DeleteRequestCert(BOOL fDelete) mut => VT.put_DeleteRequestCert(ref this, fDelete);
		public HRESULT get_WriteCertToCSP(out BOOL fBool) mut => VT.get_WriteCertToCSP(ref this, out fBool);
		public HRESULT put_WriteCertToCSP(BOOL fBool) mut => VT.put_WriteCertToCSP(ref this, fBool);
		public HRESULT get_SPCFileName(out BSTR pbstr) mut => VT.get_SPCFileName(ref this, out pbstr);
		public HRESULT put_SPCFileName(BSTR bstr) mut => VT.put_SPCFileName(ref this, bstr);
		public HRESULT get_PVKFileName(out BSTR pbstr) mut => VT.get_PVKFileName(ref this, out pbstr);
		public HRESULT put_PVKFileName(BSTR bstr) mut => VT.put_PVKFileName(ref this, bstr);
		public HRESULT get_HashAlgorithm(out BSTR pbstr) mut => VT.get_HashAlgorithm(ref this, out pbstr);
		public HRESULT put_HashAlgorithm(BSTR bstr) mut => VT.put_HashAlgorithm(ref this, bstr);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR DNName, BSTR Usage, BSTR wszPKCS10FileName) createFilePKCS10;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR wszPKCS7FileName) acceptFilePKCS7;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR DNName, BSTR Usage, out BSTR pPKCS10) createPKCS10;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR PKCS7) acceptPKCS7;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR wszPKCS7, out BSTR pbstrCert) getCertFromPKCS7;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwIndex, int32 dwFlags, out BSTR pbstrProvName) enumProviders;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwIndex, out BSTR pbstr) enumContainers;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR PKCS7OrPKCS10) freeRequestInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrName) get_MyStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrName) put_MyStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrType) get_MyStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrType) put_MyStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_MyStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_MyStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrName) get_CAStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrName) put_CAStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrType) get_CAStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrType) put_CAStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_CAStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_CAStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrName) get_RootStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrName) put_RootStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrType) get_RootStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrType) put_RootStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_RootStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_RootStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrName) get_RequestStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrName) put_RequestStoreName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrType) get_RequestStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrType) put_RequestStoreType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_RequestStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_RequestStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrContainer) get_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrContainer) put_ContainerName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstrProvider) get_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstrProvider) put_ProviderName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwType) get_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwType) put_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdw) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dw) put_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_ProviderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_ProviderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BOOL fUseExistingKeys) get_UseExistingKeySet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BOOL fUseExistingKeys) put_UseExistingKeySet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out int32 pdwFlags) get_GenKeyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, int32 dwFlags) put_GenKeyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BOOL fDelete) get_DeleteRequestCert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BOOL fDelete) put_DeleteRequestCert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BOOL fBool) get_WriteCertToCSP;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BOOL fBool) put_WriteCertToCSP;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstr) get_SPCFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstr) put_SPCFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstr) get_PVKFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstr) put_PVKFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, out BSTR pbstr) get_HashAlgorithm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll self, BSTR bstr) put_HashAlgorithm;
		}
	}
	[CRepr]
	public struct ICEnroll2 : ICEnroll
	{
		public const new Guid IID = .(0x704ca730, 0xc90b, 0x11d1, 0x9b, 0xec, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT addCertTypeToRequest(BSTR CertType) mut => VT.addCertTypeToRequest(ref this, CertType);
		public HRESULT addNameValuePairToSignature(BSTR Name, BSTR Value) mut => VT.addNameValuePairToSignature(ref this, Name, Value);
		public HRESULT get_WriteCertToUserDS(out BOOL fBool) mut => VT.get_WriteCertToUserDS(ref this, out fBool);
		public HRESULT put_WriteCertToUserDS(BOOL fBool) mut => VT.put_WriteCertToUserDS(ref this, fBool);
		public HRESULT get_EnableT61DNEncoding(out BOOL fBool) mut => VT.get_EnableT61DNEncoding(ref this, out fBool);
		public HRESULT put_EnableT61DNEncoding(BOOL fBool) mut => VT.put_EnableT61DNEncoding(ref this, fBool);

		[CRepr]
		public struct VTable : ICEnroll.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, BSTR CertType) addCertTypeToRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, BSTR Name, BSTR Value) addNameValuePairToSignature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, out BOOL fBool) get_WriteCertToUserDS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, BOOL fBool) put_WriteCertToUserDS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, out BOOL fBool) get_EnableT61DNEncoding;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll2 self, BOOL fBool) put_EnableT61DNEncoding;
		}
	}
	[CRepr]
	public struct ICEnroll3 : ICEnroll2
	{
		public const new Guid IID = .(0xc28c2d95, 0xb7de, 0x11d2, 0xa4, 0x21, 0x00, 0xc0, 0x4f, 0x79, 0xfe, 0x8e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InstallPKCS7(BSTR PKCS7) mut => VT.InstallPKCS7(ref this, PKCS7);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT GetSupportedKeySpec(out int32 pdwKeySpec) mut => VT.GetSupportedKeySpec(ref this, out pdwKeySpec);
		public HRESULT GetKeyLen(BOOL fMin, BOOL fExchange, out int32 pdwKeySize) mut => VT.GetKeyLen(ref this, fMin, fExchange, out pdwKeySize);
		public HRESULT EnumAlgs(int32 dwIndex, int32 algClass, out int32 pdwAlgID) mut => VT.EnumAlgs(ref this, dwIndex, algClass, out pdwAlgID);
		public HRESULT GetAlgName(int32 algID, out BSTR pbstr) mut => VT.GetAlgName(ref this, algID, out pbstr);
		public HRESULT put_ReuseHardwareKeyIfUnableToGenNew(BOOL fReuseHardwareKeyIfUnableToGenNew) mut => VT.put_ReuseHardwareKeyIfUnableToGenNew(ref this, fReuseHardwareKeyIfUnableToGenNew);
		public HRESULT get_ReuseHardwareKeyIfUnableToGenNew(out BOOL fReuseHardwareKeyIfUnableToGenNew) mut => VT.get_ReuseHardwareKeyIfUnableToGenNew(ref this, out fReuseHardwareKeyIfUnableToGenNew);
		public HRESULT put_HashAlgID(int32 hashAlgID) mut => VT.put_HashAlgID(ref this, hashAlgID);
		public HRESULT get_HashAlgID(out int32 hashAlgID) mut => VT.get_HashAlgID(ref this, out hashAlgID);
		public HRESULT put_LimitExchangeKeyToEncipherment(BOOL fLimitExchangeKeyToEncipherment) mut => VT.put_LimitExchangeKeyToEncipherment(ref this, fLimitExchangeKeyToEncipherment);
		public HRESULT get_LimitExchangeKeyToEncipherment(out BOOL fLimitExchangeKeyToEncipherment) mut => VT.get_LimitExchangeKeyToEncipherment(ref this, out fLimitExchangeKeyToEncipherment);
		public HRESULT put_EnableSMIMECapabilities(BOOL fEnableSMIMECapabilities) mut => VT.put_EnableSMIMECapabilities(ref this, fEnableSMIMECapabilities);
		public HRESULT get_EnableSMIMECapabilities(out BOOL fEnableSMIMECapabilities) mut => VT.get_EnableSMIMECapabilities(ref this, out fEnableSMIMECapabilities);

		[CRepr]
		public struct VTable : ICEnroll2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, BSTR PKCS7) InstallPKCS7;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, out int32 pdwKeySpec) GetSupportedKeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, BOOL fMin, BOOL fExchange, out int32 pdwKeySize) GetKeyLen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, int32 dwIndex, int32 algClass, out int32 pdwAlgID) EnumAlgs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, int32 algID, out BSTR pbstr) GetAlgName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, BOOL fReuseHardwareKeyIfUnableToGenNew) put_ReuseHardwareKeyIfUnableToGenNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, out BOOL fReuseHardwareKeyIfUnableToGenNew) get_ReuseHardwareKeyIfUnableToGenNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, int32 hashAlgID) put_HashAlgID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, out int32 hashAlgID) get_HashAlgID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, BOOL fLimitExchangeKeyToEncipherment) put_LimitExchangeKeyToEncipherment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, out BOOL fLimitExchangeKeyToEncipherment) get_LimitExchangeKeyToEncipherment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, BOOL fEnableSMIMECapabilities) put_EnableSMIMECapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll3 self, out BOOL fEnableSMIMECapabilities) get_EnableSMIMECapabilities;
		}
	}
	[CRepr]
	public struct ICEnroll4 : ICEnroll3
	{
		public const new Guid IID = .(0xc1f1188a, 0x2eb5, 0x4a80, 0x84, 0x1b, 0x7e, 0x72, 0x9a, 0x35, 0x6d, 0x90);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT put_PrivateKeyArchiveCertificate(BSTR bstrCert) mut => VT.put_PrivateKeyArchiveCertificate(ref this, bstrCert);
		public HRESULT get_PrivateKeyArchiveCertificate(out BSTR pbstrCert) mut => VT.get_PrivateKeyArchiveCertificate(ref this, out pbstrCert);
		public HRESULT put_ThumbPrint(BSTR bstrThumbPrint) mut => VT.put_ThumbPrint(ref this, bstrThumbPrint);
		public HRESULT get_ThumbPrint(out BSTR pbstrThumbPrint) mut => VT.get_ThumbPrint(ref this, out pbstrThumbPrint);
		public HRESULT binaryToString(int32 Flags, BSTR strBinary, out BSTR pstrEncoded) mut => VT.binaryToString(ref this, Flags, strBinary, out pstrEncoded);
		public HRESULT stringToBinary(int32 Flags, BSTR strEncoded, out BSTR pstrBinary) mut => VT.stringToBinary(ref this, Flags, strEncoded, out pstrBinary);
		public HRESULT addExtensionToRequest(int32 Flags, BSTR strName, BSTR strValue) mut => VT.addExtensionToRequest(ref this, Flags, strName, strValue);
		public HRESULT addAttributeToRequest(int32 Flags, BSTR strName, BSTR strValue) mut => VT.addAttributeToRequest(ref this, Flags, strName, strValue);
		public HRESULT addNameValuePairToRequest(int32 Flags, BSTR strName, BSTR strValue) mut => VT.addNameValuePairToRequest(ref this, Flags, strName, strValue);
		public HRESULT resetExtensions() mut => VT.resetExtensions(ref this);
		public HRESULT resetAttributes() mut => VT.resetAttributes(ref this);
		public HRESULT createRequest(CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR Usage, out BSTR pstrRequest) mut => VT.createRequest(ref this, Flags, strDNName, Usage, out pstrRequest);
		public HRESULT createFileRequest(CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR strUsage, BSTR strRequestFileName) mut => VT.createFileRequest(ref this, Flags, strDNName, strUsage, strRequestFileName);
		public HRESULT acceptResponse(BSTR strResponse) mut => VT.acceptResponse(ref this, strResponse);
		public HRESULT acceptFileResponse(BSTR strResponseFileName) mut => VT.acceptFileResponse(ref this, strResponseFileName);
		public HRESULT getCertFromResponse(BSTR strResponse, out BSTR pstrCert) mut => VT.getCertFromResponse(ref this, strResponse, out pstrCert);
		public HRESULT getCertFromFileResponse(BSTR strResponseFileName, out BSTR pstrCert) mut => VT.getCertFromFileResponse(ref this, strResponseFileName, out pstrCert);
		public HRESULT createPFX(BSTR strPassword, out BSTR pstrPFX) mut => VT.createPFX(ref this, strPassword, out pstrPFX);
		public HRESULT createFilePFX(BSTR strPassword, BSTR strPFXFileName) mut => VT.createFilePFX(ref this, strPassword, strPFXFileName);
		public HRESULT setPendingRequestInfo(int32 lRequestID, BSTR strCADNS, BSTR strCAName, BSTR strFriendlyName) mut => VT.setPendingRequestInfo(ref this, lRequestID, strCADNS, strCAName, strFriendlyName);
		public HRESULT enumPendingRequest(int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, out VARIANT pvarProperty) mut => VT.enumPendingRequest(ref this, lIndex, lDesiredProperty, out pvarProperty);
		public HRESULT removePendingRequest(BSTR strThumbprint) mut => VT.removePendingRequest(ref this, strThumbprint);
		public HRESULT GetKeyLenEx(XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, out int32 pdwKeySize) mut => VT.GetKeyLenEx(ref this, lSizeSpec, lKeySpec, out pdwKeySize);
		public HRESULT InstallPKCS7Ex(BSTR PKCS7, out int32 plCertInstalled) mut => VT.InstallPKCS7Ex(ref this, PKCS7, out plCertInstalled);
		public HRESULT addCertTypeToRequestEx(ADDED_CERT_TYPE lType, BSTR bstrOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) mut => VT.addCertTypeToRequestEx(ref this, lType, bstrOIDOrName, lMajorVersion, fMinorVersion, lMinorVersion);
		public HRESULT getProviderType(BSTR strProvName, out int32 plProvType) mut => VT.getProviderType(ref this, strProvName, out plProvType);
		public HRESULT put_SignerCertificate(BSTR bstrCert) mut => VT.put_SignerCertificate(ref this, bstrCert);
		public HRESULT put_ClientId(int32 lClientId) mut => VT.put_ClientId(ref this, lClientId);
		public HRESULT get_ClientId(out int32 plClientId) mut => VT.get_ClientId(ref this, out plClientId);
		public HRESULT addBlobPropertyToCertificate(int32 lPropertyId, int32 lReserved, BSTR bstrProperty) mut => VT.addBlobPropertyToCertificate(ref this, lPropertyId, lReserved, bstrProperty);
		public HRESULT resetBlobProperties() mut => VT.resetBlobProperties(ref this);
		public HRESULT put_IncludeSubjectKeyID(BOOL fInclude) mut => VT.put_IncludeSubjectKeyID(ref this, fInclude);
		public HRESULT get_IncludeSubjectKeyID(out BOOL pfInclude) mut => VT.get_IncludeSubjectKeyID(ref this, out pfInclude);

		[CRepr]
		public struct VTable : ICEnroll3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR bstrCert) put_PrivateKeyArchiveCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, out BSTR pbstrCert) get_PrivateKeyArchiveCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR bstrThumbPrint) put_ThumbPrint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, out BSTR pbstrThumbPrint) get_ThumbPrint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 Flags, BSTR strBinary, out BSTR pstrEncoded) binaryToString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 Flags, BSTR strEncoded, out BSTR pstrBinary) stringToBinary;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 Flags, BSTR strName, BSTR strValue) addExtensionToRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 Flags, BSTR strName, BSTR strValue) addAttributeToRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 Flags, BSTR strName, BSTR strValue) addNameValuePairToRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self) resetExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self) resetAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR Usage, out BSTR pstrRequest) createRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, CERT_CREATE_REQUEST_FLAGS Flags, BSTR strDNName, BSTR strUsage, BSTR strRequestFileName) createFileRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strResponse) acceptResponse;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strResponseFileName) acceptFileResponse;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strResponse, out BSTR pstrCert) getCertFromResponse;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strResponseFileName, out BSTR pstrCert) getCertFromFileResponse;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strPassword, out BSTR pstrPFX) createPFX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strPassword, BSTR strPFXFileName) createFilePFX;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 lRequestID, BSTR strCADNS, BSTR strCAName, BSTR strFriendlyName) setPendingRequestInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, out VARIANT pvarProperty) enumPendingRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strThumbprint) removePendingRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, out int32 pdwKeySize) GetKeyLenEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR PKCS7, out int32 plCertInstalled) InstallPKCS7Ex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, ADDED_CERT_TYPE lType, BSTR bstrOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) addCertTypeToRequestEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR strProvName, out int32 plProvType) getProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BSTR bstrCert) put_SignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 lClientId) put_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, out int32 plClientId) get_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, int32 lPropertyId, int32 lReserved, BSTR bstrProperty) addBlobPropertyToCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self) resetBlobProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, BOOL fInclude) put_IncludeSubjectKeyID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICEnroll4 self, out BOOL pfInclude) get_IncludeSubjectKeyID;
		}
	}
	[CRepr]
	public struct IEnroll : IUnknown
	{
		public const new Guid IID = .(0xacaa7838, 0x4585, 0x11d1, 0xab, 0x57, 0x00, 0xc0, 0x4f, 0xc2, 0x95, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT createFilePKCS10WStr(PWSTR DNName, PWSTR Usage, PWSTR wszPKCS10FileName) mut => VT.createFilePKCS10WStr(ref this, DNName, Usage, wszPKCS10FileName);
		public HRESULT acceptFilePKCS7WStr(PWSTR wszPKCS7FileName) mut => VT.acceptFilePKCS7WStr(ref this, wszPKCS7FileName);
		public HRESULT createPKCS10WStr(PWSTR DNName, PWSTR Usage, out CRYPTOAPI_BLOB pPkcs10Blob) mut => VT.createPKCS10WStr(ref this, DNName, Usage, out pPkcs10Blob);
		public HRESULT acceptPKCS7Blob(out CRYPTOAPI_BLOB pBlobPKCS7) mut => VT.acceptPKCS7Blob(ref this, out pBlobPKCS7);
		public CERT_CONTEXT* getCertContextFromPKCS7(out CRYPTOAPI_BLOB pBlobPKCS7) mut => VT.getCertContextFromPKCS7(ref this, out pBlobPKCS7);
		public HCERTSTORE getMyStore() mut => VT.getMyStore(ref this);
		public HCERTSTORE getCAStore() mut => VT.getCAStore(ref this);
		public HCERTSTORE getROOTHStore() mut => VT.getROOTHStore(ref this);
		public HRESULT enumProvidersWStr(int32 dwIndex, int32 dwFlags, out PWSTR pbstrProvName) mut => VT.enumProvidersWStr(ref this, dwIndex, dwFlags, out pbstrProvName);
		public HRESULT enumContainersWStr(int32 dwIndex, out PWSTR pbstr) mut => VT.enumContainersWStr(ref this, dwIndex, out pbstr);
		public HRESULT freeRequestInfoBlob(CRYPTOAPI_BLOB pkcs7OrPkcs10) mut => VT.freeRequestInfoBlob(ref this, pkcs7OrPkcs10);
		public HRESULT get_MyStoreNameWStr(out PWSTR szwName) mut => VT.get_MyStoreNameWStr(ref this, out szwName);
		public HRESULT put_MyStoreNameWStr(PWSTR szwName) mut => VT.put_MyStoreNameWStr(ref this, szwName);
		public HRESULT get_MyStoreTypeWStr(out PWSTR szwType) mut => VT.get_MyStoreTypeWStr(ref this, out szwType);
		public HRESULT put_MyStoreTypeWStr(PWSTR szwType) mut => VT.put_MyStoreTypeWStr(ref this, szwType);
		public HRESULT get_MyStoreFlags(out int32 pdwFlags) mut => VT.get_MyStoreFlags(ref this, out pdwFlags);
		public HRESULT put_MyStoreFlags(int32 dwFlags) mut => VT.put_MyStoreFlags(ref this, dwFlags);
		public HRESULT get_CAStoreNameWStr(out PWSTR szwName) mut => VT.get_CAStoreNameWStr(ref this, out szwName);
		public HRESULT put_CAStoreNameWStr(PWSTR szwName) mut => VT.put_CAStoreNameWStr(ref this, szwName);
		public HRESULT get_CAStoreTypeWStr(out PWSTR szwType) mut => VT.get_CAStoreTypeWStr(ref this, out szwType);
		public HRESULT put_CAStoreTypeWStr(PWSTR szwType) mut => VT.put_CAStoreTypeWStr(ref this, szwType);
		public HRESULT get_CAStoreFlags(out int32 pdwFlags) mut => VT.get_CAStoreFlags(ref this, out pdwFlags);
		public HRESULT put_CAStoreFlags(int32 dwFlags) mut => VT.put_CAStoreFlags(ref this, dwFlags);
		public HRESULT get_RootStoreNameWStr(out PWSTR szwName) mut => VT.get_RootStoreNameWStr(ref this, out szwName);
		public HRESULT put_RootStoreNameWStr(PWSTR szwName) mut => VT.put_RootStoreNameWStr(ref this, szwName);
		public HRESULT get_RootStoreTypeWStr(out PWSTR szwType) mut => VT.get_RootStoreTypeWStr(ref this, out szwType);
		public HRESULT put_RootStoreTypeWStr(PWSTR szwType) mut => VT.put_RootStoreTypeWStr(ref this, szwType);
		public HRESULT get_RootStoreFlags(out int32 pdwFlags) mut => VT.get_RootStoreFlags(ref this, out pdwFlags);
		public HRESULT put_RootStoreFlags(int32 dwFlags) mut => VT.put_RootStoreFlags(ref this, dwFlags);
		public HRESULT get_RequestStoreNameWStr(out PWSTR szwName) mut => VT.get_RequestStoreNameWStr(ref this, out szwName);
		public HRESULT put_RequestStoreNameWStr(PWSTR szwName) mut => VT.put_RequestStoreNameWStr(ref this, szwName);
		public HRESULT get_RequestStoreTypeWStr(out PWSTR szwType) mut => VT.get_RequestStoreTypeWStr(ref this, out szwType);
		public HRESULT put_RequestStoreTypeWStr(PWSTR szwType) mut => VT.put_RequestStoreTypeWStr(ref this, szwType);
		public HRESULT get_RequestStoreFlags(out int32 pdwFlags) mut => VT.get_RequestStoreFlags(ref this, out pdwFlags);
		public HRESULT put_RequestStoreFlags(int32 dwFlags) mut => VT.put_RequestStoreFlags(ref this, dwFlags);
		public HRESULT get_ContainerNameWStr(out PWSTR szwContainer) mut => VT.get_ContainerNameWStr(ref this, out szwContainer);
		public HRESULT put_ContainerNameWStr(PWSTR szwContainer) mut => VT.put_ContainerNameWStr(ref this, szwContainer);
		public HRESULT get_ProviderNameWStr(out PWSTR szwProvider) mut => VT.get_ProviderNameWStr(ref this, out szwProvider);
		public HRESULT put_ProviderNameWStr(PWSTR szwProvider) mut => VT.put_ProviderNameWStr(ref this, szwProvider);
		public HRESULT get_ProviderType(out int32 pdwType) mut => VT.get_ProviderType(ref this, out pdwType);
		public HRESULT put_ProviderType(int32 dwType) mut => VT.put_ProviderType(ref this, dwType);
		public HRESULT get_KeySpec(out int32 pdw) mut => VT.get_KeySpec(ref this, out pdw);
		public HRESULT put_KeySpec(int32 dw) mut => VT.put_KeySpec(ref this, dw);
		public HRESULT get_ProviderFlags(out int32 pdwFlags) mut => VT.get_ProviderFlags(ref this, out pdwFlags);
		public HRESULT put_ProviderFlags(int32 dwFlags) mut => VT.put_ProviderFlags(ref this, dwFlags);
		public HRESULT get_UseExistingKeySet(out BOOL fUseExistingKeys) mut => VT.get_UseExistingKeySet(ref this, out fUseExistingKeys);
		public HRESULT put_UseExistingKeySet(BOOL fUseExistingKeys) mut => VT.put_UseExistingKeySet(ref this, fUseExistingKeys);
		public HRESULT get_GenKeyFlags(out int32 pdwFlags) mut => VT.get_GenKeyFlags(ref this, out pdwFlags);
		public HRESULT put_GenKeyFlags(int32 dwFlags) mut => VT.put_GenKeyFlags(ref this, dwFlags);
		public HRESULT get_DeleteRequestCert(out BOOL fDelete) mut => VT.get_DeleteRequestCert(ref this, out fDelete);
		public HRESULT put_DeleteRequestCert(BOOL fDelete) mut => VT.put_DeleteRequestCert(ref this, fDelete);
		public HRESULT get_WriteCertToUserDS(out BOOL fBool) mut => VT.get_WriteCertToUserDS(ref this, out fBool);
		public HRESULT put_WriteCertToUserDS(BOOL fBool) mut => VT.put_WriteCertToUserDS(ref this, fBool);
		public HRESULT get_EnableT61DNEncoding(out BOOL fBool) mut => VT.get_EnableT61DNEncoding(ref this, out fBool);
		public HRESULT put_EnableT61DNEncoding(BOOL fBool) mut => VT.put_EnableT61DNEncoding(ref this, fBool);
		public HRESULT get_WriteCertToCSP(out BOOL fBool) mut => VT.get_WriteCertToCSP(ref this, out fBool);
		public HRESULT put_WriteCertToCSP(BOOL fBool) mut => VT.put_WriteCertToCSP(ref this, fBool);
		public HRESULT get_SPCFileNameWStr(out PWSTR szw) mut => VT.get_SPCFileNameWStr(ref this, out szw);
		public HRESULT put_SPCFileNameWStr(PWSTR szw) mut => VT.put_SPCFileNameWStr(ref this, szw);
		public HRESULT get_PVKFileNameWStr(out PWSTR szw) mut => VT.get_PVKFileNameWStr(ref this, out szw);
		public HRESULT put_PVKFileNameWStr(PWSTR szw) mut => VT.put_PVKFileNameWStr(ref this, szw);
		public HRESULT get_HashAlgorithmWStr(out PWSTR szw) mut => VT.get_HashAlgorithmWStr(ref this, out szw);
		public HRESULT put_HashAlgorithmWStr(PWSTR szw) mut => VT.put_HashAlgorithmWStr(ref this, szw);
		public HRESULT get_RenewalCertificate(out CERT_CONTEXT* ppCertContext) mut => VT.get_RenewalCertificate(ref this, out ppCertContext);
		public HRESULT put_RenewalCertificate(in CERT_CONTEXT pCertContext) mut => VT.put_RenewalCertificate(ref this, pCertContext);
		public HRESULT AddCertTypeToRequestWStr(PWSTR szw) mut => VT.AddCertTypeToRequestWStr(ref this, szw);
		public HRESULT AddNameValuePairToSignatureWStr(PWSTR Name, PWSTR Value) mut => VT.AddNameValuePairToSignatureWStr(ref this, Name, Value);
		public HRESULT AddExtensionsToRequest(out CERT_EXTENSIONS pCertExtensions) mut => VT.AddExtensionsToRequest(ref this, out pCertExtensions);
		public HRESULT AddAuthenticatedAttributesToPKCS7Request(out CRYPT_ATTRIBUTES pAttributes) mut => VT.AddAuthenticatedAttributesToPKCS7Request(ref this, out pAttributes);
		public HRESULT CreatePKCS7RequestFromRequest(out CRYPTOAPI_BLOB pRequest, in CERT_CONTEXT pSigningCertContext, out CRYPTOAPI_BLOB pPkcs7Blob) mut => VT.CreatePKCS7RequestFromRequest(ref this, out pRequest, pSigningCertContext, out pPkcs7Blob);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR DNName, PWSTR Usage, PWSTR wszPKCS10FileName) createFilePKCS10WStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR wszPKCS7FileName) acceptFilePKCS7WStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR DNName, PWSTR Usage, out CRYPTOAPI_BLOB pPkcs10Blob) createPKCS10WStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out CRYPTOAPI_BLOB pBlobPKCS7) acceptPKCS7Blob;
			public new function [CallingConvention(.Stdcall)] CERT_CONTEXT*(ref IEnroll self, out CRYPTOAPI_BLOB pBlobPKCS7) getCertContextFromPKCS7;
			public new function [CallingConvention(.Stdcall)] HCERTSTORE(ref IEnroll self) getMyStore;
			public new function [CallingConvention(.Stdcall)] HCERTSTORE(ref IEnroll self) getCAStore;
			public new function [CallingConvention(.Stdcall)] HCERTSTORE(ref IEnroll self) getROOTHStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwIndex, int32 dwFlags, out PWSTR pbstrProvName) enumProvidersWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwIndex, out PWSTR pbstr) enumContainersWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, CRYPTOAPI_BLOB pkcs7OrPkcs10) freeRequestInfoBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwName) get_MyStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwName) put_MyStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwType) get_MyStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwType) put_MyStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_MyStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_MyStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwName) get_CAStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwName) put_CAStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwType) get_CAStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwType) put_CAStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_CAStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_CAStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwName) get_RootStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwName) put_RootStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwType) get_RootStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwType) put_RootStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_RootStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_RootStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwName) get_RequestStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwName) put_RequestStoreNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwType) get_RequestStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwType) put_RequestStoreTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_RequestStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_RequestStoreFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwContainer) get_ContainerNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwContainer) put_ContainerNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szwProvider) get_ProviderNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szwProvider) put_ProviderNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwType) get_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwType) put_ProviderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdw) get_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dw) put_KeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_ProviderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_ProviderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out BOOL fUseExistingKeys) get_UseExistingKeySet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, BOOL fUseExistingKeys) put_UseExistingKeySet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out int32 pdwFlags) get_GenKeyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, int32 dwFlags) put_GenKeyFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out BOOL fDelete) get_DeleteRequestCert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, BOOL fDelete) put_DeleteRequestCert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out BOOL fBool) get_WriteCertToUserDS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, BOOL fBool) put_WriteCertToUserDS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out BOOL fBool) get_EnableT61DNEncoding;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, BOOL fBool) put_EnableT61DNEncoding;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out BOOL fBool) get_WriteCertToCSP;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, BOOL fBool) put_WriteCertToCSP;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szw) get_SPCFileNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szw) put_SPCFileNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szw) get_PVKFileNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szw) put_PVKFileNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out PWSTR szw) get_HashAlgorithmWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szw) put_HashAlgorithmWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out CERT_CONTEXT* ppCertContext) get_RenewalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, in CERT_CONTEXT pCertContext) put_RenewalCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR szw) AddCertTypeToRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, PWSTR Name, PWSTR Value) AddNameValuePairToSignatureWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out CERT_EXTENSIONS pCertExtensions) AddExtensionsToRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out CRYPT_ATTRIBUTES pAttributes) AddAuthenticatedAttributesToPKCS7Request;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll self, out CRYPTOAPI_BLOB pRequest, in CERT_CONTEXT pSigningCertContext, out CRYPTOAPI_BLOB pPkcs7Blob) CreatePKCS7RequestFromRequest;
		}
	}
	[CRepr]
	public struct IEnroll2 : IEnroll
	{
		public const new Guid IID = .(0xc080e199, 0xb7df, 0x11d2, 0xa4, 0x21, 0x00, 0xc0, 0x4f, 0x79, 0xfe, 0x8e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InstallPKCS7Blob(out CRYPTOAPI_BLOB pBlobPKCS7) mut => VT.InstallPKCS7Blob(ref this, out pBlobPKCS7);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT GetSupportedKeySpec(out int32 pdwKeySpec) mut => VT.GetSupportedKeySpec(ref this, out pdwKeySpec);
		public HRESULT GetKeyLen(BOOL fMin, BOOL fExchange, out int32 pdwKeySize) mut => VT.GetKeyLen(ref this, fMin, fExchange, out pdwKeySize);
		public HRESULT EnumAlgs(int32 dwIndex, int32 algClass, out int32 pdwAlgID) mut => VT.EnumAlgs(ref this, dwIndex, algClass, out pdwAlgID);
		public HRESULT GetAlgNameWStr(int32 algID, out PWSTR ppwsz) mut => VT.GetAlgNameWStr(ref this, algID, out ppwsz);
		public HRESULT put_ReuseHardwareKeyIfUnableToGenNew(BOOL fReuseHardwareKeyIfUnableToGenNew) mut => VT.put_ReuseHardwareKeyIfUnableToGenNew(ref this, fReuseHardwareKeyIfUnableToGenNew);
		public HRESULT get_ReuseHardwareKeyIfUnableToGenNew(out BOOL fReuseHardwareKeyIfUnableToGenNew) mut => VT.get_ReuseHardwareKeyIfUnableToGenNew(ref this, out fReuseHardwareKeyIfUnableToGenNew);
		public HRESULT put_HashAlgID(int32 hashAlgID) mut => VT.put_HashAlgID(ref this, hashAlgID);
		public HRESULT get_HashAlgID(out int32 hashAlgID) mut => VT.get_HashAlgID(ref this, out hashAlgID);
		public HRESULT SetHStoreMy(HCERTSTORE hStore) mut => VT.SetHStoreMy(ref this, hStore);
		public HRESULT SetHStoreCA(HCERTSTORE hStore) mut => VT.SetHStoreCA(ref this, hStore);
		public HRESULT SetHStoreROOT(HCERTSTORE hStore) mut => VT.SetHStoreROOT(ref this, hStore);
		public HRESULT SetHStoreRequest(HCERTSTORE hStore) mut => VT.SetHStoreRequest(ref this, hStore);
		public HRESULT put_LimitExchangeKeyToEncipherment(BOOL fLimitExchangeKeyToEncipherment) mut => VT.put_LimitExchangeKeyToEncipherment(ref this, fLimitExchangeKeyToEncipherment);
		public HRESULT get_LimitExchangeKeyToEncipherment(out BOOL fLimitExchangeKeyToEncipherment) mut => VT.get_LimitExchangeKeyToEncipherment(ref this, out fLimitExchangeKeyToEncipherment);
		public HRESULT put_EnableSMIMECapabilities(BOOL fEnableSMIMECapabilities) mut => VT.put_EnableSMIMECapabilities(ref this, fEnableSMIMECapabilities);
		public HRESULT get_EnableSMIMECapabilities(out BOOL fEnableSMIMECapabilities) mut => VT.get_EnableSMIMECapabilities(ref this, out fEnableSMIMECapabilities);

		[CRepr]
		public struct VTable : IEnroll.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out CRYPTOAPI_BLOB pBlobPKCS7) InstallPKCS7Blob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out int32 pdwKeySpec) GetSupportedKeySpec;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, BOOL fMin, BOOL fExchange, out int32 pdwKeySize) GetKeyLen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, int32 dwIndex, int32 algClass, out int32 pdwAlgID) EnumAlgs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, int32 algID, out PWSTR ppwsz) GetAlgNameWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, BOOL fReuseHardwareKeyIfUnableToGenNew) put_ReuseHardwareKeyIfUnableToGenNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out BOOL fReuseHardwareKeyIfUnableToGenNew) get_ReuseHardwareKeyIfUnableToGenNew;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, int32 hashAlgID) put_HashAlgID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out int32 hashAlgID) get_HashAlgID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, HCERTSTORE hStore) SetHStoreMy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, HCERTSTORE hStore) SetHStoreCA;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, HCERTSTORE hStore) SetHStoreROOT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, HCERTSTORE hStore) SetHStoreRequest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, BOOL fLimitExchangeKeyToEncipherment) put_LimitExchangeKeyToEncipherment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out BOOL fLimitExchangeKeyToEncipherment) get_LimitExchangeKeyToEncipherment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, BOOL fEnableSMIMECapabilities) put_EnableSMIMECapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll2 self, out BOOL fEnableSMIMECapabilities) get_EnableSMIMECapabilities;
		}
	}
	[CRepr]
	public struct IEnroll4 : IEnroll2
	{
		public const new Guid IID = .(0xf8053fe5, 0x78f4, 0x448f, 0xa0, 0xdb, 0x41, 0xd6, 0x1b, 0x73, 0x44, 0x6b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT put_ThumbPrintWStr(CRYPTOAPI_BLOB thumbPrintBlob) mut => VT.put_ThumbPrintWStr(ref this, thumbPrintBlob);
		public HRESULT get_ThumbPrintWStr(out CRYPTOAPI_BLOB thumbPrintBlob) mut => VT.get_ThumbPrintWStr(ref this, out thumbPrintBlob);
		public HRESULT SetPrivateKeyArchiveCertificate(in CERT_CONTEXT pPrivateKeyArchiveCert) mut => VT.SetPrivateKeyArchiveCertificate(ref this, pPrivateKeyArchiveCert);
		public CERT_CONTEXT* GetPrivateKeyArchiveCertificate() mut => VT.GetPrivateKeyArchiveCertificate(ref this);
		public HRESULT binaryBlobToString(int32 Flags, out CRYPTOAPI_BLOB pblobBinary, out PWSTR ppwszString) mut => VT.binaryBlobToString(ref this, Flags, out pblobBinary, out ppwszString);
		public HRESULT stringToBinaryBlob(int32 Flags, PWSTR pwszString, out CRYPTOAPI_BLOB pblobBinary, out int32 pdwSkip, out int32 pdwFlags) mut => VT.stringToBinaryBlob(ref this, Flags, pwszString, out pblobBinary, out pdwSkip, out pdwFlags);
		public HRESULT addExtensionToRequestWStr(int32 Flags, PWSTR pwszName, out CRYPTOAPI_BLOB pblobValue) mut => VT.addExtensionToRequestWStr(ref this, Flags, pwszName, out pblobValue);
		public HRESULT addAttributeToRequestWStr(int32 Flags, PWSTR pwszName, out CRYPTOAPI_BLOB pblobValue) mut => VT.addAttributeToRequestWStr(ref this, Flags, pwszName, out pblobValue);
		public HRESULT addNameValuePairToRequestWStr(int32 Flags, PWSTR pwszName, PWSTR pwszValue) mut => VT.addNameValuePairToRequestWStr(ref this, Flags, pwszName, pwszValue);
		public HRESULT resetExtensions() mut => VT.resetExtensions(ref this);
		public HRESULT resetAttributes() mut => VT.resetAttributes(ref this);
		public HRESULT createRequestWStr(CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, out CRYPTOAPI_BLOB pblobRequest) mut => VT.createRequestWStr(ref this, Flags, pwszDNName, pwszUsage, out pblobRequest);
		public HRESULT createFileRequestWStr(CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, PWSTR pwszRequestFileName) mut => VT.createFileRequestWStr(ref this, Flags, pwszDNName, pwszUsage, pwszRequestFileName);
		public HRESULT acceptResponseBlob(out CRYPTOAPI_BLOB pblobResponse) mut => VT.acceptResponseBlob(ref this, out pblobResponse);
		public HRESULT acceptFileResponseWStr(PWSTR pwszResponseFileName) mut => VT.acceptFileResponseWStr(ref this, pwszResponseFileName);
		public HRESULT getCertContextFromResponseBlob(out CRYPTOAPI_BLOB pblobResponse, out CERT_CONTEXT* ppCertContext) mut => VT.getCertContextFromResponseBlob(ref this, out pblobResponse, out ppCertContext);
		public HRESULT getCertContextFromFileResponseWStr(PWSTR pwszResponseFileName, out CERT_CONTEXT* ppCertContext) mut => VT.getCertContextFromFileResponseWStr(ref this, pwszResponseFileName, out ppCertContext);
		public HRESULT createPFXWStr(PWSTR pwszPassword, out CRYPTOAPI_BLOB pblobPFX) mut => VT.createPFXWStr(ref this, pwszPassword, out pblobPFX);
		public HRESULT createFilePFXWStr(PWSTR pwszPassword, PWSTR pwszPFXFileName) mut => VT.createFilePFXWStr(ref this, pwszPassword, pwszPFXFileName);
		public HRESULT setPendingRequestInfoWStr(int32 lRequestID, PWSTR pwszCADNS, PWSTR pwszCAName, PWSTR pwszFriendlyName) mut => VT.setPendingRequestInfoWStr(ref this, lRequestID, pwszCADNS, pwszCAName, pwszFriendlyName);
		public HRESULT enumPendingRequestWStr(int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, void* ppProperty) mut => VT.enumPendingRequestWStr(ref this, lIndex, lDesiredProperty, ppProperty);
		public HRESULT removePendingRequestWStr(CRYPTOAPI_BLOB thumbPrintBlob) mut => VT.removePendingRequestWStr(ref this, thumbPrintBlob);
		public HRESULT GetKeyLenEx(XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, out int32 pdwKeySize) mut => VT.GetKeyLenEx(ref this, lSizeSpec, lKeySpec, out pdwKeySize);
		public HRESULT InstallPKCS7BlobEx(out CRYPTOAPI_BLOB pBlobPKCS7, out int32 plCertInstalled) mut => VT.InstallPKCS7BlobEx(ref this, out pBlobPKCS7, out plCertInstalled);
		public HRESULT AddCertTypeToRequestWStrEx(ADDED_CERT_TYPE lType, PWSTR pwszOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) mut => VT.AddCertTypeToRequestWStrEx(ref this, lType, pwszOIDOrName, lMajorVersion, fMinorVersion, lMinorVersion);
		public HRESULT getProviderTypeWStr(PWSTR pwszProvName, out int32 plProvType) mut => VT.getProviderTypeWStr(ref this, pwszProvName, out plProvType);
		public HRESULT addBlobPropertyToCertificateWStr(int32 lPropertyId, int32 lReserved, out CRYPTOAPI_BLOB pBlobProperty) mut => VT.addBlobPropertyToCertificateWStr(ref this, lPropertyId, lReserved, out pBlobProperty);
		public HRESULT SetSignerCertificate(in CERT_CONTEXT pSignerCert) mut => VT.SetSignerCertificate(ref this, pSignerCert);
		public HRESULT put_ClientId(int32 lClientId) mut => VT.put_ClientId(ref this, lClientId);
		public HRESULT get_ClientId(out int32 plClientId) mut => VT.get_ClientId(ref this, out plClientId);
		public HRESULT put_IncludeSubjectKeyID(BOOL fInclude) mut => VT.put_IncludeSubjectKeyID(ref this, fInclude);
		public HRESULT get_IncludeSubjectKeyID(out BOOL pfInclude) mut => VT.get_IncludeSubjectKeyID(ref this, out pfInclude);

		[CRepr]
		public struct VTable : IEnroll2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, CRYPTOAPI_BLOB thumbPrintBlob) put_ThumbPrintWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out CRYPTOAPI_BLOB thumbPrintBlob) get_ThumbPrintWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, in CERT_CONTEXT pPrivateKeyArchiveCert) SetPrivateKeyArchiveCertificate;
			public new function [CallingConvention(.Stdcall)] CERT_CONTEXT*(ref IEnroll4 self) GetPrivateKeyArchiveCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 Flags, out CRYPTOAPI_BLOB pblobBinary, out PWSTR ppwszString) binaryBlobToString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 Flags, PWSTR pwszString, out CRYPTOAPI_BLOB pblobBinary, out int32 pdwSkip, out int32 pdwFlags) stringToBinaryBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 Flags, PWSTR pwszName, out CRYPTOAPI_BLOB pblobValue) addExtensionToRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 Flags, PWSTR pwszName, out CRYPTOAPI_BLOB pblobValue) addAttributeToRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 Flags, PWSTR pwszName, PWSTR pwszValue) addNameValuePairToRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self) resetExtensions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self) resetAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, out CRYPTOAPI_BLOB pblobRequest) createRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, CERT_CREATE_REQUEST_FLAGS Flags, PWSTR pwszDNName, PWSTR pwszUsage, PWSTR pwszRequestFileName) createFileRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out CRYPTOAPI_BLOB pblobResponse) acceptResponseBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, PWSTR pwszResponseFileName) acceptFileResponseWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out CRYPTOAPI_BLOB pblobResponse, out CERT_CONTEXT* ppCertContext) getCertContextFromResponseBlob;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, PWSTR pwszResponseFileName, out CERT_CONTEXT* ppCertContext) getCertContextFromFileResponseWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, PWSTR pwszPassword, out CRYPTOAPI_BLOB pblobPFX) createPFXWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, PWSTR pwszPassword, PWSTR pwszPFXFileName) createFilePFXWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 lRequestID, PWSTR pwszCADNS, PWSTR pwszCAName, PWSTR pwszFriendlyName) setPendingRequestInfoWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 lIndex, PENDING_REQUEST_DESIRED_PROPERTY lDesiredProperty, void* ppProperty) enumPendingRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, CRYPTOAPI_BLOB thumbPrintBlob) removePendingRequestWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, XEKL_KEYSIZE lSizeSpec, XEKL_KEYSPEC lKeySpec, out int32 pdwKeySize) GetKeyLenEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out CRYPTOAPI_BLOB pBlobPKCS7, out int32 plCertInstalled) InstallPKCS7BlobEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, ADDED_CERT_TYPE lType, PWSTR pwszOIDOrName, int32 lMajorVersion, BOOL fMinorVersion, int32 lMinorVersion) AddCertTypeToRequestWStrEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, PWSTR pwszProvName, out int32 plProvType) getProviderTypeWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 lPropertyId, int32 lReserved, out CRYPTOAPI_BLOB pBlobProperty) addBlobPropertyToCertificateWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, in CERT_CONTEXT pSignerCert) SetSignerCertificate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, int32 lClientId) put_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out int32 plClientId) get_ClientId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, BOOL fInclude) put_IncludeSubjectKeyID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnroll4 self, out BOOL pfInclude) get_IncludeSubjectKeyID;
		}
	}
	[CRepr]
	public struct ICertRequestD : IUnknown
	{
		public const new Guid IID = .(0xd99e6e70, 0xfc88, 0x11d0, 0xb4, 0x98, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Request(uint32 dwFlags, PWSTR pwszAuthority, out uint32 pdwRequestId, out uint32 pdwDisposition, PWSTR pwszAttributes, in CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbCertChain, out CERTTRANSBLOB pctbEncodedCert, out CERTTRANSBLOB pctbDispositionMessage) mut => VT.Request(ref this, dwFlags, pwszAuthority, out pdwRequestId, out pdwDisposition, pwszAttributes, pctbRequest, out pctbCertChain, out pctbEncodedCert, out pctbDispositionMessage);
		public HRESULT GetCACert(uint32 fchain, PWSTR pwszAuthority, out CERTTRANSBLOB pctbOut) mut => VT.GetCACert(ref this, fchain, pwszAuthority, out pctbOut);
		public HRESULT Ping(PWSTR pwszAuthority) mut => VT.Ping(ref this, pwszAuthority);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD self, uint32 dwFlags, PWSTR pwszAuthority, out uint32 pdwRequestId, out uint32 pdwDisposition, PWSTR pwszAttributes, in CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbCertChain, out CERTTRANSBLOB pctbEncodedCert, out CERTTRANSBLOB pctbDispositionMessage) Request;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD self, uint32 fchain, PWSTR pwszAuthority, out CERTTRANSBLOB pctbOut) GetCACert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD self, PWSTR pwszAuthority) Ping;
		}
	}
	[CRepr]
	public struct ICertRequestD2 : ICertRequestD
	{
		public const new Guid IID = .(0x5422fd3a, 0xd4b8, 0x4cef, 0xa1, 0x2e, 0xe8, 0x7d, 0x4c, 0xa2, 0x2e, 0x90);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Request2(PWSTR pwszAuthority, uint32 dwFlags, PWSTR pwszSerialNumber, out uint32 pdwRequestId, out uint32 pdwDisposition, PWSTR pwszAttributes, in CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbFullResponse, out CERTTRANSBLOB pctbEncodedCert, out CERTTRANSBLOB pctbDispositionMessage) mut => VT.Request2(ref this, pwszAuthority, dwFlags, pwszSerialNumber, out pdwRequestId, out pdwDisposition, pwszAttributes, pctbRequest, out pctbFullResponse, out pctbEncodedCert, out pctbDispositionMessage);
		public HRESULT GetCAProperty(PWSTR pwszAuthority, int32 PropId, int32 PropIndex, int32 PropType, out CERTTRANSBLOB pctbPropertyValue) mut => VT.GetCAProperty(ref this, pwszAuthority, PropId, PropIndex, PropType, out pctbPropertyValue);
		public HRESULT GetCAPropertyInfo(PWSTR pwszAuthority, out int32 pcProperty, out CERTTRANSBLOB pctbPropInfo) mut => VT.GetCAPropertyInfo(ref this, pwszAuthority, out pcProperty, out pctbPropInfo);
		public HRESULT Ping2(PWSTR pwszAuthority) mut => VT.Ping2(ref this, pwszAuthority);

		[CRepr]
		public struct VTable : ICertRequestD.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD2 self, PWSTR pwszAuthority, uint32 dwFlags, PWSTR pwszSerialNumber, out uint32 pdwRequestId, out uint32 pdwDisposition, PWSTR pwszAttributes, in CERTTRANSBLOB pctbRequest, out CERTTRANSBLOB pctbFullResponse, out CERTTRANSBLOB pctbEncodedCert, out CERTTRANSBLOB pctbDispositionMessage) Request2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD2 self, PWSTR pwszAuthority, int32 PropId, int32 PropIndex, int32 PropType, out CERTTRANSBLOB pctbPropertyValue) GetCAProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD2 self, PWSTR pwszAuthority, out int32 pcProperty, out CERTTRANSBLOB pctbPropInfo) GetCAPropertyInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICertRequestD2 self, PWSTR pwszAuthority) Ping2;
		}
	}
	#endregion
	
	#region Functions
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvIsServerOnlineW(PWSTR pwszServerName, out BOOL pfServerOnline);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupGetDynamicFileListW(void* hbc, out PWSTR ppwszzFileList, out uint32 pcbSize);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupPrepareW(PWSTR pwszServerName, uint32 grbitJet, CSBACKUP_TYPE dwBackupFlags, void** phbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupGetDatabaseNamesW(void* hbc, out PWSTR ppwszzAttachmentInformation, out uint32 pcbSize);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupOpenFileW(void* hbc, PWSTR pwszAttachmentName, uint32 cbReadHintSize, out LARGE_INTEGER pliFileSize);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupRead(void* hbc, void* pvBuffer, uint32 cbBuffer, out uint32 pcbRead);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupClose(void* hbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupGetBackupLogsW(void* hbc, out PWSTR ppwszzBackupLogFiles, out uint32 pcbSize);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupTruncateLogs(void* hbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvBackupEnd(void* hbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void CertSrvBackupFree(void* pv);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestoreGetDatabaseLocationsW(void* hbc, out PWSTR ppwszzDatabaseLocationList, out uint32 pcbSize);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestorePrepareW(PWSTR pwszServerName, uint32 dwRestoreFlags, void** phbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestoreRegisterW(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, out CSEDB_RSTMAPW rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestoreRegisterThroughFile(void* hbc, PWSTR pwszCheckPointFilePath, PWSTR pwszLogPath, out CSEDB_RSTMAPW rgrstmap, int32 crstmap, PWSTR pwszBackupLogPath, uint32 genLow, uint32 genHigh);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestoreRegisterComplete(void* hbc, HRESULT hrRestoreState);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvRestoreEnd(void* hbc);
	[Import("certadm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CertSrvServerControlW(PWSTR pwszServerName, uint32 dwControlFlags, out uint32 pcbOut, out uint8* ppbOut);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstGetTrustAnchors(ref UNICODE_STRING pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, out SecPkgContext_IssuerListInfoEx* ppTrustedIssuers);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstGetTrustAnchorsEx(ref UNICODE_STRING pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, CERT_CONTEXT* pCertContext, out SecPkgContext_IssuerListInfoEx* ppTrustedIssuers);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstGetCertificateChain(in CERT_CONTEXT pCert, ref SecPkgContext_IssuerListInfoEx pTrustedIssuers, out CERT_CHAIN_CONTEXT* ppCertChainContext);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstGetCertificates(ref UNICODE_STRING pTargetName, uint32 cCriteria, CERT_SELECT_CRITERIA* rgpCriteria, BOOL bIsClient, out uint32 pdwCertChainContextCount, out CERT_CHAIN_CONTEXT** ppCertChainContexts);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstAcquirePrivateKey(in CERT_CONTEXT pCert);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstValidate(UNICODE_STRING* pTargetName, BOOL bIsClient, CERT_USAGE_MATCH* pRequestedIssuancePolicy, HCERTSTORE* phAdditionalCertStore, in CERT_CONTEXT pCert, Guid* pProvGUID);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstMapCertificate(in CERT_CONTEXT pCert, out LSA_TOKEN_INFORMATION_TYPE pTokenInformationType, void** ppTokenInformation);
	[Import("certpoleng.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern NTSTATUS PstGetUserNameForCertificate(in CERT_CONTEXT pCertContext, out UNICODE_STRING UserName);
	#endregion
}
