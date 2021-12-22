using System;

// namespace UI.Input.Ime
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid CLSID_VERSION_DEPENDENT_MSIME_JAPANESE = .(0x6a91029e, 0xaa49, 0x471b, 0xae, 0xe7, 0x7d, 0x33, 0x27, 0x85, 0x66, 0x0d);
		public const HRESULT IFEC_S_ALREADY_DEFAULT = 291840;
		public const uint32 FELANG_REQ_CONV = 65536;
		public const uint32 FELANG_REQ_RECONV = 131072;
		public const uint32 FELANG_REQ_REV = 196608;
		public const uint32 FELANG_CMODE_MONORUBY = 2;
		public const uint32 FELANG_CMODE_NOPRUNING = 4;
		public const uint32 FELANG_CMODE_KATAKANAOUT = 8;
		public const uint32 FELANG_CMODE_HIRAGANAOUT = 0;
		public const uint32 FELANG_CMODE_HALFWIDTHOUT = 16;
		public const uint32 FELANG_CMODE_FULLWIDTHOUT = 32;
		public const uint32 FELANG_CMODE_BOPOMOFO = 64;
		public const uint32 FELANG_CMODE_HANGUL = 128;
		public const uint32 FELANG_CMODE_PINYIN = 256;
		public const uint32 FELANG_CMODE_PRECONV = 512;
		public const uint32 FELANG_CMODE_RADICAL = 1024;
		public const uint32 FELANG_CMODE_UNKNOWNREADING = 2048;
		public const uint32 FELANG_CMODE_MERGECAND = 4096;
		public const uint32 FELANG_CMODE_ROMAN = 8192;
		public const uint32 FELANG_CMODE_BESTFIRST = 16384;
		public const uint32 FELANG_CMODE_USENOREVWORDS = 32768;
		public const uint32 FELANG_CMODE_NONE = 16777216;
		public const uint32 FELANG_CMODE_PLAURALCLAUSE = 33554432;
		public const uint32 FELANG_CMODE_SINGLECONVERT = 67108864;
		public const uint32 FELANG_CMODE_AUTOMATIC = 134217728;
		public const uint32 FELANG_CMODE_PHRASEPREDICT = 268435456;
		public const uint32 FELANG_CMODE_CONVERSATION = 536870912;
		public const uint32 FELANG_CMODE_NAME = 268435456;
		public const uint32 FELANG_CMODE_NOINVISIBLECHAR = 1073741824;
		public const uint32 E_NOCAND = 48;
		public const uint32 E_NOTENOUGH_BUFFER = 49;
		public const uint32 E_NOTENOUGH_WDD = 50;
		public const uint32 E_LARGEINPUT = 51;
		public const uint32 FELANG_CLMN_WBREAK = 1;
		public const uint32 FELANG_CLMN_NOWBREAK = 2;
		public const uint32 FELANG_CLMN_PBREAK = 4;
		public const uint32 FELANG_CLMN_NOPBREAK = 8;
		public const uint32 FELANG_CLMN_FIXR = 16;
		public const uint32 FELANG_CLMN_FIXD = 32;
		public const uint32 FELANG_INVALD_PO = 65535;
		public const uint32 IFED_POS_NONE = 0;
		public const uint32 IFED_POS_NOUN = 1;
		public const uint32 IFED_POS_VERB = 2;
		public const uint32 IFED_POS_ADJECTIVE = 4;
		public const uint32 IFED_POS_ADJECTIVE_VERB = 8;
		public const uint32 IFED_POS_ADVERB = 16;
		public const uint32 IFED_POS_ADNOUN = 32;
		public const uint32 IFED_POS_CONJUNCTION = 64;
		public const uint32 IFED_POS_INTERJECTION = 128;
		public const uint32 IFED_POS_INDEPENDENT = 255;
		public const uint32 IFED_POS_INFLECTIONALSUFFIX = 256;
		public const uint32 IFED_POS_PREFIX = 512;
		public const uint32 IFED_POS_SUFFIX = 1024;
		public const uint32 IFED_POS_AFFIX = 1536;
		public const uint32 IFED_POS_TANKANJI = 2048;
		public const uint32 IFED_POS_IDIOMS = 4096;
		public const uint32 IFED_POS_SYMBOLS = 8192;
		public const uint32 IFED_POS_PARTICLE = 16384;
		public const uint32 IFED_POS_AUXILIARY_VERB = 32768;
		public const uint32 IFED_POS_SUB_VERB = 65536;
		public const uint32 IFED_POS_DEPENDENT = 114688;
		public const uint32 IFED_POS_ALL = 131071;
		public const uint32 IFED_SELECT_NONE = 0;
		public const uint32 IFED_SELECT_READING = 1;
		public const uint32 IFED_SELECT_DISPLAY = 2;
		public const uint32 IFED_SELECT_POS = 4;
		public const uint32 IFED_SELECT_COMMENT = 8;
		public const uint32 IFED_SELECT_ALL = 15;
		public const uint32 IFED_REG_NONE = 0;
		public const uint32 IFED_REG_USER = 1;
		public const uint32 IFED_REG_AUTO = 2;
		public const uint32 IFED_REG_GRAMMAR = 4;
		public const uint32 IFED_REG_ALL = 7;
		public const uint32 IFED_TYPE_NONE = 0;
		public const uint32 IFED_TYPE_GENERAL = 1;
		public const uint32 IFED_TYPE_NAMEPLACE = 2;
		public const uint32 IFED_TYPE_SPEECH = 4;
		public const uint32 IFED_TYPE_REVERSE = 8;
		public const uint32 IFED_TYPE_ENGLISH = 16;
		public const uint32 IFED_TYPE_ALL = 31;
		public const HRESULT IFED_S_MORE_ENTRIES = 291328;
		public const HRESULT IFED_S_EMPTY_DICTIONARY = 291329;
		public const HRESULT IFED_S_WORD_EXISTS = 291330;
		public const HRESULT IFED_S_COMMENT_CHANGED = 291331;
		public const HRESULT IFED_E_NOT_FOUND = -2147192064;
		public const HRESULT IFED_E_INVALID_FORMAT = -2147192063;
		public const HRESULT IFED_E_OPEN_FAILED = -2147192062;
		public const HRESULT IFED_E_WRITE_FAILED = -2147192061;
		public const HRESULT IFED_E_NO_ENTRY = -2147192060;
		public const HRESULT IFED_E_REGISTER_FAILED = -2147192059;
		public const HRESULT IFED_E_NOT_USER_DIC = -2147192058;
		public const HRESULT IFED_E_NOT_SUPPORTED = -2147192057;
		public const HRESULT IFED_E_USER_COMMENT = -2147192056;
		public const HRESULT IFED_E_REGISTER_ILLEGAL_POS = -2147192055;
		public const HRESULT IFED_E_REGISTER_IMPROPER_WORD = -2147192054;
		public const HRESULT IFED_E_REGISTER_DISCONNECTED = -2147192053;
		public const uint32 POS_UNDEFINED = 0;
		public const uint32 JPOS_UNDEFINED = 0;
		public const uint32 JPOS_MEISHI_FUTSU = 100;
		public const uint32 JPOS_MEISHI_SAHEN = 101;
		public const uint32 JPOS_MEISHI_ZAHEN = 102;
		public const uint32 JPOS_MEISHI_KEIYOUDOUSHI = 103;
		public const uint32 JPOS_HUKUSIMEISHI = 104;
		public const uint32 JPOS_MEISA_KEIDOU = 105;
		public const uint32 JPOS_JINMEI = 106;
		public const uint32 JPOS_JINMEI_SEI = 107;
		public const uint32 JPOS_JINMEI_MEI = 108;
		public const uint32 JPOS_CHIMEI = 109;
		public const uint32 JPOS_CHIMEI_KUNI = 110;
		public const uint32 JPOS_CHIMEI_KEN = 111;
		public const uint32 JPOS_CHIMEI_GUN = 112;
		public const uint32 JPOS_CHIMEI_KU = 113;
		public const uint32 JPOS_CHIMEI_SHI = 114;
		public const uint32 JPOS_CHIMEI_MACHI = 115;
		public const uint32 JPOS_CHIMEI_MURA = 116;
		public const uint32 JPOS_CHIMEI_EKI = 117;
		public const uint32 JPOS_SONOTA = 118;
		public const uint32 JPOS_SHAMEI = 119;
		public const uint32 JPOS_SOSHIKI = 120;
		public const uint32 JPOS_KENCHIKU = 121;
		public const uint32 JPOS_BUPPIN = 122;
		public const uint32 JPOS_DAIMEISHI = 123;
		public const uint32 JPOS_DAIMEISHI_NINSHOU = 124;
		public const uint32 JPOS_DAIMEISHI_SHIJI = 125;
		public const uint32 JPOS_KAZU = 126;
		public const uint32 JPOS_KAZU_SURYOU = 127;
		public const uint32 JPOS_KAZU_SUSHI = 128;
		public const uint32 JPOS_5DAN_AWA = 200;
		public const uint32 JPOS_5DAN_KA = 201;
		public const uint32 JPOS_5DAN_GA = 202;
		public const uint32 JPOS_5DAN_SA = 203;
		public const uint32 JPOS_5DAN_TA = 204;
		public const uint32 JPOS_5DAN_NA = 205;
		public const uint32 JPOS_5DAN_BA = 206;
		public const uint32 JPOS_5DAN_MA = 207;
		public const uint32 JPOS_5DAN_RA = 208;
		public const uint32 JPOS_5DAN_AWAUON = 209;
		public const uint32 JPOS_5DAN_KASOKUON = 210;
		public const uint32 JPOS_5DAN_RAHEN = 211;
		public const uint32 JPOS_4DAN_HA = 212;
		public const uint32 JPOS_1DAN = 213;
		public const uint32 JPOS_TOKUSHU_KAHEN = 214;
		public const uint32 JPOS_TOKUSHU_SAHENSURU = 215;
		public const uint32 JPOS_TOKUSHU_SAHEN = 216;
		public const uint32 JPOS_TOKUSHU_ZAHEN = 217;
		public const uint32 JPOS_TOKUSHU_NAHEN = 218;
		public const uint32 JPOS_KURU_KI = 219;
		public const uint32 JPOS_KURU_KITA = 220;
		public const uint32 JPOS_KURU_KITARA = 221;
		public const uint32 JPOS_KURU_KITARI = 222;
		public const uint32 JPOS_KURU_KITAROU = 223;
		public const uint32 JPOS_KURU_KITE = 224;
		public const uint32 JPOS_KURU_KUREBA = 225;
		public const uint32 JPOS_KURU_KO = 226;
		public const uint32 JPOS_KURU_KOI = 227;
		public const uint32 JPOS_KURU_KOYOU = 228;
		public const uint32 JPOS_SURU_SA = 229;
		public const uint32 JPOS_SURU_SI = 230;
		public const uint32 JPOS_SURU_SITA = 231;
		public const uint32 JPOS_SURU_SITARA = 232;
		public const uint32 JPOS_SURU_SIATRI = 233;
		public const uint32 JPOS_SURU_SITAROU = 234;
		public const uint32 JPOS_SURU_SITE = 235;
		public const uint32 JPOS_SURU_SIYOU = 236;
		public const uint32 JPOS_SURU_SUREBA = 237;
		public const uint32 JPOS_SURU_SE = 238;
		public const uint32 JPOS_SURU_SEYO = 239;
		public const uint32 JPOS_KEIYOU = 300;
		public const uint32 JPOS_KEIYOU_GARU = 301;
		public const uint32 JPOS_KEIYOU_GE = 302;
		public const uint32 JPOS_KEIYOU_ME = 303;
		public const uint32 JPOS_KEIYOU_YUU = 304;
		public const uint32 JPOS_KEIYOU_U = 305;
		public const uint32 JPOS_KEIDOU = 400;
		public const uint32 JPOS_KEIDOU_NO = 401;
		public const uint32 JPOS_KEIDOU_TARU = 402;
		public const uint32 JPOS_KEIDOU_GARU = 403;
		public const uint32 JPOS_FUKUSHI = 500;
		public const uint32 JPOS_FUKUSHI_SAHEN = 501;
		public const uint32 JPOS_FUKUSHI_NI = 502;
		public const uint32 JPOS_FUKUSHI_NANO = 503;
		public const uint32 JPOS_FUKUSHI_DA = 504;
		public const uint32 JPOS_FUKUSHI_TO = 505;
		public const uint32 JPOS_FUKUSHI_TOSURU = 506;
		public const uint32 JPOS_RENTAISHI = 600;
		public const uint32 JPOS_RENTAISHI_SHIJI = 601;
		public const uint32 JPOS_SETSUZOKUSHI = 650;
		public const uint32 JPOS_KANDOUSHI = 670;
		public const uint32 JPOS_SETTOU = 700;
		public const uint32 JPOS_SETTOU_KAKU = 701;
		public const uint32 JPOS_SETTOU_SAI = 702;
		public const uint32 JPOS_SETTOU_FUKU = 703;
		public const uint32 JPOS_SETTOU_MI = 704;
		public const uint32 JPOS_SETTOU_DAISHOU = 705;
		public const uint32 JPOS_SETTOU_KOUTEI = 706;
		public const uint32 JPOS_SETTOU_CHOUTAN = 707;
		public const uint32 JPOS_SETTOU_SHINKYU = 708;
		public const uint32 JPOS_SETTOU_JINMEI = 709;
		public const uint32 JPOS_SETTOU_CHIMEI = 710;
		public const uint32 JPOS_SETTOU_SONOTA = 711;
		public const uint32 JPOS_SETTOU_JOSUSHI = 712;
		public const uint32 JPOS_SETTOU_TEINEI_O = 713;
		public const uint32 JPOS_SETTOU_TEINEI_GO = 714;
		public const uint32 JPOS_SETTOU_TEINEI_ON = 715;
		public const uint32 JPOS_SETSUBI = 800;
		public const uint32 JPOS_SETSUBI_TEKI = 801;
		public const uint32 JPOS_SETSUBI_SEI = 802;
		public const uint32 JPOS_SETSUBI_KA = 803;
		public const uint32 JPOS_SETSUBI_CHU = 804;
		public const uint32 JPOS_SETSUBI_FU = 805;
		public const uint32 JPOS_SETSUBI_RYU = 806;
		public const uint32 JPOS_SETSUBI_YOU = 807;
		public const uint32 JPOS_SETSUBI_KATA = 808;
		public const uint32 JPOS_SETSUBI_MEISHIRENDAKU = 809;
		public const uint32 JPOS_SETSUBI_JINMEI = 810;
		public const uint32 JPOS_SETSUBI_CHIMEI = 811;
		public const uint32 JPOS_SETSUBI_KUNI = 812;
		public const uint32 JPOS_SETSUBI_KEN = 813;
		public const uint32 JPOS_SETSUBI_GUN = 814;
		public const uint32 JPOS_SETSUBI_KU = 815;
		public const uint32 JPOS_SETSUBI_SHI = 816;
		public const uint32 JPOS_SETSUBI_MACHI = 817;
		public const uint32 JPOS_SETSUBI_CHOU = 818;
		public const uint32 JPOS_SETSUBI_MURA = 819;
		public const uint32 JPOS_SETSUBI_SON = 820;
		public const uint32 JPOS_SETSUBI_EKI = 821;
		public const uint32 JPOS_SETSUBI_SONOTA = 822;
		public const uint32 JPOS_SETSUBI_SHAMEI = 823;
		public const uint32 JPOS_SETSUBI_SOSHIKI = 824;
		public const uint32 JPOS_SETSUBI_KENCHIKU = 825;
		public const uint32 JPOS_RENYOU_SETSUBI = 826;
		public const uint32 JPOS_SETSUBI_JOSUSHI = 827;
		public const uint32 JPOS_SETSUBI_JOSUSHIPLUS = 828;
		public const uint32 JPOS_SETSUBI_JIKAN = 829;
		public const uint32 JPOS_SETSUBI_JIKANPLUS = 830;
		public const uint32 JPOS_SETSUBI_TEINEI = 831;
		public const uint32 JPOS_SETSUBI_SAN = 832;
		public const uint32 JPOS_SETSUBI_KUN = 833;
		public const uint32 JPOS_SETSUBI_SAMA = 834;
		public const uint32 JPOS_SETSUBI_DONO = 835;
		public const uint32 JPOS_SETSUBI_FUKUSU = 836;
		public const uint32 JPOS_SETSUBI_TACHI = 837;
		public const uint32 JPOS_SETSUBI_RA = 838;
		public const uint32 JPOS_TANKANJI = 900;
		public const uint32 JPOS_TANKANJI_KAO = 901;
		public const uint32 JPOS_KANYOUKU = 902;
		public const uint32 JPOS_DOKURITSUGO = 903;
		public const uint32 JPOS_FUTEIGO = 904;
		public const uint32 JPOS_KIGOU = 905;
		public const uint32 JPOS_EIJI = 906;
		public const uint32 JPOS_KUTEN = 907;
		public const uint32 JPOS_TOUTEN = 908;
		public const uint32 JPOS_KANJI = 909;
		public const uint32 JPOS_OPENBRACE = 910;
		public const uint32 JPOS_CLOSEBRACE = 911;
		public const uint32 JPOS_YOKUSEI = 912;
		public const uint32 JPOS_TANSHUKU = 913;
		public const uint32 VERSION_ID_JAPANESE = 16777216;
		public const uint32 VERSION_ID_KOREAN = 33554432;
		public const uint32 VERSION_ID_CHINESE_TRADITIONAL = 67108864;
		public const uint32 VERSION_ID_CHINESE_SIMPLIFIED = 134217728;
		public const uint32 FID_MSIME_VERSION = 0;
		public const uint32 VERSION_MOUSE_OPERATION = 1;
		public const int32 IMEMOUSERET_NOTHANDLED = -1;
		public const uint32 IMEMOUSE_VERSION = 255;
		public const uint32 IMEMOUSE_NONE = 0;
		public const uint32 IMEMOUSE_LDOWN = 1;
		public const uint32 IMEMOUSE_RDOWN = 2;
		public const uint32 IMEMOUSE_MDOWN = 4;
		public const uint32 IMEMOUSE_WUP = 16;
		public const uint32 IMEMOUSE_WDOWN = 32;
		public const uint32 FID_RECONVERT_VERSION = 268435456;
		public const uint32 VERSION_RECONVERSION = 1;
		public const uint32 VERSION_DOCUMENTFEED = 1;
		public const uint32 VERSION_QUERYPOSITION = 1;
		public const uint32 VERSION_MODEBIAS = 1;
		public const uint32 MODEBIAS_GETVERSION = 0;
		public const uint32 MODEBIAS_SETVALUE = 1;
		public const uint32 MODEBIAS_GETVALUE = 2;
		public const uint32 MODEBIASMODE_DEFAULT = 0;
		public const uint32 MODEBIASMODE_FILENAME = 1;
		public const uint32 MODEBIASMODE_READING = 2;
		public const uint32 MODEBIASMODE_DIGIT = 4;
		public const uint32 SHOWIMEPAD_DEFAULT = 0;
		public const uint32 SHOWIMEPAD_CATEGORY = 1;
		public const uint32 SHOWIMEPAD_GUID = 2;
		public const uint32 FID_MSIME_KMS_VERSION = 1;
		public const uint32 FID_MSIME_KMS_INIT = 2;
		public const uint32 FID_MSIME_KMS_TERM = 3;
		public const uint32 FID_MSIME_KMS_DEL_KEYLIST = 4;
		public const uint32 FID_MSIME_KMS_NOTIFY = 5;
		public const uint32 FID_MSIME_KMS_GETMAP = 6;
		public const uint32 FID_MSIME_KMS_INVOKE = 7;
		public const uint32 FID_MSIME_KMS_SETMAP = 8;
		public const uint32 FID_MSIME_KMS_FUNCDESC = 9;
		public const uint32 FID_MSIME_KMS_GETMAPSEAMLESS = 10;
		public const uint32 FID_MSIME_KMS_GETMAPFAST = 11;
		public const uint32 IMEKMS_NOCOMPOSITION = 0;
		public const uint32 IMEKMS_COMPOSITION = 1;
		public const uint32 IMEKMS_SELECTION = 2;
		public const uint32 IMEKMS_IMEOFF = 3;
		public const uint32 IMEKMS_2NDLEVEL = 4;
		public const uint32 IMEKMS_INPTGL = 5;
		public const uint32 IMEKMS_CANDIDATE = 6;
		public const uint32 IMEKMS_TYPECAND = 7;
		public const uint32 RECONVOPT_NONE = 0;
		public const uint32 RECONVOPT_USECANCELNOTIFY = 1;
		public const uint32 GCSEX_CANCELRECONVERT = 268435456;
		public const uint32 STYLE_DESCRIPTION_SIZE = 32;
		public const uint32 IMEMENUITEM_STRING_SIZE = 80;
		public const uint32 IMC_GETCANDIDATEPOS = 7;
		public const uint32 IMC_SETCANDIDATEPOS = 8;
		public const uint32 IMC_GETCOMPOSITIONFONT = 9;
		public const uint32 IMC_SETCOMPOSITIONFONT = 10;
		public const uint32 IMC_GETCOMPOSITIONWINDOW = 11;
		public const uint32 IMC_SETCOMPOSITIONWINDOW = 12;
		public const uint32 IMC_GETSTATUSWINDOWPOS = 15;
		public const uint32 IMC_SETSTATUSWINDOWPOS = 16;
		public const uint32 IMC_CLOSESTATUSWINDOW = 33;
		public const uint32 IMC_OPENSTATUSWINDOW = 34;
		public const uint32 NI_FINALIZECONVERSIONRESULT = 20;
		public const uint32 ISC_SHOWUICANDIDATEWINDOW = 1;
		public const uint32 ISC_SHOWUICOMPOSITIONWINDOW = 2147483648;
		public const uint32 ISC_SHOWUIGUIDELINE = 1073741824;
		public const uint32 ISC_SHOWUIALLCANDIDATEWINDOW = 15;
		public const uint32 ISC_SHOWUIALL = 3221225487;
		public const uint32 MOD_LEFT = 32768;
		public const uint32 MOD_RIGHT = 16384;
		public const uint32 MOD_ON_KEYUP = 2048;
		public const uint32 MOD_IGNORE_ALL_MODIFIER = 1024;
		public const uint32 IME_CHOTKEY_IME_NONIME_TOGGLE = 16;
		public const uint32 IME_CHOTKEY_SHAPE_TOGGLE = 17;
		public const uint32 IME_CHOTKEY_SYMBOL_TOGGLE = 18;
		public const uint32 IME_JHOTKEY_CLOSE_OPEN = 48;
		public const uint32 IME_KHOTKEY_SHAPE_TOGGLE = 80;
		public const uint32 IME_KHOTKEY_HANJACONVERT = 81;
		public const uint32 IME_KHOTKEY_ENGLISH = 82;
		public const uint32 IME_THOTKEY_IME_NONIME_TOGGLE = 112;
		public const uint32 IME_THOTKEY_SHAPE_TOGGLE = 113;
		public const uint32 IME_THOTKEY_SYMBOL_TOGGLE = 114;
		public const uint32 IME_HOTKEY_DSWITCH_FIRST = 256;
		public const uint32 IME_HOTKEY_DSWITCH_LAST = 287;
		public const uint32 IME_HOTKEY_PRIVATE_FIRST = 512;
		public const uint32 IME_ITHOTKEY_RESEND_RESULTSTR = 512;
		public const uint32 IME_ITHOTKEY_PREVIOUS_COMPOSITION = 513;
		public const uint32 IME_ITHOTKEY_UISTYLE_TOGGLE = 514;
		public const uint32 IME_ITHOTKEY_RECONVERTSTRING = 515;
		public const uint32 IME_HOTKEY_PRIVATE_LAST = 543;
		public const uint32 GCS_COMPREADSTR = 1;
		public const uint32 GCS_COMPREADATTR = 2;
		public const uint32 GCS_COMPREADCLAUSE = 4;
		public const uint32 GCS_COMPSTR = 8;
		public const uint32 GCS_COMPATTR = 16;
		public const uint32 GCS_COMPCLAUSE = 32;
		public const uint32 GCS_CURSORPOS = 128;
		public const uint32 GCS_DELTASTART = 256;
		public const uint32 GCS_RESULTREADSTR = 512;
		public const uint32 GCS_RESULTREADCLAUSE = 1024;
		public const uint32 GCS_RESULTSTR = 2048;
		public const uint32 GCS_RESULTCLAUSE = 4096;
		public const uint32 CS_INSERTCHAR = 8192;
		public const uint32 CS_NOMOVECARET = 16384;
		public const uint32 IMEVER_0310 = 196618;
		public const uint32 IMEVER_0400 = 262144;
		public const uint32 IME_PROP_AT_CARET = 65536;
		public const uint32 IME_PROP_SPECIAL_UI = 131072;
		public const uint32 IME_PROP_CANDLIST_START_FROM_1 = 262144;
		public const uint32 IME_PROP_UNICODE = 524288;
		public const uint32 IME_PROP_COMPLETE_ON_UNSELECT = 1048576;
		public const uint32 UI_CAP_2700 = 1;
		public const uint32 UI_CAP_ROT90 = 2;
		public const uint32 UI_CAP_ROTANY = 4;
		public const uint32 SCS_CAP_COMPSTR = 1;
		public const uint32 SCS_CAP_MAKEREAD = 2;
		public const uint32 SCS_CAP_SETRECONVERTSTRING = 4;
		public const uint32 SELECT_CAP_CONVERSION = 1;
		public const uint32 SELECT_CAP_SENTENCE = 2;
		public const uint32 GL_LEVEL_NOGUIDELINE = 0;
		public const uint32 GL_LEVEL_FATAL = 1;
		public const uint32 GL_LEVEL_ERROR = 2;
		public const uint32 GL_LEVEL_WARNING = 3;
		public const uint32 GL_LEVEL_INFORMATION = 4;
		public const uint32 GL_ID_UNKNOWN = 0;
		public const uint32 GL_ID_NOMODULE = 1;
		public const uint32 GL_ID_NODICTIONARY = 16;
		public const uint32 GL_ID_CANNOTSAVE = 17;
		public const uint32 GL_ID_NOCONVERT = 32;
		public const uint32 GL_ID_TYPINGERROR = 33;
		public const uint32 GL_ID_TOOMANYSTROKE = 34;
		public const uint32 GL_ID_READINGCONFLICT = 35;
		public const uint32 GL_ID_INPUTREADING = 36;
		public const uint32 GL_ID_INPUTRADICAL = 37;
		public const uint32 GL_ID_INPUTCODE = 38;
		public const uint32 GL_ID_INPUTSYMBOL = 39;
		public const uint32 GL_ID_CHOOSECANDIDATE = 40;
		public const uint32 GL_ID_REVERSECONVERSION = 41;
		public const uint32 GL_ID_PRIVATE_FIRST = 32768;
		public const uint32 GL_ID_PRIVATE_LAST = 65535;
		public const uint32 ATTR_INPUT = 0;
		public const uint32 ATTR_TARGET_CONVERTED = 1;
		public const uint32 ATTR_CONVERTED = 2;
		public const uint32 ATTR_TARGET_NOTCONVERTED = 3;
		public const uint32 ATTR_INPUT_ERROR = 4;
		public const uint32 ATTR_FIXEDCONVERTED = 5;
		public const uint32 CFS_DEFAULT = 0;
		public const uint32 CFS_RECT = 1;
		public const uint32 CFS_POINT = 2;
		public const uint32 CFS_FORCE_POSITION = 32;
		public const uint32 CFS_CANDIDATEPOS = 64;
		public const uint32 CFS_EXCLUDE = 128;
		public const uint32 IME_CMODE_SOFTKBD = 128;
		public const uint32 IME_CMODE_NOCONVERSION = 256;
		public const uint32 IME_CMODE_EUDC = 512;
		public const uint32 IME_CMODE_SYMBOL = 1024;
		public const uint32 IME_CMODE_FIXED = 2048;
		public const uint32 IME_CMODE_RESERVED = 4026531840;
		public const uint32 IME_SMODE_NONE = 0;
		public const uint32 IME_SMODE_PLAURALCLAUSE = 1;
		public const uint32 IME_SMODE_SINGLECONVERT = 2;
		public const uint32 IME_SMODE_AUTOMATIC = 4;
		public const uint32 IME_SMODE_PHRASEPREDICT = 8;
		public const uint32 IME_SMODE_CONVERSATION = 16;
		public const uint32 IME_SMODE_RESERVED = 61440;
		public const uint32 IME_CAND_UNKNOWN = 0;
		public const uint32 IME_CAND_READ = 1;
		public const uint32 IME_CAND_CODE = 2;
		public const uint32 IME_CAND_MEANING = 3;
		public const uint32 IME_CAND_RADICAL = 4;
		public const uint32 IME_CAND_STROKE = 5;
		public const uint32 IMN_CLOSESTATUSWINDOW = 1;
		public const uint32 IMN_OPENSTATUSWINDOW = 2;
		public const uint32 IMN_CHANGECANDIDATE = 3;
		public const uint32 IMN_CLOSECANDIDATE = 4;
		public const uint32 IMN_OPENCANDIDATE = 5;
		public const uint32 IMN_SETCONVERSIONMODE = 6;
		public const uint32 IMN_SETSENTENCEMODE = 7;
		public const uint32 IMN_SETOPENSTATUS = 8;
		public const uint32 IMN_SETCANDIDATEPOS = 9;
		public const uint32 IMN_SETCOMPOSITIONFONT = 10;
		public const uint32 IMN_SETCOMPOSITIONWINDOW = 11;
		public const uint32 IMN_SETSTATUSWINDOWPOS = 12;
		public const uint32 IMN_GUIDELINE = 13;
		public const uint32 IMN_PRIVATE = 14;
		public const uint32 IMR_COMPOSITIONWINDOW = 1;
		public const uint32 IMR_CANDIDATEWINDOW = 2;
		public const uint32 IMR_COMPOSITIONFONT = 3;
		public const uint32 IMR_RECONVERTSTRING = 4;
		public const uint32 IMR_CONFIRMRECONVERTSTRING = 5;
		public const uint32 IMR_QUERYCHARPOSITION = 6;
		public const uint32 IMR_DOCUMENTFEED = 7;
		public const int32 IMM_ERROR_NODATA = -1;
		public const int32 IMM_ERROR_GENERAL = -2;
		public const uint32 IME_CONFIG_GENERAL = 1;
		public const uint32 IME_CONFIG_REGISTERWORD = 2;
		public const uint32 IME_CONFIG_SELECTDICTIONARY = 3;
		public const uint32 IME_ESC_QUERY_SUPPORT = 3;
		public const uint32 IME_ESC_RESERVED_FIRST = 4;
		public const uint32 IME_ESC_RESERVED_LAST = 2047;
		public const uint32 IME_ESC_PRIVATE_FIRST = 2048;
		public const uint32 IME_ESC_PRIVATE_LAST = 4095;
		public const uint32 IME_ESC_SEQUENCE_TO_INTERNAL = 4097;
		public const uint32 IME_ESC_GET_EUDC_DICTIONARY = 4099;
		public const uint32 IME_ESC_SET_EUDC_DICTIONARY = 4100;
		public const uint32 IME_ESC_MAX_KEY = 4101;
		public const uint32 IME_ESC_IME_NAME = 4102;
		public const uint32 IME_ESC_SYNC_HOTKEY = 4103;
		public const uint32 IME_ESC_HANJA_MODE = 4104;
		public const uint32 IME_ESC_AUTOMATA = 4105;
		public const uint32 IME_ESC_PRIVATE_HOTKEY = 4106;
		public const uint32 IME_ESC_GETHELPFILENAME = 4107;
		public const uint32 IME_REGWORD_STYLE_EUDC = 1;
		public const uint32 IME_REGWORD_STYLE_USER_FIRST = 2147483648;
		public const uint32 IME_REGWORD_STYLE_USER_LAST = 4294967295;
		public const uint32 IACE_CHILDREN = 1;
		public const uint32 IACE_DEFAULT = 16;
		public const uint32 IACE_IGNORENOCONTEXT = 32;
		public const uint32 IGIMIF_RIGHTMENU = 1;
		public const uint32 IGIMII_CMODE = 1;
		public const uint32 IGIMII_SMODE = 2;
		public const uint32 IGIMII_CONFIGURE = 4;
		public const uint32 IGIMII_TOOLS = 8;
		public const uint32 IGIMII_HELP = 16;
		public const uint32 IGIMII_OTHER = 32;
		public const uint32 IGIMII_INPUTTOOLS = 64;
		public const uint32 IMFT_RADIOCHECK = 1;
		public const uint32 IMFT_SEPARATOR = 2;
		public const uint32 IMFT_SUBMENU = 4;
		public const uint32 SOFTKEYBOARD_TYPE_T1 = 1;
		public const uint32 SOFTKEYBOARD_TYPE_C1 = 2;
		public const uint32 IMMGWL_IMC = 0;
		public const uint32 IMMGWLP_IMC = 0;
		public const uint32 IMC_SETCONVERSIONMODE = 2;
		public const uint32 IMC_SETSENTENCEMODE = 4;
		public const uint32 IMC_SETOPENSTATUS = 6;
		public const uint32 IMC_GETSOFTKBDFONT = 17;
		public const uint32 IMC_SETSOFTKBDFONT = 18;
		public const uint32 IMC_GETSOFTKBDPOS = 19;
		public const uint32 IMC_SETSOFTKBDPOS = 20;
		public const uint32 IMC_GETSOFTKBDSUBTYPE = 21;
		public const uint32 IMC_SETSOFTKBDSUBTYPE = 22;
		public const uint32 IMC_SETSOFTKBDDATA = 24;
		public const uint32 NI_CONTEXTUPDATED = 3;
		public const uint32 IME_SYSINFO_WINLOGON = 1;
		public const uint32 IME_SYSINFO_WOW16 = 2;
		public const uint32 INIT_STATUSWNDPOS = 1;
		public const uint32 INIT_CONVERSION = 2;
		public const uint32 INIT_SENTENCE = 4;
		public const uint32 INIT_LOGFONT = 8;
		public const uint32 INIT_COMPFORM = 16;
		public const uint32 INIT_SOFTKBDPOS = 32;
		public const uint32 IME_PROP_END_UNLOAD = 1;
		public const uint32 IME_PROP_KBD_CHAR_FIRST = 2;
		public const uint32 IME_PROP_IGNORE_UPKEYS = 4;
		public const uint32 IME_PROP_NEED_ALTKEY = 8;
		public const uint32 IME_PROP_NO_KEYS_ON_CLOSE = 16;
		public const uint32 IME_PROP_ACCEPT_WIDE_VKEY = 32;
		public const uint32 UI_CAP_SOFTKBD = 65536;
		public const uint32 IMN_SOFTKBDDESTROYED = 17;
		public const uint32 IME_UI_CLASS_NAME_SIZE = 16;
		public const uint32 IME_ESC_STRING_BUFFER_SIZE = 80;
		public const Guid CATID_MSIME_IImePadApplet_VER7 = .(0x4a0f8e31, 0xc3ee, 0x11d1, 0xaf, 0xef, 0x00, 0x80, 0x5f, 0x0c, 0x8b, 0x6d);
		public const Guid CATID_MSIME_IImePadApplet_VER80 = .(0x56f7a792, 0xfef1, 0x11d3, 0x84, 0x63, 0x00, 0xc0, 0x4f, 0x7a, 0x06, 0xe5);
		public const Guid CATID_MSIME_IImePadApplet_VER81 = .(0x656520b0, 0xbb88, 0x11d4, 0x84, 0xc0, 0x00, 0xc0, 0x4f, 0x7a, 0x06, 0xe5);
		public const Guid CATID_MSIME_IImePadApplet900 = .(0xfaae51bf, 0x5e5b, 0x4a1d, 0x8d, 0xe1, 0x17, 0xc1, 0xd9, 0xe1, 0x72, 0x8d);
		public const Guid CATID_MSIME_IImePadApplet1000 = .(0xe081e1d6, 0x2389, 0x43cb, 0xb6, 0x6f, 0x60, 0x9f, 0x82, 0x3d, 0x9f, 0x9c);
		public const Guid CATID_MSIME_IImePadApplet1200 = .(0xa47fb5fc, 0x7d15, 0x4223, 0xa7, 0x89, 0xb7, 0x81, 0xbf, 0x9a, 0xe6, 0x67);
		public const Guid CATID_MSIME_IImePadApplet = .(0x7566cad1, 0x4ec9, 0x4478, 0x9f, 0xe9, 0x8e, 0xd7, 0x66, 0x61, 0x9e, 0xdf);
		public const uint32 FEID_NONE = 0;
		public const uint32 FEID_CHINESE_TRADITIONAL = 1;
		public const uint32 FEID_CHINESE_SIMPLIFIED = 2;
		public const uint32 FEID_CHINESE_HONGKONG = 3;
		public const uint32 FEID_CHINESE_SINGAPORE = 4;
		public const uint32 FEID_JAPANESE = 5;
		public const uint32 FEID_KOREAN = 6;
		public const uint32 FEID_KOREAN_JOHAB = 7;
		public const uint32 INFOMASK_NONE = 0;
		public const uint32 INFOMASK_QUERY_CAND = 1;
		public const uint32 INFOMASK_APPLY_CAND = 2;
		public const uint32 INFOMASK_APPLY_CAND_EX = 4;
		public const uint32 INFOMASK_STRING_FIX = 65536;
		public const uint32 INFOMASK_HIDE_CAND = 131072;
		public const uint32 INFOMASK_BLOCK_CAND = 262144;
		public const uint32 IMEFAREASTINFO_TYPE_DEFAULT = 0;
		public const uint32 IMEFAREASTINFO_TYPE_READING = 1;
		public const uint32 IMEFAREASTINFO_TYPE_COMMENT = 2;
		public const uint32 IMEFAREASTINFO_TYPE_COSTTIME = 3;
		public const uint32 CHARINFO_APPLETID_MASK = 4278190080;
		public const uint32 CHARINFO_FEID_MASK = 15728640;
		public const uint32 CHARINFO_CHARID_MASK = 65535;
		public const uint32 MAX_APPLETTITLE = 64;
		public const uint32 MAX_FONTFACE = 32;
		public const int32 IPACFG_NONE = 0;
		public const int32 IPACFG_PROPERTY = 1;
		public const int32 IPACFG_HELP = 2;
		public const int32 IPACFG_TITLE = 65536;
		public const int32 IPACFG_TITLEFONTFACE = 131072;
		public const int32 IPACFG_CATEGORY = 262144;
		public const int32 IPACFG_LANG = 16;
		public const uint32 IPACID_NONE = 0;
		public const uint32 IPACID_SOFTKEY = 1;
		public const uint32 IPACID_HANDWRITING = 2;
		public const uint32 IPACID_STROKESEARCH = 3;
		public const uint32 IPACID_RADICALSEARCH = 4;
		public const uint32 IPACID_SYMBOLSEARCH = 5;
		public const uint32 IPACID_VOICE = 6;
		public const uint32 IPACID_EPWING = 7;
		public const uint32 IPACID_OCR = 8;
		public const uint32 IPACID_CHARLIST = 9;
		public const uint32 IPACID_USER = 256;
		public const uint32 IMEPADREQ_FIRST = 4096;
		public const uint32 IMEPADREQ_INSERTSTRINGCANDIDATE = 4098;
		public const uint32 IMEPADREQ_INSERTITEMCANDIDATE = 4099;
		public const uint32 IMEPADREQ_SENDKEYCONTROL = 4101;
		public const uint32 IMEPADREQ_GETSELECTEDSTRING = 4103;
		public const uint32 IMEPADREQ_SETAPPLETDATA = 4105;
		public const uint32 IMEPADREQ_GETAPPLETDATA = 4106;
		public const uint32 IMEPADREQ_SETTITLEFONT = 4107;
		public const uint32 IMEPADREQ_GETCOMPOSITIONSTRINGID = 4109;
		public const uint32 IMEPADREQ_INSERTSTRINGCANDIDATEINFO = 4110;
		public const uint32 IMEPADREQ_CHANGESTRINGCANDIDATEINFO = 4111;
		public const uint32 IMEPADREQ_INSERTSTRINGINFO = 4114;
		public const uint32 IMEPADREQ_CHANGESTRINGINFO = 4115;
		public const uint32 IMEPADREQ_GETCURRENTUILANGID = 4120;
		public const uint32 IMEPADCTRL_CONVERTALL = 1;
		public const uint32 IMEPADCTRL_DETERMINALL = 2;
		public const uint32 IMEPADCTRL_DETERMINCHAR = 3;
		public const uint32 IMEPADCTRL_CLEARALL = 4;
		public const uint32 IMEPADCTRL_CARETSET = 5;
		public const uint32 IMEPADCTRL_CARETLEFT = 6;
		public const uint32 IMEPADCTRL_CARETRIGHT = 7;
		public const uint32 IMEPADCTRL_CARETTOP = 8;
		public const uint32 IMEPADCTRL_CARETBOTTOM = 9;
		public const uint32 IMEPADCTRL_CARETBACKSPACE = 10;
		public const uint32 IMEPADCTRL_CARETDELETE = 11;
		public const uint32 IMEPADCTRL_PHRASEDELETE = 12;
		public const uint32 IMEPADCTRL_INSERTSPACE = 13;
		public const uint32 IMEPADCTRL_INSERTFULLSPACE = 14;
		public const uint32 IMEPADCTRL_INSERTHALFSPACE = 15;
		public const uint32 IMEPADCTRL_ONIME = 16;
		public const uint32 IMEPADCTRL_OFFIME = 17;
		public const uint32 IMEPADCTRL_ONPRECONVERSION = 18;
		public const uint32 IMEPADCTRL_OFFPRECONVERSION = 19;
		public const uint32 IMEPADCTRL_PHONETICCANDIDATE = 20;
		public const uint32 IMEKEYCTRLMASK_ALT = 1;
		public const uint32 IMEKEYCTRLMASK_CTRL = 2;
		public const uint32 IMEKEYCTRLMASK_SHIFT = 4;
		public const uint32 IMEKEYCTRL_UP = 1;
		public const uint32 IMEKEYCTRL_DOWN = 0;
		public const uint32 IMEPN_FIRST = 256;
		public const uint32 IMEPN_ACTIVATE = 257;
		public const uint32 IMEPN_INACTIVATE = 258;
		public const uint32 IMEPN_SHOW = 260;
		public const uint32 IMEPN_HIDE = 261;
		public const uint32 IMEPN_SIZECHANGING = 262;
		public const uint32 IMEPN_SIZECHANGED = 263;
		public const uint32 IMEPN_CONFIG = 264;
		public const uint32 IMEPN_HELP = 265;
		public const uint32 IMEPN_QUERYCAND = 266;
		public const uint32 IMEPN_APPLYCAND = 267;
		public const uint32 IMEPN_APPLYCANDEX = 268;
		public const uint32 IMEPN_SETTINGCHANGED = 269;
		public const uint32 IMEPN_USER = 356;
		public const int32 IPAWS_ENABLED = 1;
		public const int32 IPAWS_SIZINGNOTIFY = 4;
		public const int32 IPAWS_VERTICALFIXED = 256;
		public const int32 IPAWS_HORIZONTALFIXED = 512;
		public const int32 IPAWS_SIZEFIXED = 768;
		public const int32 IPAWS_MAXWIDTHFIXED = 4096;
		public const int32 IPAWS_MAXHEIGHTFIXED = 8192;
		public const int32 IPAWS_MAXSIZEFIXED = 12288;
		public const int32 IPAWS_MINWIDTHFIXED = 65536;
		public const int32 IPAWS_MINHEIGHTFIXED = 131072;
		public const int32 IPAWS_MINSIZEFIXED = 196608;
		public const Guid CLSID_ImePlugInDictDictionaryList_CHS = .(0x7bf0129b, 0x5bef, 0x4de4, 0x9b, 0x0b, 0x5e, 0xdb, 0x66, 0xac, 0x2f, 0xa6);
		public const Guid CLSID_ImePlugInDictDictionaryList_JPN = .(0x4fe2776b, 0xb0f9, 0x4396, 0xb5, 0xfc, 0xe9, 0xd4, 0xcf, 0x1e, 0xc1, 0x95);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SET_COMPOSITION_STRING_TYPE : uint32
		{
			SETSTR = 9,
			CHANGEATTR = 18,
			CHANGECLAUSE = 36,
			SETRECONVERTSTRING = 65536,
			QUERYRECONVERTSTRING = 131072,
		}
		[AllowDuplicates]
		public enum GET_GUIDE_LINE_TYPE : uint32
		{
			LEVEL = 1,
			INDEX = 2,
			STRING = 3,
			PRIVATE = 4,
		}
		[AllowDuplicates]
		public enum NOTIFY_IME_INDEX : uint32
		{
			CANCEL = 4,
			COMPLETE = 1,
			CONVERT = 2,
			REVERT = 3,
		}
		[AllowDuplicates]
		public enum NOTIFY_IME_ACTION : uint32
		{
			CHANGECANDIDATELIST = 19,
			CLOSECANDIDATE = 17,
			COMPOSITIONSTR = 21,
			IMEMENUSELECTED = 24,
			OPENCANDIDATE = 16,
			SELECTCANDIDATESTR = 18,
			SETCANDIDATE_PAGESIZE = 23,
			SETCANDIDATE_PAGESTART = 22,
		}
		[AllowDuplicates]
		public enum GET_CONVERSION_LIST_FLAG : uint32
		{
			CONVERSION = 1,
			REVERSECONVERSION = 2,
			REVERSE_LENGTH = 3,
		}
		[AllowDuplicates]
		public enum IME_PAD_REQUEST_FLAGS : uint32
		{
			INSERTSTRING = 4097,
			SENDCONTROL = 4100,
			SETAPPLETSIZE = 4104,
			GETCOMPOSITIONSTRING = 4102,
			GETCOMPOSITIONSTRINGINFO = 4108,
			DELETESTRING = 4112,
			CHANGESTRING = 4113,
			GETAPPLHWND = 4116,
			FORCEIMEPADWINDOWSHOW = 4117,
			POSTMODALNOTIFY = 4118,
			GETDEFAULTUILANGID = 4119,
			GETAPPLETUISTYLE = 4121,
			SETAPPLETUISTYLE = 4122,
			ISAPPLETACTIVE = 4123,
			ISIMEPADWINDOWVISIBLE = 4124,
			SETAPPLETMINMAXSIZE = 4125,
			GETCONVERSIONSTATUS = 4126,
			GETVERSION = 4127,
			GETCURRENTIMEINFO = 4128,
		}
		[AllowDuplicates]
		public enum IMEREG : int32
		{
			HEAD = 0,
			TAIL = 1,
			DEL = 2,
		}
		[AllowDuplicates]
		public enum IMEFMT : int32
		{
			UNKNOWN = 0,
			MSIME2_BIN_SYSTEM = 1,
			MSIME2_BIN_USER = 2,
			MSIME2_TEXT_USER = 3,
			MSIME95_BIN_SYSTEM = 4,
			MSIME95_BIN_USER = 5,
			MSIME95_TEXT_USER = 6,
			MSIME97_BIN_SYSTEM = 7,
			MSIME97_BIN_USER = 8,
			MSIME97_TEXT_USER = 9,
			MSIME98_BIN_SYSTEM = 10,
			MSIME98_BIN_USER = 11,
			MSIME98_TEXT_USER = 12,
			ACTIVE_DICT = 13,
			ATOK9 = 14,
			ATOK10 = 15,
			NEC_AI_ = 16,
			WX_II = 17,
			WX_III = 18,
			VJE_20 = 19,
			MSIME98_SYSTEM_CE = 20,
			MSIME_BIN_SYSTEM = 21,
			MSIME_BIN_USER = 22,
			MSIME_TEXT_USER = 23,
			PIME2_BIN_USER = 24,
			PIME2_BIN_SYSTEM = 25,
			PIME2_BIN_STANDARD_SYSTEM = 26,
		}
		[AllowDuplicates]
		public enum IMEUCT : int32
		{
			NONE = 0,
			STRING_SJIS = 1,
			STRING_UNICODE = 2,
			USER_DEFINED = 3,
			MAX = 4,
		}
		[AllowDuplicates]
		public enum IMEREL : int32
		{
			NONE = 0,
			NO = 1,
			GA = 2,
			WO = 3,
			NI = 4,
			DE = 5,
			YORI = 6,
			KARA = 7,
			MADE = 8,
			HE = 9,
			TO = 10,
			IDEOM = 11,
			FUKU_YOUGEN = 12,
			KEIYOU_YOUGEN = 13,
			KEIDOU1_YOUGEN = 14,
			KEIDOU2_YOUGEN = 15,
			TAIGEN = 16,
			YOUGEN = 17,
			RENTAI_MEI = 18,
			RENSOU = 19,
			KEIYOU_TO_YOUGEN = 20,
			KEIYOU_TARU_YOUGEN = 21,
			UNKNOWN1 = 22,
			UNKNOWN2 = 23,
			ALL = 24,
		}
		
		// --- Function Pointers ---
		
		public function BOOL IMCENUMPROC(HIMC param0, LPARAM param1);
		public function int32 REGISTERWORDENUMPROCA(PSTR lpszReading, uint32 param1, PSTR lpszString, void* param3);
		public function int32 REGISTERWORDENUMPROCW(PWSTR lpszReading, uint32 param1, PWSTR lpszString, void* param3);
		public function BOOL PFNLOG(IMEDP* param0, HRESULT param1);
		public function HRESULT fpCreateIFECommonInstanceType(void** ppvObj);
		public function HRESULT fpCreateIFELanguageInstanceType(Guid* clsid, void** ppvObj);
		public function HRESULT fpCreateIFEDictionaryInstanceType(void** ppvObj);
		
		// --- Structs ---
		
		[CRepr]
		public struct COMPOSITIONFORM
		{
			public uint32 dwStyle;
			public POINT ptCurrentPos;
			public RECT rcArea;
		}
		[CRepr]
		public struct CANDIDATEFORM
		{
			public uint32 dwIndex;
			public uint32 dwStyle;
			public POINT ptCurrentPos;
			public RECT rcArea;
		}
		[CRepr]
		public struct CANDIDATELIST
		{
			public uint32 dwSize;
			public uint32 dwStyle;
			public uint32 dwCount;
			public uint32 dwSelection;
			public uint32 dwPageStart;
			public uint32 dwPageSize;
			public uint32[] dwOffset;
		}
		[CRepr]
		public struct REGISTERWORDA
		{
			public PSTR lpReading;
			public PSTR lpWord;
		}
		[CRepr]
		public struct REGISTERWORDW
		{
			public PWSTR lpReading;
			public PWSTR lpWord;
		}
		[CRepr]
		public struct RECONVERTSTRING
		{
			public uint32 dwSize;
			public uint32 dwVersion;
			public uint32 dwStrLen;
			public uint32 dwStrOffset;
			public uint32 dwCompStrLen;
			public uint32 dwCompStrOffset;
			public uint32 dwTargetStrLen;
			public uint32 dwTargetStrOffset;
		}
		[CRepr]
		public struct STYLEBUFA
		{
			public uint32 dwStyle;
			public CHAR[32] szDescription;
		}
		[CRepr]
		public struct STYLEBUFW
		{
			public uint32 dwStyle;
			public char16[32] szDescription;
		}
		[CRepr]
		public struct IMEMENUITEMINFOA
		{
			public uint32 cbSize;
			public uint32 fType;
			public uint32 fState;
			public uint32 wID;
			public HBITMAP hbmpChecked;
			public HBITMAP hbmpUnchecked;
			public uint32 dwItemData;
			public CHAR[80] szString;
			public HBITMAP hbmpItem;
		}
		[CRepr]
		public struct IMEMENUITEMINFOW
		{
			public uint32 cbSize;
			public uint32 fType;
			public uint32 fState;
			public uint32 wID;
			public HBITMAP hbmpChecked;
			public HBITMAP hbmpUnchecked;
			public uint32 dwItemData;
			public char16[80] szString;
			public HBITMAP hbmpItem;
		}
		[CRepr]
		public struct IMECHARPOSITION
		{
			public uint32 dwSize;
			public uint32 dwCharPos;
			public POINT pt;
			public uint32 cLineHeight;
			public RECT rcDocument;
		}
		[CRepr]
		public struct IMEDLG
		{
			public int32 cbIMEDLG;
			public HWND hwnd;
			public PWSTR lpwstrWord;
			public int32 nTabId;
		}
		[CRepr]
		public struct WDD
		{
			public uint16 wDispPos;
			public _Anonymous1_e__Union Anonymous1;
			public uint16 cchDisp;
			public _Anonymous2_e__Union Anonymous2;
			public uint32 WDD_nReserve1;
			public uint16 nPos;
			public uint16 _bitfield;
			public void* pReserved;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint16 cchRead;
				public uint16 cchComp;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint16 wReadPos;
				public uint16 wCompPos;
			}
		}
		[CRepr]
		public struct MORRSLT
		{
			public uint32 dwSize;
			public PWSTR pwchOutput;
			public uint16 cchOutput;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			public uint16* pchInputPos;
			public uint16* pchOutputIdxWDD;
			public _Anonymous3_e__Union Anonymous3;
			public uint16* paMonoRubyPos;
			public WDD* pWDD;
			public int32 cWDD;
			public void* pPrivate;
			public char16[] BLKBuff;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public uint16 cchRead;
				public uint16 cchComp;
			}
			[CRepr, Union]
			public struct _Anonymous3_e__Union
			{
				public uint16* pchReadIdxWDD;
				public uint16* pchCompIdxWDD;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR pwchRead;
				public PWSTR pwchComp;
			}
		}
		[CRepr]
		public struct IMEWRD
		{
			public PWSTR pwchReading;
			public PWSTR pwchDisplay;
			public _Anonymous_e__Union Anonymous;
			public uint32[2] rgulAttrs;
			public int32 cbComment;
			public IMEUCT uct;
			public void* pvComment;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 ulPos;
				public _Anonymous_e__Struct Anonymous;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint16 nPos1;
					public uint16 nPos2;
				}
			}
		}
		[CRepr]
		public struct IMESHF
		{
			public uint16 cbShf;
			public uint16 verDic;
			public CHAR[48] szTitle;
			public CHAR[256] szDescription;
			public CHAR[128] szCopyright;
		}
		[CRepr]
		public struct POSTBL
		{
			public uint16 nPos;
			public uint8* szName;
		}
		[CRepr]
		public struct IMEDP
		{
			public IMEWRD wrdModifier;
			public IMEWRD wrdModifiee;
			public IMEREL relID;
		}
		[CRepr]
		public struct IMEKMSINIT
		{
			public int32 cbSize;
			public HWND hWnd;
		}
		[CRepr]
		public struct IMEKMSKEY
		{
			public uint32 dwStatus;
			public uint32 dwCompStatus;
			public uint32 dwVKEY;
			public _Anonymous1_e__Union Anonymous1;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public uint32 dwControl;
				public uint32 dwNotUsed;
			}
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public char16[31] pwszDscr;
				public char16[31] pwszNoUse;
			}
		}
		[CRepr]
		public struct IMEKMS
		{
			public int32 cbSize;
			public HIMC hIMC;
			public uint32 cKeyList;
			public IMEKMSKEY* pKeyList;
		}
		[CRepr]
		public struct IMEKMSNTFY
		{
			public int32 cbSize;
			public HIMC hIMC;
			public BOOL fSelect;
		}
		[CRepr]
		public struct IMEKMSKMP
		{
			public int32 cbSize;
			public HIMC hIMC;
			public uint16 idLang;
			public uint16 wVKStart;
			public uint16 wVKEnd;
			public int32 cKeyList;
			public IMEKMSKEY* pKeyList;
		}
		[CRepr]
		public struct IMEKMSINVK
		{
			public int32 cbSize;
			public HIMC hIMC;
			public uint32 dwControl;
		}
		[CRepr]
		public struct IMEKMSFUNCDESC
		{
			public int32 cbSize;
			public uint16 idLang;
			public uint32 dwControl;
			public char16[128] pwszDescription;
		}
		[CRepr]
		public struct COMPOSITIONSTRING
		{
			public uint32 dwSize;
			public uint32 dwCompReadAttrLen;
			public uint32 dwCompReadAttrOffset;
			public uint32 dwCompReadClauseLen;
			public uint32 dwCompReadClauseOffset;
			public uint32 dwCompReadStrLen;
			public uint32 dwCompReadStrOffset;
			public uint32 dwCompAttrLen;
			public uint32 dwCompAttrOffset;
			public uint32 dwCompClauseLen;
			public uint32 dwCompClauseOffset;
			public uint32 dwCompStrLen;
			public uint32 dwCompStrOffset;
			public uint32 dwCursorPos;
			public uint32 dwDeltaStart;
			public uint32 dwResultReadClauseLen;
			public uint32 dwResultReadClauseOffset;
			public uint32 dwResultReadStrLen;
			public uint32 dwResultReadStrOffset;
			public uint32 dwResultClauseLen;
			public uint32 dwResultClauseOffset;
			public uint32 dwResultStrLen;
			public uint32 dwResultStrOffset;
			public uint32 dwPrivateSize;
			public uint32 dwPrivateOffset;
		}
		[CRepr]
		public struct GUIDELINE
		{
			public uint32 dwSize;
			public uint32 dwLevel;
			public uint32 dwIndex;
			public uint32 dwStrLen;
			public uint32 dwStrOffset;
			public uint32 dwPrivateSize;
			public uint32 dwPrivateOffset;
		}
		[CRepr]
		public struct TRANSMSG
		{
			public uint32 message;
			public WPARAM wParam;
			public LPARAM lParam;
		}
		[CRepr]
		public struct TRANSMSGLIST
		{
			public uint32 uMsgCount;
			public TRANSMSG[] TransMsg;
		}
		[CRepr]
		public struct CANDIDATEINFO
		{
			public uint32 dwSize;
			public uint32 dwCount;
			public uint32[32] dwOffset;
			public uint32 dwPrivateSize;
			public uint32 dwPrivateOffset;
		}
		[CRepr]
		public struct INPUTCONTEXT
		{
			public HWND hWnd;
			public BOOL fOpen;
			public POINT ptStatusWndPos;
			public POINT ptSoftKbdPos;
			public uint32 fdwConversion;
			public uint32 fdwSentence;
			public _lfFont_e__Union lfFont;
			public COMPOSITIONFORM cfCompForm;
			public CANDIDATEFORM[4] cfCandForm;
			public HIMCC hCompStr;
			public HIMCC hCandInfo;
			public HIMCC hGuideLine;
			public HIMCC hPrivate;
			public uint32 dwNumMsgBuf;
			public HIMCC hMsgBuf;
			public uint32 fdwInit;
			public uint32[3] dwReserve;
			
			[CRepr, Union]
			public struct _lfFont_e__Union
			{
				public LOGFONTA A;
				public LOGFONTW W;
			}
		}
		[CRepr]
		public struct IMEINFO
		{
			public uint32 dwPrivateDataSize;
			public uint32 fdwProperty;
			public uint32 fdwConversionCaps;
			public uint32 fdwSentenceCaps;
			public uint32 fdwUICaps;
			public uint32 fdwSCSCaps;
			public uint32 fdwSelectCaps;
		}
		[CRepr]
		public struct SOFTKBDDATA
		{
			public uint32 uCount;
			public uint16[256] wCode;
		}
		[CRepr]
		public struct APPLETIDLIST
		{
			public int32 count;
			public Guid* pIIDList;
		}
		[CRepr]
		public struct IMESTRINGCANDIDATE
		{
			public uint32 uCount;
			public PWSTR[] lpwstr;
		}
		[CRepr]
		public struct IMEITEM
		{
			public int32 cbSize;
			public int32 iType;
			public void* lpItemData;
		}
		[CRepr]
		public struct IMEITEMCANDIDATE
		{
			public uint32 uCount;
			public IMEITEM[] imeItem;
		}
		[CRepr]
		public struct tabIMESTRINGINFO
		{
			public uint32 dwFarEastId;
			public PWSTR lpwstr;
		}
		[CRepr]
		public struct tabIMEFAREASTINFO
		{
			public uint32 dwSize;
			public uint32 dwType;
			public uint32[] dwData;
		}
		[CRepr]
		public struct IMESTRINGCANDIDATEINFO
		{
			public uint32 dwFarEastId;
			public tabIMEFAREASTINFO* lpFarEastInfo;
			public uint32 fInfoMask;
			public int32 iSelIndex;
			public uint32 uCount;
			public PWSTR[] lpwstr;
		}
		[CRepr]
		public struct IMECOMPOSITIONSTRINGINFO
		{
			public int32 iCompStrLen;
			public int32 iCaretPos;
			public int32 iEditStart;
			public int32 iEditLen;
			public int32 iTargetStart;
			public int32 iTargetLen;
		}
		[CRepr]
		public struct IMECHARINFO
		{
			public char16 wch;
			public uint32 dwCharInfo;
		}
		[CRepr]
		public struct IMEAPPLETCFG
		{
			public uint32 dwConfig;
			public char16[64] wchTitle;
			public char16[32] wchTitleFontFace;
			public uint32 dwCharSet;
			public int32 iCategory;
			public HICON hIcon;
			public uint16 langID;
			public uint16 dummy;
			public LPARAM lReserved1;
		}
		[CRepr]
		public struct IMEAPPLETUI
		{
			public HWND hwnd;
			public uint32 dwStyle;
			public int32 width;
			public int32 height;
			public int32 minWidth;
			public int32 minHeight;
			public int32 maxWidth;
			public int32 maxHeight;
			public LPARAM lReserved1;
			public LPARAM lReserved2;
		}
		[CRepr]
		public struct APPLYCANDEXPARAM
		{
			public uint32 dwSize;
			public PWSTR lpwstrDisplay;
			public PWSTR lpwstrReading;
			public uint32 dwReserved;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_CActiveIMM = .(0x4955dd33, 0xb159, 0x11d0, 0x8f, 0xcf, 0x00, 0xaa, 0x00, 0x6b, 0xcc, 0x59);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IFEClassFactory : IClassFactory
		{
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IClassFactory.VTable
			{
			}
		}
		[CRepr]
		public struct IFECommon : IUnknown
		{
			public const new Guid IID = .(0x019f7151, 0xe6db, 0x11d0, 0x83, 0xc3, 0x00, 0xc0, 0x4f, 0xdd, 0xb8, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsDefaultIME(uint8* szName, int32 cszName) mut
			{
				return VT.IsDefaultIME(&this, szName, cszName);
			}
			public HRESULT SetDefaultIME() mut
			{
				return VT.SetDefaultIME(&this);
			}
			public HRESULT InvokeWordRegDialog(IMEDLG* pimedlg) mut
			{
				return VT.InvokeWordRegDialog(&this, pimedlg);
			}
			public HRESULT InvokeDictToolDialog(IMEDLG* pimedlg) mut
			{
				return VT.InvokeDictToolDialog(&this, pimedlg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFECommon *self, uint8* szName, int32 cszName) IsDefaultIME;
				public new function HRESULT(IFECommon *self) SetDefaultIME;
				public new function HRESULT(IFECommon *self, IMEDLG* pimedlg) InvokeWordRegDialog;
				public new function HRESULT(IFECommon *self, IMEDLG* pimedlg) InvokeDictToolDialog;
			}
		}
		[CRepr]
		public struct IFELanguage : IUnknown
		{
			public const new Guid IID = .(0x019f7152, 0xe6db, 0x11d0, 0x83, 0xc3, 0x00, 0xc0, 0x4f, 0xdd, 0xb8, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open() mut
			{
				return VT.Open(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetJMorphResult(uint32 dwRequest, uint32 dwCMode, int32 cwchInput, PWSTR pwchInput, uint32* pfCInfo, MORRSLT** ppResult) mut
			{
				return VT.GetJMorphResult(&this, dwRequest, dwCMode, cwchInput, pwchInput, pfCInfo, ppResult);
			}
			public HRESULT GetConversionModeCaps(uint32* pdwCaps) mut
			{
				return VT.GetConversionModeCaps(&this, pdwCaps);
			}
			public HRESULT GetPhonetic(BSTR string, int32 start, int32 length, BSTR* phonetic) mut
			{
				return VT.GetPhonetic(&this, string, start, length, phonetic);
			}
			public HRESULT GetConversion(BSTR string, int32 start, int32 length, BSTR* result) mut
			{
				return VT.GetConversion(&this, string, start, length, result);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFELanguage *self) Open;
				public new function HRESULT(IFELanguage *self) Close;
				public new function HRESULT(IFELanguage *self, uint32 dwRequest, uint32 dwCMode, int32 cwchInput, PWSTR pwchInput, uint32* pfCInfo, MORRSLT** ppResult) GetJMorphResult;
				public new function HRESULT(IFELanguage *self, uint32* pdwCaps) GetConversionModeCaps;
				public new function HRESULT(IFELanguage *self, BSTR string, int32 start, int32 length, BSTR* phonetic) GetPhonetic;
				public new function HRESULT(IFELanguage *self, BSTR string, int32 start, int32 length, BSTR* result) GetConversion;
			}
		}
		[CRepr]
		public struct IFEDictionary : IUnknown
		{
			public const new Guid IID = .(0x019f7153, 0xe6db, 0x11d0, 0x83, 0xc3, 0x00, 0xc0, 0x4f, 0xdd, 0xb8, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(uint8* pchDictPath, IMESHF* pshf) mut
			{
				return VT.Open(&this, pchDictPath, pshf);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetHeader(uint8* pchDictPath, IMESHF* pshf, IMEFMT* pjfmt, uint32* pulType) mut
			{
				return VT.GetHeader(&this, pchDictPath, pshf, pjfmt, pulType);
			}
			public HRESULT DisplayProperty(HWND hwnd) mut
			{
				return VT.DisplayProperty(&this, hwnd);
			}
			public HRESULT GetPosTable(POSTBL** prgPosTbl, int32* pcPosTbl) mut
			{
				return VT.GetPosTable(&this, prgPosTbl, pcPosTbl);
			}
			public HRESULT GetWords(PWSTR pwchFirst, PWSTR pwchLast, PWSTR pwchDisplay, uint32 ulPos, uint32 ulSelect, uint32 ulWordSrc, uint8* pchBuffer, uint32 cbBuffer, uint32* pcWrd) mut
			{
				return VT.GetWords(&this, pwchFirst, pwchLast, pwchDisplay, ulPos, ulSelect, ulWordSrc, pchBuffer, cbBuffer, pcWrd);
			}
			public HRESULT NextWords(uint8* pchBuffer, uint32 cbBuffer, uint32* pcWrd) mut
			{
				return VT.NextWords(&this, pchBuffer, cbBuffer, pcWrd);
			}
			public HRESULT Create(PSTR pchDictPath, IMESHF* pshf) mut
			{
				return VT.Create(&this, pchDictPath, pshf);
			}
			public HRESULT SetHeader(IMESHF* pshf) mut
			{
				return VT.SetHeader(&this, pshf);
			}
			public HRESULT ExistWord(IMEWRD* pwrd) mut
			{
				return VT.ExistWord(&this, pwrd);
			}
			public HRESULT ExistDependency(IMEDP* pdp) mut
			{
				return VT.ExistDependency(&this, pdp);
			}
			public HRESULT RegisterWord(IMEREG reg, IMEWRD* pwrd) mut
			{
				return VT.RegisterWord(&this, reg, pwrd);
			}
			public HRESULT RegisterDependency(IMEREG reg, IMEDP* pdp) mut
			{
				return VT.RegisterDependency(&this, reg, pdp);
			}
			public HRESULT GetDependencies(PWSTR pwchKakariReading, PWSTR pwchKakariDisplay, uint32 ulKakariPos, PWSTR pwchUkeReading, PWSTR pwchUkeDisplay, uint32 ulUkePos, IMEREL jrel, uint32 ulWordSrc, uint8* pchBuffer, uint32 cbBuffer, uint32* pcdp) mut
			{
				return VT.GetDependencies(&this, pwchKakariReading, pwchKakariDisplay, ulKakariPos, pwchUkeReading, pwchUkeDisplay, ulUkePos, jrel, ulWordSrc, pchBuffer, cbBuffer, pcdp);
			}
			public HRESULT NextDependencies(uint8* pchBuffer, uint32 cbBuffer, uint32* pcDp) mut
			{
				return VT.NextDependencies(&this, pchBuffer, cbBuffer, pcDp);
			}
			public HRESULT ConvertFromOldMSIME(PSTR pchDic, PFNLOG pfnLog, IMEREG reg) mut
			{
				return VT.ConvertFromOldMSIME(&this, pchDic, pfnLog, reg);
			}
			public HRESULT ConvertFromUserToSys() mut
			{
				return VT.ConvertFromUserToSys(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFEDictionary *self, uint8* pchDictPath, IMESHF* pshf) Open;
				public new function HRESULT(IFEDictionary *self) Close;
				public new function HRESULT(IFEDictionary *self, uint8* pchDictPath, IMESHF* pshf, IMEFMT* pjfmt, uint32* pulType) GetHeader;
				public new function HRESULT(IFEDictionary *self, HWND hwnd) DisplayProperty;
				public new function HRESULT(IFEDictionary *self, POSTBL** prgPosTbl, int32* pcPosTbl) GetPosTable;
				public new function HRESULT(IFEDictionary *self, PWSTR pwchFirst, PWSTR pwchLast, PWSTR pwchDisplay, uint32 ulPos, uint32 ulSelect, uint32 ulWordSrc, uint8* pchBuffer, uint32 cbBuffer, uint32* pcWrd) GetWords;
				public new function HRESULT(IFEDictionary *self, uint8* pchBuffer, uint32 cbBuffer, uint32* pcWrd) NextWords;
				public new function HRESULT(IFEDictionary *self, PSTR pchDictPath, IMESHF* pshf) Create;
				public new function HRESULT(IFEDictionary *self, IMESHF* pshf) SetHeader;
				public new function HRESULT(IFEDictionary *self, IMEWRD* pwrd) ExistWord;
				public new function HRESULT(IFEDictionary *self, IMEDP* pdp) ExistDependency;
				public new function HRESULT(IFEDictionary *self, IMEREG reg, IMEWRD* pwrd) RegisterWord;
				public new function HRESULT(IFEDictionary *self, IMEREG reg, IMEDP* pdp) RegisterDependency;
				public new function HRESULT(IFEDictionary *self, PWSTR pwchKakariReading, PWSTR pwchKakariDisplay, uint32 ulKakariPos, PWSTR pwchUkeReading, PWSTR pwchUkeDisplay, uint32 ulUkePos, IMEREL jrel, uint32 ulWordSrc, uint8* pchBuffer, uint32 cbBuffer, uint32* pcdp) GetDependencies;
				public new function HRESULT(IFEDictionary *self, uint8* pchBuffer, uint32 cbBuffer, uint32* pcDp) NextDependencies;
				public new function HRESULT(IFEDictionary *self, PSTR pchDic, PFNLOG pfnLog, IMEREG reg) ConvertFromOldMSIME;
				public new function HRESULT(IFEDictionary *self) ConvertFromUserToSys;
			}
		}
		[CRepr]
		public struct IImeSpecifyApplets : IUnknown
		{
			public const new Guid IID = .(0x5d8e643c, 0xc3a9, 0x11d1, 0xaf, 0xef, 0x00, 0x80, 0x5f, 0x0c, 0x8b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAppletIIDList(Guid* refiid, APPLETIDLIST* lpIIDList) mut
			{
				return VT.GetAppletIIDList(&this, refiid, lpIIDList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImeSpecifyApplets *self, Guid* refiid, APPLETIDLIST* lpIIDList) GetAppletIIDList;
			}
		}
		[CRepr]
		public struct IImePadApplet : IUnknown
		{
			public const new Guid IID = .(0x5d8e643b, 0xc3a9, 0x11d1, 0xaf, 0xef, 0x00, 0x80, 0x5f, 0x0c, 0x8b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IUnknown* lpIImePad) mut
			{
				return VT.Initialize(&this, lpIImePad);
			}
			public HRESULT Terminate() mut
			{
				return VT.Terminate(&this);
			}
			public HRESULT GetAppletConfig(IMEAPPLETCFG* lpAppletCfg) mut
			{
				return VT.GetAppletConfig(&this, lpAppletCfg);
			}
			public HRESULT CreateUI(HWND hwndParent, IMEAPPLETUI* lpImeAppletUI) mut
			{
				return VT.CreateUI(&this, hwndParent, lpImeAppletUI);
			}
			public HRESULT Notify(IUnknown* lpImePad, int32 notify, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.Notify(&this, lpImePad, notify, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImePadApplet *self, IUnknown* lpIImePad) Initialize;
				public new function HRESULT(IImePadApplet *self) Terminate;
				public new function HRESULT(IImePadApplet *self, IMEAPPLETCFG* lpAppletCfg) GetAppletConfig;
				public new function HRESULT(IImePadApplet *self, HWND hwndParent, IMEAPPLETUI* lpImeAppletUI) CreateUI;
				public new function HRESULT(IImePadApplet *self, IUnknown* lpImePad, int32 notify, WPARAM wParam, LPARAM lParam) Notify;
			}
		}
		[CRepr]
		public struct IImePad : IUnknown
		{
			public const new Guid IID = .(0x5d8e643a, 0xc3a9, 0x11d1, 0xaf, 0xef, 0x00, 0x80, 0x5f, 0x0c, 0x8b, 0x6d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Request(IImePadApplet* pIImePadApplet, IME_PAD_REQUEST_FLAGS reqId, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.Request(&this, pIImePadApplet, reqId, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImePad *self, IImePadApplet* pIImePadApplet, IME_PAD_REQUEST_FLAGS reqId, WPARAM wParam, LPARAM lParam) Request;
			}
		}
		[CRepr]
		public struct IImePlugInDictDictionaryList : IUnknown
		{
			public const new Guid IID = .(0x98752974, 0xb0a6, 0x489b, 0x8f, 0x6f, 0xbf, 0xf3, 0x76, 0x9c, 0x8e, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDictionariesInUse(SAFEARRAY** prgDictionaryGUID, SAFEARRAY** prgDateCreated, SAFEARRAY** prgfEncrypted) mut
			{
				return VT.GetDictionariesInUse(&this, prgDictionaryGUID, prgDateCreated, prgfEncrypted);
			}
			public HRESULT DeleteDictionary(BSTR bstrDictionaryGUID) mut
			{
				return VT.DeleteDictionary(&this, bstrDictionaryGUID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImePlugInDictDictionaryList *self, SAFEARRAY** prgDictionaryGUID, SAFEARRAY** prgDateCreated, SAFEARRAY** prgfEncrypted) GetDictionariesInUse;
				public new function HRESULT(IImePlugInDictDictionaryList *self, BSTR bstrDictionaryGUID) DeleteDictionary;
			}
		}
		[CRepr]
		public struct IEnumRegisterWordA : IUnknown
		{
			public const new Guid IID = .(0x08c03412, 0xf96b, 0x11d0, 0xa4, 0x75, 0x00, 0xaa, 0x00, 0x6b, 0xcc, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumRegisterWordA** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, REGISTERWORDA* rgRegisterWord, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgRegisterWord, pcFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 ulCount) mut
			{
				return VT.Skip(&this, ulCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumRegisterWordA *self, IEnumRegisterWordA** ppEnum) Clone;
				public new function HRESULT(IEnumRegisterWordA *self, uint32 ulCount, REGISTERWORDA* rgRegisterWord, uint32* pcFetched) Next;
				public new function HRESULT(IEnumRegisterWordA *self) Reset;
				public new function HRESULT(IEnumRegisterWordA *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct IEnumRegisterWordW : IUnknown
		{
			public const new Guid IID = .(0x4955dd31, 0xb159, 0x11d0, 0x8f, 0xcf, 0x00, 0xaa, 0x00, 0x6b, 0xcc, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumRegisterWordW** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, REGISTERWORDW* rgRegisterWord, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgRegisterWord, pcFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 ulCount) mut
			{
				return VT.Skip(&this, ulCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumRegisterWordW *self, IEnumRegisterWordW** ppEnum) Clone;
				public new function HRESULT(IEnumRegisterWordW *self, uint32 ulCount, REGISTERWORDW* rgRegisterWord, uint32* pcFetched) Next;
				public new function HRESULT(IEnumRegisterWordW *self) Reset;
				public new function HRESULT(IEnumRegisterWordW *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct IEnumInputContext : IUnknown
		{
			public const new Guid IID = .(0x09b5eab0, 0xf997, 0x11d1, 0x93, 0xd4, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumInputContext** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, HIMC* rgInputContext, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgInputContext, pcFetched);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Skip(uint32 ulCount) mut
			{
				return VT.Skip(&this, ulCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumInputContext *self, IEnumInputContext** ppEnum) Clone;
				public new function HRESULT(IEnumInputContext *self, uint32 ulCount, HIMC* rgInputContext, uint32* pcFetched) Next;
				public new function HRESULT(IEnumInputContext *self) Reset;
				public new function HRESULT(IEnumInputContext *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct IActiveIMMRegistrar : IUnknown
		{
			public const new Guid IID = .(0xb3458082, 0xbd00, 0x11d1, 0x93, 0x9b, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterIME(Guid* rclsid, uint16 lgid, PWSTR pszIconFile, PWSTR pszDesc) mut
			{
				return VT.RegisterIME(&this, rclsid, lgid, pszIconFile, pszDesc);
			}
			public HRESULT UnregisterIME(Guid* rclsid) mut
			{
				return VT.UnregisterIME(&this, rclsid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActiveIMMRegistrar *self, Guid* rclsid, uint16 lgid, PWSTR pszIconFile, PWSTR pszDesc) RegisterIME;
				public new function HRESULT(IActiveIMMRegistrar *self, Guid* rclsid) UnregisterIME;
			}
		}
		[CRepr]
		public struct IActiveIMMMessagePumpOwner : IUnknown
		{
			public const new Guid IID = .(0xb5cf2cfa, 0x8aeb, 0x11d1, 0x93, 0x64, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Start() mut
			{
				return VT.Start(&this);
			}
			public HRESULT End() mut
			{
				return VT.End(&this);
			}
			public HRESULT OnTranslateMessage(MSG* pMsg) mut
			{
				return VT.OnTranslateMessage(&this, pMsg);
			}
			public HRESULT Pause(uint32* pdwCookie) mut
			{
				return VT.Pause(&this, pdwCookie);
			}
			public HRESULT Resume(uint32 dwCookie) mut
			{
				return VT.Resume(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActiveIMMMessagePumpOwner *self) Start;
				public new function HRESULT(IActiveIMMMessagePumpOwner *self) End;
				public new function HRESULT(IActiveIMMMessagePumpOwner *self, MSG* pMsg) OnTranslateMessage;
				public new function HRESULT(IActiveIMMMessagePumpOwner *self, uint32* pdwCookie) Pause;
				public new function HRESULT(IActiveIMMMessagePumpOwner *self, uint32 dwCookie) Resume;
			}
		}
		[CRepr]
		public struct IActiveIMMApp : IUnknown
		{
			public const new Guid IID = .(0x08c0e040, 0x62d1, 0x11d1, 0x93, 0x26, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssociateContext(HWND hWnd, HIMC hIME, HIMC* phPrev) mut
			{
				return VT.AssociateContext(&this, hWnd, hIME, phPrev);
			}
			public HRESULT ConfigureIMEA(HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDA* pData) mut
			{
				return VT.ConfigureIMEA(&this, hKL, hWnd, dwMode, pData);
			}
			public HRESULT ConfigureIMEW(HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pData) mut
			{
				return VT.ConfigureIMEW(&this, hKL, hWnd, dwMode, pData);
			}
			public HRESULT CreateContext(HIMC* phIMC) mut
			{
				return VT.CreateContext(&this, phIMC);
			}
			public HRESULT DestroyContext(HIMC hIME) mut
			{
				return VT.DestroyContext(&this, hIME);
			}
			public HRESULT EnumRegisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister, void* pData, IEnumRegisterWordA** pEnum) mut
			{
				return VT.EnumRegisterWordA(&this, hKL, szReading, dwStyle, szRegister, pData, pEnum);
			}
			public HRESULT EnumRegisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** pEnum) mut
			{
				return VT.EnumRegisterWordW(&this, hKL, szReading, dwStyle, szRegister, pData, pEnum);
			}
			public HRESULT EscapeA(HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) mut
			{
				return VT.EscapeA(&this, hKL, hIMC, uEscape, pData, plResult);
			}
			public HRESULT EscapeW(HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) mut
			{
				return VT.EscapeW(&this, hKL, hIMC, uEscape, pData, plResult);
			}
			public HRESULT GetCandidateListA(HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) mut
			{
				return VT.GetCandidateListA(&this, hIMC, dwIndex, uBufLen, pCandList, puCopied);
			}
			public HRESULT GetCandidateListW(HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) mut
			{
				return VT.GetCandidateListW(&this, hIMC, dwIndex, uBufLen, pCandList, puCopied);
			}
			public HRESULT GetCandidateListCountA(HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) mut
			{
				return VT.GetCandidateListCountA(&this, hIMC, pdwListSize, pdwBufLen);
			}
			public HRESULT GetCandidateListCountW(HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) mut
			{
				return VT.GetCandidateListCountW(&this, hIMC, pdwListSize, pdwBufLen);
			}
			public HRESULT GetCandidateWindow(HIMC hIMC, uint32 dwIndex, CANDIDATEFORM* pCandidate) mut
			{
				return VT.GetCandidateWindow(&this, hIMC, dwIndex, pCandidate);
			}
			public HRESULT GetCompositionFontA(HIMC hIMC, LOGFONTA* plf) mut
			{
				return VT.GetCompositionFontA(&this, hIMC, plf);
			}
			public HRESULT GetCompositionFontW(HIMC hIMC, LOGFONTW* plf) mut
			{
				return VT.GetCompositionFontW(&this, hIMC, plf);
			}
			public HRESULT GetCompositionStringA(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) mut
			{
				return VT.GetCompositionStringA(&this, hIMC, dwIndex, dwBufLen, plCopied, pBuf);
			}
			public HRESULT GetCompositionStringW(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) mut
			{
				return VT.GetCompositionStringW(&this, hIMC, dwIndex, dwBufLen, plCopied, pBuf);
			}
			public HRESULT GetCompositionWindow(HIMC hIMC, COMPOSITIONFORM* pCompForm) mut
			{
				return VT.GetCompositionWindow(&this, hIMC, pCompForm);
			}
			public HRESULT GetContext(HWND hWnd, HIMC* phIMC) mut
			{
				return VT.GetContext(&this, hWnd, phIMC);
			}
			public HRESULT GetConversionListA(HKL hKL, HIMC hIMC, PSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) mut
			{
				return VT.GetConversionListA(&this, hKL, hIMC, pSrc, uBufLen, uFlag, pDst, puCopied);
			}
			public HRESULT GetConversionListW(HKL hKL, HIMC hIMC, PWSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) mut
			{
				return VT.GetConversionListW(&this, hKL, hIMC, pSrc, uBufLen, uFlag, pDst, puCopied);
			}
			public HRESULT GetConversionStatus(HIMC hIMC, uint32* pfdwConversion, uint32* pfdwSentence) mut
			{
				return VT.GetConversionStatus(&this, hIMC, pfdwConversion, pfdwSentence);
			}
			public HRESULT GetDefaultIMEWnd(HWND hWnd, HWND* phDefWnd) mut
			{
				return VT.GetDefaultIMEWnd(&this, hWnd, phDefWnd);
			}
			public HRESULT GetDescriptionA(HKL hKL, uint32 uBufLen, PSTR szDescription, uint32* puCopied) mut
			{
				return VT.GetDescriptionA(&this, hKL, uBufLen, szDescription, puCopied);
			}
			public HRESULT GetDescriptionW(HKL hKL, uint32 uBufLen, PWSTR szDescription, uint32* puCopied) mut
			{
				return VT.GetDescriptionW(&this, hKL, uBufLen, szDescription, puCopied);
			}
			public HRESULT GetGuideLineA(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PSTR pBuf, uint32* pdwResult) mut
			{
				return VT.GetGuideLineA(&this, hIMC, dwIndex, dwBufLen, pBuf, pdwResult);
			}
			public HRESULT GetGuideLineW(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PWSTR pBuf, uint32* pdwResult) mut
			{
				return VT.GetGuideLineW(&this, hIMC, dwIndex, dwBufLen, pBuf, pdwResult);
			}
			public HRESULT GetIMEFileNameA(HKL hKL, uint32 uBufLen, PSTR szFileName, uint32* puCopied) mut
			{
				return VT.GetIMEFileNameA(&this, hKL, uBufLen, szFileName, puCopied);
			}
			public HRESULT GetIMEFileNameW(HKL hKL, uint32 uBufLen, PWSTR szFileName, uint32* puCopied) mut
			{
				return VT.GetIMEFileNameW(&this, hKL, uBufLen, szFileName, puCopied);
			}
			public HRESULT GetOpenStatus(HIMC hIMC) mut
			{
				return VT.GetOpenStatus(&this, hIMC);
			}
			public HRESULT GetProperty(HKL hKL, uint32 fdwIndex, uint32* pdwProperty) mut
			{
				return VT.GetProperty(&this, hKL, fdwIndex, pdwProperty);
			}
			public HRESULT GetRegisterWordStyleA(HKL hKL, uint32 nItem, STYLEBUFA* pStyleBuf, uint32* puCopied) mut
			{
				return VT.GetRegisterWordStyleA(&this, hKL, nItem, pStyleBuf, puCopied);
			}
			public HRESULT GetRegisterWordStyleW(HKL hKL, uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puCopied) mut
			{
				return VT.GetRegisterWordStyleW(&this, hKL, nItem, pStyleBuf, puCopied);
			}
			public HRESULT GetStatusWindowPos(HIMC hIMC, POINT* pptPos) mut
			{
				return VT.GetStatusWindowPos(&this, hIMC, pptPos);
			}
			public HRESULT GetVirtualKey(HWND hWnd, uint32* puVirtualKey) mut
			{
				return VT.GetVirtualKey(&this, hWnd, puVirtualKey);
			}
			public HRESULT InstallIMEA(PSTR szIMEFileName, PSTR szLayoutText, HKL* phKL) mut
			{
				return VT.InstallIMEA(&this, szIMEFileName, szLayoutText, phKL);
			}
			public HRESULT InstallIMEW(PWSTR szIMEFileName, PWSTR szLayoutText, HKL* phKL) mut
			{
				return VT.InstallIMEW(&this, szIMEFileName, szLayoutText, phKL);
			}
			public HRESULT IsIME(HKL hKL) mut
			{
				return VT.IsIME(&this, hKL);
			}
			public HRESULT IsUIMessageA(HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.IsUIMessageA(&this, hWndIME, msg, wParam, lParam);
			}
			public HRESULT IsUIMessageW(HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.IsUIMessageW(&this, hWndIME, msg, wParam, lParam);
			}
			public HRESULT NotifyIME(HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) mut
			{
				return VT.NotifyIME(&this, hIMC, dwAction, dwIndex, dwValue);
			}
			public HRESULT RegisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister) mut
			{
				return VT.RegisterWordA(&this, hKL, szReading, dwStyle, szRegister);
			}
			public HRESULT RegisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister) mut
			{
				return VT.RegisterWordW(&this, hKL, szReading, dwStyle, szRegister);
			}
			public HRESULT ReleaseContext(HWND hWnd, HIMC hIMC) mut
			{
				return VT.ReleaseContext(&this, hWnd, hIMC);
			}
			public HRESULT SetCandidateWindow(HIMC hIMC, CANDIDATEFORM* pCandidate) mut
			{
				return VT.SetCandidateWindow(&this, hIMC, pCandidate);
			}
			public HRESULT SetCompositionFontA(HIMC hIMC, LOGFONTA* plf) mut
			{
				return VT.SetCompositionFontA(&this, hIMC, plf);
			}
			public HRESULT SetCompositionFontW(HIMC hIMC, LOGFONTW* plf) mut
			{
				return VT.SetCompositionFontW(&this, hIMC, plf);
			}
			public HRESULT SetCompositionStringA(HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) mut
			{
				return VT.SetCompositionStringA(&this, hIMC, dwIndex, pComp, dwCompLen, pRead, dwReadLen);
			}
			public HRESULT SetCompositionStringW(HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) mut
			{
				return VT.SetCompositionStringW(&this, hIMC, dwIndex, pComp, dwCompLen, pRead, dwReadLen);
			}
			public HRESULT SetCompositionWindow(HIMC hIMC, COMPOSITIONFORM* pCompForm) mut
			{
				return VT.SetCompositionWindow(&this, hIMC, pCompForm);
			}
			public HRESULT SetConversionStatus(HIMC hIMC, uint32 fdwConversion, uint32 fdwSentence) mut
			{
				return VT.SetConversionStatus(&this, hIMC, fdwConversion, fdwSentence);
			}
			public HRESULT SetOpenStatus(HIMC hIMC, BOOL fOpen) mut
			{
				return VT.SetOpenStatus(&this, hIMC, fOpen);
			}
			public HRESULT SetStatusWindowPos(HIMC hIMC, POINT* pptPos) mut
			{
				return VT.SetStatusWindowPos(&this, hIMC, pptPos);
			}
			public HRESULT SimulateHotKey(HWND hWnd, uint32 dwHotKeyID) mut
			{
				return VT.SimulateHotKey(&this, hWnd, dwHotKeyID);
			}
			public HRESULT UnregisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szUnregister) mut
			{
				return VT.UnregisterWordA(&this, hKL, szReading, dwStyle, szUnregister);
			}
			public HRESULT UnregisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szUnregister) mut
			{
				return VT.UnregisterWordW(&this, hKL, szReading, dwStyle, szUnregister);
			}
			public HRESULT Activate(BOOL fRestoreLayout) mut
			{
				return VT.Activate(&this, fRestoreLayout);
			}
			public HRESULT Deactivate() mut
			{
				return VT.Deactivate(&this);
			}
			public HRESULT OnDefWindowProc(HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.OnDefWindowProc(&this, hWnd, Msg, wParam, lParam, plResult);
			}
			public HRESULT FilterClientWindows(uint16* aaClassList, uint32 uSize) mut
			{
				return VT.FilterClientWindows(&this, aaClassList, uSize);
			}
			public HRESULT GetCodePageA(HKL hKL, uint32* uCodePage) mut
			{
				return VT.GetCodePageA(&this, hKL, uCodePage);
			}
			public HRESULT GetLangId(HKL hKL, uint16* plid) mut
			{
				return VT.GetLangId(&this, hKL, plid);
			}
			public HRESULT AssociateContextEx(HWND hWnd, HIMC hIMC, uint32 dwFlags) mut
			{
				return VT.AssociateContextEx(&this, hWnd, hIMC, dwFlags);
			}
			public HRESULT DisableIME(uint32 idThread) mut
			{
				return VT.DisableIME(&this, idThread);
			}
			public HRESULT GetImeMenuItemsA(HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOA* pImeParentMenu, IMEMENUITEMINFOA* pImeMenu, uint32 dwSize, uint32* pdwResult) mut
			{
				return VT.GetImeMenuItemsA(&this, hIMC, dwFlags, dwType, pImeParentMenu, pImeMenu, dwSize, pdwResult);
			}
			public HRESULT GetImeMenuItemsW(HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOW* pImeParentMenu, IMEMENUITEMINFOW* pImeMenu, uint32 dwSize, uint32* pdwResult) mut
			{
				return VT.GetImeMenuItemsW(&this, hIMC, dwFlags, dwType, pImeParentMenu, pImeMenu, dwSize, pdwResult);
			}
			public HRESULT EnumInputContext(uint32 idThread, IEnumInputContext** ppEnum) mut
			{
				return VT.EnumInputContext(&this, idThread, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, HIMC hIME, HIMC* phPrev) AssociateContext;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDA* pData) ConfigureIMEA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pData) ConfigureIMEW;
				public new function HRESULT(IActiveIMMApp *self, HIMC* phIMC) CreateContext;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIME) DestroyContext;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister, void* pData, IEnumRegisterWordA** pEnum) EnumRegisterWordA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** pEnum) EnumRegisterWordW;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) EscapeA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) EscapeW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) GetCandidateListA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) GetCandidateListW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) GetCandidateListCountA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) GetCandidateListCountW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, CANDIDATEFORM* pCandidate) GetCandidateWindow;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, LOGFONTA* plf) GetCompositionFontA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, LOGFONTW* plf) GetCompositionFontW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) GetCompositionStringA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) GetCompositionStringW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, COMPOSITIONFORM* pCompForm) GetCompositionWindow;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, HIMC* phIMC) GetContext;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HIMC hIMC, PSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) GetConversionListA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, HIMC hIMC, PWSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) GetConversionListW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32* pfdwConversion, uint32* pfdwSentence) GetConversionStatus;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, HWND* phDefWnd) GetDefaultIMEWnd;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 uBufLen, PSTR szDescription, uint32* puCopied) GetDescriptionA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 uBufLen, PWSTR szDescription, uint32* puCopied) GetDescriptionW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PSTR pBuf, uint32* pdwResult) GetGuideLineA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PWSTR pBuf, uint32* pdwResult) GetGuideLineW;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 uBufLen, PSTR szFileName, uint32* puCopied) GetIMEFileNameA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 uBufLen, PWSTR szFileName, uint32* puCopied) GetIMEFileNameW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC) GetOpenStatus;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 fdwIndex, uint32* pdwProperty) GetProperty;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 nItem, STYLEBUFA* pStyleBuf, uint32* puCopied) GetRegisterWordStyleA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puCopied) GetRegisterWordStyleW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, POINT* pptPos) GetStatusWindowPos;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, uint32* puVirtualKey) GetVirtualKey;
				public new function HRESULT(IActiveIMMApp *self, PSTR szIMEFileName, PSTR szLayoutText, HKL* phKL) InstallIMEA;
				public new function HRESULT(IActiveIMMApp *self, PWSTR szIMEFileName, PWSTR szLayoutText, HKL* phKL) InstallIMEW;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL) IsIME;
				public new function HRESULT(IActiveIMMApp *self, HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) IsUIMessageA;
				public new function HRESULT(IActiveIMMApp *self, HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) IsUIMessageW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) NotifyIME;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister) RegisterWordA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister) RegisterWordW;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, HIMC hIMC) ReleaseContext;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, CANDIDATEFORM* pCandidate) SetCandidateWindow;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, LOGFONTA* plf) SetCompositionFontA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, LOGFONTW* plf) SetCompositionFontW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) SetCompositionStringA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) SetCompositionStringW;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, COMPOSITIONFORM* pCompForm) SetCompositionWindow;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 fdwConversion, uint32 fdwSentence) SetConversionStatus;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, BOOL fOpen) SetOpenStatus;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, POINT* pptPos) SetStatusWindowPos;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, uint32 dwHotKeyID) SimulateHotKey;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szUnregister) UnregisterWordA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szUnregister) UnregisterWordW;
				public new function HRESULT(IActiveIMMApp *self, BOOL fRestoreLayout) Activate;
				public new function HRESULT(IActiveIMMApp *self) Deactivate;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, uint32 Msg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) OnDefWindowProc;
				public new function HRESULT(IActiveIMMApp *self, uint16* aaClassList, uint32 uSize) FilterClientWindows;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint32* uCodePage) GetCodePageA;
				public new function HRESULT(IActiveIMMApp *self, HKL hKL, uint16* plid) GetLangId;
				public new function HRESULT(IActiveIMMApp *self, HWND hWnd, HIMC hIMC, uint32 dwFlags) AssociateContextEx;
				public new function HRESULT(IActiveIMMApp *self, uint32 idThread) DisableIME;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOA* pImeParentMenu, IMEMENUITEMINFOA* pImeMenu, uint32 dwSize, uint32* pdwResult) GetImeMenuItemsA;
				public new function HRESULT(IActiveIMMApp *self, HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOW* pImeParentMenu, IMEMENUITEMINFOW* pImeMenu, uint32 dwSize, uint32* pdwResult) GetImeMenuItemsW;
				public new function HRESULT(IActiveIMMApp *self, uint32 idThread, IEnumInputContext** ppEnum) EnumInputContext;
			}
		}
		[CRepr]
		public struct IActiveIMMIME : IUnknown
		{
			public const new Guid IID = .(0x08c03411, 0xf96b, 0x11d0, 0xa4, 0x75, 0x00, 0xaa, 0x00, 0x6b, 0xcc, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AssociateContext(HWND hWnd, HIMC hIME, HIMC* phPrev) mut
			{
				return VT.AssociateContext(&this, hWnd, hIME, phPrev);
			}
			public HRESULT ConfigureIMEA(HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDA* pData) mut
			{
				return VT.ConfigureIMEA(&this, hKL, hWnd, dwMode, pData);
			}
			public HRESULT ConfigureIMEW(HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pData) mut
			{
				return VT.ConfigureIMEW(&this, hKL, hWnd, dwMode, pData);
			}
			public HRESULT CreateContext(HIMC* phIMC) mut
			{
				return VT.CreateContext(&this, phIMC);
			}
			public HRESULT DestroyContext(HIMC hIME) mut
			{
				return VT.DestroyContext(&this, hIME);
			}
			public HRESULT EnumRegisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister, void* pData, IEnumRegisterWordA** pEnum) mut
			{
				return VT.EnumRegisterWordA(&this, hKL, szReading, dwStyle, szRegister, pData, pEnum);
			}
			public HRESULT EnumRegisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** pEnum) mut
			{
				return VT.EnumRegisterWordW(&this, hKL, szReading, dwStyle, szRegister, pData, pEnum);
			}
			public HRESULT EscapeA(HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) mut
			{
				return VT.EscapeA(&this, hKL, hIMC, uEscape, pData, plResult);
			}
			public HRESULT EscapeW(HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) mut
			{
				return VT.EscapeW(&this, hKL, hIMC, uEscape, pData, plResult);
			}
			public HRESULT GetCandidateListA(HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) mut
			{
				return VT.GetCandidateListA(&this, hIMC, dwIndex, uBufLen, pCandList, puCopied);
			}
			public HRESULT GetCandidateListW(HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) mut
			{
				return VT.GetCandidateListW(&this, hIMC, dwIndex, uBufLen, pCandList, puCopied);
			}
			public HRESULT GetCandidateListCountA(HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) mut
			{
				return VT.GetCandidateListCountA(&this, hIMC, pdwListSize, pdwBufLen);
			}
			public HRESULT GetCandidateListCountW(HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) mut
			{
				return VT.GetCandidateListCountW(&this, hIMC, pdwListSize, pdwBufLen);
			}
			public HRESULT GetCandidateWindow(HIMC hIMC, uint32 dwIndex, CANDIDATEFORM* pCandidate) mut
			{
				return VT.GetCandidateWindow(&this, hIMC, dwIndex, pCandidate);
			}
			public HRESULT GetCompositionFontA(HIMC hIMC, LOGFONTA* plf) mut
			{
				return VT.GetCompositionFontA(&this, hIMC, plf);
			}
			public HRESULT GetCompositionFontW(HIMC hIMC, LOGFONTW* plf) mut
			{
				return VT.GetCompositionFontW(&this, hIMC, plf);
			}
			public HRESULT GetCompositionStringA(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) mut
			{
				return VT.GetCompositionStringA(&this, hIMC, dwIndex, dwBufLen, plCopied, pBuf);
			}
			public HRESULT GetCompositionStringW(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) mut
			{
				return VT.GetCompositionStringW(&this, hIMC, dwIndex, dwBufLen, plCopied, pBuf);
			}
			public HRESULT GetCompositionWindow(HIMC hIMC, COMPOSITIONFORM* pCompForm) mut
			{
				return VT.GetCompositionWindow(&this, hIMC, pCompForm);
			}
			public HRESULT GetContext(HWND hWnd, HIMC* phIMC) mut
			{
				return VT.GetContext(&this, hWnd, phIMC);
			}
			public HRESULT GetConversionListA(HKL hKL, HIMC hIMC, PSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) mut
			{
				return VT.GetConversionListA(&this, hKL, hIMC, pSrc, uBufLen, uFlag, pDst, puCopied);
			}
			public HRESULT GetConversionListW(HKL hKL, HIMC hIMC, PWSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) mut
			{
				return VT.GetConversionListW(&this, hKL, hIMC, pSrc, uBufLen, uFlag, pDst, puCopied);
			}
			public HRESULT GetConversionStatus(HIMC hIMC, uint32* pfdwConversion, uint32* pfdwSentence) mut
			{
				return VT.GetConversionStatus(&this, hIMC, pfdwConversion, pfdwSentence);
			}
			public HRESULT GetDefaultIMEWnd(HWND hWnd, HWND* phDefWnd) mut
			{
				return VT.GetDefaultIMEWnd(&this, hWnd, phDefWnd);
			}
			public HRESULT GetDescriptionA(HKL hKL, uint32 uBufLen, PSTR szDescription, uint32* puCopied) mut
			{
				return VT.GetDescriptionA(&this, hKL, uBufLen, szDescription, puCopied);
			}
			public HRESULT GetDescriptionW(HKL hKL, uint32 uBufLen, PWSTR szDescription, uint32* puCopied) mut
			{
				return VT.GetDescriptionW(&this, hKL, uBufLen, szDescription, puCopied);
			}
			public HRESULT GetGuideLineA(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PSTR pBuf, uint32* pdwResult) mut
			{
				return VT.GetGuideLineA(&this, hIMC, dwIndex, dwBufLen, pBuf, pdwResult);
			}
			public HRESULT GetGuideLineW(HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PWSTR pBuf, uint32* pdwResult) mut
			{
				return VT.GetGuideLineW(&this, hIMC, dwIndex, dwBufLen, pBuf, pdwResult);
			}
			public HRESULT GetIMEFileNameA(HKL hKL, uint32 uBufLen, PSTR szFileName, uint32* puCopied) mut
			{
				return VT.GetIMEFileNameA(&this, hKL, uBufLen, szFileName, puCopied);
			}
			public HRESULT GetIMEFileNameW(HKL hKL, uint32 uBufLen, PWSTR szFileName, uint32* puCopied) mut
			{
				return VT.GetIMEFileNameW(&this, hKL, uBufLen, szFileName, puCopied);
			}
			public HRESULT GetOpenStatus(HIMC hIMC) mut
			{
				return VT.GetOpenStatus(&this, hIMC);
			}
			public HRESULT GetProperty(HKL hKL, uint32 fdwIndex, uint32* pdwProperty) mut
			{
				return VT.GetProperty(&this, hKL, fdwIndex, pdwProperty);
			}
			public HRESULT GetRegisterWordStyleA(HKL hKL, uint32 nItem, STYLEBUFA* pStyleBuf, uint32* puCopied) mut
			{
				return VT.GetRegisterWordStyleA(&this, hKL, nItem, pStyleBuf, puCopied);
			}
			public HRESULT GetRegisterWordStyleW(HKL hKL, uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puCopied) mut
			{
				return VT.GetRegisterWordStyleW(&this, hKL, nItem, pStyleBuf, puCopied);
			}
			public HRESULT GetStatusWindowPos(HIMC hIMC, POINT* pptPos) mut
			{
				return VT.GetStatusWindowPos(&this, hIMC, pptPos);
			}
			public HRESULT GetVirtualKey(HWND hWnd, uint32* puVirtualKey) mut
			{
				return VT.GetVirtualKey(&this, hWnd, puVirtualKey);
			}
			public HRESULT InstallIMEA(PSTR szIMEFileName, PSTR szLayoutText, HKL* phKL) mut
			{
				return VT.InstallIMEA(&this, szIMEFileName, szLayoutText, phKL);
			}
			public HRESULT InstallIMEW(PWSTR szIMEFileName, PWSTR szLayoutText, HKL* phKL) mut
			{
				return VT.InstallIMEW(&this, szIMEFileName, szLayoutText, phKL);
			}
			public HRESULT IsIME(HKL hKL) mut
			{
				return VT.IsIME(&this, hKL);
			}
			public HRESULT IsUIMessageA(HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.IsUIMessageA(&this, hWndIME, msg, wParam, lParam);
			}
			public HRESULT IsUIMessageW(HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.IsUIMessageW(&this, hWndIME, msg, wParam, lParam);
			}
			public HRESULT NotifyIME(HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) mut
			{
				return VT.NotifyIME(&this, hIMC, dwAction, dwIndex, dwValue);
			}
			public HRESULT RegisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister) mut
			{
				return VT.RegisterWordA(&this, hKL, szReading, dwStyle, szRegister);
			}
			public HRESULT RegisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister) mut
			{
				return VT.RegisterWordW(&this, hKL, szReading, dwStyle, szRegister);
			}
			public HRESULT ReleaseContext(HWND hWnd, HIMC hIMC) mut
			{
				return VT.ReleaseContext(&this, hWnd, hIMC);
			}
			public HRESULT SetCandidateWindow(HIMC hIMC, CANDIDATEFORM* pCandidate) mut
			{
				return VT.SetCandidateWindow(&this, hIMC, pCandidate);
			}
			public HRESULT SetCompositionFontA(HIMC hIMC, LOGFONTA* plf) mut
			{
				return VT.SetCompositionFontA(&this, hIMC, plf);
			}
			public HRESULT SetCompositionFontW(HIMC hIMC, LOGFONTW* plf) mut
			{
				return VT.SetCompositionFontW(&this, hIMC, plf);
			}
			public HRESULT SetCompositionStringA(HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) mut
			{
				return VT.SetCompositionStringA(&this, hIMC, dwIndex, pComp, dwCompLen, pRead, dwReadLen);
			}
			public HRESULT SetCompositionStringW(HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) mut
			{
				return VT.SetCompositionStringW(&this, hIMC, dwIndex, pComp, dwCompLen, pRead, dwReadLen);
			}
			public HRESULT SetCompositionWindow(HIMC hIMC, COMPOSITIONFORM* pCompForm) mut
			{
				return VT.SetCompositionWindow(&this, hIMC, pCompForm);
			}
			public HRESULT SetConversionStatus(HIMC hIMC, uint32 fdwConversion, uint32 fdwSentence) mut
			{
				return VT.SetConversionStatus(&this, hIMC, fdwConversion, fdwSentence);
			}
			public HRESULT SetOpenStatus(HIMC hIMC, BOOL fOpen) mut
			{
				return VT.SetOpenStatus(&this, hIMC, fOpen);
			}
			public HRESULT SetStatusWindowPos(HIMC hIMC, POINT* pptPos) mut
			{
				return VT.SetStatusWindowPos(&this, hIMC, pptPos);
			}
			public HRESULT SimulateHotKey(HWND hWnd, uint32 dwHotKeyID) mut
			{
				return VT.SimulateHotKey(&this, hWnd, dwHotKeyID);
			}
			public HRESULT UnregisterWordA(HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szUnregister) mut
			{
				return VT.UnregisterWordA(&this, hKL, szReading, dwStyle, szUnregister);
			}
			public HRESULT UnregisterWordW(HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szUnregister) mut
			{
				return VT.UnregisterWordW(&this, hKL, szReading, dwStyle, szUnregister);
			}
			public HRESULT GenerateMessage(HIMC hIMC) mut
			{
				return VT.GenerateMessage(&this, hIMC);
			}
			public HRESULT LockIMC(HIMC hIMC, INPUTCONTEXT** ppIMC) mut
			{
				return VT.LockIMC(&this, hIMC, ppIMC);
			}
			public HRESULT UnlockIMC(HIMC hIMC) mut
			{
				return VT.UnlockIMC(&this, hIMC);
			}
			public HRESULT GetIMCLockCount(HIMC hIMC, uint32* pdwLockCount) mut
			{
				return VT.GetIMCLockCount(&this, hIMC, pdwLockCount);
			}
			public HRESULT CreateIMCC(uint32 dwSize, HIMCC* phIMCC) mut
			{
				return VT.CreateIMCC(&this, dwSize, phIMCC);
			}
			public HRESULT DestroyIMCC(HIMCC hIMCC) mut
			{
				return VT.DestroyIMCC(&this, hIMCC);
			}
			public HRESULT LockIMCC(HIMCC hIMCC, void** ppv) mut
			{
				return VT.LockIMCC(&this, hIMCC, ppv);
			}
			public HRESULT UnlockIMCC(HIMCC hIMCC) mut
			{
				return VT.UnlockIMCC(&this, hIMCC);
			}
			public HRESULT ReSizeIMCC(HIMCC hIMCC, uint32 dwSize, HIMCC* phIMCC) mut
			{
				return VT.ReSizeIMCC(&this, hIMCC, dwSize, phIMCC);
			}
			public HRESULT GetIMCCSize(HIMCC hIMCC, uint32* pdwSize) mut
			{
				return VT.GetIMCCSize(&this, hIMCC, pdwSize);
			}
			public HRESULT GetIMCCLockCount(HIMCC hIMCC, uint32* pdwLockCount) mut
			{
				return VT.GetIMCCLockCount(&this, hIMCC, pdwLockCount);
			}
			public HRESULT GetHotKey(uint32 dwHotKeyID, uint32* puModifiers, uint32* puVKey, HKL* phKL) mut
			{
				return VT.GetHotKey(&this, dwHotKeyID, puModifiers, puVKey, phKL);
			}
			public HRESULT SetHotKey(uint32 dwHotKeyID, uint32 uModifiers, uint32 uVKey, HKL hKL) mut
			{
				return VT.SetHotKey(&this, dwHotKeyID, uModifiers, uVKey, hKL);
			}
			public HRESULT CreateSoftKeyboard(uint32 uType, HWND hOwner, int32 x, int32 y, HWND* phSoftKbdWnd) mut
			{
				return VT.CreateSoftKeyboard(&this, uType, hOwner, x, y, phSoftKbdWnd);
			}
			public HRESULT DestroySoftKeyboard(HWND hSoftKbdWnd) mut
			{
				return VT.DestroySoftKeyboard(&this, hSoftKbdWnd);
			}
			public HRESULT ShowSoftKeyboard(HWND hSoftKbdWnd, int32 nCmdShow) mut
			{
				return VT.ShowSoftKeyboard(&this, hSoftKbdWnd, nCmdShow);
			}
			public HRESULT GetCodePageA(HKL hKL, uint32* uCodePage) mut
			{
				return VT.GetCodePageA(&this, hKL, uCodePage);
			}
			public HRESULT GetLangId(HKL hKL, uint16* plid) mut
			{
				return VT.GetLangId(&this, hKL, plid);
			}
			public HRESULT KeybdEvent(uint16 lgidIME, uint8 bVk, uint8 bScan, uint32 dwFlags, uint32 dwExtraInfo) mut
			{
				return VT.KeybdEvent(&this, lgidIME, bVk, bScan, dwFlags, dwExtraInfo);
			}
			public HRESULT LockModal() mut
			{
				return VT.LockModal(&this);
			}
			public HRESULT UnlockModal() mut
			{
				return VT.UnlockModal(&this);
			}
			public HRESULT AssociateContextEx(HWND hWnd, HIMC hIMC, uint32 dwFlags) mut
			{
				return VT.AssociateContextEx(&this, hWnd, hIMC, dwFlags);
			}
			public HRESULT DisableIME(uint32 idThread) mut
			{
				return VT.DisableIME(&this, idThread);
			}
			public HRESULT GetImeMenuItemsA(HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOA* pImeParentMenu, IMEMENUITEMINFOA* pImeMenu, uint32 dwSize, uint32* pdwResult) mut
			{
				return VT.GetImeMenuItemsA(&this, hIMC, dwFlags, dwType, pImeParentMenu, pImeMenu, dwSize, pdwResult);
			}
			public HRESULT GetImeMenuItemsW(HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOW* pImeParentMenu, IMEMENUITEMINFOW* pImeMenu, uint32 dwSize, uint32* pdwResult) mut
			{
				return VT.GetImeMenuItemsW(&this, hIMC, dwFlags, dwType, pImeParentMenu, pImeMenu, dwSize, pdwResult);
			}
			public HRESULT EnumInputContext(uint32 idThread, IEnumInputContext** ppEnum) mut
			{
				return VT.EnumInputContext(&this, idThread, ppEnum);
			}
			public HRESULT RequestMessageA(HIMC hIMC, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.RequestMessageA(&this, hIMC, wParam, lParam, plResult);
			}
			public HRESULT RequestMessageW(HIMC hIMC, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.RequestMessageW(&this, hIMC, wParam, lParam, plResult);
			}
			public HRESULT SendIMCA(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.SendIMCA(&this, hWnd, uMsg, wParam, lParam, plResult);
			}
			public HRESULT SendIMCW(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.SendIMCW(&this, hWnd, uMsg, wParam, lParam, plResult);
			}
			public HRESULT IsSleeping() mut
			{
				return VT.IsSleeping(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, HIMC hIME, HIMC* phPrev) AssociateContext;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDA* pData) ConfigureIMEA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pData) ConfigureIMEW;
				public new function HRESULT(IActiveIMMIME *self, HIMC* phIMC) CreateContext;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIME) DestroyContext;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister, void* pData, IEnumRegisterWordA** pEnum) EnumRegisterWordA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** pEnum) EnumRegisterWordW;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) EscapeA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) EscapeW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) GetCandidateListA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 uBufLen, CANDIDATELIST* pCandList, uint32* puCopied) GetCandidateListW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) GetCandidateListCountA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32* pdwListSize, uint32* pdwBufLen) GetCandidateListCountW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, CANDIDATEFORM* pCandidate) GetCandidateWindow;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, LOGFONTA* plf) GetCompositionFontA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, LOGFONTW* plf) GetCompositionFontW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) GetCompositionStringA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, int32* plCopied, void* pBuf) GetCompositionStringW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, COMPOSITIONFORM* pCompForm) GetCompositionWindow;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, HIMC* phIMC) GetContext;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HIMC hIMC, PSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) GetConversionListA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, HIMC hIMC, PWSTR pSrc, uint32 uBufLen, uint32 uFlag, CANDIDATELIST* pDst, uint32* puCopied) GetConversionListW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32* pfdwConversion, uint32* pfdwSentence) GetConversionStatus;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, HWND* phDefWnd) GetDefaultIMEWnd;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 uBufLen, PSTR szDescription, uint32* puCopied) GetDescriptionA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 uBufLen, PWSTR szDescription, uint32* puCopied) GetDescriptionW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PSTR pBuf, uint32* pdwResult) GetGuideLineA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, uint32 dwBufLen, PWSTR pBuf, uint32* pdwResult) GetGuideLineW;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 uBufLen, PSTR szFileName, uint32* puCopied) GetIMEFileNameA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 uBufLen, PWSTR szFileName, uint32* puCopied) GetIMEFileNameW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC) GetOpenStatus;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 fdwIndex, uint32* pdwProperty) GetProperty;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 nItem, STYLEBUFA* pStyleBuf, uint32* puCopied) GetRegisterWordStyleA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puCopied) GetRegisterWordStyleW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, POINT* pptPos) GetStatusWindowPos;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, uint32* puVirtualKey) GetVirtualKey;
				public new function HRESULT(IActiveIMMIME *self, PSTR szIMEFileName, PSTR szLayoutText, HKL* phKL) InstallIMEA;
				public new function HRESULT(IActiveIMMIME *self, PWSTR szIMEFileName, PWSTR szLayoutText, HKL* phKL) InstallIMEW;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL) IsIME;
				public new function HRESULT(IActiveIMMIME *self, HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) IsUIMessageA;
				public new function HRESULT(IActiveIMMIME *self, HWND hWndIME, uint32 msg, WPARAM wParam, LPARAM lParam) IsUIMessageW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) NotifyIME;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szRegister) RegisterWordA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szRegister) RegisterWordW;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, HIMC hIMC) ReleaseContext;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, CANDIDATEFORM* pCandidate) SetCandidateWindow;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, LOGFONTA* plf) SetCompositionFontA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, LOGFONTW* plf) SetCompositionFontW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) SetCompositionStringA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) SetCompositionStringW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, COMPOSITIONFORM* pCompForm) SetCompositionWindow;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 fdwConversion, uint32 fdwSentence) SetConversionStatus;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, BOOL fOpen) SetOpenStatus;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, POINT* pptPos) SetStatusWindowPos;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, uint32 dwHotKeyID) SimulateHotKey;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PSTR szReading, uint32 dwStyle, PSTR szUnregister) UnregisterWordA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, PWSTR szReading, uint32 dwStyle, PWSTR szUnregister) UnregisterWordW;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC) GenerateMessage;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, INPUTCONTEXT** ppIMC) LockIMC;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC) UnlockIMC;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32* pdwLockCount) GetIMCLockCount;
				public new function HRESULT(IActiveIMMIME *self, uint32 dwSize, HIMCC* phIMCC) CreateIMCC;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC) DestroyIMCC;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC, void** ppv) LockIMCC;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC) UnlockIMCC;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC, uint32 dwSize, HIMCC* phIMCC) ReSizeIMCC;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC, uint32* pdwSize) GetIMCCSize;
				public new function HRESULT(IActiveIMMIME *self, HIMCC hIMCC, uint32* pdwLockCount) GetIMCCLockCount;
				public new function HRESULT(IActiveIMMIME *self, uint32 dwHotKeyID, uint32* puModifiers, uint32* puVKey, HKL* phKL) GetHotKey;
				public new function HRESULT(IActiveIMMIME *self, uint32 dwHotKeyID, uint32 uModifiers, uint32 uVKey, HKL hKL) SetHotKey;
				public new function HRESULT(IActiveIMMIME *self, uint32 uType, HWND hOwner, int32 x, int32 y, HWND* phSoftKbdWnd) CreateSoftKeyboard;
				public new function HRESULT(IActiveIMMIME *self, HWND hSoftKbdWnd) DestroySoftKeyboard;
				public new function HRESULT(IActiveIMMIME *self, HWND hSoftKbdWnd, int32 nCmdShow) ShowSoftKeyboard;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint32* uCodePage) GetCodePageA;
				public new function HRESULT(IActiveIMMIME *self, HKL hKL, uint16* plid) GetLangId;
				public new function HRESULT(IActiveIMMIME *self, uint16 lgidIME, uint8 bVk, uint8 bScan, uint32 dwFlags, uint32 dwExtraInfo) KeybdEvent;
				public new function HRESULT(IActiveIMMIME *self) LockModal;
				public new function HRESULT(IActiveIMMIME *self) UnlockModal;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, HIMC hIMC, uint32 dwFlags) AssociateContextEx;
				public new function HRESULT(IActiveIMMIME *self, uint32 idThread) DisableIME;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOA* pImeParentMenu, IMEMENUITEMINFOA* pImeMenu, uint32 dwSize, uint32* pdwResult) GetImeMenuItemsA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, uint32 dwFlags, uint32 dwType, IMEMENUITEMINFOW* pImeParentMenu, IMEMENUITEMINFOW* pImeMenu, uint32 dwSize, uint32* pdwResult) GetImeMenuItemsW;
				public new function HRESULT(IActiveIMMIME *self, uint32 idThread, IEnumInputContext** ppEnum) EnumInputContext;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, WPARAM wParam, LPARAM lParam, LRESULT* plResult) RequestMessageA;
				public new function HRESULT(IActiveIMMIME *self, HIMC hIMC, WPARAM wParam, LPARAM lParam, LRESULT* plResult) RequestMessageW;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) SendIMCA;
				public new function HRESULT(IActiveIMMIME *self, HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) SendIMCW;
				public new function HRESULT(IActiveIMMIME *self) IsSleeping;
			}
		}
		[CRepr]
		public struct IActiveIME : IUnknown
		{
			public const new Guid IID = .(0x6fe20962, 0xd077, 0x11d0, 0x8f, 0xe7, 0x00, 0xaa, 0x00, 0x6b, 0xcc, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Inquire(uint32 dwSystemInfoFlags, IMEINFO* pIMEInfo, PWSTR szWndClass, uint32* pdwPrivate) mut
			{
				return VT.Inquire(&this, dwSystemInfoFlags, pIMEInfo, szWndClass, pdwPrivate);
			}
			public HRESULT ConversionList(HIMC hIMC, PWSTR szSource, uint32 uFlag, uint32 uBufLen, CANDIDATELIST* pDest, uint32* puCopied) mut
			{
				return VT.ConversionList(&this, hIMC, szSource, uFlag, uBufLen, pDest, puCopied);
			}
			public HRESULT Configure(HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pRegisterWord) mut
			{
				return VT.Configure(&this, hKL, hWnd, dwMode, pRegisterWord);
			}
			public HRESULT Destroy(uint32 uReserved) mut
			{
				return VT.Destroy(&this, uReserved);
			}
			public HRESULT Escape(HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) mut
			{
				return VT.Escape(&this, hIMC, uEscape, pData, plResult);
			}
			public HRESULT SetActiveContext(HIMC hIMC, BOOL fFlag) mut
			{
				return VT.SetActiveContext(&this, hIMC, fFlag);
			}
			public HRESULT ProcessKey(HIMC hIMC, uint32 uVirKey, uint32 lParam, uint8* pbKeyState) mut
			{
				return VT.ProcessKey(&this, hIMC, uVirKey, lParam, pbKeyState);
			}
			public HRESULT Notify(HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) mut
			{
				return VT.Notify(&this, hIMC, dwAction, dwIndex, dwValue);
			}
			public HRESULT Select(HIMC hIMC, BOOL fSelect) mut
			{
				return VT.Select(&this, hIMC, fSelect);
			}
			public HRESULT SetCompositionString(HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) mut
			{
				return VT.SetCompositionString(&this, hIMC, dwIndex, pComp, dwCompLen, pRead, dwReadLen);
			}
			public HRESULT ToAsciiEx(uint32 uVirKey, uint32 uScanCode, uint8* pbKeyState, uint32 fuState, HIMC hIMC, uint32* pdwTransBuf, uint32* puSize) mut
			{
				return VT.ToAsciiEx(&this, uVirKey, uScanCode, pbKeyState, fuState, hIMC, pdwTransBuf, puSize);
			}
			public HRESULT RegisterWord(PWSTR szReading, uint32 dwStyle, PWSTR szString) mut
			{
				return VT.RegisterWord(&this, szReading, dwStyle, szString);
			}
			public HRESULT UnregisterWord(PWSTR szReading, uint32 dwStyle, PWSTR szString) mut
			{
				return VT.UnregisterWord(&this, szReading, dwStyle, szString);
			}
			public HRESULT GetRegisterWordStyle(uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puBufSize) mut
			{
				return VT.GetRegisterWordStyle(&this, nItem, pStyleBuf, puBufSize);
			}
			public HRESULT EnumRegisterWord(PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** ppEnum) mut
			{
				return VT.EnumRegisterWord(&this, szReading, dwStyle, szRegister, pData, ppEnum);
			}
			public HRESULT GetCodePageA(uint32* uCodePage) mut
			{
				return VT.GetCodePageA(&this, uCodePage);
			}
			public HRESULT GetLangId(uint16* plid) mut
			{
				return VT.GetLangId(&this, plid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActiveIME *self, uint32 dwSystemInfoFlags, IMEINFO* pIMEInfo, PWSTR szWndClass, uint32* pdwPrivate) Inquire;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, PWSTR szSource, uint32 uFlag, uint32 uBufLen, CANDIDATELIST* pDest, uint32* puCopied) ConversionList;
				public new function HRESULT(IActiveIME *self, HKL hKL, HWND hWnd, uint32 dwMode, REGISTERWORDW* pRegisterWord) Configure;
				public new function HRESULT(IActiveIME *self, uint32 uReserved) Destroy;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, uint32 uEscape, void* pData, LRESULT* plResult) Escape;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, BOOL fFlag) SetActiveContext;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, uint32 uVirKey, uint32 lParam, uint8* pbKeyState) ProcessKey;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, uint32 dwAction, uint32 dwIndex, uint32 dwValue) Notify;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, BOOL fSelect) Select;
				public new function HRESULT(IActiveIME *self, HIMC hIMC, uint32 dwIndex, void* pComp, uint32 dwCompLen, void* pRead, uint32 dwReadLen) SetCompositionString;
				public new function HRESULT(IActiveIME *self, uint32 uVirKey, uint32 uScanCode, uint8* pbKeyState, uint32 fuState, HIMC hIMC, uint32* pdwTransBuf, uint32* puSize) ToAsciiEx;
				public new function HRESULT(IActiveIME *self, PWSTR szReading, uint32 dwStyle, PWSTR szString) RegisterWord;
				public new function HRESULT(IActiveIME *self, PWSTR szReading, uint32 dwStyle, PWSTR szString) UnregisterWord;
				public new function HRESULT(IActiveIME *self, uint32 nItem, STYLEBUFW* pStyleBuf, uint32* puBufSize) GetRegisterWordStyle;
				public new function HRESULT(IActiveIME *self, PWSTR szReading, uint32 dwStyle, PWSTR szRegister, void* pData, IEnumRegisterWordW** ppEnum) EnumRegisterWord;
				public new function HRESULT(IActiveIME *self, uint32* uCodePage) GetCodePageA;
				public new function HRESULT(IActiveIME *self, uint16* plid) GetLangId;
			}
		}
		[CRepr]
		public struct IActiveIME2 : IActiveIME
		{
			public const new Guid IID = .(0xe1c4bf0e, 0x2d53, 0x11d2, 0x93, 0xe1, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Sleep() mut
			{
				return VT.Sleep(&this);
			}
			public HRESULT Unsleep(BOOL fDead) mut
			{
				return VT.Unsleep(&this, fDead);
			}
			[CRepr]
			public struct VTable : IActiveIME.VTable
			{
				public new function HRESULT(IActiveIME2 *self) Sleep;
				public new function HRESULT(IActiveIME2 *self, BOOL fDead) Unsleep;
			}
		}
		
		// --- Functions ---
		
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL ImmInstallIMEA(PSTR lpszIMEFileName, PSTR lpszLayoutText);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HKL ImmInstallIMEW(PWSTR lpszIMEFileName, PWSTR lpszLayoutText);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND ImmGetDefaultIMEWnd(HWND param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetDescriptionA(HKL param0, uint8* lpszDescription, uint32 uBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetDescriptionW(HKL param0, char16* lpszDescription, uint32 uBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetIMEFileNameA(HKL param0, uint8* lpszFileName, uint32 uBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetIMEFileNameW(HKL param0, char16* lpszFileName, uint32 uBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetProperty(HKL param0, uint32 param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmIsIME(HKL param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSimulateHotKey(HWND param0, uint32 param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMC ImmCreateContext();
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmDestroyContext(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMC ImmGetContext(HWND param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmReleaseContext(HWND param0, HIMC param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMC ImmAssociateContext(HWND param0, HIMC param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmAssociateContextEx(HWND param0, HIMC param1, uint32 param2);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImmGetCompositionStringA(HIMC param0, uint32 param1, void* lpBuf, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ImmGetCompositionStringW(HIMC param0, uint32 param1, void* lpBuf, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCompositionStringA(HIMC param0, SET_COMPOSITION_STRING_TYPE dwIndex, void* lpComp, uint32 dwCompLen, void* lpRead, uint32 dwReadLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCompositionStringW(HIMC param0, SET_COMPOSITION_STRING_TYPE dwIndex, void* lpComp, uint32 dwCompLen, void* lpRead, uint32 dwReadLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetCandidateListCountA(HIMC param0, uint32* lpdwListCount);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetCandidateListCountW(HIMC param0, uint32* lpdwListCount);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetCandidateListA(HIMC param0, uint32 deIndex, CANDIDATELIST* lpCandList, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetCandidateListW(HIMC param0, uint32 deIndex, CANDIDATELIST* lpCandList, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetGuideLineA(HIMC param0, GET_GUIDE_LINE_TYPE dwIndex, PSTR lpBuf, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetGuideLineW(HIMC param0, GET_GUIDE_LINE_TYPE dwIndex, PWSTR lpBuf, uint32 dwBufLen);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetConversionStatus(HIMC param0, uint32* lpfdwConversion, uint32* lpfdwSentence);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetConversionStatus(HIMC param0, uint32 param1, uint32 param2);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetOpenStatus(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetOpenStatus(HIMC param0, BOOL param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetCompositionFontA(HIMC param0, LOGFONTA* lplf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetCompositionFontW(HIMC param0, LOGFONTW* lplf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCompositionFontA(HIMC param0, LOGFONTA* lplf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCompositionFontW(HIMC param0, LOGFONTW* lplf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmConfigureIMEA(HKL param0, HWND param1, uint32 param2, void* param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmConfigureIMEW(HKL param0, HWND param1, uint32 param2, void* param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT ImmEscapeA(HKL param0, HIMC param1, uint32 param2, void* param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT ImmEscapeW(HKL param0, HIMC param1, uint32 param2, void* param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetConversionListA(HKL param0, HIMC param1, PSTR lpSrc, CANDIDATELIST* lpDst, uint32 dwBufLen, GET_CONVERSION_LIST_FLAG uFlag);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetConversionListW(HKL param0, HIMC param1, PWSTR lpSrc, CANDIDATELIST* lpDst, uint32 dwBufLen, GET_CONVERSION_LIST_FLAG uFlag);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmNotifyIME(HIMC param0, NOTIFY_IME_ACTION dwAction, NOTIFY_IME_INDEX dwIndex, uint32 dwValue);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetStatusWindowPos(HIMC param0, POINT* lpptPos);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetStatusWindowPos(HIMC param0, POINT* lpptPos);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetCompositionWindow(HIMC param0, COMPOSITIONFORM* lpCompForm);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCompositionWindow(HIMC param0, COMPOSITIONFORM* lpCompForm);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetCandidateWindow(HIMC param0, uint32 param1, CANDIDATEFORM* lpCandidate);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetCandidateWindow(HIMC param0, CANDIDATEFORM* lpCandidate);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmIsUIMessageA(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmIsUIMessageW(HWND param0, uint32 param1, WPARAM param2, LPARAM param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetVirtualKey(HWND param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmRegisterWordA(HKL param0, PSTR lpszReading, uint32 param2, PSTR lpszRegister);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmRegisterWordW(HKL param0, PWSTR lpszReading, uint32 param2, PWSTR lpszRegister);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmUnregisterWordA(HKL param0, PSTR lpszReading, uint32 param2, PSTR lpszUnregister);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmUnregisterWordW(HKL param0, PWSTR lpszReading, uint32 param2, PWSTR lpszUnregister);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetRegisterWordStyleA(HKL param0, uint32 nItem, STYLEBUFA* lpStyleBuf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetRegisterWordStyleW(HKL param0, uint32 nItem, STYLEBUFW* lpStyleBuf);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmEnumRegisterWordA(HKL param0, REGISTERWORDENUMPROCA param1, PSTR lpszReading, uint32 param3, PSTR lpszRegister, void* param5);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmEnumRegisterWordW(HKL param0, REGISTERWORDENUMPROCW param1, PWSTR lpszReading, uint32 param3, PWSTR lpszRegister, void* param5);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmDisableIME(uint32 param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmEnumInputContext(uint32 idThread, IMCENUMPROC lpfn, LPARAM lParam);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetImeMenuItemsA(HIMC param0, uint32 param1, uint32 param2, IMEMENUITEMINFOA* lpImeParentMenu, IMEMENUITEMINFOA* lpImeMenu, uint32 dwSize);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetImeMenuItemsW(HIMC param0, uint32 param1, uint32 param2, IMEMENUITEMINFOW* lpImeParentMenu, IMEMENUITEMINFOW* lpImeMenu, uint32 dwSize);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmDisableTextFrameService(uint32 idThread);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmDisableLegacyIME();
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGetHotKey(uint32 param0, uint32* lpuModifiers, uint32* lpuVKey, int* phKL);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmSetHotKey(uint32 param0, uint32 param1, uint32 param2, HKL param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmGenerateMessage(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT ImmRequestMessageA(HIMC param0, WPARAM param1, LPARAM param2);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT ImmRequestMessageW(HIMC param0, WPARAM param1, LPARAM param2);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HWND ImmCreateSoftKeyboard(uint32 param0, HWND param1, int32 param2, int32 param3);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmDestroySoftKeyboard(HWND param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmShowSoftKeyboard(HWND param0, int32 param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern INPUTCONTEXT* ImmLockIMC(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmUnlockIMC(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetIMCLockCount(HIMC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMCC ImmCreateIMCC(uint32 param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMCC ImmDestroyIMCC(HIMCC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* ImmLockIMCC(HIMCC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImmUnlockIMCC(HIMCC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetIMCCLockCount(HIMCC param0);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HIMCC ImmReSizeIMCC(HIMCC param0, uint32 param1);
		[Import("imm32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ImmGetIMCCSize(HIMCC param0);
		
	}
}
