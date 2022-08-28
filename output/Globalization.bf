namespace Win32.Globalization;

using System;
using Win32.Foundation;
using Win32.Graphics.Gdi;
using Win32.System.Com;

static
{
	#region Constants
	public const uint32 ALL_SERVICE_TYPES = 0;
	public const uint32 HIGHLEVEL_SERVICE_TYPES = 1;
	public const uint32 LOWLEVEL_SERVICE_TYPES = 2;
	public const uint32 ALL_SERVICES = 0;
	public const uint32 ONLINE_SERVICES = 1;
	public const uint32 OFFLINE_SERVICES = 2;
	public const uint32 MAX_LEADBYTES = 12;
	public const uint32 MAX_DEFAULTCHAR = 2;
	public const uint32 HIGH_SURROGATE_START = 55296;
	public const uint32 HIGH_SURROGATE_END = 56319;
	public const uint32 LOW_SURROGATE_START = 56320;
	public const uint32 LOW_SURROGATE_END = 57343;
	public const uint32 WC_COMPOSITECHECK = 512;
	public const uint32 WC_DISCARDNS = 16;
	public const uint32 WC_SEPCHARS = 32;
	public const uint32 WC_DEFAULTCHAR = 64;
	public const uint32 WC_ERR_INVALID_CHARS = 128;
	public const uint32 WC_NO_BEST_FIT_CHARS = 1024;
	public const uint32 CT_CTYPE1 = 1;
	public const uint32 CT_CTYPE2 = 2;
	public const uint32 CT_CTYPE3 = 4;
	public const uint32 C1_UPPER = 1;
	public const uint32 C1_LOWER = 2;
	public const uint32 C1_DIGIT = 4;
	public const uint32 C1_SPACE = 8;
	public const uint32 C1_PUNCT = 16;
	public const uint32 C1_CNTRL = 32;
	public const uint32 C1_BLANK = 64;
	public const uint32 C1_XDIGIT = 128;
	public const uint32 C1_ALPHA = 256;
	public const uint32 C1_DEFINED = 512;
	public const uint32 C2_LEFTTORIGHT = 1;
	public const uint32 C2_RIGHTTOLEFT = 2;
	public const uint32 C2_EUROPENUMBER = 3;
	public const uint32 C2_EUROPESEPARATOR = 4;
	public const uint32 C2_EUROPETERMINATOR = 5;
	public const uint32 C2_ARABICNUMBER = 6;
	public const uint32 C2_COMMONSEPARATOR = 7;
	public const uint32 C2_BLOCKSEPARATOR = 8;
	public const uint32 C2_SEGMENTSEPARATOR = 9;
	public const uint32 C2_WHITESPACE = 10;
	public const uint32 C2_OTHERNEUTRAL = 11;
	public const uint32 C2_NOTAPPLICABLE = 0;
	public const uint32 C3_NONSPACING = 1;
	public const uint32 C3_DIACRITIC = 2;
	public const uint32 C3_VOWELMARK = 4;
	public const uint32 C3_SYMBOL = 8;
	public const uint32 C3_KATAKANA = 16;
	public const uint32 C3_HIRAGANA = 32;
	public const uint32 C3_HALFWIDTH = 64;
	public const uint32 C3_FULLWIDTH = 128;
	public const uint32 C3_IDEOGRAPH = 256;
	public const uint32 C3_KASHIDA = 512;
	public const uint32 C3_LEXICAL = 1024;
	public const uint32 C3_HIGHSURROGATE = 2048;
	public const uint32 C3_LOWSURROGATE = 4096;
	public const uint32 C3_ALPHA = 32768;
	public const uint32 C3_NOTAPPLICABLE = 0;
	public const uint32 LCMAP_LOWERCASE = 256;
	public const uint32 LCMAP_UPPERCASE = 512;
	public const uint32 LCMAP_TITLECASE = 768;
	public const uint32 LCMAP_SORTKEY = 1024;
	public const uint32 LCMAP_BYTEREV = 2048;
	public const uint32 LCMAP_HIRAGANA = 1048576;
	public const uint32 LCMAP_KATAKANA = 2097152;
	public const uint32 LCMAP_HALFWIDTH = 4194304;
	public const uint32 LCMAP_FULLWIDTH = 8388608;
	public const uint32 LCMAP_LINGUISTIC_CASING = 16777216;
	public const uint32 LCMAP_SIMPLIFIED_CHINESE = 33554432;
	public const uint32 LCMAP_TRADITIONAL_CHINESE = 67108864;
	public const uint32 LCMAP_SORTHANDLE = 536870912;
	public const uint32 LCMAP_HASH = 262144;
	public const uint32 FIND_STARTSWITH = 1048576;
	public const uint32 FIND_ENDSWITH = 2097152;
	public const uint32 FIND_FROMSTART = 4194304;
	public const uint32 FIND_FROMEND = 8388608;
	public const uint32 LCID_ALTERNATE_SORTS = 4;
	public const uint32 LOCALE_ALL = 0;
	public const uint32 LOCALE_WINDOWS = 1;
	public const uint32 LOCALE_SUPPLEMENTAL = 2;
	public const uint32 LOCALE_ALTERNATE_SORTS = 4;
	public const uint32 LOCALE_REPLACEMENT = 8;
	public const uint32 LOCALE_NEUTRALDATA = 16;
	public const uint32 LOCALE_SPECIFICDATA = 32;
	public const uint32 CSTR_LESS_THAN = 1;
	public const uint32 CSTR_EQUAL = 2;
	public const uint32 CSTR_GREATER_THAN = 3;
	public const uint32 CP_ACP = 0;
	public const uint32 CP_OEMCP = 1;
	public const uint32 CP_MACCP = 2;
	public const uint32 CP_THREAD_ACP = 3;
	public const uint32 CP_SYMBOL = 42;
	public const uint32 CP_UTF7 = 65000;
	public const uint32 CP_UTF8 = 65001;
	public const uint32 CTRY_DEFAULT = 0;
	public const uint32 CTRY_ALBANIA = 355;
	public const uint32 CTRY_ALGERIA = 213;
	public const uint32 CTRY_ARGENTINA = 54;
	public const uint32 CTRY_ARMENIA = 374;
	public const uint32 CTRY_AUSTRALIA = 61;
	public const uint32 CTRY_AUSTRIA = 43;
	public const uint32 CTRY_AZERBAIJAN = 994;
	public const uint32 CTRY_BAHRAIN = 973;
	public const uint32 CTRY_BELARUS = 375;
	public const uint32 CTRY_BELGIUM = 32;
	public const uint32 CTRY_BELIZE = 501;
	public const uint32 CTRY_BOLIVIA = 591;
	public const uint32 CTRY_BRAZIL = 55;
	public const uint32 CTRY_BRUNEI_DARUSSALAM = 673;
	public const uint32 CTRY_BULGARIA = 359;
	public const uint32 CTRY_CANADA = 2;
	public const uint32 CTRY_CARIBBEAN = 1;
	public const uint32 CTRY_CHILE = 56;
	public const uint32 CTRY_COLOMBIA = 57;
	public const uint32 CTRY_COSTA_RICA = 506;
	public const uint32 CTRY_CROATIA = 385;
	public const uint32 CTRY_CZECH = 420;
	public const uint32 CTRY_DENMARK = 45;
	public const uint32 CTRY_DOMINICAN_REPUBLIC = 1;
	public const uint32 CTRY_ECUADOR = 593;
	public const uint32 CTRY_EGYPT = 20;
	public const uint32 CTRY_EL_SALVADOR = 503;
	public const uint32 CTRY_ESTONIA = 372;
	public const uint32 CTRY_FAEROE_ISLANDS = 298;
	public const uint32 CTRY_FINLAND = 358;
	public const uint32 CTRY_FRANCE = 33;
	public const uint32 CTRY_GEORGIA = 995;
	public const uint32 CTRY_GERMANY = 49;
	public const uint32 CTRY_GREECE = 30;
	public const uint32 CTRY_GUATEMALA = 502;
	public const uint32 CTRY_HONDURAS = 504;
	public const uint32 CTRY_HONG_KONG = 852;
	public const uint32 CTRY_HUNGARY = 36;
	public const uint32 CTRY_ICELAND = 354;
	public const uint32 CTRY_INDIA = 91;
	public const uint32 CTRY_INDONESIA = 62;
	public const uint32 CTRY_IRAN = 981;
	public const uint32 CTRY_IRAQ = 964;
	public const uint32 CTRY_IRELAND = 353;
	public const uint32 CTRY_ISRAEL = 972;
	public const uint32 CTRY_ITALY = 39;
	public const uint32 CTRY_JAMAICA = 1;
	public const uint32 CTRY_JAPAN = 81;
	public const uint32 CTRY_JORDAN = 962;
	public const uint32 CTRY_KAZAKSTAN = 7;
	public const uint32 CTRY_KENYA = 254;
	public const uint32 CTRY_KUWAIT = 965;
	public const uint32 CTRY_KYRGYZSTAN = 996;
	public const uint32 CTRY_LATVIA = 371;
	public const uint32 CTRY_LEBANON = 961;
	public const uint32 CTRY_LIBYA = 218;
	public const uint32 CTRY_LIECHTENSTEIN = 41;
	public const uint32 CTRY_LITHUANIA = 370;
	public const uint32 CTRY_LUXEMBOURG = 352;
	public const uint32 CTRY_MACAU = 853;
	public const uint32 CTRY_MACEDONIA = 389;
	public const uint32 CTRY_MALAYSIA = 60;
	public const uint32 CTRY_MALDIVES = 960;
	public const uint32 CTRY_MEXICO = 52;
	public const uint32 CTRY_MONACO = 33;
	public const uint32 CTRY_MONGOLIA = 976;
	public const uint32 CTRY_MOROCCO = 212;
	public const uint32 CTRY_NETHERLANDS = 31;
	public const uint32 CTRY_NEW_ZEALAND = 64;
	public const uint32 CTRY_NICARAGUA = 505;
	public const uint32 CTRY_NORWAY = 47;
	public const uint32 CTRY_OMAN = 968;
	public const uint32 CTRY_PAKISTAN = 92;
	public const uint32 CTRY_PANAMA = 507;
	public const uint32 CTRY_PARAGUAY = 595;
	public const uint32 CTRY_PERU = 51;
	public const uint32 CTRY_PHILIPPINES = 63;
	public const uint32 CTRY_POLAND = 48;
	public const uint32 CTRY_PORTUGAL = 351;
	public const uint32 CTRY_PRCHINA = 86;
	public const uint32 CTRY_PUERTO_RICO = 1;
	public const uint32 CTRY_QATAR = 974;
	public const uint32 CTRY_ROMANIA = 40;
	public const uint32 CTRY_RUSSIA = 7;
	public const uint32 CTRY_SAUDI_ARABIA = 966;
	public const uint32 CTRY_SERBIA = 381;
	public const uint32 CTRY_SINGAPORE = 65;
	public const uint32 CTRY_SLOVAK = 421;
	public const uint32 CTRY_SLOVENIA = 386;
	public const uint32 CTRY_SOUTH_AFRICA = 27;
	public const uint32 CTRY_SOUTH_KOREA = 82;
	public const uint32 CTRY_SPAIN = 34;
	public const uint32 CTRY_SWEDEN = 46;
	public const uint32 CTRY_SWITZERLAND = 41;
	public const uint32 CTRY_SYRIA = 963;
	public const uint32 CTRY_TAIWAN = 886;
	public const uint32 CTRY_TATARSTAN = 7;
	public const uint32 CTRY_THAILAND = 66;
	public const uint32 CTRY_TRINIDAD_Y_TOBAGO = 1;
	public const uint32 CTRY_TUNISIA = 216;
	public const uint32 CTRY_TURKEY = 90;
	public const uint32 CTRY_UAE = 971;
	public const uint32 CTRY_UKRAINE = 380;
	public const uint32 CTRY_UNITED_KINGDOM = 44;
	public const uint32 CTRY_UNITED_STATES = 1;
	public const uint32 CTRY_URUGUAY = 598;
	public const uint32 CTRY_UZBEKISTAN = 7;
	public const uint32 CTRY_VENEZUELA = 58;
	public const uint32 CTRY_VIET_NAM = 84;
	public const uint32 CTRY_YEMEN = 967;
	public const uint32 CTRY_ZIMBABWE = 263;
	public const uint32 LOCALE_NOUSEROVERRIDE = 2147483648;
	public const uint32 LOCALE_USE_CP_ACP = 1073741824;
	public const uint32 LOCALE_RETURN_NUMBER = 536870912;
	public const uint32 LOCALE_RETURN_GENITIVE_NAMES = 268435456;
	public const uint32 LOCALE_ALLOW_NEUTRAL_NAMES = 134217728;
	public const uint32 LOCALE_SLOCALIZEDDISPLAYNAME = 2;
	public const uint32 LOCALE_SENGLISHDISPLAYNAME = 114;
	public const uint32 LOCALE_SNATIVEDISPLAYNAME = 115;
	public const uint32 LOCALE_SLOCALIZEDLANGUAGENAME = 111;
	public const uint32 LOCALE_SENGLISHLANGUAGENAME = 4097;
	public const uint32 LOCALE_SNATIVELANGUAGENAME = 4;
	public const uint32 LOCALE_SLOCALIZEDCOUNTRYNAME = 6;
	public const uint32 LOCALE_SENGLISHCOUNTRYNAME = 4098;
	public const uint32 LOCALE_SNATIVECOUNTRYNAME = 8;
	public const uint32 LOCALE_IDIALINGCODE = 5;
	public const uint32 LOCALE_SLIST = 12;
	public const uint32 LOCALE_IMEASURE = 13;
	public const uint32 LOCALE_SDECIMAL = 14;
	public const uint32 LOCALE_STHOUSAND = 15;
	public const uint32 LOCALE_SGROUPING = 16;
	public const uint32 LOCALE_IDIGITS = 17;
	public const uint32 LOCALE_ILZERO = 18;
	public const uint32 LOCALE_INEGNUMBER = 4112;
	public const uint32 LOCALE_SNATIVEDIGITS = 19;
	public const uint32 LOCALE_SCURRENCY = 20;
	public const uint32 LOCALE_SINTLSYMBOL = 21;
	public const uint32 LOCALE_SMONDECIMALSEP = 22;
	public const uint32 LOCALE_SMONTHOUSANDSEP = 23;
	public const uint32 LOCALE_SMONGROUPING = 24;
	public const uint32 LOCALE_ICURRDIGITS = 25;
	public const uint32 LOCALE_ICURRENCY = 27;
	public const uint32 LOCALE_INEGCURR = 28;
	public const uint32 LOCALE_SSHORTDATE = 31;
	public const uint32 LOCALE_SLONGDATE = 32;
	public const uint32 LOCALE_STIMEFORMAT = 4099;
	public const uint32 LOCALE_SAM = 40;
	public const uint32 LOCALE_SPM = 41;
	public const uint32 LOCALE_ICALENDARTYPE = 4105;
	public const uint32 LOCALE_IOPTIONALCALENDAR = 4107;
	public const uint32 LOCALE_IFIRSTDAYOFWEEK = 4108;
	public const uint32 LOCALE_IFIRSTWEEKOFYEAR = 4109;
	public const uint32 LOCALE_SDAYNAME1 = 42;
	public const uint32 LOCALE_SDAYNAME2 = 43;
	public const uint32 LOCALE_SDAYNAME3 = 44;
	public const uint32 LOCALE_SDAYNAME4 = 45;
	public const uint32 LOCALE_SDAYNAME5 = 46;
	public const uint32 LOCALE_SDAYNAME6 = 47;
	public const uint32 LOCALE_SDAYNAME7 = 48;
	public const uint32 LOCALE_SABBREVDAYNAME1 = 49;
	public const uint32 LOCALE_SABBREVDAYNAME2 = 50;
	public const uint32 LOCALE_SABBREVDAYNAME3 = 51;
	public const uint32 LOCALE_SABBREVDAYNAME4 = 52;
	public const uint32 LOCALE_SABBREVDAYNAME5 = 53;
	public const uint32 LOCALE_SABBREVDAYNAME6 = 54;
	public const uint32 LOCALE_SABBREVDAYNAME7 = 55;
	public const uint32 LOCALE_SMONTHNAME1 = 56;
	public const uint32 LOCALE_SMONTHNAME2 = 57;
	public const uint32 LOCALE_SMONTHNAME3 = 58;
	public const uint32 LOCALE_SMONTHNAME4 = 59;
	public const uint32 LOCALE_SMONTHNAME5 = 60;
	public const uint32 LOCALE_SMONTHNAME6 = 61;
	public const uint32 LOCALE_SMONTHNAME7 = 62;
	public const uint32 LOCALE_SMONTHNAME8 = 63;
	public const uint32 LOCALE_SMONTHNAME9 = 64;
	public const uint32 LOCALE_SMONTHNAME10 = 65;
	public const uint32 LOCALE_SMONTHNAME11 = 66;
	public const uint32 LOCALE_SMONTHNAME12 = 67;
	public const uint32 LOCALE_SMONTHNAME13 = 4110;
	public const uint32 LOCALE_SABBREVMONTHNAME1 = 68;
	public const uint32 LOCALE_SABBREVMONTHNAME2 = 69;
	public const uint32 LOCALE_SABBREVMONTHNAME3 = 70;
	public const uint32 LOCALE_SABBREVMONTHNAME4 = 71;
	public const uint32 LOCALE_SABBREVMONTHNAME5 = 72;
	public const uint32 LOCALE_SABBREVMONTHNAME6 = 73;
	public const uint32 LOCALE_SABBREVMONTHNAME7 = 74;
	public const uint32 LOCALE_SABBREVMONTHNAME8 = 75;
	public const uint32 LOCALE_SABBREVMONTHNAME9 = 76;
	public const uint32 LOCALE_SABBREVMONTHNAME10 = 77;
	public const uint32 LOCALE_SABBREVMONTHNAME11 = 78;
	public const uint32 LOCALE_SABBREVMONTHNAME12 = 79;
	public const uint32 LOCALE_SABBREVMONTHNAME13 = 4111;
	public const uint32 LOCALE_SPOSITIVESIGN = 80;
	public const uint32 LOCALE_SNEGATIVESIGN = 81;
	public const uint32 LOCALE_IPOSSIGNPOSN = 82;
	public const uint32 LOCALE_INEGSIGNPOSN = 83;
	public const uint32 LOCALE_IPOSSYMPRECEDES = 84;
	public const uint32 LOCALE_IPOSSEPBYSPACE = 85;
	public const uint32 LOCALE_INEGSYMPRECEDES = 86;
	public const uint32 LOCALE_INEGSEPBYSPACE = 87;
	public const uint32 LOCALE_FONTSIGNATURE = 88;
	public const uint32 LOCALE_SISO639LANGNAME = 89;
	public const uint32 LOCALE_SISO3166CTRYNAME = 90;
	public const uint32 LOCALE_IPAPERSIZE = 4106;
	public const uint32 LOCALE_SENGCURRNAME = 4103;
	public const uint32 LOCALE_SNATIVECURRNAME = 4104;
	public const uint32 LOCALE_SYEARMONTH = 4102;
	public const uint32 LOCALE_SSORTNAME = 4115;
	public const uint32 LOCALE_IDIGITSUBSTITUTION = 4116;
	public const uint32 LOCALE_SNAME = 92;
	public const uint32 LOCALE_SDURATION = 93;
	public const uint32 LOCALE_SSHORTESTDAYNAME1 = 96;
	public const uint32 LOCALE_SSHORTESTDAYNAME2 = 97;
	public const uint32 LOCALE_SSHORTESTDAYNAME3 = 98;
	public const uint32 LOCALE_SSHORTESTDAYNAME4 = 99;
	public const uint32 LOCALE_SSHORTESTDAYNAME5 = 100;
	public const uint32 LOCALE_SSHORTESTDAYNAME6 = 101;
	public const uint32 LOCALE_SSHORTESTDAYNAME7 = 102;
	public const uint32 LOCALE_SISO639LANGNAME2 = 103;
	public const uint32 LOCALE_SISO3166CTRYNAME2 = 104;
	public const uint32 LOCALE_SNAN = 105;
	public const uint32 LOCALE_SPOSINFINITY = 106;
	public const uint32 LOCALE_SNEGINFINITY = 107;
	public const uint32 LOCALE_SSCRIPTS = 108;
	public const uint32 LOCALE_SPARENT = 109;
	public const uint32 LOCALE_SCONSOLEFALLBACKNAME = 110;
	public const uint32 LOCALE_IREADINGLAYOUT = 112;
	public const uint32 LOCALE_INEUTRAL = 113;
	public const uint32 LOCALE_INEGATIVEPERCENT = 116;
	public const uint32 LOCALE_IPOSITIVEPERCENT = 117;
	public const uint32 LOCALE_SPERCENT = 118;
	public const uint32 LOCALE_SPERMILLE = 119;
	public const uint32 LOCALE_SMONTHDAY = 120;
	public const uint32 LOCALE_SSHORTTIME = 121;
	public const uint32 LOCALE_SOPENTYPELANGUAGETAG = 122;
	public const uint32 LOCALE_SSORTLOCALE = 123;
	public const uint32 LOCALE_SRELATIVELONGDATE = 124;
	public const uint32 LOCALE_ICONSTRUCTEDLOCALE = 125;
	public const uint32 LOCALE_SSHORTESTAM = 126;
	public const uint32 LOCALE_SSHORTESTPM = 127;
	public const uint32 LOCALE_IUSEUTF8LEGACYACP = 1638;
	public const uint32 LOCALE_IUSEUTF8LEGACYOEMCP = 2457;
	public const uint32 LOCALE_IDEFAULTCODEPAGE = 11;
	public const uint32 LOCALE_IDEFAULTANSICODEPAGE = 4100;
	public const uint32 LOCALE_IDEFAULTMACCODEPAGE = 4113;
	public const uint32 LOCALE_IDEFAULTEBCDICCODEPAGE = 4114;
	public const uint32 LOCALE_ILANGUAGE = 1;
	public const uint32 LOCALE_SABBREVLANGNAME = 3;
	public const uint32 LOCALE_SABBREVCTRYNAME = 7;
	public const uint32 LOCALE_IGEOID = 91;
	public const uint32 LOCALE_IDEFAULTLANGUAGE = 9;
	public const uint32 LOCALE_IDEFAULTCOUNTRY = 10;
	public const uint32 LOCALE_IINTLCURRDIGITS = 26;
	public const uint32 LOCALE_SDATE = 29;
	public const uint32 LOCALE_STIME = 30;
	public const uint32 LOCALE_IDATE = 33;
	public const uint32 LOCALE_ILDATE = 34;
	public const uint32 LOCALE_ITIME = 35;
	public const uint32 LOCALE_ITIMEMARKPOSN = 4101;
	public const uint32 LOCALE_ICENTURY = 36;
	public const uint32 LOCALE_ITLZERO = 37;
	public const uint32 LOCALE_IDAYLZERO = 38;
	public const uint32 LOCALE_IMONLZERO = 39;
	public const uint32 LOCALE_SKEYBOARDSTOINSTALL = 94;
	public const uint32 LOCALE_SLANGUAGE = 2;
	public const uint32 LOCALE_SLANGDISPLAYNAME = 111;
	public const uint32 LOCALE_SENGLANGUAGE = 4097;
	public const uint32 LOCALE_SNATIVELANGNAME = 4;
	public const uint32 LOCALE_SCOUNTRY = 6;
	public const uint32 LOCALE_SENGCOUNTRY = 4098;
	public const uint32 LOCALE_SNATIVECTRYNAME = 8;
	public const uint32 LOCALE_ICOUNTRY = 5;
	public const uint32 LOCALE_S1159 = 40;
	public const uint32 LOCALE_S2359 = 41;
	public const uint32 CAL_NOUSEROVERRIDE = 2147483648;
	public const uint32 CAL_USE_CP_ACP = 1073741824;
	public const uint32 CAL_RETURN_NUMBER = 536870912;
	public const uint32 CAL_RETURN_GENITIVE_NAMES = 268435456;
	public const uint32 CAL_ICALINTVALUE = 1;
	public const uint32 CAL_SCALNAME = 2;
	public const uint32 CAL_IYEAROFFSETRANGE = 3;
	public const uint32 CAL_SERASTRING = 4;
	public const uint32 CAL_SSHORTDATE = 5;
	public const uint32 CAL_SLONGDATE = 6;
	public const uint32 CAL_SDAYNAME1 = 7;
	public const uint32 CAL_SDAYNAME2 = 8;
	public const uint32 CAL_SDAYNAME3 = 9;
	public const uint32 CAL_SDAYNAME4 = 10;
	public const uint32 CAL_SDAYNAME5 = 11;
	public const uint32 CAL_SDAYNAME6 = 12;
	public const uint32 CAL_SDAYNAME7 = 13;
	public const uint32 CAL_SABBREVDAYNAME1 = 14;
	public const uint32 CAL_SABBREVDAYNAME2 = 15;
	public const uint32 CAL_SABBREVDAYNAME3 = 16;
	public const uint32 CAL_SABBREVDAYNAME4 = 17;
	public const uint32 CAL_SABBREVDAYNAME5 = 18;
	public const uint32 CAL_SABBREVDAYNAME6 = 19;
	public const uint32 CAL_SABBREVDAYNAME7 = 20;
	public const uint32 CAL_SMONTHNAME1 = 21;
	public const uint32 CAL_SMONTHNAME2 = 22;
	public const uint32 CAL_SMONTHNAME3 = 23;
	public const uint32 CAL_SMONTHNAME4 = 24;
	public const uint32 CAL_SMONTHNAME5 = 25;
	public const uint32 CAL_SMONTHNAME6 = 26;
	public const uint32 CAL_SMONTHNAME7 = 27;
	public const uint32 CAL_SMONTHNAME8 = 28;
	public const uint32 CAL_SMONTHNAME9 = 29;
	public const uint32 CAL_SMONTHNAME10 = 30;
	public const uint32 CAL_SMONTHNAME11 = 31;
	public const uint32 CAL_SMONTHNAME12 = 32;
	public const uint32 CAL_SMONTHNAME13 = 33;
	public const uint32 CAL_SABBREVMONTHNAME1 = 34;
	public const uint32 CAL_SABBREVMONTHNAME2 = 35;
	public const uint32 CAL_SABBREVMONTHNAME3 = 36;
	public const uint32 CAL_SABBREVMONTHNAME4 = 37;
	public const uint32 CAL_SABBREVMONTHNAME5 = 38;
	public const uint32 CAL_SABBREVMONTHNAME6 = 39;
	public const uint32 CAL_SABBREVMONTHNAME7 = 40;
	public const uint32 CAL_SABBREVMONTHNAME8 = 41;
	public const uint32 CAL_SABBREVMONTHNAME9 = 42;
	public const uint32 CAL_SABBREVMONTHNAME10 = 43;
	public const uint32 CAL_SABBREVMONTHNAME11 = 44;
	public const uint32 CAL_SABBREVMONTHNAME12 = 45;
	public const uint32 CAL_SABBREVMONTHNAME13 = 46;
	public const uint32 CAL_SYEARMONTH = 47;
	public const uint32 CAL_ITWODIGITYEARMAX = 48;
	public const uint32 CAL_SSHORTESTDAYNAME1 = 49;
	public const uint32 CAL_SSHORTESTDAYNAME2 = 50;
	public const uint32 CAL_SSHORTESTDAYNAME3 = 51;
	public const uint32 CAL_SSHORTESTDAYNAME4 = 52;
	public const uint32 CAL_SSHORTESTDAYNAME5 = 53;
	public const uint32 CAL_SSHORTESTDAYNAME6 = 54;
	public const uint32 CAL_SSHORTESTDAYNAME7 = 55;
	public const uint32 CAL_SMONTHDAY = 56;
	public const uint32 CAL_SABBREVERASTRING = 57;
	public const uint32 CAL_SRELATIVELONGDATE = 58;
	public const uint32 CAL_SENGLISHERANAME = 59;
	public const uint32 CAL_SENGLISHABBREVERANAME = 60;
	public const uint32 CAL_SJAPANESEERAFIRSTYEAR = 61;
	public const uint32 ENUM_ALL_CALENDARS = 4294967295;
	public const uint32 CAL_GREGORIAN = 1;
	public const uint32 CAL_GREGORIAN_US = 2;
	public const uint32 CAL_JAPAN = 3;
	public const uint32 CAL_TAIWAN = 4;
	public const uint32 CAL_KOREA = 5;
	public const uint32 CAL_HIJRI = 6;
	public const uint32 CAL_THAI = 7;
	public const uint32 CAL_HEBREW = 8;
	public const uint32 CAL_GREGORIAN_ME_FRENCH = 9;
	public const uint32 CAL_GREGORIAN_ARABIC = 10;
	public const uint32 CAL_GREGORIAN_XLIT_ENGLISH = 11;
	public const uint32 CAL_GREGORIAN_XLIT_FRENCH = 12;
	public const uint32 CAL_PERSIAN = 22;
	public const uint32 CAL_UMALQURA = 23;
	public const uint32 LGRPID_WESTERN_EUROPE = 1;
	public const uint32 LGRPID_CENTRAL_EUROPE = 2;
	public const uint32 LGRPID_BALTIC = 3;
	public const uint32 LGRPID_GREEK = 4;
	public const uint32 LGRPID_CYRILLIC = 5;
	public const uint32 LGRPID_TURKIC = 6;
	public const uint32 LGRPID_TURKISH = 6;
	public const uint32 LGRPID_JAPANESE = 7;
	public const uint32 LGRPID_KOREAN = 8;
	public const uint32 LGRPID_TRADITIONAL_CHINESE = 9;
	public const uint32 LGRPID_SIMPLIFIED_CHINESE = 10;
	public const uint32 LGRPID_THAI = 11;
	public const uint32 LGRPID_HEBREW = 12;
	public const uint32 LGRPID_ARABIC = 13;
	public const uint32 LGRPID_VIETNAMESE = 14;
	public const uint32 LGRPID_INDIC = 15;
	public const uint32 LGRPID_GEORGIAN = 16;
	public const uint32 LGRPID_ARMENIAN = 17;
	public const uint32 MUI_LANGUAGE_ID = 4;
	public const uint32 MUI_LANGUAGE_NAME = 8;
	public const uint32 MUI_MERGE_SYSTEM_FALLBACK = 16;
	public const uint32 MUI_MERGE_USER_FALLBACK = 32;
	public const uint32 MUI_THREAD_LANGUAGES = 64;
	public const uint32 MUI_CONSOLE_FILTER = 256;
	public const uint32 MUI_COMPLEX_SCRIPT_FILTER = 512;
	public const uint32 MUI_RESET_FILTERS = 1;
	public const uint32 MUI_USER_PREFERRED_UI_LANGUAGES = 16;
	public const uint32 MUI_USE_INSTALLED_LANGUAGES = 32;
	public const uint32 MUI_USE_SEARCH_ALL_LANGUAGES = 64;
	public const uint32 MUI_LANG_NEUTRAL_PE_FILE = 256;
	public const uint32 MUI_NON_LANG_NEUTRAL_FILE = 512;
	public const uint32 MUI_MACHINE_LANGUAGE_SETTINGS = 1024;
	public const uint32 MUI_FILETYPE_NOT_LANGUAGE_NEUTRAL = 1;
	public const uint32 MUI_FILETYPE_LANGUAGE_NEUTRAL_MAIN = 2;
	public const uint32 MUI_FILETYPE_LANGUAGE_NEUTRAL_MUI = 4;
	public const uint32 MUI_QUERY_TYPE = 1;
	public const uint32 MUI_QUERY_CHECKSUM = 2;
	public const uint32 MUI_QUERY_LANGUAGE_NAME = 4;
	public const uint32 MUI_QUERY_RESOURCE_TYPES = 8;
	public const uint32 MUI_FILEINFO_VERSION = 1;
	public const uint32 MUI_FULL_LANGUAGE = 1;
	public const uint32 MUI_PARTIAL_LANGUAGE = 2;
	public const uint32 MUI_LIP_LANGUAGE = 4;
	public const uint32 MUI_LANGUAGE_INSTALLED = 32;
	public const uint32 MUI_LANGUAGE_LICENSED = 64;
	public const int32 GEOID_NOT_AVAILABLE = -1;
	public const uint32 SORTING_PARADIGM_NLS = 0;
	public const uint32 SORTING_PARADIGM_ICU = 16777216;
	public const uint32 IDN_ALLOW_UNASSIGNED = 1;
	public const uint32 IDN_USE_STD3_ASCII_RULES = 2;
	public const uint32 IDN_EMAIL_ADDRESS = 4;
	public const uint32 IDN_RAW_PUNYCODE = 8;
	public const uint32 VS_ALLOW_LATIN = 1;
	public const uint32 GSS_ALLOW_INHERITED_COMMON = 1;
	public const uint32 MUI_FORMAT_REG_COMPAT = 1;
	public const uint32 MUI_FORMAT_INF_COMPAT = 2;
	public const uint32 MUI_VERIFY_FILE_EXISTS = 4;
	public const uint32 MUI_SKIP_STRING_CACHE = 8;
	public const uint32 MUI_IMMUTABLE_LOOKUP = 16;
	public const uint32 MIN_SPELLING_NTDDI = 100794368;
	public const uint32 SCRIPT_UNDEFINED = 0;
	public const HRESULT USP_E_SCRIPT_NOT_IN_FONT = -2147220992;
	public const uint32 SGCM_RTL = 1;
	public const uint32 SSA_PASSWORD = 1;
	public const uint32 SSA_TAB = 2;
	public const uint32 SSA_CLIP = 4;
	public const uint32 SSA_FIT = 8;
	public const uint32 SSA_DZWG = 16;
	public const uint32 SSA_FALLBACK = 32;
	public const uint32 SSA_BREAK = 64;
	public const uint32 SSA_GLYPHS = 128;
	public const uint32 SSA_RTL = 256;
	public const uint32 SSA_GCP = 512;
	public const uint32 SSA_HOTKEY = 1024;
	public const uint32 SSA_METAFILE = 2048;
	public const uint32 SSA_LINK = 4096;
	public const uint32 SSA_HIDEHOTKEY = 8192;
	public const uint32 SSA_HOTKEYONLY = 9216;
	public const uint32 SSA_FULLMEASURE = 67108864;
	public const uint32 SSA_LPKANSIFALLBACK = 134217728;
	public const uint32 SSA_PIDX = 268435456;
	public const uint32 SSA_LAYOUTRTL = 536870912;
	public const uint32 SSA_DONTGLYPH = 1073741824;
	public const uint32 SSA_NOKASHIDA = 2147483648;
	public const uint32 SCRIPT_DIGITSUBSTITUTE_CONTEXT = 0;
	public const uint32 SCRIPT_DIGITSUBSTITUTE_NONE = 1;
	public const uint32 SCRIPT_DIGITSUBSTITUTE_NATIONAL = 2;
	public const uint32 SCRIPT_DIGITSUBSTITUTE_TRADITIONAL = 3;
	public const uint32 UNISCRIBE_OPENTYPE = 256;
	public const uint32 SCRIPT_TAG_UNKNOWN = 0;
	public const uint32 MUI_LANGUAGE_EXACT = 16;
	public const uint32 NLS_CP_CPINFO = 268435456;
	public const uint32 NLS_CP_MBTOWC = 1073741824;
	public const uint32 NLS_CP_WCTOMB = 2147483648;
	public const uint32 U_DISABLE_RENAMING = 1;
	public const uint32 U_SHOW_CPLUSPLUS_API = 0;
	public const uint32 U_DEFAULT_SHOW_DRAFT = 0;
	public const uint32 U_HIDE_DRAFT_API = 1;
	public const uint32 U_HIDE_DEPRECATED_API = 1;
	public const uint32 U_HIDE_OBSOLETE_API = 1;
	public const uint32 U_HIDE_INTERNAL_API = 1;
	public const uint32 U_NO_DEFAULT_INCLUDE_UTF_HEADERS = 1;
	public const uint32 UCLN_NO_AUTO_CLEANUP = 1;
	public const uint32 U_OVERRIDE_CXX_ALLOCATION = 1;
	public const uint32 U_ENABLE_TRACING = 0;
	public const uint32 UCONFIG_ENABLE_PLUGINS = 0;
	public const uint32 U_ENABLE_DYLOAD = 1;
	public const uint32 U_CHECK_DYLOAD = 1;
	public const uint32 U_PF_UNKNOWN = 0;
	public const uint32 U_PF_WINDOWS = 1000;
	public const uint32 U_PF_MINGW = 1800;
	public const uint32 U_PF_CYGWIN = 1900;
	public const uint32 U_PF_HPUX = 2100;
	public const uint32 U_PF_SOLARIS = 2600;
	public const uint32 U_PF_BSD = 3000;
	public const uint32 U_PF_AIX = 3100;
	public const uint32 U_PF_IRIX = 3200;
	public const uint32 U_PF_DARWIN = 3500;
	public const uint32 U_PF_IPHONE = 3550;
	public const uint32 U_PF_QNX = 3700;
	public const uint32 U_PF_LINUX = 4000;
	public const uint32 U_PF_BROWSER_NATIVE_CLIENT = 4020;
	public const uint32 U_PF_ANDROID = 4050;
	public const uint32 U_PF_FUCHSIA = 4100;
	public const uint32 U_PF_EMSCRIPTEN = 5010;
	public const uint32 U_PF_OS390 = 9000;
	public const uint32 U_PF_OS400 = 9400;
	public const uint32 U_ASCII_FAMILY = 0;
	public const uint32 U_EBCDIC_FAMILY = 1;
	public const uint32 U_DEFINE_FALSE_AND_TRUE = 1;
	public const uint32 U_SIZEOF_UCHAR = 2;
	public const int32 U_SENTINEL = -1;
	public const uint32 U8_MAX_LENGTH = 4;
	public const uint32 U16_MAX_LENGTH = 2;
	public const uint32 UTF_SIZE = 16;
	public const uint32 UTF8_ERROR_VALUE_1 = 21;
	public const uint32 UTF8_ERROR_VALUE_2 = 159;
	public const uint32 UTF_ERROR_VALUE = 65535;
	public const uint32 UTF8_MAX_CHAR_LENGTH = 4;
	public const uint32 UTF16_MAX_CHAR_LENGTH = 2;
	public const uint32 UTF32_MAX_CHAR_LENGTH = 1;
	public const uint32 UTF_MAX_CHAR_LENGTH = 2;
	public const uint32 U_COPYRIGHT_STRING_LENGTH = 128;
	public const uint32 U_MAX_VERSION_LENGTH = 4;
	public const uint32 U_MAX_VERSION_STRING_LENGTH = 20;
	public const uint32 U_MILLIS_PER_SECOND = 1000;
	public const uint32 U_MILLIS_PER_MINUTE = 60000;
	public const uint32 U_MILLIS_PER_HOUR = 3600000;
	public const uint32 U_MILLIS_PER_DAY = 86400000;
	public const uint32 U_COMBINED_IMPLEMENTATION = 1;
	public const uint32 U_SHAPE_LENGTH_GROW_SHRINK = 0;
	public const uint32 U_SHAPE_LAMALEF_RESIZE = 0;
	public const uint32 U_SHAPE_LENGTH_FIXED_SPACES_NEAR = 1;
	public const uint32 U_SHAPE_LAMALEF_NEAR = 1;
	public const uint32 U_SHAPE_LENGTH_FIXED_SPACES_AT_END = 2;
	public const uint32 U_SHAPE_LAMALEF_END = 2;
	public const uint32 U_SHAPE_LENGTH_FIXED_SPACES_AT_BEGINNING = 3;
	public const uint32 U_SHAPE_LAMALEF_BEGIN = 3;
	public const uint32 U_SHAPE_LAMALEF_AUTO = 65536;
	public const uint32 U_SHAPE_LENGTH_MASK = 65539;
	public const uint32 U_SHAPE_LAMALEF_MASK = 65539;
	public const uint32 U_SHAPE_TEXT_DIRECTION_LOGICAL = 0;
	public const uint32 U_SHAPE_TEXT_DIRECTION_VISUAL_RTL = 0;
	public const uint32 U_SHAPE_TEXT_DIRECTION_VISUAL_LTR = 4;
	public const uint32 U_SHAPE_TEXT_DIRECTION_MASK = 4;
	public const uint32 U_SHAPE_LETTERS_NOOP = 0;
	public const uint32 U_SHAPE_LETTERS_SHAPE = 8;
	public const uint32 U_SHAPE_LETTERS_UNSHAPE = 16;
	public const uint32 U_SHAPE_LETTERS_SHAPE_TASHKEEL_ISOLATED = 24;
	public const uint32 U_SHAPE_LETTERS_MASK = 24;
	public const uint32 U_SHAPE_DIGITS_NOOP = 0;
	public const uint32 U_SHAPE_DIGITS_EN2AN = 32;
	public const uint32 U_SHAPE_DIGITS_AN2EN = 64;
	public const uint32 U_SHAPE_DIGITS_ALEN2AN_INIT_LR = 96;
	public const uint32 U_SHAPE_DIGITS_ALEN2AN_INIT_AL = 128;
	public const uint32 U_SHAPE_DIGITS_RESERVED = 160;
	public const uint32 U_SHAPE_DIGITS_MASK = 224;
	public const uint32 U_SHAPE_DIGIT_TYPE_AN = 0;
	public const uint32 U_SHAPE_DIGIT_TYPE_AN_EXTENDED = 256;
	public const uint32 U_SHAPE_DIGIT_TYPE_RESERVED = 512;
	public const uint32 U_SHAPE_DIGIT_TYPE_MASK = 768;
	public const uint32 U_SHAPE_AGGREGATE_TASHKEEL = 16384;
	public const uint32 U_SHAPE_AGGREGATE_TASHKEEL_NOOP = 0;
	public const uint32 U_SHAPE_AGGREGATE_TASHKEEL_MASK = 16384;
	public const uint32 U_SHAPE_PRESERVE_PRESENTATION = 32768;
	public const uint32 U_SHAPE_PRESERVE_PRESENTATION_NOOP = 0;
	public const uint32 U_SHAPE_PRESERVE_PRESENTATION_MASK = 32768;
	public const uint32 U_SHAPE_SEEN_TWOCELL_NEAR = 2097152;
	public const uint32 U_SHAPE_SEEN_MASK = 7340032;
	public const uint32 U_SHAPE_YEHHAMZA_TWOCELL_NEAR = 16777216;
	public const uint32 U_SHAPE_YEHHAMZA_MASK = 58720256;
	public const uint32 U_SHAPE_TASHKEEL_BEGIN = 262144;
	public const uint32 U_SHAPE_TASHKEEL_END = 393216;
	public const uint32 U_SHAPE_TASHKEEL_RESIZE = 524288;
	public const uint32 U_SHAPE_TASHKEEL_REPLACE_BY_TATWEEL = 786432;
	public const uint32 U_SHAPE_TASHKEEL_MASK = 917504;
	public const uint32 U_SHAPE_SPACES_RELATIVE_TO_TEXT_BEGIN_END = 67108864;
	public const uint32 U_SHAPE_SPACES_RELATIVE_TO_TEXT_MASK = 67108864;
	public const uint32 U_SHAPE_TAIL_NEW_UNICODE = 134217728;
	public const uint32 U_SHAPE_TAIL_TYPE_MASK = 134217728;
	public const uint32 ULOC_LANG_CAPACITY = 12;
	public const uint32 ULOC_COUNTRY_CAPACITY = 4;
	public const uint32 ULOC_FULLNAME_CAPACITY = 157;
	public const uint32 ULOC_SCRIPT_CAPACITY = 6;
	public const uint32 ULOC_KEYWORDS_CAPACITY = 96;
	public const uint32 ULOC_KEYWORD_AND_VALUES_CAPACITY = 100;
	public const uint32 ULOC_KEYWORD_SEPARATOR_UNICODE = 64;
	public const uint32 ULOC_KEYWORD_ASSIGN_UNICODE = 61;
	public const uint32 ULOC_KEYWORD_ITEM_SEPARATOR_UNICODE = 59;
	public const uint32 UCNV_MAX_CONVERTER_NAME_LENGTH = 60;
	public const uint32 UCNV_SI = 15;
	public const uint32 UCNV_SO = 14;
	public const uint32 U_FOLD_CASE_DEFAULT = 0;
	public const uint32 U_FOLD_CASE_EXCLUDE_SPECIAL_I = 1;
	public const uint32 U_TITLECASE_WHOLE_STRING = 32;
	public const uint32 U_TITLECASE_SENTENCES = 64;
	public const uint32 U_TITLECASE_NO_LOWERCASE = 256;
	public const uint32 U_TITLECASE_NO_BREAK_ADJUSTMENT = 512;
	public const uint32 U_TITLECASE_ADJUST_TO_CASED = 1024;
	public const uint32 U_EDITS_NO_RESET = 8192;
	public const uint32 U_OMIT_UNCHANGED_TEXT = 16384;
	public const uint32 U_COMPARE_CODE_POINT_ORDER = 32768;
	public const uint32 U_COMPARE_IGNORE_CASE = 65536;
	public const uint32 UNORM_INPUT_IS_FCD = 131072;
	public const uint32 UCHAR_MIN_VALUE = 0;
	public const uint32 UCHAR_MAX_VALUE = 1114111;
	public const uint32 UBIDI_DEFAULT_LTR = 254;
	public const uint32 UBIDI_DEFAULT_RTL = 255;
	public const uint32 UBIDI_MAX_EXPLICIT_LEVEL = 125;
	public const uint32 UBIDI_LEVEL_OVERRIDE = 128;
	public const int32 UBIDI_MAP_NOWHERE = -1;
	public const uint32 UBIDI_KEEP_BASE_COMBINING = 1;
	public const uint32 UBIDI_DO_MIRRORING = 2;
	public const uint32 UBIDI_INSERT_LRM_FOR_NUMERIC = 4;
	public const uint32 UBIDI_REMOVE_BIDI_CONTROLS = 8;
	public const uint32 UBIDI_OUTPUT_REVERSE = 16;
	public const uint32 USPREP_DEFAULT = 0;
	public const uint32 USPREP_ALLOW_UNASSIGNED = 1;
	public const int32 USEARCH_DONE = -1;
	public const uint32 U_HAVE_STD_STRING = 0;
	public const uint32 U_IOSTREAM_SOURCE = 199711;
	public const uint32 CANITER_SKIP_ZEROES = 1;
	public const uint32 NUMSYS_NAME_CAPACITY = 8;
	public const uint32 U_HAVE_RBNF = 0;
	public const uint32 IME_CMODE_ALPHANUMERIC = 0;
	public const uint32 IME_CMODE_NATIVE = 1;
	public const uint32 IME_CMODE_CHINESE = 1;
	public const uint32 IME_CMODE_HANGUL = 1;
	public const uint32 IME_CMODE_JAPANESE = 1;
	public const uint32 IME_CMODE_KATAKANA = 2;
	public const uint32 IME_CMODE_LANGUAGE = 3;
	public const uint32 IME_CMODE_FULLSHAPE = 8;
	public const uint32 IME_CMODE_ROMAN = 16;
	public const uint32 IME_CMODE_CHARCODE = 32;
	public const uint32 IME_CMODE_HANJACONVERT = 64;
	public const uint32 IME_CMODE_NATIVESYMBOL = 128;
	public const uint32 MAX_MIMECP_NAME = 64;
	public const uint32 MAX_MIMECSET_NAME = 50;
	public const uint32 MAX_MIMEFACE_NAME = 32;
	public const uint32 MAX_RFC1766_NAME = 6;
	public const uint32 MAX_LOCALE_NAME = 32;
	public const uint32 MAX_SCRIPT_NAME = 48;
	public const int32 CPIOD_PEEK = 1073741824;
	public const int32 CPIOD_FORCE_PROMPT = -2147483648;
	public const int32 UITER_UNKNOWN_INDEX = -2;
	public const int32 UCPTRIE_FAST_SHIFT = 6;
	public const int32 UCPTRIE_FAST_DATA_BLOCK_LENGTH = 64;
	public const int32 UCPTRIE_FAST_DATA_MASK = 63;
	public const int32 UCPTRIE_SMALL_MAX = 4095;
	public const int32 UCPTRIE_ERROR_VALUE_NEG_DATA_OFFSET = 1;
	public const int32 UCPTRIE_HIGH_VALUE_NEG_DATA_OFFSET = 2;
	public const int32 UTEXT_PROVIDER_LENGTH_IS_EXPENSIVE = 1;
	public const int32 UTEXT_PROVIDER_STABLE_CHUNKS = 2;
	public const int32 UTEXT_PROVIDER_WRITABLE = 3;
	public const int32 UTEXT_PROVIDER_HAS_META_DATA = 4;
	public const int32 UTEXT_PROVIDER_OWNS_TEXT = 5;
	public const int32 UTEXT_MAGIC = 878368812;
	public const int32 USET_IGNORE_SPACE = 1;
	public const int32 USET_CASE_INSENSITIVE = 2;
	public const int32 USET_ADD_CASE_MAPPINGS = 4;
	public const int32 USET_SERIALIZED_STATIC_ARRAY_CAPACITY = 8;
	public const int32 U_PARSE_CONTEXT_LEN = 16;
	public const int32 UIDNA_DEFAULT = 0;
	public const int32 UIDNA_USE_STD3_RULES = 2;
	public const int32 UIDNA_CHECK_BIDI = 4;
	public const int32 UIDNA_CHECK_CONTEXTJ = 8;
	public const int32 UIDNA_NONTRANSITIONAL_TO_ASCII = 16;
	public const int32 UIDNA_NONTRANSITIONAL_TO_UNICODE = 32;
	public const int32 UIDNA_CHECK_CONTEXTO = 64;
	public const int32 UIDNA_ERROR_EMPTY_LABEL = 1;
	public const int32 UIDNA_ERROR_LABEL_TOO_LONG = 2;
	public const int32 UIDNA_ERROR_DOMAIN_NAME_TOO_LONG = 4;
	public const int32 UIDNA_ERROR_LEADING_HYPHEN = 8;
	public const int32 UIDNA_ERROR_TRAILING_HYPHEN = 16;
	public const int32 UIDNA_ERROR_HYPHEN_3_4 = 32;
	public const int32 UIDNA_ERROR_LEADING_COMBINING_MARK = 64;
	public const int32 UIDNA_ERROR_DISALLOWED = 128;
	public const int32 UIDNA_ERROR_PUNYCODE = 256;
	public const int32 UIDNA_ERROR_LABEL_HAS_DOT = 512;
	public const int32 UIDNA_ERROR_INVALID_ACE_LABEL = 1024;
	public const int32 UIDNA_ERROR_BIDI = 2048;
	public const int32 UIDNA_ERROR_CONTEXTJ = 4096;
	public const int32 UIDNA_ERROR_CONTEXTO_PUNCTUATION = 8192;
	public const int32 UIDNA_ERROR_CONTEXTO_DIGITS = 16384;
	public const Guid ELS_GUID_LANGUAGE_DETECTION = .(0xcf7e00b1, 0x909b, 0x4d95, 0xa8, 0xf4, 0x61, 0x1f, 0x7c, 0x37, 0x77, 0x02);
	public const Guid ELS_GUID_SCRIPT_DETECTION = .(0x2d64b439, 0x6caf, 0x4f6b, 0xb6, 0x88, 0xe5, 0xd0, 0xf4, 0xfa, 0xa7, 0xd7);
	public const Guid ELS_GUID_TRANSLITERATION_HANT_TO_HANS = .(0xa3a8333b, 0xf4fc, 0x42f6, 0xa0, 0xc4, 0x04, 0x62, 0xfe, 0x73, 0x17, 0xcb);
	public const Guid ELS_GUID_TRANSLITERATION_HANS_TO_HANT = .(0x3caccdc8, 0x5590, 0x42dc, 0x9a, 0x7b, 0xb5, 0xa6, 0xb5, 0xb3, 0xb6, 0x3b);
	public const Guid ELS_GUID_TRANSLITERATION_MALAYALAM_TO_LATIN = .(0xd8b983b1, 0xf8bf, 0x4a2b, 0xbc, 0xd5, 0x5b, 0x5e, 0xa2, 0x06, 0x13, 0xe1);
	public const Guid ELS_GUID_TRANSLITERATION_DEVANAGARI_TO_LATIN = .(0xc4a4dcfe, 0x2661, 0x4d02, 0x98, 0x35, 0xf4, 0x81, 0x87, 0x10, 0x98, 0x03);
	public const Guid ELS_GUID_TRANSLITERATION_CYRILLIC_TO_LATIN = .(0x3dd12a98, 0x5afd, 0x4903, 0xa1, 0x3f, 0xe1, 0x7e, 0x6c, 0x0b, 0xfe, 0x01);
	public const Guid ELS_GUID_TRANSLITERATION_BENGALI_TO_LATIN = .(0xf4dfd825, 0x91a4, 0x489f, 0x85, 0x5e, 0x9a, 0xd9, 0xbe, 0xe5, 0x57, 0x27);
	public const Guid ELS_GUID_TRANSLITERATION_HANGUL_DECOMPOSITION = .(0x4ba2a721, 0xe43d, 0x41b7, 0xb3, 0x30, 0x53, 0x6a, 0xe1, 0xe4, 0x88, 0x63);
	public const int32 UMSGPAT_ARG_NAME_NOT_NUMBER = -1;
	public const int32 UMSGPAT_ARG_NAME_NOT_VALID = -2;
	#endregion
	
	#region Typedefs
	public typealias HIMC = int;
	public typealias HIMCC = int;
	public typealias HSAVEDUILANGUAGES = int;
	#endregion
	
	#region Enums
	public enum FOLD_STRING_MAP_FLAGS : uint32
	{
		COMPOSITE = 64,
		EXPAND_LIGATURES = 8192,
		FOLDCZONE = 16,
		FOLDDIGITS = 128,
		PRECOMPOSED = 32,
	}
	public enum ENUM_DATE_FORMATS_FLAGS : uint32
	{
		SHORTDATE = 1,
		LONGDATE = 2,
		YEARMONTH = 8,
		MONTHDAY = 128,
		AUTOLAYOUT = 64,
		LTRREADING = 16,
		RTLREADING = 32,
		USE_ALT_CALENDAR = 4,
	}
	public enum TRANSLATE_CHARSET_INFO_FLAGS : uint32
	{
		SRCCHARSET = 1,
		SRCCODEPAGE = 2,
		SRCFONTSIG = 3,
		SRCLOCALE = 4096,
	}
	public enum TIME_FORMAT_FLAGS : uint32
	{
		NOMINUTESORSECONDS = 1,
		NOSECONDS = 2,
		NOTIMEMARKER = 4,
		FORCE24HOURFORMAT = 8,
	}
	public enum ENUM_SYSTEM_LANGUAGE_GROUPS_FLAGS : uint32
	{
		INSTALLED = 1,
		SUPPORTED = 2,
	}
	public enum MULTI_BYTE_TO_WIDE_CHAR_FLAGS : uint32
	{
		COMPOSITE = 2,
		ERR_INVALID_CHARS = 8,
		PRECOMPOSED = 1,
		USEGLYPHCHARS = 4,
	}
	public enum COMPARE_STRING_FLAGS : uint32
	{
		LINGUISTIC_IGNORECASE = 16,
		LINGUISTIC_IGNOREDIACRITIC = 32,
		NORM_IGNORECASE = 1,
		NORM_IGNOREKANATYPE = 65536,
		NORM_IGNORENONSPACE = 2,
		NORM_IGNORESYMBOLS = 4,
		NORM_IGNOREWIDTH = 131072,
		NORM_LINGUISTIC_CASING = 134217728,
		SORT_DIGITSASNUMBERS = 8,
		SORT_STRINGSORT = 4096,
	}
	public enum IS_VALID_LOCALE_FLAGS : uint32
	{
		INSTALLED = 1,
		SUPPORTED = 2,
	}
	public enum ENUM_SYSTEM_CODE_PAGES_FLAGS : uint32
	{
		INSTALLED = 1,
		SUPPORTED = 2,
	}
	public enum SCRIPT_IS_COMPLEX_FLAGS : uint32
	{
		ASCIIDIGIT = 2,
		COMPLEX = 1,
		NEUTRAL = 4,
	}
	public enum IS_TEXT_UNICODE_RESULT : uint32
	{
		ASCII16 = 1,
		REVERSE_ASCII16 = 16,
		STATISTICS = 2,
		REVERSE_STATISTICS = 32,
		CONTROLS = 4,
		REVERSE_CONTROLS = 64,
		SIGNATURE = 8,
		REVERSE_SIGNATURE = 128,
		ILLEGAL_CHARS = 256,
		ODD_LENGTH = 512,
		NULL_BYTES = 4096,
		UNICODE_MASK = 15,
		REVERSE_MASK = 240,
		NOT_UNICODE_MASK = 3840,
		NOT_ASCII_MASK = 61440,
	}
	public enum SYSNLS_FUNCTION : int32
	{
		COMPARE_STRING = 1,
	}
	public enum SYSGEOTYPE : int32
	{
		NATION = 1,
		LATITUDE = 2,
		LONGITUDE = 3,
		ISO2 = 4,
		ISO3 = 5,
		RFC1766 = 6,
		LCID = 7,
		FRIENDLYNAME = 8,
		OFFICIALNAME = 9,
		TIMEZONES = 10,
		OFFICIALLANGUAGES = 11,
		ISO_UN_NUMBER = 12,
		PARENT = 13,
		DIALINGCODE = 14,
		CURRENCYCODE = 15,
		CURRENCYSYMBOL = 16,
		NAME = 17,
		ID = 18,
	}
	public enum SYSGEOCLASS : int32
	{
		NATION = 16,
		REGION = 14,
		ALL = 0,
	}
	public enum NORM_FORM : int32
	{
		Other = 0,
		C = 1,
		D = 2,
		KC = 5,
		KD = 6,
	}
	public enum WORDLIST_TYPE : int32
	{
		IGNORE = 0,
		ADD = 1,
		EXCLUDE = 2,
		AUTOCORRECT = 3,
	}
	public enum CORRECTIVE_ACTION : int32
	{
		NONE = 0,
		GET_SUGGESTIONS = 1,
		REPLACE = 2,
		DELETE = 3,
	}
	public enum SCRIPT_JUSTIFY : int32
	{
		NONE = 0,
		ARABIC_BLANK = 1,
		CHARACTER = 2,
		RESERVED1 = 3,
		BLANK = 4,
		RESERVED2 = 5,
		RESERVED3 = 6,
		ARABIC_NORMAL = 7,
		ARABIC_KASHIDA = 8,
		ARABIC_ALEF = 9,
		ARABIC_HA = 10,
		ARABIC_RA = 11,
		ARABIC_BA = 12,
		ARABIC_BARA = 13,
		ARABIC_SEEN = 14,
		ARABIC_SEEN_M = 15,
	}
	[AllowDuplicates]
	public enum UErrorCode : int32
	{
		USING_FALLBACK_WARNING = -128,
		ERROR_WARNING_START = -128,
		USING_DEFAULT_WARNING = -127,
		SAFECLONE_ALLOCATED_WARNING = -126,
		STATE_OLD_WARNING = -125,
		STRING_NOT_TERMINATED_WARNING = -124,
		SORT_KEY_TOO_SHORT_WARNING = -123,
		AMBIGUOUS_ALIAS_WARNING = -122,
		DIFFERENT_UCA_VERSION = -121,
		PLUGIN_CHANGED_LEVEL_WARNING = -120,
		ZERO_ERROR = 0,
		ILLEGAL_ARGUMENT_ERROR = 1,
		MISSING_RESOURCE_ERROR = 2,
		INVALID_FORMAT_ERROR = 3,
		FILE_ACCESS_ERROR = 4,
		INTERNAL_PROGRAM_ERROR = 5,
		MESSAGE_PARSE_ERROR = 6,
		MEMORY_ALLOCATION_ERROR = 7,
		INDEX_OUTOFBOUNDS_ERROR = 8,
		PARSE_ERROR = 9,
		INVALID_CHAR_FOUND = 10,
		TRUNCATED_CHAR_FOUND = 11,
		ILLEGAL_CHAR_FOUND = 12,
		INVALID_TABLE_FORMAT = 13,
		INVALID_TABLE_FILE = 14,
		BUFFER_OVERFLOW_ERROR = 15,
		UNSUPPORTED_ERROR = 16,
		RESOURCE_TYPE_MISMATCH = 17,
		ILLEGAL_ESCAPE_SEQUENCE = 18,
		UNSUPPORTED_ESCAPE_SEQUENCE = 19,
		NO_SPACE_AVAILABLE = 20,
		CE_NOT_FOUND_ERROR = 21,
		PRIMARY_TOO_LONG_ERROR = 22,
		STATE_TOO_OLD_ERROR = 23,
		TOO_MANY_ALIASES_ERROR = 24,
		ENUM_OUT_OF_SYNC_ERROR = 25,
		INVARIANT_CONVERSION_ERROR = 26,
		INVALID_STATE_ERROR = 27,
		COLLATOR_VERSION_MISMATCH = 28,
		USELESS_COLLATOR_ERROR = 29,
		NO_WRITE_PERMISSION = 30,
		BAD_VARIABLE_DEFINITION = 65536,
		PARSE_ERROR_START = 65536,
		MALFORMED_RULE = 65537,
		MALFORMED_SET = 65538,
		MALFORMED_SYMBOL_REFERENCE = 65539,
		MALFORMED_UNICODE_ESCAPE = 65540,
		MALFORMED_VARIABLE_DEFINITION = 65541,
		MALFORMED_VARIABLE_REFERENCE = 65542,
		MISMATCHED_SEGMENT_DELIMITERS = 65543,
		MISPLACED_ANCHOR_START = 65544,
		MISPLACED_CURSOR_OFFSET = 65545,
		MISPLACED_QUANTIFIER = 65546,
		MISSING_OPERATOR = 65547,
		MISSING_SEGMENT_CLOSE = 65548,
		MULTIPLE_ANTE_CONTEXTS = 65549,
		MULTIPLE_CURSORS = 65550,
		MULTIPLE_POST_CONTEXTS = 65551,
		TRAILING_BACKSLASH = 65552,
		UNDEFINED_SEGMENT_REFERENCE = 65553,
		UNDEFINED_VARIABLE = 65554,
		UNQUOTED_SPECIAL = 65555,
		UNTERMINATED_QUOTE = 65556,
		RULE_MASK_ERROR = 65557,
		MISPLACED_COMPOUND_FILTER = 65558,
		MULTIPLE_COMPOUND_FILTERS = 65559,
		INVALID_RBT_SYNTAX = 65560,
		INVALID_PROPERTY_PATTERN = 65561,
		MALFORMED_PRAGMA = 65562,
		UNCLOSED_SEGMENT = 65563,
		ILLEGAL_CHAR_IN_SEGMENT = 65564,
		VARIABLE_RANGE_EXHAUSTED = 65565,
		VARIABLE_RANGE_OVERLAP = 65566,
		ILLEGAL_CHARACTER = 65567,
		INTERNAL_TRANSLITERATOR_ERROR = 65568,
		INVALID_ID = 65569,
		INVALID_FUNCTION = 65570,
		UNEXPECTED_TOKEN = 65792,
		FMT_PARSE_ERROR_START = 65792,
		MULTIPLE_DECIMAL_SEPARATORS = 65793,
		MULTIPLE_DECIMAL_SEPERATORS = 65793,
		MULTIPLE_EXPONENTIAL_SYMBOLS = 65794,
		MALFORMED_EXPONENTIAL_PATTERN = 65795,
		MULTIPLE_PERCENT_SYMBOLS = 65796,
		MULTIPLE_PERMILL_SYMBOLS = 65797,
		MULTIPLE_PAD_SPECIFIERS = 65798,
		PATTERN_SYNTAX_ERROR = 65799,
		ILLEGAL_PAD_POSITION = 65800,
		UNMATCHED_BRACES = 65801,
		UNSUPPORTED_PROPERTY = 65802,
		UNSUPPORTED_ATTRIBUTE = 65803,
		ARGUMENT_TYPE_MISMATCH = 65804,
		DUPLICATE_KEYWORD = 65805,
		UNDEFINED_KEYWORD = 65806,
		DEFAULT_KEYWORD_MISSING = 65807,
		DECIMAL_NUMBER_SYNTAX_ERROR = 65808,
		FORMAT_INEXACT_ERROR = 65809,
		NUMBER_ARG_OUTOFBOUNDS_ERROR = 65810,
		NUMBER_SKELETON_SYNTAX_ERROR = 65811,
		BRK_INTERNAL_ERROR = 66048,
		BRK_ERROR_START = 66048,
		BRK_HEX_DIGITS_EXPECTED = 66049,
		BRK_SEMICOLON_EXPECTED = 66050,
		BRK_RULE_SYNTAX = 66051,
		BRK_UNCLOSED_SET = 66052,
		BRK_ASSIGN_ERROR = 66053,
		BRK_VARIABLE_REDFINITION = 66054,
		BRK_MISMATCHED_PAREN = 66055,
		BRK_NEW_LINE_IN_QUOTED_STRING = 66056,
		BRK_UNDEFINED_VARIABLE = 66057,
		BRK_INIT_ERROR = 66058,
		BRK_RULE_EMPTY_SET = 66059,
		BRK_UNRECOGNIZED_OPTION = 66060,
		BRK_MALFORMED_RULE_TAG = 66061,
		REGEX_INTERNAL_ERROR = 66304,
		REGEX_ERROR_START = 66304,
		REGEX_RULE_SYNTAX = 66305,
		REGEX_INVALID_STATE = 66306,
		REGEX_BAD_ESCAPE_SEQUENCE = 66307,
		REGEX_PROPERTY_SYNTAX = 66308,
		REGEX_UNIMPLEMENTED = 66309,
		REGEX_MISMATCHED_PAREN = 66310,
		REGEX_NUMBER_TOO_BIG = 66311,
		REGEX_BAD_INTERVAL = 66312,
		REGEX_MAX_LT_MIN = 66313,
		REGEX_INVALID_BACK_REF = 66314,
		REGEX_INVALID_FLAG = 66315,
		REGEX_LOOK_BEHIND_LIMIT = 66316,
		REGEX_SET_CONTAINS_STRING = 66317,
		REGEX_MISSING_CLOSE_BRACKET = 66319,
		REGEX_INVALID_RANGE = 66320,
		REGEX_STACK_OVERFLOW = 66321,
		REGEX_TIME_OUT = 66322,
		REGEX_STOPPED_BY_CALLER = 66323,
		REGEX_PATTERN_TOO_BIG = 66324,
		REGEX_INVALID_CAPTURE_GROUP_NAME = 66325,
		IDNA_PROHIBITED_ERROR = 66560,
		IDNA_ERROR_START = 66560,
		IDNA_UNASSIGNED_ERROR = 66561,
		IDNA_CHECK_BIDI_ERROR = 66562,
		IDNA_STD3_ASCII_RULES_ERROR = 66563,
		IDNA_ACE_PREFIX_ERROR = 66564,
		IDNA_VERIFICATION_ERROR = 66565,
		IDNA_LABEL_TOO_LONG_ERROR = 66566,
		IDNA_ZERO_LENGTH_LABEL_ERROR = 66567,
		IDNA_DOMAIN_NAME_TOO_LONG_ERROR = 66568,
		STRINGPREP_PROHIBITED_ERROR = 66560,
		STRINGPREP_UNASSIGNED_ERROR = 66561,
		STRINGPREP_CHECK_BIDI_ERROR = 66562,
		PLUGIN_ERROR_START = 66816,
		PLUGIN_TOO_HIGH = 66816,
		PLUGIN_DIDNT_SET_LEVEL = 66817,
	}
	public enum UTraceLevel : int32
	{
		OFF = -1,
		ERROR = 0,
		WARNING = 3,
		OPEN_CLOSE = 5,
		INFO = 7,
		VERBOSE = 9,
	}
	[AllowDuplicates]
	public enum UTraceFunctionNumber : int32
	{
		FUNCTION_START = 0,
		U_INIT = 0,
		U_CLEANUP = 1,
		CONVERSION_START = 4096,
		UCNV_OPEN = 4096,
		UCNV_OPEN_PACKAGE = 4097,
		UCNV_OPEN_ALGORITHMIC = 4098,
		UCNV_CLONE = 4099,
		UCNV_CLOSE = 4100,
		UCNV_FLUSH_CACHE = 4101,
		UCNV_LOAD = 4102,
		UCNV_UNLOAD = 4103,
		COLLATION_START = 8192,
		UCOL_OPEN = 8192,
		UCOL_CLOSE = 8193,
		UCOL_STRCOLL = 8194,
		UCOL_GET_SORTKEY = 8195,
		UCOL_GETLOCALE = 8196,
		UCOL_NEXTSORTKEYPART = 8197,
		UCOL_STRCOLLITER = 8198,
		UCOL_OPEN_FROM_SHORT_STRING = 8199,
		UCOL_STRCOLLUTF8 = 8200,
		UDATA_START = 12288,
		UDATA_RESOURCE = 12288,
		UDATA_BUNDLE = 12289,
		UDATA_DATA_FILE = 12290,
		UDATA_RES_FILE = 12291,
	}
	public enum UStringTrieResult : int32
	{
		NO_MATCH = 0,
		NO_VALUE = 1,
		FINAL_VALUE = 2,
		INTERMEDIATE_VALUE = 3,
	}
	[AllowDuplicates]
	public enum UScriptCode : int32
	{
		INVALID_CODE = -1,
		COMMON = 0,
		INHERITED = 1,
		ARABIC = 2,
		ARMENIAN = 3,
		BENGALI = 4,
		BOPOMOFO = 5,
		CHEROKEE = 6,
		COPTIC = 7,
		CYRILLIC = 8,
		DESERET = 9,
		DEVANAGARI = 10,
		ETHIOPIC = 11,
		GEORGIAN = 12,
		GOTHIC = 13,
		GREEK = 14,
		GUJARATI = 15,
		GURMUKHI = 16,
		HAN = 17,
		HANGUL = 18,
		HEBREW = 19,
		HIRAGANA = 20,
		KANNADA = 21,
		KATAKANA = 22,
		KHMER = 23,
		LAO = 24,
		LATIN = 25,
		MALAYALAM = 26,
		MONGOLIAN = 27,
		MYANMAR = 28,
		OGHAM = 29,
		OLD_ITALIC = 30,
		ORIYA = 31,
		RUNIC = 32,
		SINHALA = 33,
		SYRIAC = 34,
		TAMIL = 35,
		TELUGU = 36,
		THAANA = 37,
		THAI = 38,
		TIBETAN = 39,
		CANADIAN_ABORIGINAL = 40,
		UCAS = 40,
		YI = 41,
		TAGALOG = 42,
		HANUNOO = 43,
		BUHID = 44,
		TAGBANWA = 45,
		BRAILLE = 46,
		CYPRIOT = 47,
		LIMBU = 48,
		LINEAR_B = 49,
		OSMANYA = 50,
		SHAVIAN = 51,
		TAI_LE = 52,
		UGARITIC = 53,
		KATAKANA_OR_HIRAGANA = 54,
		BUGINESE = 55,
		GLAGOLITIC = 56,
		KHAROSHTHI = 57,
		SYLOTI_NAGRI = 58,
		NEW_TAI_LUE = 59,
		TIFINAGH = 60,
		OLD_PERSIAN = 61,
		BALINESE = 62,
		BATAK = 63,
		BLISSYMBOLS = 64,
		BRAHMI = 65,
		CHAM = 66,
		CIRTH = 67,
		OLD_CHURCH_SLAVONIC_CYRILLIC = 68,
		DEMOTIC_EGYPTIAN = 69,
		HIERATIC_EGYPTIAN = 70,
		EGYPTIAN_HIEROGLYPHS = 71,
		KHUTSURI = 72,
		SIMPLIFIED_HAN = 73,
		TRADITIONAL_HAN = 74,
		PAHAWH_HMONG = 75,
		OLD_HUNGARIAN = 76,
		HARAPPAN_INDUS = 77,
		JAVANESE = 78,
		KAYAH_LI = 79,
		LATIN_FRAKTUR = 80,
		LATIN_GAELIC = 81,
		LEPCHA = 82,
		LINEAR_A = 83,
		MANDAIC = 84,
		MANDAEAN = 84,
		MAYAN_HIEROGLYPHS = 85,
		MEROITIC_HIEROGLYPHS = 86,
		MEROITIC = 86,
		NKO = 87,
		ORKHON = 88,
		OLD_PERMIC = 89,
		PHAGS_PA = 90,
		PHOENICIAN = 91,
		MIAO = 92,
		PHONETIC_POLLARD = 92,
		RONGORONGO = 93,
		SARATI = 94,
		ESTRANGELO_SYRIAC = 95,
		WESTERN_SYRIAC = 96,
		EASTERN_SYRIAC = 97,
		TENGWAR = 98,
		VAI = 99,
		VISIBLE_SPEECH = 100,
		CUNEIFORM = 101,
		UNWRITTEN_LANGUAGES = 102,
		UNKNOWN = 103,
		CARIAN = 104,
		JAPANESE = 105,
		LANNA = 106,
		LYCIAN = 107,
		LYDIAN = 108,
		OL_CHIKI = 109,
		REJANG = 110,
		SAURASHTRA = 111,
		SIGN_WRITING = 112,
		SUNDANESE = 113,
		MOON = 114,
		MEITEI_MAYEK = 115,
		IMPERIAL_ARAMAIC = 116,
		AVESTAN = 117,
		CHAKMA = 118,
		KOREAN = 119,
		KAITHI = 120,
		MANICHAEAN = 121,
		INSCRIPTIONAL_PAHLAVI = 122,
		PSALTER_PAHLAVI = 123,
		BOOK_PAHLAVI = 124,
		INSCRIPTIONAL_PARTHIAN = 125,
		SAMARITAN = 126,
		TAI_VIET = 127,
		MATHEMATICAL_NOTATION = 128,
		SYMBOLS = 129,
		BAMUM = 130,
		LISU = 131,
		NAKHI_GEBA = 132,
		OLD_SOUTH_ARABIAN = 133,
		BASSA_VAH = 134,
		DUPLOYAN = 135,
		ELBASAN = 136,
		GRANTHA = 137,
		KPELLE = 138,
		LOMA = 139,
		MENDE = 140,
		MEROITIC_CURSIVE = 141,
		OLD_NORTH_ARABIAN = 142,
		NABATAEAN = 143,
		PALMYRENE = 144,
		KHUDAWADI = 145,
		SINDHI = 145,
		WARANG_CITI = 146,
		AFAKA = 147,
		JURCHEN = 148,
		MRO = 149,
		NUSHU = 150,
		SHARADA = 151,
		SORA_SOMPENG = 152,
		TAKRI = 153,
		TANGUT = 154,
		WOLEAI = 155,
		ANATOLIAN_HIEROGLYPHS = 156,
		KHOJKI = 157,
		TIRHUTA = 158,
		CAUCASIAN_ALBANIAN = 159,
		MAHAJANI = 160,
		AHOM = 161,
		HATRAN = 162,
		MODI = 163,
		MULTANI = 164,
		PAU_CIN_HAU = 165,
		SIDDHAM = 166,
		ADLAM = 167,
		BHAIKSUKI = 168,
		MARCHEN = 169,
		NEWA = 170,
		OSAGE = 171,
		HAN_WITH_BOPOMOFO = 172,
		JAMO = 173,
		SYMBOLS_EMOJI = 174,
		MASARAM_GONDI = 175,
		SOYOMBO = 176,
		ZANABAZAR_SQUARE = 177,
		DOGRA = 178,
		GUNJALA_GONDI = 179,
		MAKASAR = 180,
		MEDEFAIDRIN = 181,
		HANIFI_ROHINGYA = 182,
		SOGDIAN = 183,
		OLD_SOGDIAN = 184,
		ELYMAIC = 185,
		NYIAKENG_PUACHUE_HMONG = 186,
		NANDINAGARI = 187,
		WANCHO = 188,
		CHORASMIAN = 189,
		DIVES_AKURU = 190,
		KHITAN_SMALL_SCRIPT = 191,
		YEZIDI = 192,
	}
	public enum UScriptUsage : int32
	{
		NOT_ENCODED = 0,
		UNKNOWN = 1,
		EXCLUDED = 2,
		LIMITED_USE = 3,
		ASPIRATIONAL = 4,
		RECOMMENDED = 5,
	}
	public enum UCharIteratorOrigin : int32
	{
		START = 0,
		CURRENT = 1,
		LIMIT = 2,
		ZERO = 3,
		LENGTH = 4,
	}
	public enum ULocDataLocaleType : int32
	{
		ACTUAL_LOCALE = 0,
		VALID_LOCALE = 1,
	}
	public enum ULocAvailableType : int32
	{
		DEFAULT = 0,
		ONLY_LEGACY_ALIASES = 1,
		WITH_LEGACY_ALIASES = 2,
	}
	public enum ULayoutType : int32
	{
		LTR = 0,
		RTL = 1,
		TTB = 2,
		BTT = 3,
		UNKNOWN = 4,
	}
	public enum UAcceptResult : int32
	{
		FAILED = 0,
		VALID = 1,
		FALLBACK = 2,
	}
	public enum UResType : int32
	{
		NONE = -1,
		STRING = 0,
		BINARY = 1,
		TABLE = 2,
		ALIAS = 3,
		INT = 7,
		ARRAY = 8,
		INT_VECTOR = 14,
	}
	public enum UDisplayContextType : int32
	{
		DIALECT_HANDLING = 0,
		CAPITALIZATION = 1,
		DISPLAY_LENGTH = 2,
		SUBSTITUTE_HANDLING = 3,
	}
	public enum UDisplayContext : int32
	{
		STANDARD_NAMES = 0,
		DIALECT_NAMES = 1,
		CAPITALIZATION_NONE = 256,
		CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE = 257,
		CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE = 258,
		CAPITALIZATION_FOR_UI_LIST_OR_MENU = 259,
		CAPITALIZATION_FOR_STANDALONE = 260,
		LENGTH_FULL = 512,
		LENGTH_SHORT = 513,
		SUBSTITUTE = 768,
		NO_SUBSTITUTE = 769,
	}
	public enum UDialectHandling : int32
	{
		STANDARD_NAMES = 0,
		DIALECT_NAMES = 1,
	}
	public enum UCurrencyUsage : int32
	{
		STANDARD = 0,
		CASH = 1,
	}
	public enum UCurrNameStyle : int32
	{
		SYMBOL_NAME = 0,
		LONG_NAME = 1,
		NARROW_SYMBOL_NAME = 2,
	}
	public enum UCurrCurrencyType : int32
	{
		ALL = 2147483647,
		COMMON = 1,
		UNCOMMON = 2,
		DEPRECATED = 4,
		NON_DEPRECATED = 8,
	}
	public enum UCPMapRangeOption : int32
	{
		NORMAL = 0,
		FIXED_LEAD_SURROGATES = 1,
		FIXED_ALL_SURROGATES = 2,
	}
	public enum UCPTrieType : int32
	{
		ANY = -1,
		FAST = 0,
		SMALL = 1,
	}
	public enum UCPTrieValueWidth : int32
	{
		ANY = -1,
		_16 = 0,
		_32 = 1,
		_8 = 2,
	}
	public enum UConverterCallbackReason : int32
	{
		UNASSIGNED = 0,
		ILLEGAL = 1,
		IRREGULAR = 2,
		RESET = 3,
		CLOSE = 4,
		CLONE = 5,
	}
	[AllowDuplicates]
	public enum UConverterType : int32
	{
		UNSUPPORTED_CONVERTER = -1,
		SBCS = 0,
		DBCS = 1,
		MBCS = 2,
		LATIN_1 = 3,
		UTF8 = 4,
		UTF16_BigEndian = 5,
		UTF16_LittleEndian = 6,
		UTF32_BigEndian = 7,
		UTF32_LittleEndian = 8,
		EBCDIC_STATEFUL = 9,
		ISO_2022 = 10,
		LMBCS_1 = 11,
		LMBCS_2 = 12,
		LMBCS_3 = 13,
		LMBCS_4 = 14,
		LMBCS_5 = 15,
		LMBCS_6 = 16,
		LMBCS_8 = 17,
		LMBCS_11 = 18,
		LMBCS_16 = 19,
		LMBCS_17 = 20,
		LMBCS_18 = 21,
		LMBCS_19 = 22,
		LMBCS_LAST = 22,
		HZ = 23,
		SCSU = 24,
		ISCII = 25,
		US_ASCII = 26,
		UTF7 = 27,
		BOCU1 = 28,
		UTF16 = 29,
		UTF32 = 30,
		CESU8 = 31,
		IMAP_MAILBOX = 32,
		COMPOUND_TEXT = 33,
		NUMBER_OF_SUPPORTED_CONVERTER_TYPES = 34,
	}
	public enum UConverterPlatform : int32
	{
		UNKNOWN = -1,
		IBM = 0,
	}
	public enum UConverterUnicodeSet : int32
	{
		SET = 0,
		AND_FALLBACK_SET = 1,
	}
	[AllowDuplicates]
	public enum UProperty : int32
	{
		ALPHABETIC = 0,
		BINARY_START = 0,
		ASCII_HEX_DIGIT = 1,
		BIDI_CONTROL = 2,
		BIDI_MIRRORED = 3,
		DASH = 4,
		DEFAULT_IGNORABLE_CODE_POINT = 5,
		DEPRECATED = 6,
		DIACRITIC = 7,
		EXTENDER = 8,
		FULL_COMPOSITION_EXCLUSION = 9,
		GRAPHEME_BASE = 10,
		GRAPHEME_EXTEND = 11,
		GRAPHEME_LINK = 12,
		HEX_DIGIT = 13,
		HYPHEN = 14,
		ID_CONTINUE = 15,
		ID_START = 16,
		IDEOGRAPHIC = 17,
		IDS_BINARY_OPERATOR = 18,
		IDS_TRINARY_OPERATOR = 19,
		JOIN_CONTROL = 20,
		LOGICAL_ORDER_EXCEPTION = 21,
		LOWERCASE = 22,
		MATH = 23,
		NONCHARACTER_CODE_POINT = 24,
		QUOTATION_MARK = 25,
		RADICAL = 26,
		SOFT_DOTTED = 27,
		TERMINAL_PUNCTUATION = 28,
		UNIFIED_IDEOGRAPH = 29,
		UPPERCASE = 30,
		WHITE_SPACE = 31,
		XID_CONTINUE = 32,
		XID_START = 33,
		CASE_SENSITIVE = 34,
		S_TERM = 35,
		VARIATION_SELECTOR = 36,
		NFD_INERT = 37,
		NFKD_INERT = 38,
		NFC_INERT = 39,
		NFKC_INERT = 40,
		SEGMENT_STARTER = 41,
		PATTERN_SYNTAX = 42,
		PATTERN_WHITE_SPACE = 43,
		POSIX_ALNUM = 44,
		POSIX_BLANK = 45,
		POSIX_GRAPH = 46,
		POSIX_PRINT = 47,
		POSIX_XDIGIT = 48,
		CASED = 49,
		CASE_IGNORABLE = 50,
		CHANGES_WHEN_LOWERCASED = 51,
		CHANGES_WHEN_UPPERCASED = 52,
		CHANGES_WHEN_TITLECASED = 53,
		CHANGES_WHEN_CASEFOLDED = 54,
		CHANGES_WHEN_CASEMAPPED = 55,
		CHANGES_WHEN_NFKC_CASEFOLDED = 56,
		EMOJI = 57,
		EMOJI_PRESENTATION = 58,
		EMOJI_MODIFIER = 59,
		EMOJI_MODIFIER_BASE = 60,
		EMOJI_COMPONENT = 61,
		REGIONAL_INDICATOR = 62,
		PREPENDED_CONCATENATION_MARK = 63,
		EXTENDED_PICTOGRAPHIC = 64,
		BIDI_CLASS = 4096,
		INT_START = 4096,
		BLOCK = 4097,
		CANONICAL_COMBINING_CLASS = 4098,
		DECOMPOSITION_TYPE = 4099,
		EAST_ASIAN_WIDTH = 4100,
		GENERAL_CATEGORY = 4101,
		JOINING_GROUP = 4102,
		JOINING_TYPE = 4103,
		LINE_BREAK = 4104,
		NUMERIC_TYPE = 4105,
		SCRIPT = 4106,
		HANGUL_SYLLABLE_TYPE = 4107,
		NFD_QUICK_CHECK = 4108,
		NFKD_QUICK_CHECK = 4109,
		NFC_QUICK_CHECK = 4110,
		NFKC_QUICK_CHECK = 4111,
		LEAD_CANONICAL_COMBINING_CLASS = 4112,
		TRAIL_CANONICAL_COMBINING_CLASS = 4113,
		GRAPHEME_CLUSTER_BREAK = 4114,
		SENTENCE_BREAK = 4115,
		WORD_BREAK = 4116,
		BIDI_PAIRED_BRACKET_TYPE = 4117,
		INDIC_POSITIONAL_CATEGORY = 4118,
		INDIC_SYLLABIC_CATEGORY = 4119,
		VERTICAL_ORIENTATION = 4120,
		GENERAL_CATEGORY_MASK = 8192,
		MASK_START = 8192,
		NUMERIC_VALUE = 12288,
		DOUBLE_START = 12288,
		AGE = 16384,
		STRING_START = 16384,
		BIDI_MIRRORING_GLYPH = 16385,
		CASE_FOLDING = 16386,
		LOWERCASE_MAPPING = 16388,
		NAME = 16389,
		SIMPLE_CASE_FOLDING = 16390,
		SIMPLE_LOWERCASE_MAPPING = 16391,
		SIMPLE_TITLECASE_MAPPING = 16392,
		SIMPLE_UPPERCASE_MAPPING = 16393,
		TITLECASE_MAPPING = 16394,
		UPPERCASE_MAPPING = 16396,
		BIDI_PAIRED_BRACKET = 16397,
		SCRIPT_EXTENSIONS = 28672,
		OTHER_PROPERTY_START = 28672,
		INVALID_CODE = -1,
	}
	[AllowDuplicates]
	public enum UCharCategory : int32
	{
		UNASSIGNED = 0,
		GENERAL_OTHER_TYPES = 0,
		UPPERCASE_LETTER = 1,
		LOWERCASE_LETTER = 2,
		TITLECASE_LETTER = 3,
		MODIFIER_LETTER = 4,
		OTHER_LETTER = 5,
		NON_SPACING_MARK = 6,
		ENCLOSING_MARK = 7,
		COMBINING_SPACING_MARK = 8,
		DECIMAL_DIGIT_NUMBER = 9,
		LETTER_NUMBER = 10,
		OTHER_NUMBER = 11,
		SPACE_SEPARATOR = 12,
		LINE_SEPARATOR = 13,
		PARAGRAPH_SEPARATOR = 14,
		CONTROL_CHAR = 15,
		FORMAT_CHAR = 16,
		PRIVATE_USE_CHAR = 17,
		SURROGATE = 18,
		DASH_PUNCTUATION = 19,
		START_PUNCTUATION = 20,
		END_PUNCTUATION = 21,
		CONNECTOR_PUNCTUATION = 22,
		OTHER_PUNCTUATION = 23,
		MATH_SYMBOL = 24,
		CURRENCY_SYMBOL = 25,
		MODIFIER_SYMBOL = 26,
		OTHER_SYMBOL = 27,
		INITIAL_PUNCTUATION = 28,
		FINAL_PUNCTUATION = 29,
		CHAR_CATEGORY_COUNT = 30,
	}
	public enum UCharDirection : int32
	{
		LEFT_TO_RIGHT = 0,
		RIGHT_TO_LEFT = 1,
		EUROPEAN_NUMBER = 2,
		EUROPEAN_NUMBER_SEPARATOR = 3,
		EUROPEAN_NUMBER_TERMINATOR = 4,
		ARABIC_NUMBER = 5,
		COMMON_NUMBER_SEPARATOR = 6,
		BLOCK_SEPARATOR = 7,
		SEGMENT_SEPARATOR = 8,
		WHITE_SPACE_NEUTRAL = 9,
		OTHER_NEUTRAL = 10,
		LEFT_TO_RIGHT_EMBEDDING = 11,
		LEFT_TO_RIGHT_OVERRIDE = 12,
		RIGHT_TO_LEFT_ARABIC = 13,
		RIGHT_TO_LEFT_EMBEDDING = 14,
		RIGHT_TO_LEFT_OVERRIDE = 15,
		POP_DIRECTIONAL_FORMAT = 16,
		DIR_NON_SPACING_MARK = 17,
		BOUNDARY_NEUTRAL = 18,
		FIRST_STRONG_ISOLATE = 19,
		LEFT_TO_RIGHT_ISOLATE = 20,
		RIGHT_TO_LEFT_ISOLATE = 21,
		POP_DIRECTIONAL_ISOLATE = 22,
	}
	public enum UBidiPairedBracketType : int32
	{
		NONE = 0,
		OPEN = 1,
		CLOSE = 2,
	}
	[AllowDuplicates]
	public enum UBlockCode : int32
	{
		NO_BLOCK = 0,
		BASIC_LATIN = 1,
		LATIN_1_SUPPLEMENT = 2,
		LATIN_EXTENDED_A = 3,
		LATIN_EXTENDED_B = 4,
		IPA_EXTENSIONS = 5,
		SPACING_MODIFIER_LETTERS = 6,
		COMBINING_DIACRITICAL_MARKS = 7,
		GREEK = 8,
		CYRILLIC = 9,
		ARMENIAN = 10,
		HEBREW = 11,
		ARABIC = 12,
		SYRIAC = 13,
		THAANA = 14,
		DEVANAGARI = 15,
		BENGALI = 16,
		GURMUKHI = 17,
		GUJARATI = 18,
		ORIYA = 19,
		TAMIL = 20,
		TELUGU = 21,
		KANNADA = 22,
		MALAYALAM = 23,
		SINHALA = 24,
		THAI = 25,
		LAO = 26,
		TIBETAN = 27,
		MYANMAR = 28,
		GEORGIAN = 29,
		HANGUL_JAMO = 30,
		ETHIOPIC = 31,
		CHEROKEE = 32,
		UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS = 33,
		OGHAM = 34,
		RUNIC = 35,
		KHMER = 36,
		MONGOLIAN = 37,
		LATIN_EXTENDED_ADDITIONAL = 38,
		GREEK_EXTENDED = 39,
		GENERAL_PUNCTUATION = 40,
		SUPERSCRIPTS_AND_SUBSCRIPTS = 41,
		CURRENCY_SYMBOLS = 42,
		COMBINING_MARKS_FOR_SYMBOLS = 43,
		LETTERLIKE_SYMBOLS = 44,
		NUMBER_FORMS = 45,
		ARROWS = 46,
		MATHEMATICAL_OPERATORS = 47,
		MISCELLANEOUS_TECHNICAL = 48,
		CONTROL_PICTURES = 49,
		OPTICAL_CHARACTER_RECOGNITION = 50,
		ENCLOSED_ALPHANUMERICS = 51,
		BOX_DRAWING = 52,
		BLOCK_ELEMENTS = 53,
		GEOMETRIC_SHAPES = 54,
		MISCELLANEOUS_SYMBOLS = 55,
		DINGBATS = 56,
		BRAILLE_PATTERNS = 57,
		CJK_RADICALS_SUPPLEMENT = 58,
		KANGXI_RADICALS = 59,
		IDEOGRAPHIC_DESCRIPTION_CHARACTERS = 60,
		CJK_SYMBOLS_AND_PUNCTUATION = 61,
		HIRAGANA = 62,
		KATAKANA = 63,
		BOPOMOFO = 64,
		HANGUL_COMPATIBILITY_JAMO = 65,
		KANBUN = 66,
		BOPOMOFO_EXTENDED = 67,
		ENCLOSED_CJK_LETTERS_AND_MONTHS = 68,
		CJK_COMPATIBILITY = 69,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A = 70,
		CJK_UNIFIED_IDEOGRAPHS = 71,
		YI_SYLLABLES = 72,
		YI_RADICALS = 73,
		HANGUL_SYLLABLES = 74,
		HIGH_SURROGATES = 75,
		HIGH_PRIVATE_USE_SURROGATES = 76,
		LOW_SURROGATES = 77,
		PRIVATE_USE_AREA = 78,
		PRIVATE_USE = 78,
		CJK_COMPATIBILITY_IDEOGRAPHS = 79,
		ALPHABETIC_PRESENTATION_FORMS = 80,
		ARABIC_PRESENTATION_FORMS_A = 81,
		COMBINING_HALF_MARKS = 82,
		CJK_COMPATIBILITY_FORMS = 83,
		SMALL_FORM_VARIANTS = 84,
		ARABIC_PRESENTATION_FORMS_B = 85,
		SPECIALS = 86,
		HALFWIDTH_AND_FULLWIDTH_FORMS = 87,
		OLD_ITALIC = 88,
		GOTHIC = 89,
		DESERET = 90,
		BYZANTINE_MUSICAL_SYMBOLS = 91,
		MUSICAL_SYMBOLS = 92,
		MATHEMATICAL_ALPHANUMERIC_SYMBOLS = 93,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B = 94,
		CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT = 95,
		TAGS = 96,
		CYRILLIC_SUPPLEMENT = 97,
		CYRILLIC_SUPPLEMENTARY = 97,
		TAGALOG = 98,
		HANUNOO = 99,
		BUHID = 100,
		TAGBANWA = 101,
		MISCELLANEOUS_MATHEMATICAL_SYMBOLS_A = 102,
		SUPPLEMENTAL_ARROWS_A = 103,
		SUPPLEMENTAL_ARROWS_B = 104,
		MISCELLANEOUS_MATHEMATICAL_SYMBOLS_B = 105,
		SUPPLEMENTAL_MATHEMATICAL_OPERATORS = 106,
		KATAKANA_PHONETIC_EXTENSIONS = 107,
		VARIATION_SELECTORS = 108,
		SUPPLEMENTARY_PRIVATE_USE_AREA_A = 109,
		SUPPLEMENTARY_PRIVATE_USE_AREA_B = 110,
		LIMBU = 111,
		TAI_LE = 112,
		KHMER_SYMBOLS = 113,
		PHONETIC_EXTENSIONS = 114,
		MISCELLANEOUS_SYMBOLS_AND_ARROWS = 115,
		YIJING_HEXAGRAM_SYMBOLS = 116,
		LINEAR_B_SYLLABARY = 117,
		LINEAR_B_IDEOGRAMS = 118,
		AEGEAN_NUMBERS = 119,
		UGARITIC = 120,
		SHAVIAN = 121,
		OSMANYA = 122,
		CYPRIOT_SYLLABARY = 123,
		TAI_XUAN_JING_SYMBOLS = 124,
		VARIATION_SELECTORS_SUPPLEMENT = 125,
		ANCIENT_GREEK_MUSICAL_NOTATION = 126,
		ANCIENT_GREEK_NUMBERS = 127,
		ARABIC_SUPPLEMENT = 128,
		BUGINESE = 129,
		CJK_STROKES = 130,
		COMBINING_DIACRITICAL_MARKS_SUPPLEMENT = 131,
		COPTIC = 132,
		ETHIOPIC_EXTENDED = 133,
		ETHIOPIC_SUPPLEMENT = 134,
		GEORGIAN_SUPPLEMENT = 135,
		GLAGOLITIC = 136,
		KHAROSHTHI = 137,
		MODIFIER_TONE_LETTERS = 138,
		NEW_TAI_LUE = 139,
		OLD_PERSIAN = 140,
		PHONETIC_EXTENSIONS_SUPPLEMENT = 141,
		SUPPLEMENTAL_PUNCTUATION = 142,
		SYLOTI_NAGRI = 143,
		TIFINAGH = 144,
		VERTICAL_FORMS = 145,
		NKO = 146,
		BALINESE = 147,
		LATIN_EXTENDED_C = 148,
		LATIN_EXTENDED_D = 149,
		PHAGS_PA = 150,
		PHOENICIAN = 151,
		CUNEIFORM = 152,
		CUNEIFORM_NUMBERS_AND_PUNCTUATION = 153,
		COUNTING_ROD_NUMERALS = 154,
		SUNDANESE = 155,
		LEPCHA = 156,
		OL_CHIKI = 157,
		CYRILLIC_EXTENDED_A = 158,
		VAI = 159,
		CYRILLIC_EXTENDED_B = 160,
		SAURASHTRA = 161,
		KAYAH_LI = 162,
		REJANG = 163,
		CHAM = 164,
		ANCIENT_SYMBOLS = 165,
		PHAISTOS_DISC = 166,
		LYCIAN = 167,
		CARIAN = 168,
		LYDIAN = 169,
		MAHJONG_TILES = 170,
		DOMINO_TILES = 171,
		SAMARITAN = 172,
		UNIFIED_CANADIAN_ABORIGINAL_SYLLABICS_EXTENDED = 173,
		TAI_THAM = 174,
		VEDIC_EXTENSIONS = 175,
		LISU = 176,
		BAMUM = 177,
		COMMON_INDIC_NUMBER_FORMS = 178,
		DEVANAGARI_EXTENDED = 179,
		HANGUL_JAMO_EXTENDED_A = 180,
		JAVANESE = 181,
		MYANMAR_EXTENDED_A = 182,
		TAI_VIET = 183,
		MEETEI_MAYEK = 184,
		HANGUL_JAMO_EXTENDED_B = 185,
		IMPERIAL_ARAMAIC = 186,
		OLD_SOUTH_ARABIAN = 187,
		AVESTAN = 188,
		INSCRIPTIONAL_PARTHIAN = 189,
		INSCRIPTIONAL_PAHLAVI = 190,
		OLD_TURKIC = 191,
		RUMI_NUMERAL_SYMBOLS = 192,
		KAITHI = 193,
		EGYPTIAN_HIEROGLYPHS = 194,
		ENCLOSED_ALPHANUMERIC_SUPPLEMENT = 195,
		ENCLOSED_IDEOGRAPHIC_SUPPLEMENT = 196,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_C = 197,
		MANDAIC = 198,
		BATAK = 199,
		ETHIOPIC_EXTENDED_A = 200,
		BRAHMI = 201,
		BAMUM_SUPPLEMENT = 202,
		KANA_SUPPLEMENT = 203,
		PLAYING_CARDS = 204,
		MISCELLANEOUS_SYMBOLS_AND_PICTOGRAPHS = 205,
		EMOTICONS = 206,
		TRANSPORT_AND_MAP_SYMBOLS = 207,
		ALCHEMICAL_SYMBOLS = 208,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_D = 209,
		ARABIC_EXTENDED_A = 210,
		ARABIC_MATHEMATICAL_ALPHABETIC_SYMBOLS = 211,
		CHAKMA = 212,
		MEETEI_MAYEK_EXTENSIONS = 213,
		MEROITIC_CURSIVE = 214,
		MEROITIC_HIEROGLYPHS = 215,
		MIAO = 216,
		SHARADA = 217,
		SORA_SOMPENG = 218,
		SUNDANESE_SUPPLEMENT = 219,
		TAKRI = 220,
		BASSA_VAH = 221,
		CAUCASIAN_ALBANIAN = 222,
		COPTIC_EPACT_NUMBERS = 223,
		COMBINING_DIACRITICAL_MARKS_EXTENDED = 224,
		DUPLOYAN = 225,
		ELBASAN = 226,
		GEOMETRIC_SHAPES_EXTENDED = 227,
		GRANTHA = 228,
		KHOJKI = 229,
		KHUDAWADI = 230,
		LATIN_EXTENDED_E = 231,
		LINEAR_A = 232,
		MAHAJANI = 233,
		MANICHAEAN = 234,
		MENDE_KIKAKUI = 235,
		MODI = 236,
		MRO = 237,
		MYANMAR_EXTENDED_B = 238,
		NABATAEAN = 239,
		OLD_NORTH_ARABIAN = 240,
		OLD_PERMIC = 241,
		ORNAMENTAL_DINGBATS = 242,
		PAHAWH_HMONG = 243,
		PALMYRENE = 244,
		PAU_CIN_HAU = 245,
		PSALTER_PAHLAVI = 246,
		SHORTHAND_FORMAT_CONTROLS = 247,
		SIDDHAM = 248,
		SINHALA_ARCHAIC_NUMBERS = 249,
		SUPPLEMENTAL_ARROWS_C = 250,
		TIRHUTA = 251,
		WARANG_CITI = 252,
		AHOM = 253,
		ANATOLIAN_HIEROGLYPHS = 254,
		CHEROKEE_SUPPLEMENT = 255,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_E = 256,
		EARLY_DYNASTIC_CUNEIFORM = 257,
		HATRAN = 258,
		MULTANI = 259,
		OLD_HUNGARIAN = 260,
		SUPPLEMENTAL_SYMBOLS_AND_PICTOGRAPHS = 261,
		SUTTON_SIGNWRITING = 262,
		ADLAM = 263,
		BHAIKSUKI = 264,
		CYRILLIC_EXTENDED_C = 265,
		GLAGOLITIC_SUPPLEMENT = 266,
		IDEOGRAPHIC_SYMBOLS_AND_PUNCTUATION = 267,
		MARCHEN = 268,
		MONGOLIAN_SUPPLEMENT = 269,
		NEWA = 270,
		OSAGE = 271,
		TANGUT = 272,
		TANGUT_COMPONENTS = 273,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_F = 274,
		KANA_EXTENDED_A = 275,
		MASARAM_GONDI = 276,
		NUSHU = 277,
		SOYOMBO = 278,
		SYRIAC_SUPPLEMENT = 279,
		ZANABAZAR_SQUARE = 280,
		CHESS_SYMBOLS = 281,
		DOGRA = 282,
		GEORGIAN_EXTENDED = 283,
		GUNJALA_GONDI = 284,
		HANIFI_ROHINGYA = 285,
		INDIC_SIYAQ_NUMBERS = 286,
		MAKASAR = 287,
		MAYAN_NUMERALS = 288,
		MEDEFAIDRIN = 289,
		OLD_SOGDIAN = 290,
		SOGDIAN = 291,
		EGYPTIAN_HIEROGLYPH_FORMAT_CONTROLS = 292,
		ELYMAIC = 293,
		NANDINAGARI = 294,
		NYIAKENG_PUACHUE_HMONG = 295,
		OTTOMAN_SIYAQ_NUMBERS = 296,
		SMALL_KANA_EXTENSION = 297,
		SYMBOLS_AND_PICTOGRAPHS_EXTENDED_A = 298,
		TAMIL_SUPPLEMENT = 299,
		WANCHO = 300,
		CHORASMIAN = 301,
		CJK_UNIFIED_IDEOGRAPHS_EXTENSION_G = 302,
		DIVES_AKURU = 303,
		KHITAN_SMALL_SCRIPT = 304,
		LISU_SUPPLEMENT = 305,
		SYMBOLS_FOR_LEGACY_COMPUTING = 306,
		TANGUT_SUPPLEMENT = 307,
		YEZIDI = 308,
		INVALID_CODE = -1,
	}
	public enum UEastAsianWidth : int32
	{
		NEUTRAL = 0,
		AMBIGUOUS = 1,
		HALFWIDTH = 2,
		FULLWIDTH = 3,
		NARROW = 4,
		WIDE = 5,
	}
	public enum UCharNameChoice : int32
	{
		UNICODE_CHAR_NAME = 0,
		EXTENDED_CHAR_NAME = 2,
		CHAR_NAME_ALIAS = 3,
	}
	public enum UPropertyNameChoice : int32
	{
		SHORT_PROPERTY_NAME = 0,
		LONG_PROPERTY_NAME = 1,
	}
	public enum UDecompositionType : int32
	{
		NONE = 0,
		CANONICAL = 1,
		COMPAT = 2,
		CIRCLE = 3,
		FINAL = 4,
		FONT = 5,
		FRACTION = 6,
		INITIAL = 7,
		ISOLATED = 8,
		MEDIAL = 9,
		NARROW = 10,
		NOBREAK = 11,
		SMALL = 12,
		SQUARE = 13,
		SUB = 14,
		SUPER = 15,
		VERTICAL = 16,
		WIDE = 17,
	}
	public enum UJoiningType : int32
	{
		NON_JOINING = 0,
		JOIN_CAUSING = 1,
		DUAL_JOINING = 2,
		LEFT_JOINING = 3,
		RIGHT_JOINING = 4,
		TRANSPARENT = 5,
	}
	[AllowDuplicates]
	public enum UJoiningGroup : int32
	{
		NO_JOINING_GROUP = 0,
		AIN = 1,
		ALAPH = 2,
		ALEF = 3,
		BEH = 4,
		BETH = 5,
		DAL = 6,
		DALATH_RISH = 7,
		E = 8,
		FEH = 9,
		FINAL_SEMKATH = 10,
		GAF = 11,
		GAMAL = 12,
		HAH = 13,
		TEH_MARBUTA_GOAL = 14,
		HAMZA_ON_HEH_GOAL = 14,
		HE = 15,
		HEH = 16,
		HEH_GOAL = 17,
		HETH = 18,
		KAF = 19,
		KAPH = 20,
		KNOTTED_HEH = 21,
		LAM = 22,
		LAMADH = 23,
		MEEM = 24,
		MIM = 25,
		NOON = 26,
		NUN = 27,
		PE = 28,
		QAF = 29,
		QAPH = 30,
		REH = 31,
		REVERSED_PE = 32,
		SAD = 33,
		SADHE = 34,
		SEEN = 35,
		SEMKATH = 36,
		SHIN = 37,
		SWASH_KAF = 38,
		SYRIAC_WAW = 39,
		TAH = 40,
		TAW = 41,
		TEH_MARBUTA = 42,
		TETH = 43,
		WAW = 44,
		YEH = 45,
		YEH_BARREE = 46,
		YEH_WITH_TAIL = 47,
		YUDH = 48,
		YUDH_HE = 49,
		ZAIN = 50,
		FE = 51,
		KHAPH = 52,
		ZHAIN = 53,
		BURUSHASKI_YEH_BARREE = 54,
		FARSI_YEH = 55,
		NYA = 56,
		ROHINGYA_YEH = 57,
		MANICHAEAN_ALEPH = 58,
		MANICHAEAN_AYIN = 59,
		MANICHAEAN_BETH = 60,
		MANICHAEAN_DALETH = 61,
		MANICHAEAN_DHAMEDH = 62,
		MANICHAEAN_FIVE = 63,
		MANICHAEAN_GIMEL = 64,
		MANICHAEAN_HETH = 65,
		MANICHAEAN_HUNDRED = 66,
		MANICHAEAN_KAPH = 67,
		MANICHAEAN_LAMEDH = 68,
		MANICHAEAN_MEM = 69,
		MANICHAEAN_NUN = 70,
		MANICHAEAN_ONE = 71,
		MANICHAEAN_PE = 72,
		MANICHAEAN_QOPH = 73,
		MANICHAEAN_RESH = 74,
		MANICHAEAN_SADHE = 75,
		MANICHAEAN_SAMEKH = 76,
		MANICHAEAN_TAW = 77,
		MANICHAEAN_TEN = 78,
		MANICHAEAN_TETH = 79,
		MANICHAEAN_THAMEDH = 80,
		MANICHAEAN_TWENTY = 81,
		MANICHAEAN_WAW = 82,
		MANICHAEAN_YODH = 83,
		MANICHAEAN_ZAYIN = 84,
		STRAIGHT_WAW = 85,
		AFRICAN_FEH = 86,
		AFRICAN_NOON = 87,
		AFRICAN_QAF = 88,
		MALAYALAM_BHA = 89,
		MALAYALAM_JA = 90,
		MALAYALAM_LLA = 91,
		MALAYALAM_LLLA = 92,
		MALAYALAM_NGA = 93,
		MALAYALAM_NNA = 94,
		MALAYALAM_NNNA = 95,
		MALAYALAM_NYA = 96,
		MALAYALAM_RA = 97,
		MALAYALAM_SSA = 98,
		MALAYALAM_TTA = 99,
		HANIFI_ROHINGYA_KINNA_YA = 100,
		HANIFI_ROHINGYA_PA = 101,
	}
	public enum UGraphemeClusterBreak : int32
	{
		OTHER = 0,
		CONTROL = 1,
		CR = 2,
		EXTEND = 3,
		L = 4,
		LF = 5,
		LV = 6,
		LVT = 7,
		T = 8,
		V = 9,
		SPACING_MARK = 10,
		PREPEND = 11,
		REGIONAL_INDICATOR = 12,
		E_BASE = 13,
		E_BASE_GAZ = 14,
		E_MODIFIER = 15,
		GLUE_AFTER_ZWJ = 16,
		ZWJ = 17,
	}
	public enum UWordBreakValues : int32
	{
		OTHER = 0,
		ALETTER = 1,
		FORMAT = 2,
		KATAKANA = 3,
		MIDLETTER = 4,
		MIDNUM = 5,
		NUMERIC = 6,
		EXTENDNUMLET = 7,
		CR = 8,
		EXTEND = 9,
		LF = 10,
		MIDNUMLET = 11,
		NEWLINE = 12,
		REGIONAL_INDICATOR = 13,
		HEBREW_LETTER = 14,
		SINGLE_QUOTE = 15,
		DOUBLE_QUOTE = 16,
		E_BASE = 17,
		E_BASE_GAZ = 18,
		E_MODIFIER = 19,
		GLUE_AFTER_ZWJ = 20,
		ZWJ = 21,
		WSEGSPACE = 22,
	}
	public enum USentenceBreak : int32
	{
		OTHER = 0,
		ATERM = 1,
		CLOSE = 2,
		FORMAT = 3,
		LOWER = 4,
		NUMERIC = 5,
		OLETTER = 6,
		SEP = 7,
		SP = 8,
		STERM = 9,
		UPPER = 10,
		CR = 11,
		EXTEND = 12,
		LF = 13,
		SCONTINUE = 14,
	}
	[AllowDuplicates]
	public enum ULineBreak : int32
	{
		UNKNOWN = 0,
		AMBIGUOUS = 1,
		ALPHABETIC = 2,
		BREAK_BOTH = 3,
		BREAK_AFTER = 4,
		BREAK_BEFORE = 5,
		MANDATORY_BREAK = 6,
		CONTINGENT_BREAK = 7,
		CLOSE_PUNCTUATION = 8,
		COMBINING_MARK = 9,
		CARRIAGE_RETURN = 10,
		EXCLAMATION = 11,
		GLUE = 12,
		HYPHEN = 13,
		IDEOGRAPHIC = 14,
		INSEPARABLE = 15,
		INSEPERABLE = 15,
		INFIX_NUMERIC = 16,
		LINE_FEED = 17,
		NONSTARTER = 18,
		NUMERIC = 19,
		OPEN_PUNCTUATION = 20,
		POSTFIX_NUMERIC = 21,
		PREFIX_NUMERIC = 22,
		QUOTATION = 23,
		COMPLEX_CONTEXT = 24,
		SURROGATE = 25,
		SPACE = 26,
		BREAK_SYMBOLS = 27,
		ZWSPACE = 28,
		NEXT_LINE = 29,
		WORD_JOINER = 30,
		H2 = 31,
		H3 = 32,
		JL = 33,
		JT = 34,
		JV = 35,
		CLOSE_PARENTHESIS = 36,
		CONDITIONAL_JAPANESE_STARTER = 37,
		HEBREW_LETTER = 38,
		REGIONAL_INDICATOR = 39,
		E_BASE = 40,
		E_MODIFIER = 41,
		ZWJ = 42,
	}
	public enum UNumericType : int32
	{
		NONE = 0,
		DECIMAL = 1,
		DIGIT = 2,
		NUMERIC = 3,
	}
	public enum UHangulSyllableType : int32
	{
		NOT_APPLICABLE = 0,
		LEADING_JAMO = 1,
		VOWEL_JAMO = 2,
		TRAILING_JAMO = 3,
		LV_SYLLABLE = 4,
		LVT_SYLLABLE = 5,
	}
	public enum UIndicPositionalCategory : int32
	{
		NA = 0,
		BOTTOM = 1,
		BOTTOM_AND_LEFT = 2,
		BOTTOM_AND_RIGHT = 3,
		LEFT = 4,
		LEFT_AND_RIGHT = 5,
		OVERSTRUCK = 6,
		RIGHT = 7,
		TOP = 8,
		TOP_AND_BOTTOM = 9,
		TOP_AND_BOTTOM_AND_RIGHT = 10,
		TOP_AND_LEFT = 11,
		TOP_AND_LEFT_AND_RIGHT = 12,
		TOP_AND_RIGHT = 13,
		VISUAL_ORDER_LEFT = 14,
		TOP_AND_BOTTOM_AND_LEFT = 15,
	}
	public enum UIndicSyllabicCategory : int32
	{
		OTHER = 0,
		AVAGRAHA = 1,
		BINDU = 2,
		BRAHMI_JOINING_NUMBER = 3,
		CANTILLATION_MARK = 4,
		CONSONANT = 5,
		CONSONANT_DEAD = 6,
		CONSONANT_FINAL = 7,
		CONSONANT_HEAD_LETTER = 8,
		CONSONANT_INITIAL_POSTFIXED = 9,
		CONSONANT_KILLER = 10,
		CONSONANT_MEDIAL = 11,
		CONSONANT_PLACEHOLDER = 12,
		CONSONANT_PRECEDING_REPHA = 13,
		CONSONANT_PREFIXED = 14,
		CONSONANT_SUBJOINED = 15,
		CONSONANT_SUCCEEDING_REPHA = 16,
		CONSONANT_WITH_STACKER = 17,
		GEMINATION_MARK = 18,
		INVISIBLE_STACKER = 19,
		JOINER = 20,
		MODIFYING_LETTER = 21,
		NON_JOINER = 22,
		NUKTA = 23,
		NUMBER = 24,
		NUMBER_JOINER = 25,
		PURE_KILLER = 26,
		REGISTER_SHIFTER = 27,
		SYLLABLE_MODIFIER = 28,
		TONE_LETTER = 29,
		TONE_MARK = 30,
		VIRAMA = 31,
		VISARGA = 32,
		VOWEL = 33,
		VOWEL_DEPENDENT = 34,
		VOWEL_INDEPENDENT = 35,
	}
	public enum UVerticalOrientation : int32
	{
		ROTATED = 0,
		TRANSFORMED_ROTATED = 1,
		TRANSFORMED_UPRIGHT = 2,
		UPRIGHT = 3,
	}
	public enum UBiDiDirection : int32
	{
		LTR = 0,
		RTL = 1,
		MIXED = 2,
		NEUTRAL = 3,
	}
	public enum UBiDiReorderingMode : int32
	{
		DEFAULT = 0,
		NUMBERS_SPECIAL = 1,
		GROUP_NUMBERS_WITH_R = 2,
		RUNS_ONLY = 3,
		INVERSE_NUMBERS_AS_L = 4,
		INVERSE_LIKE_DIRECT = 5,
		INVERSE_FOR_NUMBERS_SPECIAL = 6,
	}
	public enum UBiDiReorderingOption : int32
	{
		DEFAULT = 0,
		INSERT_MARKS = 1,
		REMOVE_CONTROLS = 2,
		STREAMING = 4,
	}
	public enum UBiDiOrder : int32
	{
		LOGICAL = 0,
		VISUAL = 1,
	}
	public enum UBiDiMirroring : int32
	{
		OFF = 0,
		ON = 1,
	}
	public enum USetSpanCondition : int32
	{
		NOT_CONTAINED = 0,
		CONTAINED = 1,
		SIMPLE = 2,
	}
	public enum UNormalization2Mode : int32
	{
		COMPOSE = 0,
		DECOMPOSE = 1,
		FCD = 2,
		COMPOSE_CONTIGUOUS = 3,
	}
	public enum UNormalizationCheckResult : int32
	{
		NO = 0,
		YES = 1,
		MAYBE = 2,
	}
	[AllowDuplicates]
	public enum UNormalizationMode : int32
	{
		NONE = 1,
		NFD = 2,
		NFKD = 3,
		NFC = 4,
		DEFAULT = 4,
		NFKC = 5,
		FCD = 6,
		MODE_COUNT = 7,
	}
	public enum UStringPrepProfileType : int32
	{
		RFC3491_NAMEPREP = 0,
		RFC3530_NFS4_CS_PREP = 1,
		RFC3530_NFS4_CS_PREP_CI = 2,
		RFC3530_NFS4_CIS_PREP = 3,
		RFC3530_NFS4_MIXED_PREP_PREFIX = 4,
		RFC3530_NFS4_MIXED_PREP_SUFFIX = 5,
		RFC3722_ISCSI = 6,
		RFC3920_NODEPREP = 7,
		RFC3920_RESOURCEPREP = 8,
		RFC4011_MIB = 9,
		RFC4013_SASLPREP = 10,
		RFC4505_TRACE = 11,
		RFC4518_LDAP = 12,
		RFC4518_LDAP_CI = 13,
	}
	public enum UBreakIteratorType : int32
	{
		CHARACTER = 0,
		WORD = 1,
		LINE = 2,
		SENTENCE = 3,
	}
	[AllowDuplicates]
	public enum UWordBreak : int32
	{
		NONE = 0,
		NONE_LIMIT = 100,
		NUMBER = 100,
		NUMBER_LIMIT = 200,
		LETTER = 200,
		LETTER_LIMIT = 300,
		KANA = 300,
		KANA_LIMIT = 400,
		IDEO = 400,
		IDEO_LIMIT = 500,
	}
	[AllowDuplicates]
	public enum ULineBreakTag : int32
	{
		SOFT = 0,
		SOFT_LIMIT = 100,
		HARD = 100,
		HARD_LIMIT = 200,
	}
	[AllowDuplicates]
	public enum USentenceBreakTag : int32
	{
		TERM = 0,
		TERM_LIMIT = 100,
		SEP = 100,
		SEP_LIMIT = 200,
	}
	[AllowDuplicates]
	public enum UCalendarType : int32
	{
		TRADITIONAL = 0,
		DEFAULT = 0,
		GREGORIAN = 1,
	}
	[AllowDuplicates]
	public enum UCalendarDateFields : int32
	{
		ERA = 0,
		YEAR = 1,
		MONTH = 2,
		WEEK_OF_YEAR = 3,
		WEEK_OF_MONTH = 4,
		DATE = 5,
		DAY_OF_YEAR = 6,
		DAY_OF_WEEK = 7,
		DAY_OF_WEEK_IN_MONTH = 8,
		AM_PM = 9,
		HOUR = 10,
		HOUR_OF_DAY = 11,
		MINUTE = 12,
		SECOND = 13,
		MILLISECOND = 14,
		ZONE_OFFSET = 15,
		DST_OFFSET = 16,
		YEAR_WOY = 17,
		DOW_LOCAL = 18,
		EXTENDED_YEAR = 19,
		JULIAN_DAY = 20,
		MILLISECONDS_IN_DAY = 21,
		IS_LEAP_MONTH = 22,
		FIELD_COUNT = 23,
		DAY_OF_MONTH = 5,
	}
	public enum UCalendarDaysOfWeek : int32
	{
		SUNDAY = 1,
		MONDAY = 2,
		TUESDAY = 3,
		WEDNESDAY = 4,
		THURSDAY = 5,
		FRIDAY = 6,
		SATURDAY = 7,
	}
	public enum UCalendarMonths : int32
	{
		JANUARY = 0,
		FEBRUARY = 1,
		MARCH = 2,
		APRIL = 3,
		MAY = 4,
		JUNE = 5,
		JULY = 6,
		AUGUST = 7,
		SEPTEMBER = 8,
		OCTOBER = 9,
		NOVEMBER = 10,
		DECEMBER = 11,
		UNDECIMBER = 12,
	}
	public enum UCalendarAMPMs : int32
	{
		AM = 0,
		PM = 1,
	}
	public enum USystemTimeZoneType : int32
	{
		ANY = 0,
		CANONICAL = 1,
		CANONICAL_LOCATION = 2,
	}
	public enum UCalendarDisplayNameType : int32
	{
		STANDARD = 0,
		SHORT_STANDARD = 1,
		DST = 2,
		SHORT_DST = 3,
	}
	public enum UCalendarAttribute : int32
	{
		LENIENT = 0,
		FIRST_DAY_OF_WEEK = 1,
		MINIMAL_DAYS_IN_FIRST_WEEK = 2,
		REPEATED_WALL_TIME = 3,
		SKIPPED_WALL_TIME = 4,
	}
	public enum UCalendarWallTimeOption : int32
	{
		LAST = 0,
		FIRST = 1,
		NEXT_VALID = 2,
	}
	public enum UCalendarLimitType : int32
	{
		MINIMUM = 0,
		MAXIMUM = 1,
		GREATEST_MINIMUM = 2,
		LEAST_MAXIMUM = 3,
		ACTUAL_MINIMUM = 4,
		ACTUAL_MAXIMUM = 5,
	}
	public enum UCalendarWeekdayType : int32
	{
		WEEKDAY = 0,
		WEEKEND = 1,
		WEEKEND_ONSET = 2,
		WEEKEND_CEASE = 3,
	}
	public enum UTimeZoneTransitionType : int32
	{
		NEXT = 0,
		NEXT_INCLUSIVE = 1,
		PREVIOUS = 2,
		PREVIOUS_INCLUSIVE = 3,
	}
	public enum UCollationResult : int32
	{
		EQUAL = 0,
		GREATER = 1,
		LESS = -1,
	}
	[AllowDuplicates]
	public enum UColAttributeValue : int32
	{
		DEFAULT = -1,
		PRIMARY = 0,
		SECONDARY = 1,
		TERTIARY = 2,
		DEFAULT_STRENGTH = 2,
		CE_STRENGTH_LIMIT = 3,
		QUATERNARY = 3,
		IDENTICAL = 15,
		STRENGTH_LIMIT = 16,
		OFF = 16,
		ON = 17,
		SHIFTED = 20,
		NON_IGNORABLE = 21,
		LOWER_FIRST = 24,
		UPPER_FIRST = 25,
	}
	[AllowDuplicates]
	public enum UColReorderCode : int32
	{
		DEFAULT = -1,
		NONE = 103,
		OTHERS = 103,
		SPACE = 4096,
		FIRST = 4096,
		PUNCTUATION = 4097,
		SYMBOL = 4098,
		CURRENCY = 4099,
		DIGIT = 4100,
	}
	[AllowDuplicates]
	public enum UColAttribute : int32
	{
		FRENCH_COLLATION = 0,
		ALTERNATE_HANDLING = 1,
		CASE_FIRST = 2,
		CASE_LEVEL = 3,
		NORMALIZATION_MODE = 4,
		DECOMPOSITION_MODE = 4,
		STRENGTH = 5,
		NUMERIC_COLLATION = 7,
		ATTRIBUTE_COUNT = 8,
	}
	public enum UColRuleOption : int32
	{
		TAILORING_ONLY = 0,
		FULL_RULES = 1,
	}
	public enum UColBoundMode : int32
	{
		LOWER = 0,
		UPPER = 1,
		UPPER_LONG = 2,
	}
	public enum UFormattableType : int32
	{
		DATE = 0,
		DOUBLE = 1,
		LONG = 2,
		STRING = 3,
		ARRAY = 4,
		INT64 = 5,
		OBJECT = 6,
	}
	public enum UFieldCategory : int32
	{
		UNDEFINED = 0,
		DATE = 1,
		NUMBER = 2,
		LIST = 3,
		RELATIVE_DATETIME = 4,
		DATE_INTERVAL = 5,
		LIST_SPAN = 4099,
		DATE_INTERVAL_SPAN = 4101,
	}
	public enum UGender : int32
	{
		MALE = 0,
		FEMALE = 1,
		OTHER = 2,
	}
	public enum UListFormatterField : int32
	{
		LITERAL_FIELD = 0,
		ELEMENT_FIELD = 1,
	}
	public enum UListFormatterType : int32
	{
		AND = 0,
		OR = 1,
		UNITS = 2,
	}
	public enum UListFormatterWidth : int32
	{
		WIDE = 0,
		SHORT = 1,
		NARROW = 2,
	}
	public enum ULocaleDataExemplarSetType : int32
	{
		STANDARD = 0,
		AUXILIARY = 1,
		INDEX = 2,
		PUNCTUATION = 3,
	}
	public enum ULocaleDataDelimiterType : int32
	{
		QUOTATION_START = 0,
		QUOTATION_END = 1,
		ALT_QUOTATION_START = 2,
		ALT_QUOTATION_END = 3,
	}
	public enum UMeasurementSystem : int32
	{
		SI = 0,
		US = 1,
		UK = 2,
	}
	[AllowDuplicates]
	public enum UNumberFormatStyle : int32
	{
		PATTERN_DECIMAL = 0,
		DECIMAL = 1,
		CURRENCY = 2,
		PERCENT = 3,
		SCIENTIFIC = 4,
		SPELLOUT = 5,
		ORDINAL = 6,
		DURATION = 7,
		NUMBERING_SYSTEM = 8,
		PATTERN_RULEBASED = 9,
		CURRENCY_ISO = 10,
		CURRENCY_PLURAL = 11,
		CURRENCY_ACCOUNTING = 12,
		CASH_CURRENCY = 13,
		DECIMAL_COMPACT_SHORT = 14,
		DECIMAL_COMPACT_LONG = 15,
		CURRENCY_STANDARD = 16,
		DEFAULT = 1,
		IGNORE = 0,
	}
	public enum UNumberFormatRoundingMode : int32
	{
		CEILING = 0,
		FLOOR = 1,
		DOWN = 2,
		UP = 3,
		HALFEVEN = 4,
		HALFDOWN = 5,
		HALFUP = 6,
		UNNECESSARY = 7,
	}
	public enum UNumberFormatPadPosition : int32
	{
		BEFORE_PREFIX = 0,
		AFTER_PREFIX = 1,
		BEFORE_SUFFIX = 2,
		AFTER_SUFFIX = 3,
	}
	public enum UNumberCompactStyle : int32
	{
		SHORT = 0,
		LONG = 1,
	}
	public enum UCurrencySpacing : int32
	{
		MATCH = 0,
		SURROUNDING_MATCH = 1,
		INSERT = 2,
		SPACING_COUNT = 3,
	}
	public enum UNumberFormatFields : int32
	{
		INTEGER_FIELD = 0,
		FRACTION_FIELD = 1,
		DECIMAL_SEPARATOR_FIELD = 2,
		EXPONENT_SYMBOL_FIELD = 3,
		EXPONENT_SIGN_FIELD = 4,
		EXPONENT_FIELD = 5,
		GROUPING_SEPARATOR_FIELD = 6,
		CURRENCY_FIELD = 7,
		PERCENT_FIELD = 8,
		PERMILL_FIELD = 9,
		SIGN_FIELD = 10,
		MEASURE_UNIT_FIELD = 11,
		COMPACT_FIELD = 12,
	}
	public enum UNumberFormatAttributeValue : int32
	{
		UNUM_FORMAT_ATTRIBUTE_VALUE_HIDDEN = 0,
	}
	public enum UNumberFormatAttribute : int32
	{
		PARSE_INT_ONLY = 0,
		GROUPING_USED = 1,
		DECIMAL_ALWAYS_SHOWN = 2,
		MAX_INTEGER_DIGITS = 3,
		MIN_INTEGER_DIGITS = 4,
		INTEGER_DIGITS = 5,
		MAX_FRACTION_DIGITS = 6,
		MIN_FRACTION_DIGITS = 7,
		FRACTION_DIGITS = 8,
		MULTIPLIER = 9,
		GROUPING_SIZE = 10,
		ROUNDING_MODE = 11,
		ROUNDING_INCREMENT = 12,
		FORMAT_WIDTH = 13,
		PADDING_POSITION = 14,
		SECONDARY_GROUPING_SIZE = 15,
		SIGNIFICANT_DIGITS_USED = 16,
		MIN_SIGNIFICANT_DIGITS = 17,
		MAX_SIGNIFICANT_DIGITS = 18,
		LENIENT_PARSE = 19,
		PARSE_ALL_INPUT = 20,
		SCALE = 21,
		MINIMUM_GROUPING_DIGITS = 22,
		CURRENCY_USAGE = 23,
		FORMAT_FAIL_IF_MORE_THAN_MAX_DIGITS = 4096,
		PARSE_NO_EXPONENT = 4097,
		PARSE_DECIMAL_MARK_REQUIRED = 4098,
		PARSE_CASE_SENSITIVE = 4099,
		SIGN_ALWAYS_SHOWN = 4100,
	}
	public enum UNumberFormatTextAttribute : int32
	{
		POSITIVE_PREFIX = 0,
		POSITIVE_SUFFIX = 1,
		NEGATIVE_PREFIX = 2,
		NEGATIVE_SUFFIX = 3,
		PADDING_CHARACTER = 4,
		CURRENCY_CODE = 5,
		DEFAULT_RULESET = 6,
		PUBLIC_RULESETS = 7,
	}
	public enum UNumberFormatSymbol : int32
	{
		DECIMAL_SEPARATOR_SYMBOL = 0,
		GROUPING_SEPARATOR_SYMBOL = 1,
		PATTERN_SEPARATOR_SYMBOL = 2,
		PERCENT_SYMBOL = 3,
		ZERO_DIGIT_SYMBOL = 4,
		DIGIT_SYMBOL = 5,
		MINUS_SIGN_SYMBOL = 6,
		PLUS_SIGN_SYMBOL = 7,
		CURRENCY_SYMBOL = 8,
		INTL_CURRENCY_SYMBOL = 9,
		MONETARY_SEPARATOR_SYMBOL = 10,
		EXPONENTIAL_SYMBOL = 11,
		PERMILL_SYMBOL = 12,
		PAD_ESCAPE_SYMBOL = 13,
		INFINITY_SYMBOL = 14,
		NAN_SYMBOL = 15,
		SIGNIFICANT_DIGIT_SYMBOL = 16,
		MONETARY_GROUPING_SEPARATOR_SYMBOL = 17,
		ONE_DIGIT_SYMBOL = 18,
		TWO_DIGIT_SYMBOL = 19,
		THREE_DIGIT_SYMBOL = 20,
		FOUR_DIGIT_SYMBOL = 21,
		FIVE_DIGIT_SYMBOL = 22,
		SIX_DIGIT_SYMBOL = 23,
		SEVEN_DIGIT_SYMBOL = 24,
		EIGHT_DIGIT_SYMBOL = 25,
		NINE_DIGIT_SYMBOL = 26,
		EXPONENT_MULTIPLICATION_SYMBOL = 27,
	}
	[AllowDuplicates]
	public enum UDateFormatStyle : int32
	{
		FULL = 0,
		LONG = 1,
		MEDIUM = 2,
		SHORT = 3,
		DEFAULT = 2,
		RELATIVE = 128,
		FULL_RELATIVE = 128,
		LONG_RELATIVE = 129,
		MEDIUM_RELATIVE = 130,
		SHORT_RELATIVE = 131,
		NONE = -1,
		PATTERN = -2,
	}
	public enum UDateFormatField : int32
	{
		ERA_FIELD = 0,
		YEAR_FIELD = 1,
		MONTH_FIELD = 2,
		DATE_FIELD = 3,
		HOUR_OF_DAY1_FIELD = 4,
		HOUR_OF_DAY0_FIELD = 5,
		MINUTE_FIELD = 6,
		SECOND_FIELD = 7,
		FRACTIONAL_SECOND_FIELD = 8,
		DAY_OF_WEEK_FIELD = 9,
		DAY_OF_YEAR_FIELD = 10,
		DAY_OF_WEEK_IN_MONTH_FIELD = 11,
		WEEK_OF_YEAR_FIELD = 12,
		WEEK_OF_MONTH_FIELD = 13,
		AM_PM_FIELD = 14,
		HOUR1_FIELD = 15,
		HOUR0_FIELD = 16,
		TIMEZONE_FIELD = 17,
		YEAR_WOY_FIELD = 18,
		DOW_LOCAL_FIELD = 19,
		EXTENDED_YEAR_FIELD = 20,
		JULIAN_DAY_FIELD = 21,
		MILLISECONDS_IN_DAY_FIELD = 22,
		TIMEZONE_RFC_FIELD = 23,
		TIMEZONE_GENERIC_FIELD = 24,
		STANDALONE_DAY_FIELD = 25,
		STANDALONE_MONTH_FIELD = 26,
		QUARTER_FIELD = 27,
		STANDALONE_QUARTER_FIELD = 28,
		TIMEZONE_SPECIAL_FIELD = 29,
		YEAR_NAME_FIELD = 30,
		TIMEZONE_LOCALIZED_GMT_OFFSET_FIELD = 31,
		TIMEZONE_ISO_FIELD = 32,
		TIMEZONE_ISO_LOCAL_FIELD = 33,
		AM_PM_MIDNIGHT_NOON_FIELD = 35,
		FLEXIBLE_DAY_PERIOD_FIELD = 36,
	}
	public enum UDateFormatBooleanAttribute : int32
	{
		PARSE_ALLOW_WHITESPACE = 0,
		PARSE_ALLOW_NUMERIC = 1,
		PARSE_PARTIAL_LITERAL_MATCH = 2,
		PARSE_MULTIPLE_PATTERNS_FOR_MATCH = 3,
		BOOLEAN_ATTRIBUTE_COUNT = 4,
	}
	public enum UDateFormatSymbolType : int32
	{
		ERAS = 0,
		MONTHS = 1,
		SHORT_MONTHS = 2,
		WEEKDAYS = 3,
		SHORT_WEEKDAYS = 4,
		AM_PMS = 5,
		LOCALIZED_CHARS = 6,
		ERA_NAMES = 7,
		NARROW_MONTHS = 8,
		NARROW_WEEKDAYS = 9,
		STANDALONE_MONTHS = 10,
		STANDALONE_SHORT_MONTHS = 11,
		STANDALONE_NARROW_MONTHS = 12,
		STANDALONE_WEEKDAYS = 13,
		STANDALONE_SHORT_WEEKDAYS = 14,
		STANDALONE_NARROW_WEEKDAYS = 15,
		QUARTERS = 16,
		SHORT_QUARTERS = 17,
		STANDALONE_QUARTERS = 18,
		STANDALONE_SHORT_QUARTERS = 19,
		SHORTER_WEEKDAYS = 20,
		STANDALONE_SHORTER_WEEKDAYS = 21,
		CYCLIC_YEARS_WIDE = 22,
		CYCLIC_YEARS_ABBREVIATED = 23,
		CYCLIC_YEARS_NARROW = 24,
		ZODIAC_NAMES_WIDE = 25,
		ZODIAC_NAMES_ABBREVIATED = 26,
		ZODIAC_NAMES_NARROW = 27,
	}
	public enum UDateTimePatternField : int32
	{
		ERA_FIELD = 0,
		YEAR_FIELD = 1,
		QUARTER_FIELD = 2,
		MONTH_FIELD = 3,
		WEEK_OF_YEAR_FIELD = 4,
		WEEK_OF_MONTH_FIELD = 5,
		WEEKDAY_FIELD = 6,
		DAY_OF_YEAR_FIELD = 7,
		DAY_OF_WEEK_IN_MONTH_FIELD = 8,
		DAY_FIELD = 9,
		DAYPERIOD_FIELD = 10,
		HOUR_FIELD = 11,
		MINUTE_FIELD = 12,
		SECOND_FIELD = 13,
		FRACTIONAL_SECOND_FIELD = 14,
		ZONE_FIELD = 15,
		FIELD_COUNT = 16,
	}
	public enum UDateTimePGDisplayWidth : int32
	{
		WIDE = 0,
		ABBREVIATED = 1,
		NARROW = 2,
	}
	public enum UDateTimePatternMatchOptions : int32
	{
		NO_OPTIONS = 0,
		HOUR_FIELD_LENGTH = 2048,
		ALL_FIELDS_LENGTH = 65535,
	}
	public enum UDateTimePatternConflict : int32
	{
		NO_CONFLICT = 0,
		BASE_CONFLICT = 1,
		CONFLICT = 2,
	}
	public enum UNumberUnitWidth : int32
	{
		NARROW = 0,
		SHORT = 1,
		FULL_NAME = 2,
		ISO_CODE = 3,
		HIDDEN = 4,
		COUNT = 5,
	}
	public enum UNumberGroupingStrategy : int32
	{
		OFF = 0,
		MIN2 = 1,
		AUTO = 2,
		ON_ALIGNED = 3,
		THOUSANDS = 4,
	}
	public enum UNumberSignDisplay : int32
	{
		AUTO = 0,
		ALWAYS = 1,
		NEVER = 2,
		ACCOUNTING = 3,
		ACCOUNTING_ALWAYS = 4,
		EXCEPT_ZERO = 5,
		ACCOUNTING_EXCEPT_ZERO = 6,
		COUNT = 7,
	}
	public enum UNumberDecimalSeparatorDisplay : int32
	{
		AUTO = 0,
		ALWAYS = 1,
		COUNT = 2,
	}
	public enum UNumberRangeCollapse : int32
	{
		AUTO = 0,
		NONE = 1,
		UNIT = 2,
		ALL = 3,
	}
	public enum UNumberRangeIdentityFallback : int32
	{
		SINGLE_VALUE = 0,
		APPROXIMATELY_OR_SINGLE_VALUE = 1,
		APPROXIMATELY = 2,
		RANGE = 3,
	}
	public enum UNumberRangeIdentityResult : int32
	{
		EQUAL_BEFORE_ROUNDING = 0,
		EQUAL_AFTER_ROUNDING = 1,
		NOT_EQUAL = 2,
	}
	public enum UPluralType : int32
	{
		CARDINAL = 0,
		ORDINAL = 1,
	}
	public enum URegexpFlag : int32
	{
		CASE_INSENSITIVE = 2,
		COMMENTS = 4,
		DOTALL = 32,
		LITERAL = 16,
		MULTILINE = 8,
		UNIX_LINES = 1,
		UWORD = 256,
		ERROR_ON_UNKNOWN_ESCAPES = 512,
	}
	public enum URegionType : int32
	{
		UNKNOWN = 0,
		TERRITORY = 1,
		WORLD = 2,
		CONTINENT = 3,
		SUBCONTINENT = 4,
		GROUPING = 5,
		DEPRECATED = 6,
	}
	public enum UDateRelativeDateTimeFormatterStyle : int32
	{
		LONG = 0,
		SHORT = 1,
		NARROW = 2,
	}
	public enum URelativeDateTimeUnit : int32
	{
		YEAR = 0,
		QUARTER = 1,
		MONTH = 2,
		WEEK = 3,
		DAY = 4,
		HOUR = 5,
		MINUTE = 6,
		SECOND = 7,
		SUNDAY = 8,
		MONDAY = 9,
		TUESDAY = 10,
		WEDNESDAY = 11,
		THURSDAY = 12,
		FRIDAY = 13,
		SATURDAY = 14,
	}
	public enum URelativeDateTimeFormatterField : int32
	{
		LITERAL_FIELD = 0,
		NUMERIC_FIELD = 1,
	}
	public enum USearchAttribute : int32
	{
		OVERLAP = 0,
		ELEMENT_COMPARISON = 2,
	}
	public enum USearchAttributeValue : int32
	{
		DEFAULT = -1,
		OFF = 0,
		ON = 1,
		STANDARD_ELEMENT_COMPARISON = 2,
		PATTERN_BASE_WEIGHT_IS_WILDCARD = 3,
		ANY_BASE_WEIGHT_IS_WILDCARD = 4,
	}
	public enum USpoofChecks : int32
	{
		SINGLE_SCRIPT_CONFUSABLE = 1,
		MIXED_SCRIPT_CONFUSABLE = 2,
		WHOLE_SCRIPT_CONFUSABLE = 4,
		CONFUSABLE = 7,
		RESTRICTION_LEVEL = 16,
		INVISIBLE = 32,
		CHAR_LIMIT = 64,
		MIXED_NUMBERS = 128,
		HIDDEN_OVERLAY = 256,
		ALL_CHECKS = 65535,
		AUX_INFO = 1073741824,
	}
	public enum URestrictionLevel : int32
	{
		ASCII = 268435456,
		SINGLE_SCRIPT_RESTRICTIVE = 536870912,
		HIGHLY_RESTRICTIVE = 805306368,
		MODERATELY_RESTRICTIVE = 1073741824,
		MINIMALLY_RESTRICTIVE = 1342177280,
		UNRESTRICTIVE = 1610612736,
		RESTRICTION_LEVEL_MASK = 2130706432,
	}
	public enum UDateTimeScale : int32
	{
		JAVA_TIME = 0,
		UNIX_TIME = 1,
		ICU4C_TIME = 2,
		WINDOWS_FILE_TIME = 3,
		DOTNET_DATE_TIME = 4,
		MAC_OLD_TIME = 5,
		MAC_TIME = 6,
		EXCEL_TIME = 7,
		DB2_TIME = 8,
		UNIX_MICROSECONDS_TIME = 9,
	}
	public enum UTimeScaleValue : int32
	{
		UNITS_VALUE = 0,
		EPOCH_OFFSET_VALUE = 1,
		FROM_MIN_VALUE = 2,
		FROM_MAX_VALUE = 3,
		TO_MIN_VALUE = 4,
		TO_MAX_VALUE = 5,
	}
	public enum UTransDirection : int32
	{
		FORWARD = 0,
		REVERSE = 1,
	}
	public enum UStringTrieBuildOption : int32
	{
		FAST = 0,
		SMALL = 1,
	}
	public enum UMessagePatternApostropheMode : int32
	{
		OPTIONAL = 0,
		REQUIRED = 1,
	}
	public enum UMessagePatternPartType : int32
	{
		MSG_START = 0,
		MSG_LIMIT = 1,
		SKIP_SYNTAX = 2,
		INSERT_CHAR = 3,
		REPLACE_NUMBER = 4,
		ARG_START = 5,
		ARG_LIMIT = 6,
		ARG_NUMBER = 7,
		ARG_NAME = 8,
		ARG_TYPE = 9,
		ARG_STYLE = 10,
		ARG_SELECTOR = 11,
		ARG_INT = 12,
		ARG_DOUBLE = 13,
	}
	public enum UMessagePatternArgType : int32
	{
		NONE = 0,
		SIMPLE = 1,
		CHOICE = 2,
		PLURAL = 3,
		SELECT = 4,
		SELECTORDINAL = 5,
	}
	public enum UAlphabeticIndexLabelType : int32
	{
		NORMAL = 0,
		UNDERFLOW = 1,
		INFLOW = 2,
		OVERFLOW = 3,
	}
	public enum UTimeZoneNameType : int32
	{
		UNKNOWN = 0,
		LONG_GENERIC = 1,
		LONG_STANDARD = 2,
		LONG_DAYLIGHT = 4,
		SHORT_GENERIC = 8,
		SHORT_STANDARD = 16,
		SHORT_DAYLIGHT = 32,
		EXEMPLAR_LOCATION = 64,
	}
	public enum UTimeZoneFormatStyle : int32
	{
		GENERIC_LOCATION = 0,
		GENERIC_LONG = 1,
		GENERIC_SHORT = 2,
		SPECIFIC_LONG = 3,
		SPECIFIC_SHORT = 4,
		LOCALIZED_GMT = 5,
		LOCALIZED_GMT_SHORT = 6,
		ISO_BASIC_SHORT = 7,
		ISO_BASIC_LOCAL_SHORT = 8,
		ISO_BASIC_FIXED = 9,
		ISO_BASIC_LOCAL_FIXED = 10,
		ISO_BASIC_FULL = 11,
		ISO_BASIC_LOCAL_FULL = 12,
		ISO_EXTENDED_FIXED = 13,
		ISO_EXTENDED_LOCAL_FIXED = 14,
		ISO_EXTENDED_FULL = 15,
		ISO_EXTENDED_LOCAL_FULL = 16,
		ZONE_ID = 17,
		ZONE_ID_SHORT = 18,
		EXEMPLAR_LOCATION = 19,
	}
	public enum UTimeZoneFormatGMTOffsetPatternType : int32
	{
		POSITIVE_HM = 0,
		POSITIVE_HMS = 1,
		NEGATIVE_HM = 2,
		NEGATIVE_HMS = 3,
		POSITIVE_H = 4,
		NEGATIVE_H = 5,
		COUNT = 6,
	}
	public enum UTimeZoneFormatTimeType : int32
	{
		UNKNOWN = 0,
		STANDARD = 1,
		DAYLIGHT = 2,
	}
	public enum UTimeZoneFormatParseOption : int32
	{
		NONE = 0,
		ALL_STYLES = 1,
		TZ_DATABASE_ABBREVIATIONS = 2,
	}
	public enum UMeasureFormatWidth : int32
	{
		WIDE = 0,
		SHORT = 1,
		NARROW = 2,
		NUMERIC = 3,
		COUNT = 4,
	}
	public enum UDateRelativeUnit : int32
	{
		SECONDS = 0,
		MINUTES = 1,
		HOURS = 2,
		DAYS = 3,
		WEEKS = 4,
		MONTHS = 5,
		YEARS = 6,
		UNIT_COUNT = 7,
	}
	public enum UDateAbsoluteUnit : int32
	{
		SUNDAY = 0,
		MONDAY = 1,
		TUESDAY = 2,
		WEDNESDAY = 3,
		THURSDAY = 4,
		FRIDAY = 5,
		SATURDAY = 6,
		DAY = 7,
		WEEK = 8,
		MONTH = 9,
		YEAR = 10,
		NOW = 11,
		UNIT_COUNT = 12,
	}
	public enum UDateDirection : int32
	{
		LAST_2 = 0,
		LAST = 1,
		THIS = 2,
		NEXT = 3,
		NEXT_2 = 4,
		PLAIN = 5,
		COUNT = 6,
	}
	public enum MIMECONTF : int32
	{
		MAILNEWS = 1,
		BROWSER = 2,
		MINIMAL = 4,
		IMPORT = 8,
		SAVABLE_MAILNEWS = 256,
		SAVABLE_BROWSER = 512,
		EXPORT = 1024,
		PRIVCONVERTER = 65536,
		VALID = 131072,
		VALID_NLS = 262144,
		MIME_IE4 = 268435456,
		MIME_LATEST = 536870912,
		MIME_REGISTRY = 1073741824,
	}
	[AllowDuplicates]
	public enum SCRIPTCONTF : int32
	{
		Default = 0,
		Merge = 1,
		AsciiSym = 2,
		AsciiLatin = 3,
		Latin = 4,
		Greek = 5,
		Cyrillic = 6,
		Armenian = 7,
		Hebrew = 8,
		Arabic = 9,
		Devanagari = 10,
		Bengali = 11,
		Gurmukhi = 12,
		Gujarati = 13,
		Oriya = 14,
		Tamil = 15,
		Telugu = 16,
		Kannada = 17,
		Malayalam = 18,
		Thai = 19,
		Lao = 20,
		Tibetan = 21,
		Georgian = 22,
		Hangul = 23,
		Kana = 24,
		Bopomofo = 25,
		Han = 26,
		Ethiopic = 27,
		CanSyllabic = 28,
		Cherokee = 29,
		Yi = 30,
		Braille = 31,
		Runic = 32,
		Ogham = 33,
		Sinhala = 34,
		Syriac = 35,
		Burmese = 36,
		Khmer = 37,
		Thaana = 38,
		Mongolian = 39,
		UserDefined = 40,
		Lim = 41,
		FEFirst = 23,
		FELast = 26,
	}
	[AllowDuplicates]
	public enum tagMLCONVCHARF : int32
	{
		AUTODETECT = 1,
		ENTITIZE = 2,
		NCR_ENTITIZE = 2,
		NAME_ENTITIZE = 4,
		USEDEFCHAR = 8,
		NOBESTFITCHARS = 16,
		DETECTJPN = 32,
	}
	public enum tagMLCPF : int32
	{
		MAILNEWS = 1,
		BROWSER = 2,
		VALID = 4,
		VALID_NLS = 8,
		PRESERVE_ORDER = 16,
		PREFERRED_ONLY = 32,
		FILTER_SPECIALCHAR = 64,
		EURO_UTF8 = 128,
	}
	public enum MLDETECTCP : int32
	{
		NONE = 0,
		_7BIT = 1,
		_8BIT = 2,
		DBCS = 4,
		HTML = 8,
		NUMBER = 16,
	}
	public enum SCRIPTFONTCONTF : int32
	{
		FIXED_FONT = 1,
		PROPORTIONAL_FONT = 2,
		SCRIPT_USER = 65536,
		SCRIPT_HIDE = 131072,
		SCRIPT_SYSTEM = 262144,
	}
	public enum MLSTR_FLAGS : int32
	{
		READ = 1,
		WRITE = 2,
	}
	#endregion
	
	#region Function pointers
	public function BOOL LOCALE_ENUMPROCA(PSTR param0);
	public function BOOL LOCALE_ENUMPROCW(PWSTR param0);
	public function BOOL LANGUAGEGROUP_ENUMPROCA(uint32 param0, PSTR param1, PSTR param2, uint32 param3, int param4);
	public function BOOL LANGGROUPLOCALE_ENUMPROCA(uint32 param0, uint32 param1, PSTR param2, int param3);
	public function BOOL UILANGUAGE_ENUMPROCA(PSTR param0, int param1);
	public function BOOL CODEPAGE_ENUMPROCA(PSTR param0);
	public function BOOL DATEFMT_ENUMPROCA(PSTR param0);
	public function BOOL DATEFMT_ENUMPROCEXA(PSTR param0, uint32 param1);
	public function BOOL TIMEFMT_ENUMPROCA(PSTR param0);
	public function BOOL CALINFO_ENUMPROCA(PSTR param0);
	public function BOOL CALINFO_ENUMPROCEXA(PSTR param0, uint32 param1);
	public function BOOL LANGUAGEGROUP_ENUMPROCW(uint32 param0, PWSTR param1, PWSTR param2, uint32 param3, int param4);
	public function BOOL LANGGROUPLOCALE_ENUMPROCW(uint32 param0, uint32 param1, PWSTR param2, int param3);
	public function BOOL UILANGUAGE_ENUMPROCW(PWSTR param0, int param1);
	public function BOOL CODEPAGE_ENUMPROCW(PWSTR param0);
	public function BOOL DATEFMT_ENUMPROCW(PWSTR param0);
	public function BOOL DATEFMT_ENUMPROCEXW(PWSTR param0, uint32 param1);
	public function BOOL TIMEFMT_ENUMPROCW(PWSTR param0);
	public function BOOL CALINFO_ENUMPROCW(PWSTR param0);
	public function BOOL CALINFO_ENUMPROCEXW(PWSTR param0, uint32 param1);
	public function BOOL GEO_ENUMPROC(int32 param0);
	public function BOOL GEO_ENUMNAMEPROC(PWSTR param0, LPARAM param1);
	public function BOOL CALINFO_ENUMPROCEXEX(PWSTR param0, uint32 param1, PWSTR param2, LPARAM param3);
	public function BOOL DATEFMT_ENUMPROCEXEX(PWSTR param0, uint32 param1, LPARAM param2);
	public function BOOL TIMEFMT_ENUMPROCEX(PWSTR param0, LPARAM param1);
	public function BOOL LOCALE_ENUMPROCEX(PWSTR param0, uint32 param1, LPARAM param2);
	public function void PFN_MAPPINGCALLBACKPROC(out MAPPING_PROPERTY_BAG pBag, void* data, uint32 dwDataSize, HRESULT Result);
	public function void UTraceEntry(void* context, int32 fnNumber);
	public function void UTraceExit(void* context, int32 fnNumber, PSTR fmt, out int8 args);
	public function void UTraceData(void* context, int32 fnNumber, int32 level, PSTR fmt, out int8 args);
	public function int32 UCharIteratorGetIndex(out UCharIterator iter, UCharIteratorOrigin origin);
	public function int32 UCharIteratorMove(out UCharIterator iter, int32 delta, UCharIteratorOrigin origin);
	public function int8 UCharIteratorHasNext(out UCharIterator iter);
	public function int8 UCharIteratorHasPrevious(out UCharIterator iter);
	public function int32 UCharIteratorCurrent(out UCharIterator iter);
	public function int32 UCharIteratorNext(out UCharIterator iter);
	public function int32 UCharIteratorPrevious(out UCharIterator iter);
	public function int32 UCharIteratorReserved(out UCharIterator iter, int32 something);
	public function uint32 UCharIteratorGetState(in UCharIterator iter);
	public function void UCharIteratorSetState(out UCharIterator iter, uint32 state, out UErrorCode pErrorCode);
	public function uint32 UCPMapValueFilter(void* context, uint32 value);
	public function void UConverterToUCallback(void* context, out UConverterToUnicodeArgs args, PSTR codeUnits, int32 length, UConverterCallbackReason reason, out UErrorCode pErrorCode);
	public function void UConverterFromUCallback(void* context, out UConverterFromUnicodeArgs args, in uint16 codeUnits, int32 length, int32 codePoint, UConverterCallbackReason reason, out UErrorCode pErrorCode);
	public function void* UMemAllocFn(void* context, uint size);
	public function void* UMemReallocFn(void* context, void* mem, uint size);
	public function void UMemFreeFn(void* context, void* mem);
	public function int8 UCharEnumTypeRange(void* context, int32 start, int32 limit, UCharCategory type);
	public function int8 UEnumCharNamesFn(void* context, int32 code, UCharNameChoice nameChoice, PSTR name, int32 length);
	public function UCharDirection UBiDiClassCallback(void* context, int32 c);
	public function UText* UTextClone(out UText dest, in UText src, int8 deep, out UErrorCode status);
	public function int64 UTextNativeLength(out UText ut);
	public function int8 UTextAccess(out UText ut, int64 nativeIndex, int8 forward);
	public function int32 UTextExtract(out UText ut, int64 nativeStart, int64 nativeLimit, out uint16 dest, int32 destCapacity, out UErrorCode status);
	public function int32 UTextReplace(out UText ut, int64 nativeStart, int64 nativeLimit, in uint16 replacementText, int32 replacmentLength, out UErrorCode status);
	public function void UTextCopy(out UText ut, int64 nativeStart, int64 nativeLimit, int64 nativeDest, int8 move, out UErrorCode status);
	public function int64 UTextMapOffsetToNative(in UText ut);
	public function int32 UTextMapNativeIndexToUTF16(in UText ut, int64 nativeIndex);
	public function void UTextClose(out UText ut);
	public function uint16 UNESCAPE_CHAR_AT(int32 offset, void* context);
	public function int8 URegexMatchCallback(void* context, int32 steps);
	public function int8 URegexFindProgressCallback(void* context, int64 matchIndex);
	public function int32 UStringCaseMapper(in UCaseMap csm, out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	#endregion
	
	#region Structs
	[CRepr]
	public struct FONTSIGNATURE
	{
		public uint32[4] fsUsb;
		public uint32[2] fsCsb;
	}
	[CRepr]
	public struct CHARSETINFO
	{
		public uint32 ciCharset;
		public uint32 ciACP;
		public FONTSIGNATURE fs;
	}
	[CRepr]
	public struct LOCALESIGNATURE
	{
		public uint32[4] lsUsb;
		public uint32[2] lsCsbDefault;
		public uint32[2] lsCsbSupported;
	}
	[CRepr]
	public struct NEWTEXTMETRICEXA
	{
		public NEWTEXTMETRICA ntmTm;
		public FONTSIGNATURE ntmFontSig;
	}
	[CRepr]
	public struct NEWTEXTMETRICEXW
	{
		public NEWTEXTMETRICW ntmTm;
		public FONTSIGNATURE ntmFontSig;
	}
	[CRepr]
	public struct ENUMTEXTMETRICA
	{
		public NEWTEXTMETRICEXA etmNewTextMetricEx;
		public AXESLISTA etmAxesList;
	}
	[CRepr]
	public struct ENUMTEXTMETRICW
	{
		public NEWTEXTMETRICEXW etmNewTextMetricEx;
		public AXESLISTW etmAxesList;
	}
	[CRepr]
	public struct CPINFO
	{
		public uint32 MaxCharSize;
		public uint8[2] DefaultChar;
		public uint8[12] LeadByte;
	}
	[CRepr]
	public struct CPINFOEXA
	{
		public uint32 MaxCharSize;
		public uint8[2] DefaultChar;
		public uint8[12] LeadByte;
		public char16 UnicodeDefaultChar;
		public uint32 CodePage;
		public CHAR[260] CodePageName;
	}
	[CRepr]
	public struct CPINFOEXW
	{
		public uint32 MaxCharSize;
		public uint8[2] DefaultChar;
		public uint8[12] LeadByte;
		public char16 UnicodeDefaultChar;
		public uint32 CodePage;
		public char16[260] CodePageName;
	}
	[CRepr]
	public struct NUMBERFMTA
	{
		public uint32 NumDigits;
		public uint32 LeadingZero;
		public uint32 Grouping;
		public PSTR lpDecimalSep;
		public PSTR lpThousandSep;
		public uint32 NegativeOrder;
	}
	[CRepr]
	public struct NUMBERFMTW
	{
		public uint32 NumDigits;
		public uint32 LeadingZero;
		public uint32 Grouping;
		public PWSTR lpDecimalSep;
		public PWSTR lpThousandSep;
		public uint32 NegativeOrder;
	}
	[CRepr]
	public struct CURRENCYFMTA
	{
		public uint32 NumDigits;
		public uint32 LeadingZero;
		public uint32 Grouping;
		public PSTR lpDecimalSep;
		public PSTR lpThousandSep;
		public uint32 NegativeOrder;
		public uint32 PositiveOrder;
		public PSTR lpCurrencySymbol;
	}
	[CRepr]
	public struct CURRENCYFMTW
	{
		public uint32 NumDigits;
		public uint32 LeadingZero;
		public uint32 Grouping;
		public PWSTR lpDecimalSep;
		public PWSTR lpThousandSep;
		public uint32 NegativeOrder;
		public uint32 PositiveOrder;
		public PWSTR lpCurrencySymbol;
	}
	[CRepr]
	public struct NLSVERSIONINFO
	{
		public uint32 dwNLSVersionInfoSize;
		public uint32 dwNLSVersion;
		public uint32 dwDefinedVersion;
		public uint32 dwEffectiveId;
		public Guid guidCustomVersion;
	}
	[CRepr]
	public struct NLSVERSIONINFOEX
	{
		public uint32 dwNLSVersionInfoSize;
		public uint32 dwNLSVersion;
		public uint32 dwDefinedVersion;
		public uint32 dwEffectiveId;
		public Guid guidCustomVersion;
	}
	[CRepr]
	public struct FILEMUIINFO
	{
		public uint32 dwSize;
		public uint32 dwVersion;
		public uint32 dwFileType;
		public uint8[16] pChecksum;
		public uint8[16] pServiceChecksum;
		public uint32 dwLanguageNameOffset;
		public uint32 dwTypeIDMainSize;
		public uint32 dwTypeIDMainOffset;
		public uint32 dwTypeNameMainOffset;
		public uint32 dwTypeIDMUISize;
		public uint32 dwTypeIDMUIOffset;
		public uint32 dwTypeNameMUIOffset;
		public uint8[8] abBuffer;
	}
	[CRepr]
	public struct MAPPING_SERVICE_INFO
	{
		public uint Size;
		public PWSTR pszCopyright;
		public uint16 wMajorVersion;
		public uint16 wMinorVersion;
		public uint16 wBuildVersion;
		public uint16 wStepVersion;
		public uint32 dwInputContentTypesCount;
		public PWSTR* prgInputContentTypes;
		public uint32 dwOutputContentTypesCount;
		public PWSTR* prgOutputContentTypes;
		public uint32 dwInputLanguagesCount;
		public PWSTR* prgInputLanguages;
		public uint32 dwOutputLanguagesCount;
		public PWSTR* prgOutputLanguages;
		public uint32 dwInputScriptsCount;
		public PWSTR* prgInputScripts;
		public uint32 dwOutputScriptsCount;
		public PWSTR* prgOutputScripts;
		public Guid guid;
		public PWSTR pszCategory;
		public PWSTR pszDescription;
		public uint32 dwPrivateDataSize;
		public void* pPrivateData;
		public void* pContext;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct MAPPING_ENUM_OPTIONS
	{
		public uint Size;
		public PWSTR pszCategory;
		public PWSTR pszInputLanguage;
		public PWSTR pszOutputLanguage;
		public PWSTR pszInputScript;
		public PWSTR pszOutputScript;
		public PWSTR pszInputContentType;
		public PWSTR pszOutputContentType;
		public Guid* pGuid;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct MAPPING_OPTIONS
	{
		public uint Size;
		public PWSTR pszInputLanguage;
		public PWSTR pszOutputLanguage;
		public PWSTR pszInputScript;
		public PWSTR pszOutputScript;
		public PWSTR pszInputContentType;
		public PWSTR pszOutputContentType;
		public PWSTR pszUILanguage;
		public PFN_MAPPINGCALLBACKPROC pfnRecognizeCallback;
		public void* pRecognizeCallerData;
		public uint32 dwRecognizeCallerDataSize;
		public PFN_MAPPINGCALLBACKPROC pfnActionCallback;
		public void* pActionCallerData;
		public uint32 dwActionCallerDataSize;
		public uint32 dwServiceFlag;
		public uint32 _bitfield;
	}
	[CRepr]
	public struct MAPPING_DATA_RANGE
	{
		public uint32 dwStartIndex;
		public uint32 dwEndIndex;
		public PWSTR pszDescription;
		public uint32 dwDescriptionLength;
		public void* pData;
		public uint32 dwDataSize;
		public PWSTR pszContentType;
		public PWSTR* prgActionIds;
		public uint32 dwActionsCount;
		public PWSTR* prgActionDisplayNames;
	}
	[CRepr]
	public struct MAPPING_PROPERTY_BAG
	{
		public uint Size;
		public MAPPING_DATA_RANGE* prgResultRanges;
		public uint32 dwRangesCount;
		public void* pServiceData;
		public uint32 dwServiceDataSize;
		public void* pCallerData;
		public uint32 dwCallerDataSize;
		public void* pContext;
	}
	[CRepr]
	public struct SCRIPT_CONTROL
	{
		public uint32 _bitfield;
	}
	[CRepr]
	public struct SCRIPT_STATE
	{
		public uint16 _bitfield;
	}
	[CRepr]
	public struct SCRIPT_ANALYSIS
	{
		public uint16 _bitfield;
		public SCRIPT_STATE s;
	}
	[CRepr]
	public struct SCRIPT_ITEM
	{
		public int32 iCharPos;
		public SCRIPT_ANALYSIS a;
	}
	[CRepr]
	public struct SCRIPT_VISATTR
	{
		public uint16 _bitfield;
	}
	[CRepr]
	public struct GOFFSET
	{
		public int32 du;
		public int32 dv;
	}
	[CRepr]
	public struct SCRIPT_LOGATTR
	{
		public uint8 _bitfield;
	}
	[CRepr]
	public struct SCRIPT_PROPERTIES
	{
		public uint32 _bitfield1;
		public uint32 _bitfield2;
	}
	[CRepr]
	public struct SCRIPT_FONTPROPERTIES
	{
		public int32 cBytes;
		public uint16 wgBlank;
		public uint16 wgDefault;
		public uint16 wgInvalid;
		public uint16 wgKashida;
		public int32 iKashidaWidth;
	}
	[CRepr]
	public struct SCRIPT_TABDEF
	{
		public int32 cTabStops;
		public int32 iScale;
		public int32* pTabStops;
		public int32 iTabOrigin;
	}
	[CRepr]
	public struct SCRIPT_DIGITSUBSTITUTE
	{
		public uint32 _bitfield1;
		public uint32 _bitfield2;
		public uint32 dwReserved;
	}
	[CRepr]
	public struct opentype_feature_record
	{
		public uint32 tagFeature;
		public int32 lParameter;
	}
	[CRepr]
	public struct textrange_properties
	{
		public opentype_feature_record* potfRecords;
		public int32 cotfRecords;
	}
	[CRepr]
	public struct script_charprop
	{
		public uint16 _bitfield;
	}
	[CRepr]
	public struct script_glyphprop
	{
		public SCRIPT_VISATTR sva;
		public uint16 reserved;
	}
	[CRepr]
	public struct UReplaceableCallbacks
	{
		public int length;
		public int charAt;
		public int char32At;
		public int replace;
		public int extract;
		public int copy;
	}
	[CRepr]
	public struct UFieldPosition
	{
		public int32 field;
		public int32 beginIndex;
		public int32 endIndex;
	}
	[CRepr]
	public struct UCharIterator
	{
		public void* context;
		public int32 length;
		public int32 start;
		public int32 index;
		public int32 limit;
		public int32 reservedField;
		public UCharIteratorGetIndex getIndex;
		public UCharIteratorMove move;
		public UCharIteratorHasNext hasNext;
		public UCharIteratorHasPrevious hasPrevious;
		public UCharIteratorCurrent current;
		public UCharIteratorNext next;
		public UCharIteratorPrevious previous;
		public UCharIteratorReserved reservedFn;
		public UCharIteratorGetState getState;
		public UCharIteratorSetState setState;
	}
	[CRepr]
	public struct UEnumeration {}
	[CRepr]
	public struct UResourceBundle {}
	[CRepr]
	public struct ULocaleDisplayNames {}
	[CRepr]
	public struct UCPMap {}
	[CRepr, Union]
	public struct UCPTrieData
	{
		public void* ptr0;
		public uint16* ptr16;
		public uint32* ptr32;
		public uint8* ptr8;
	}
	[CRepr]
	public struct UCPTrie
	{
		public uint16* index;
		public UCPTrieData data;
		public int32 indexLength;
		public int32 dataLength;
		public int32 highStart;
		public uint16 shifted12HighStart;
		public int8 type;
		public int8 valueWidth;
		public uint32 reserved32;
		public uint16 reserved16;
		public uint16 index3NullOffset;
		public int32 dataNullOffset;
		public uint32 nullValue;
	}
	[CRepr]
	public struct UMutableCPTrie {}
	[CRepr]
	public struct UConverter {}
	[CRepr]
	public struct UConverterFromUnicodeArgs
	{
		public uint16 size;
		public int8 flush;
		public UConverter* converter;
		public uint16* source;
		public uint16* sourceLimit;
		public PSTR target;
		public PSTR targetLimit;
		public int32* offsets;
	}
	[CRepr]
	public struct UConverterToUnicodeArgs
	{
		public uint16 size;
		public int8 flush;
		public UConverter* converter;
		public PSTR source;
		public PSTR sourceLimit;
		public uint16* target;
		public uint16* targetLimit;
		public int32* offsets;
	}
	[CRepr]
	public struct USet {}
	[CRepr]
	public struct UBiDi {}
	[CRepr]
	public struct UBiDiTransform {}
	[CRepr]
	public struct UTextFuncs
	{
		public int32 tableSize;
		public int32 reserved1;
		public int32 reserved2;
		public int32 reserved3;
		public UTextClone clone;
		public UTextNativeLength nativeLength;
		public UTextAccess access;
		public UTextExtract extract;
		public UTextReplace replace;
		public UTextCopy copy;
		public UTextMapOffsetToNative mapOffsetToNative;
		public UTextMapNativeIndexToUTF16 mapNativeIndexToUTF16;
		public UTextClose close;
		public UTextClose spare1;
		public UTextClose spare2;
		public UTextClose spare3;
	}
	[CRepr]
	public struct UText
	{
		public uint32 magic;
		public int32 flags;
		public int32 providerProperties;
		public int32 sizeOfStruct;
		public int64 chunkNativeLimit;
		public int32 extraSize;
		public int32 nativeIndexingLimit;
		public int64 chunkNativeStart;
		public int32 chunkOffset;
		public int32 chunkLength;
		public uint16* chunkContents;
		public UTextFuncs* pFuncs;
		public void* pExtra;
		public void* context;
		public void* p;
		public void* q;
		public void* r;
		public void* privP;
		public int64 a;
		public int32 b;
		public int32 c;
		public int64 privA;
		public int32 privB;
		public int32 privC;
	}
	[CRepr]
	public struct USerializedSet
	{
		public uint16* array;
		public int32 bmpLength;
		public int32 length;
		public uint16[8] staticArray;
	}
	[CRepr]
	public struct UNormalizer2 {}
	[CRepr]
	public struct UConverterSelector {}
	[CRepr]
	public struct UBreakIterator {}
	[CRepr]
	public struct UCaseMap {}
	[CRepr]
	public struct UParseError
	{
		public int32 line;
		public int32 offset;
		public uint16[16] preContext;
		public uint16[16] postContext;
	}
	[CRepr]
	public struct UStringPrepProfile {}
	[CRepr]
	public struct UIDNA {}
	[CRepr]
	public struct UIDNAInfo
	{
		public int16 size;
		public int8 isTransitionalDifferent;
		public int8 reservedB3;
		public uint32 errors;
		public int32 reservedI2;
		public int32 reservedI3;
	}
	[CRepr]
	public struct UCollator {}
	[CRepr]
	public struct UCollationElements {}
	[CRepr]
	public struct UCharsetDetector {}
	[CRepr]
	public struct UCharsetMatch {}
	[CRepr]
	public struct UFieldPositionIterator {}
	[CRepr]
	public struct UConstrainedFieldPosition {}
	[CRepr]
	public struct UFormattedValue {}
	[CRepr]
	public struct UDateIntervalFormat {}
	[CRepr]
	public struct UFormattedDateInterval {}
	[CRepr]
	public struct UGenderInfo {}
	[CRepr]
	public struct UListFormatter {}
	[CRepr]
	public struct UFormattedList {}
	[CRepr]
	public struct ULocaleData {}
	[CRepr]
	public struct UDateFormatSymbols {}
	[CRepr]
	public struct UNumberFormatter {}
	[CRepr]
	public struct UFormattedNumber {}
	[CRepr]
	public struct UNumberingSystem {}
	[CRepr]
	public struct UFormattedNumberRange {}
	[CRepr]
	public struct UPluralRules {}
	[CRepr]
	public struct URegularExpression {}
	[CRepr]
	public struct URegion {}
	[CRepr]
	public struct URelativeDateTimeFormatter {}
	[CRepr]
	public struct UFormattedRelativeDateTime {}
	[CRepr]
	public struct UStringSearch {}
	[CRepr]
	public struct USpoofChecker {}
	[CRepr]
	public struct USpoofCheckResult {}
	[CRepr]
	public struct UTransPosition
	{
		public int32 contextStart;
		public int32 contextLimit;
		public int32 start;
		public int32 limit;
	}
	[CRepr]
	public struct UHashtable {}
	[CRepr]
	public struct USearch {}
	[CRepr]
	public struct MIMECPINFO
	{
		public uint32 dwFlags;
		public uint32 uiCodePage;
		public uint32 uiFamilyCodePage;
		public char16[64] wszDescription;
		public char16[50] wszWebCharset;
		public char16[50] wszHeaderCharset;
		public char16[50] wszBodyCharset;
		public char16[32] wszFixedWidthFont;
		public char16[32] wszProportionalFont;
		public uint8 bGDICharset;
	}
	[CRepr]
	public struct MIMECSETINFO
	{
		public uint32 uiCodePage;
		public uint32 uiInternetEncoding;
		public char16[50] wszCharset;
	}
	[CRepr]
	public struct RFC1766INFO
	{
		public uint32 lcid;
		public char16[6] wszRfc1766;
		public char16[32] wszLocaleName;
	}
	[CRepr]
	public struct SCRIPTINFO
	{
		public uint8 ScriptId;
		public uint32 uiCodePage;
		public char16[48] wszDescription;
		public char16[32] wszFixedWidthFont;
		public char16[32] wszProportionalFont;
	}
	[CRepr]
	public struct DetectEncodingInfo
	{
		public uint32 nLangID;
		public uint32 nCodePage;
		public int32 nDocPercent;
		public int32 nConfidence;
	}
	[CRepr]
	public struct tagSCRIPFONTINFO
	{
		public int64 scripts;
		public char16[32] wszFont;
	}
	[CRepr]
	public struct UNICODERANGE
	{
		public char16 wcFrom;
		public char16 wcTo;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_SpellCheckerFactory = .(0x7ab36653, 0x1796, 0x484b, 0xbd, 0xfa, 0xe7, 0x4f, 0x1d, 0xb7, 0xc1, 0xdc);
	public const Guid CLSID_CMLangString = .(0xc04d65cf, 0xb70d, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
	public const Guid CLSID_CMLangConvertCharset = .(0xd66d6f99, 0xcdaa, 0x11d0, 0xb8, 0x22, 0x00, 0xc0, 0x4f, 0xc9, 0xb3, 0x1f);
	public const Guid CLSID_CMultiLanguage = .(0x275c23e2, 0x3747, 0x11d0, 0x9f, 0xea, 0x00, 0xaa, 0x00, 0x3f, 0x86, 0x46);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct ISpellingError : IUnknown
	{
		public const new Guid IID = .(0xb7c82d61, 0xfbe8, 0x4b47, 0x9b, 0x27, 0x6c, 0x0d, 0x2e, 0x0d, 0xe0, 0xa3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_StartIndex(out uint32 value) mut => VT.get_StartIndex(ref this, out value);
		public HRESULT get_Length(out uint32 value) mut => VT.get_Length(ref this, out value);
		public HRESULT get_CorrectiveAction(out CORRECTIVE_ACTION value) mut => VT.get_CorrectiveAction(ref this, out value);
		public HRESULT get_Replacement(out PWSTR value) mut => VT.get_Replacement(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellingError self, out uint32 value) get_StartIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellingError self, out uint32 value) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellingError self, out CORRECTIVE_ACTION value) get_CorrectiveAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellingError self, out PWSTR value) get_Replacement;
		}
	}
	[CRepr]
	public struct IEnumSpellingError : IUnknown
	{
		public const new Guid IID = .(0x803e3bd4, 0x2828, 0x4410, 0x82, 0x90, 0x41, 0x8d, 0x1d, 0x73, 0xc7, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out ISpellingError* value) mut => VT.Next(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpellingError self, out ISpellingError* value) Next;
		}
	}
	[CRepr]
	public struct IOptionDescription : IUnknown
	{
		public const new Guid IID = .(0x432e5f85, 0x35cf, 0x4606, 0xa8, 0x01, 0x6f, 0x70, 0x27, 0x7e, 0x1d, 0x7a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Id(out PWSTR value) mut => VT.get_Id(ref this, out value);
		public HRESULT get_Heading(out PWSTR value) mut => VT.get_Heading(ref this, out value);
		public HRESULT get_Description(out PWSTR value) mut => VT.get_Description(ref this, out value);
		public HRESULT get_Labels(out IEnumString* value) mut => VT.get_Labels(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOptionDescription self, out PWSTR value) get_Id;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOptionDescription self, out PWSTR value) get_Heading;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOptionDescription self, out PWSTR value) get_Description;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOptionDescription self, out IEnumString* value) get_Labels;
		}
	}
	[CRepr]
	public struct ISpellCheckerChangedEventHandler : IUnknown
	{
		public const new Guid IID = .(0x0b83a5b0, 0x792f, 0x4eab, 0x97, 0x99, 0xac, 0xf5, 0x2c, 0x5e, 0xd0, 0x8a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Invoke(ref ISpellChecker sender) mut => VT.Invoke(ref this, ref sender);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckerChangedEventHandler self, ref ISpellChecker sender) Invoke;
		}
	}
	[CRepr]
	public struct ISpellChecker : IUnknown
	{
		public const new Guid IID = .(0xb6fd0b71, 0xe2bc, 0x4653, 0x8d, 0x05, 0xf1, 0x97, 0xe4, 0x12, 0x77, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_LanguageTag(out PWSTR value) mut => VT.get_LanguageTag(ref this, out value);
		public HRESULT Check(PWSTR text, out IEnumSpellingError* value) mut => VT.Check(ref this, text, out value);
		public HRESULT Suggest(PWSTR word, out IEnumString* value) mut => VT.Suggest(ref this, word, out value);
		public HRESULT Add(PWSTR word) mut => VT.Add(ref this, word);
		public HRESULT Ignore(PWSTR word) mut => VT.Ignore(ref this, word);
		public HRESULT AutoCorrect(PWSTR from, PWSTR to) mut => VT.AutoCorrect(ref this, from, to);
		public HRESULT GetOptionValue(PWSTR optionId, out uint8 value) mut => VT.GetOptionValue(ref this, optionId, out value);
		public HRESULT get_OptionIds(out IEnumString* value) mut => VT.get_OptionIds(ref this, out value);
		public HRESULT get_Id(out PWSTR value) mut => VT.get_Id(ref this, out value);
		public HRESULT get_LocalizedName(out PWSTR value) mut => VT.get_LocalizedName(ref this, out value);
		public HRESULT add_SpellCheckerChanged(ref ISpellCheckerChangedEventHandler handler, out uint32 eventCookie) mut => VT.add_SpellCheckerChanged(ref this, ref handler, out eventCookie);
		public HRESULT remove_SpellCheckerChanged(uint32 eventCookie) mut => VT.remove_SpellCheckerChanged(ref this, eventCookie);
		public HRESULT GetOptionDescription(PWSTR optionId, out IOptionDescription* value) mut => VT.GetOptionDescription(ref this, optionId, out value);
		public HRESULT ComprehensiveCheck(PWSTR text, out IEnumSpellingError* value) mut => VT.ComprehensiveCheck(ref this, text, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, out PWSTR value) get_LanguageTag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR text, out IEnumSpellingError* value) Check;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR word, out IEnumString* value) Suggest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR word) Add;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR word) Ignore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR from, PWSTR to) AutoCorrect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR optionId, out uint8 value) GetOptionValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, out IEnumString* value) get_OptionIds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, out PWSTR value) get_Id;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, out PWSTR value) get_LocalizedName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, ref ISpellCheckerChangedEventHandler handler, out uint32 eventCookie) add_SpellCheckerChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, uint32 eventCookie) remove_SpellCheckerChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR optionId, out IOptionDescription* value) GetOptionDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker self, PWSTR text, out IEnumSpellingError* value) ComprehensiveCheck;
		}
	}
	[CRepr]
	public struct ISpellChecker2 : ISpellChecker
	{
		public const new Guid IID = .(0xe7ed1c71, 0x87f7, 0x4378, 0xa8, 0x40, 0xc9, 0x20, 0x0d, 0xac, 0xee, 0x47);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Remove(PWSTR word) mut => VT.Remove(ref this, word);

		[CRepr]
		public struct VTable : ISpellChecker.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellChecker2 self, PWSTR word) Remove;
		}
	}
	[CRepr]
	public struct ISpellCheckerFactory : IUnknown
	{
		public const new Guid IID = .(0x8e018a9d, 0x2415, 0x4677, 0xbf, 0x08, 0x79, 0x4e, 0xa6, 0x1f, 0x94, 0xbb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_SupportedLanguages(out IEnumString* value) mut => VT.get_SupportedLanguages(ref this, out value);
		public HRESULT IsSupported(PWSTR languageTag, out BOOL value) mut => VT.IsSupported(ref this, languageTag, out value);
		public HRESULT CreateSpellChecker(PWSTR languageTag, out ISpellChecker* value) mut => VT.CreateSpellChecker(ref this, languageTag, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckerFactory self, out IEnumString* value) get_SupportedLanguages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckerFactory self, PWSTR languageTag, out BOOL value) IsSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckerFactory self, PWSTR languageTag, out ISpellChecker* value) CreateSpellChecker;
		}
	}
	[CRepr]
	public struct IUserDictionariesRegistrar : IUnknown
	{
		public const new Guid IID = .(0xaa176b85, 0x0e12, 0x4844, 0x8e, 0x1a, 0xee, 0xf1, 0xda, 0x77, 0xf5, 0x86);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterUserDictionary(PWSTR dictionaryPath, PWSTR languageTag) mut => VT.RegisterUserDictionary(ref this, dictionaryPath, languageTag);
		public HRESULT UnregisterUserDictionary(PWSTR dictionaryPath, PWSTR languageTag) mut => VT.UnregisterUserDictionary(ref this, dictionaryPath, languageTag);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserDictionariesRegistrar self, PWSTR dictionaryPath, PWSTR languageTag) RegisterUserDictionary;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserDictionariesRegistrar self, PWSTR dictionaryPath, PWSTR languageTag) UnregisterUserDictionary;
		}
	}
	[CRepr]
	public struct ISpellCheckProvider : IUnknown
	{
		public const new Guid IID = .(0x73e976e0, 0x8ed4, 0x4eb1, 0x80, 0xd7, 0x1b, 0xe0, 0xa1, 0x6b, 0x0c, 0x38);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_LanguageTag(out PWSTR value) mut => VT.get_LanguageTag(ref this, out value);
		public HRESULT Check(PWSTR text, out IEnumSpellingError* value) mut => VT.Check(ref this, text, out value);
		public HRESULT Suggest(PWSTR word, out IEnumString* value) mut => VT.Suggest(ref this, word, out value);
		public HRESULT GetOptionValue(PWSTR optionId, out uint8 value) mut => VT.GetOptionValue(ref this, optionId, out value);
		public HRESULT SetOptionValue(PWSTR optionId, uint8 value) mut => VT.SetOptionValue(ref this, optionId, value);
		public HRESULT get_OptionIds(out IEnumString* value) mut => VT.get_OptionIds(ref this, out value);
		public HRESULT get_Id(out PWSTR value) mut => VT.get_Id(ref this, out value);
		public HRESULT get_LocalizedName(out PWSTR value) mut => VT.get_LocalizedName(ref this, out value);
		public HRESULT GetOptionDescription(PWSTR optionId, out IOptionDescription* value) mut => VT.GetOptionDescription(ref this, optionId, out value);
		public HRESULT InitializeWordlist(WORDLIST_TYPE wordlistType, ref IEnumString words) mut => VT.InitializeWordlist(ref this, wordlistType, ref words);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, out PWSTR value) get_LanguageTag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, PWSTR text, out IEnumSpellingError* value) Check;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, PWSTR word, out IEnumString* value) Suggest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, PWSTR optionId, out uint8 value) GetOptionValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, PWSTR optionId, uint8 value) SetOptionValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, out IEnumString* value) get_OptionIds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, out PWSTR value) get_Id;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, out PWSTR value) get_LocalizedName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, PWSTR optionId, out IOptionDescription* value) GetOptionDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProvider self, WORDLIST_TYPE wordlistType, ref IEnumString words) InitializeWordlist;
		}
	}
	[CRepr]
	public struct IComprehensiveSpellCheckProvider : IUnknown
	{
		public const new Guid IID = .(0x0c58f8de, 0x8e94, 0x479e, 0x97, 0x17, 0x70, 0xc4, 0x2c, 0x4a, 0xd2, 0xc3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComprehensiveCheck(PWSTR text, out IEnumSpellingError* value) mut => VT.ComprehensiveCheck(ref this, text, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IComprehensiveSpellCheckProvider self, PWSTR text, out IEnumSpellingError* value) ComprehensiveCheck;
		}
	}
	[CRepr]
	public struct ISpellCheckProviderFactory : IUnknown
	{
		public const new Guid IID = .(0x9f671e11, 0x77d6, 0x4c92, 0xae, 0xfb, 0x61, 0x52, 0x15, 0xe3, 0xa4, 0xbe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_SupportedLanguages(out IEnumString* value) mut => VT.get_SupportedLanguages(ref this, out value);
		public HRESULT IsSupported(PWSTR languageTag, out BOOL value) mut => VT.IsSupported(ref this, languageTag, out value);
		public HRESULT CreateSpellCheckProvider(PWSTR languageTag, out ISpellCheckProvider* value) mut => VT.CreateSpellCheckProvider(ref this, languageTag, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProviderFactory self, out IEnumString* value) get_SupportedLanguages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProviderFactory self, PWSTR languageTag, out BOOL value) IsSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpellCheckProviderFactory self, PWSTR languageTag, out ISpellCheckProvider* value) CreateSpellCheckProvider;
		}
	}
	[CRepr]
	public struct IMLangStringBufW : IUnknown
	{
		public const new Guid IID = .(0xd24acd21, 0xba72, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetStatus(int32* plFlags, int32* pcchBuf) mut => VT.GetStatus(ref this, plFlags, pcchBuf);
		public HRESULT LockBuf(int32 cchOffset, int32 cchMaxLock, out uint16* ppszBuf, int32* pcchBuf) mut => VT.LockBuf(ref this, cchOffset, cchMaxLock, out ppszBuf, pcchBuf);
		public HRESULT UnlockBuf(PWSTR pszBuf, int32 cchOffset, int32 cchWrite) mut => VT.UnlockBuf(ref this, pszBuf, cchOffset, cchWrite);
		public HRESULT Insert(int32 cchOffset, int32 cchMaxInsert, int32* pcchActual) mut => VT.Insert(ref this, cchOffset, cchMaxInsert, pcchActual);
		public HRESULT Delete(int32 cchOffset, int32 cchDelete) mut => VT.Delete(ref this, cchOffset, cchDelete);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufW self, int32* plFlags, int32* pcchBuf) GetStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufW self, int32 cchOffset, int32 cchMaxLock, out uint16* ppszBuf, int32* pcchBuf) LockBuf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufW self, PWSTR pszBuf, int32 cchOffset, int32 cchWrite) UnlockBuf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufW self, int32 cchOffset, int32 cchMaxInsert, int32* pcchActual) Insert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufW self, int32 cchOffset, int32 cchDelete) Delete;
		}
	}
	[CRepr]
	public struct IMLangStringBufA : IUnknown
	{
		public const new Guid IID = .(0xd24acd23, 0xba72, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetStatus(int32* plFlags, int32* pcchBuf) mut => VT.GetStatus(ref this, plFlags, pcchBuf);
		public HRESULT LockBuf(int32 cchOffset, int32 cchMaxLock, out CHAR* ppszBuf, int32* pcchBuf) mut => VT.LockBuf(ref this, cchOffset, cchMaxLock, out ppszBuf, pcchBuf);
		public HRESULT UnlockBuf(PSTR pszBuf, int32 cchOffset, int32 cchWrite) mut => VT.UnlockBuf(ref this, pszBuf, cchOffset, cchWrite);
		public HRESULT Insert(int32 cchOffset, int32 cchMaxInsert, int32* pcchActual) mut => VT.Insert(ref this, cchOffset, cchMaxInsert, pcchActual);
		public HRESULT Delete(int32 cchOffset, int32 cchDelete) mut => VT.Delete(ref this, cchOffset, cchDelete);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufA self, int32* plFlags, int32* pcchBuf) GetStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufA self, int32 cchOffset, int32 cchMaxLock, out CHAR* ppszBuf, int32* pcchBuf) LockBuf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufA self, PSTR pszBuf, int32 cchOffset, int32 cchWrite) UnlockBuf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufA self, int32 cchOffset, int32 cchMaxInsert, int32* pcchActual) Insert;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringBufA self, int32 cchOffset, int32 cchDelete) Delete;
		}
	}
	[CRepr]
	public struct IMLangString : IUnknown
	{
		public const new Guid IID = .(0xc04d65ce, 0xb70d, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Sync(BOOL fNoAccess) mut => VT.Sync(ref this, fNoAccess);
		public HRESULT GetLength(int32* plLen) mut => VT.GetLength(ref this, plLen);
		public HRESULT SetMLStr(int32 lDestPos, int32 lDestLen, ref IUnknown pSrcMLStr, int32 lSrcPos, int32 lSrcLen) mut => VT.SetMLStr(ref this, lDestPos, lDestLen, ref pSrcMLStr, lSrcPos, lSrcLen);
		public HRESULT GetMLStr(int32 lSrcPos, int32 lSrcLen, ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid piid, out IUnknown* ppDestMLStr, int32* plDestPos, int32* plDestLen) mut => VT.GetMLStr(ref this, lSrcPos, lSrcLen, ref pUnkOuter, dwClsContext, piid, out ppDestMLStr, plDestPos, plDestLen);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangString self, BOOL fNoAccess) Sync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangString self, int32* plLen) GetLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangString self, int32 lDestPos, int32 lDestLen, ref IUnknown pSrcMLStr, int32 lSrcPos, int32 lSrcLen) SetMLStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangString self, int32 lSrcPos, int32 lSrcLen, ref IUnknown pUnkOuter, uint32 dwClsContext, in Guid piid, out IUnknown* ppDestMLStr, int32* plDestPos, int32* plDestLen) GetMLStr;
		}
	}
	[CRepr]
	public struct IMLangStringWStr : IMLangString
	{
		public const new Guid IID = .(0xc04d65d0, 0xb70d, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetWStr(int32 lDestPos, int32 lDestLen, char16* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) mut => VT.SetWStr(ref this, lDestPos, lDestLen, pszSrc, cchSrc, pcchActual, plActualLen);
		public HRESULT SetStrBufW(int32 lDestPos, int32 lDestLen, IMLangStringBufW* pSrcBuf, int32* pcchActual, int32* plActualLen) mut => VT.SetStrBufW(ref this, lDestPos, lDestLen, pSrcBuf, pcchActual, plActualLen);
		public HRESULT GetWStr(int32 lSrcPos, int32 lSrcLen, char16* pszDest, int32 cchDest, int32* pcchActual, int32* plActualLen) mut => VT.GetWStr(ref this, lSrcPos, lSrcLen, pszDest, cchDest, pcchActual, plActualLen);
		public HRESULT GetStrBufW(int32 lSrcPos, int32 lSrcMaxLen, out IMLangStringBufW* ppDestBuf, int32* plDestLen) mut => VT.GetStrBufW(ref this, lSrcPos, lSrcMaxLen, out ppDestBuf, plDestLen);
		public HRESULT LockWStr(int32 lSrcPos, int32 lSrcLen, int32 lFlags, int32 cchRequest, PWSTR* ppszDest, int32* pcchDest, int32* plDestLen) mut => VT.LockWStr(ref this, lSrcPos, lSrcLen, lFlags, cchRequest, ppszDest, pcchDest, plDestLen);
		public HRESULT UnlockWStr(char16* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) mut => VT.UnlockWStr(ref this, pszSrc, cchSrc, pcchActual, plActualLen);
		public HRESULT SetLocale(int32 lDestPos, int32 lDestLen, uint32 locale) mut => VT.SetLocale(ref this, lDestPos, lDestLen, locale);
		public HRESULT GetLocale(int32 lSrcPos, int32 lSrcMaxLen, uint32* plocale, int32* plLocalePos, int32* plLocaleLen) mut => VT.GetLocale(ref this, lSrcPos, lSrcMaxLen, plocale, plLocalePos, plLocaleLen);

		[CRepr]
		public struct VTable : IMLangString.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lDestPos, int32 lDestLen, char16* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) SetWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lDestPos, int32 lDestLen, IMLangStringBufW* pSrcBuf, int32* pcchActual, int32* plActualLen) SetStrBufW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lSrcPos, int32 lSrcLen, char16* pszDest, int32 cchDest, int32* pcchActual, int32* plActualLen) GetWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lSrcPos, int32 lSrcMaxLen, out IMLangStringBufW* ppDestBuf, int32* plDestLen) GetStrBufW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lSrcPos, int32 lSrcLen, int32 lFlags, int32 cchRequest, PWSTR* ppszDest, int32* pcchDest, int32* plDestLen) LockWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, char16* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) UnlockWStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lDestPos, int32 lDestLen, uint32 locale) SetLocale;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringWStr self, int32 lSrcPos, int32 lSrcMaxLen, uint32* plocale, int32* plLocalePos, int32* plLocaleLen) GetLocale;
		}
	}
	[CRepr]
	public struct IMLangStringAStr : IMLangString
	{
		public const new Guid IID = .(0xc04d65d2, 0xb70d, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAStr(int32 lDestPos, int32 lDestLen, uint32 uCodePage, uint8* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) mut => VT.SetAStr(ref this, lDestPos, lDestLen, uCodePage, pszSrc, cchSrc, pcchActual, plActualLen);
		public HRESULT SetStrBufA(int32 lDestPos, int32 lDestLen, uint32 uCodePage, IMLangStringBufA* pSrcBuf, int32* pcchActual, int32* plActualLen) mut => VT.SetStrBufA(ref this, lDestPos, lDestLen, uCodePage, pSrcBuf, pcchActual, plActualLen);
		public HRESULT GetAStr(int32 lSrcPos, int32 lSrcLen, uint32 uCodePageIn, out uint32 puCodePageOut, uint8* pszDest, int32 cchDest, int32* pcchActual, int32* plActualLen) mut => VT.GetAStr(ref this, lSrcPos, lSrcLen, uCodePageIn, out puCodePageOut, pszDest, cchDest, pcchActual, plActualLen);
		public HRESULT GetStrBufA(int32 lSrcPos, int32 lSrcMaxLen, uint32* puDestCodePage, out IMLangStringBufA* ppDestBuf, int32* plDestLen) mut => VT.GetStrBufA(ref this, lSrcPos, lSrcMaxLen, puDestCodePage, out ppDestBuf, plDestLen);
		public HRESULT LockAStr(int32 lSrcPos, int32 lSrcLen, int32 lFlags, uint32 uCodePageIn, int32 cchRequest, uint32* puCodePageOut, PSTR* ppszDest, int32* pcchDest, int32* plDestLen) mut => VT.LockAStr(ref this, lSrcPos, lSrcLen, lFlags, uCodePageIn, cchRequest, puCodePageOut, ppszDest, pcchDest, plDestLen);
		public HRESULT UnlockAStr(uint8* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) mut => VT.UnlockAStr(ref this, pszSrc, cchSrc, pcchActual, plActualLen);
		public HRESULT SetLocale(int32 lDestPos, int32 lDestLen, uint32 locale) mut => VT.SetLocale(ref this, lDestPos, lDestLen, locale);
		public HRESULT GetLocale(int32 lSrcPos, int32 lSrcMaxLen, uint32* plocale, int32* plLocalePos, int32* plLocaleLen) mut => VT.GetLocale(ref this, lSrcPos, lSrcMaxLen, plocale, plLocalePos, plLocaleLen);

		[CRepr]
		public struct VTable : IMLangString.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lDestPos, int32 lDestLen, uint32 uCodePage, uint8* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) SetAStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lDestPos, int32 lDestLen, uint32 uCodePage, IMLangStringBufA* pSrcBuf, int32* pcchActual, int32* plActualLen) SetStrBufA;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lSrcPos, int32 lSrcLen, uint32 uCodePageIn, out uint32 puCodePageOut, uint8* pszDest, int32 cchDest, int32* pcchActual, int32* plActualLen) GetAStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lSrcPos, int32 lSrcMaxLen, uint32* puDestCodePage, out IMLangStringBufA* ppDestBuf, int32* plDestLen) GetStrBufA;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lSrcPos, int32 lSrcLen, int32 lFlags, uint32 uCodePageIn, int32 cchRequest, uint32* puCodePageOut, PSTR* ppszDest, int32* pcchDest, int32* plDestLen) LockAStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, uint8* pszSrc, int32 cchSrc, int32* pcchActual, int32* plActualLen) UnlockAStr;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lDestPos, int32 lDestLen, uint32 locale) SetLocale;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangStringAStr self, int32 lSrcPos, int32 lSrcMaxLen, uint32* plocale, int32* plLocalePos, int32* plLocaleLen) GetLocale;
		}
	}
	[CRepr]
	public struct IMLangLineBreakConsole : IUnknown
	{
		public const new Guid IID = .(0xf5be2ee1, 0xbfd7, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BreakLineML(ref IMLangString pSrcMLStr, int32 lSrcPos, int32 lSrcLen, int32 cMinColumns, int32 cMaxColumns, int32* plLineLen, int32* plSkipLen) mut => VT.BreakLineML(ref this, ref pSrcMLStr, lSrcPos, lSrcLen, cMinColumns, cMaxColumns, plLineLen, plSkipLen);
		public HRESULT BreakLineW(uint32 locale, char16* pszSrc, int32 cchSrc, int32 cMaxColumns, int32* pcchLine, int32* pcchSkip) mut => VT.BreakLineW(ref this, locale, pszSrc, cchSrc, cMaxColumns, pcchLine, pcchSkip);
		public HRESULT BreakLineA(uint32 locale, uint32 uCodePage, uint8* pszSrc, int32 cchSrc, int32 cMaxColumns, int32* pcchLine, int32* pcchSkip) mut => VT.BreakLineA(ref this, locale, uCodePage, pszSrc, cchSrc, cMaxColumns, pcchLine, pcchSkip);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangLineBreakConsole self, ref IMLangString pSrcMLStr, int32 lSrcPos, int32 lSrcLen, int32 cMinColumns, int32 cMaxColumns, int32* plLineLen, int32* plSkipLen) BreakLineML;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangLineBreakConsole self, uint32 locale, char16* pszSrc, int32 cchSrc, int32 cMaxColumns, int32* pcchLine, int32* pcchSkip) BreakLineW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangLineBreakConsole self, uint32 locale, uint32 uCodePage, uint8* pszSrc, int32 cchSrc, int32 cMaxColumns, int32* pcchLine, int32* pcchSkip) BreakLineA;
		}
	}
	[CRepr]
	public struct IEnumCodePage : IUnknown
	{
		public const new Guid IID = .(0x275c23e3, 0x3747, 0x11d0, 0x9f, 0xea, 0x00, 0xaa, 0x00, 0x3f, 0x86, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Clone(out IEnumCodePage* ppEnum) mut => VT.Clone(ref this, out ppEnum);
		public HRESULT Next(uint32 celt, out MIMECPINFO rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, out rgelt, pceltFetched);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCodePage self, out IEnumCodePage* ppEnum) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCodePage self, uint32 celt, out MIMECPINFO rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCodePage self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumCodePage self, uint32 celt) Skip;
		}
	}
	[CRepr]
	public struct IEnumRfc1766 : IUnknown
	{
		public const new Guid IID = .(0x3dc39d1d, 0xc030, 0x11d0, 0xb8, 0x1b, 0x00, 0xc0, 0x4f, 0xc9, 0xb3, 0x1f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Clone(out IEnumRfc1766* ppEnum) mut => VT.Clone(ref this, out ppEnum);
		public HRESULT Next(uint32 celt, out RFC1766INFO rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, out rgelt, pceltFetched);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRfc1766 self, out IEnumRfc1766* ppEnum) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRfc1766 self, uint32 celt, out RFC1766INFO rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRfc1766 self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumRfc1766 self, uint32 celt) Skip;
		}
	}
	[CRepr]
	public struct IEnumScript : IUnknown
	{
		public const new Guid IID = .(0xae5f1430, 0x388b, 0x11d2, 0x83, 0x80, 0x00, 0xc0, 0x4f, 0x8f, 0x5d, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Clone(out IEnumScript* ppEnum) mut => VT.Clone(ref this, out ppEnum);
		public HRESULT Next(uint32 celt, out SCRIPTINFO rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, out rgelt, pceltFetched);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumScript self, out IEnumScript* ppEnum) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumScript self, uint32 celt, out SCRIPTINFO rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumScript self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumScript self, uint32 celt) Skip;
		}
	}
	[CRepr]
	public struct IMLangConvertCharset : IUnknown
	{
		public const new Guid IID = .(0xd66d6f98, 0xcdaa, 0x11d0, 0xb8, 0x22, 0x00, 0xc0, 0x4f, 0xc9, 0xb3, 0x1f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty) mut => VT.Initialize(ref this, uiSrcCodePage, uiDstCodePage, dwProperty);
		public HRESULT GetSourceCodePage(out uint32 puiSrcCodePage) mut => VT.GetSourceCodePage(ref this, out puiSrcCodePage);
		public HRESULT GetDestinationCodePage(out uint32 puiDstCodePage) mut => VT.GetDestinationCodePage(ref this, out puiDstCodePage);
		public HRESULT GetProperty(out uint32 pdwProperty) mut => VT.GetProperty(ref this, out pdwProperty);
		public HRESULT DoConversion(ref uint8 pSrcStr, uint32* pcSrcSize, out uint8 pDstStr, uint32* pcDstSize) mut => VT.DoConversion(ref this, ref pSrcStr, pcSrcSize, out pDstStr, pcDstSize);
		public HRESULT DoConversionToUnicode(PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) mut => VT.DoConversionToUnicode(ref this, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT DoConversionFromUnicode(char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) mut => VT.DoConversionFromUnicode(ref this, pSrcStr, pcSrcSize, pDstStr, pcDstSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, out uint32 puiSrcCodePage) GetSourceCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, out uint32 puiDstCodePage) GetDestinationCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, out uint32 pdwProperty) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, ref uint8 pSrcStr, uint32* pcSrcSize, out uint8 pDstStr, uint32* pcDstSize) DoConversion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) DoConversionToUnicode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangConvertCharset self, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) DoConversionFromUnicode;
		}
	}
	[CRepr]
	public struct IMultiLanguage : IUnknown
	{
		public const new Guid IID = .(0x275c23e1, 0x3747, 0x11d0, 0x9f, 0xea, 0x00, 0xaa, 0x00, 0x3f, 0x86, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetNumberOfCodePageInfo(out uint32 pcCodePage) mut => VT.GetNumberOfCodePageInfo(ref this, out pcCodePage);
		public HRESULT GetCodePageInfo(uint32 uiCodePage, out MIMECPINFO pCodePageInfo) mut => VT.GetCodePageInfo(ref this, uiCodePage, out pCodePageInfo);
		public HRESULT GetFamilyCodePage(uint32 uiCodePage, out uint32 puiFamilyCodePage) mut => VT.GetFamilyCodePage(ref this, uiCodePage, out puiFamilyCodePage);
		public HRESULT EnumCodePages(uint32 grfFlags, out IEnumCodePage* ppEnumCodePage) mut => VT.EnumCodePages(ref this, grfFlags, out ppEnumCodePage);
		public HRESULT GetCharsetInfo(BSTR Charset, out MIMECSETINFO pCharsetInfo) mut => VT.GetCharsetInfo(ref this, Charset, out pCharsetInfo);
		public HRESULT IsConvertible(uint32 dwSrcEncoding, uint32 dwDstEncoding) mut => VT.IsConvertible(ref this, dwSrcEncoding, dwDstEncoding);
		public HRESULT ConvertString(uint32* pdwMode, uint32 dwSrcEncoding, uint32 dwDstEncoding, uint8* pSrcStr, uint32* pcSrcSize, uint8* pDstStr, uint32* pcDstSize) mut => VT.ConvertString(ref this, pdwMode, dwSrcEncoding, dwDstEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringToUnicode(uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) mut => VT.ConvertStringToUnicode(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringFromUnicode(uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) mut => VT.ConvertStringFromUnicode(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringReset() mut => VT.ConvertStringReset(ref this);
		public HRESULT GetRfc1766FromLcid(uint32 Locale, out BSTR pbstrRfc1766) mut => VT.GetRfc1766FromLcid(ref this, Locale, out pbstrRfc1766);
		public HRESULT GetLcidFromRfc1766(out uint32 pLocale, BSTR bstrRfc1766) mut => VT.GetLcidFromRfc1766(ref this, out pLocale, bstrRfc1766);
		public HRESULT EnumRfc1766(out IEnumRfc1766* ppEnumRfc1766) mut => VT.EnumRfc1766(ref this, out ppEnumRfc1766);
		public HRESULT GetRfc1766Info(uint32 Locale, out RFC1766INFO pRfc1766Info) mut => VT.GetRfc1766Info(ref this, Locale, out pRfc1766Info);
		public HRESULT CreateConvertCharset(uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty, out IMLangConvertCharset* ppMLangConvertCharset) mut => VT.CreateConvertCharset(ref this, uiSrcCodePage, uiDstCodePage, dwProperty, out ppMLangConvertCharset);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, out uint32 pcCodePage) GetNumberOfCodePageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 uiCodePage, out MIMECPINFO pCodePageInfo) GetCodePageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 uiCodePage, out uint32 puiFamilyCodePage) GetFamilyCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 grfFlags, out IEnumCodePage* ppEnumCodePage) EnumCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, BSTR Charset, out MIMECSETINFO pCharsetInfo) GetCharsetInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 dwSrcEncoding, uint32 dwDstEncoding) IsConvertible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32* pdwMode, uint32 dwSrcEncoding, uint32 dwDstEncoding, uint8* pSrcStr, uint32* pcSrcSize, uint8* pDstStr, uint32* pcDstSize) ConvertString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) ConvertStringToUnicode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) ConvertStringFromUnicode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self) ConvertStringReset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 Locale, out BSTR pbstrRfc1766) GetRfc1766FromLcid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, out uint32 pLocale, BSTR bstrRfc1766) GetLcidFromRfc1766;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, out IEnumRfc1766* ppEnumRfc1766) EnumRfc1766;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 Locale, out RFC1766INFO pRfc1766Info) GetRfc1766Info;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage self, uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty, out IMLangConvertCharset* ppMLangConvertCharset) CreateConvertCharset;
		}
	}
	[CRepr]
	public struct IMultiLanguage2 : IUnknown
	{
		public const new Guid IID = .(0xdccfc164, 0x2b38, 0x11d2, 0xb7, 0xec, 0x00, 0xc0, 0x4f, 0x8f, 0x5d, 0x9a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetNumberOfCodePageInfo(out uint32 pcCodePage) mut => VT.GetNumberOfCodePageInfo(ref this, out pcCodePage);
		public HRESULT GetCodePageInfo(uint32 uiCodePage, uint16 LangId, out MIMECPINFO pCodePageInfo) mut => VT.GetCodePageInfo(ref this, uiCodePage, LangId, out pCodePageInfo);
		public HRESULT GetFamilyCodePage(uint32 uiCodePage, out uint32 puiFamilyCodePage) mut => VT.GetFamilyCodePage(ref this, uiCodePage, out puiFamilyCodePage);
		public HRESULT EnumCodePages(uint32 grfFlags, uint16 LangId, out IEnumCodePage* ppEnumCodePage) mut => VT.EnumCodePages(ref this, grfFlags, LangId, out ppEnumCodePage);
		public HRESULT GetCharsetInfo(BSTR Charset, out MIMECSETINFO pCharsetInfo) mut => VT.GetCharsetInfo(ref this, Charset, out pCharsetInfo);
		public HRESULT IsConvertible(uint32 dwSrcEncoding, uint32 dwDstEncoding) mut => VT.IsConvertible(ref this, dwSrcEncoding, dwDstEncoding);
		public HRESULT ConvertString(uint32* pdwMode, uint32 dwSrcEncoding, uint32 dwDstEncoding, uint8* pSrcStr, uint32* pcSrcSize, uint8* pDstStr, uint32* pcDstSize) mut => VT.ConvertString(ref this, pdwMode, dwSrcEncoding, dwDstEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringToUnicode(uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) mut => VT.ConvertStringToUnicode(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringFromUnicode(uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) mut => VT.ConvertStringFromUnicode(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize);
		public HRESULT ConvertStringReset() mut => VT.ConvertStringReset(ref this);
		public HRESULT GetRfc1766FromLcid(uint32 Locale, out BSTR pbstrRfc1766) mut => VT.GetRfc1766FromLcid(ref this, Locale, out pbstrRfc1766);
		public HRESULT GetLcidFromRfc1766(out uint32 pLocale, BSTR bstrRfc1766) mut => VT.GetLcidFromRfc1766(ref this, out pLocale, bstrRfc1766);
		public HRESULT EnumRfc1766(uint16 LangId, out IEnumRfc1766* ppEnumRfc1766) mut => VT.EnumRfc1766(ref this, LangId, out ppEnumRfc1766);
		public HRESULT GetRfc1766Info(uint32 Locale, uint16 LangId, out RFC1766INFO pRfc1766Info) mut => VT.GetRfc1766Info(ref this, Locale, LangId, out pRfc1766Info);
		public HRESULT CreateConvertCharset(uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty, out IMLangConvertCharset* ppMLangConvertCharset) mut => VT.CreateConvertCharset(ref this, uiSrcCodePage, uiDstCodePage, dwProperty, out ppMLangConvertCharset);
		public HRESULT ConvertStringInIStream(uint32* pdwMode, uint32 dwFlag, PWSTR lpFallBack, uint32 dwSrcEncoding, uint32 dwDstEncoding, ref IStream pstmIn, ref IStream pstmOut) mut => VT.ConvertStringInIStream(ref this, pdwMode, dwFlag, lpFallBack, dwSrcEncoding, dwDstEncoding, ref pstmIn, ref pstmOut);
		public HRESULT ConvertStringToUnicodeEx(uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize, uint32 dwFlag, PWSTR lpFallBack) mut => VT.ConvertStringToUnicodeEx(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize, dwFlag, lpFallBack);
		public HRESULT ConvertStringFromUnicodeEx(uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize, uint32 dwFlag, PWSTR lpFallBack) mut => VT.ConvertStringFromUnicodeEx(ref this, pdwMode, dwEncoding, pSrcStr, pcSrcSize, pDstStr, pcDstSize, dwFlag, lpFallBack);
		public HRESULT DetectCodepageInIStream(uint32 dwFlag, uint32 dwPrefWinCodePage, ref IStream pstmIn, out DetectEncodingInfo lpEncoding, out int32 pnScores) mut => VT.DetectCodepageInIStream(ref this, dwFlag, dwPrefWinCodePage, ref pstmIn, out lpEncoding, out pnScores);
		public HRESULT DetectInputCodepage(uint32 dwFlag, uint32 dwPrefWinCodePage, PSTR pSrcStr, out int32 pcSrcSize, out DetectEncodingInfo lpEncoding, out int32 pnScores) mut => VT.DetectInputCodepage(ref this, dwFlag, dwPrefWinCodePage, pSrcStr, out pcSrcSize, out lpEncoding, out pnScores);
		public HRESULT ValidateCodePage(uint32 uiCodePage, HWND hwnd) mut => VT.ValidateCodePage(ref this, uiCodePage, hwnd);
		public HRESULT GetCodePageDescription(uint32 uiCodePage, uint32 lcid, char16* lpWideCharStr, int32 cchWideChar) mut => VT.GetCodePageDescription(ref this, uiCodePage, lcid, lpWideCharStr, cchWideChar);
		public HRESULT IsCodePageInstallable(uint32 uiCodePage) mut => VT.IsCodePageInstallable(ref this, uiCodePage);
		public HRESULT SetMimeDBSource(MIMECONTF dwSource) mut => VT.SetMimeDBSource(ref this, dwSource);
		public HRESULT GetNumberOfScripts(out uint32 pnScripts) mut => VT.GetNumberOfScripts(ref this, out pnScripts);
		public HRESULT EnumScripts(uint32 dwFlags, uint16 LangId, out IEnumScript* ppEnumScript) mut => VT.EnumScripts(ref this, dwFlags, LangId, out ppEnumScript);
		public HRESULT ValidateCodePageEx(uint32 uiCodePage, HWND hwnd, uint32 dwfIODControl) mut => VT.ValidateCodePageEx(ref this, uiCodePage, hwnd, dwfIODControl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, out uint32 pcCodePage) GetNumberOfCodePageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage, uint16 LangId, out MIMECPINFO pCodePageInfo) GetCodePageInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage, out uint32 puiFamilyCodePage) GetFamilyCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 grfFlags, uint16 LangId, out IEnumCodePage* ppEnumCodePage) EnumCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, BSTR Charset, out MIMECSETINFO pCharsetInfo) GetCharsetInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 dwSrcEncoding, uint32 dwDstEncoding) IsConvertible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwSrcEncoding, uint32 dwDstEncoding, uint8* pSrcStr, uint32* pcSrcSize, uint8* pDstStr, uint32* pcDstSize) ConvertString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize) ConvertStringToUnicode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize) ConvertStringFromUnicode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self) ConvertStringReset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 Locale, out BSTR pbstrRfc1766) GetRfc1766FromLcid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, out uint32 pLocale, BSTR bstrRfc1766) GetLcidFromRfc1766;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint16 LangId, out IEnumRfc1766* ppEnumRfc1766) EnumRfc1766;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 Locale, uint16 LangId, out RFC1766INFO pRfc1766Info) GetRfc1766Info;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiSrcCodePage, uint32 uiDstCodePage, uint32 dwProperty, out IMLangConvertCharset* ppMLangConvertCharset) CreateConvertCharset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwFlag, PWSTR lpFallBack, uint32 dwSrcEncoding, uint32 dwDstEncoding, ref IStream pstmIn, ref IStream pstmOut) ConvertStringInIStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwEncoding, PSTR pSrcStr, uint32* pcSrcSize, char16* pDstStr, uint32* pcDstSize, uint32 dwFlag, PWSTR lpFallBack) ConvertStringToUnicodeEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32* pdwMode, uint32 dwEncoding, char16* pSrcStr, uint32* pcSrcSize, PSTR pDstStr, uint32* pcDstSize, uint32 dwFlag, PWSTR lpFallBack) ConvertStringFromUnicodeEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 dwFlag, uint32 dwPrefWinCodePage, ref IStream pstmIn, out DetectEncodingInfo lpEncoding, out int32 pnScores) DetectCodepageInIStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 dwFlag, uint32 dwPrefWinCodePage, PSTR pSrcStr, out int32 pcSrcSize, out DetectEncodingInfo lpEncoding, out int32 pnScores) DetectInputCodepage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage, HWND hwnd) ValidateCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage, uint32 lcid, char16* lpWideCharStr, int32 cchWideChar) GetCodePageDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage) IsCodePageInstallable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, MIMECONTF dwSource) SetMimeDBSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, out uint32 pnScripts) GetNumberOfScripts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 dwFlags, uint16 LangId, out IEnumScript* ppEnumScript) EnumScripts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage2 self, uint32 uiCodePage, HWND hwnd, uint32 dwfIODControl) ValidateCodePageEx;
		}
	}
	[CRepr]
	public struct IMLangCodePages : IUnknown
	{
		public const new Guid IID = .(0x359f3443, 0xbd4a, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCharCodePages(char16 chSrc, out uint32 pdwCodePages) mut => VT.GetCharCodePages(ref this, chSrc, out pdwCodePages);
		public HRESULT GetStrCodePages(char16* pszSrc, int32 cchSrc, uint32 dwPriorityCodePages, uint32* pdwCodePages, int32* pcchCodePages) mut => VT.GetStrCodePages(ref this, pszSrc, cchSrc, dwPriorityCodePages, pdwCodePages, pcchCodePages);
		public HRESULT CodePageToCodePages(uint32 uCodePage, out uint32 pdwCodePages) mut => VT.CodePageToCodePages(ref this, uCodePage, out pdwCodePages);
		public HRESULT CodePagesToCodePage(uint32 dwCodePages, uint32 uDefaultCodePage, out uint32 puCodePage) mut => VT.CodePagesToCodePage(ref this, dwCodePages, uDefaultCodePage, out puCodePage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangCodePages self, char16 chSrc, out uint32 pdwCodePages) GetCharCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangCodePages self, char16* pszSrc, int32 cchSrc, uint32 dwPriorityCodePages, uint32* pdwCodePages, int32* pcchCodePages) GetStrCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangCodePages self, uint32 uCodePage, out uint32 pdwCodePages) CodePageToCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangCodePages self, uint32 dwCodePages, uint32 uDefaultCodePage, out uint32 puCodePage) CodePagesToCodePage;
		}
	}
	[CRepr]
	public struct IMLangFontLink : IMLangCodePages
	{
		public const new Guid IID = .(0x359f3441, 0xbd4a, 0x11d0, 0xb1, 0x88, 0x00, 0xaa, 0x00, 0x38, 0xc9, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontCodePages(HDC hDC, HFONT hFont, uint32* pdwCodePages) mut => VT.GetFontCodePages(ref this, hDC, hFont, pdwCodePages);
		public HRESULT MapFont(HDC hDC, uint32 dwCodePages, HFONT hSrcFont, HFONT* phDestFont) mut => VT.MapFont(ref this, hDC, dwCodePages, hSrcFont, phDestFont);
		public HRESULT ReleaseFont(HFONT hFont) mut => VT.ReleaseFont(ref this, hFont);
		public HRESULT ResetFontMapping() mut => VT.ResetFontMapping(ref this);

		[CRepr]
		public struct VTable : IMLangCodePages.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink self, HDC hDC, HFONT hFont, uint32* pdwCodePages) GetFontCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink self, HDC hDC, uint32 dwCodePages, HFONT hSrcFont, HFONT* phDestFont) MapFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink self, HFONT hFont) ReleaseFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink self) ResetFontMapping;
		}
	}
	[CRepr]
	public struct IMLangFontLink2 : IMLangCodePages
	{
		public const new Guid IID = .(0xdccfc162, 0x2b38, 0x11d2, 0xb7, 0xec, 0x00, 0xc0, 0x4f, 0x8f, 0x5d, 0x9a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFontCodePages(HDC hDC, HFONT hFont, uint32* pdwCodePages) mut => VT.GetFontCodePages(ref this, hDC, hFont, pdwCodePages);
		public HRESULT ReleaseFont(HFONT hFont) mut => VT.ReleaseFont(ref this, hFont);
		public HRESULT ResetFontMapping() mut => VT.ResetFontMapping(ref this);
		public HRESULT MapFont(HDC hDC, uint32 dwCodePages, char16 chSrc, HFONT* pFont) mut => VT.MapFont(ref this, hDC, dwCodePages, chSrc, pFont);
		public HRESULT GetFontUnicodeRanges(HDC hDC, ref uint32 puiRanges, UNICODERANGE* pUranges) mut => VT.GetFontUnicodeRanges(ref this, hDC, ref puiRanges, pUranges);
		public HRESULT GetScriptFontInfo(uint8 sid, uint32 dwFlags, out uint32 puiFonts, tagSCRIPFONTINFO* pScriptFont) mut => VT.GetScriptFontInfo(ref this, sid, dwFlags, out puiFonts, pScriptFont);
		public HRESULT CodePageToScriptID(uint32 uiCodePage, out uint8 pSid) mut => VT.CodePageToScriptID(ref this, uiCodePage, out pSid);

		[CRepr]
		public struct VTable : IMLangCodePages.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, HDC hDC, HFONT hFont, uint32* pdwCodePages) GetFontCodePages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, HFONT hFont) ReleaseFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self) ResetFontMapping;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, HDC hDC, uint32 dwCodePages, char16 chSrc, HFONT* pFont) MapFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, HDC hDC, ref uint32 puiRanges, UNICODERANGE* pUranges) GetFontUnicodeRanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, uint8 sid, uint32 dwFlags, out uint32 puiFonts, tagSCRIPFONTINFO* pScriptFont) GetScriptFontInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLangFontLink2 self, uint32 uiCodePage, out uint8 pSid) CodePageToScriptID;
		}
	}
	[CRepr]
	public struct IMultiLanguage3 : IMultiLanguage2
	{
		public const new Guid IID = .(0x4e5868ab, 0xb157, 0x4623, 0x9a, 0xcc, 0x6a, 0x1d, 0x9c, 0xae, 0xbe, 0x04);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DetectOutboundCodePage(uint32 dwFlags, char16* lpWideCharStr, uint32 cchWideChar, uint32* puiPreferredCodePages, uint32 nPreferredCodePages, uint32* puiDetectedCodePages, out uint32 pnDetectedCodePages, PWSTR lpSpecialChar) mut => VT.DetectOutboundCodePage(ref this, dwFlags, lpWideCharStr, cchWideChar, puiPreferredCodePages, nPreferredCodePages, puiDetectedCodePages, out pnDetectedCodePages, lpSpecialChar);
		public HRESULT DetectOutboundCodePageInIStream(uint32 dwFlags, ref IStream pStrIn, uint32* puiPreferredCodePages, uint32 nPreferredCodePages, uint32* puiDetectedCodePages, out uint32 pnDetectedCodePages, PWSTR lpSpecialChar) mut => VT.DetectOutboundCodePageInIStream(ref this, dwFlags, ref pStrIn, puiPreferredCodePages, nPreferredCodePages, puiDetectedCodePages, out pnDetectedCodePages, lpSpecialChar);

		[CRepr]
		public struct VTable : IMultiLanguage2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage3 self, uint32 dwFlags, char16* lpWideCharStr, uint32 cchWideChar, uint32* puiPreferredCodePages, uint32 nPreferredCodePages, uint32* puiDetectedCodePages, out uint32 pnDetectedCodePages, PWSTR lpSpecialChar) DetectOutboundCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMultiLanguage3 self, uint32 dwFlags, ref IStream pStrIn, uint32* puiPreferredCodePages, uint32 nPreferredCodePages, uint32* puiDetectedCodePages, out uint32 pnDetectedCodePages, PWSTR lpSpecialChar) DetectOutboundCodePageInIStream;
		}
	}
	#endregion
	
	#region Functions
	[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetTextCharset(HDC hdc);
	[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetTextCharsetInfo(HDC hdc, FONTSIGNATURE* lpSig, uint32 dwFlags);
	[Import("gdi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL TranslateCharsetInfo(out uint32 lpSrc, out CHARSETINFO lpCs, TRANSLATE_CHARSET_INFO_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDateFormatA(uint32 Locale, uint32 dwFlags, SYSTEMTIME* lpDate, PSTR lpFormat, uint8* lpDateStr, int32 cchDate);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDateFormatW(uint32 Locale, uint32 dwFlags, SYSTEMTIME* lpDate, PWSTR lpFormat, char16* lpDateStr, int32 cchDate);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetTimeFormatA(uint32 Locale, uint32 dwFlags, SYSTEMTIME* lpTime, PSTR lpFormat, uint8* lpTimeStr, int32 cchTime);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetTimeFormatW(uint32 Locale, uint32 dwFlags, SYSTEMTIME* lpTime, PWSTR lpFormat, char16* lpTimeStr, int32 cchTime);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetTimeFormatEx(PWSTR lpLocaleName, TIME_FORMAT_FLAGS dwFlags, SYSTEMTIME* lpTime, PWSTR lpFormat, char16* lpTimeStr, int32 cchTime);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDateFormatEx(PWSTR lpLocaleName, ENUM_DATE_FORMATS_FLAGS dwFlags, SYSTEMTIME* lpDate, PWSTR lpFormat, char16* lpDateStr, int32 cchDate, PWSTR lpCalendar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDurationFormatEx(PWSTR lpLocaleName, uint32 dwFlags, SYSTEMTIME* lpDuration, uint64 ullDuration, PWSTR lpFormat, char16* lpDurationStr, int32 cchDuration);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CompareStringEx(PWSTR lpLocaleName, COMPARE_STRING_FLAGS dwCmpFlags, char16* lpString1, int32 cchCount1, char16* lpString2, int32 cchCount2, out NLSVERSIONINFO lpVersionInformation, void* lpReserved, LPARAM lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CompareStringOrdinal(char16* lpString1, int32 cchCount1, char16* lpString2, int32 cchCount2, BOOL bIgnoreCase);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CompareStringW(uint32 Locale, uint32 dwCmpFlags, char16* lpString1, int32 cchCount1, char16* lpString2, int32 cchCount2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 FoldStringW(FOLD_STRING_MAP_FLAGS dwMapFlags, char16* lpSrcStr, int32 cchSrc, char16* lpDestStr, int32 cchDest);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetStringTypeExW(uint32 Locale, uint32 dwInfoType, char16* lpSrcStr, int32 cchSrc, uint16* lpCharType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetStringTypeW(uint32 dwInfoType, char16* lpSrcStr, int32 cchSrc, out uint16 lpCharType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 MultiByteToWideChar(uint32 CodePage, MULTI_BYTE_TO_WIDE_CHAR_FLAGS dwFlags, uint8* lpMultiByteStr, int32 cbMultiByte, char16* lpWideCharStr, int32 cchWideChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 WideCharToMultiByte(uint32 CodePage, uint32 dwFlags, char16* lpWideCharStr, int32 cchWideChar, PSTR lpMultiByteStr, int32 cbMultiByte, PSTR lpDefaultChar, int32* lpUsedDefaultChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsValidCodePage(uint32 CodePage);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetACP();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetOEMCP();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCPInfo(uint32 CodePage, out CPINFO lpCPInfo);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCPInfoExA(uint32 CodePage, uint32 dwFlags, out CPINFOEXA lpCPInfoEx);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetCPInfoExW(uint32 CodePage, uint32 dwFlags, out CPINFOEXW lpCPInfoEx);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 CompareStringA(uint32 Locale, uint32 dwCmpFlags, int8* lpString1, int32 cchCount1, int8* lpString2, int32 cchCount2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 FindNLSString(uint32 Locale, uint32 dwFindNLSStringFlags, char16* lpStringSource, int32 cchSource, char16* lpStringValue, int32 cchValue, int32* pcchFound);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LCMapStringW(uint32 Locale, uint32 dwMapFlags, char16* lpSrcStr, int32 cchSrc, PWSTR lpDestStr, int32 cchDest);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LCMapStringA(uint32 Locale, uint32 dwMapFlags, uint8* lpSrcStr, int32 cchSrc, PSTR lpDestStr, int32 cchDest);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetLocaleInfoW(uint32 Locale, uint32 LCType, char16* lpLCData, int32 cchData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetLocaleInfoA(uint32 Locale, uint32 LCType, uint8* lpLCData, int32 cchData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetLocaleInfoA(uint32 Locale, uint32 LCType, PSTR lpLCData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetLocaleInfoW(uint32 Locale, uint32 LCType, PWSTR lpLCData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCalendarInfoA(uint32 Locale, uint32 Calendar, uint32 CalType, uint8* lpCalData, int32 cchData, uint32* lpValue);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCalendarInfoW(uint32 Locale, uint32 Calendar, uint32 CalType, char16* lpCalData, int32 cchData, uint32* lpValue);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetCalendarInfoA(uint32 Locale, uint32 Calendar, uint32 CalType, PSTR lpCalData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetCalendarInfoW(uint32 Locale, uint32 Calendar, uint32 CalType, PWSTR lpCalData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsDBCSLeadByte(uint8 TestChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsDBCSLeadByteEx(uint32 CodePage, uint8 TestChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 LocaleNameToLCID(PWSTR lpName, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LCIDToLocaleName(uint32 Locale, char16* lpName, int32 cchName, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetDurationFormat(uint32 Locale, uint32 dwFlags, SYSTEMTIME* lpDuration, uint64 ullDuration, PWSTR lpFormat, char16* lpDurationStr, int32 cchDuration);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetNumberFormatA(uint32 Locale, uint32 dwFlags, PSTR lpValue, NUMBERFMTA* lpFormat, uint8* lpNumberStr, int32 cchNumber);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetNumberFormatW(uint32 Locale, uint32 dwFlags, PWSTR lpValue, NUMBERFMTW* lpFormat, char16* lpNumberStr, int32 cchNumber);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCurrencyFormatA(uint32 Locale, uint32 dwFlags, PSTR lpValue, CURRENCYFMTA* lpFormat, uint8* lpCurrencyStr, int32 cchCurrency);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCurrencyFormatW(uint32 Locale, uint32 dwFlags, PWSTR lpValue, CURRENCYFMTW* lpFormat, char16* lpCurrencyStr, int32 cchCurrency);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumCalendarInfoA(CALINFO_ENUMPROCA lpCalInfoEnumProc, uint32 Locale, uint32 Calendar, uint32 CalType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumCalendarInfoW(CALINFO_ENUMPROCW lpCalInfoEnumProc, uint32 Locale, uint32 Calendar, uint32 CalType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumCalendarInfoExA(CALINFO_ENUMPROCEXA lpCalInfoEnumProcEx, uint32 Locale, uint32 Calendar, uint32 CalType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumCalendarInfoExW(CALINFO_ENUMPROCEXW lpCalInfoEnumProcEx, uint32 Locale, uint32 Calendar, uint32 CalType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumTimeFormatsA(TIMEFMT_ENUMPROCA lpTimeFmtEnumProc, uint32 Locale, TIME_FORMAT_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumTimeFormatsW(TIMEFMT_ENUMPROCW lpTimeFmtEnumProc, uint32 Locale, TIME_FORMAT_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumDateFormatsA(DATEFMT_ENUMPROCA lpDateFmtEnumProc, uint32 Locale, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumDateFormatsW(DATEFMT_ENUMPROCW lpDateFmtEnumProc, uint32 Locale, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumDateFormatsExA(DATEFMT_ENUMPROCEXA lpDateFmtEnumProcEx, uint32 Locale, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumDateFormatsExW(DATEFMT_ENUMPROCEXW lpDateFmtEnumProcEx, uint32 Locale, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsValidLanguageGroup(uint32 LanguageGroup, ENUM_SYSTEM_LANGUAGE_GROUPS_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetNLSVersion(uint32 Function, uint32 Locale, out NLSVERSIONINFO lpVersionInformation);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsValidLocale(uint32 Locale, IS_VALID_LOCALE_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetGeoInfoA(int32 Location, uint32 GeoType, uint8* lpGeoData, int32 cchData, uint16 LangId);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetGeoInfoW(int32 Location, uint32 GeoType, char16* lpGeoData, int32 cchData, uint16 LangId);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetGeoInfoEx(PWSTR location, uint32 geoType, char16* geoData, int32 geoDataCount);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemGeoID(uint32 GeoClass, int32 ParentGeoId, GEO_ENUMPROC lpGeoEnumProc);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemGeoNames(uint32 geoClass, GEO_ENUMNAMEPROC geoEnumProc, LPARAM data);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetUserGeoID(uint32 GeoClass);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetUserDefaultGeoName(char16* geoName, int32 geoNameCount);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetUserGeoID(int32 GeoId);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetUserGeoName(PWSTR geoName);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ConvertDefaultLocale(uint32 Locale);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetSystemDefaultUILanguage();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetThreadLocale();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetThreadLocale(uint32 Locale);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetUserDefaultUILanguage();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetUserDefaultLangID();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetSystemDefaultLangID();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetSystemDefaultLCID();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetUserDefaultLCID();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 SetThreadUILanguage(uint16 LangId);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 GetThreadUILanguage();
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetProcessPreferredUILanguages(uint32 dwFlags, out uint32 pulNumLanguages, char16* pwszLanguagesBuffer, out uint32 pcchLanguagesBuffer);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetProcessPreferredUILanguages(uint32 dwFlags, PWSTR pwszLanguagesBuffer, uint32* pulNumLanguages);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetUserPreferredUILanguages(uint32 dwFlags, out uint32 pulNumLanguages, char16* pwszLanguagesBuffer, out uint32 pcchLanguagesBuffer);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetSystemPreferredUILanguages(uint32 dwFlags, out uint32 pulNumLanguages, char16* pwszLanguagesBuffer, out uint32 pcchLanguagesBuffer);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetThreadPreferredUILanguages(uint32 dwFlags, out uint32 pulNumLanguages, char16* pwszLanguagesBuffer, out uint32 pcchLanguagesBuffer);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetThreadPreferredUILanguages(uint32 dwFlags, PWSTR pwszLanguagesBuffer, uint32* pulNumLanguages);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetFileMUIInfo(uint32 dwFlags, PWSTR pcwszFilePath, FILEMUIINFO* pFileMUIInfo, out uint32 pcbFileMUIInfo);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetFileMUIPath(uint32 dwFlags, PWSTR pcwszFilePath, char16* pwszLanguage, out uint32 pcchLanguage, char16* pwszFileMUIPath, out uint32 pcchFileMUIPath, out uint64 pululEnumerator);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetUILanguageInfo(uint32 dwFlags, PWSTR pwmszLanguage, char16* pwszFallbackLanguages, uint32* pcchFallbackLanguages, out uint32 pAttributes);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SetThreadPreferredUILanguages2(uint32 flags, PWSTR languages, uint32* numLanguagesSet, HSAVEDUILANGUAGES* snapshot);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void RestoreThreadPreferredUILanguages(HSAVEDUILANGUAGES snapshot);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL NotifyUILanguageChange(uint32 dwFlags, PWSTR pcwstrNewLanguage, PWSTR pcwstrPreviousLanguage, uint32 dwReserved, uint32* pdwStatusRtrn);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetStringTypeExA(uint32 Locale, uint32 dwInfoType, uint8* lpSrcStr, int32 cchSrc, uint16* lpCharType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetStringTypeA(uint32 Locale, uint32 dwInfoType, uint8* lpSrcStr, int32 cchSrc, out uint16 lpCharType);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 FoldStringA(FOLD_STRING_MAP_FLAGS dwMapFlags, uint8* lpSrcStr, int32 cchSrc, uint8* lpDestStr, int32 cchDest);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemLocalesA(LOCALE_ENUMPROCA lpLocaleEnumProc, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemLocalesW(LOCALE_ENUMPROCW lpLocaleEnumProc, uint32 dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemLanguageGroupsA(LANGUAGEGROUP_ENUMPROCA lpLanguageGroupEnumProc, ENUM_SYSTEM_LANGUAGE_GROUPS_FLAGS dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemLanguageGroupsW(LANGUAGEGROUP_ENUMPROCW lpLanguageGroupEnumProc, ENUM_SYSTEM_LANGUAGE_GROUPS_FLAGS dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumLanguageGroupLocalesA(LANGGROUPLOCALE_ENUMPROCA lpLangGroupLocaleEnumProc, uint32 LanguageGroup, uint32 dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumLanguageGroupLocalesW(LANGGROUPLOCALE_ENUMPROCW lpLangGroupLocaleEnumProc, uint32 LanguageGroup, uint32 dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumUILanguagesA(UILANGUAGE_ENUMPROCA lpUILanguageEnumProc, uint32 dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumUILanguagesW(UILANGUAGE_ENUMPROCW lpUILanguageEnumProc, uint32 dwFlags, int lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemCodePagesA(CODEPAGE_ENUMPROCA lpCodePageEnumProc, ENUM_SYSTEM_CODE_PAGES_FLAGS dwFlags);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemCodePagesW(CODEPAGE_ENUMPROCW lpCodePageEnumProc, ENUM_SYSTEM_CODE_PAGES_FLAGS dwFlags);
	[Import("normaliz.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 IdnToAscii(uint32 dwFlags, char16* lpUnicodeCharStr, int32 cchUnicodeChar, char16* lpASCIICharStr, int32 cchASCIIChar);
	[Import("normaliz.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 IdnToUnicode(uint32 dwFlags, char16* lpASCIICharStr, int32 cchASCIIChar, char16* lpUnicodeCharStr, int32 cchUnicodeChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 IdnToNameprepUnicode(uint32 dwFlags, char16* lpUnicodeCharStr, int32 cchUnicodeChar, char16* lpNameprepCharStr, int32 cchNameprepChar);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 NormalizeString(NORM_FORM NormForm, char16* lpSrcString, int32 cwSrcLength, char16* lpDstString, int32 cwDstLength);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsNormalizedString(NORM_FORM NormForm, char16* lpString, int32 cwLength);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL VerifyScripts(uint32 dwFlags, PWSTR lpLocaleScripts, int32 cchLocaleScripts, PWSTR lpTestScripts, int32 cchTestScripts);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetStringScripts(uint32 dwFlags, PWSTR lpString, int32 cchString, char16* lpScripts, int32 cchScripts);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetLocaleInfoEx(PWSTR lpLocaleName, uint32 LCType, char16* lpLCData, int32 cchData);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCalendarInfoEx(PWSTR lpLocaleName, uint32 Calendar, PWSTR lpReserved, uint32 CalType, char16* lpCalData, int32 cchData, uint32* lpValue);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetNumberFormatEx(PWSTR lpLocaleName, uint32 dwFlags, PWSTR lpValue, NUMBERFMTW* lpFormat, char16* lpNumberStr, int32 cchNumber);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetCurrencyFormatEx(PWSTR lpLocaleName, uint32 dwFlags, PWSTR lpValue, CURRENCYFMTW* lpFormat, char16* lpCurrencyStr, int32 cchCurrency);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetUserDefaultLocaleName(char16* lpLocaleName, int32 cchLocaleName);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetSystemDefaultLocaleName(char16* lpLocaleName, int32 cchLocaleName);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsNLSDefinedString(uint32 Function, uint32 dwFlags, ref NLSVERSIONINFO lpVersionInformation, char16* lpString, int32 cchStr);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetNLSVersionEx(uint32 @function, PWSTR lpLocaleName, out NLSVERSIONINFOEX lpVersionInformation);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 IsValidNLSVersion(uint32 @function, PWSTR lpLocaleName, ref NLSVERSIONINFOEX lpVersionInformation);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 FindNLSStringEx(PWSTR lpLocaleName, uint32 dwFindNLSStringFlags, char16* lpStringSource, int32 cchSource, char16* lpStringValue, int32 cchValue, int32* pcchFound, NLSVERSIONINFO* lpVersionInformation, void* lpReserved, LPARAM sortHandle);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 LCMapStringEx(PWSTR lpLocaleName, uint32 dwMapFlags, char16* lpSrcStr, int32 cchSrc, char16* lpDestStr, int32 cchDest, NLSVERSIONINFO* lpVersionInformation, void* lpReserved, LPARAM sortHandle);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsValidLocaleName(PWSTR lpLocaleName);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumCalendarInfoExEx(CALINFO_ENUMPROCEXEX pCalInfoEnumProcExEx, PWSTR lpLocaleName, uint32 Calendar, PWSTR lpReserved, uint32 CalType, LPARAM lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumDateFormatsExEx(DATEFMT_ENUMPROCEXEX lpDateFmtEnumProcExEx, PWSTR lpLocaleName, ENUM_DATE_FORMATS_FLAGS dwFlags, LPARAM lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumTimeFormatsEx(TIMEFMT_ENUMPROCEX lpTimeFmtEnumProcEx, PWSTR lpLocaleName, uint32 dwFlags, LPARAM lParam);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL EnumSystemLocalesEx(LOCALE_ENUMPROCEX lpLocaleEnumProcEx, uint32 dwFlags, LPARAM lParam, void* lpReserved);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ResolveLocaleName(PWSTR lpNameToResolve, char16* lpLocaleName, int32 cchLocaleName);
	[Import("elscore.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MappingGetServices(MAPPING_ENUM_OPTIONS* pOptions, out MAPPING_SERVICE_INFO* prgServices, out uint32 pdwServicesCount);
	[Import("elscore.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MappingFreeServices(ref MAPPING_SERVICE_INFO pServiceInfo);
	[Import("elscore.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MappingRecognizeText(ref MAPPING_SERVICE_INFO pServiceInfo, char16* pszText, uint32 dwLength, uint32 dwIndex, MAPPING_OPTIONS* pOptions, out MAPPING_PROPERTY_BAG pbag);
	[Import("elscore.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MappingDoAction(out MAPPING_PROPERTY_BAG pBag, uint32 dwRangeIndex, PWSTR pszActionId);
	[Import("elscore.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT MappingFreePropertyBag(ref MAPPING_PROPERTY_BAG pBag);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptFreeCache(void** psc);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptItemize(char16* pwcInChars, int32 cInChars, int32 cMaxItems, SCRIPT_CONTROL* psControl, SCRIPT_STATE* psState, SCRIPT_ITEM* pItems, out int32 pcItems);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptLayout(int32 cRuns, uint8* pbLevel, int32* piVisualToLogical, int32* piLogicalToVisual);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptShape(HDC hdc, void** psc, char16* pwcChars, int32 cChars, int32 cMaxGlyphs, out SCRIPT_ANALYSIS psa, uint16* pwOutGlyphs, out uint16 pwLogClust, SCRIPT_VISATTR* psva, out int32 pcGlyphs);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptPlace(HDC hdc, void** psc, uint16* pwGlyphs, int32 cGlyphs, SCRIPT_VISATTR* psva, out SCRIPT_ANALYSIS psa, out int32 piAdvance, GOFFSET* pGoffset, out ABC pABC);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptTextOut(HDC hdc, void** psc, int32 x, int32 y, uint32 fuOptions, RECT* lprc, in SCRIPT_ANALYSIS psa, PWSTR pwcReserved, int32 iReserved, uint16* pwGlyphs, int32 cGlyphs, int32* piAdvance, int32* piJustify, GOFFSET* pGoffset);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptJustify(SCRIPT_VISATTR* psva, int32* piAdvance, int32 cGlyphs, int32 iDx, int32 iMinKashida, out int32 piJustify);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptBreak(char16* pwcChars, int32 cChars, in SCRIPT_ANALYSIS psa, out SCRIPT_LOGATTR psla);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptCPtoX(int32 iCP, BOOL fTrailing, int32 cChars, int32 cGlyphs, uint16* pwLogClust, SCRIPT_VISATTR* psva, int32* piAdvance, in SCRIPT_ANALYSIS psa, out int32 piX);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptXtoCP(int32 iX, int32 cChars, int32 cGlyphs, uint16* pwLogClust, SCRIPT_VISATTR* psva, int32* piAdvance, in SCRIPT_ANALYSIS psa, out int32 piCP, out int32 piTrailing);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetLogicalWidths(in SCRIPT_ANALYSIS psa, int32 cChars, int32 cGlyphs, int32* piGlyphWidth, uint16* pwLogClust, SCRIPT_VISATTR* psva, int32* piDx);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptApplyLogicalWidth(int32* piDx, int32 cChars, int32 cGlyphs, uint16* pwLogClust, SCRIPT_VISATTR* psva, int32* piAdvance, in SCRIPT_ANALYSIS psa, ABC* pABC, out int32 piJustify);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetCMap(HDC hdc, void** psc, char16* pwcInChars, int32 cChars, uint32 dwFlags, uint16* pwOutGlyphs);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetGlyphABCWidth(HDC hdc, void** psc, uint16 wGlyph, out ABC pABC);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetProperties(out SCRIPT_PROPERTIES** ppSp, out int32 piNumScripts);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetFontProperties(HDC hdc, void** psc, out SCRIPT_FONTPROPERTIES sfp);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptCacheGetHeight(HDC hdc, void** psc, out int32 tmHeight);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringAnalyse(HDC hdc, void* pString, int32 cString, int32 cGlyphs, int32 iCharset, uint32 dwFlags, int32 iReqWidth, SCRIPT_CONTROL* psControl, SCRIPT_STATE* psState, int32* piDx, SCRIPT_TABDEF* pTabdef, in uint8 pbInClass, void** pssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringFree(void** pssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern SIZE* ScriptString_pSize(void* ssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32* ScriptString_pcOutChars(void* ssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern SCRIPT_LOGATTR* ScriptString_pLogAttr(void* ssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringGetOrder(void* ssa, out uint32 puOrder);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringCPtoX(void* ssa, int32 icp, BOOL fTrailing, out int32 pX);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringXtoCP(void* ssa, int32 iX, out int32 piCh, out int32 piTrailing);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringGetLogicalWidths(void* ssa, out int32 piDx);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringValidate(void* ssa);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptStringOut(void* ssa, int32 iX, int32 iY, ETO_OPTIONS uOptions, RECT* prc, int32 iMinSel, int32 iMaxSel, BOOL fDisabled);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptIsComplex(char16* pwcInChars, int32 cInChars, SCRIPT_IS_COMPLEX_FLAGS dwFlags);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptRecordDigitSubstitution(uint32 Locale, out SCRIPT_DIGITSUBSTITUTE psds);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptApplyDigitSubstitution(in SCRIPT_DIGITSUBSTITUTE psds, out SCRIPT_CONTROL psc, out SCRIPT_STATE pss);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptShapeOpenType(HDC hdc, void** psc, out SCRIPT_ANALYSIS psa, uint32 tagScript, uint32 tagLangSys, int32* rcRangeChars, textrange_properties** rpRangeProperties, int32 cRanges, char16* pwcChars, int32 cChars, int32 cMaxGlyphs, out uint16 pwLogClust, out script_charprop pCharProps, uint16* pwOutGlyphs, script_glyphprop* pOutGlyphProps, out int32 pcGlyphs);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptPlaceOpenType(HDC hdc, void** psc, out SCRIPT_ANALYSIS psa, uint32 tagScript, uint32 tagLangSys, int32* rcRangeChars, textrange_properties** rpRangeProperties, int32 cRanges, char16* pwcChars, uint16* pwLogClust, script_charprop* pCharProps, int32 cChars, uint16* pwGlyphs, script_glyphprop* pGlyphProps, int32 cGlyphs, out int32 piAdvance, out GOFFSET pGoffset, ABC* pABC);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptItemizeOpenType(char16* pwcInChars, int32 cInChars, int32 cMaxItems, SCRIPT_CONTROL* psControl, SCRIPT_STATE* psState, SCRIPT_ITEM* pItems, uint32* pScriptTags, out int32 pcItems);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetFontScriptTags(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, int32 cMaxTags, uint32* pScriptTags, out int32 pcTags);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetFontLanguageTags(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, uint32 tagScript, int32 cMaxTags, uint32* pLangsysTags, out int32 pcTags);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetFontFeatureTags(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, uint32 tagScript, uint32 tagLangSys, int32 cMaxTags, uint32* pFeatureTags, out int32 pcTags);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptGetFontAlternateGlyphs(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, uint32 tagScript, uint32 tagLangSys, uint32 tagFeature, uint16 wGlyphId, int32 cMaxAlternates, uint16* pAlternateGlyphs, out int32 pcAlternates);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptSubstituteSingleGlyph(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, uint32 tagScript, uint32 tagLangSys, uint32 tagFeature, int32 lParameter, uint16 wGlyphId, out uint16 pwOutGlyphId);
	[Import("usp10.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ScriptPositionSingleGlyph(HDC hdc, void** psc, SCRIPT_ANALYSIS* psa, uint32 tagScript, uint32 tagLangSys, uint32 tagFeature, int32 lParameter, uint16 wGlyphId, int32 iAdvance, GOFFSET GOffset, out int32 piOutAdvance, out GOFFSET pOutGoffset);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utf8_nextCharSafeBody(in uint8 s, out int32 pi, int32 length, int32 c, int8 strict);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utf8_appendCharSafeBody(out uint8 s, int32 i, int32 length, int32 c, out int8 pIsError);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utf8_prevCharSafeBody(in uint8 s, int32 start, out int32 pi, int32 c, int8 strict);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utf8_back1SafeBody(in uint8 s, int32 start, int32 i);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_versionFromString(out uint8 versionArray, PSTR versionString);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_versionFromUString(out uint8 versionArray, in uint16 versionString);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_versionToString(in uint8 versionArray, PSTR versionString);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_getVersion(out uint8 versionArray);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_errorName(UErrorCode code);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrace_setLevel(int32 traceLevel);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utrace_getLevel();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrace_setFunctions(void* context, UTraceEntry e, UTraceExit x, UTraceData d);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrace_getFunctions(void** context, out UTraceEntry e, out UTraceExit x, out UTraceData d);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utrace_vformat(PSTR outBuf, int32 capacity, int32 indent, PSTR fmt, out int8 args);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utrace_format(PSTR outBuf, int32 capacity, int32 indent, PSTR fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR utrace_functionName(int32 fnNumber);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_shapeArabic(in uint16 source, int32 sourceLength, out uint16 dest, int32 destSize, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uscript_getCode(PSTR nameOrAbbrOrLocale, out UScriptCode fillIn, int32 capacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uscript_getName(UScriptCode scriptCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uscript_getShortName(UScriptCode scriptCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UScriptCode uscript_getScript(int32 codepoint, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uscript_hasScript(int32 c, UScriptCode sc);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uscript_getScriptExtensions(int32 c, out UScriptCode scripts, int32 capacity, out UErrorCode errorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uscript_getSampleString(UScriptCode script, out uint16 dest, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UScriptUsage uscript_getUsage(UScriptCode script);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uscript_isRightToLeft(UScriptCode script);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uscript_breaksBetweenLetters(UScriptCode script);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uscript_isCased(UScriptCode script);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uiter_current32(out UCharIterator iter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uiter_next32(out UCharIterator iter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uiter_previous32(out UCharIterator iter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 uiter_getState(in UCharIterator iter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uiter_setState(out UCharIterator iter, uint32 state, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uiter_setString(out UCharIterator iter, in uint16 s, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uiter_setUTF16BE(out UCharIterator iter, PSTR s, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uiter_setUTF8(out UCharIterator iter, PSTR s, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uenum_close(out UEnumeration en);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uenum_count(out UEnumeration en, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* uenum_unext(out UEnumeration en, out int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uenum_next(out UEnumeration en, out int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uenum_reset(out UEnumeration en, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uenum_openUCharStringsEnumeration(in uint16* strings, int32 count, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uenum_openCharStringsEnumeration(in int8* strings, int32 count, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_getDefault();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uloc_setDefault(PSTR localeID, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getLanguage(PSTR localeID, PSTR language, int32 languageCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getScript(PSTR localeID, PSTR script, int32 scriptCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getCountry(PSTR localeID, PSTR country, int32 countryCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getVariant(PSTR localeID, PSTR variant, int32 variantCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getName(PSTR localeID, PSTR name, int32 nameCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_canonicalize(PSTR localeID, PSTR name, int32 nameCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_getISO3Language(PSTR localeID);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_getISO3Country(PSTR localeID);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 uloc_getLCID(PSTR localeID);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayLanguage(PSTR locale, PSTR displayLocale, out uint16 language, int32 languageCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayScript(PSTR locale, PSTR displayLocale, out uint16 script, int32 scriptCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayCountry(PSTR locale, PSTR displayLocale, out uint16 country, int32 countryCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayVariant(PSTR locale, PSTR displayLocale, out uint16 variant, int32 variantCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayKeyword(PSTR keyword, PSTR displayLocale, out uint16 dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayKeywordValue(PSTR locale, PSTR keyword, PSTR displayLocale, out uint16 dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getDisplayName(PSTR localeID, PSTR inLocaleID, out uint16 result, int32 maxResultSize, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_getAvailable(int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uloc_openAvailableByType(ULocAvailableType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8** uloc_getISOLanguages();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8** uloc_getISOCountries();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getParent(PSTR localeID, PSTR parent, int32 parentCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getBaseName(PSTR localeID, PSTR name, int32 nameCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uloc_openKeywords(PSTR localeID, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getKeywordValue(PSTR localeID, PSTR keywordName, PSTR buffer, int32 bufferCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_setKeywordValue(PSTR keywordName, PSTR keywordValue, PSTR buffer, int32 bufferCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uloc_isRightToLeft(PSTR locale);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern ULayoutType uloc_getCharacterOrientation(PSTR localeId, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern ULayoutType uloc_getLineOrientation(PSTR localeId, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_acceptLanguageFromHTTP(PSTR result, int32 resultAvailable, out UAcceptResult outResult, PSTR httpAcceptLanguage, out UEnumeration availableLocales, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_acceptLanguage(PSTR result, int32 resultAvailable, out UAcceptResult outResult, in int8* acceptList, int32 acceptListCount, out UEnumeration availableLocales, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_getLocaleForLCID(uint32 hostID, PSTR locale, int32 localeCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_addLikelySubtags(PSTR localeID, PSTR maximizedLocaleID, int32 maximizedLocaleIDCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_minimizeSubtags(PSTR localeID, PSTR minimizedLocaleID, int32 minimizedLocaleIDCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_forLanguageTag(PSTR langtag, PSTR localeID, int32 localeIDCapacity, out int32 parsedLength, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uloc_toLanguageTag(PSTR localeID, PSTR langtag, int32 langtagCapacity, int8 strict, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_toUnicodeLocaleKey(PSTR keyword);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_toUnicodeLocaleType(PSTR keyword, PSTR value);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_toLegacyKey(PSTR keyword);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uloc_toLegacyType(PSTR keyword, PSTR value);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_open(PSTR packageName, PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_openDirect(PSTR packageName, PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_openU(in uint16 packageName, PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ures_close(out UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ures_getVersion(in UResourceBundle resB, out uint8 versionInfo);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ures_getLocaleByType(in UResourceBundle resourceBundle, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ures_getString(in UResourceBundle resourceBundle, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ures_getUTF8String(in UResourceBundle resB, PSTR dest, out int32 length, int8 forceCopy, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* ures_getBinary(in UResourceBundle resourceBundle, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32* ures_getIntVector(in UResourceBundle resourceBundle, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ures_getUInt(in UResourceBundle resourceBundle, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ures_getInt(in UResourceBundle resourceBundle, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ures_getSize(in UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResType ures_getType(in UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ures_getKey(in UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ures_resetIterator(out UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ures_hasNext(in UResourceBundle resourceBundle);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_getNextResource(out UResourceBundle resourceBundle, out UResourceBundle fillIn, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ures_getNextString(out UResourceBundle resourceBundle, out int32 len, in int8* key, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_getByIndex(in UResourceBundle resourceBundle, int32 indexR, out UResourceBundle fillIn, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ures_getStringByIndex(in UResourceBundle resourceBundle, int32 indexS, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ures_getUTF8StringByIndex(in UResourceBundle resB, int32 stringIndex, PSTR dest, out int32 pLength, int8 forceCopy, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* ures_getByKey(in UResourceBundle resourceBundle, PSTR key, out UResourceBundle fillIn, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ures_getStringByKey(in UResourceBundle resB, PSTR key, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ures_getUTF8StringByKey(in UResourceBundle resB, PSTR key, PSTR dest, out int32 pLength, int8 forceCopy, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ures_openAvailableLocales(PSTR packageName, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern ULocaleDisplayNames* uldn_open(PSTR locale, UDialectHandling dialectHandling, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uldn_close(out ULocaleDisplayNames ldn);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uldn_getLocale(in ULocaleDisplayNames ldn);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDialectHandling uldn_getDialectHandling(in ULocaleDisplayNames ldn);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_localeDisplayName(in ULocaleDisplayNames ldn, PSTR locale, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_languageDisplayName(in ULocaleDisplayNames ldn, PSTR lang, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_scriptDisplayName(in ULocaleDisplayNames ldn, PSTR script, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_scriptCodeDisplayName(in ULocaleDisplayNames ldn, UScriptCode scriptCode, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_regionDisplayName(in ULocaleDisplayNames ldn, PSTR region, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_variantDisplayName(in ULocaleDisplayNames ldn, PSTR variant, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_keyDisplayName(in ULocaleDisplayNames ldn, PSTR key, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uldn_keyValueDisplayName(in ULocaleDisplayNames ldn, PSTR key, PSTR value, out uint16 result, int32 maxResultSize, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern ULocaleDisplayNames* uldn_openForContext(PSTR locale, out UDisplayContext contexts, int32 length, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDisplayContext uldn_getContext(in ULocaleDisplayNames ldn, UDisplayContextType type, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_forLocale(PSTR locale, out uint16 buff, int32 buffCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* ucurr_register(in uint16 isoCode, PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucurr_unregister(void* key, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ucurr_getName(in uint16 currency, PSTR locale, UCurrNameStyle nameStyle, out int8 isChoiceFormat, out int32 len, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ucurr_getPluralName(in uint16 currency, PSTR locale, out int8 isChoiceFormat, PSTR pluralCount, out int32 len, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_getDefaultFractionDigits(in uint16 currency, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_getDefaultFractionDigitsForUsage(in uint16 currency, UCurrencyUsage usage, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ucurr_getRoundingIncrement(in uint16 currency, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ucurr_getRoundingIncrementForUsage(in uint16 currency, UCurrencyUsage usage, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucurr_openISOCurrencies(uint32 currType, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucurr_isAvailable(in uint16 isoCode, double from, double to, out UErrorCode errorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_countCurrencies(PSTR locale, double date, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_forLocaleAndDate(PSTR locale, double date, int32 index, out uint16 buff, int32 buffCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucurr_getKeywordValuesForLocale(PSTR key, PSTR locale, int8 commonlyUsed, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucurr_getNumericCode(in uint16 currency);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ucpmap_get(in UCPMap map, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucpmap_getRange(in UCPMap map, int32 start, UCPMapRangeOption option, uint32 surrogateValue, out UCPMapValueFilter filter, void* context, out uint32 pValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCPTrie* ucptrie_openFromBinary(UCPTrieType type, UCPTrieValueWidth valueWidth, void* data, int32 length, out int32 pActualLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucptrie_close(out UCPTrie trie);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCPTrieType ucptrie_getType(in UCPTrie trie);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCPTrieValueWidth ucptrie_getValueWidth(in UCPTrie trie);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ucptrie_get(in UCPTrie trie, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucptrie_getRange(in UCPTrie trie, int32 start, UCPMapRangeOption option, uint32 surrogateValue, out UCPMapValueFilter filter, void* context, out uint32 pValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucptrie_toBinary(in UCPTrie trie, void* data, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucptrie_internalSmallIndex(in UCPTrie trie, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucptrie_internalSmallU8Index(in UCPTrie trie, int32 lt1, uint8 t2, uint8 t3);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucptrie_internalU8PrevIndex(in UCPTrie trie, int32 c, in uint8 start, in uint8 src);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UMutableCPTrie* umutablecptrie_open(uint32 initialValue, uint32 errorValue, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UMutableCPTrie* umutablecptrie_clone(in UMutableCPTrie other, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umutablecptrie_close(out UMutableCPTrie trie);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UMutableCPTrie* umutablecptrie_fromUCPMap(in UCPMap map, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UMutableCPTrie* umutablecptrie_fromUCPTrie(in UCPTrie trie, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 umutablecptrie_get(in UMutableCPTrie trie, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 umutablecptrie_getRange(in UMutableCPTrie trie, int32 start, UCPMapRangeOption option, uint32 surrogateValue, out UCPMapValueFilter filter, void* context, out uint32 pValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umutablecptrie_set(out UMutableCPTrie trie, int32 c, uint32 value, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umutablecptrie_setRange(out UMutableCPTrie trie, int32 start, int32 end, uint32 value, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCPTrie* umutablecptrie_buildImmutable(out UMutableCPTrie trie, UCPTrieType type, UCPTrieValueWidth valueWidth, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_FROM_U_CALLBACK_STOP(void* context, out UConverterFromUnicodeArgs fromUArgs, in uint16 codeUnits, int32 length, int32 codePoint, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_TO_U_CALLBACK_STOP(void* context, out UConverterToUnicodeArgs toUArgs, PSTR codeUnits, int32 length, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_FROM_U_CALLBACK_SKIP(void* context, out UConverterFromUnicodeArgs fromUArgs, in uint16 codeUnits, int32 length, int32 codePoint, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_FROM_U_CALLBACK_SUBSTITUTE(void* context, out UConverterFromUnicodeArgs fromUArgs, in uint16 codeUnits, int32 length, int32 codePoint, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_FROM_U_CALLBACK_ESCAPE(void* context, out UConverterFromUnicodeArgs fromUArgs, in uint16 codeUnits, int32 length, int32 codePoint, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_TO_U_CALLBACK_SKIP(void* context, out UConverterToUnicodeArgs toUArgs, PSTR codeUnits, int32 length, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_TO_U_CALLBACK_SUBSTITUTE(void* context, out UConverterToUnicodeArgs toUArgs, PSTR codeUnits, int32 length, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UCNV_TO_U_CALLBACK_ESCAPE(void* context, out UConverterToUnicodeArgs toUArgs, PSTR codeUnits, int32 length, UConverterCallbackReason reason, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_compareNames(PSTR name1, PSTR name2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverter* ucnv_open(PSTR converterName, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverter* ucnv_openU(in uint16 name, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverter* ucnv_openCCSID(int32 codepage, UConverterPlatform platform, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverter* ucnv_openPackage(PSTR packageName, PSTR converterName, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverter* ucnv_safeClone(in UConverter cnv, void* stackBuffer, out int32 pBufferSize, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_close(out UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getSubstChars(in UConverter converter, PSTR subChars, out int8 len, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setSubstChars(out UConverter converter, PSTR subChars, int8 len, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setSubstString(out UConverter cnv, in uint16 s, int32 length, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getInvalidChars(in UConverter converter, PSTR errBytes, out int8 len, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getInvalidUChars(in UConverter converter, out uint16 errUChars, out int8 len, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_reset(out UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_resetToUnicode(out UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_resetFromUnicode(out UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucnv_getMaxCharSize(in UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucnv_getMinCharSize(in UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_getDisplayName(in UConverter converter, PSTR displayLocale, out uint16 displayName, int32 displayNameCapacity, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getName(in UConverter converter, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_getCCSID(in UConverter converter, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverterPlatform ucnv_getPlatform(in UConverter converter, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverterType ucnv_getType(in UConverter converter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getStarters(in UConverter converter, out int8 starters, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getUnicodeSet(in UConverter cnv, out USet setFillIn, UConverterUnicodeSet whichSet, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getToUCallBack(in UConverter converter, out UConverterToUCallback action, void** context);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getFromUCallBack(in UConverter converter, out UConverterFromUCallback action, void** context);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setToUCallBack(out UConverter converter, UConverterToUCallback newAction, void* newContext, out UConverterToUCallback oldAction, void** oldContext, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setFromUCallBack(out UConverter converter, UConverterFromUCallback newAction, void* newContext, out UConverterFromUCallback oldAction, void** oldContext, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_fromUnicode(out UConverter converter, out int8* target, PSTR targetLimit, in uint16* source, in uint16 sourceLimit, out int32 offsets, int8 flush, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_toUnicode(out UConverter converter, out uint16* target, in uint16 targetLimit, in int8* source, PSTR sourceLimit, out int32 offsets, int8 flush, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_fromUChars(out UConverter cnv, PSTR dest, int32 destCapacity, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_toUChars(out UConverter cnv, out uint16 dest, int32 destCapacity, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_getNextUChar(out UConverter converter, in int8* source, PSTR sourceLimit, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_convertEx(out UConverter targetCnv, out UConverter sourceCnv, out int8* target, PSTR targetLimit, in int8* source, PSTR sourceLimit, out uint16 pivotStart, out uint16* pivotSource, out uint16* pivotTarget, in uint16 pivotLimit, int8 reset, int8 flush, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_convert(PSTR toConverterName, PSTR fromConverterName, PSTR target, int32 targetCapacity, PSTR source, int32 sourceLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_toAlgorithmic(UConverterType algorithmicType, out UConverter cnv, PSTR target, int32 targetCapacity, PSTR source, int32 sourceLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_fromAlgorithmic(out UConverter cnv, UConverterType algorithmicType, PSTR target, int32 targetCapacity, PSTR source, int32 sourceLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_flushCache();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getAvailableName(int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucnv_openAllNames(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 ucnv_countAliases(PSTR alias, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getAlias(PSTR alias, uint16 n, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_getAliases(PSTR alias, in int8* aliases, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucnv_openStandardNames(PSTR convName, PSTR standard, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16 ucnv_countStandards();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getStandard(uint16 n, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getStandardName(PSTR name, PSTR standard, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getCanonicalName(PSTR alias, PSTR standard, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_getDefaultName();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setDefaultName(PSTR name);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_fixFileSeparator(in UConverter cnv, out uint16 source, int32 sourceLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucnv_isAmbiguous(in UConverter cnv);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_setFallback(out UConverter cnv, int8 usesFallback);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucnv_usesFallback(in UConverter cnv);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucnv_detectUnicodeSignature(PSTR source, int32 sourceLength, out int32 signatureLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_fromUCountPending(in UConverter cnv, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnv_toUCountPending(in UConverter cnv, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucnv_isFixedWidth(out UConverter cnv, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_cbFromUWriteBytes(out UConverterFromUnicodeArgs args, PSTR source, int32 length, int32 offsetIndex, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_cbFromUWriteSub(out UConverterFromUnicodeArgs args, int32 offsetIndex, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_cbFromUWriteUChars(out UConverterFromUnicodeArgs args, in uint16* source, in uint16 sourceLimit, int32 offsetIndex, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_cbToUWriteUChars(out UConverterToUnicodeArgs args, in uint16 source, int32 length, int32 offsetIndex, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnv_cbToUWriteSub(out UConverterToUnicodeArgs args, int32 offsetIndex, out UErrorCode err);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_init(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_cleanup();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_setMemoryFunctions(void* context, out UMemAllocFn a, out UMemReallocFn r, out UMemFreeFn f, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UResourceBundle* u_catopen(PSTR name, PSTR locale, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_catclose(out UResourceBundle catd);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_catgets(out UResourceBundle catd, int32 set_num, int32 msg_num, in uint16 s, out int32 len, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_hasBinaryProperty(int32 c, UProperty which);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* u_getBinaryPropertySet(UProperty property, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isUAlphabetic(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isULowercase(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isUUppercase(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isUWhiteSpace(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getIntPropertyValue(int32 c, UProperty which);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getIntPropertyMinValue(UProperty which);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getIntPropertyMaxValue(UProperty which);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCPMap* u_getIntPropertyMap(UProperty property, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double u_getNumericValue(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_islower(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isupper(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_istitle(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isdigit(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isalpha(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isalnum(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isxdigit(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_ispunct(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isgraph(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isblank(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isdefined(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isspace(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isJavaSpaceChar(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isWhitespace(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_iscntrl(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isISOControl(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isprint(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isbase(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCharDirection u_charDirection(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isMirrored(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_charMirror(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getBidiPairedBracket(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_charType(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_enumCharTypes(out UCharEnumTypeRange enumRange, void* context);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8 u_getCombiningClass(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_charDigitValue(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBlockCode ublock_getCode(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_charName(int32 code, UCharNameChoice nameChoice, PSTR buffer, int32 bufferLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_charFromName(UCharNameChoice nameChoice, PSTR name, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_enumCharNames(int32 start, int32 limit, out UEnumCharNamesFn fn, void* context, UCharNameChoice nameChoice, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_getPropertyName(UProperty property, UPropertyNameChoice nameChoice);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UProperty u_getPropertyEnum(PSTR alias);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_getPropertyValueName(UProperty property, int32 value, UPropertyNameChoice nameChoice);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getPropertyValueEnum(UProperty property, PSTR alias);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isIDStart(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isIDPart(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isIDIgnorable(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isJavaIDStart(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_isJavaIDPart(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_tolower(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_toupper(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_totitle(int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_foldCase(int32 c, uint32 options);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_digit(int32 ch, int8 radix);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_forDigit(int32 digit, int8 radix);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_charAge(int32 c, out uint8 versionArray);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_getUnicodeVersion(out uint8 versionArray);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_getFC_NFKC_Closure(int32 c, out uint16 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDi* ubidi_open();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDi* ubidi_openSized(int32 maxLength, int32 maxRunCount, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_close(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setInverse(out UBiDi pBiDi, int8 isInverse);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ubidi_isInverse(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_orderParagraphsLTR(out UBiDi pBiDi, int8 orderParagraphsLTR);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ubidi_isOrderParagraphsLTR(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setReorderingMode(out UBiDi pBiDi, UBiDiReorderingMode reorderingMode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDiReorderingMode ubidi_getReorderingMode(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setReorderingOptions(out UBiDi pBiDi, uint32 reorderingOptions);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ubidi_getReorderingOptions(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setContext(out UBiDi pBiDi, in uint16 prologue, int32 proLength, in uint16 epilogue, int32 epiLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setPara(out UBiDi pBiDi, in uint16 text, int32 length, uint8 paraLevel, out uint8 embeddingLevels, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setLine(in UBiDi pParaBiDi, int32 start, int32 limit, out UBiDi pLineBiDi, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDiDirection ubidi_getDirection(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDiDirection ubidi_getBaseDirection(in uint16 text, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ubidi_getText(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getLength(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8 ubidi_getParaLevel(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_countParagraphs(out UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getParagraph(in UBiDi pBiDi, int32 charIndex, out int32 pParaStart, out int32 pParaLimit, out uint8 pParaLevel, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_getParagraphByIndex(in UBiDi pBiDi, int32 paraIndex, out int32 pParaStart, out int32 pParaLimit, out uint8 pParaLevel, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8 ubidi_getLevelAt(in UBiDi pBiDi, int32 charIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* ubidi_getLevels(out UBiDi pBiDi, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_getLogicalRun(in UBiDi pBiDi, int32 logicalPosition, out int32 pLogicalLimit, out uint8 pLevel);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_countRuns(out UBiDi pBiDi, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDiDirection ubidi_getVisualRun(out UBiDi pBiDi, int32 runIndex, out int32 pLogicalStart, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getVisualIndex(out UBiDi pBiDi, int32 logicalIndex, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getLogicalIndex(out UBiDi pBiDi, int32 visualIndex, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_getLogicalMap(out UBiDi pBiDi, out int32 indexMap, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_getVisualMap(out UBiDi pBiDi, out int32 indexMap, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_reorderLogical(in uint8 levels, int32 length, out int32 indexMap);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_reorderVisual(in uint8 levels, int32 length, out int32 indexMap);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_invertMap(in int32 srcMap, out int32 destMap, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getProcessedLength(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_getResultLength(in UBiDi pBiDi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCharDirection ubidi_getCustomizedClass(out UBiDi pBiDi, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_setClassCallback(out UBiDi pBiDi, UBiDiClassCallback newFn, void* newContext, out UBiDiClassCallback oldFn, void** oldContext, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubidi_getClassCallback(out UBiDi pBiDi, out UBiDiClassCallback fn, void** context);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_writeReordered(out UBiDi pBiDi, out uint16 dest, int32 destSize, uint16 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubidi_writeReverse(in uint16 src, int32 srcLength, out uint16 dest, int32 destSize, uint16 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ubiditransform_transform(out UBiDiTransform pBiDiTransform, in uint16 src, int32 srcLength, out uint16 dest, int32 destSize, uint8 inParaLevel, UBiDiOrder inOrder, uint8 outParaLevel, UBiDiOrder outOrder, UBiDiMirroring doMirroring, uint32 shapingOptions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBiDiTransform* ubiditransform_open(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubiditransform_close(out UBiDiTransform pBidiTransform);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* utext_close(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* utext_openUTF8(out UText ut, PSTR s, int64 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* utext_openUChars(out UText ut, in uint16 s, int64 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* utext_clone(out UText dest, in UText src, int8 deep, int8 readOnly, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 utext_equals(in UText a, in UText b);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utext_nativeLength(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 utext_isLengthExpensive(in UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_char32At(out UText ut, int64 nativeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_current32(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_next32(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_previous32(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_next32From(out UText ut, int64 nativeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_previous32From(out UText ut, int64 nativeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utext_getNativeIndex(in UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utext_setNativeIndex(out UText ut, int64 nativeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 utext_moveIndex32(out UText ut, int32 delta);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utext_getPreviousNativeIndex(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_extract(out UText ut, int64 nativeStart, int64 nativeLimit, out uint16 dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 utext_isWritable(in UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 utext_hasMetaData(in UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utext_replace(out UText ut, int64 nativeStart, int64 nativeLimit, in uint16 replacementText, int32 replacementLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utext_copy(out UText ut, int64 nativeStart, int64 nativeLimit, int64 destIndex, int8 move, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utext_freeze(out UText ut);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* utext_setup(out UText ut, int32 extraSpace, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_openEmpty();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_open(int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_openPattern(in uint16 pattern, int32 patternLength, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_openPatternOptions(in uint16 pattern, int32 patternLength, uint32 options, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_close(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_clone(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_isFrozen(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_freeze(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uset_cloneAsThawed(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_set(out USet set, int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_applyPattern(out USet set, in uint16 pattern, int32 patternLength, uint32 options, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_applyIntPropertyValue(out USet set, UProperty prop, int32 value, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_applyPropertyAlias(out USet set, in uint16 prop, int32 propLength, in uint16 value, int32 valueLength, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_resemblesPattern(in uint16 pattern, int32 patternLength, int32 pos);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_toPattern(in USet set, out uint16 result, int32 resultCapacity, int8 escapeUnprintable, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_add(out USet set, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_addAll(out USet set, in USet additionalSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_addRange(out USet set, int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_addString(out USet set, in uint16 str, int32 strLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_addAllCodePoints(out USet set, in uint16 str, int32 strLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_remove(out USet set, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_removeRange(out USet set, int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_removeString(out USet set, in uint16 str, int32 strLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_removeAll(out USet set, in USet removeSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_retain(out USet set, int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_retainAll(out USet set, in USet retain);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_compact(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_complement(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_complementAll(out USet set, in USet complement);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_clear(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_closeOver(out USet set, int32 attributes);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_removeAllStrings(out USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_isEmpty(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_contains(in USet set, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsRange(in USet set, int32 start, int32 end);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsString(in USet set, in uint16 str, int32 strLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_indexOf(in USet set, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_charAt(in USet set, int32 charIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_size(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_getItemCount(in USet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_getItem(in USet set, int32 itemIndex, out int32 start, out int32 end, out uint16 str, int32 strCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsAll(in USet set1, in USet set2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsAllCodePoints(in USet set, in uint16 str, int32 strLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsNone(in USet set1, in USet set2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_containsSome(in USet set1, in USet set2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_span(in USet set, in uint16 s, int32 length, USetSpanCondition spanCondition);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_spanBack(in USet set, in uint16 s, int32 length, USetSpanCondition spanCondition);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_spanUTF8(in USet set, PSTR s, int32 length, USetSpanCondition spanCondition);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_spanBackUTF8(in USet set, PSTR s, int32 length, USetSpanCondition spanCondition);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_equals(in USet set1, in USet set2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_serialize(in USet set, out uint16 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_getSerializedSet(out USerializedSet fillSet, in uint16 src, int32 srcLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uset_setSerializedToOne(out USerializedSet fillSet, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_serializedContains(in USerializedSet set, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uset_getSerializedRangeCount(in USerializedSet set);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uset_getSerializedRange(in USerializedSet set, int32 rangeIndex, out int32 pStart, out int32 pEnd);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getNFCInstance(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getNFDInstance(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getNFKCInstance(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getNFKDInstance(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getNFKCCasefoldInstance(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_getInstance(PSTR packageName, PSTR name, UNormalization2Mode mode, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizer2* unorm2_openFiltered(in UNormalizer2 norm2, in USet filterSet, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unorm2_close(out UNormalizer2 norm2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_normalize(in UNormalizer2 norm2, in uint16 src, int32 length, out uint16 dest, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_normalizeSecondAndAppend(in UNormalizer2 norm2, out uint16 first, int32 firstLength, int32 firstCapacity, in uint16 second, int32 secondLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_append(in UNormalizer2 norm2, out uint16 first, int32 firstLength, int32 firstCapacity, in uint16 second, int32 secondLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_getDecomposition(in UNormalizer2 norm2, int32 c, out uint16 decomposition, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_getRawDecomposition(in UNormalizer2 norm2, int32 c, out uint16 decomposition, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_composePair(in UNormalizer2 norm2, int32 a, int32 b);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8 unorm2_getCombiningClass(in UNormalizer2 norm2, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unorm2_isNormalized(in UNormalizer2 norm2, in uint16 s, int32 length, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNormalizationCheckResult unorm2_quickCheck(in UNormalizer2 norm2, in uint16 s, int32 length, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm2_spanQuickCheckYes(in UNormalizer2 norm2, in uint16 s, int32 length, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unorm2_hasBoundaryBefore(in UNormalizer2 norm2, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unorm2_hasBoundaryAfter(in UNormalizer2 norm2, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unorm2_isInert(in UNormalizer2 norm2, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unorm_compare(in uint16 s1, int32 length1, in uint16 s2, int32 length2, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverterSelector* ucnvsel_open(in int8* converterList, int32 converterListSize, in USet excludedCodePoints, UConverterUnicodeSet whichSet, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucnvsel_close(out UConverterSelector sel);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConverterSelector* ucnvsel_openFromSerialized(void* buffer, int32 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucnvsel_serialize(in UConverterSelector sel, void* buffer, int32 bufferCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucnvsel_selectForString(in UConverterSelector sel, in uint16 s, int32 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucnvsel_selectForUTF8(in UConverterSelector sel, PSTR s, int32 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_charsToUChars(PSTR cs, out uint16 us, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_UCharsToChars(in uint16 us, PSTR cs, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strlen(in uint16 s);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_countChar32(in uint16 s, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 u_strHasMoreChar32Than(in uint16 s, int32 length, int32 number);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strcat(out uint16 dst, in uint16 src);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strncat(out uint16 dst, in uint16 src, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strstr(in uint16 s, in uint16 substring);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFindFirst(in uint16 s, int32 length, in uint16 substring, int32 subLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strchr(in uint16 s, uint16 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strchr32(in uint16 s, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strrstr(in uint16 s, in uint16 substring);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFindLast(in uint16 s, int32 length, in uint16 substring, int32 subLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strrchr(in uint16 s, uint16 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strrchr32(in uint16 s, int32 c);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strpbrk(in uint16 string, in uint16 matchSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strcspn(in uint16 string, in uint16 matchSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strspn(in uint16 string, in uint16 matchSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strtok_r(out uint16 src, in uint16 delim, out uint16* saveState);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strcmp(in uint16 s1, in uint16 s2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strcmpCodePointOrder(in uint16 s1, in uint16 s2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strCompare(in uint16 s1, int32 length1, in uint16 s2, int32 length2, int8 codePointOrder);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strCompareIter(out UCharIterator iter1, out UCharIterator iter2, int8 codePointOrder);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strCaseCompare(in uint16 s1, int32 length1, in uint16 s2, int32 length2, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strncmp(in uint16 ucs1, in uint16 ucs2, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strncmpCodePointOrder(in uint16 s1, in uint16 s2, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strcasecmp(in uint16 s1, in uint16 s2, uint32 options);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strncasecmp(in uint16 s1, in uint16 s2, int32 n, uint32 options);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_memcasecmp(in uint16 s1, in uint16 s2, int32 length, uint32 options);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strcpy(out uint16 dst, in uint16 src);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strncpy(out uint16 dst, in uint16 src, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_uastrcpy(out uint16 dst, PSTR src);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_uastrncpy(out uint16 dst, PSTR src, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_austrcpy(PSTR dst, in uint16 src);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_austrncpy(PSTR dst, in uint16 src, int32 n);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memcpy(out uint16 dest, in uint16 src, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memmove(out uint16 dest, in uint16 src, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memset(out uint16 dest, uint16 c, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_memcmp(in uint16 buf1, in uint16 buf2, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_memcmpCodePointOrder(in uint16 s1, in uint16 s2, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memchr(in uint16 s, uint16 c, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memchr32(in uint16 s, int32 c, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memrchr(in uint16 s, uint16 c, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_memrchr32(in uint16 s, int32 c, int32 count);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_unescape(PSTR src, out uint16 dest, int32 destCapacity);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_unescapeAt(UNESCAPE_CHAR_AT charAt, out int32 offset, int32 length, void* context);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strToUpper(out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, PSTR locale, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strToLower(out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, PSTR locale, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strToTitle(out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, out UBreakIterator titleIter, PSTR locale, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_strFoldCase(out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR u_strToWCS(PWSTR dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromWCS(out uint16 dest, int32 destCapacity, out int32 pDestLength, PWSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_strToUTF8(PSTR dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromUTF8(out uint16 dest, int32 destCapacity, out int32 pDestLength, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_strToUTF8WithSub(PSTR dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, int32 subchar, out int32 pNumSubstitutions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromUTF8WithSub(out uint16 dest, int32 destCapacity, out int32 pDestLength, PSTR src, int32 srcLength, int32 subchar, out int32 pNumSubstitutions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromUTF8Lenient(out uint16 dest, int32 destCapacity, out int32 pDestLength, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32* u_strToUTF32(out int32 dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromUTF32(out uint16 dest, int32 destCapacity, out int32 pDestLength, in int32 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32* u_strToUTF32WithSub(out int32 dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, int32 subchar, out int32 pNumSubstitutions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromUTF32WithSub(out uint16 dest, int32 destCapacity, out int32 pDestLength, in int32 src, int32 srcLength, int32 subchar, out int32 pNumSubstitutions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR u_strToJavaModifiedUTF8(PSTR dest, int32 destCapacity, out int32 pDestLength, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* u_strFromJavaModifiedUTF8WithSub(out uint16 dest, int32 destCapacity, out int32 pDestLength, PSTR src, int32 srcLength, int32 subchar, out int32 pNumSubstitutions, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCaseMap* ucasemap_open(PSTR locale, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucasemap_close(out UCaseMap csm);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucasemap_getLocale(in UCaseMap csm);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ucasemap_getOptions(in UCaseMap csm);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucasemap_setLocale(out UCaseMap csm, PSTR locale, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucasemap_setOptions(out UCaseMap csm, uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* ucasemap_getBreakIterator(in UCaseMap csm);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucasemap_setBreakIterator(out UCaseMap csm, out UBreakIterator iterToAdopt, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucasemap_toTitle(out UCaseMap csm, out uint16 dest, int32 destCapacity, in uint16 src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucasemap_utf8ToLower(in UCaseMap csm, PSTR dest, int32 destCapacity, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucasemap_utf8ToUpper(in UCaseMap csm, PSTR dest, int32 destCapacity, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucasemap_utf8ToTitle(out UCaseMap csm, PSTR dest, int32 destCapacity, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucasemap_utf8FoldCase(in UCaseMap csm, PSTR dest, int32 destCapacity, PSTR src, int32 srcLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UStringPrepProfile* usprep_open(PSTR path, PSTR fileName, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UStringPrepProfile* usprep_openByType(UStringPrepProfileType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usprep_close(out UStringPrepProfile profile);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usprep_prepare(in UStringPrepProfile prep, in uint16 src, int32 srcLength, out uint16 dest, int32 destCapacity, int32 options, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UIDNA* uidna_openUTS46(uint32 options, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uidna_close(out UIDNA idna);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_labelToASCII(in UIDNA idna, in uint16 label, int32 length, out uint16 dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_labelToUnicode(in UIDNA idna, in uint16 label, int32 length, out uint16 dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_nameToASCII(in UIDNA idna, in uint16 name, int32 length, out uint16 dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_nameToUnicode(in UIDNA idna, in uint16 name, int32 length, out uint16 dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_labelToASCII_UTF8(in UIDNA idna, PSTR label, int32 length, PSTR dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_labelToUnicodeUTF8(in UIDNA idna, PSTR label, int32 length, PSTR dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_nameToASCII_UTF8(in UIDNA idna, PSTR name, int32 length, PSTR dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uidna_nameToUnicodeUTF8(in UIDNA idna, PSTR name, int32 length, PSTR dest, int32 capacity, out UIDNAInfo pInfo, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* ubrk_open(UBreakIteratorType type, PSTR locale, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* ubrk_openRules(in uint16 rules, int32 rulesLength, in uint16 text, int32 textLength, out UParseError parseErr, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* ubrk_openBinaryRules(in uint8 binaryRules, int32 rulesLength, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* ubrk_safeClone(in UBreakIterator bi, void* stackBuffer, out int32 pBufferSize, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubrk_close(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubrk_setText(out UBreakIterator bi, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubrk_setUText(out UBreakIterator bi, out UText text, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_current(in UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_next(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_previous(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_first(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_last(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_preceding(out UBreakIterator bi, int32 offset);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_following(out UBreakIterator bi, int32 offset);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ubrk_getAvailable(int32 index);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ubrk_isBoundary(out UBreakIterator bi, int32 offset);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_getRuleStatus(out UBreakIterator bi);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_getRuleStatusVec(out UBreakIterator bi, out int32 fillInVec, int32 capacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ubrk_getLocaleByType(in UBreakIterator bi, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ubrk_refreshUText(out UBreakIterator bi, out UText text, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ubrk_getBinaryRules(out UBreakIterator bi, out uint8 binaryRules, int32 rulesCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_getDataVersion(out uint8 dataVersionFillin, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucal_openTimeZoneIDEnumeration(USystemTimeZoneType zoneType, PSTR region, in int32 rawOffset, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucal_openTimeZones(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucal_openCountryTimeZones(PSTR country, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getDefaultTimeZone(out uint16 result, int32 resultCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setDefaultTimeZone(in uint16 zoneID, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getHostTimeZone(out uint16 result, int32 resultCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getDSTSavings(in uint16 zoneID, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ucal_getNow();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** ucal_open(in uint16 zoneID, int32 len, PSTR locale, UCalendarType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_close(void** cal);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** ucal_clone(void** cal, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setTimeZone(void** cal, in uint16 zoneID, int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getTimeZoneID(void** cal, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getTimeZoneDisplayName(void** cal, UCalendarDisplayNameType type, PSTR locale, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucal_inDaylightTime(void** cal, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setGregorianChange(void** cal, double date, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ucal_getGregorianChange(void** cal, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getAttribute(void** cal, UCalendarAttribute attr);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setAttribute(void** cal, UCalendarAttribute attr, int32 newValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucal_getAvailable(int32 localeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ucal_getMillis(void** cal, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setMillis(void** cal, double dateTime, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setDate(void** cal, int32 year, int32 month, int32 date, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_setDateTime(void** cal, int32 year, int32 month, int32 date, int32 hour, int32 minute, int32 second, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucal_equivalentTo(void** cal1, void** cal2);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_add(void** cal, UCalendarDateFields field, int32 amount, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_roll(void** cal, UCalendarDateFields field, int32 amount, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_get(void** cal, UCalendarDateFields field, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_set(void** cal, UCalendarDateFields field, int32 value);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucal_isSet(void** cal, UCalendarDateFields field);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_clearField(void** cal, UCalendarDateFields field);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucal_clear(void** calendar);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getLimit(void** cal, UCalendarDateFields field, UCalendarLimitType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucal_getLocaleByType(void** cal, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucal_getTZDataVersion(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getCanonicalTimeZoneID(in uint16 id, int32 len, out uint16 result, int32 resultCapacity, out int8 isSystemID, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucal_getType(void** cal, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucal_getKeywordValuesForLocale(PSTR key, PSTR locale, int8 commonlyUsed, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCalendarWeekdayType ucal_getDayOfWeekType(void** cal, UCalendarDaysOfWeek dayOfWeek, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getWeekendTransition(void** cal, UCalendarDaysOfWeek dayOfWeek, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucal_isWeekend(void** cal, double date, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getFieldDifference(void** cal, double target, UCalendarDateFields field, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucal_getTimeZoneTransitionDate(void** cal, UTimeZoneTransitionType type, out double transition, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getWindowsTimeZoneID(in uint16 id, int32 len, out uint16 winid, int32 winidCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucal_getTimeZoneIDForWindowsID(in uint16 winid, int32 len, PSTR region, out uint16 id, int32 idCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollator* ucol_open(PSTR loc, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollator* ucol_openRules(in uint16 rules, int32 rulesLength, UColAttributeValue normalizationMode, UColAttributeValue strength, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_getContractionsAndExpansions(in UCollator coll, out USet contractions, out USet expansions, int8 addPrefixes, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_close(out UCollator coll);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollationResult ucol_strcoll(in UCollator coll, in uint16 source, int32 sourceLength, in uint16 target, int32 targetLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollationResult ucol_strcollUTF8(in UCollator coll, PSTR source, int32 sourceLength, PSTR target, int32 targetLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucol_greater(in UCollator coll, in uint16 source, int32 sourceLength, in uint16 target, int32 targetLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucol_greaterOrEqual(in UCollator coll, in uint16 source, int32 sourceLength, in uint16 target, int32 targetLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucol_equal(in UCollator coll, in uint16 source, int32 sourceLength, in uint16 target, int32 targetLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollationResult ucol_strcollIter(in UCollator coll, out UCharIterator sIter, out UCharIterator tIter, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UColAttributeValue ucol_getStrength(in UCollator coll);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setStrength(out UCollator coll, UColAttributeValue strength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getReorderCodes(in UCollator coll, out int32 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setReorderCodes(out UCollator coll, in int32 reorderCodes, int32 reorderCodesLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getEquivalentReorderCodes(int32 reorderCode, out int32 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getDisplayName(PSTR objLoc, PSTR dispLoc, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucol_getAvailable(int32 localeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucol_openAvailableLocales(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucol_getKeywords(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucol_getKeywordValues(PSTR keyword, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucol_getKeywordValuesForLocale(PSTR key, PSTR locale, int8 commonlyUsed, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getFunctionalEquivalent(PSTR result, int32 resultCapacity, PSTR keyword, PSTR locale, out int8 isAvailable, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ucol_getRules(in UCollator coll, out int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getSortKey(in UCollator coll, in uint16 source, int32 sourceLength, out uint8 result, int32 resultLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_nextSortKeyPart(in UCollator coll, out UCharIterator iter, out uint32 state, out uint8 dest, int32 count, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getBound(in uint8 source, int32 sourceLength, UColBoundMode boundType, uint32 noOfLevels, out uint8 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_getVersion(in UCollator coll, out uint8 info);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_getUCAVersion(in UCollator coll, out uint8 info);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_mergeSortkeys(in uint8 src1, int32 src1Length, in uint8 src2, int32 src2Length, out uint8 dest, int32 destCapacity);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setAttribute(out UCollator coll, UColAttribute attr, UColAttributeValue value, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UColAttributeValue ucol_getAttribute(in UCollator coll, UColAttribute attr, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setMaxVariable(out UCollator coll, UColReorderCode group, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UColReorderCode ucol_getMaxVariable(in UCollator coll);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ucol_getVariableTop(in UCollator coll, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollator* ucol_safeClone(in UCollator coll, void* stackBuffer, out int32 pBufferSize, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getRulesEx(in UCollator coll, UColRuleOption delta, out uint16 buffer, int32 bufferLen);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucol_getLocaleByType(in UCollator coll, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* ucol_getTailoredSet(in UCollator coll, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_cloneBinary(in UCollator coll, out uint8 buffer, int32 capacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollator* ucol_openBinary(in uint8 bin, int32 length, in UCollator @base, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollationElements* ucol_openElements(in UCollator coll, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_keyHashCode(in uint8 key, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_closeElements(out UCollationElements elems);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_reset(out UCollationElements elems);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_next(out UCollationElements elems, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_previous(out UCollationElements elems, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getMaxExpansion(in UCollationElements elems, int32 order);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setText(out UCollationElements elems, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_getOffset(in UCollationElements elems);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucol_setOffset(out UCollationElements elems, int32 offset, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_primaryOrder(int32 order);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_secondaryOrder(int32 order);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucol_tertiaryOrder(int32 order);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCharsetDetector* ucsdet_open(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucsdet_close(out UCharsetDetector ucsd);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucsdet_setText(out UCharsetDetector ucsd, PSTR textIn, int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucsdet_setDeclaredEncoding(out UCharsetDetector ucsd, PSTR encoding, int32 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCharsetMatch* ucsdet_detect(out UCharsetDetector ucsd, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCharsetMatch** ucsdet_detectAll(out UCharsetDetector ucsd, out int32 matchesFound, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucsdet_getName(in UCharsetMatch ucsm, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucsdet_getConfidence(in UCharsetMatch ucsm, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ucsdet_getLanguage(in UCharsetMatch ucsm, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucsdet_getUChars(in UCharsetMatch ucsm, out uint16 buf, int32 cap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* ucsdet_getAllDetectableCharsets(in UCharsetDetector ucsd, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucsdet_isInputFilterEnabled(in UCharsetDetector ucsd);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucsdet_enableInputFilter(out UCharsetDetector ucsd, int8 filter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFieldPositionIterator* ufieldpositer_open(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ufieldpositer_close(out UFieldPositionIterator fpositer);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ufieldpositer_next(out UFieldPositionIterator fpositer, out int32 beginIndex, out int32 endIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** ufmt_open(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ufmt_close(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattableType ufmt_getType(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ufmt_isNumeric(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ufmt_getDate(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double ufmt_getDouble(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ufmt_getLong(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 ufmt_getInt64(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* ufmt_getObject(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ufmt_getUChars(void** fmt, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ufmt_getArrayLength(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** ufmt_getArrayItemByIndex(void** fmt, int32 n, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR ufmt_getDecNumChars(void** fmt, out int32 len, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UConstrainedFieldPosition* ucfpos_open(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_reset(out UConstrainedFieldPosition ucfpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_close(out UConstrainedFieldPosition ucfpos);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_constrainCategory(out UConstrainedFieldPosition ucfpos, int32 category, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_constrainField(out UConstrainedFieldPosition ucfpos, int32 category, int32 field, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucfpos_getCategory(in UConstrainedFieldPosition ucfpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ucfpos_getField(in UConstrainedFieldPosition ucfpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_getIndexes(in UConstrainedFieldPosition ucfpos, out int32 pStart, out int32 pLimit, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 ucfpos_getInt64IterationContext(in UConstrainedFieldPosition ucfpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_setInt64IterationContext(out UConstrainedFieldPosition ucfpos, int64 context, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ucfpos_matchesField(in UConstrainedFieldPosition ucfpos, int32 category, int32 field, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ucfpos_setState(out UConstrainedFieldPosition ucfpos, int32 category, int32 field, int32 start, int32 limit, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* ufmtval_getString(in UFormattedValue ufmtval, out int32 pLength, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ufmtval_nextPosition(in UFormattedValue ufmtval, out UConstrainedFieldPosition ucfpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDateIntervalFormat* udtitvfmt_open(PSTR locale, in uint16 skeleton, int32 skeletonLength, in uint16 tzID, int32 tzIDLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udtitvfmt_close(out UDateIntervalFormat formatter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedDateInterval* udtitvfmt_openResult(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedValue* udtitvfmt_resultAsValue(in UFormattedDateInterval uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udtitvfmt_closeResult(out UFormattedDateInterval uresult);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udtitvfmt_format(in UDateIntervalFormat formatter, double fromDate, double toDate, out uint16 result, int32 resultCapacity, out UFieldPosition position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UGenderInfo* ugender_getInstance(PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UGender ugender_getListGender(in UGenderInfo genderInfo, in UGender genders, int32 size, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UListFormatter* ulistfmt_open(PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UListFormatter* ulistfmt_openForType(PSTR locale, UListFormatterType type, UListFormatterWidth width, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulistfmt_close(out UListFormatter listfmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedList* ulistfmt_openResult(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedValue* ulistfmt_resultAsValue(in UFormattedList uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulistfmt_closeResult(out UFormattedList uresult);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ulistfmt_format(in UListFormatter listfmt, in uint16* strings, in int32 stringLengths, int32 stringCount, out uint16 result, int32 resultCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulistfmt_formatStringsToResult(in UListFormatter listfmt, in uint16* strings, in int32 stringLengths, int32 stringCount, out UFormattedList uresult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern ULocaleData* ulocdata_open(PSTR localeID, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulocdata_close(out ULocaleData uld);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulocdata_setNoSubstitute(out ULocaleData uld, int8 setting);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 ulocdata_getNoSubstitute(out ULocaleData uld);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* ulocdata_getExemplarSet(out ULocaleData uld, out USet fillIn, uint32 options, ULocaleDataExemplarSetType extype, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ulocdata_getDelimiter(out ULocaleData uld, ULocaleDataDelimiterType type, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UMeasurementSystem ulocdata_getMeasurementSystem(PSTR localeID, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulocdata_getPaperSize(PSTR localeID, out int32 height, out int32 width, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ulocdata_getCLDRVersion(out uint8 versionArray, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ulocdata_getLocaleDisplayPattern(out ULocaleData uld, out uint16 pattern, int32 patternCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ulocdata_getLocaleSeparator(out ULocaleData uld, out uint16 separator, int32 separatorCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_formatMessage(PSTR locale, in uint16 pattern, int32 patternLength, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_vformatMessage(PSTR locale, in uint16 pattern, int32 patternLength, out uint16 result, int32 resultLength, out int8 ap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_parseMessage(PSTR locale, in uint16 pattern, int32 patternLength, in uint16 source, int32 sourceLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_vparseMessage(PSTR locale, in uint16 pattern, int32 patternLength, in uint16 source, int32 sourceLength, out int8 ap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_formatMessageWithError(PSTR locale, in uint16 pattern, int32 patternLength, out uint16 result, int32 resultLength, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 u_vformatMessageWithError(PSTR locale, in uint16 pattern, int32 patternLength, out uint16 result, int32 resultLength, out UParseError parseError, out int8 ap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_parseMessageWithError(PSTR locale, in uint16 pattern, int32 patternLength, in uint16 source, int32 sourceLength, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void u_vparseMessageWithError(PSTR locale, in uint16 pattern, int32 patternLength, in uint16 source, int32 sourceLength, out int8 ap, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** umsg_open(in uint16 pattern, int32 patternLength, PSTR locale, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umsg_close(void** format);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* umsg_clone(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umsg_setLocale(void** fmt, PSTR locale);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR umsg_getLocale(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umsg_applyPattern(void** fmt, in uint16 pattern, int32 patternLength, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 umsg_toPattern(void** fmt, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 umsg_format(void** fmt, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 umsg_vformat(void** fmt, out uint16 result, int32 resultLength, out int8 ap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umsg_parse(void** fmt, in uint16 source, int32 sourceLength, out int32 count, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void umsg_vparse(void** fmt, in uint16 source, int32 sourceLength, out int32 count, out int8 ap, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 umsg_autoQuoteApostrophe(in uint16 pattern, int32 patternLength, out uint16 dest, int32 destCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** unum_open(UNumberFormatStyle style, in uint16 pattern, int32 patternLength, PSTR locale, out UParseError parseErr, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_close(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** unum_clone(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_format(void** fmt, int32 number, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatInt64(void** fmt, int64 number, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatDouble(void** fmt, double number, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatDoubleForFields(void** format, double number, out uint16 result, int32 resultLength, out UFieldPositionIterator fpositer, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatDecimal(void** fmt, PSTR number, int32 length, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatDoubleCurrency(void** fmt, double number, out uint16 currency, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_formatUFormattable(void** fmt, void** number, out uint16 result, int32 resultLength, out UFieldPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_parse(void** fmt, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 unum_parseInt64(void** fmt, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double unum_parseDouble(void** fmt, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_parseDecimal(void** fmt, in uint16 text, int32 textLength, out int32 parsePos, PSTR outBuf, int32 outBufLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double unum_parseDoubleCurrency(void** fmt, in uint16 text, int32 textLength, out int32 parsePos, out uint16 currency, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** unum_parseToUFormattable(void** fmt, void** result, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_applyPattern(void** format, int8 localized, in uint16 pattern, int32 patternLength, out UParseError parseError, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR unum_getAvailable(int32 localeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_getAttribute(void** fmt, UNumberFormatAttribute attr);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_setAttribute(void** fmt, UNumberFormatAttribute attr, int32 newValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double unum_getDoubleAttribute(void** fmt, UNumberFormatAttribute attr);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_setDoubleAttribute(void** fmt, UNumberFormatAttribute attr, double newValue);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_getTextAttribute(void** fmt, UNumberFormatTextAttribute tag, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_setTextAttribute(void** fmt, UNumberFormatTextAttribute tag, in uint16 newValue, int32 newValueLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_toPattern(void** fmt, int8 isPatternLocalized, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unum_getSymbol(void** fmt, UNumberFormatSymbol symbol, out uint16 buffer, int32 size, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_setSymbol(void** fmt, UNumberFormatSymbol symbol, in uint16 value, int32 length, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR unum_getLocaleByType(void** fmt, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unum_setContext(void** fmt, UDisplayContext value, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDisplayContext unum_getContext(void** fmt, UDisplayContextType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCalendarDateFields udat_toCalendarDateField(UDateFormatField field);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udat_open(UDateFormatStyle timeStyle, UDateFormatStyle dateStyle, PSTR locale, in uint16 tzID, int32 tzIDLength, in uint16 pattern, int32 patternLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_close(void** format);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 udat_getBooleanAttribute(void** fmt, UDateFormatBooleanAttribute attr, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setBooleanAttribute(void** fmt, UDateFormatBooleanAttribute attr, int8 newValue, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udat_clone(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_format(void** format, double dateToFormat, out uint16 result, int32 resultLength, out UFieldPosition position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_formatCalendar(void** format, void** calendar, out uint16 result, int32 capacity, out UFieldPosition position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_formatForFields(void** format, double dateToFormat, out uint16 result, int32 resultLength, out UFieldPositionIterator fpositer, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_formatCalendarForFields(void** format, void** calendar, out uint16 result, int32 capacity, out UFieldPositionIterator fpositer, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double udat_parse(void** format, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_parseCalendar(void** format, void** calendar, in uint16 text, int32 textLength, out int32 parsePos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 udat_isLenient(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setLenient(void** fmt, int8 isLenient);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udat_getCalendar(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setCalendar(void** fmt, void** calendarToSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udat_getNumberFormat(void** fmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udat_getNumberFormatForField(void** fmt, uint16 field);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_adoptNumberFormatForFields(void** fmt, in uint16 fields, void** numberFormatToSet, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setNumberFormat(void** fmt, void** numberFormatToSet);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_adoptNumberFormat(void** fmt, void** numberFormatToAdopt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR udat_getAvailable(int32 localeIndex);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_countAvailable();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern double udat_get2DigitYearStart(void** fmt, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_set2DigitYearStart(void** fmt, double d, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_toPattern(void** fmt, int8 localized, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_applyPattern(void** format, int8 localized, in uint16 pattern, int32 patternLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_getSymbols(void** fmt, UDateFormatSymbolType type, int32 symbolIndex, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udat_countSymbols(void** fmt, UDateFormatSymbolType type);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setSymbols(void** format, UDateFormatSymbolType type, int32 symbolIndex, out uint16 value, int32 valueLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR udat_getLocaleByType(void** fmt, ULocDataLocaleType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udat_setContext(void** fmt, UDisplayContext value, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDisplayContext udat_getContext(void** fmt, UDisplayContextType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udatpg_open(PSTR locale, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udatpg_openEmpty(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udatpg_close(void** dtpg);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** udatpg_clone(void** dtpg, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_getBestPattern(void** dtpg, in uint16 skeleton, int32 length, out uint16 bestPattern, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_getBestPatternWithOptions(void** dtpg, in uint16 skeleton, int32 length, UDateTimePatternMatchOptions options, out uint16 bestPattern, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_getSkeleton(void** unusedDtpg, in uint16 pattern, int32 length, out uint16 skeleton, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_getBaseSkeleton(void** unusedDtpg, in uint16 pattern, int32 length, out uint16 baseSkeleton, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UDateTimePatternConflict udatpg_addPattern(void** dtpg, in uint16 pattern, int32 patternLength, int8 @override, out uint16 conflictingPattern, int32 capacity, out int32 pLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udatpg_setAppendItemFormat(void** dtpg, UDateTimePatternField field, in uint16 value, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* udatpg_getAppendItemFormat(void** dtpg, UDateTimePatternField field, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udatpg_setAppendItemName(void** dtpg, UDateTimePatternField field, in uint16 value, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* udatpg_getAppendItemName(void** dtpg, UDateTimePatternField field, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_getFieldDisplayName(void** dtpg, UDateTimePatternField field, UDateTimePGDisplayWidth width, out uint16 fieldName, int32 capacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udatpg_setDateTimeFormat(void** dtpg, in uint16 dtFormat, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* udatpg_getDateTimeFormat(void** dtpg, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void udatpg_setDecimal(void** dtpg, in uint16 decimal, int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* udatpg_getDecimal(void** dtpg, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_replaceFieldTypes(void** dtpg, in uint16 pattern, int32 patternLength, in uint16 skeleton, int32 skeletonLength, out uint16 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 udatpg_replaceFieldTypesWithOptions(void** dtpg, in uint16 pattern, int32 patternLength, in uint16 skeleton, int32 skeletonLength, UDateTimePatternMatchOptions options, out uint16 dest, int32 destCapacity, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* udatpg_openSkeletons(void** dtpg, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* udatpg_openBaseSkeletons(void** dtpg, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* udatpg_getPatternForSkeleton(void** dtpg, in uint16 skeleton, int32 skeletonLength, out int32 pLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNumberFormatter* unumf_openForSkeletonAndLocale(in uint16 skeleton, int32 skeletonLen, PSTR locale, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNumberFormatter* unumf_openForSkeletonAndLocaleWithError(in uint16 skeleton, int32 skeletonLen, PSTR locale, out UParseError perror, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedNumber* unumf_openResult(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_formatInt(in UNumberFormatter uformatter, int64 value, out UFormattedNumber uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_formatDouble(in UNumberFormatter uformatter, double value, out UFormattedNumber uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_formatDecimal(in UNumberFormatter uformatter, PSTR value, int32 valueLen, out UFormattedNumber uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedValue* unumf_resultAsValue(in UFormattedNumber uresult, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unumf_resultToString(in UFormattedNumber uresult, out uint16 buffer, int32 bufferCapacity, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unumf_resultNextFieldPosition(in UFormattedNumber uresult, out UFieldPosition ufpos, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_resultGetAllFieldPositions(in UFormattedNumber uresult, out UFieldPositionIterator ufpositer, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_close(out UNumberFormatter uformatter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumf_closeResult(out UFormattedNumber uresult);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNumberingSystem* unumsys_open(PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UNumberingSystem* unumsys_openByName(PSTR name, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void unumsys_close(out UNumberingSystem unumsys);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* unumsys_openAvailableNames(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR unumsys_getName(in UNumberingSystem unumsys);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 unumsys_isAlgorithmic(in UNumberingSystem unumsys);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unumsys_getRadix(in UNumberingSystem unumsys);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 unumsys_getDescription(in UNumberingSystem unumsys, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UPluralRules* uplrules_open(PSTR locale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UPluralRules* uplrules_openForType(PSTR locale, UPluralType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uplrules_close(out UPluralRules uplrules);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uplrules_select(in UPluralRules uplrules, double number, out uint16 keyword, int32 capacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uplrules_selectFormatted(in UPluralRules uplrules, in UFormattedNumber number, out uint16 keyword, int32 capacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uplrules_getKeywords(in UPluralRules uplrules, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegularExpression* uregex_open(in uint16 pattern, int32 patternLength, uint32 flags, out UParseError pe, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegularExpression* uregex_openUText(out UText pattern, uint32 flags, out UParseError pe, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegularExpression* uregex_openC(PSTR pattern, uint32 flags, out UParseError pe, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_close(out URegularExpression regexp);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegularExpression* uregex_clone(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* uregex_pattern(in URegularExpression regexp, out int32 patLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_patternUText(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_flags(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setText(out URegularExpression regexp, in uint16 text, int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setUText(out URegularExpression regexp, out UText text, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* uregex_getText(out URegularExpression regexp, out int32 textLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_getUText(out URegularExpression regexp, out UText dest, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_refreshUText(out URegularExpression regexp, out UText text, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_matches(out URegularExpression regexp, int32 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_matches64(out URegularExpression regexp, int64 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_lookingAt(out URegularExpression regexp, int32 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_lookingAt64(out URegularExpression regexp, int64 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_find(out URegularExpression regexp, int32 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_find64(out URegularExpression regexp, int64 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_findNext(out URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_groupCount(out URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_groupNumberFromName(out URegularExpression regexp, in uint16 groupName, int32 nameLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_groupNumberFromCName(out URegularExpression regexp, PSTR groupName, int32 nameLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_group(out URegularExpression regexp, int32 groupNum, out uint16 dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_groupUText(out URegularExpression regexp, int32 groupNum, out UText dest, out int64 groupLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_start(out URegularExpression regexp, int32 groupNum, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 uregex_start64(out URegularExpression regexp, int32 groupNum, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_end(out URegularExpression regexp, int32 groupNum, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 uregex_end64(out URegularExpression regexp, int32 groupNum, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_reset(out URegularExpression regexp, int32 index, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_reset64(out URegularExpression regexp, int64 index, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setRegion(out URegularExpression regexp, int32 regionStart, int32 regionLimit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setRegion64(out URegularExpression regexp, int64 regionStart, int64 regionLimit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setRegionAndStart(out URegularExpression regexp, int64 regionStart, int64 regionLimit, int64 startIndex, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_regionStart(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 uregex_regionStart64(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_regionEnd(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 uregex_regionEnd64(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_hasTransparentBounds(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_useTransparentBounds(out URegularExpression regexp, int8 b, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_hasAnchoringBounds(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_useAnchoringBounds(out URegularExpression regexp, int8 b, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_hitEnd(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregex_requireEnd(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_replaceAll(out URegularExpression regexp, in uint16 replacementText, int32 replacementLength, out uint16 destBuf, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_replaceAllUText(out URegularExpression regexp, out UText replacement, out UText dest, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_replaceFirst(out URegularExpression regexp, in uint16 replacementText, int32 replacementLength, out uint16 destBuf, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_replaceFirstUText(out URegularExpression regexp, out UText replacement, out UText dest, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_appendReplacement(out URegularExpression regexp, in uint16 replacementText, int32 replacementLength, out uint16* destBuf, out int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_appendReplacementUText(out URegularExpression regexp, out UText replacementText, out UText dest, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_appendTail(out URegularExpression regexp, out uint16* destBuf, out int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UText* uregex_appendTailUText(out URegularExpression regexp, out UText dest, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_split(out URegularExpression regexp, out uint16 destBuf, int32 destCapacity, out int32 requiredCapacity, out uint16* destFields, int32 destFieldsCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_splitUText(out URegularExpression regexp, out UText* destFields, int32 destFieldsCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setTimeLimit(out URegularExpression regexp, int32 limit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_getTimeLimit(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setStackLimit(out URegularExpression regexp, int32 limit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregex_getStackLimit(in URegularExpression regexp, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setMatchCallback(out URegularExpression regexp, URegexMatchCallback callback, void* context, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_getMatchCallback(in URegularExpression regexp, out URegexMatchCallback callback, void** context, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_setFindProgressCallback(out URegularExpression regexp, URegexFindProgressCallback callback, void* context, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uregex_getFindProgressCallback(in URegularExpression regexp, out URegexFindProgressCallback callback, void** context, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegion* uregion_getRegionFromCode(PSTR regionCode, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegion* uregion_getRegionFromNumericCode(int32 code, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uregion_getAvailable(URegionType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregion_areEqual(in URegion uregion, in URegion otherRegion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegion* uregion_getContainingRegion(in URegion uregion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegion* uregion_getContainingRegionOfType(in URegion uregion, URegionType type);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uregion_getContainedRegions(in URegion uregion, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uregion_getContainedRegionsOfType(in URegion uregion, URegionType type, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int8 uregion_contains(in URegion uregion, in URegion otherRegion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* uregion_getPreferredValues(in URegion uregion, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uregion_getRegionCode(in URegion uregion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uregion_getNumericCode(in URegion uregion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URegionType uregion_getType(in URegion uregion);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URelativeDateTimeFormatter* ureldatefmt_open(PSTR locale, void** nfToAdopt, UDateRelativeDateTimeFormatterStyle width, UDisplayContext capitalizationContext, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ureldatefmt_close(out URelativeDateTimeFormatter reldatefmt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedRelativeDateTime* ureldatefmt_openResult(out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UFormattedValue* ureldatefmt_resultAsValue(in UFormattedRelativeDateTime ufrdt, out UErrorCode ec);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ureldatefmt_closeResult(out UFormattedRelativeDateTime ufrdt);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ureldatefmt_formatNumeric(in URelativeDateTimeFormatter reldatefmt, double offset, URelativeDateTimeUnit unit, out uint16 result, int32 resultCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ureldatefmt_formatNumericToResult(in URelativeDateTimeFormatter reldatefmt, double offset, URelativeDateTimeUnit unit, out UFormattedRelativeDateTime result, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ureldatefmt_format(in URelativeDateTimeFormatter reldatefmt, double offset, URelativeDateTimeUnit unit, out uint16 result, int32 resultCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ureldatefmt_formatToResult(in URelativeDateTimeFormatter reldatefmt, double offset, URelativeDateTimeUnit unit, out UFormattedRelativeDateTime result, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ureldatefmt_combineDateAndTime(in URelativeDateTimeFormatter reldatefmt, in uint16 relativeDateString, int32 relativeDateStringLen, in uint16 timeString, int32 timeStringLen, out uint16 result, int32 resultCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UStringSearch* usearch_open(in uint16 pattern, int32 patternlength, in uint16 text, int32 textlength, PSTR locale, out UBreakIterator breakiter, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UStringSearch* usearch_openFromCollator(in uint16 pattern, int32 patternlength, in uint16 text, int32 textlength, in UCollator collator, out UBreakIterator breakiter, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_close(out UStringSearch searchiter);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setOffset(out UStringSearch strsrch, int32 position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_getOffset(in UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setAttribute(out UStringSearch strsrch, USearchAttribute attribute, USearchAttributeValue value, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USearchAttributeValue usearch_getAttribute(in UStringSearch strsrch, USearchAttribute attribute);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_getMatchedStart(in UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_getMatchedLength(in UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_getMatchedText(in UStringSearch strsrch, out uint16 result, int32 resultCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setBreakIterator(out UStringSearch strsrch, out UBreakIterator breakiter, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UBreakIterator* usearch_getBreakIterator(in UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setText(out UStringSearch strsrch, in uint16 text, int32 textlength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* usearch_getText(in UStringSearch strsrch, out int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UCollator* usearch_getCollator(in UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setCollator(out UStringSearch strsrch, in UCollator collator, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_setPattern(out UStringSearch strsrch, in uint16 pattern, int32 patternlength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* usearch_getPattern(in UStringSearch strsrch, out int32 length);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_first(out UStringSearch strsrch, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_following(out UStringSearch strsrch, int32 position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_last(out UStringSearch strsrch, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_preceding(out UStringSearch strsrch, int32 position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_next(out UStringSearch strsrch, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 usearch_previous(out UStringSearch strsrch, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void usearch_reset(out UStringSearch strsrch);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USpoofChecker* uspoof_open(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USpoofChecker* uspoof_openFromSerialized(void* data, int32 length, out int32 pActualLength, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USpoofChecker* uspoof_openFromSource(PSTR confusables, int32 confusablesLen, PSTR confusablesWholeScript, int32 confusablesWholeScriptLen, out int32 errType, out UParseError pe, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_close(out USpoofChecker sc);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USpoofChecker* uspoof_clone(in USpoofChecker sc, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_setChecks(out USpoofChecker sc, int32 checks, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_getChecks(in USpoofChecker sc, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_setRestrictionLevel(out USpoofChecker sc, URestrictionLevel restrictionLevel);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URestrictionLevel uspoof_getRestrictionLevel(in USpoofChecker sc);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_setAllowedLocales(out USpoofChecker sc, PSTR localesList, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR uspoof_getAllowedLocales(out USpoofChecker sc, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_setAllowedChars(out USpoofChecker sc, in USet chars, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uspoof_getAllowedChars(in USpoofChecker sc, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_check(in USpoofChecker sc, in uint16 id, int32 length, out int32 position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_checkUTF8(in USpoofChecker sc, PSTR id, int32 length, out int32 position, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_check2(in USpoofChecker sc, in uint16 id, int32 length, out USpoofCheckResult checkResult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_check2UTF8(in USpoofChecker sc, PSTR id, int32 length, out USpoofCheckResult checkResult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USpoofCheckResult* uspoof_openCheckResult(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void uspoof_closeCheckResult(out USpoofCheckResult checkResult);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_getCheckResultChecks(in USpoofCheckResult checkResult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern URestrictionLevel uspoof_getCheckResultRestrictionLevel(in USpoofCheckResult checkResult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uspoof_getCheckResultNumerics(in USpoofCheckResult checkResult, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_areConfusable(in USpoofChecker sc, in uint16 id1, int32 length1, in uint16 id2, int32 length2, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_areConfusableUTF8(in USpoofChecker sc, PSTR id1, int32 length1, PSTR id2, int32 length2, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_getSkeleton(in USpoofChecker sc, uint32 type, in uint16 id, int32 length, out uint16 dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_getSkeletonUTF8(in USpoofChecker sc, uint32 type, PSTR id, int32 length, PSTR dest, int32 destCapacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uspoof_getInclusionSet(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* uspoof_getRecommendedSet(out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 uspoof_serialize(out USpoofChecker sc, void* data, int32 capacity, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utmscale_getTimeScaleValue(UDateTimeScale timeScale, UTimeScaleValue value, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utmscale_fromInt64(int64 otherTime, UDateTimeScale timeScale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int64 utmscale_toInt64(int64 universalTime, UDateTimeScale timeScale, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** utrans_openU(in uint16 id, int32 idLength, UTransDirection dir, in uint16 rules, int32 rulesLength, out UParseError parseError, out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** utrans_openInverse(void** trans, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void** utrans_clone(void** trans, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_close(void** trans);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint16* utrans_getUnicodeID(void** trans, out int32 resultLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_register(void** adoptedTrans, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_unregisterID(in uint16 id, int32 idLength);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_setFilter(void** trans, in uint16 filterPattern, int32 filterPatternLen, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utrans_countAvailableIDs();
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern UEnumeration* utrans_openIDs(out UErrorCode pErrorCode);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_trans(void** trans, void** rep, in UReplaceableCallbacks repFunc, int32 start, out int32 limit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_transIncremental(void** trans, void** rep, in UReplaceableCallbacks repFunc, out UTransPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_transUChars(void** trans, out uint16 text, out int32 textLength, int32 textCapacity, int32 start, out int32 limit, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void utrans_transIncrementalUChars(void** trans, out uint16 text, out int32 textLength, int32 textCapacity, out UTransPosition pos, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 utrans_toRules(void** trans, int8 escapeUnprintable, out uint16 result, int32 resultLength, out UErrorCode status);
	[Import("icu.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern USet* utrans_getSourceSet(void** trans, int8 ignoreFilter, out USet fillIn, out UErrorCode status);
	[Import("bcp47mrm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetDistanceOfClosestLanguageInList(PWSTR pszLanguage, PWSTR pszLanguagesList, char16 wchListDelimiter, out double pClosestDistance);
	[Import("bcp47mrm.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8 IsWellFormedTag(PWSTR pszTag);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 FindStringOrdinal(uint32 dwFindStringOrdinalFlags, char16* lpStringSource, int32 cchSource, char16* lpStringValue, int32 cchValue, BOOL bIgnoreCase);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrcmpA(PSTR lpString1, PSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrcmpW(PWSTR lpString1, PWSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrcmpiA(PSTR lpString1, PSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrcmpiW(PWSTR lpString1, PWSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR lstrcpynA(uint8* lpString1, PSTR lpString2, int32 iMaxLength);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR lstrcpynW(char16* lpString1, PWSTR lpString2, int32 iMaxLength);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR lstrcpyA(PSTR lpString1, PSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR lstrcpyW(PWSTR lpString1, PWSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PSTR lstrcatA(PSTR lpString1, PSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR lstrcatW(PWSTR lpString1, PWSTR lpString2);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrlenA(PSTR lpString);
	[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 lstrlenW(PWSTR lpString);
	[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsTextUnicode(void* lpv, int32 iSize, IS_TEXT_UNICODE_RESULT* lpiResult);
	#endregion
}
