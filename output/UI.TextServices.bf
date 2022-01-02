using System;

// namespace UI.TextServices
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid GUID_PROP_TEXTOWNER = .(0xf1e2d520, 0x0969, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_PROP_ATTRIBUTE = .(0x34b45670, 0x7526, 0x11d2, 0xa1, 0x47, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_PROP_LANGID = .(0x3280ce20, 0x8032, 0x11d2, 0xb6, 0x03, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_PROP_READING = .(0x5463f7c0, 0x8e31, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_PROP_COMPOSING = .(0xe12ac060, 0xaf15, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_PROP_TKB_ALTERNATES = .(0x70b2a803, 0x968d, 0x462e, 0xb9, 0x3b, 0x21, 0x64, 0xc9, 0x15, 0x17, 0xf7);
		public const Guid GUID_SYSTEM_FUNCTIONPROVIDER = .(0x9a698bb0, 0x0f21, 0x11d3, 0x8d, 0xf1, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
		public const Guid GUID_APP_FUNCTIONPROVIDER = .(0x4caef01e, 0x12af, 0x4b0e, 0x9d, 0xb1, 0xa6, 0xec, 0x5b, 0x88, 0x12, 0x08);
		public const Guid GUID_TFCAT_CATEGORY_OF_TIP = .(0x534c48c1, 0x0607, 0x4098, 0xa5, 0x21, 0x4f, 0xc8, 0x99, 0xc7, 0x3e, 0x90);
		public const Guid GUID_TFCAT_TIP_KEYBOARD = .(0x34745c63, 0xb2f0, 0x4784, 0x8b, 0x67, 0x5e, 0x12, 0xc8, 0x70, 0x1a, 0x31);
		public const Guid GUID_TFCAT_TIP_SPEECH = .(0xb5a73cd1, 0x8355, 0x426b, 0xa1, 0x61, 0x25, 0x98, 0x08, 0xf2, 0x6b, 0x14);
		public const Guid GUID_TFCAT_TIP_HANDWRITING = .(0x246ecb87, 0xc2f2, 0x4abe, 0x90, 0x5b, 0xc8, 0xb3, 0x8a, 0xdd, 0x2c, 0x43);
		public const Guid GUID_TFCAT_PROP_AUDIODATA = .(0x9b7be3a9, 0xe8ab, 0x4d47, 0xa8, 0xfe, 0x25, 0x4f, 0xa4, 0x23, 0x43, 0x6d);
		public const Guid GUID_TFCAT_PROP_INKDATA = .(0x7c6a82ae, 0xb0d7, 0x4f14, 0xa7, 0x45, 0x14, 0xf2, 0x8b, 0x00, 0x9d, 0x61);
		public const Guid GUID_COMPARTMENT_SAPI_AUDIO = .(0x51af2086, 0xcc6b, 0x457d, 0xb5, 0xaa, 0x8b, 0x19, 0xdc, 0x29, 0x0a, 0xb4);
		public const Guid GUID_COMPARTMENT_KEYBOARD_DISABLED = .(0x71a5b253, 0x1951, 0x466b, 0x9f, 0xbc, 0x9c, 0x88, 0x08, 0xfa, 0x84, 0xf2);
		public const Guid GUID_COMPARTMENT_KEYBOARD_OPENCLOSE = .(0x58273aad, 0x01bb, 0x4164, 0x95, 0xc6, 0x75, 0x5b, 0xa0, 0xb5, 0x16, 0x2d);
		public const Guid GUID_COMPARTMENT_HANDWRITING_OPENCLOSE = .(0xf9ae2c6b, 0x1866, 0x4361, 0xaf, 0x72, 0x7a, 0xa3, 0x09, 0x48, 0x89, 0x0e);
		public const Guid GUID_COMPARTMENT_SPEECH_DISABLED = .(0x56c5c607, 0x0703, 0x4e59, 0x8e, 0x52, 0xcb, 0xc8, 0x4e, 0x8b, 0xbe, 0x35);
		public const Guid GUID_COMPARTMENT_SPEECH_OPENCLOSE = .(0x544d6a63, 0xe2e8, 0x4752, 0xbb, 0xd1, 0x00, 0x09, 0x60, 0xbc, 0xa0, 0x83);
		public const Guid GUID_COMPARTMENT_SPEECH_GLOBALSTATE = .(0x2a54fe8e, 0x0d08, 0x460c, 0xa7, 0x5d, 0x87, 0x03, 0x5f, 0xf4, 0x36, 0xc5);
		public const Guid GUID_COMPARTMENT_CONVERSIONMODEBIAS = .(0x5497f516, 0xee91, 0x436e, 0xb9, 0x46, 0xaa, 0x2c, 0x05, 0xf1, 0xac, 0x5b);
		public const Guid GUID_PROP_MODEBIAS = .(0x372e0716, 0x974f, 0x40ac, 0xa0, 0x88, 0x08, 0xcd, 0xc9, 0x2e, 0xbf, 0xbc);
		public const Guid GUID_COMPARTMENT_KEYBOARD_INPUTMODE = .(0xb6592511, 0xbcee, 0x4122, 0xa7, 0xc4, 0x09, 0xf4, 0xb3, 0xfa, 0x43, 0x96);
		public const Guid GUID_MODEBIAS_NONE = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid GUID_MODEBIAS_URLHISTORY = .(0x8b0e54d9, 0x63f2, 0x4c68, 0x84, 0xd4, 0x79, 0xae, 0xe7, 0xa5, 0x9f, 0x09);
		public const Guid GUID_MODEBIAS_FILENAME = .(0xd7f707fe, 0x44c6, 0x4fca, 0x8e, 0x76, 0x86, 0xab, 0x50, 0xc7, 0x93, 0x1b);
		public const Guid GUID_MODEBIAS_READING = .(0xe31643a3, 0x6466, 0x4cbf, 0x8d, 0x8b, 0x0b, 0xd4, 0xd8, 0x54, 0x54, 0x61);
		public const Guid GUID_MODEBIAS_DATETIME = .(0xf2bdb372, 0x7f61, 0x4039, 0x92, 0xef, 0x1c, 0x35, 0x59, 0x9f, 0x02, 0x22);
		public const Guid GUID_MODEBIAS_NAME = .(0xfddc10f0, 0xd239, 0x49bf, 0xb8, 0xfc, 0x54, 0x10, 0xca, 0xaa, 0x42, 0x7e);
		public const Guid GUID_MODEBIAS_CONVERSATION = .(0x0f4ec104, 0x1790, 0x443b, 0x95, 0xf1, 0xe1, 0x0f, 0x93, 0x9d, 0x65, 0x46);
		public const Guid GUID_MODEBIAS_NUMERIC = .(0x4021766c, 0xe872, 0x48fd, 0x9c, 0xee, 0x4e, 0xc5, 0xc7, 0x5e, 0x16, 0xc3);
		public const Guid GUID_MODEBIAS_HIRAGANA = .(0xd73d316e, 0x9b91, 0x46f1, 0xa2, 0x80, 0x31, 0x59, 0x7f, 0x52, 0xc6, 0x94);
		public const Guid GUID_MODEBIAS_KATAKANA = .(0x2e0eeddd, 0x3a1a, 0x499e, 0x85, 0x43, 0x3c, 0x7e, 0xe7, 0x94, 0x98, 0x11);
		public const Guid GUID_MODEBIAS_HANGUL = .(0x76ef0541, 0x23b3, 0x4d77, 0xa0, 0x74, 0x69, 0x18, 0x01, 0xcc, 0xea, 0x17);
		public const Guid GUID_MODEBIAS_CHINESE = .(0x7add26de, 0x4328, 0x489b, 0x83, 0xae, 0x64, 0x93, 0x75, 0x0c, 0xad, 0x5c);
		public const Guid GUID_MODEBIAS_HALFWIDTHKATAKANA = .(0x005f6b63, 0x78d4, 0x41cc, 0x88, 0x59, 0x48, 0x5c, 0xa8, 0x21, 0xa7, 0x95);
		public const Guid GUID_MODEBIAS_FULLWIDTHALPHANUMERIC = .(0x81489fb8, 0xb36a, 0x473d, 0x81, 0x46, 0xe4, 0xa2, 0x25, 0x8b, 0x24, 0xae);
		public const Guid GUID_MODEBIAS_FULLWIDTHHANGUL = .(0xc01ae6c9, 0x45b5, 0x4fd0, 0x9c, 0xb1, 0x9f, 0x4c, 0xeb, 0xc3, 0x9f, 0xea);
		public const Guid GUID_TFCAT_PROPSTYLE_STATIC = .(0x565fb8d8, 0x6bd4, 0x4ca1, 0xb2, 0x23, 0x0f, 0x2c, 0xcb, 0x8f, 0x4f, 0x96);
		public const Guid GUID_TFCAT_DISPLAYATTRIBUTEPROVIDER = .(0x046b8c80, 0x1647, 0x40f7, 0x9b, 0x21, 0xb9, 0x3b, 0x81, 0xaa, 0xbc, 0x1b);
		public const Guid GUID_TFCAT_DISPLAYATTRIBUTEPROPERTY = .(0xb95f181b, 0xea4c, 0x4af1, 0x80, 0x56, 0x7c, 0x32, 0x1a, 0xbb, 0xb0, 0x91);
		public const Guid GUID_COMPARTMENT_SPEECH_UI_STATUS = .(0xd92016f0, 0x9367, 0x4fe7, 0x9a, 0xbf, 0xbc, 0x59, 0xda, 0xcb, 0xe0, 0xe3);
		public const Guid GUID_COMPARTMENT_EMPTYCONTEXT = .(0xd7487dbf, 0x804e, 0x41c5, 0x89, 0x4d, 0xad, 0x96, 0xfd, 0x4e, 0xea, 0x13);
		public const Guid GUID_COMPARTMENT_TIPUISTATUS = .(0x148ca3ec, 0x0366, 0x401c, 0x8d, 0x75, 0xed, 0x97, 0x8d, 0x85, 0xfb, 0xc9);
		public const Guid GUID_COMPARTMENT_SPEECH_CFGMENU = .(0xfb6c5c2d, 0x4e83, 0x4bb6, 0x91, 0xa2, 0xe0, 0x19, 0xbf, 0xf6, 0x76, 0x2d);
		public const Guid GUID_LBI_SAPILAYR_CFGMENUBUTTON = .(0xd02f24a1, 0x942d, 0x422e, 0x8d, 0x99, 0xb4, 0xf2, 0xad, 0xde, 0xe9, 0x99);
		public const Guid GUID_TFCAT_TIPCAP_SECUREMODE = .(0x49d2f9ce, 0x1f5e, 0x11d7, 0xa6, 0xd3, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_TFCAT_TIPCAP_UIELEMENTENABLED = .(0x49d2f9cf, 0x1f5e, 0x11d7, 0xa6, 0xd3, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_TFCAT_TIPCAP_INPUTMODECOMPARTMENT = .(0xccf05dd7, 0x4a87, 0x11d7, 0xa6, 0xe2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_TFCAT_TIPCAP_COMLESS = .(0x364215d9, 0x75bc, 0x11d7, 0xa6, 0xef, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_TFCAT_TIPCAP_WOW16 = .(0x364215da, 0x75bc, 0x11d7, 0xa6, 0xef, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_TFCAT_TIPCAP_IMMERSIVESUPPORT = .(0x13a016df, 0x560b, 0x46cd, 0x94, 0x7a, 0x4c, 0x3a, 0xf1, 0xe0, 0xe3, 0x5d);
		public const Guid GUID_TFCAT_TIPCAP_IMMERSIVEONLY = .(0x3a4259ac, 0x640d, 0x4ad4, 0x89, 0xf7, 0x1e, 0xb6, 0x7e, 0x7c, 0x4e, 0xe8);
		public const Guid GUID_TFCAT_TIPCAP_LOCALSERVER = .(0x74769ee9, 0x4a66, 0x4f9d, 0x90, 0xd6, 0xbf, 0x8b, 0x7c, 0x3e, 0xb4, 0x61);
		public const Guid GUID_TFCAT_TIPCAP_TSF3 = .(0x07dcb4af, 0x98de, 0x4548, 0xbe, 0xf7, 0x25, 0xbd, 0x45, 0x97, 0x9a, 0x1f);
		public const Guid GUID_TFCAT_TIPCAP_DUALMODE = .(0x3af314a2, 0xd79f, 0x4b1b, 0x99, 0x92, 0x15, 0x08, 0x6d, 0x33, 0x9b, 0x05);
		public const Guid GUID_TFCAT_TIPCAP_SYSTRAYSUPPORT = .(0x25504fb4, 0x7bab, 0x4bc1, 0x9c, 0x69, 0xcf, 0x81, 0x89, 0x0f, 0x0e, 0xf5);
		public const Guid GUID_COMPARTMENT_KEYBOARD_INPUTMODE_CONVERSION = .(0xccf05dd8, 0x4a87, 0x11d7, 0xa6, 0xe2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_COMPARTMENT_KEYBOARD_INPUTMODE_SENTENCE = .(0xccf05dd9, 0x4a87, 0x11d7, 0xa6, 0xe2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_COMPARTMENT_TRANSITORYEXTENSION = .(0x8be347f5, 0xc7a0, 0x11d7, 0xb4, 0x08, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_COMPARTMENT_TRANSITORYEXTENSION_DOCUMENTMANAGER = .(0x8be347f7, 0xc7a0, 0x11d7, 0xb4, 0x08, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_COMPARTMENT_TRANSITORYEXTENSION_PARENT = .(0x8be347f8, 0xc7a0, 0x11d7, 0xb4, 0x08, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
		public const Guid GUID_COMPARTMENT_ENABLED_PROFILES_UPDATED = .(0x92c1fd48, 0xa9ae, 0x4a7c, 0xbe, 0x08, 0x43, 0x29, 0xe4, 0x72, 0x38, 0x17);
		public const Guid GUID_TFCAT_TRANSITORYEXTENSIONUI = .(0x6302de22, 0xa5cf, 0x4b02, 0xbf, 0xe8, 0x4d, 0x72, 0xb2, 0xbe, 0xd3, 0xc6);
		public const Guid GUID_LBI_INPUTMODE = .(0x2c77a81e, 0x41cc, 0x4178, 0xa3, 0xa7, 0x5f, 0x8a, 0x98, 0x75, 0x68, 0xe6);
		public const Guid CLSID_TF_ThreadMgr = .(0x529a9e6b, 0x6587, 0x4f23, 0xab, 0x9e, 0x9c, 0x7d, 0x68, 0x3e, 0x3c, 0x50);
		public const Guid CLSID_TF_LangBarMgr = .(0xebb08c45, 0x6c4a, 0x4fdc, 0xae, 0x53, 0x4e, 0xb8, 0xc4, 0xc7, 0xdb, 0x8e);
		public const Guid CLSID_TF_DisplayAttributeMgr = .(0x3ce74de4, 0x53d3, 0x4d74, 0x8b, 0x83, 0x43, 0x1b, 0x38, 0x28, 0xba, 0x53);
		public const Guid CLSID_TF_CategoryMgr = .(0xa4b544a1, 0x438d, 0x4b41, 0x93, 0x25, 0x86, 0x95, 0x23, 0xe2, 0xd6, 0xc7);
		public const Guid CLSID_TF_InputProcessorProfiles = .(0x33c53a50, 0xf456, 0x4884, 0xb0, 0x49, 0x85, 0xfd, 0x64, 0x3e, 0xcf, 0xed);
		public const Guid CLSID_TF_LangBarItemMgr = .(0xb9931692, 0xa2b3, 0x4fab, 0xbf, 0x33, 0x9e, 0xc6, 0xf9, 0xfb, 0x96, 0xac);
		public const Guid CLSID_TF_ClassicLangBar = .(0x3318360c, 0x1afc, 0x4d09, 0xa8, 0x6b, 0x9f, 0x9c, 0xb6, 0xdc, 0xeb, 0x9c);
		public const Guid CLSID_TF_TransitoryExtensionUIEntry = .(0xae6be008, 0x07fb, 0x400d, 0x8b, 0xeb, 0x33, 0x7a, 0x64, 0xf7, 0x05, 0x1f);
		public const Guid CLSID_TsfServices = .(0x39aedc00, 0x6b60, 0x46db, 0x8d, 0x31, 0x36, 0x42, 0xbe, 0x0e, 0x43, 0x73);
		public const Guid GUID_TS_SERVICE_DATAOBJECT = .(0x6086fbb5, 0xe225, 0x46ce, 0xa7, 0x70, 0xc1, 0xbb, 0xd3, 0xe0, 0x5d, 0x7b);
		public const Guid GUID_TS_SERVICE_ACCESSIBLE = .(0xf9786200, 0xa5bf, 0x4a0f, 0x8c, 0x24, 0xfb, 0x16, 0xf5, 0xd1, 0xaa, 0xbb);
		public const Guid GUID_TS_SERVICE_ACTIVEX = .(0xea937a50, 0xc9a6, 0x4b7d, 0x89, 0x4a, 0x49, 0xd9, 0x9b, 0x78, 0x48, 0x34);
		public const HRESULT TS_E_INVALIDPOS = -2147220992;
		public const HRESULT TS_E_NOLOCK = -2147220991;
		public const HRESULT TS_E_NOOBJECT = -2147220990;
		public const HRESULT TS_E_NOSERVICE = -2147220989;
		public const HRESULT TS_E_NOINTERFACE = -2147220988;
		public const HRESULT TS_E_NOSELECTION = -2147220987;
		public const HRESULT TS_E_NOLAYOUT = -2147220986;
		public const HRESULT TS_E_INVALIDPOINT = -2147220985;
		public const HRESULT TS_E_SYNCHRONOUS = -2147220984;
		public const HRESULT TS_E_READONLY = -2147220983;
		public const HRESULT TS_E_FORMAT = -2147220982;
		public const HRESULT TS_S_ASYNC = 262912;
		public const uint32 TS_AS_TEXT_CHANGE = 1;
		public const uint32 TS_AS_SEL_CHANGE = 2;
		public const uint32 TS_AS_LAYOUT_CHANGE = 4;
		public const uint32 TS_AS_ATTR_CHANGE = 8;
		public const uint32 TS_AS_STATUS_CHANGE = 16;
		public const uint32 TS_LF_SYNC = 1;
		public const uint32 TS_SD_READONLY = 1;
		public const uint32 TS_SD_LOADING = 2;
		public const uint32 TS_SD_RESERVED = 4;
		public const uint32 TS_SD_TKBAUTOCORRECTENABLE = 8;
		public const uint32 TS_SD_TKBPREDICTIONENABLE = 16;
		public const uint32 TS_SD_UIINTEGRATIONENABLE = 32;
		public const uint32 TS_SD_INPUTPANEMANUALDISPLAYENABLE = 64;
		public const uint32 TS_SD_EMBEDDEDHANDWRITINGVIEW_ENABLED = 128;
		public const uint32 TS_SD_EMBEDDEDHANDWRITINGVIEW_VISIBLE = 256;
		public const uint32 TS_SS_DISJOINTSEL = 1;
		public const uint32 TS_SS_REGIONS = 2;
		public const uint32 TS_SS_TRANSITORY = 4;
		public const uint32 TS_SS_NOHIDDENTEXT = 8;
		public const uint32 TS_SS_TKBAUTOCORRECTENABLE = 16;
		public const uint32 TS_SS_TKBPREDICTIONENABLE = 32;
		public const uint32 TS_SS_UWPCONTROL = 64;
		public const uint32 TS_IE_CORRECTION = 1;
		public const uint32 TS_IE_COMPOSITION = 2;
		public const uint32 TS_IAS_NOQUERY = 1;
		public const uint32 TS_IAS_QUERYONLY = 2;
		public const uint32 GXFPF_ROUND_NEAREST = 1;
		public const uint32 GXFPF_NEAREST = 2;
		public const uint32 TS_CHAR_EMBEDDED = 65532;
		public const uint32 TS_CHAR_REGION = 0;
		public const uint32 TS_CHAR_REPLACEMENT = 65533;
		public const uint32 TS_ATTR_FIND_BACKWARDS = 1;
		public const uint32 TS_ATTR_FIND_WANT_OFFSET = 2;
		public const uint32 TS_ATTR_FIND_UPDATESTART = 4;
		public const uint32 TS_ATTR_FIND_WANT_VALUE = 8;
		public const uint32 TS_ATTR_FIND_WANT_END = 16;
		public const uint32 TS_ATTR_FIND_HIDDEN = 32;
		public const uint32 TS_VCOOKIE_NUL = 4294967295;
		public const uint32 TS_SHIFT_COUNT_HIDDEN = 1;
		public const uint32 TS_SHIFT_HALT_HIDDEN = 2;
		public const uint32 TS_SHIFT_HALT_VISIBLE = 4;
		public const uint32 TS_SHIFT_COUNT_ONLY = 8;
		public const uint32 TS_GTA_HIDDEN = 1;
		public const uint32 TS_GEA_HIDDEN = 1;
		public const HRESULT TF_E_LOCKED = -2147220224;
		public const HRESULT TF_E_STACKFULL = -2147220223;
		public const HRESULT TF_E_NOTOWNEDRANGE = -2147220222;
		public const HRESULT TF_E_NOPROVIDER = -2147220221;
		public const HRESULT TF_E_DISCONNECTED = -2147220220;
		public const HRESULT TF_E_INVALIDVIEW = -2147220219;
		public const HRESULT TF_E_ALREADY_EXISTS = -2147220218;
		public const HRESULT TF_E_RANGE_NOT_COVERED = -2147220217;
		public const HRESULT TF_E_COMPOSITION_REJECTED = -2147220216;
		public const HRESULT TF_E_EMPTYCONTEXT = -2147220215;
		public const HRESULT TF_E_INVALIDPOS = -2147220992;
		public const HRESULT TF_E_NOLOCK = -2147220991;
		public const HRESULT TF_E_NOOBJECT = -2147220990;
		public const HRESULT TF_E_NOSERVICE = -2147220989;
		public const HRESULT TF_E_NOINTERFACE = -2147220988;
		public const HRESULT TF_E_NOSELECTION = -2147220987;
		public const HRESULT TF_E_NOLAYOUT = -2147220986;
		public const HRESULT TF_E_INVALIDPOINT = -2147220985;
		public const HRESULT TF_E_SYNCHRONOUS = -2147220984;
		public const HRESULT TF_E_READONLY = -2147220983;
		public const HRESULT TF_E_FORMAT = -2147220982;
		public const HRESULT TF_S_ASYNC = 262912;
		public const uint32 TF_RCM_COMLESS = 1;
		public const uint32 TF_RCM_VKEY = 2;
		public const uint32 TF_RCM_HINT_READING_LENGTH = 4;
		public const uint32 TF_RCM_HINT_COLLISION = 8;
		public const uint32 TKB_ALTERNATES_STANDARD = 1;
		public const uint32 TKB_ALTERNATES_FOR_AUTOCORRECTION = 2;
		public const uint32 TKB_ALTERNATES_FOR_PREDICTION = 3;
		public const uint32 TKB_ALTERNATES_AUTOCORRECTION_APPLIED = 4;
		public const uint32 TF_TMAE_NOACTIVATETIP = 1;
		public const uint32 TF_TMAE_SECUREMODE = 2;
		public const uint32 TF_TMAE_UIELEMENTENABLEDONLY = 4;
		public const uint32 TF_TMAE_COMLESS = 8;
		public const uint32 TF_TMAE_WOW16 = 16;
		public const uint32 TF_TMAE_NOACTIVATEKEYBOARDLAYOUT = 32;
		public const uint32 TF_TMAE_CONSOLE = 64;
		public const uint32 TF_TMF_NOACTIVATETIP = 1;
		public const uint32 TF_TMF_SECUREMODE = 2;
		public const uint32 TF_TMF_UIELEMENTENABLEDONLY = 4;
		public const uint32 TF_TMF_COMLESS = 8;
		public const uint32 TF_TMF_WOW16 = 16;
		public const uint32 TF_TMF_CONSOLE = 64;
		public const uint32 TF_TMF_IMMERSIVEMODE = 1073741824;
		public const uint32 TF_TMF_ACTIVATED = 2147483648;
		public const uint32 TF_MOD_ALT = 1;
		public const uint32 TF_MOD_CONTROL = 2;
		public const uint32 TF_MOD_SHIFT = 4;
		public const uint32 TF_MOD_RALT = 8;
		public const uint32 TF_MOD_RCONTROL = 16;
		public const uint32 TF_MOD_RSHIFT = 32;
		public const uint32 TF_MOD_LALT = 64;
		public const uint32 TF_MOD_LCONTROL = 128;
		public const uint32 TF_MOD_LSHIFT = 256;
		public const uint32 TF_MOD_ON_KEYUP = 512;
		public const uint32 TF_MOD_IGNORE_ALL_MODIFIER = 1024;
		public const uint32 TF_US_HIDETIPUI = 1;
		public const uint32 TF_DISABLE_SPEECH = 1;
		public const uint32 TF_DISABLE_DICTATION = 2;
		public const uint32 TF_DISABLE_COMMANDING = 4;
		public const uint32 TF_CLUIE_DOCUMENTMGR = 1;
		public const uint32 TF_CLUIE_COUNT = 2;
		public const uint32 TF_CLUIE_SELECTION = 4;
		public const uint32 TF_CLUIE_STRING = 8;
		public const uint32 TF_CLUIE_PAGEINDEX = 16;
		public const uint32 TF_CLUIE_CURRENTPAGE = 32;
		public const uint32 TF_RIUIE_CONTEXT = 1;
		public const uint32 TF_RIUIE_STRING = 2;
		public const uint32 TF_RIUIE_MAXREADINGSTRINGLENGTH = 4;
		public const uint32 TF_RIUIE_ERRORINDEX = 8;
		public const uint32 TF_RIUIE_VERTICALORDER = 16;
		public const uint32 TF_CONVERSIONMODE_ALPHANUMERIC = 0;
		public const uint32 TF_CONVERSIONMODE_NATIVE = 1;
		public const uint32 TF_CONVERSIONMODE_KATAKANA = 2;
		public const uint32 TF_CONVERSIONMODE_FULLSHAPE = 8;
		public const uint32 TF_CONVERSIONMODE_ROMAN = 16;
		public const uint32 TF_CONVERSIONMODE_CHARCODE = 32;
		public const uint32 TF_CONVERSIONMODE_SOFTKEYBOARD = 128;
		public const uint32 TF_CONVERSIONMODE_NOCONVERSION = 256;
		public const uint32 TF_CONVERSIONMODE_EUDC = 512;
		public const uint32 TF_CONVERSIONMODE_SYMBOL = 1024;
		public const uint32 TF_CONVERSIONMODE_FIXED = 2048;
		public const uint32 TF_SENTENCEMODE_NONE = 0;
		public const uint32 TF_SENTENCEMODE_PLAURALCLAUSE = 1;
		public const uint32 TF_SENTENCEMODE_SINGLECONVERT = 2;
		public const uint32 TF_SENTENCEMODE_AUTOMATIC = 4;
		public const uint32 TF_SENTENCEMODE_PHRASEPREDICT = 8;
		public const uint32 TF_SENTENCEMODE_CONVERSATION = 16;
		public const uint32 TF_TRANSITORYEXTENSION_NONE = 0;
		public const uint32 TF_TRANSITORYEXTENSION_FLOATING = 1;
		public const uint32 TF_TRANSITORYEXTENSION_ATSELECTION = 2;
		public const uint32 TF_PROFILETYPE_INPUTPROCESSOR = 1;
		public const uint32 TF_PROFILETYPE_KEYBOARDLAYOUT = 2;
		public const uint32 TF_RIP_FLAG_FREEUNUSEDLIBRARIES = 1;
		public const uint32 TF_IPP_FLAG_ACTIVE = 1;
		public const uint32 TF_IPP_FLAG_ENABLED = 2;
		public const uint32 TF_IPP_FLAG_SUBSTITUTEDBYINPUTPROCESSOR = 4;
		public const uint32 TF_IPP_CAPS_DISABLEONTRANSITORY = 1;
		public const uint32 TF_IPP_CAPS_SECUREMODESUPPORT = 2;
		public const uint32 TF_IPP_CAPS_UIELEMENTENABLED = 4;
		public const uint32 TF_IPP_CAPS_COMLESSSUPPORT = 8;
		public const uint32 TF_IPP_CAPS_WOW16SUPPORT = 16;
		public const uint32 TF_IPP_CAPS_IMMERSIVESUPPORT = 65536;
		public const uint32 TF_IPP_CAPS_SYSTRAYSUPPORT = 131072;
		public const uint32 TF_IPPMF_FORPROCESS = 268435456;
		public const uint32 TF_IPPMF_FORSESSION = 536870912;
		public const uint32 TF_IPPMF_FORSYSTEMALL = 1073741824;
		public const uint32 TF_IPPMF_ENABLEPROFILE = 1;
		public const uint32 TF_IPPMF_DISABLEPROFILE = 2;
		public const uint32 TF_IPPMF_DONTCARECURRENTINPUTLANGUAGE = 4;
		public const uint32 TF_RP_HIDDENINSETTINGUI = 2;
		public const uint32 TF_RP_LOCALPROCESS = 4;
		public const uint32 TF_RP_LOCALTHREAD = 8;
		public const uint32 TF_RP_SUBITEMINSETTINGUI = 16;
		public const uint32 TF_URP_ALLPROFILES = 2;
		public const uint32 TF_URP_LOCALPROCESS = 4;
		public const uint32 TF_URP_LOCALTHREAD = 8;
		public const uint32 TF_IPSINK_FLAG_ACTIVE = 1;
		public const uint32 TF_INVALID_EDIT_COOKIE = 0;
		public const uint32 TF_POPF_ALL = 1;
		public const uint32 TF_SD_READONLY = 1;
		public const uint32 TF_SD_LOADING = 2;
		public const uint32 TF_SS_DISJOINTSEL = 1;
		public const uint32 TF_SS_REGIONS = 2;
		public const uint32 TF_SS_TRANSITORY = 4;
		public const uint32 TF_SS_TKBAUTOCORRECTENABLE = 16;
		public const uint32 TF_SS_TKBPREDICTIONENABLE = 32;
		public const uint32 TF_CHAR_EMBEDDED = 65532;
		public const uint32 TF_HF_OBJECT = 1;
		public const uint32 TF_TF_MOVESTART = 1;
		public const uint32 TF_TF_IGNOREEND = 2;
		public const uint32 TF_ST_CORRECTION = 1;
		public const uint32 TF_IE_CORRECTION = 1;
		public const uint32 TF_TU_CORRECTION = 1;
		public const uint32 TF_INVALID_COOKIE = 4294967295;
		public const Guid TF_PROFILE_NEWPHONETIC = .(0xb2f9c502, 0x1742, 0x11d4, 0x97, 0x90, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_PHONETIC = .(0x761309de, 0x317a, 0x11d4, 0x9b, 0x5d, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_NEWCHANGJIE = .(0xf3ba907a, 0x6c7e, 0x11d4, 0x97, 0xfa, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_CHANGJIE = .(0x4bdf9f03, 0xc7d3, 0x11d4, 0xb2, 0xab, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_NEWQUICK = .(0x0b883ba0, 0xc1c7, 0x11d4, 0x87, 0xf9, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_QUICK = .(0x6024b45f, 0x5c54, 0x11d4, 0xb9, 0x21, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_CANTONESE = .(0x0aec109c, 0x7e96, 0x11d4, 0xb2, 0xef, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_PINYIN = .(0xf3ba9077, 0x6c7e, 0x11d4, 0x97, 0xfa, 0x00, 0x80, 0xc8, 0x82, 0x68, 0x7e);
		public const Guid TF_PROFILE_SIMPLEFAST = .(0xfa550b04, 0x5ad7, 0x411f, 0xa5, 0xac, 0xca, 0x03, 0x8e, 0xc5, 0x15, 0xd7);
		public const Guid TF_PROFILE_WUBI = .(0x82590c13, 0xf4dd, 0x44f4, 0xba, 0x1d, 0x86, 0x67, 0x24, 0x6f, 0xdf, 0x8e);
		public const Guid TF_PROFILE_DAYI = .(0x037b2c25, 0x480c, 0x4d7f, 0xb0, 0x27, 0xd6, 0xca, 0x6b, 0x69, 0x78, 0x8a);
		public const Guid TF_PROFILE_ARRAY = .(0xd38eff65, 0xaa46, 0x4fd5, 0x91, 0xa7, 0x67, 0x84, 0x5f, 0xb0, 0x2f, 0x5b);
		public const Guid TF_PROFILE_YI = .(0x409c8376, 0x007b, 0x4357, 0xae, 0x8e, 0x26, 0x31, 0x6e, 0xe3, 0xfb, 0x0d);
		public const Guid TF_PROFILE_TIGRINYA = .(0x3cab88b7, 0xcc3e, 0x46a6, 0x97, 0x65, 0xb7, 0x72, 0xad, 0x77, 0x61, 0xff);
		public const HRESULT TF_E_NOCONVERSION = -2147219968;
		public const uint32 TF_DICTATION_ON = 1;
		public const uint32 TF_DICTATION_ENABLED = 2;
		public const uint32 TF_COMMANDING_ENABLED = 4;
		public const uint32 TF_COMMANDING_ON = 8;
		public const uint32 TF_SPEECHUI_SHOWN = 16;
		public const uint32 TF_SHOW_BALLOON = 1;
		public const uint32 TF_DISABLE_BALLOON = 2;
		public const uint32 TF_MENUREADY = 1;
		public const uint32 TF_PROPUI_STATUS_SAVETOFILE = 1;
		public const Guid GUID_INTEGRATIONSTYLE_SEARCHBOX = .(0xe6d1bd11, 0x82f7, 0x4903, 0xae, 0x21, 0x1a, 0x63, 0x97, 0xcd, 0xe2, 0xeb);
		public const uint32 TKBL_UNDEFINED = 0;
		public const uint32 TKBL_CLASSIC_TRADITIONAL_CHINESE_PHONETIC = 1028;
		public const uint32 TKBL_CLASSIC_TRADITIONAL_CHINESE_CHANGJIE = 61506;
		public const uint32 TKBL_CLASSIC_TRADITIONAL_CHINESE_DAYI = 61507;
		public const uint32 TKBL_OPT_JAPANESE_ABC = 1041;
		public const uint32 TKBL_OPT_KOREAN_HANGUL_2_BULSIK = 1042;
		public const uint32 TKBL_OPT_SIMPLIFIED_CHINESE_PINYIN = 2052;
		public const uint32 TKBL_OPT_TRADITIONAL_CHINESE_PHONETIC = 1028;
		public const uint32 TF_LBI_ICON = 1;
		public const uint32 TF_LBI_TEXT = 2;
		public const uint32 TF_LBI_TOOLTIP = 4;
		public const uint32 TF_LBI_BITMAP = 8;
		public const uint32 TF_LBI_BALLOON = 16;
		public const uint32 TF_LBI_CUSTOMUI = 32;
		public const uint32 TF_LBI_STATUS = 65536;
		public const uint32 TF_LBI_STYLE_HIDDENSTATUSCONTROL = 1;
		public const uint32 TF_LBI_STYLE_SHOWNINTRAY = 2;
		public const uint32 TF_LBI_STYLE_HIDEONNOOTHERITEMS = 4;
		public const uint32 TF_LBI_STYLE_SHOWNINTRAYONLY = 8;
		public const uint32 TF_LBI_STYLE_HIDDENBYDEFAULT = 16;
		public const uint32 TF_LBI_STYLE_TEXTCOLORICON = 32;
		public const uint32 TF_LBI_STYLE_BTN_BUTTON = 65536;
		public const uint32 TF_LBI_STYLE_BTN_MENU = 131072;
		public const uint32 TF_LBI_STYLE_BTN_TOGGLE = 262144;
		public const uint32 TF_LBI_STATUS_HIDDEN = 1;
		public const uint32 TF_LBI_STATUS_DISABLED = 2;
		public const uint32 TF_LBI_STATUS_BTN_TOGGLED = 65536;
		public const uint32 TF_LBI_BMPF_VERTICAL = 1;
		public const uint32 TF_SFT_SHOWNORMAL = 1;
		public const uint32 TF_SFT_DOCK = 2;
		public const uint32 TF_SFT_MINIMIZED = 4;
		public const uint32 TF_SFT_HIDDEN = 8;
		public const uint32 TF_SFT_NOTRANSPARENCY = 16;
		public const uint32 TF_SFT_LOWTRANSPARENCY = 32;
		public const uint32 TF_SFT_HIGHTRANSPARENCY = 64;
		public const uint32 TF_SFT_LABELS = 128;
		public const uint32 TF_SFT_NOLABELS = 256;
		public const uint32 TF_SFT_EXTRAICONSONMINIMIZED = 512;
		public const uint32 TF_SFT_NOEXTRAICONSONMINIMIZED = 1024;
		public const uint32 TF_SFT_DESKBAND = 2048;
		public const uint32 TF_LBI_DESC_MAXLEN = 32;
		public const uint32 TF_LBMENUF_CHECKED = 1;
		public const uint32 TF_LBMENUF_SUBMENU = 2;
		public const uint32 TF_LBMENUF_SEPARATOR = 4;
		public const uint32 TF_LBMENUF_RADIOCHECKED = 8;
		public const uint32 TF_LBMENUF_GRAYED = 16;
		public const Guid GUID_PROP_INPUTSCOPE = .(0x1713dd5a, 0x68e7, 0x4a5b, 0x9a, 0xf6, 0x59, 0x2a, 0x59, 0x5c, 0x77, 0x8d);
		public const uint32 DCM_FLAGS_TASKENG = 1;
		public const uint32 DCM_FLAGS_CTFMON = 2;
		public const uint32 DCM_FLAGS_LOCALTHREADTSF = 4;
		public const uint32 ILMCM_CHECKLAYOUTANDTIPENABLED = 1;
		public const uint32 ILMCM_LANGUAGEBAROFF = 2;
		public const Guid LIBID_MSAATEXTLib = .(0x150e2d7a, 0xdac1, 0x4582, 0x94, 0x7d, 0x2a, 0x8f, 0xd7, 0x8b, 0x82, 0xcd);
		public const uint32 TS_STRF_START = 0;
		public const uint32 TS_STRF_MID = 1;
		public const uint32 TS_STRF_END = 2;
		public const Guid TSATTRID_OTHERS = .(0xb3c32af9, 0x57d0, 0x46a9, 0xbc, 0xa8, 0xda, 0xc2, 0x38, 0xa1, 0x30, 0x57);
		public const Guid TSATTRID_Font = .(0x573ea825, 0x749b, 0x4f8a, 0x9c, 0xfd, 0x21, 0xc3, 0x60, 0x5c, 0xa8, 0x28);
		public const Guid TSATTRID_Font_FaceName = .(0xb536aeb6, 0x053b, 0x4eb8, 0xb6, 0x5a, 0x50, 0xda, 0x1e, 0x81, 0xe7, 0x2e);
		public const Guid TSATTRID_Font_SizePts = .(0xc8493302, 0xa5e9, 0x456d, 0xaf, 0x04, 0x80, 0x05, 0xe4, 0x13, 0x0f, 0x03);
		public const Guid TSATTRID_Font_Style = .(0x68b2a77f, 0x6b0e, 0x4f28, 0x81, 0x77, 0x57, 0x1c, 0x2f, 0x3a, 0x42, 0xb1);
		public const Guid TSATTRID_Font_Style_Bold = .(0x48813a43, 0x8a20, 0x4940, 0x8e, 0x58, 0x97, 0x82, 0x3f, 0x7b, 0x26, 0x8a);
		public const Guid TSATTRID_Font_Style_Italic = .(0x8740682a, 0xa765, 0x48e1, 0xac, 0xfc, 0xd2, 0x22, 0x22, 0xb2, 0xf8, 0x10);
		public const Guid TSATTRID_Font_Style_SmallCaps = .(0xfacb6bc6, 0x9100, 0x4cc6, 0xb9, 0x69, 0x11, 0xee, 0xa4, 0x5a, 0x86, 0xb4);
		public const Guid TSATTRID_Font_Style_Capitalize = .(0x7d85a3ba, 0xb4fd, 0x43b3, 0xbe, 0xfc, 0x6b, 0x98, 0x5c, 0x84, 0x31, 0x41);
		public const Guid TSATTRID_Font_Style_Uppercase = .(0x33a300e8, 0xe340, 0x4937, 0xb6, 0x97, 0x8f, 0x23, 0x40, 0x45, 0xcd, 0x9a);
		public const Guid TSATTRID_Font_Style_Lowercase = .(0x76d8ccb5, 0xca7b, 0x4498, 0x8e, 0xe9, 0xd5, 0xc4, 0xf6, 0xf7, 0x4c, 0x60);
		public const Guid TSATTRID_Font_Style_Animation = .(0xdcf73d22, 0xe029, 0x47b7, 0xbb, 0x36, 0xf2, 0x63, 0xa3, 0xd0, 0x04, 0xcc);
		public const Guid TSATTRID_Font_Style_Animation_LasVegasLights = .(0xf40423d5, 0x0f87, 0x4f8f, 0xba, 0xda, 0xe6, 0xd6, 0x0c, 0x25, 0xe1, 0x52);
		public const Guid TSATTRID_Font_Style_Animation_BlinkingBackground = .(0x86e5b104, 0x0104, 0x4b10, 0xb5, 0x85, 0x00, 0xf2, 0x52, 0x75, 0x22, 0xb5);
		public const Guid TSATTRID_Font_Style_Animation_SparkleText = .(0x533aad20, 0x962c, 0x4e9f, 0x8c, 0x09, 0xb4, 0x2e, 0xa4, 0x74, 0x97, 0x11);
		public const Guid TSATTRID_Font_Style_Animation_MarchingBlackAnts = .(0x7644e067, 0xf186, 0x4902, 0xbf, 0xc6, 0xec, 0x81, 0x5a, 0xa2, 0x0e, 0x9d);
		public const Guid TSATTRID_Font_Style_Animation_MarchingRedAnts = .(0x78368dad, 0x50fb, 0x4c6f, 0x84, 0x0b, 0xd4, 0x86, 0xbb, 0x6c, 0xf7, 0x81);
		public const Guid TSATTRID_Font_Style_Animation_Shimmer = .(0x2ce31b58, 0x5293, 0x4c36, 0x88, 0x09, 0xbf, 0x8b, 0xb5, 0x1a, 0x27, 0xb3);
		public const Guid TSATTRID_Font_Style_Animation_WipeDown = .(0x5872e874, 0x367b, 0x4803, 0xb1, 0x60, 0xc9, 0x0f, 0xf6, 0x25, 0x69, 0xd0);
		public const Guid TSATTRID_Font_Style_Animation_WipeRight = .(0xb855cbe3, 0x3d2c, 0x4600, 0xb1, 0xe9, 0xe1, 0xc9, 0xce, 0x02, 0xf8, 0x42);
		public const Guid TSATTRID_Font_Style_Emboss = .(0xbd8ed742, 0x349e, 0x4e37, 0x82, 0xfb, 0x43, 0x79, 0x79, 0xcb, 0x53, 0xa7);
		public const Guid TSATTRID_Font_Style_Engrave = .(0x9c3371de, 0x8332, 0x4897, 0xbe, 0x5d, 0x89, 0x23, 0x32, 0x23, 0x17, 0x9a);
		public const Guid TSATTRID_Font_Style_Hidden = .(0xb1e28770, 0x881c, 0x475f, 0x86, 0x3f, 0x88, 0x7a, 0x64, 0x7b, 0x10, 0x90);
		public const Guid TSATTRID_Font_Style_Kerning = .(0xcc26e1b4, 0x2f9a, 0x47c8, 0x8b, 0xff, 0xbf, 0x1e, 0xb7, 0xcc, 0xe0, 0xdd);
		public const Guid TSATTRID_Font_Style_Outlined = .(0x10e6db31, 0xdb0d, 0x4ac6, 0xa7, 0xf5, 0x9c, 0x9c, 0xff, 0x6f, 0x2a, 0xb4);
		public const Guid TSATTRID_Font_Style_Position = .(0x15cd26ab, 0xf2fb, 0x4062, 0xb5, 0xa6, 0x9a, 0x49, 0xe1, 0xa5, 0xcc, 0x0b);
		public const Guid TSATTRID_Font_Style_Protected = .(0x1c557cb2, 0x14cf, 0x4554, 0xa5, 0x74, 0xec, 0xb2, 0xf7, 0xe7, 0xef, 0xd4);
		public const Guid TSATTRID_Font_Style_Shadow = .(0x5f686d2f, 0xc6cd, 0x4c56, 0x8a, 0x1a, 0x99, 0x4a, 0x4b, 0x97, 0x66, 0xbe);
		public const Guid TSATTRID_Font_Style_Spacing = .(0x98c1200d, 0x8f06, 0x409a, 0x8e, 0x49, 0x6a, 0x55, 0x4b, 0xf7, 0xc1, 0x53);
		public const Guid TSATTRID_Font_Style_Weight = .(0x12f3189c, 0x8bb0, 0x461b, 0xb1, 0xfa, 0xea, 0xf9, 0x07, 0x04, 0x7f, 0xe0);
		public const Guid TSATTRID_Font_Style_Height = .(0x7e937477, 0x12e6, 0x458b, 0x92, 0x6a, 0x1f, 0xa4, 0x4e, 0xe8, 0xf3, 0x91);
		public const Guid TSATTRID_Font_Style_Underline = .(0xc3c9c9f3, 0x7902, 0x444b, 0x9a, 0x7b, 0x48, 0xe7, 0x0f, 0x4b, 0x50, 0xf7);
		public const Guid TSATTRID_Font_Style_Underline_Single = .(0x1b6720e5, 0x0f73, 0x4951, 0xa6, 0xb3, 0x6f, 0x19, 0xe4, 0x3c, 0x94, 0x61);
		public const Guid TSATTRID_Font_Style_Underline_Double = .(0x74d24aa6, 0x1db3, 0x4c69, 0xa1, 0x76, 0x31, 0x12, 0x0e, 0x75, 0x86, 0xd5);
		public const Guid TSATTRID_Font_Style_Strikethrough = .(0x0c562193, 0x2d08, 0x4668, 0x96, 0x01, 0xce, 0xd4, 0x13, 0x09, 0xd7, 0xaf);
		public const Guid TSATTRID_Font_Style_Strikethrough_Single = .(0x75d736b6, 0x3c8f, 0x4b97, 0xab, 0x78, 0x18, 0x77, 0xcb, 0x99, 0x0d, 0x31);
		public const Guid TSATTRID_Font_Style_Strikethrough_Double = .(0x62489b31, 0xa3e7, 0x4f94, 0xac, 0x43, 0xeb, 0xaf, 0x8f, 0xcc, 0x7a, 0x9f);
		public const Guid TSATTRID_Font_Style_Overline = .(0xe3989f4a, 0x992b, 0x4301, 0x8c, 0xe1, 0xa5, 0xb7, 0xc6, 0xd1, 0xf3, 0xc8);
		public const Guid TSATTRID_Font_Style_Overline_Single = .(0x8440d94c, 0x51ce, 0x47b2, 0x8d, 0x4c, 0x15, 0x75, 0x1e, 0x5f, 0x72, 0x1b);
		public const Guid TSATTRID_Font_Style_Overline_Double = .(0xdc46063a, 0xe115, 0x46e3, 0xbc, 0xd8, 0xca, 0x67, 0x72, 0xaa, 0x95, 0xb4);
		public const Guid TSATTRID_Font_Style_Blink = .(0xbfb2c036, 0x7acf, 0x4532, 0xb7, 0x20, 0xb4, 0x16, 0xdd, 0x77, 0x65, 0xa8);
		public const Guid TSATTRID_Font_Style_Subscript = .(0x5774fb84, 0x389b, 0x43bc, 0xa7, 0x4b, 0x15, 0x68, 0x34, 0x7c, 0xf0, 0xf4);
		public const Guid TSATTRID_Font_Style_Superscript = .(0x2ea4993c, 0x563c, 0x49aa, 0x93, 0x72, 0x0b, 0xef, 0x09, 0xa9, 0x25, 0x5b);
		public const Guid TSATTRID_Font_Style_Color = .(0x857a7a37, 0xb8af, 0x4e9a, 0x81, 0xb4, 0xac, 0xf7, 0x00, 0xc8, 0x41, 0x1b);
		public const Guid TSATTRID_Font_Style_BackgroundColor = .(0xb50eaa4e, 0x3091, 0x4468, 0x81, 0xdb, 0xd7, 0x9e, 0xa1, 0x90, 0xc7, 0xc7);
		public const Guid TSATTRID_Text = .(0x7edb8e68, 0x81f9, 0x449d, 0xa1, 0x5a, 0x87, 0xa8, 0x38, 0x8f, 0xaa, 0xc0);
		public const Guid TSATTRID_Text_VerticalWriting = .(0x6bba8195, 0x046f, 0x4ea9, 0xb3, 0x11, 0x97, 0xfd, 0x66, 0xc4, 0x27, 0x4b);
		public const Guid TSATTRID_Text_RightToLeft = .(0xca666e71, 0x1b08, 0x453d, 0xbf, 0xdd, 0x28, 0xe0, 0x8c, 0x8a, 0xaf, 0x7a);
		public const Guid TSATTRID_Text_Orientation = .(0x6bab707f, 0x8785, 0x4c39, 0x8b, 0x52, 0x96, 0xf8, 0x78, 0x30, 0x3f, 0xfb);
		public const Guid TSATTRID_Text_Language = .(0xd8c04ef1, 0x5753, 0x4c25, 0x88, 0x87, 0x85, 0x44, 0x3f, 0xe5, 0xf8, 0x19);
		public const Guid TSATTRID_Text_ReadOnly = .(0x85836617, 0xde32, 0x4afd, 0xa5, 0x0f, 0xa2, 0xdb, 0x11, 0x0e, 0x6e, 0x4d);
		public const Guid TSATTRID_Text_EmbeddedObject = .(0x7edb8e68, 0x81f9, 0x449d, 0xa1, 0x5a, 0x87, 0xa8, 0x38, 0x8f, 0xaa, 0xc0);
		public const Guid TSATTRID_Text_Alignment = .(0x139941e6, 0x1767, 0x456d, 0x93, 0x8e, 0x35, 0xba, 0x56, 0x8b, 0x5c, 0xd4);
		public const Guid TSATTRID_Text_Alignment_Left = .(0x16ae95d3, 0x6361, 0x43a2, 0x84, 0x95, 0xd0, 0x0f, 0x39, 0x7f, 0x16, 0x93);
		public const Guid TSATTRID_Text_Alignment_Right = .(0xb36f0f98, 0x1b9e, 0x4360, 0x86, 0x16, 0x03, 0xfb, 0x08, 0xa7, 0x84, 0x56);
		public const Guid TSATTRID_Text_Alignment_Center = .(0xa4a95c16, 0x53bf, 0x4d55, 0x8b, 0x87, 0x4b, 0xdd, 0x8d, 0x42, 0x75, 0xfc);
		public const Guid TSATTRID_Text_Alignment_Justify = .(0xed350740, 0xa0f7, 0x42d3, 0x8e, 0xa8, 0xf8, 0x1b, 0x64, 0x88, 0xfa, 0xf0);
		public const Guid TSATTRID_Text_Link = .(0x47cd9051, 0x3722, 0x4cd8, 0xb7, 0xc8, 0x4e, 0x17, 0xca, 0x17, 0x59, 0xf5);
		public const Guid TSATTRID_Text_Hyphenation = .(0xdadf4525, 0x618e, 0x49eb, 0xb1, 0xa8, 0x3b, 0x68, 0xbd, 0x76, 0x48, 0xe3);
		public const Guid TSATTRID_Text_Para = .(0x5edc5822, 0x99dc, 0x4dd6, 0xae, 0xc3, 0xb6, 0x2b, 0xaa, 0x5b, 0x2e, 0x7c);
		public const Guid TSATTRID_Text_Para_FirstLineIndent = .(0x07c97a13, 0x7472, 0x4dd8, 0x90, 0xa9, 0x91, 0xe3, 0xd7, 0xe4, 0xf2, 0x9c);
		public const Guid TSATTRID_Text_Para_LeftIndent = .(0xfb2848e9, 0x7471, 0x41c9, 0xb6, 0xb3, 0x8a, 0x14, 0x50, 0xe0, 0x18, 0x97);
		public const Guid TSATTRID_Text_Para_RightIndent = .(0x2c7f26f9, 0xa5e2, 0x48da, 0xb9, 0x8a, 0x52, 0x0c, 0xb1, 0x65, 0x13, 0xbf);
		public const Guid TSATTRID_Text_Para_SpaceAfter = .(0x7b0a3f55, 0x22dc, 0x425f, 0xa4, 0x11, 0x93, 0xda, 0x1d, 0x8f, 0x9b, 0xaa);
		public const Guid TSATTRID_Text_Para_SpaceBefore = .(0x8df98589, 0x194a, 0x4601, 0xb2, 0x51, 0x98, 0x65, 0xa3, 0xe9, 0x06, 0xdd);
		public const Guid TSATTRID_Text_Para_LineSpacing = .(0x699b380d, 0x7f8c, 0x46d6, 0xa7, 0x3b, 0xdf, 0xe3, 0xd1, 0x53, 0x8d, 0xf3);
		public const Guid TSATTRID_Text_Para_LineSpacing_Single = .(0xed350740, 0xa0f7, 0x42d3, 0x8e, 0xa8, 0xf8, 0x1b, 0x64, 0x88, 0xfa, 0xf0);
		public const Guid TSATTRID_Text_Para_LineSpacing_OnePtFive = .(0x0428a021, 0x0397, 0x4b57, 0x9a, 0x17, 0x07, 0x95, 0x99, 0x4c, 0xd3, 0xc5);
		public const Guid TSATTRID_Text_Para_LineSpacing_Double = .(0x82fb1805, 0xa6c4, 0x4231, 0xac, 0x12, 0x62, 0x60, 0xaf, 0x2a, 0xba, 0x28);
		public const Guid TSATTRID_Text_Para_LineSpacing_AtLeast = .(0xadfedf31, 0x2d44, 0x4434, 0xa5, 0xff, 0x7f, 0x4c, 0x49, 0x90, 0xa9, 0x05);
		public const Guid TSATTRID_Text_Para_LineSpacing_Exactly = .(0x3d45ad40, 0x23de, 0x48d7, 0xa6, 0xb3, 0x76, 0x54, 0x20, 0xc6, 0x20, 0xcc);
		public const Guid TSATTRID_Text_Para_LineSpacing_Multiple = .(0x910f1e3c, 0xd6d0, 0x4f65, 0x8a, 0x3c, 0x42, 0xb4, 0xb3, 0x18, 0x68, 0xc5);
		public const Guid TSATTRID_List = .(0x436d673b, 0x26f1, 0x4aee, 0x9e, 0x65, 0x8f, 0x83, 0xa4, 0xed, 0x48, 0x84);
		public const Guid TSATTRID_List_LevelIndel = .(0x7f7cc899, 0x311f, 0x487b, 0xad, 0x5d, 0xe2, 0xa4, 0x59, 0xe1, 0x2d, 0x42);
		public const Guid TSATTRID_List_Type = .(0xae3e665e, 0x4bce, 0x49e3, 0xa0, 0xfe, 0x2d, 0xb4, 0x7d, 0x3a, 0x17, 0xae);
		public const Guid TSATTRID_List_Type_Bullet = .(0xbccd77c5, 0x4c4d, 0x4ce2, 0xb1, 0x02, 0x55, 0x9f, 0x3b, 0x2b, 0xfc, 0xea);
		public const Guid TSATTRID_List_Type_Arabic = .(0x1338c5d6, 0x98a3, 0x4fa3, 0x9b, 0xd1, 0x7a, 0x60, 0xee, 0xf8, 0xe9, 0xe0);
		public const Guid TSATTRID_List_Type_LowerLetter = .(0x96372285, 0xf3cf, 0x491e, 0xa9, 0x25, 0x38, 0x32, 0x34, 0x7f, 0xd2, 0x37);
		public const Guid TSATTRID_List_Type_UpperLetter = .(0x7987b7cd, 0xce52, 0x428b, 0x9b, 0x95, 0xa3, 0x57, 0xf6, 0xf1, 0x0c, 0x45);
		public const Guid TSATTRID_List_Type_LowerRoman = .(0x90466262, 0x3980, 0x4b8e, 0x93, 0x68, 0x91, 0x8b, 0xd1, 0x21, 0x8a, 0x41);
		public const Guid TSATTRID_List_Type_UpperRoman = .(0x0f6ab552, 0x4a80, 0x467f, 0xb2, 0xf1, 0x12, 0x7e, 0x2a, 0xa3, 0xba, 0x9e);
		public const Guid TSATTRID_App = .(0xa80f77df, 0x4237, 0x40e5, 0x84, 0x9c, 0xb5, 0xfa, 0x51, 0xc1, 0x3a, 0xc7);
		public const Guid TSATTRID_App_IncorrectSpelling = .(0xf42de43c, 0xef12, 0x430d, 0x94, 0x4c, 0x9a, 0x08, 0x97, 0x0a, 0x25, 0xd2);
		public const Guid TSATTRID_App_IncorrectGrammar = .(0xbd54e398, 0xad03, 0x4b74, 0xb6, 0xb3, 0x5e, 0xdb, 0x19, 0x99, 0x63, 0x88);
		
		// --- Typedefs ---
		
		public typealias HKL = int;
		
		// --- Enums ---
		
		public enum LANG_BAR_ITEM_ICON_MODE_FLAGS : uint32
		{
			NONE = 0,
			USEPROFILEICON = 1,
		}
		public enum TEXT_STORE_TEXT_CHANGE_FLAGS : uint32
		{
			NONE = 0,
			CORRECTION = 1,
		}
		public enum TEXT_STORE_CHANGE_FLAGS : uint32
		{
			NONE = 0,
			CORRECTION = 1,
		}
		public enum INSERT_TEXT_AT_SELECTION_FLAGS : uint32
		{
			NOQUERY = 1,
			QUERYONLY = 2,
			NO_DEFAULT_COMPOSITION = 2147483648,
		}
		public enum ANCHOR_CHANGE_HISTORY_FLAGS : uint32
		{
			PRECEDING_DEL = 1,
			FOLLOWING_DEL = 2,
		}
		public enum TEXT_STORE_LOCK_FLAGS : uint32
		{
			READ = 2,
			READWRITE = 6,
		}
		public enum GET_TEXT_AND_PROPERTY_UPDATES_FLAGS : uint32
		{
			NONE = 0,
			INCL_TEXT = 1,
		}
		public enum TF_CONTEXT_EDIT_CONTEXT_FLAGS : uint32
		{
			ASYNCDONTCARE = 0,
			SYNC = 1,
			READ = 2,
			READWRITE = 6,
			ASYNC = 8,
		}
		public enum TsActiveSelEnd : int32
		{
			NONE = 0,
			START = 1,
			END = 2,
		}
		public enum TsLayoutCode : int32
		{
			CREATE = 0,
			CHANGE = 1,
			DESTROY = 2,
		}
		public enum TsRunType : int32
		{
			PLAIN = 0,
			HIDDEN = 1,
			OPAQUE = 2,
		}
		public enum TsGravity : int32
		{
			BACKWARD = 0,
			FORWARD = 1,
		}
		public enum TsShiftDir : int32
		{
			BACKWARD = 0,
			FORWARD = 1,
		}
		public enum TfLBIClick : int32
		{
			RIGHT = 1,
			LEFT = 2,
		}
		public enum TfLBBalloonStyle : int32
		{
			RECO = 0,
			SHOW = 1,
			MISS = 2,
		}
		public enum TfAnchor : int32
		{
			START = 0,
			END = 1,
		}
		public enum TfActiveSelEnd : int32
		{
			NONE = 0,
			START = 1,
			END = 2,
		}
		public enum TfLayoutCode : int32
		{
			CREATE = 0,
			CHANGE = 1,
			DESTROY = 2,
		}
		public enum TfGravity : int32
		{
			BACKWARD = 0,
			FORWARD = 1,
		}
		public enum TfShiftDir : int32
		{
			BACKWARD = 0,
			FORWARD = 1,
		}
		public enum TF_DA_LINESTYLE : int32
		{
			NONE = 0,
			SOLID = 1,
			DOT = 2,
			DASH = 3,
			SQUIGGLE = 4,
		}
		public enum TF_DA_COLORTYPE : int32
		{
			NONE = 0,
			SYSCOLOR = 1,
			COLORREF = 2,
		}
		public enum TF_DA_ATTR_INFO : int32
		{
			INPUT = 0,
			TARGET_CONVERTED = 1,
			CONVERTED = 2,
			TARGET_NOTCONVERTED = 3,
			INPUT_ERROR = 4,
			FIXEDCONVERTED = 5,
			OTHER = -1,
		}
		public enum TfCandidateResult : int32
		{
			FINALIZED = 0,
			SELECTED = 1,
			CANCELED = 2,
		}
		public enum TfSapiObject : int32
		{
			RESMGR = 0,
			RECOCONTEXT = 1,
			RECOGNIZER = 2,
			VOICE = 3,
			DICTGRAM = 4,
			RECOGNIZERNOINIT = 5,
		}
		public enum TfIntegratableCandidateListSelectionStyle : int32
		{
			ACTIVE_SELECTION = 0,
			IMPLIED_SELECTION = 1,
		}
		public enum TKBLayoutType : int32
		{
			UNDEFINED = 0,
			CLASSIC = 1,
			OPTIMIZED = 2,
		}
		public enum InputScope : int32
		{
			DEFAULT = 0,
			URL = 1,
			FILE_FULLFILEPATH = 2,
			FILE_FILENAME = 3,
			EMAIL_USERNAME = 4,
			EMAIL_SMTPEMAILADDRESS = 5,
			LOGINNAME = 6,
			PERSONALNAME_FULLNAME = 7,
			PERSONALNAME_PREFIX = 8,
			PERSONALNAME_GIVENNAME = 9,
			PERSONALNAME_MIDDLENAME = 10,
			PERSONALNAME_SURNAME = 11,
			PERSONALNAME_SUFFIX = 12,
			ADDRESS_FULLPOSTALADDRESS = 13,
			ADDRESS_POSTALCODE = 14,
			ADDRESS_STREET = 15,
			ADDRESS_STATEORPROVINCE = 16,
			ADDRESS_CITY = 17,
			ADDRESS_COUNTRYNAME = 18,
			ADDRESS_COUNTRYSHORTNAME = 19,
			CURRENCY_AMOUNTANDSYMBOL = 20,
			CURRENCY_AMOUNT = 21,
			DATE_FULLDATE = 22,
			DATE_MONTH = 23,
			DATE_DAY = 24,
			DATE_YEAR = 25,
			DATE_MONTHNAME = 26,
			DATE_DAYNAME = 27,
			DIGITS = 28,
			NUMBER = 29,
			ONECHAR = 30,
			PASSWORD = 31,
			TELEPHONE_FULLTELEPHONENUMBER = 32,
			TELEPHONE_COUNTRYCODE = 33,
			TELEPHONE_AREACODE = 34,
			TELEPHONE_LOCALNUMBER = 35,
			TIME_FULLTIME = 36,
			TIME_HOUR = 37,
			TIME_MINORSEC = 38,
			NUMBER_FULLWIDTH = 39,
			ALPHANUMERIC_HALFWIDTH = 40,
			ALPHANUMERIC_FULLWIDTH = 41,
			CURRENCY_CHINESE = 42,
			BOPOMOFO = 43,
			HIRAGANA = 44,
			KATAKANA_HALFWIDTH = 45,
			KATAKANA_FULLWIDTH = 46,
			HANJA = 47,
			HANGUL_HALFWIDTH = 48,
			HANGUL_FULLWIDTH = 49,
			SEARCH = 50,
			FORMULA = 51,
			SEARCH_INCREMENTAL = 52,
			CHINESE_HALFWIDTH = 53,
			CHINESE_FULLWIDTH = 54,
			NATIVE_SCRIPT = 55,
			YOMI = 56,
			TEXT = 57,
			CHAT = 58,
			NAME_OR_PHONENUMBER = 59,
			EMAILNAME_OR_ADDRESS = 60,
			PRIVATE = 61,
			MAPS = 62,
			NUMERIC_PASSWORD = 63,
			NUMERIC_PIN = 64,
			ALPHANUMERIC_PIN = 65,
			ALPHANUMERIC_PIN_SET = 66,
			FORMULA_NUMBER = 67,
			CHAT_WITHOUT_EMOJI = 68,
			PHRASELIST = -1,
			REGULAREXPRESSION = -2,
			SRGS = -3,
			XML = -4,
			ENUMSTRING = -5,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct TS_STATUS
		{
			public uint32 dwDynamicFlags;
			public uint32 dwStaticFlags;
		}
		[CRepr]
		public struct TS_TEXTCHANGE
		{
			public int32 acpStart;
			public int32 acpOldEnd;
			public int32 acpNewEnd;
		}
		[CRepr]
		public struct TS_SELECTIONSTYLE
		{
			public TsActiveSelEnd ase;
			public BOOL fInterimChar;
		}
		[CRepr]
		public struct TS_SELECTION_ACP
		{
			public int32 acpStart;
			public int32 acpEnd;
			public TS_SELECTIONSTYLE style;
		}
		[CRepr]
		public struct TS_SELECTION_ANCHOR
		{
			public IAnchor* paStart;
			public IAnchor* paEnd;
			public TS_SELECTIONSTYLE style;
		}
		[CRepr]
		public struct TS_ATTRVAL
		{
			public Guid idAttr;
			public uint32 dwOverlapId;
			public VARIANT varValue;
		}
		[CRepr]
		public struct TS_RUNINFO
		{
			public uint32 uCount;
			public TsRunType type;
		}
		[CRepr]
		public struct TF_LANGBARITEMINFO
		{
			public Guid clsidService;
			public Guid guidItem;
			public uint32 dwStyle;
			public uint32 ulSort;
			public char16[32] szDescription;
		}
		[CRepr]
		public struct TF_LBBALLOONINFO
		{
			public TfLBBalloonStyle style;
			public BSTR bstrText;
		}
		[CRepr]
		public struct TF_PERSISTENT_PROPERTY_HEADER_ACP
		{
			public Guid guidType;
			public int32 ichStart;
			public int32 cch;
			public uint32 cb;
			public uint32 dwPrivate;
			public Guid clsidTIP;
		}
		[CRepr]
		public struct TF_LANGUAGEPROFILE
		{
			public Guid clsid;
			public uint16 langid;
			public Guid catid;
			public BOOL fActive;
			public Guid guidProfile;
		}
		[CRepr]
		public struct TF_SELECTIONSTYLE
		{
			public TfActiveSelEnd ase;
			public BOOL fInterimChar;
		}
		[CRepr]
		public struct TF_SELECTION
		{
			public ITfRange* range;
			public TF_SELECTIONSTYLE style;
		}
		[CRepr]
		public struct TF_PROPERTYVAL
		{
			public Guid guidId;
			public VARIANT varValue;
		}
		[CRepr]
		public struct TF_HALTCOND
		{
			public ITfRange* pHaltRange;
			public TfAnchor aHaltPos;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct TF_INPUTPROCESSORPROFILE
		{
			public uint32 dwProfileType;
			public uint16 langid;
			public Guid clsid;
			public Guid guidProfile;
			public Guid catid;
			public HKL hklSubstitute;
			public uint32 dwCaps;
			public HKL hkl;
			public uint32 dwFlags;
		}
		[CRepr]
		public struct TF_PRESERVEDKEY
		{
			public uint32 uVKey;
			public uint32 uModifiers;
		}
		[CRepr]
		public struct TF_DA_COLOR
		{
			public TF_DA_COLORTYPE type;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 nIndex;
				public uint32 cr;
			}
		}
		[CRepr]
		public struct TF_DISPLAYATTRIBUTE
		{
			public TF_DA_COLOR crText;
			public TF_DA_COLOR crBk;
			public TF_DA_LINESTYLE lsStyle;
			public BOOL fBoldLine;
			public TF_DA_COLOR crLine;
			public TF_DA_ATTR_INFO bAttr;
		}
		[CRepr]
		public struct TF_LMLATTELEMENT
		{
			public uint32 dwFrameStart;
			public uint32 dwFrameLen;
			public uint32 dwFlags;
			public _Anonymous_e__Union Anonymous;
			public BSTR bstrText;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public int32 iCost;
			}
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_MSAAControl = .(0x08cd963f, 0x7a3e, 0x4f5c, 0x9b, 0xd8, 0xd6, 0x92, 0xbb, 0x04, 0x3c, 0x5b);
		public const Guid CLSID_AccStore = .(0x5440837f, 0x4bff, 0x4ae5, 0xa1, 0xb1, 0x77, 0x22, 0xec, 0xc6, 0x33, 0x2a);
		public const Guid CLSID_AccDictionary = .(0x6572ee16, 0x5fe5, 0x4331, 0xbb, 0x6d, 0x76, 0xa4, 0x9c, 0x56, 0xe4, 0x23);
		public const Guid CLSID_AccServerDocMgr = .(0x6089a37e, 0xeb8a, 0x482d, 0xbd, 0x6f, 0xf9, 0xf4, 0x69, 0x04, 0xd1, 0x6d);
		public const Guid CLSID_AccClientDocMgr = .(0xfc48cc30, 0x4f3e, 0x4fa1, 0x80, 0x3b, 0xad, 0x0e, 0x19, 0x6a, 0x83, 0xb1);
		public const Guid CLSID_DocWrap = .(0xbf426f7e, 0x7a5e, 0x44d6, 0x83, 0x0c, 0xa3, 0x90, 0xea, 0x94, 0x62, 0xa3);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ITextStoreACP : IUnknown
		{
			public const new Guid IID = .(0x28888fe3, 0xc2a0, 0x483a, 0xa3, 0xea, 0x8c, 0xb1, 0xce, 0x51, 0xff, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(in Guid riid, ref IUnknown punk, uint32 dwMask) mut => VT.AdviseSink(ref this, riid, ref punk, dwMask);
			public HRESULT UnadviseSink(ref IUnknown punk) mut => VT.UnadviseSink(ref this, ref punk);
			public HRESULT RequestLock(uint32 dwLockFlags, out HRESULT phrSession) mut => VT.RequestLock(ref this, dwLockFlags, out phrSession);
			public HRESULT GetStatus(out TS_STATUS pdcs) mut => VT.GetStatus(ref this, out pdcs);
			public HRESULT QueryInsert(int32 acpTestStart, int32 acpTestEnd, uint32 cch, out int32 pacpResultStart, out int32 pacpResultEnd) mut => VT.QueryInsert(ref this, acpTestStart, acpTestEnd, cch, out pacpResultStart, out pacpResultEnd);
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, out uint32 pcFetched) mut => VT.GetSelection(ref this, ulIndex, ulCount, pSelection, out pcFetched);
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ACP* pSelection) mut => VT.SetSelection(ref this, ulCount, pSelection);
			public HRESULT GetText(int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, out uint32 pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, out uint32 pcRunInfoRet, out int32 pacpNext) mut => VT.GetText(ref this, acpStart, acpEnd, pchPlain, cchPlainReq, out pcchPlainRet, prgRunInfo, cRunInfoReq, out pcRunInfoRet, out pacpNext);
			public HRESULT SetText(uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, out TS_TEXTCHANGE pChange) mut => VT.SetText(ref this, dwFlags, acpStart, acpEnd, pchText, cch, out pChange);
			public HRESULT GetFormattedText(int32 acpStart, int32 acpEnd, out IDataObject* ppDataObject) mut => VT.GetFormattedText(ref this, acpStart, acpEnd, out ppDataObject);
			public HRESULT GetEmbedded(int32 acpPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) mut => VT.GetEmbedded(ref this, acpPos, rguidService, riid, out ppunk);
			public HRESULT QueryInsertEmbedded(in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) mut => VT.QueryInsertEmbedded(ref this, pguidService, pFormatEtc, out pfInsertable);
			public HRESULT InsertEmbedded(uint32 dwFlags, int32 acpStart, int32 acpEnd, ref IDataObject pDataObject, out TS_TEXTCHANGE pChange) mut => VT.InsertEmbedded(ref this, dwFlags, acpStart, acpEnd, ref pDataObject, out pChange);
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) mut => VT.InsertTextAtSelection(ref this, dwFlags, pchText, cch, out pacpStart, out pacpEnd, out pChange);
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, ref IDataObject pDataObject, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) mut => VT.InsertEmbeddedAtSelection(ref this, dwFlags, ref pDataObject, out pacpStart, out pacpEnd, out pChange);
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut => VT.RequestSupportedAttrs(ref this, dwFlags, cFilterAttrs, paFilterAttrs);
			public HRESULT RequestAttrsAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsAtPosition(ref this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT RequestAttrsTransitioningAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsTransitioningAtPosition(ref this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT FindNextAttrTransition(int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out int32 pacpNext, out BOOL pfFound, out int32 plFoundOffset) mut => VT.FindNextAttrTransition(ref this, acpStart, acpHalt, cFilterAttrs, paFilterAttrs, dwFlags, out pacpNext, out pfFound, out plFoundOffset);
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) mut => VT.RetrieveRequestedAttrs(ref this, ulCount, paAttrVals, out pcFetched);
			public HRESULT GetEndACP(out int32 pacp) mut => VT.GetEndACP(ref this, out pacp);
			public HRESULT GetActiveView(out uint32 pvcView) mut => VT.GetActiveView(ref this, out pvcView);
			public HRESULT GetACPFromPoint(uint32 vcView, in POINT ptScreen, uint32 dwFlags, out int32 pacp) mut => VT.GetACPFromPoint(ref this, vcView, ptScreen, dwFlags, out pacp);
			public HRESULT GetTextExt(uint32 vcView, int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) mut => VT.GetTextExt(ref this, vcView, acpStart, acpEnd, out prc, out pfClipped);
			public HRESULT GetScreenExt(uint32 vcView, out RECT prc) mut => VT.GetScreenExt(ref this, vcView, out prc);
			public HRESULT GetWnd(uint32 vcView, out HWND phwnd) mut => VT.GetWnd(ref this, vcView, out phwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, in Guid riid, ref IUnknown punk, uint32 dwMask) AdviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, ref IUnknown punk) UnadviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwLockFlags, out HRESULT phrSession) RequestLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, out TS_STATUS pdcs) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, out int32 pacpResultStart, out int32 pacpResultEnd) QueryInsert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, out uint32 pcFetched) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, out uint32 pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, out uint32 pcRunInfoRet, out int32 pacpNext) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, out TS_TEXTCHANGE pChange) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpStart, int32 acpEnd, out IDataObject* ppDataObject) GetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) GetEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) QueryInsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwFlags, int32 acpStart, int32 acpEnd, ref IDataObject pDataObject, out TS_TEXTCHANGE pChange) InsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwFlags, char16* pchText, uint32 cch, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) InsertTextAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwFlags, ref IDataObject pDataObject, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) InsertEmbeddedAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out int32 pacpNext, out BOOL pfFound, out int32 plFoundOffset) FindNextAttrTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) RetrieveRequestedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, out int32 pacp) GetEndACP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, out uint32 pvcView) GetActiveView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 vcView, in POINT ptScreen, uint32 dwFlags, out int32 pacp) GetACPFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 vcView, int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) GetTextExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 vcView, out RECT prc) GetScreenExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP self, uint32 vcView, out HWND phwnd) GetWnd;
			}
		}
		[CRepr]
		public struct ITextStoreACP2 : IUnknown
		{
			public const new Guid IID = .(0xf86ad89f, 0x5fe4, 0x4b8d, 0xbb, 0x9f, 0xef, 0x37, 0x97, 0xa8, 0x4f, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(in Guid riid, ref IUnknown punk, uint32 dwMask) mut => VT.AdviseSink(ref this, riid, ref punk, dwMask);
			public HRESULT UnadviseSink(ref IUnknown punk) mut => VT.UnadviseSink(ref this, ref punk);
			public HRESULT RequestLock(uint32 dwLockFlags, out HRESULT phrSession) mut => VT.RequestLock(ref this, dwLockFlags, out phrSession);
			public HRESULT GetStatus(out TS_STATUS pdcs) mut => VT.GetStatus(ref this, out pdcs);
			public HRESULT QueryInsert(int32 acpTestStart, int32 acpTestEnd, uint32 cch, out int32 pacpResultStart, out int32 pacpResultEnd) mut => VT.QueryInsert(ref this, acpTestStart, acpTestEnd, cch, out pacpResultStart, out pacpResultEnd);
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, out uint32 pcFetched) mut => VT.GetSelection(ref this, ulIndex, ulCount, pSelection, out pcFetched);
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ACP* pSelection) mut => VT.SetSelection(ref this, ulCount, pSelection);
			public HRESULT GetText(int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, out uint32 pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, out uint32 pcRunInfoRet, out int32 pacpNext) mut => VT.GetText(ref this, acpStart, acpEnd, pchPlain, cchPlainReq, out pcchPlainRet, prgRunInfo, cRunInfoReq, out pcRunInfoRet, out pacpNext);
			public HRESULT SetText(uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, out TS_TEXTCHANGE pChange) mut => VT.SetText(ref this, dwFlags, acpStart, acpEnd, pchText, cch, out pChange);
			public HRESULT GetFormattedText(int32 acpStart, int32 acpEnd, out IDataObject* ppDataObject) mut => VT.GetFormattedText(ref this, acpStart, acpEnd, out ppDataObject);
			public HRESULT GetEmbedded(int32 acpPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) mut => VT.GetEmbedded(ref this, acpPos, rguidService, riid, out ppunk);
			public HRESULT QueryInsertEmbedded(in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) mut => VT.QueryInsertEmbedded(ref this, pguidService, pFormatEtc, out pfInsertable);
			public HRESULT InsertEmbedded(uint32 dwFlags, int32 acpStart, int32 acpEnd, ref IDataObject pDataObject, out TS_TEXTCHANGE pChange) mut => VT.InsertEmbedded(ref this, dwFlags, acpStart, acpEnd, ref pDataObject, out pChange);
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) mut => VT.InsertTextAtSelection(ref this, dwFlags, pchText, cch, out pacpStart, out pacpEnd, out pChange);
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, ref IDataObject pDataObject, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) mut => VT.InsertEmbeddedAtSelection(ref this, dwFlags, ref pDataObject, out pacpStart, out pacpEnd, out pChange);
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut => VT.RequestSupportedAttrs(ref this, dwFlags, cFilterAttrs, paFilterAttrs);
			public HRESULT RequestAttrsAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsAtPosition(ref this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT RequestAttrsTransitioningAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsTransitioningAtPosition(ref this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT FindNextAttrTransition(int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out int32 pacpNext, out BOOL pfFound, out int32 plFoundOffset) mut => VT.FindNextAttrTransition(ref this, acpStart, acpHalt, cFilterAttrs, paFilterAttrs, dwFlags, out pacpNext, out pfFound, out plFoundOffset);
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) mut => VT.RetrieveRequestedAttrs(ref this, ulCount, paAttrVals, out pcFetched);
			public HRESULT GetEndACP(out int32 pacp) mut => VT.GetEndACP(ref this, out pacp);
			public HRESULT GetActiveView(out uint32 pvcView) mut => VT.GetActiveView(ref this, out pvcView);
			public HRESULT GetACPFromPoint(uint32 vcView, in POINT ptScreen, uint32 dwFlags, out int32 pacp) mut => VT.GetACPFromPoint(ref this, vcView, ptScreen, dwFlags, out pacp);
			public HRESULT GetTextExt(uint32 vcView, int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) mut => VT.GetTextExt(ref this, vcView, acpStart, acpEnd, out prc, out pfClipped);
			public HRESULT GetScreenExt(uint32 vcView, out RECT prc) mut => VT.GetScreenExt(ref this, vcView, out prc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, in Guid riid, ref IUnknown punk, uint32 dwMask) AdviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, ref IUnknown punk) UnadviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwLockFlags, out HRESULT phrSession) RequestLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, out TS_STATUS pdcs) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, out int32 pacpResultStart, out int32 pacpResultEnd) QueryInsert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, out uint32 pcFetched) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, out uint32 pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, out uint32 pcRunInfoRet, out int32 pacpNext) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, out TS_TEXTCHANGE pChange) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpStart, int32 acpEnd, out IDataObject* ppDataObject) GetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) GetEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) QueryInsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwFlags, int32 acpStart, int32 acpEnd, ref IDataObject pDataObject, out TS_TEXTCHANGE pChange) InsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwFlags, char16* pchText, uint32 cch, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) InsertTextAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwFlags, ref IDataObject pDataObject, out int32 pacpStart, out int32 pacpEnd, out TS_TEXTCHANGE pChange) InsertEmbeddedAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out int32 pacpNext, out BOOL pfFound, out int32 plFoundOffset) FindNextAttrTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) RetrieveRequestedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, out int32 pacp) GetEndACP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, out uint32 pvcView) GetActiveView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 vcView, in POINT ptScreen, uint32 dwFlags, out int32 pacp) GetACPFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 vcView, int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) GetTextExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACP2 self, uint32 vcView, out RECT prc) GetScreenExt;
			}
		}
		[CRepr]
		public struct ITextStoreACPSink : IUnknown
		{
			public const new Guid IID = .(0x22d44c94, 0xa419, 0x4542, 0xa2, 0x72, 0xae, 0x26, 0x09, 0x3e, 0xce, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextChange(TEXT_STORE_TEXT_CHANGE_FLAGS dwFlags, in TS_TEXTCHANGE pChange) mut => VT.OnTextChange(ref this, dwFlags, pChange);
			public HRESULT OnSelectionChange() mut => VT.OnSelectionChange(ref this);
			public HRESULT OnLayoutChange(TsLayoutCode lcode, uint32 vcView) mut => VT.OnLayoutChange(ref this, lcode, vcView);
			public HRESULT OnStatusChange(uint32 dwFlags) mut => VT.OnStatusChange(ref this, dwFlags);
			public HRESULT OnAttrsChange(int32 acpStart, int32 acpEnd, uint32 cAttrs, Guid* paAttrs) mut => VT.OnAttrsChange(ref this, acpStart, acpEnd, cAttrs, paAttrs);
			public HRESULT OnLockGranted(TEXT_STORE_LOCK_FLAGS dwLockFlags) mut => VT.OnLockGranted(ref this, dwLockFlags);
			public HRESULT OnStartEditTransaction() mut => VT.OnStartEditTransaction(ref this);
			public HRESULT OnEndEditTransaction() mut => VT.OnEndEditTransaction(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self, TEXT_STORE_TEXT_CHANGE_FLAGS dwFlags, in TS_TEXTCHANGE pChange) OnTextChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self) OnSelectionChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self, uint32 dwFlags) OnStatusChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self, int32 acpStart, int32 acpEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self) OnStartEditTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSink self) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct IAnchor : IUnknown
		{
			public const new Guid IID = .(0x0feb7e34, 0x5a60, 0x4356, 0x8e, 0xf7, 0xab, 0xde, 0xc2, 0xff, 0x7c, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGravity(TsGravity gravity) mut => VT.SetGravity(ref this, gravity);
			public HRESULT GetGravity(out TsGravity pgravity) mut => VT.GetGravity(ref this, out pgravity);
			public HRESULT IsEqual(ref IAnchor paWith, out BOOL pfEqual) mut => VT.IsEqual(ref this, ref paWith, out pfEqual);
			public HRESULT Compare(ref IAnchor paWith, out int32 plResult) mut => VT.Compare(ref this, ref paWith, out plResult);
			public HRESULT Shift(uint32 dwFlags, int32 cchReq, out int32 pcch, ref IAnchor paHaltAnchor) mut => VT.Shift(ref this, dwFlags, cchReq, out pcch, ref paHaltAnchor);
			public HRESULT ShiftTo(ref IAnchor paSite) mut => VT.ShiftTo(ref this, ref paSite);
			public HRESULT ShiftRegion(uint32 dwFlags, TsShiftDir dir, out BOOL pfNoRegion) mut => VT.ShiftRegion(ref this, dwFlags, dir, out pfNoRegion);
			public HRESULT SetChangeHistoryMask(uint32 dwMask) mut => VT.SetChangeHistoryMask(ref this, dwMask);
			public HRESULT GetChangeHistory(out ANCHOR_CHANGE_HISTORY_FLAGS pdwHistory) mut => VT.GetChangeHistory(ref this, out pdwHistory);
			public HRESULT ClearChangeHistory() mut => VT.ClearChangeHistory(ref this);
			public HRESULT Clone(out IAnchor* ppaClone) mut => VT.Clone(ref this, out ppaClone);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, TsGravity gravity) SetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, out TsGravity pgravity) GetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, ref IAnchor paWith, out BOOL pfEqual) IsEqual;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, ref IAnchor paWith, out int32 plResult) Compare;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, uint32 dwFlags, int32 cchReq, out int32 pcch, ref IAnchor paHaltAnchor) Shift;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, ref IAnchor paSite) ShiftTo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, uint32 dwFlags, TsShiftDir dir, out BOOL pfNoRegion) ShiftRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, uint32 dwMask) SetChangeHistoryMask;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, out ANCHOR_CHANGE_HISTORY_FLAGS pdwHistory) GetChangeHistory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self) ClearChangeHistory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAnchor self, out IAnchor* ppaClone) Clone;
			}
		}
		[CRepr]
		public struct ITextStoreAnchor : IUnknown
		{
			public const new Guid IID = .(0x9b2077b0, 0x5f18, 0x4dec, 0xbe, 0xe9, 0x3c, 0xc7, 0x22, 0xf5, 0xdf, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(in Guid riid, ref IUnknown punk, uint32 dwMask) mut => VT.AdviseSink(ref this, riid, ref punk, dwMask);
			public HRESULT UnadviseSink(ref IUnknown punk) mut => VT.UnadviseSink(ref this, ref punk);
			public HRESULT RequestLock(uint32 dwLockFlags, out HRESULT phrSession) mut => VT.RequestLock(ref this, dwLockFlags, out phrSession);
			public HRESULT GetStatus(out TS_STATUS pdcs) mut => VT.GetStatus(ref this, out pdcs);
			public HRESULT QueryInsert(ref IAnchor paTestStart, ref IAnchor paTestEnd, uint32 cch, out IAnchor* ppaResultStart, out IAnchor* ppaResultEnd) mut => VT.QueryInsert(ref this, ref paTestStart, ref paTestEnd, cch, out ppaResultStart, out ppaResultEnd);
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection, out uint32 pcFetched) mut => VT.GetSelection(ref this, ulIndex, ulCount, pSelection, out pcFetched);
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ANCHOR* pSelection) mut => VT.SetSelection(ref this, ulCount, pSelection);
			public HRESULT GetText(uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, char16* pchText, uint32 cchReq, out uint32 pcch, BOOL fUpdateAnchor) mut => VT.GetText(ref this, dwFlags, ref paStart, ref paEnd, pchText, cchReq, out pcch, fUpdateAnchor);
			public HRESULT SetText(uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, char16* pchText, uint32 cch) mut => VT.SetText(ref this, dwFlags, ref paStart, ref paEnd, pchText, cch);
			public HRESULT GetFormattedText(ref IAnchor paStart, ref IAnchor paEnd, out IDataObject* ppDataObject) mut => VT.GetFormattedText(ref this, ref paStart, ref paEnd, out ppDataObject);
			public HRESULT GetEmbedded(uint32 dwFlags, ref IAnchor paPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) mut => VT.GetEmbedded(ref this, dwFlags, ref paPos, rguidService, riid, out ppunk);
			public HRESULT InsertEmbedded(uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, ref IDataObject pDataObject) mut => VT.InsertEmbedded(ref this, dwFlags, ref paStart, ref paEnd, ref pDataObject);
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut => VT.RequestSupportedAttrs(ref this, dwFlags, cFilterAttrs, paFilterAttrs);
			public HRESULT RequestAttrsAtPosition(ref IAnchor paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsAtPosition(ref this, ref paPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT RequestAttrsTransitioningAtPosition(ref IAnchor paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut => VT.RequestAttrsTransitioningAtPosition(ref this, ref paPos, cFilterAttrs, paFilterAttrs, dwFlags);
			public HRESULT FindNextAttrTransition(ref IAnchor paStart, ref IAnchor paHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out BOOL pfFound, out int32 plFoundOffset) mut => VT.FindNextAttrTransition(ref this, ref paStart, ref paHalt, cFilterAttrs, paFilterAttrs, dwFlags, out pfFound, out plFoundOffset);
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) mut => VT.RetrieveRequestedAttrs(ref this, ulCount, paAttrVals, out pcFetched);
			public HRESULT GetStart(out IAnchor* ppaStart) mut => VT.GetStart(ref this, out ppaStart);
			public HRESULT GetEnd(out IAnchor* ppaEnd) mut => VT.GetEnd(ref this, out ppaEnd);
			public HRESULT GetActiveView(out uint32 pvcView) mut => VT.GetActiveView(ref this, out pvcView);
			public HRESULT GetAnchorFromPoint(uint32 vcView, in POINT ptScreen, uint32 dwFlags, out IAnchor* ppaSite) mut => VT.GetAnchorFromPoint(ref this, vcView, ptScreen, dwFlags, out ppaSite);
			public HRESULT GetTextExt(uint32 vcView, ref IAnchor paStart, ref IAnchor paEnd, out RECT prc, out BOOL pfClipped) mut => VT.GetTextExt(ref this, vcView, ref paStart, ref paEnd, out prc, out pfClipped);
			public HRESULT GetScreenExt(uint32 vcView, out RECT prc) mut => VT.GetScreenExt(ref this, vcView, out prc);
			public HRESULT GetWnd(uint32 vcView, out HWND phwnd) mut => VT.GetWnd(ref this, vcView, out phwnd);
			public HRESULT QueryInsertEmbedded(in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) mut => VT.QueryInsertEmbedded(ref this, pguidService, pFormatEtc, out pfInsertable);
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, out IAnchor* ppaStart, out IAnchor* ppaEnd) mut => VT.InsertTextAtSelection(ref this, dwFlags, pchText, cch, out ppaStart, out ppaEnd);
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, ref IDataObject pDataObject, out IAnchor* ppaStart, out IAnchor* ppaEnd) mut => VT.InsertEmbeddedAtSelection(ref this, dwFlags, ref pDataObject, out ppaStart, out ppaEnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, in Guid riid, ref IUnknown punk, uint32 dwMask) AdviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IUnknown punk) UnadviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwLockFlags, out HRESULT phrSession) RequestLock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, out TS_STATUS pdcs) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IAnchor paTestStart, ref IAnchor paTestEnd, uint32 cch, out IAnchor* ppaResultStart, out IAnchor* ppaResultEnd) QueryInsert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection, out uint32 pcFetched) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection) SetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, char16* pchText, uint32 cchReq, out uint32 pcch, BOOL fUpdateAnchor) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, char16* pchText, uint32 cch) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IAnchor paStart, ref IAnchor paEnd, out IDataObject* ppDataObject) GetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, ref IAnchor paPos, in Guid rguidService, in Guid riid, out IUnknown* ppunk) GetEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, ref IAnchor paStart, ref IAnchor paEnd, ref IDataObject pDataObject) InsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IAnchor paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IAnchor paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, ref IAnchor paStart, ref IAnchor paHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, out BOOL pfFound, out int32 plFoundOffset) FindNextAttrTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 ulCount, TS_ATTRVAL* paAttrVals, out uint32 pcFetched) RetrieveRequestedAttrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, out IAnchor* ppaStart) GetStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, out IAnchor* ppaEnd) GetEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, out uint32 pvcView) GetActiveView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 vcView, in POINT ptScreen, uint32 dwFlags, out IAnchor* ppaSite) GetAnchorFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 vcView, ref IAnchor paStart, ref IAnchor paEnd, out RECT prc, out BOOL pfClipped) GetTextExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 vcView, out RECT prc) GetScreenExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 vcView, out HWND phwnd) GetWnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) QueryInsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, char16* pchText, uint32 cch, out IAnchor* ppaStart, out IAnchor* ppaEnd) InsertTextAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchor self, uint32 dwFlags, ref IDataObject pDataObject, out IAnchor* ppaStart, out IAnchor* ppaEnd) InsertEmbeddedAtSelection;
			}
		}
		[CRepr]
		public struct ITextStoreAnchorSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e905, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextChange(TEXT_STORE_CHANGE_FLAGS dwFlags, ref IAnchor paStart, ref IAnchor paEnd) mut => VT.OnTextChange(ref this, dwFlags, ref paStart, ref paEnd);
			public HRESULT OnSelectionChange() mut => VT.OnSelectionChange(ref this);
			public HRESULT OnLayoutChange(TsLayoutCode lcode, uint32 vcView) mut => VT.OnLayoutChange(ref this, lcode, vcView);
			public HRESULT OnStatusChange(uint32 dwFlags) mut => VT.OnStatusChange(ref this, dwFlags);
			public HRESULT OnAttrsChange(ref IAnchor paStart, ref IAnchor paEnd, uint32 cAttrs, Guid* paAttrs) mut => VT.OnAttrsChange(ref this, ref paStart, ref paEnd, cAttrs, paAttrs);
			public HRESULT OnLockGranted(TEXT_STORE_LOCK_FLAGS dwLockFlags) mut => VT.OnLockGranted(ref this, dwLockFlags);
			public HRESULT OnStartEditTransaction() mut => VT.OnStartEditTransaction(ref this);
			public HRESULT OnEndEditTransaction() mut => VT.OnEndEditTransaction(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self, TEXT_STORE_CHANGE_FLAGS dwFlags, ref IAnchor paStart, ref IAnchor paEnd) OnTextChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self) OnSelectionChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self, uint32 dwFlags) OnStatusChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self, ref IAnchor paStart, ref IAnchor paEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self) OnStartEditTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorSink self) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct ITfLangBarMgr : IUnknown
		{
			public const new Guid IID = .(0x87955690, 0xe627, 0x11d2, 0x8d, 0xdb, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseEventSink(ref ITfLangBarEventSink pSink, HWND hwnd, uint32 dwFlags, ref uint32 pdwCookie) mut => VT.AdviseEventSink(ref this, ref pSink, hwnd, dwFlags, ref pdwCookie);
			public HRESULT UnadviseEventSink(uint32 dwCookie) mut => VT.UnadviseEventSink(ref this, dwCookie);
			public HRESULT GetThreadMarshalInterface(uint32 dwThreadId, uint32 dwType, in Guid riid, out IUnknown* ppunk) mut => VT.GetThreadMarshalInterface(ref this, dwThreadId, dwType, riid, out ppunk);
			public HRESULT GetThreadLangBarItemMgr(uint32 dwThreadId, out ITfLangBarItemMgr* pplbi, out uint32 pdwThreadid) mut => VT.GetThreadLangBarItemMgr(ref this, dwThreadId, out pplbi, out pdwThreadid);
			public HRESULT GetInputProcessorProfiles(uint32 dwThreadId, out ITfInputProcessorProfiles* ppaip, out uint32 pdwThreadid) mut => VT.GetInputProcessorProfiles(ref this, dwThreadId, out ppaip, out pdwThreadid);
			public HRESULT RestoreLastFocus(out uint32 pdwThreadId, BOOL fPrev) mut => VT.RestoreLastFocus(ref this, out pdwThreadId, fPrev);
			public HRESULT SetModalInput(ref ITfLangBarEventSink pSink, uint32 dwThreadId, uint32 dwFlags) mut => VT.SetModalInput(ref this, ref pSink, dwThreadId, dwFlags);
			public HRESULT ShowFloating(uint32 dwFlags) mut => VT.ShowFloating(ref this, dwFlags);
			public HRESULT GetShowFloatingStatus(out uint32 pdwFlags) mut => VT.GetShowFloatingStatus(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, ref ITfLangBarEventSink pSink, HWND hwnd, uint32 dwFlags, ref uint32 pdwCookie) AdviseEventSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, uint32 dwCookie) UnadviseEventSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, uint32 dwThreadId, uint32 dwType, in Guid riid, out IUnknown* ppunk) GetThreadMarshalInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, uint32 dwThreadId, out ITfLangBarItemMgr* pplbi, out uint32 pdwThreadid) GetThreadLangBarItemMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, uint32 dwThreadId, out ITfInputProcessorProfiles* ppaip, out uint32 pdwThreadid) GetInputProcessorProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, out uint32 pdwThreadId, BOOL fPrev) RestoreLastFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, ref ITfLangBarEventSink pSink, uint32 dwThreadId, uint32 dwFlags) SetModalInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, uint32 dwFlags) ShowFloating;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarMgr self, out uint32 pdwFlags) GetShowFloatingStatus;
			}
		}
		[CRepr]
		public struct ITfLangBarEventSink : IUnknown
		{
			public const new Guid IID = .(0x18a4e900, 0xe0ae, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetFocus(uint32 dwThreadId) mut => VT.OnSetFocus(ref this, dwThreadId);
			public HRESULT OnThreadTerminate(uint32 dwThreadId) mut => VT.OnThreadTerminate(ref this, dwThreadId);
			public HRESULT OnThreadItemChange(uint32 dwThreadId) mut => VT.OnThreadItemChange(ref this, dwThreadId);
			public HRESULT OnModalInput(uint32 dwThreadId, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.OnModalInput(ref this, dwThreadId, uMsg, wParam, lParam);
			public HRESULT ShowFloating(uint32 dwFlags) mut => VT.ShowFloating(ref this, dwFlags);
			public HRESULT GetItemFloatingRect(uint32 dwThreadId, in Guid rguid, out RECT prc) mut => VT.GetItemFloatingRect(ref this, dwThreadId, rguid, out prc);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwThreadId) OnSetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwThreadId) OnThreadTerminate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwThreadId) OnThreadItemChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwThreadId, uint32 uMsg, WPARAM wParam, LPARAM lParam) OnModalInput;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwFlags) ShowFloating;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarEventSink self, uint32 dwThreadId, in Guid rguid, out RECT prc) GetItemFloatingRect;
			}
		}
		[CRepr]
		public struct ITfLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x57dbe1a0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdate(uint32 dwFlags) mut => VT.OnUpdate(ref this, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemSink self, uint32 dwFlags) OnUpdate;
			}
		}
		[CRepr]
		public struct IEnumTfLangBarItems : IUnknown
		{
			public const new Guid IID = .(0x583f34d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfLangBarItems* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfLangBarItem** ppItem, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, ppItem, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLangBarItems self, out IEnumTfLangBarItems* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLangBarItems self, uint32 ulCount, ITfLangBarItem** ppItem, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLangBarItems self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLangBarItems self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLangBarItemMgr : IUnknown
		{
			public const new Guid IID = .(0xba468c55, 0x9956, 0x4fb1, 0xa5, 0x9d, 0x52, 0xa7, 0xdd, 0x7c, 0xc6, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumItems(out IEnumTfLangBarItems* ppEnum) mut => VT.EnumItems(ref this, out ppEnum);
			public HRESULT GetItem(in Guid rguid, out ITfLangBarItem* ppItem) mut => VT.GetItem(ref this, rguid, out ppItem);
			public HRESULT AddItem(ref ITfLangBarItem punk) mut => VT.AddItem(ref this, ref punk);
			public HRESULT RemoveItem(ref ITfLangBarItem punk) mut => VT.RemoveItem(ref this, ref punk);
			public HRESULT AdviseItemSink(ref ITfLangBarItemSink punk, out uint32 pdwCookie, in Guid rguidItem) mut => VT.AdviseItemSink(ref this, ref punk, out pdwCookie, rguidItem);
			public HRESULT UnadviseItemSink(uint32 dwCookie) mut => VT.UnadviseItemSink(ref this, dwCookie);
			public HRESULT GetItemFloatingRect(uint32 dwThreadId, in Guid rguid, out RECT prc) mut => VT.GetItemFloatingRect(ref this, dwThreadId, rguid, out prc);
			public HRESULT GetItemsStatus(uint32 ulCount, Guid* prgguid, uint32* pdwStatus) mut => VT.GetItemsStatus(ref this, ulCount, prgguid, pdwStatus);
			public HRESULT GetItemNum(out uint32 pulCount) mut => VT.GetItemNum(ref this, out pulCount);
			public HRESULT GetItems(uint32 ulCount, ITfLangBarItem** ppItem, TF_LANGBARITEMINFO* pInfo, uint32* pdwStatus, out uint32 pcFetched) mut => VT.GetItems(ref this, ulCount, ppItem, pInfo, pdwStatus, out pcFetched);
			public HRESULT AdviseItemsSink(uint32 ulCount, ITfLangBarItemSink** ppunk, Guid* pguidItem, uint32* pdwCookie) mut => VT.AdviseItemsSink(ref this, ulCount, ppunk, pguidItem, pdwCookie);
			public HRESULT UnadviseItemsSink(uint32 ulCount, uint32* pdwCookie) mut => VT.UnadviseItemsSink(ref this, ulCount, pdwCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, out IEnumTfLangBarItems* ppEnum) EnumItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, in Guid rguid, out ITfLangBarItem* ppItem) GetItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, ref ITfLangBarItem punk) AddItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, ref ITfLangBarItem punk) RemoveItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, ref ITfLangBarItemSink punk, out uint32 pdwCookie, in Guid rguidItem) AdviseItemSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 dwCookie) UnadviseItemSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 dwThreadId, in Guid rguid, out RECT prc) GetItemFloatingRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 ulCount, Guid* prgguid, uint32* pdwStatus) GetItemsStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, out uint32 pulCount) GetItemNum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 ulCount, ITfLangBarItem** ppItem, TF_LANGBARITEMINFO* pInfo, uint32* pdwStatus, out uint32 pcFetched) GetItems;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 ulCount, ITfLangBarItemSink** ppunk, Guid* pguidItem, uint32* pdwCookie) AdviseItemsSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemMgr self, uint32 ulCount, uint32* pdwCookie) UnadviseItemsSink;
			}
		}
		[CRepr]
		public struct ITfLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x73540d69, 0xedeb, 0x4ee9, 0x96, 0xc9, 0x23, 0xaa, 0x30, 0xb2, 0x59, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfo(out TF_LANGBARITEMINFO pInfo) mut => VT.GetInfo(ref this, out pInfo);
			public HRESULT GetStatus(out uint32 pdwStatus) mut => VT.GetStatus(ref this, out pdwStatus);
			public HRESULT Show(BOOL fShow) mut => VT.Show(ref this, fShow);
			public HRESULT GetTooltipString(out BSTR pbstrToolTip) mut => VT.GetTooltipString(ref this, out pbstrToolTip);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItem self, out TF_LANGBARITEMINFO pInfo) GetInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItem self, out uint32 pdwStatus) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItem self, BOOL fShow) Show;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItem self, out BSTR pbstrToolTip) GetTooltipString;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x1449d9ab, 0x13cf, 0x4687, 0xaa, 0x3e, 0x8d, 0x8b, 0x18, 0x57, 0x43, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitMenu(ref ITfMenu pMenu) mut => VT.InitMenu(ref this, ref pMenu);
			public HRESULT OnMenuSelect(uint32 wID) mut => VT.OnMenuSelect(ref this, wID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItemSink self, ref ITfMenu pMenu) InitMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItemSink self, uint32 wID) OnMenuSelect;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x1e13e9ec, 0x6b33, 0x4d4a, 0xb5, 0xeb, 0x8a, 0x92, 0xf0, 0x29, 0xf3, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIcon(HICON hIcon) mut => VT.SetIcon(ref this, hIcon);
			public HRESULT SetTooltipString(char16* pchToolTip, uint32 cch) mut => VT.SetTooltipString(ref this, pchToolTip, cch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItem self, HICON hIcon) SetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItem self, char16* pchToolTip, uint32 cch) SetTooltipString;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItemText : IUnknown
		{
			public const new Guid IID = .(0x5c4ce0e5, 0xba49, 0x4b52, 0xac, 0x6b, 0x3b, 0x39, 0x7b, 0x4f, 0x70, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetItemText(char16* pch, uint32 cch) mut => VT.SetItemText(ref this, pch, cch);
			public HRESULT GetItemText(out BSTR pbstrText) mut => VT.GetItemText(ref this, out pbstrText);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItemText self, char16* pch, uint32 cch) SetItemText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemLangBarItemText self, out BSTR pbstrText) GetItemText;
			}
		}
		[CRepr]
		public struct ITfSystemDeviceTypeLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x45672eb9, 0x9059, 0x46a2, 0x83, 0x8d, 0x45, 0x30, 0x35, 0x5f, 0x6a, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIconMode(LANG_BAR_ITEM_ICON_MODE_FLAGS dwFlags) mut => VT.SetIconMode(ref this, dwFlags);
			public HRESULT GetIconMode(out uint32 pdwFlags) mut => VT.GetIconMode(ref this, out pdwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemDeviceTypeLangBarItem self, LANG_BAR_ITEM_ICON_MODE_FLAGS dwFlags) SetIconMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSystemDeviceTypeLangBarItem self, out uint32 pdwFlags) GetIconMode;
			}
		}
		[CRepr]
		public struct ITfLangBarItemButton : ITfLangBarItem
		{
			public const new Guid IID = .(0x28c7f1d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, in RECT prcArea) mut => VT.OnClick(ref this, click, pt, prcArea);
			public HRESULT InitMenu(ref ITfMenu pMenu) mut => VT.InitMenu(ref this, ref pMenu);
			public HRESULT OnMenuSelect(uint32 wID) mut => VT.OnMenuSelect(ref this, wID);
			public HRESULT GetIcon(out HICON phIcon) mut => VT.GetIcon(ref this, out phIcon);
			public HRESULT GetText(out BSTR pbstrText) mut => VT.GetText(ref this, out pbstrText);

			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemButton self, TfLBIClick click, POINT pt, in RECT prcArea) OnClick;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemButton self, ref ITfMenu pMenu) InitMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemButton self, uint32 wID) OnMenuSelect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemButton self, out HICON phIcon) GetIcon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemButton self, out BSTR pbstrText) GetText;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBitmapButton : ITfLangBarItem
		{
			public const new Guid IID = .(0xa26a0525, 0x3fae, 0x4fa0, 0x89, 0xee, 0x88, 0xa9, 0x64, 0xf9, 0xf1, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, in RECT prcArea) mut => VT.OnClick(ref this, click, pt, prcArea);
			public HRESULT InitMenu(ref ITfMenu pMenu) mut => VT.InitMenu(ref this, ref pMenu);
			public HRESULT OnMenuSelect(uint32 wID) mut => VT.OnMenuSelect(ref this, wID);
			public HRESULT GetPreferredSize(in SIZE pszDefault, out SIZE psz) mut => VT.GetPreferredSize(ref this, pszDefault, out psz);
			public HRESULT DrawBitmap(int32 bmWidth, int32 bmHeight, uint32 dwFlags, out HBITMAP phbmp, out HBITMAP phbmpMask) mut => VT.DrawBitmap(ref this, bmWidth, bmHeight, dwFlags, out phbmp, out phbmpMask);
			public HRESULT GetText(out BSTR pbstrText) mut => VT.GetText(ref this, out pbstrText);

			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, TfLBIClick click, POINT pt, in RECT prcArea) OnClick;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, ref ITfMenu pMenu) InitMenu;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, uint32 wID) OnMenuSelect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, in SIZE pszDefault, out SIZE psz) GetPreferredSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, out HBITMAP phbmp, out HBITMAP phbmpMask) DrawBitmap;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmapButton self, out BSTR pbstrText) GetText;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBitmap : ITfLangBarItem
		{
			public const new Guid IID = .(0x73830352, 0xd722, 0x4179, 0xad, 0xa5, 0xf0, 0x45, 0xc9, 0x8d, 0xf3, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, in RECT prcArea) mut => VT.OnClick(ref this, click, pt, prcArea);
			public HRESULT GetPreferredSize(in SIZE pszDefault, out SIZE psz) mut => VT.GetPreferredSize(ref this, pszDefault, out psz);
			public HRESULT DrawBitmap(int32 bmWidth, int32 bmHeight, uint32 dwFlags, out HBITMAP phbmp, out HBITMAP phbmpMask) mut => VT.DrawBitmap(ref this, bmWidth, bmHeight, dwFlags, out phbmp, out phbmpMask);

			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmap self, TfLBIClick click, POINT pt, in RECT prcArea) OnClick;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmap self, in SIZE pszDefault, out SIZE psz) GetPreferredSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBitmap self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, out HBITMAP phbmp, out HBITMAP phbmpMask) DrawBitmap;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBalloon : ITfLangBarItem
		{
			public const new Guid IID = .(0x01c2d285, 0xd3c7, 0x4b7b, 0xb5, 0xb5, 0xd9, 0x74, 0x11, 0xd0, 0xc2, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, in RECT prcArea) mut => VT.OnClick(ref this, click, pt, prcArea);
			public HRESULT GetPreferredSize(in SIZE pszDefault, out SIZE psz) mut => VT.GetPreferredSize(ref this, pszDefault, out psz);
			public HRESULT GetBalloonInfo(out TF_LBBALLOONINFO pInfo) mut => VT.GetBalloonInfo(ref this, out pInfo);

			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBalloon self, TfLBIClick click, POINT pt, in RECT prcArea) OnClick;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBalloon self, in SIZE pszDefault, out SIZE psz) GetPreferredSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLangBarItemBalloon self, out TF_LBBALLOONINFO pInfo) GetBalloonInfo;
			}
		}
		[CRepr]
		public struct ITfMenu : IUnknown
		{
			public const new Guid IID = .(0x6f8a98e4, 0xaaa0, 0x4f15, 0x8c, 0x5b, 0x07, 0xe0, 0xdf, 0x0a, 0x3d, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMenuItem(uint32 uId, uint32 dwFlags, HBITMAP hbmp, HBITMAP hbmpMask, char16* pch, uint32 cch, out ITfMenu* ppMenu) mut => VT.AddMenuItem(ref this, uId, dwFlags, hbmp, hbmpMask, pch, cch, out ppMenu);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMenu self, uint32 uId, uint32 dwFlags, HBITMAP hbmp, HBITMAP hbmpMask, char16* pch, uint32 cch, out ITfMenu* ppMenu) AddMenuItem;
			}
		}
		[CRepr]
		public struct ITfThreadMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e801, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(out uint32 ptid) mut => VT.Activate(ref this, out ptid);
			public HRESULT Deactivate() mut => VT.Deactivate(ref this);
			public HRESULT CreateDocumentMgr(out ITfDocumentMgr* ppdim) mut => VT.CreateDocumentMgr(ref this, out ppdim);
			public HRESULT EnumDocumentMgrs(out IEnumTfDocumentMgrs* ppEnum) mut => VT.EnumDocumentMgrs(ref this, out ppEnum);
			public HRESULT GetFocus(out ITfDocumentMgr* ppdimFocus) mut => VT.GetFocus(ref this, out ppdimFocus);
			public HRESULT SetFocus(ref ITfDocumentMgr pdimFocus) mut => VT.SetFocus(ref this, ref pdimFocus);
			public HRESULT AssociateFocus(HWND hwnd, ref ITfDocumentMgr pdimNew, out ITfDocumentMgr* ppdimPrev) mut => VT.AssociateFocus(ref this, hwnd, ref pdimNew, out ppdimPrev);
			public HRESULT IsThreadFocus(out BOOL pfThreadFocus) mut => VT.IsThreadFocus(ref this, out pfThreadFocus);
			public HRESULT GetFunctionProvider(in Guid clsid, out ITfFunctionProvider* ppFuncProv) mut => VT.GetFunctionProvider(ref this, clsid, out ppFuncProv);
			public HRESULT EnumFunctionProviders(out IEnumTfFunctionProviders* ppEnum) mut => VT.EnumFunctionProviders(ref this, out ppEnum);
			public HRESULT GetGlobalCompartment(out ITfCompartmentMgr* ppCompMgr) mut => VT.GetGlobalCompartment(ref this, out ppCompMgr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out uint32 ptid) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self) Deactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out ITfDocumentMgr* ppdim) CreateDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out IEnumTfDocumentMgrs* ppEnum) EnumDocumentMgrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out ITfDocumentMgr* ppdimFocus) GetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, ref ITfDocumentMgr pdimFocus) SetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, HWND hwnd, ref ITfDocumentMgr pdimNew, out ITfDocumentMgr* ppdimPrev) AssociateFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out BOOL pfThreadFocus) IsThreadFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, in Guid clsid, out ITfFunctionProvider* ppFuncProv) GetFunctionProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out IEnumTfFunctionProviders* ppEnum) EnumFunctionProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr self, out ITfCompartmentMgr* ppCompMgr) GetGlobalCompartment;
			}
		}
		[CRepr]
		public struct ITfThreadMgrEx : ITfThreadMgr
		{
			public const new Guid IID = .(0x3e90ade3, 0x7594, 0x4cb0, 0xbb, 0x58, 0x69, 0x62, 0x8f, 0x5f, 0x45, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateEx(out uint32 ptid, uint32 dwFlags) mut => VT.ActivateEx(ref this, out ptid, dwFlags);
			public HRESULT GetActiveFlags(out uint32 lpdwFlags) mut => VT.GetActiveFlags(ref this, out lpdwFlags);

			[CRepr]
			public struct VTable : ITfThreadMgr.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEx self, out uint32 ptid, uint32 dwFlags) ActivateEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEx self, out uint32 lpdwFlags) GetActiveFlags;
			}
		}
		[CRepr]
		public struct ITfThreadMgr2 : IUnknown
		{
			public const new Guid IID = .(0x0ab198ef, 0x6477, 0x4ee8, 0x88, 0x12, 0x67, 0x80, 0xed, 0xb8, 0x2d, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(out uint32 ptid) mut => VT.Activate(ref this, out ptid);
			public HRESULT Deactivate() mut => VT.Deactivate(ref this);
			public HRESULT CreateDocumentMgr(out ITfDocumentMgr* ppdim) mut => VT.CreateDocumentMgr(ref this, out ppdim);
			public HRESULT EnumDocumentMgrs(out IEnumTfDocumentMgrs* ppEnum) mut => VT.EnumDocumentMgrs(ref this, out ppEnum);
			public HRESULT GetFocus(out ITfDocumentMgr* ppdimFocus) mut => VT.GetFocus(ref this, out ppdimFocus);
			public HRESULT SetFocus(ref ITfDocumentMgr pdimFocus) mut => VT.SetFocus(ref this, ref pdimFocus);
			public HRESULT IsThreadFocus(out BOOL pfThreadFocus) mut => VT.IsThreadFocus(ref this, out pfThreadFocus);
			public HRESULT GetFunctionProvider(in Guid clsid, out ITfFunctionProvider* ppFuncProv) mut => VT.GetFunctionProvider(ref this, clsid, out ppFuncProv);
			public HRESULT EnumFunctionProviders(out IEnumTfFunctionProviders* ppEnum) mut => VT.EnumFunctionProviders(ref this, out ppEnum);
			public HRESULT GetGlobalCompartment(out ITfCompartmentMgr* ppCompMgr) mut => VT.GetGlobalCompartment(ref this, out ppCompMgr);
			public HRESULT ActivateEx(out uint32 ptid, uint32 dwFlags) mut => VT.ActivateEx(ref this, out ptid, dwFlags);
			public HRESULT GetActiveFlags(out uint32 lpdwFlags) mut => VT.GetActiveFlags(ref this, out lpdwFlags);
			public HRESULT SuspendKeystrokeHandling() mut => VT.SuspendKeystrokeHandling(ref this);
			public HRESULT ResumeKeystrokeHandling() mut => VT.ResumeKeystrokeHandling(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out uint32 ptid) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self) Deactivate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out ITfDocumentMgr* ppdim) CreateDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out IEnumTfDocumentMgrs* ppEnum) EnumDocumentMgrs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out ITfDocumentMgr* ppdimFocus) GetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, ref ITfDocumentMgr pdimFocus) SetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out BOOL pfThreadFocus) IsThreadFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, in Guid clsid, out ITfFunctionProvider* ppFuncProv) GetFunctionProvider;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out IEnumTfFunctionProviders* ppEnum) EnumFunctionProviders;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out ITfCompartmentMgr* ppCompMgr) GetGlobalCompartment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out uint32 ptid, uint32 dwFlags) ActivateEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self, out uint32 lpdwFlags) GetActiveFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self) SuspendKeystrokeHandling;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgr2 self) ResumeKeystrokeHandling;
			}
		}
		[CRepr]
		public struct ITfThreadMgrEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e80e, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInitDocumentMgr(ref ITfDocumentMgr pdim) mut => VT.OnInitDocumentMgr(ref this, ref pdim);
			public HRESULT OnUninitDocumentMgr(ref ITfDocumentMgr pdim) mut => VT.OnUninitDocumentMgr(ref this, ref pdim);
			public HRESULT OnSetFocus(ref ITfDocumentMgr pdimFocus, ref ITfDocumentMgr pdimPrevFocus) mut => VT.OnSetFocus(ref this, ref pdimFocus, ref pdimPrevFocus);
			public HRESULT OnPushContext(ref ITfContext pic) mut => VT.OnPushContext(ref this, ref pic);
			public HRESULT OnPopContext(ref ITfContext pic) mut => VT.OnPopContext(ref this, ref pic);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEventSink self, ref ITfDocumentMgr pdim) OnInitDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEventSink self, ref ITfDocumentMgr pdim) OnUninitDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEventSink self, ref ITfDocumentMgr pdimFocus, ref ITfDocumentMgr pdimPrevFocus) OnSetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEventSink self, ref ITfContext pic) OnPushContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadMgrEventSink self, ref ITfContext pic) OnPopContext;
			}
		}
		[CRepr]
		public struct ITfConfigureSystemKeystrokeFeed : IUnknown
		{
			public const new Guid IID = .(0x0d2c969a, 0xbc9c, 0x437c, 0x84, 0xee, 0x95, 0x1c, 0x49, 0xb1, 0xa7, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisableSystemKeystrokeFeed() mut => VT.DisableSystemKeystrokeFeed(ref this);
			public HRESULT EnableSystemKeystrokeFeed() mut => VT.EnableSystemKeystrokeFeed(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfConfigureSystemKeystrokeFeed self) DisableSystemKeystrokeFeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfConfigureSystemKeystrokeFeed self) EnableSystemKeystrokeFeed;
			}
		}
		[CRepr]
		public struct IEnumTfDocumentMgrs : IUnknown
		{
			public const new Guid IID = .(0xaa80e808, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfDocumentMgrs* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfDocumentMgr** rgDocumentMgr, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgDocumentMgr, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDocumentMgrs self, out IEnumTfDocumentMgrs* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDocumentMgrs self, uint32 ulCount, ITfDocumentMgr** rgDocumentMgr, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDocumentMgrs self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDocumentMgrs self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfDocumentMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f4, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContext(uint32 tidOwner, uint32 dwFlags, ref IUnknown punk, out ITfContext* ppic, out uint32 pecTextStore) mut => VT.CreateContext(ref this, tidOwner, dwFlags, ref punk, out ppic, out pecTextStore);
			public HRESULT Push(ref ITfContext pic) mut => VT.Push(ref this, ref pic);
			public HRESULT Pop(uint32 dwFlags) mut => VT.Pop(ref this, dwFlags);
			public HRESULT GetTop(out ITfContext* ppic) mut => VT.GetTop(ref this, out ppic);
			public HRESULT GetBase(out ITfContext* ppic) mut => VT.GetBase(ref this, out ppic);
			public HRESULT EnumContexts(out IEnumTfContexts* ppEnum) mut => VT.EnumContexts(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, uint32 tidOwner, uint32 dwFlags, ref IUnknown punk, out ITfContext* ppic, out uint32 pecTextStore) CreateContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, ref ITfContext pic) Push;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, uint32 dwFlags) Pop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, out ITfContext* ppic) GetTop;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, out ITfContext* ppic) GetBase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDocumentMgr self, out IEnumTfContexts* ppEnum) EnumContexts;
			}
		}
		[CRepr]
		public struct IEnumTfContexts : IUnknown
		{
			public const new Guid IID = .(0x8f1a7ea6, 0x1654, 0x4502, 0xa8, 0x6e, 0xb2, 0x90, 0x23, 0x44, 0xd5, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfContexts* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfContext** rgContext, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgContext, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContexts self, out IEnumTfContexts* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContexts self, uint32 ulCount, ITfContext** rgContext, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContexts self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContexts self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0xd7540241, 0xf9a1, 0x4364, 0xbe, 0xfc, 0xdb, 0xcd, 0x2c, 0x43, 0x95, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerClsid(out Guid pclsid) mut => VT.GetOwnerClsid(ref this, out pclsid);
			public HRESULT GetRange(out ITfRange* ppRange) mut => VT.GetRange(ref this, out ppRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompositionView self, out Guid pclsid) GetOwnerClsid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompositionView self, out ITfRange* ppRange) GetRange;
			}
		}
		[CRepr]
		public struct IEnumITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0x5efd22ba, 0x7838, 0x46cb, 0x88, 0xe2, 0xca, 0xdb, 0x14, 0x12, 0x4f, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumITfCompositionView* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfCompositionView** rgCompositionView, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgCompositionView, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumITfCompositionView self, out IEnumITfCompositionView* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumITfCompositionView self, uint32 ulCount, ITfCompositionView** rgCompositionView, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumITfCompositionView self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumITfCompositionView self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfComposition : IUnknown
		{
			public const new Guid IID = .(0x20168d64, 0x5a8f, 0x4a5a, 0xb7, 0xbd, 0xcf, 0xa2, 0x9f, 0x4d, 0x0f, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRange(out ITfRange* ppRange) mut => VT.GetRange(ref this, out ppRange);
			public HRESULT ShiftStart(uint32 ecWrite, ref ITfRange pNewStart) mut => VT.ShiftStart(ref this, ecWrite, ref pNewStart);
			public HRESULT ShiftEnd(uint32 ecWrite, ref ITfRange pNewEnd) mut => VT.ShiftEnd(ref this, ecWrite, ref pNewEnd);
			public HRESULT EndComposition(uint32 ecWrite) mut => VT.EndComposition(ref this, ecWrite);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfComposition self, out ITfRange* ppRange) GetRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfComposition self, uint32 ecWrite, ref ITfRange pNewStart) ShiftStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfComposition self, uint32 ecWrite, ref ITfRange pNewEnd) ShiftEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfComposition self, uint32 ecWrite) EndComposition;
			}
		}
		[CRepr]
		public struct ITfCompositionSink : IUnknown
		{
			public const new Guid IID = .(0xa781718c, 0x579a, 0x4b15, 0xa2, 0x80, 0x32, 0xb8, 0x57, 0x7a, 0xcc, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCompositionTerminated(uint32 ecWrite, ref ITfComposition pComposition) mut => VT.OnCompositionTerminated(ref this, ecWrite, ref pComposition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompositionSink self, uint32 ecWrite, ref ITfComposition pComposition) OnCompositionTerminated;
			}
		}
		[CRepr]
		public struct ITfContextComposition : IUnknown
		{
			public const new Guid IID = .(0xd40c8aae, 0xac92, 0x4fc7, 0x9a, 0x11, 0x0e, 0xe0, 0xe2, 0x3a, 0xa3, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartComposition(uint32 ecWrite, ref ITfRange pCompositionRange, ref ITfCompositionSink pSink, out ITfComposition* ppComposition) mut => VT.StartComposition(ref this, ecWrite, ref pCompositionRange, ref pSink, out ppComposition);
			public HRESULT EnumCompositions(out IEnumITfCompositionView* ppEnum) mut => VT.EnumCompositions(ref this, out ppEnum);
			public HRESULT FindComposition(uint32 ecRead, ref ITfRange pTestRange, out IEnumITfCompositionView* ppEnum) mut => VT.FindComposition(ref this, ecRead, ref pTestRange, out ppEnum);
			public HRESULT TakeOwnership(uint32 ecWrite, ref ITfCompositionView pComposition, ref ITfCompositionSink pSink, out ITfComposition* ppComposition) mut => VT.TakeOwnership(ref this, ecWrite, ref pComposition, ref pSink, out ppComposition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextComposition self, uint32 ecWrite, ref ITfRange pCompositionRange, ref ITfCompositionSink pSink, out ITfComposition* ppComposition) StartComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextComposition self, out IEnumITfCompositionView* ppEnum) EnumCompositions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextComposition self, uint32 ecRead, ref ITfRange pTestRange, out IEnumITfCompositionView* ppEnum) FindComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextComposition self, uint32 ecWrite, ref ITfCompositionView pComposition, ref ITfCompositionSink pSink, out ITfComposition* ppComposition) TakeOwnership;
			}
		}
		[CRepr]
		public struct ITfContextOwnerCompositionServices : ITfContextComposition
		{
			public const new Guid IID = .(0x86462810, 0x593b, 0x4916, 0x97, 0x64, 0x19, 0xc0, 0x8e, 0x9c, 0xe1, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TerminateComposition(ref ITfCompositionView pComposition) mut => VT.TerminateComposition(ref this, ref pComposition);

			[CRepr]
			public struct VTable : ITfContextComposition.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerCompositionServices self, ref ITfCompositionView pComposition) TerminateComposition;
			}
		}
		[CRepr]
		public struct ITfContextOwnerCompositionSink : IUnknown
		{
			public const new Guid IID = .(0x5f20aa40, 0xb57a, 0x4f34, 0x96, 0xab, 0x35, 0x76, 0xf3, 0x77, 0xcc, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartComposition(ref ITfCompositionView pComposition, out BOOL pfOk) mut => VT.OnStartComposition(ref this, ref pComposition, out pfOk);
			public HRESULT OnUpdateComposition(ref ITfCompositionView pComposition, ref ITfRange pRangeNew) mut => VT.OnUpdateComposition(ref this, ref pComposition, ref pRangeNew);
			public HRESULT OnEndComposition(ref ITfCompositionView pComposition) mut => VT.OnEndComposition(ref this, ref pComposition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerCompositionSink self, ref ITfCompositionView pComposition, out BOOL pfOk) OnStartComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerCompositionSink self, ref ITfCompositionView pComposition, ref ITfRange pRangeNew) OnUpdateComposition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerCompositionSink self, ref ITfCompositionView pComposition) OnEndComposition;
			}
		}
		[CRepr]
		public struct ITfContextView : IUnknown
		{
			public const new Guid IID = .(0x2433bf8e, 0x0f9b, 0x435c, 0xba, 0x2c, 0x18, 0x06, 0x11, 0x97, 0x8c, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRangeFromPoint(uint32 ec, in POINT ppt, uint32 dwFlags, out ITfRange* ppRange) mut => VT.GetRangeFromPoint(ref this, ec, ppt, dwFlags, out ppRange);
			public HRESULT GetTextExt(uint32 ec, ref ITfRange pRange, out RECT prc, out BOOL pfClipped) mut => VT.GetTextExt(ref this, ec, ref pRange, out prc, out pfClipped);
			public HRESULT GetScreenExt(out RECT prc) mut => VT.GetScreenExt(ref this, out prc);
			public HRESULT GetWnd(out HWND phwnd) mut => VT.GetWnd(ref this, out phwnd);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextView self, uint32 ec, in POINT ppt, uint32 dwFlags, out ITfRange* ppRange) GetRangeFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextView self, uint32 ec, ref ITfRange pRange, out RECT prc, out BOOL pfClipped) GetTextExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextView self, out RECT prc) GetScreenExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextView self, out HWND phwnd) GetWnd;
			}
		}
		[CRepr]
		public struct IEnumTfContextViews : IUnknown
		{
			public const new Guid IID = .(0xf0c0f8dd, 0xcf38, 0x44e1, 0xbb, 0x0f, 0x68, 0xcf, 0x0d, 0x55, 0x1c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfContextViews* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfContextView** rgViews, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgViews, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContextViews self, out IEnumTfContextViews* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContextViews self, uint32 ulCount, ITfContextView** rgViews, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContextViews self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfContextViews self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfContext : IUnknown
		{
			public const new Guid IID = .(0xaa80e7fd, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestEditSession(uint32 tid, ref ITfEditSession pes, TF_CONTEXT_EDIT_CONTEXT_FLAGS dwFlags, out HRESULT phrSession) mut => VT.RequestEditSession(ref this, tid, ref pes, dwFlags, out phrSession);
			public HRESULT InWriteSession(uint32 tid, out BOOL pfWriteSession) mut => VT.InWriteSession(ref this, tid, out pfWriteSession);
			public HRESULT GetSelection(uint32 ec, uint32 ulIndex, uint32 ulCount, TF_SELECTION* pSelection, out uint32 pcFetched) mut => VT.GetSelection(ref this, ec, ulIndex, ulCount, pSelection, out pcFetched);
			public HRESULT SetSelection(uint32 ec, uint32 ulCount, TF_SELECTION* pSelection) mut => VT.SetSelection(ref this, ec, ulCount, pSelection);
			public HRESULT GetStart(uint32 ec, out ITfRange* ppStart) mut => VT.GetStart(ref this, ec, out ppStart);
			public HRESULT GetEnd(uint32 ec, out ITfRange* ppEnd) mut => VT.GetEnd(ref this, ec, out ppEnd);
			public HRESULT GetActiveView(out ITfContextView* ppView) mut => VT.GetActiveView(ref this, out ppView);
			public HRESULT EnumViews(out IEnumTfContextViews* ppEnum) mut => VT.EnumViews(ref this, out ppEnum);
			public HRESULT GetStatus(out TS_STATUS pdcs) mut => VT.GetStatus(ref this, out pdcs);
			public HRESULT GetProperty(in Guid guidProp, out ITfProperty* ppProp) mut => VT.GetProperty(ref this, guidProp, out ppProp);
			public HRESULT GetAppProperty(in Guid guidProp, out ITfReadOnlyProperty* ppProp) mut => VT.GetAppProperty(ref this, guidProp, out ppProp);
			public HRESULT TrackProperties(Guid** prgProp, uint32 cProp, Guid** prgAppProp, uint32 cAppProp, out ITfReadOnlyProperty* ppProperty) mut => VT.TrackProperties(ref this, prgProp, cProp, prgAppProp, cAppProp, out ppProperty);
			public HRESULT EnumProperties(out IEnumTfProperties* ppEnum) mut => VT.EnumProperties(ref this, out ppEnum);
			public HRESULT GetDocumentMgr(out ITfDocumentMgr* ppDm) mut => VT.GetDocumentMgr(ref this, out ppDm);
			public HRESULT CreateRangeBackup(uint32 ec, ref ITfRange pRange, out ITfRangeBackup* ppBackup) mut => VT.CreateRangeBackup(ref this, ec, ref pRange, out ppBackup);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 tid, ref ITfEditSession pes, TF_CONTEXT_EDIT_CONTEXT_FLAGS dwFlags, out HRESULT phrSession) RequestEditSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 tid, out BOOL pfWriteSession) InWriteSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 ec, uint32 ulIndex, uint32 ulCount, TF_SELECTION* pSelection, out uint32 pcFetched) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 ec, uint32 ulCount, TF_SELECTION* pSelection) SetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 ec, out ITfRange* ppStart) GetStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 ec, out ITfRange* ppEnd) GetEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, out ITfContextView* ppView) GetActiveView;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, out IEnumTfContextViews* ppEnum) EnumViews;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, out TS_STATUS pdcs) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, in Guid guidProp, out ITfProperty* ppProp) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, in Guid guidProp, out ITfReadOnlyProperty* ppProp) GetAppProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, Guid** prgProp, uint32 cProp, Guid** prgAppProp, uint32 cAppProp, out ITfReadOnlyProperty* ppProperty) TrackProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, out IEnumTfProperties* ppEnum) EnumProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, out ITfDocumentMgr* ppDm) GetDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContext self, uint32 ec, ref ITfRange pRange, out ITfRangeBackup* ppBackup) CreateRangeBackup;
			}
		}
		[CRepr]
		public struct ITfQueryEmbedded : IUnknown
		{
			public const new Guid IID = .(0x0fab9bdb, 0xd250, 0x4169, 0x84, 0xe5, 0x6b, 0xe1, 0x18, 0xfd, 0xd7, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInsertEmbedded(in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) mut => VT.QueryInsertEmbedded(ref this, pguidService, pFormatEtc, out pfInsertable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfQueryEmbedded self, in Guid pguidService, in FORMATETC pFormatEtc, out BOOL pfInsertable) QueryInsertEmbedded;
			}
		}
		[CRepr]
		public struct ITfInsertAtSelection : IUnknown
		{
			public const new Guid IID = .(0x55ce16ba, 0x3014, 0x41c1, 0x9c, 0xeb, 0xfa, 0xde, 0x14, 0x46, 0xac, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertTextAtSelection(uint32 ec, INSERT_TEXT_AT_SELECTION_FLAGS dwFlags, char16* pchText, int32 cch, out ITfRange* ppRange) mut => VT.InsertTextAtSelection(ref this, ec, dwFlags, pchText, cch, out ppRange);
			public HRESULT InsertEmbeddedAtSelection(uint32 ec, uint32 dwFlags, ref IDataObject pDataObject, out ITfRange* ppRange) mut => VT.InsertEmbeddedAtSelection(ref this, ec, dwFlags, ref pDataObject, out ppRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInsertAtSelection self, uint32 ec, INSERT_TEXT_AT_SELECTION_FLAGS dwFlags, char16* pchText, int32 cch, out ITfRange* ppRange) InsertTextAtSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInsertAtSelection self, uint32 ec, uint32 dwFlags, ref IDataObject pDataObject, out ITfRange* ppRange) InsertEmbeddedAtSelection;
			}
		}
		[CRepr]
		public struct ITfCleanupContextSink : IUnknown
		{
			public const new Guid IID = .(0x01689689, 0x7acb, 0x4e9b, 0xab, 0x7c, 0x7e, 0xa4, 0x6b, 0x12, 0xb5, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCleanupContext(uint32 ecWrite, ref ITfContext pic) mut => VT.OnCleanupContext(ref this, ecWrite, ref pic);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCleanupContextSink self, uint32 ecWrite, ref ITfContext pic) OnCleanupContext;
			}
		}
		[CRepr]
		public struct ITfCleanupContextDurationSink : IUnknown
		{
			public const new Guid IID = .(0x45c35144, 0x154e, 0x4797, 0xbe, 0xd8, 0xd3, 0x3a, 0xe7, 0xbf, 0x87, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartCleanupContext() mut => VT.OnStartCleanupContext(ref this);
			public HRESULT OnEndCleanupContext() mut => VT.OnEndCleanupContext(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCleanupContextDurationSink self) OnStartCleanupContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCleanupContextDurationSink self) OnEndCleanupContext;
			}
		}
		[CRepr]
		public struct ITfReadOnlyProperty : IUnknown
		{
			public const new Guid IID = .(0x17d49a3d, 0xf8b8, 0x4b2f, 0xb2, 0x54, 0x52, 0x31, 0x9d, 0xd6, 0x4c, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguid) mut => VT.ComGetType(ref this, out pguid);
			public HRESULT EnumRanges(uint32 ec, out IEnumTfRanges* ppEnum, ref ITfRange pTargetRange) mut => VT.EnumRanges(ref this, ec, out ppEnum, ref pTargetRange);
			public HRESULT GetValue(uint32 ec, ref ITfRange pRange, out VARIANT pvarValue) mut => VT.GetValue(ref this, ec, ref pRange, out pvarValue);
			public HRESULT GetContext(out ITfContext* ppContext) mut => VT.GetContext(ref this, out ppContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadOnlyProperty self, out Guid pguid) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadOnlyProperty self, uint32 ec, out IEnumTfRanges* ppEnum, ref ITfRange pTargetRange) EnumRanges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadOnlyProperty self, uint32 ec, ref ITfRange pRange, out VARIANT pvarValue) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadOnlyProperty self, out ITfContext* ppContext) GetContext;
			}
		}
		[CRepr]
		public struct IEnumTfPropertyValue : IUnknown
		{
			public const new Guid IID = .(0x8ed8981b, 0x7c10, 0x4d7d, 0x9f, 0xb3, 0xab, 0x72, 0xe9, 0xc7, 0x5f, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfPropertyValue* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, TF_PROPERTYVAL* rgValues, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgValues, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfPropertyValue self, out IEnumTfPropertyValue* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfPropertyValue self, uint32 ulCount, TF_PROPERTYVAL* rgValues, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfPropertyValue self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfPropertyValue self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfMouseTracker : IUnknown
		{
			public const new Guid IID = .(0x09d146cd, 0xa544, 0x4132, 0x92, 0x5b, 0x7a, 0xfa, 0x8e, 0xf3, 0x22, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseMouseSink(ref ITfRange range, ref ITfMouseSink pSink, out uint32 pdwCookie) mut => VT.AdviseMouseSink(ref this, ref range, ref pSink, out pdwCookie);
			public HRESULT UnadviseMouseSink(uint32 dwCookie) mut => VT.UnadviseMouseSink(ref this, dwCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMouseTracker self, ref ITfRange range, ref ITfMouseSink pSink, out uint32 pdwCookie) AdviseMouseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMouseTracker self, uint32 dwCookie) UnadviseMouseSink;
			}
		}
		[CRepr]
		public struct ITfMouseTrackerACP : IUnknown
		{
			public const new Guid IID = .(0x3bdd78e2, 0xc16e, 0x47fd, 0xb8, 0x83, 0xce, 0x6f, 0xac, 0xc1, 0xa2, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseMouseSink(ref ITfRangeACP range, ref ITfMouseSink pSink, out uint32 pdwCookie) mut => VT.AdviseMouseSink(ref this, ref range, ref pSink, out pdwCookie);
			public HRESULT UnadviseMouseSink(uint32 dwCookie) mut => VT.UnadviseMouseSink(ref this, dwCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMouseTrackerACP self, ref ITfRangeACP range, ref ITfMouseSink pSink, out uint32 pdwCookie) AdviseMouseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMouseTrackerACP self, uint32 dwCookie) UnadviseMouseSink;
			}
		}
		[CRepr]
		public struct ITfMouseSink : IUnknown
		{
			public const new Guid IID = .(0xa1adaaa2, 0x3a24, 0x449d, 0xac, 0x96, 0x51, 0x83, 0xe7, 0xf5, 0xc2, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnMouseEvent(uint32 uEdge, uint32 uQuadrant, uint32 dwBtnStatus, out BOOL pfEaten) mut => VT.OnMouseEvent(ref this, uEdge, uQuadrant, dwBtnStatus, out pfEaten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMouseSink self, uint32 uEdge, uint32 uQuadrant, uint32 dwBtnStatus, out BOOL pfEaten) OnMouseEvent;
			}
		}
		[CRepr]
		public struct ITfEditRecord : IUnknown
		{
			public const new Guid IID = .(0x42d4d099, 0x7c1a, 0x4a89, 0xb8, 0x36, 0x6c, 0x6f, 0x22, 0x16, 0x0d, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelectionStatus(out BOOL pfChanged) mut => VT.GetSelectionStatus(ref this, out pfChanged);
			public HRESULT GetTextAndPropertyUpdates(GET_TEXT_AND_PROPERTY_UPDATES_FLAGS dwFlags, Guid** prgProperties, uint32 cProperties, out IEnumTfRanges* ppEnum) mut => VT.GetTextAndPropertyUpdates(ref this, dwFlags, prgProperties, cProperties, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfEditRecord self, out BOOL pfChanged) GetSelectionStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfEditRecord self, GET_TEXT_AND_PROPERTY_UPDATES_FLAGS dwFlags, Guid** prgProperties, uint32 cProperties, out IEnumTfRanges* ppEnum) GetTextAndPropertyUpdates;
			}
		}
		[CRepr]
		public struct ITfTextEditSink : IUnknown
		{
			public const new Guid IID = .(0x8127d409, 0xccd3, 0x4683, 0x96, 0x7a, 0xb4, 0x3d, 0x5b, 0x48, 0x2b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEndEdit(ref ITfContext pic, uint32 ecReadOnly, ref ITfEditRecord pEditRecord) mut => VT.OnEndEdit(ref this, ref pic, ecReadOnly, ref pEditRecord);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTextEditSink self, ref ITfContext pic, uint32 ecReadOnly, ref ITfEditRecord pEditRecord) OnEndEdit;
			}
		}
		[CRepr]
		public struct ITfTextLayoutSink : IUnknown
		{
			public const new Guid IID = .(0x2af2d06a, 0xdd5b, 0x4927, 0xa0, 0xb4, 0x54, 0xf1, 0x9c, 0x91, 0xfa, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLayoutChange(ref ITfContext pic, TfLayoutCode lcode, ref ITfContextView pView) mut => VT.OnLayoutChange(ref this, ref pic, lcode, ref pView);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTextLayoutSink self, ref ITfContext pic, TfLayoutCode lcode, ref ITfContextView pView) OnLayoutChange;
			}
		}
		[CRepr]
		public struct ITfStatusSink : IUnknown
		{
			public const new Guid IID = .(0x6b7d8d73, 0xb267, 0x4f69, 0xb3, 0x2e, 0x1c, 0xa3, 0x21, 0xce, 0x4f, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatusChange(ref ITfContext pic, uint32 dwFlags) mut => VT.OnStatusChange(ref this, ref pic, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfStatusSink self, ref ITfContext pic, uint32 dwFlags) OnStatusChange;
			}
		}
		[CRepr]
		public struct ITfEditTransactionSink : IUnknown
		{
			public const new Guid IID = .(0x708fbf70, 0xb520, 0x416b, 0xb0, 0x6c, 0x2c, 0x41, 0xab, 0x44, 0xf8, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartEditTransaction(ref ITfContext pic) mut => VT.OnStartEditTransaction(ref this, ref pic);
			public HRESULT OnEndEditTransaction(ref ITfContext pic) mut => VT.OnEndEditTransaction(ref this, ref pic);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfEditTransactionSink self, ref ITfContext pic) OnStartEditTransaction;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfEditTransactionSink self, ref ITfContext pic) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct ITfContextOwner : IUnknown
		{
			public const new Guid IID = .(0xaa80e80c, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetACPFromPoint(in POINT ptScreen, uint32 dwFlags, out int32 pacp) mut => VT.GetACPFromPoint(ref this, ptScreen, dwFlags, out pacp);
			public HRESULT GetTextExt(int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) mut => VT.GetTextExt(ref this, acpStart, acpEnd, out prc, out pfClipped);
			public HRESULT GetScreenExt(out RECT prc) mut => VT.GetScreenExt(ref this, out prc);
			public HRESULT GetStatus(out TS_STATUS pdcs) mut => VT.GetStatus(ref this, out pdcs);
			public HRESULT GetWnd(out HWND phwnd) mut => VT.GetWnd(ref this, out phwnd);
			public HRESULT GetAttribute(in Guid rguidAttribute, out VARIANT pvarValue) mut => VT.GetAttribute(ref this, rguidAttribute, out pvarValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, in POINT ptScreen, uint32 dwFlags, out int32 pacp) GetACPFromPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, int32 acpStart, int32 acpEnd, out RECT prc, out BOOL pfClipped) GetTextExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, out RECT prc) GetScreenExt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, out TS_STATUS pdcs) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, out HWND phwnd) GetWnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwner self, in Guid rguidAttribute, out VARIANT pvarValue) GetAttribute;
			}
		}
		[CRepr]
		public struct ITfContextOwnerServices : IUnknown
		{
			public const new Guid IID = .(0xb23eb630, 0x3e1c, 0x11d3, 0xa7, 0x45, 0x00, 0x50, 0x04, 0x0a, 0xb4, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLayoutChange() mut => VT.OnLayoutChange(ref this);
			public HRESULT OnStatusChange(uint32 dwFlags) mut => VT.OnStatusChange(ref this, dwFlags);
			public HRESULT OnAttributeChange(in Guid rguidAttribute) mut => VT.OnAttributeChange(ref this, rguidAttribute);
			public HRESULT Serialize(ref ITfProperty pProp, ref ITfRange pRange, out TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream) mut => VT.Serialize(ref this, ref pProp, ref pRange, out pHdr, ref pStream);
			public HRESULT Unserialize(ref ITfProperty pProp, in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream, ref ITfPersistentPropertyLoaderACP pLoader) mut => VT.Unserialize(ref this, ref pProp, pHdr, ref pStream, ref pLoader);
			public HRESULT ForceLoadProperty(ref ITfProperty pProp) mut => VT.ForceLoadProperty(ref this, ref pProp);
			public HRESULT CreateRange(int32 acpStart, int32 acpEnd, out ITfRangeACP* ppRange) mut => VT.CreateRange(ref this, acpStart, acpEnd, out ppRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self) OnLayoutChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, uint32 dwFlags) OnStatusChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, in Guid rguidAttribute) OnAttributeChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, ref ITfProperty pProp, ref ITfRange pRange, out TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream) Serialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, ref ITfProperty pProp, in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream, ref ITfPersistentPropertyLoaderACP pLoader) Unserialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, ref ITfProperty pProp) ForceLoadProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextOwnerServices self, int32 acpStart, int32 acpEnd, out ITfRangeACP* ppRange) CreateRange;
			}
		}
		[CRepr]
		public struct ITfContextKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0x0552ba5d, 0xc835, 0x4934, 0xbf, 0x50, 0x84, 0x6a, 0xaa, 0x67, 0x43, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnKeyDown(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnKeyDown(ref this, wParam, lParam, out pfEaten);
			public HRESULT OnKeyUp(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnKeyUp(ref this, wParam, lParam, out pfEaten);
			public HRESULT OnTestKeyDown(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnTestKeyDown(ref this, wParam, lParam, out pfEaten);
			public HRESULT OnTestKeyUp(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnTestKeyUp(ref this, wParam, lParam, out pfEaten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextKeyEventSink self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextKeyEventSink self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnKeyUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextKeyEventSink self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnTestKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfContextKeyEventSink self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnTestKeyUp;
			}
		}
		[CRepr]
		public struct ITfEditSession : IUnknown
		{
			public const new Guid IID = .(0xaa80e803, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoEditSession(uint32 ec) mut => VT.DoEditSession(ref this, ec);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfEditSession self, uint32 ec) DoEditSession;
			}
		}
		[CRepr]
		public struct ITfRange : IUnknown
		{
			public const new Guid IID = .(0xaa80e7ff, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(uint32 ec, uint32 dwFlags, char16* pchText, uint32 cchMax, out uint32 pcch) mut => VT.GetText(ref this, ec, dwFlags, pchText, cchMax, out pcch);
			public HRESULT SetText(uint32 ec, uint32 dwFlags, char16* pchText, int32 cch) mut => VT.SetText(ref this, ec, dwFlags, pchText, cch);
			public HRESULT GetFormattedText(uint32 ec, out IDataObject* ppDataObject) mut => VT.GetFormattedText(ref this, ec, out ppDataObject);
			public HRESULT GetEmbedded(uint32 ec, in Guid rguidService, in Guid riid, out IUnknown* ppunk) mut => VT.GetEmbedded(ref this, ec, rguidService, riid, out ppunk);
			public HRESULT InsertEmbedded(uint32 ec, uint32 dwFlags, ref IDataObject pDataObject) mut => VT.InsertEmbedded(ref this, ec, dwFlags, ref pDataObject);
			public HRESULT ShiftStart(uint32 ec, int32 cchReq, out int32 pcch, in TF_HALTCOND pHalt) mut => VT.ShiftStart(ref this, ec, cchReq, out pcch, pHalt);
			public HRESULT ShiftEnd(uint32 ec, int32 cchReq, out int32 pcch, in TF_HALTCOND pHalt) mut => VT.ShiftEnd(ref this, ec, cchReq, out pcch, pHalt);
			public HRESULT ShiftStartToRange(uint32 ec, ref ITfRange pRange, TfAnchor aPos) mut => VT.ShiftStartToRange(ref this, ec, ref pRange, aPos);
			public HRESULT ShiftEndToRange(uint32 ec, ref ITfRange pRange, TfAnchor aPos) mut => VT.ShiftEndToRange(ref this, ec, ref pRange, aPos);
			public HRESULT ShiftStartRegion(uint32 ec, TfShiftDir dir, out BOOL pfNoRegion) mut => VT.ShiftStartRegion(ref this, ec, dir, out pfNoRegion);
			public HRESULT ShiftEndRegion(uint32 ec, TfShiftDir dir, out BOOL pfNoRegion) mut => VT.ShiftEndRegion(ref this, ec, dir, out pfNoRegion);
			public HRESULT IsEmpty(uint32 ec, out BOOL pfEmpty) mut => VT.IsEmpty(ref this, ec, out pfEmpty);
			public HRESULT Collapse(uint32 ec, TfAnchor aPos) mut => VT.Collapse(ref this, ec, aPos);
			public HRESULT IsEqualStart(uint32 ec, ref ITfRange pWith, TfAnchor aPos, out BOOL pfEqual) mut => VT.IsEqualStart(ref this, ec, ref pWith, aPos, out pfEqual);
			public HRESULT IsEqualEnd(uint32 ec, ref ITfRange pWith, TfAnchor aPos, out BOOL pfEqual) mut => VT.IsEqualEnd(ref this, ec, ref pWith, aPos, out pfEqual);
			public HRESULT CompareStart(uint32 ec, ref ITfRange pWith, TfAnchor aPos, out int32 plResult) mut => VT.CompareStart(ref this, ec, ref pWith, aPos, out plResult);
			public HRESULT CompareEnd(uint32 ec, ref ITfRange pWith, TfAnchor aPos, out int32 plResult) mut => VT.CompareEnd(ref this, ec, ref pWith, aPos, out plResult);
			public HRESULT AdjustForInsert(uint32 ec, uint32 cchInsert, out BOOL pfInsertOk) mut => VT.AdjustForInsert(ref this, ec, cchInsert, out pfInsertOk);
			public HRESULT GetGravity(out TfGravity pgStart, out TfGravity pgEnd) mut => VT.GetGravity(ref this, out pgStart, out pgEnd);
			public HRESULT SetGravity(uint32 ec, TfGravity gStart, TfGravity gEnd) mut => VT.SetGravity(ref this, ec, gStart, gEnd);
			public HRESULT Clone(out ITfRange* ppClone) mut => VT.Clone(ref this, out ppClone);
			public HRESULT GetContext(out ITfContext* ppContext) mut => VT.GetContext(ref this, out ppContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, uint32 dwFlags, char16* pchText, uint32 cchMax, out uint32 pcch) GetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, uint32 dwFlags, char16* pchText, int32 cch) SetText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, out IDataObject* ppDataObject) GetFormattedText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, in Guid rguidService, in Guid riid, out IUnknown* ppunk) GetEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, uint32 dwFlags, ref IDataObject pDataObject) InsertEmbedded;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, int32 cchReq, out int32 pcch, in TF_HALTCOND pHalt) ShiftStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, int32 cchReq, out int32 pcch, in TF_HALTCOND pHalt) ShiftEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pRange, TfAnchor aPos) ShiftStartToRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pRange, TfAnchor aPos) ShiftEndToRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, TfShiftDir dir, out BOOL pfNoRegion) ShiftStartRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, TfShiftDir dir, out BOOL pfNoRegion) ShiftEndRegion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, out BOOL pfEmpty) IsEmpty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, TfAnchor aPos) Collapse;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pWith, TfAnchor aPos, out BOOL pfEqual) IsEqualStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pWith, TfAnchor aPos, out BOOL pfEqual) IsEqualEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pWith, TfAnchor aPos, out int32 plResult) CompareStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, ref ITfRange pWith, TfAnchor aPos, out int32 plResult) CompareEnd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, uint32 cchInsert, out BOOL pfInsertOk) AdjustForInsert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, out TfGravity pgStart, out TfGravity pgEnd) GetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, uint32 ec, TfGravity gStart, TfGravity gEnd) SetGravity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, out ITfRange* ppClone) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRange self, out ITfContext* ppContext) GetContext;
			}
		}
		[CRepr]
		public struct ITfRangeACP : ITfRange
		{
			public const new Guid IID = .(0x057a6296, 0x029b, 0x4154, 0xb7, 0x9a, 0x0d, 0x46, 0x1d, 0x4e, 0xa9, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetExtent(out int32 pacpAnchor, out int32 pcch) mut => VT.GetExtent(ref this, out pacpAnchor, out pcch);
			public HRESULT SetExtent(int32 acpAnchor, int32 cch) mut => VT.SetExtent(ref this, acpAnchor, cch);

			[CRepr]
			public struct VTable : ITfRange.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRangeACP self, out int32 pacpAnchor, out int32 pcch) GetExtent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRangeACP self, int32 acpAnchor, int32 cch) SetExtent;
			}
		}
		[CRepr]
		public struct ITextStoreACPServices : IUnknown
		{
			public const new Guid IID = .(0xaa80e901, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(ref ITfProperty pProp, ref ITfRange pRange, out TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream) mut => VT.Serialize(ref this, ref pProp, ref pRange, out pHdr, ref pStream);
			public HRESULT Unserialize(ref ITfProperty pProp, in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream, ref ITfPersistentPropertyLoaderACP pLoader) mut => VT.Unserialize(ref this, ref pProp, pHdr, ref pStream, ref pLoader);
			public HRESULT ForceLoadProperty(ref ITfProperty pProp) mut => VT.ForceLoadProperty(ref this, ref pProp);
			public HRESULT CreateRange(int32 acpStart, int32 acpEnd, out ITfRangeACP* ppRange) mut => VT.CreateRange(ref this, acpStart, acpEnd, out ppRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPServices self, ref ITfProperty pProp, ref ITfRange pRange, out TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream) Serialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPServices self, ref ITfProperty pProp, in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, ref IStream pStream, ref ITfPersistentPropertyLoaderACP pLoader) Unserialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPServices self, ref ITfProperty pProp) ForceLoadProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPServices self, int32 acpStart, int32 acpEnd, out ITfRangeACP* ppRange) CreateRange;
			}
		}
		[CRepr]
		public struct ITfRangeBackup : IUnknown
		{
			public const new Guid IID = .(0x463a506d, 0x6992, 0x49d2, 0x9b, 0x88, 0x93, 0xd5, 0x5e, 0x70, 0xbb, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Restore(uint32 ec, ref ITfRange pRange) mut => VT.Restore(ref this, ec, ref pRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfRangeBackup self, uint32 ec, ref ITfRange pRange) Restore;
			}
		}
		[CRepr]
		public struct ITfPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x6834b120, 0x88cb, 0x11d2, 0xbf, 0x45, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguid) mut => VT.ComGetType(ref this, out pguid);
			public HRESULT GetDataType(out uint32 pdwReserved) mut => VT.GetDataType(ref this, out pdwReserved);
			public HRESULT GetData(out VARIANT pvarValue) mut => VT.GetData(ref this, out pvarValue);
			public HRESULT OnTextUpdated(uint32 dwFlags, ref ITfRange pRangeNew, out BOOL pfAccept) mut => VT.OnTextUpdated(ref this, dwFlags, ref pRangeNew, out pfAccept);
			public HRESULT Shrink(ref ITfRange pRangeNew, out BOOL pfFree) mut => VT.Shrink(ref this, ref pRangeNew, out pfFree);
			public HRESULT Divide(ref ITfRange pRangeThis, ref ITfRange pRangeNew, out ITfPropertyStore* ppPropStore) mut => VT.Divide(ref this, ref pRangeThis, ref pRangeNew, out ppPropStore);
			public HRESULT Clone(out ITfPropertyStore* pPropStore) mut => VT.Clone(ref this, out pPropStore);
			public HRESULT GetPropertyRangeCreator(out Guid pclsid) mut => VT.GetPropertyRangeCreator(ref this, out pclsid);
			public HRESULT Serialize(ref IStream pStream, out uint32 pcb) mut => VT.Serialize(ref this, ref pStream, out pcb);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, out Guid pguid) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, out uint32 pdwReserved) GetDataType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, out VARIANT pvarValue) GetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, uint32 dwFlags, ref ITfRange pRangeNew, out BOOL pfAccept) OnTextUpdated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, ref ITfRange pRangeNew, out BOOL pfFree) Shrink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, ref ITfRange pRangeThis, ref ITfRange pRangeNew, out ITfPropertyStore* ppPropStore) Divide;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, out ITfPropertyStore* pPropStore) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, out Guid pclsid) GetPropertyRangeCreator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPropertyStore self, ref IStream pStream, out uint32 pcb) Serialize;
			}
		}
		[CRepr]
		public struct IEnumTfRanges : IUnknown
		{
			public const new Guid IID = .(0xf99d3f40, 0x8e32, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfRanges* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfRange** ppRange, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, ppRange, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfRanges self, out IEnumTfRanges* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfRanges self, uint32 ulCount, ITfRange** ppRange, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfRanges self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfRanges self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCreatePropertyStore : IUnknown
		{
			public const new Guid IID = .(0x2463fbf0, 0xb0af, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsStoreSerializable(in Guid guidProp, ref ITfRange pRange, ref ITfPropertyStore pPropStore, out BOOL pfSerializable) mut => VT.IsStoreSerializable(ref this, guidProp, ref pRange, ref pPropStore, out pfSerializable);
			public HRESULT CreatePropertyStore(in Guid guidProp, ref ITfRange pRange, uint32 cb, ref IStream pStream, out ITfPropertyStore* ppStore) mut => VT.CreatePropertyStore(ref this, guidProp, ref pRange, cb, ref pStream, out ppStore);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCreatePropertyStore self, in Guid guidProp, ref ITfRange pRange, ref ITfPropertyStore pPropStore, out BOOL pfSerializable) IsStoreSerializable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCreatePropertyStore self, in Guid guidProp, ref ITfRange pRange, uint32 cb, ref IStream pStream, out ITfPropertyStore* ppStore) CreatePropertyStore;
			}
		}
		[CRepr]
		public struct ITfPersistentPropertyLoaderACP : IUnknown
		{
			public const new Guid IID = .(0x4ef89150, 0x0807, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadProperty(in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, out IStream* ppStream) mut => VT.LoadProperty(ref this, pHdr, out ppStream);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPersistentPropertyLoaderACP self, in TF_PERSISTENT_PROPERTY_HEADER_ACP pHdr, out IStream* ppStream) LoadProperty;
			}
		}
		[CRepr]
		public struct ITfProperty : ITfReadOnlyProperty
		{
			public const new Guid IID = .(0xe2449660, 0x9542, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindRange(uint32 ec, ref ITfRange pRange, out ITfRange* ppRange, TfAnchor aPos) mut => VT.FindRange(ref this, ec, ref pRange, out ppRange, aPos);
			public HRESULT SetValueStore(uint32 ec, ref ITfRange pRange, ref ITfPropertyStore pPropStore) mut => VT.SetValueStore(ref this, ec, ref pRange, ref pPropStore);
			public HRESULT SetValue(uint32 ec, ref ITfRange pRange, in VARIANT pvarValue) mut => VT.SetValue(ref this, ec, ref pRange, pvarValue);
			public HRESULT Clear(uint32 ec, ref ITfRange pRange) mut => VT.Clear(ref this, ec, ref pRange);

			[CRepr]
			public struct VTable : ITfReadOnlyProperty.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfProperty self, uint32 ec, ref ITfRange pRange, out ITfRange* ppRange, TfAnchor aPos) FindRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfProperty self, uint32 ec, ref ITfRange pRange, ref ITfPropertyStore pPropStore) SetValueStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfProperty self, uint32 ec, ref ITfRange pRange, in VARIANT pvarValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfProperty self, uint32 ec, ref ITfRange pRange) Clear;
			}
		}
		[CRepr]
		public struct IEnumTfProperties : IUnknown
		{
			public const new Guid IID = .(0x19188cb0, 0xaca9, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfProperties* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfProperty** ppProp, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, ppProp, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfProperties self, out IEnumTfProperties* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfProperties self, uint32 ulCount, ITfProperty** ppProp, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfProperties self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfProperties self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCompartment : IUnknown
		{
			public const new Guid IID = .(0xbb08f7a9, 0x607a, 0x4384, 0x86, 0x23, 0x05, 0x68, 0x92, 0xb6, 0x43, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(uint32 tid, in VARIANT pvarValue) mut => VT.SetValue(ref this, tid, pvarValue);
			public HRESULT GetValue(out VARIANT pvarValue) mut => VT.GetValue(ref this, out pvarValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartment self, uint32 tid, in VARIANT pvarValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartment self, out VARIANT pvarValue) GetValue;
			}
		}
		[CRepr]
		public struct ITfCompartmentEventSink : IUnknown
		{
			public const new Guid IID = .(0x743abd5f, 0xf26d, 0x48df, 0x8c, 0xc5, 0x23, 0x84, 0x92, 0x41, 0x9b, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChange(in Guid rguid) mut => VT.OnChange(ref this, rguid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartmentEventSink self, in Guid rguid) OnChange;
			}
		}
		[CRepr]
		public struct ITfCompartmentMgr : IUnknown
		{
			public const new Guid IID = .(0x7dcf57ac, 0x18ad, 0x438b, 0x82, 0x4d, 0x97, 0x9b, 0xff, 0xb7, 0x4b, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCompartment(in Guid rguid, out ITfCompartment* ppcomp) mut => VT.GetCompartment(ref this, rguid, out ppcomp);
			public HRESULT ClearCompartment(uint32 tid, in Guid rguid) mut => VT.ClearCompartment(ref this, tid, rguid);
			public HRESULT EnumCompartments(out IEnumGUID* ppEnum) mut => VT.EnumCompartments(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartmentMgr self, in Guid rguid, out ITfCompartment* ppcomp) GetCompartment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartmentMgr self, uint32 tid, in Guid rguid) ClearCompartment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCompartmentMgr self, out IEnumGUID* ppEnum) EnumCompartments;
			}
		}
		[CRepr]
		public struct ITfFunction : IUnknown
		{
			public const new Guid IID = .(0xdb593490, 0x098f, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDisplayName(out BSTR pbstrName) mut => VT.GetDisplayName(ref this, out pbstrName);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFunction self, out BSTR pbstrName) GetDisplayName;
			}
		}
		[CRepr]
		public struct ITfFunctionProvider : IUnknown
		{
			public const new Guid IID = .(0x101d6610, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(out Guid pguid) mut => VT.ComGetType(ref this, out pguid);
			public HRESULT GetDescription(out BSTR pbstrDesc) mut => VT.GetDescription(ref this, out pbstrDesc);
			public HRESULT GetFunction(in Guid rguid, in Guid riid, out IUnknown* ppunk) mut => VT.GetFunction(ref this, rguid, riid, out ppunk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFunctionProvider self, out Guid pguid) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFunctionProvider self, out BSTR pbstrDesc) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFunctionProvider self, in Guid rguid, in Guid riid, out IUnknown* ppunk) GetFunction;
			}
		}
		[CRepr]
		public struct IEnumTfFunctionProviders : IUnknown
		{
			public const new Guid IID = .(0xe4b24db0, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfFunctionProviders* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfFunctionProvider** ppCmdobj, out uint32 pcFetch) mut => VT.Next(ref this, ulCount, ppCmdobj, out pcFetch);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfFunctionProviders self, out IEnumTfFunctionProviders* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfFunctionProviders self, uint32 ulCount, ITfFunctionProvider** ppCmdobj, out uint32 pcFetch) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfFunctionProviders self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfFunctionProviders self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x1f02b6c5, 0x7842, 0x4ee6, 0x8a, 0x0b, 0x9a, 0x24, 0x18, 0x3a, 0x95, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(in Guid rclsid) mut => VT.Register(ref this, rclsid);
			public HRESULT Unregister(in Guid rclsid) mut => VT.Unregister(ref this, rclsid);
			public HRESULT AddLanguageProfile(in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex) mut => VT.AddLanguageProfile(ref this, rclsid, langid, guidProfile, pchDesc, cchDesc, pchIconFile, cchFile, uIconIndex);
			public HRESULT RemoveLanguageProfile(in Guid rclsid, uint16 langid, in Guid guidProfile) mut => VT.RemoveLanguageProfile(ref this, rclsid, langid, guidProfile);
			public HRESULT EnumInputProcessorInfo(out IEnumGUID* ppEnum) mut => VT.EnumInputProcessorInfo(ref this, out ppEnum);
			public HRESULT GetDefaultLanguageProfile(uint16 langid, in Guid catid, out Guid pclsid, out Guid pguidProfile) mut => VT.GetDefaultLanguageProfile(ref this, langid, catid, out pclsid, out pguidProfile);
			public HRESULT SetDefaultLanguageProfile(uint16 langid, in Guid rclsid, in Guid guidProfiles) mut => VT.SetDefaultLanguageProfile(ref this, langid, rclsid, guidProfiles);
			public HRESULT ActivateLanguageProfile(in Guid rclsid, uint16 langid, in Guid guidProfiles) mut => VT.ActivateLanguageProfile(ref this, rclsid, langid, guidProfiles);
			public HRESULT GetActiveLanguageProfile(in Guid rclsid, out uint16 plangid, out Guid pguidProfile) mut => VT.GetActiveLanguageProfile(ref this, rclsid, out plangid, out pguidProfile);
			public HRESULT GetLanguageProfileDescription(in Guid rclsid, uint16 langid, in Guid guidProfile, out BSTR pbstrProfile) mut => VT.GetLanguageProfileDescription(ref this, rclsid, langid, guidProfile, out pbstrProfile);
			public HRESULT GetCurrentLanguage(out uint16 plangid) mut => VT.GetCurrentLanguage(ref this, out plangid);
			public HRESULT ChangeCurrentLanguage(uint16 langid) mut => VT.ChangeCurrentLanguage(ref this, langid);
			public HRESULT GetLanguageList(uint16** ppLangId, out uint32 pulCount) mut => VT.GetLanguageList(ref this, ppLangId, out pulCount);
			public HRESULT EnumLanguageProfiles(uint16 langid, out IEnumTfLanguageProfiles* ppEnum) mut => VT.EnumLanguageProfiles(ref this, langid, out ppEnum);
			public HRESULT EnableLanguageProfile(in Guid rclsid, uint16 langid, in Guid guidProfile, BOOL fEnable) mut => VT.EnableLanguageProfile(ref this, rclsid, langid, guidProfile, fEnable);
			public HRESULT IsEnabledLanguageProfile(in Guid rclsid, uint16 langid, in Guid guidProfile, out BOOL pfEnable) mut => VT.IsEnabledLanguageProfile(ref this, rclsid, langid, guidProfile, out pfEnable);
			public HRESULT EnableLanguageProfileByDefault(in Guid rclsid, uint16 langid, in Guid guidProfile, BOOL fEnable) mut => VT.EnableLanguageProfileByDefault(ref this, rclsid, langid, guidProfile, fEnable);
			public HRESULT SubstituteKeyboardLayout(in Guid rclsid, uint16 langid, in Guid guidProfile, HKL hKL) mut => VT.SubstituteKeyboardLayout(ref this, rclsid, langid, guidProfile, hKL);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid) Unregister;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex) AddLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile) RemoveLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, out IEnumGUID* ppEnum) EnumInputProcessorInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, uint16 langid, in Guid catid, out Guid pclsid, out Guid pguidProfile) GetDefaultLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, uint16 langid, in Guid rclsid, in Guid guidProfiles) SetDefaultLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfiles) ActivateLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, out uint16 plangid, out Guid pguidProfile) GetActiveLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, out BSTR pbstrProfile) GetLanguageProfileDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, out uint16 plangid) GetCurrentLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, uint16 langid) ChangeCurrentLanguage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, uint16** ppLangId, out uint32 pulCount) GetLanguageList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, uint16 langid, out IEnumTfLanguageProfiles* ppEnum) EnumLanguageProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, BOOL fEnable) EnableLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, out BOOL pfEnable) IsEnabledLanguageProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, BOOL fEnable) EnableLanguageProfileByDefault;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfiles self, in Guid rclsid, uint16 langid, in Guid guidProfile, HKL hKL) SubstituteKeyboardLayout;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfilesEx : ITfInputProcessorProfiles
		{
			public const new Guid IID = .(0x892f230f, 0xfe00, 0x4a41, 0xa9, 0x8e, 0xfc, 0xd6, 0xde, 0x0d, 0x35, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLanguageProfileDisplayName(in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchFile, uint32 cchFile, uint32 uResId) mut => VT.SetLanguageProfileDisplayName(ref this, rclsid, langid, guidProfile, pchFile, cchFile, uResId);

			[CRepr]
			public struct VTable : ITfInputProcessorProfiles.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfilesEx self, in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchFile, uint32 cchFile, uint32 uResId) SetLanguageProfileDisplayName;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileSubstituteLayout : IUnknown
		{
			public const new Guid IID = .(0x4fd67194, 0x1002, 0x4513, 0xbf, 0xf2, 0xc0, 0xdd, 0xf6, 0x25, 0x85, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubstituteKeyboardLayout(in Guid rclsid, uint16 langid, in Guid guidProfile, out HKL phKL) mut => VT.GetSubstituteKeyboardLayout(ref this, rclsid, langid, guidProfile, out phKL);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileSubstituteLayout self, in Guid rclsid, uint16 langid, in Guid guidProfile, out HKL phKL) GetSubstituteKeyboardLayout;
			}
		}
		[CRepr]
		public struct ITfActiveLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0xb246cb75, 0xa93e, 0x4652, 0xbf, 0x8c, 0xb3, 0xfe, 0x0c, 0xfd, 0x7e, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivated(in Guid clsid, in Guid guidProfile, BOOL fActivated) mut => VT.OnActivated(ref this, clsid, guidProfile, fActivated);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfActiveLanguageProfileNotifySink self, in Guid clsid, in Guid guidProfile, BOOL fActivated) OnActivated;
			}
		}
		[CRepr]
		public struct IEnumTfLanguageProfiles : IUnknown
		{
			public const new Guid IID = .(0x3d61bf11, 0xac5f, 0x42c8, 0xa4, 0xcb, 0x93, 0x1b, 0xcc, 0x28, 0xc7, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfLanguageProfiles* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, TF_LANGUAGEPROFILE* pProfile, out uint32 pcFetch) mut => VT.Next(ref this, ulCount, pProfile, out pcFetch);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLanguageProfiles self, out IEnumTfLanguageProfiles* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLanguageProfiles self, uint32 ulCount, TF_LANGUAGEPROFILE* pProfile, out uint32 pcFetch) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLanguageProfiles self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLanguageProfiles self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0x43c9fe15, 0xf494, 0x4c17, 0x9d, 0xe2, 0xb8, 0xa4, 0xac, 0x35, 0x0a, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLanguageChange(uint16 langid, out BOOL pfAccept) mut => VT.OnLanguageChange(ref this, langid, out pfAccept);
			public HRESULT OnLanguageChanged() mut => VT.OnLanguageChanged(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLanguageProfileNotifySink self, uint16 langid, out BOOL pfAccept) OnLanguageChange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLanguageProfileNotifySink self) OnLanguageChanged;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileMgr : IUnknown
		{
			public const new Guid IID = .(0x71c6e74c, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateProfile(uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, uint32 dwFlags) mut => VT.ActivateProfile(ref this, dwProfileType, langid, clsid, guidProfile, hkl, dwFlags);
			public HRESULT DeactivateProfile(uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, uint32 dwFlags) mut => VT.DeactivateProfile(ref this, dwProfileType, langid, clsid, guidProfile, hkl, dwFlags);
			public HRESULT GetProfile(uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, out TF_INPUTPROCESSORPROFILE pProfile) mut => VT.GetProfile(ref this, dwProfileType, langid, clsid, guidProfile, hkl, out pProfile);
			public HRESULT EnumProfiles(uint16 langid, out IEnumTfInputProcessorProfiles* ppEnum) mut => VT.EnumProfiles(ref this, langid, out ppEnum);
			public HRESULT ReleaseInputProcessor(in Guid rclsid, uint32 dwFlags) mut => VT.ReleaseInputProcessor(ref this, rclsid, dwFlags);
			public HRESULT RegisterProfile(in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex, HKL hklsubstitute, uint32 dwPreferredLayout, BOOL bEnabledByDefault, uint32 dwFlags) mut => VT.RegisterProfile(ref this, rclsid, langid, guidProfile, pchDesc, cchDesc, pchIconFile, cchFile, uIconIndex, hklsubstitute, dwPreferredLayout, bEnabledByDefault, dwFlags);
			public HRESULT UnregisterProfile(in Guid rclsid, uint16 langid, in Guid guidProfile, uint32 dwFlags) mut => VT.UnregisterProfile(ref this, rclsid, langid, guidProfile, dwFlags);
			public HRESULT GetActiveProfile(in Guid catid, out TF_INPUTPROCESSORPROFILE pProfile) mut => VT.GetActiveProfile(ref this, catid, out pProfile);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, uint32 dwFlags) ActivateProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, uint32 dwFlags) DeactivateProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid guidProfile, HKL hkl, out TF_INPUTPROCESSORPROFILE pProfile) GetProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, uint16 langid, out IEnumTfInputProcessorProfiles* ppEnum) EnumProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, in Guid rclsid, uint32 dwFlags) ReleaseInputProcessor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, in Guid rclsid, uint16 langid, in Guid guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex, HKL hklsubstitute, uint32 dwPreferredLayout, BOOL bEnabledByDefault, uint32 dwFlags) RegisterProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, in Guid rclsid, uint16 langid, in Guid guidProfile, uint32 dwFlags) UnregisterProfile;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileMgr self, in Guid catid, out TF_INPUTPROCESSORPROFILE pProfile) GetActiveProfile;
			}
		}
		[CRepr]
		public struct IEnumTfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x71c6e74d, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfInputProcessorProfiles* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, TF_INPUTPROCESSORPROFILE* pProfile, out uint32 pcFetch) mut => VT.Next(ref this, ulCount, pProfile, out pcFetch);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfInputProcessorProfiles self, out IEnumTfInputProcessorProfiles* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfInputProcessorProfiles self, uint32 ulCount, TF_INPUTPROCESSORPROFILE* pProfile, out uint32 pcFetch) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfInputProcessorProfiles self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfInputProcessorProfiles self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileActivationSink : IUnknown
		{
			public const new Guid IID = .(0x71c6e74e, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivated(uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid catid, in Guid guidProfile, HKL hkl, uint32 dwFlags) mut => VT.OnActivated(ref this, dwProfileType, langid, clsid, catid, guidProfile, hkl, dwFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputProcessorProfileActivationSink self, uint32 dwProfileType, uint16 langid, in Guid clsid, in Guid catid, in Guid guidProfile, HKL hkl, uint32 dwFlags) OnActivated;
			}
		}
		[CRepr]
		public struct ITfKeystrokeMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f0, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseKeyEventSink(uint32 tid, ref ITfKeyEventSink pSink, BOOL fForeground) mut => VT.AdviseKeyEventSink(ref this, tid, ref pSink, fForeground);
			public HRESULT UnadviseKeyEventSink(uint32 tid) mut => VT.UnadviseKeyEventSink(ref this, tid);
			public HRESULT GetForeground(out Guid pclsid) mut => VT.GetForeground(ref this, out pclsid);
			public HRESULT TestKeyDown(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.TestKeyDown(ref this, wParam, lParam, out pfEaten);
			public HRESULT TestKeyUp(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.TestKeyUp(ref this, wParam, lParam, out pfEaten);
			public HRESULT KeyDown(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.KeyDown(ref this, wParam, lParam, out pfEaten);
			public HRESULT KeyUp(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.KeyUp(ref this, wParam, lParam, out pfEaten);
			public HRESULT GetPreservedKey(ref ITfContext pic, in TF_PRESERVEDKEY pprekey, out Guid pguid) mut => VT.GetPreservedKey(ref this, ref pic, pprekey, out pguid);
			public HRESULT IsPreservedKey(in Guid rguid, in TF_PRESERVEDKEY pprekey, out BOOL pfRegistered) mut => VT.IsPreservedKey(ref this, rguid, pprekey, out pfRegistered);
			public HRESULT PreserveKey(uint32 tid, in Guid rguid, in TF_PRESERVEDKEY prekey, char16* pchDesc, uint32 cchDesc) mut => VT.PreserveKey(ref this, tid, rguid, prekey, pchDesc, cchDesc);
			public HRESULT UnpreserveKey(in Guid rguid, in TF_PRESERVEDKEY pprekey) mut => VT.UnpreserveKey(ref this, rguid, pprekey);
			public HRESULT SetPreservedKeyDescription(in Guid rguid, char16* pchDesc, uint32 cchDesc) mut => VT.SetPreservedKeyDescription(ref this, rguid, pchDesc, cchDesc);
			public HRESULT GetPreservedKeyDescription(in Guid rguid, out BSTR pbstrDesc) mut => VT.GetPreservedKeyDescription(ref this, rguid, out pbstrDesc);
			public HRESULT SimulatePreservedKey(ref ITfContext pic, in Guid rguid, out BOOL pfEaten) mut => VT.SimulatePreservedKey(ref this, ref pic, rguid, out pfEaten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, uint32 tid, ref ITfKeyEventSink pSink, BOOL fForeground) AdviseKeyEventSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, uint32 tid) UnadviseKeyEventSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, out Guid pclsid) GetForeground;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) TestKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) TestKeyUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) KeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) KeyUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, ref ITfContext pic, in TF_PRESERVEDKEY pprekey, out Guid pguid) GetPreservedKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, in Guid rguid, in TF_PRESERVEDKEY pprekey, out BOOL pfRegistered) IsPreservedKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, uint32 tid, in Guid rguid, in TF_PRESERVEDKEY prekey, char16* pchDesc, uint32 cchDesc) PreserveKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, in Guid rguid, in TF_PRESERVEDKEY pprekey) UnpreserveKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, in Guid rguid, char16* pchDesc, uint32 cchDesc) SetPreservedKeyDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, in Guid rguid, out BSTR pbstrDesc) GetPreservedKeyDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeystrokeMgr self, ref ITfContext pic, in Guid rguid, out BOOL pfEaten) SimulatePreservedKey;
			}
		}
		[CRepr]
		public struct ITfKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f5, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetFocus(BOOL fForeground) mut => VT.OnSetFocus(ref this, fForeground);
			public HRESULT OnTestKeyDown(ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnTestKeyDown(ref this, ref pic, wParam, lParam, out pfEaten);
			public HRESULT OnTestKeyUp(ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnTestKeyUp(ref this, ref pic, wParam, lParam, out pfEaten);
			public HRESULT OnKeyDown(ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnKeyDown(ref this, ref pic, wParam, lParam, out pfEaten);
			public HRESULT OnKeyUp(ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnKeyUp(ref this, ref pic, wParam, lParam, out pfEaten);
			public HRESULT OnPreservedKey(ref ITfContext pic, in Guid rguid, out BOOL pfEaten) mut => VT.OnPreservedKey(ref this, ref pic, rguid, out pfEaten);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, BOOL fForeground) OnSetFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnTestKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnTestKeyUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, ref ITfContext pic, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnKeyUp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyEventSink self, ref ITfContext pic, in Guid rguid, out BOOL pfEaten) OnPreservedKey;
			}
		}
		[CRepr]
		public struct ITfKeyTraceEventSink : IUnknown
		{
			public const new Guid IID = .(0x1cd4c13b, 0x1c36, 0x4191, 0xa7, 0x0a, 0x7f, 0x3e, 0x61, 0x1f, 0x36, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnKeyTraceDown(WPARAM wParam, LPARAM lParam) mut => VT.OnKeyTraceDown(ref this, wParam, lParam);
			public HRESULT OnKeyTraceUp(WPARAM wParam, LPARAM lParam) mut => VT.OnKeyTraceUp(ref this, wParam, lParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyTraceEventSink self, WPARAM wParam, LPARAM lParam) OnKeyTraceDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfKeyTraceEventSink self, WPARAM wParam, LPARAM lParam) OnKeyTraceUp;
			}
		}
		[CRepr]
		public struct ITfPreservedKeyNotifySink : IUnknown
		{
			public const new Guid IID = .(0x6f77c993, 0xd2b1, 0x446e, 0x85, 0x3e, 0x59, 0x12, 0xef, 0xc8, 0xa2, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdated(in TF_PRESERVEDKEY pprekey) mut => VT.OnUpdated(ref this, pprekey);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfPreservedKeyNotifySink self, in TF_PRESERVEDKEY pprekey) OnUpdated;
			}
		}
		[CRepr]
		public struct ITfMessagePump : IUnknown
		{
			public const new Guid IID = .(0x8f1b8ad8, 0x0b6b, 0x4874, 0x90, 0xc5, 0xbd, 0x76, 0x01, 0x1e, 0x8f, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PeekMessageA(out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, out BOOL pfResult) mut => VT.PeekMessageA(ref this, out pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg, out pfResult);
			public HRESULT GetMessageA(out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, out BOOL pfResult) mut => VT.GetMessageA(ref this, out pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, out pfResult);
			public HRESULT PeekMessageW(out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, out BOOL pfResult) mut => VT.PeekMessageW(ref this, out pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg, out pfResult);
			public HRESULT GetMessageW(out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, out BOOL pfResult) mut => VT.GetMessageW(ref this, out pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, out pfResult);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMessagePump self, out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, out BOOL pfResult) PeekMessageA;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMessagePump self, out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, out BOOL pfResult) GetMessageA;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMessagePump self, out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, out BOOL pfResult) PeekMessageW;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMessagePump self, out MSG pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, out BOOL pfResult) GetMessageW;
			}
		}
		[CRepr]
		public struct ITfThreadFocusSink : IUnknown
		{
			public const new Guid IID = .(0xc0f1db0c, 0x3a20, 0x405c, 0xa3, 0x03, 0x96, 0xb6, 0x01, 0x0a, 0x88, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetThreadFocus() mut => VT.OnSetThreadFocus(ref this);
			public HRESULT OnKillThreadFocus() mut => VT.OnKillThreadFocus(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadFocusSink self) OnSetThreadFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfThreadFocusSink self) OnKillThreadFocus;
			}
		}
		[CRepr]
		public struct ITfTextInputProcessor : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f7, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(ref ITfThreadMgr ptim, uint32 tid) mut => VT.Activate(ref this, ref ptim, tid);
			public HRESULT Deactivate() mut => VT.Deactivate(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTextInputProcessor self, ref ITfThreadMgr ptim, uint32 tid) Activate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTextInputProcessor self) Deactivate;
			}
		}
		[CRepr]
		public struct ITfTextInputProcessorEx : ITfTextInputProcessor
		{
			public const new Guid IID = .(0x6e4e2102, 0xf9cd, 0x433d, 0xb4, 0x96, 0x30, 0x3c, 0xe0, 0x3a, 0x65, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateEx(ref ITfThreadMgr ptim, uint32 tid, uint32 dwFlags) mut => VT.ActivateEx(ref this, ref ptim, tid, dwFlags);

			[CRepr]
			public struct VTable : ITfTextInputProcessor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTextInputProcessorEx self, ref ITfThreadMgr ptim, uint32 tid, uint32 dwFlags) ActivateEx;
			}
		}
		[CRepr]
		public struct ITfClientId : IUnknown
		{
			public const new Guid IID = .(0xd60a7b49, 0x1b9f, 0x4be2, 0xb7, 0x02, 0x47, 0xe9, 0xdc, 0x05, 0xde, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientId(in Guid rclsid, out uint32 ptid) mut => VT.GetClientId(ref this, rclsid, out ptid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfClientId self, in Guid rclsid, out uint32 ptid) GetClientId;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x70528852, 0x2f26, 0x4aea, 0x8c, 0x96, 0x21, 0x51, 0x50, 0x57, 0x89, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGUID(out Guid pguid) mut => VT.GetGUID(ref this, out pguid);
			public HRESULT GetDescription(out BSTR pbstrDesc) mut => VT.GetDescription(ref this, out pbstrDesc);
			public HRESULT GetAttributeInfo(out TF_DISPLAYATTRIBUTE pda) mut => VT.GetAttributeInfo(ref this, out pda);
			public HRESULT SetAttributeInfo(in TF_DISPLAYATTRIBUTE pda) mut => VT.SetAttributeInfo(ref this, pda);
			public HRESULT Reset() mut => VT.Reset(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeInfo self, out Guid pguid) GetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeInfo self, out BSTR pbstrDesc) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeInfo self, out TF_DISPLAYATTRIBUTE pda) GetAttributeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeInfo self, in TF_DISPLAYATTRIBUTE pda) SetAttributeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeInfo self) Reset;
			}
		}
		[CRepr]
		public struct IEnumTfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x7cef04d7, 0xcb75, 0x4e80, 0xa7, 0xab, 0x5f, 0x5b, 0xc7, 0xd3, 0x32, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfDisplayAttributeInfo* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfDisplayAttributeInfo** rgInfo, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgInfo, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDisplayAttributeInfo self, out IEnumTfDisplayAttributeInfo* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDisplayAttributeInfo self, uint32 ulCount, ITfDisplayAttributeInfo** rgInfo, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDisplayAttributeInfo self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfDisplayAttributeInfo self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeProvider : IUnknown
		{
			public const new Guid IID = .(0xfee47777, 0x163c, 0x4769, 0x99, 0x6a, 0x6e, 0x9c, 0x50, 0xad, 0x8f, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumDisplayAttributeInfo(out IEnumTfDisplayAttributeInfo* ppEnum) mut => VT.EnumDisplayAttributeInfo(ref this, out ppEnum);
			public HRESULT GetDisplayAttributeInfo(in Guid guid, out ITfDisplayAttributeInfo* ppInfo) mut => VT.GetDisplayAttributeInfo(ref this, guid, out ppInfo);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeProvider self, out IEnumTfDisplayAttributeInfo* ppEnum) EnumDisplayAttributeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeProvider self, in Guid guid, out ITfDisplayAttributeInfo* ppInfo) GetDisplayAttributeInfo;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeMgr : IUnknown
		{
			public const new Guid IID = .(0x8ded7393, 0x5db1, 0x475c, 0x9e, 0x71, 0xa3, 0x91, 0x11, 0xb0, 0xff, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdateInfo() mut => VT.OnUpdateInfo(ref this);
			public HRESULT EnumDisplayAttributeInfo(out IEnumTfDisplayAttributeInfo* ppEnum) mut => VT.EnumDisplayAttributeInfo(ref this, out ppEnum);
			public HRESULT GetDisplayAttributeInfo(in Guid guid, out ITfDisplayAttributeInfo* ppInfo, out Guid pclsidOwner) mut => VT.GetDisplayAttributeInfo(ref this, guid, out ppInfo, out pclsidOwner);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeMgr self) OnUpdateInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeMgr self, out IEnumTfDisplayAttributeInfo* ppEnum) EnumDisplayAttributeInfo;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeMgr self, in Guid guid, out ITfDisplayAttributeInfo* ppInfo, out Guid pclsidOwner) GetDisplayAttributeInfo;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeNotifySink : IUnknown
		{
			public const new Guid IID = .(0xad56f402, 0xe162, 0x4f25, 0x90, 0x8f, 0x7d, 0x57, 0x7c, 0xf9, 0xbd, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdateInfo() mut => VT.OnUpdateInfo(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfDisplayAttributeNotifySink self) OnUpdateInfo;
			}
		}
		[CRepr]
		public struct ITfCategoryMgr : IUnknown
		{
			public const new Guid IID = .(0xc3acefb5, 0xf69d, 0x4905, 0x93, 0x8f, 0xfc, 0xad, 0xcf, 0x4b, 0xe8, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCategory(in Guid rclsid, in Guid rcatid, in Guid rguid) mut => VT.RegisterCategory(ref this, rclsid, rcatid, rguid);
			public HRESULT UnregisterCategory(in Guid rclsid, in Guid rcatid, in Guid rguid) mut => VT.UnregisterCategory(ref this, rclsid, rcatid, rguid);
			public HRESULT EnumCategoriesInItem(in Guid rguid, out IEnumGUID* ppEnum) mut => VT.EnumCategoriesInItem(ref this, rguid, out ppEnum);
			public HRESULT EnumItemsInCategory(in Guid rcatid, out IEnumGUID* ppEnum) mut => VT.EnumItemsInCategory(ref this, rcatid, out ppEnum);
			public HRESULT FindClosestCategory(in Guid rguid, out Guid pcatid, Guid** ppcatidList, uint32 ulCount) mut => VT.FindClosestCategory(ref this, rguid, out pcatid, ppcatidList, ulCount);
			public HRESULT RegisterGUIDDescription(in Guid rclsid, in Guid rguid, char16* pchDesc, uint32 cch) mut => VT.RegisterGUIDDescription(ref this, rclsid, rguid, pchDesc, cch);
			public HRESULT UnregisterGUIDDescription(in Guid rclsid, in Guid rguid) mut => VT.UnregisterGUIDDescription(ref this, rclsid, rguid);
			public HRESULT GetGUIDDescription(in Guid rguid, out BSTR pbstrDesc) mut => VT.GetGUIDDescription(ref this, rguid, out pbstrDesc);
			public HRESULT RegisterGUIDDWORD(in Guid rclsid, in Guid rguid, uint32 dw) mut => VT.RegisterGUIDDWORD(ref this, rclsid, rguid, dw);
			public HRESULT UnregisterGUIDDWORD(in Guid rclsid, in Guid rguid) mut => VT.UnregisterGUIDDWORD(ref this, rclsid, rguid);
			public HRESULT GetGUIDDWORD(in Guid rguid, out uint32 pdw) mut => VT.GetGUIDDWORD(ref this, rguid, out pdw);
			public HRESULT RegisterGUID(in Guid rguid, out uint32 pguidatom) mut => VT.RegisterGUID(ref this, rguid, out pguidatom);
			public HRESULT GetGUID(uint32 guidatom, out Guid pguid) mut => VT.GetGUID(ref this, guidatom, out pguid);
			public HRESULT IsEqualTfGuidAtom(uint32 guidatom, in Guid rguid, out BOOL pfEqual) mut => VT.IsEqualTfGuidAtom(ref this, guidatom, rguid, out pfEqual);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rcatid, in Guid rguid) RegisterCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rcatid, in Guid rguid) UnregisterCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rguid, out IEnumGUID* ppEnum) EnumCategoriesInItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rcatid, out IEnumGUID* ppEnum) EnumItemsInCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rguid, out Guid pcatid, Guid** ppcatidList, uint32 ulCount) FindClosestCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rguid, char16* pchDesc, uint32 cch) RegisterGUIDDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rguid) UnregisterGUIDDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rguid, out BSTR pbstrDesc) GetGUIDDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rguid, uint32 dw) RegisterGUIDDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rclsid, in Guid rguid) UnregisterGUIDDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rguid, out uint32 pdw) GetGUIDDWORD;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, in Guid rguid, out uint32 pguidatom) RegisterGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, uint32 guidatom, out Guid pguid) GetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCategoryMgr self, uint32 guidatom, in Guid rguid, out BOOL pfEqual) IsEqualTfGuidAtom;
			}
		}
		[CRepr]
		public struct ITfSource : IUnknown
		{
			public const new Guid IID = .(0x4ea48a35, 0x60ae, 0x446f, 0x8f, 0xd6, 0xe6, 0xa8, 0xd8, 0x24, 0x59, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(in Guid riid, ref IUnknown punk, out uint32 pdwCookie) mut => VT.AdviseSink(ref this, riid, ref punk, out pdwCookie);
			public HRESULT UnadviseSink(uint32 dwCookie) mut => VT.UnadviseSink(ref this, dwCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSource self, in Guid riid, ref IUnknown punk, out uint32 pdwCookie) AdviseSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSource self, uint32 dwCookie) UnadviseSink;
			}
		}
		[CRepr]
		public struct ITfSourceSingle : IUnknown
		{
			public const new Guid IID = .(0x73131f9c, 0x56a9, 0x49dd, 0xb0, 0xee, 0xd0, 0x46, 0x63, 0x3f, 0x75, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSingleSink(uint32 tid, in Guid riid, ref IUnknown punk) mut => VT.AdviseSingleSink(ref this, tid, riid, ref punk);
			public HRESULT UnadviseSingleSink(uint32 tid, in Guid riid) mut => VT.UnadviseSingleSink(ref this, tid, riid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSourceSingle self, uint32 tid, in Guid riid, ref IUnknown punk) AdviseSingleSink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSourceSingle self, uint32 tid, in Guid riid) UnadviseSingleSink;
			}
		}
		[CRepr]
		public struct ITfUIElementMgr : IUnknown
		{
			public const new Guid IID = .(0xea1ea135, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUIElement(ref ITfUIElement pElement, out BOOL pbShow, out uint32 pdwUIElementId) mut => VT.BeginUIElement(ref this, ref pElement, out pbShow, out pdwUIElementId);
			public HRESULT UpdateUIElement(uint32 dwUIElementId) mut => VT.UpdateUIElement(ref this, dwUIElementId);
			public HRESULT EndUIElement(uint32 dwUIElementId) mut => VT.EndUIElement(ref this, dwUIElementId);
			public HRESULT GetUIElement(uint32 dwUIELementId, out ITfUIElement* ppElement) mut => VT.GetUIElement(ref this, dwUIELementId, out ppElement);
			public HRESULT EnumUIElements(out IEnumTfUIElements* ppEnum) mut => VT.EnumUIElements(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementMgr self, ref ITfUIElement pElement, out BOOL pbShow, out uint32 pdwUIElementId) BeginUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementMgr self, uint32 dwUIElementId) UpdateUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementMgr self, uint32 dwUIElementId) EndUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementMgr self, uint32 dwUIELementId, out ITfUIElement* ppElement) GetUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementMgr self, out IEnumTfUIElements* ppEnum) EnumUIElements;
			}
		}
		[CRepr]
		public struct IEnumTfUIElements : IUnknown
		{
			public const new Guid IID = .(0x887aa91e, 0xacba, 0x4931, 0x84, 0xda, 0x3c, 0x52, 0x08, 0xcf, 0x54, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfUIElements* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfUIElement** ppElement, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, ppElement, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfUIElements self, out IEnumTfUIElements* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfUIElements self, uint32 ulCount, ITfUIElement** ppElement, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfUIElements self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfUIElements self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfUIElementSink : IUnknown
		{
			public const new Guid IID = .(0xea1ea136, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUIElement(uint32 dwUIElementId, out BOOL pbShow) mut => VT.BeginUIElement(ref this, dwUIElementId, out pbShow);
			public HRESULT UpdateUIElement(uint32 dwUIElementId) mut => VT.UpdateUIElement(ref this, dwUIElementId);
			public HRESULT EndUIElement(uint32 dwUIElementId) mut => VT.EndUIElement(ref this, dwUIElementId);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementSink self, uint32 dwUIElementId, out BOOL pbShow) BeginUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementSink self, uint32 dwUIElementId) UpdateUIElement;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElementSink self, uint32 dwUIElementId) EndUIElement;
			}
		}
		[CRepr]
		public struct ITfUIElement : IUnknown
		{
			public const new Guid IID = .(0xea1ea137, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(out BSTR pbstrDescription) mut => VT.GetDescription(ref this, out pbstrDescription);
			public HRESULT GetGUID(out Guid pguid) mut => VT.GetGUID(ref this, out pguid);
			public HRESULT Show(BOOL bShow) mut => VT.Show(ref this, bShow);
			public HRESULT IsShown(out BOOL pbShow) mut => VT.IsShown(ref this, out pbShow);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElement self, out BSTR pbstrDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElement self, out Guid pguid) GetGUID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElement self, BOOL bShow) Show;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfUIElement self, out BOOL pbShow) IsShown;
			}
		}
		[CRepr]
		public struct ITfCandidateListUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea138, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdatedFlags(out uint32 pdwFlags) mut => VT.GetUpdatedFlags(ref this, out pdwFlags);
			public HRESULT GetDocumentMgr(out ITfDocumentMgr* ppdim) mut => VT.GetDocumentMgr(ref this, out ppdim);
			public HRESULT GetCount(out uint32 puCount) mut => VT.GetCount(ref this, out puCount);
			public HRESULT GetSelection(out uint32 puIndex) mut => VT.GetSelection(ref this, out puIndex);
			public HRESULT GetString(uint32 uIndex, out BSTR pstr) mut => VT.GetString(ref this, uIndex, out pstr);
			public HRESULT GetPageIndex(uint32* pIndex, uint32 uSize, out uint32 puPageCnt) mut => VT.GetPageIndex(ref this, pIndex, uSize, out puPageCnt);
			public HRESULT SetPageIndex(uint32* pIndex, uint32 uPageCnt) mut => VT.SetPageIndex(ref this, pIndex, uPageCnt);
			public HRESULT GetCurrentPage(out uint32 puPage) mut => VT.GetCurrentPage(ref this, out puPage);

			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, out uint32 pdwFlags) GetUpdatedFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, out ITfDocumentMgr* ppdim) GetDocumentMgr;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, out uint32 puCount) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, out uint32 puIndex) GetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, uint32 uIndex, out BSTR pstr) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, uint32* pIndex, uint32 uSize, out uint32 puPageCnt) GetPageIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, uint32* pIndex, uint32 uPageCnt) SetPageIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElement self, out uint32 puPage) GetCurrentPage;
			}
		}
		[CRepr]
		public struct ITfCandidateListUIElementBehavior : ITfCandidateListUIElement
		{
			public const new Guid IID = .(0x85fad185, 0x58ce, 0x497a, 0x94, 0x60, 0x35, 0x53, 0x66, 0xb6, 0x4b, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSelection(uint32 nIndex) mut => VT.SetSelection(ref this, nIndex);
			public HRESULT Finalize() mut => VT.Finalize(ref this);
			public HRESULT Abort() mut => VT.Abort(ref this);

			[CRepr]
			public struct VTable : ITfCandidateListUIElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElementBehavior self, uint32 nIndex) SetSelection;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElementBehavior self) Finalize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateListUIElementBehavior self) Abort;
			}
		}
		[CRepr]
		public struct ITfReadingInformationUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea139, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdatedFlags(out uint32 pdwFlags) mut => VT.GetUpdatedFlags(ref this, out pdwFlags);
			public HRESULT GetContext(out ITfContext* ppic) mut => VT.GetContext(ref this, out ppic);
			public HRESULT GetString(out BSTR pstr) mut => VT.GetString(ref this, out pstr);
			public HRESULT GetMaxReadingStringLength(out uint32 pcchMax) mut => VT.GetMaxReadingStringLength(ref this, out pcchMax);
			public HRESULT GetErrorIndex(out uint32 pErrorIndex) mut => VT.GetErrorIndex(ref this, out pErrorIndex);
			public HRESULT IsVerticalOrderPreferred(out BOOL pfVertical) mut => VT.IsVerticalOrderPreferred(ref this, out pfVertical);

			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out uint32 pdwFlags) GetUpdatedFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out ITfContext* ppic) GetContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out BSTR pstr) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out uint32 pcchMax) GetMaxReadingStringLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out uint32 pErrorIndex) GetErrorIndex;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReadingInformationUIElement self, out BOOL pfVertical) IsVerticalOrderPreferred;
			}
		}
		[CRepr]
		public struct ITfTransitoryExtensionUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x858f956a, 0x972f, 0x42a2, 0xa2, 0xf2, 0x03, 0x21, 0xe1, 0xab, 0xe2, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentMgr(out ITfDocumentMgr* ppdim) mut => VT.GetDocumentMgr(ref this, out ppdim);

			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTransitoryExtensionUIElement self, out ITfDocumentMgr* ppdim) GetDocumentMgr;
			}
		}
		[CRepr]
		public struct ITfTransitoryExtensionSink : IUnknown
		{
			public const new Guid IID = .(0xa615096f, 0x1c57, 0x4813, 0x8a, 0x15, 0x55, 0xee, 0x6e, 0x5a, 0x83, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransitoryExtensionUpdated(ref ITfContext pic, uint32 ecReadOnly, ref ITfRange pResultRange, ref ITfRange pCompositionRange, out BOOL pfDeleteResultRange) mut => VT.OnTransitoryExtensionUpdated(ref this, ref pic, ecReadOnly, ref pResultRange, ref pCompositionRange, out pfDeleteResultRange);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfTransitoryExtensionSink self, ref ITfContext pic, uint32 ecReadOnly, ref ITfRange pResultRange, ref ITfRange pCompositionRange, out BOOL pfDeleteResultRange) OnTransitoryExtensionUpdated;
			}
		}
		[CRepr]
		public struct ITfToolTipUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x52b18b5c, 0x555d, 0x46b2, 0xb0, 0x0a, 0xfa, 0x68, 0x01, 0x44, 0xfb, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(out BSTR pstr) mut => VT.GetString(ref this, out pstr);

			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfToolTipUIElement self, out BSTR pstr) GetString;
			}
		}
		[CRepr]
		public struct ITfReverseConversionList : IUnknown
		{
			public const new Guid IID = .(0x151d69f0, 0x86f4, 0x4674, 0xb7, 0x21, 0x56, 0x91, 0x1e, 0x79, 0x7f, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLength(out uint32 puIndex) mut => VT.GetLength(ref this, out puIndex);
			public HRESULT GetString(uint32 uIndex, out BSTR pbstr) mut => VT.GetString(ref this, uIndex, out pbstr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReverseConversionList self, out uint32 puIndex) GetLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReverseConversionList self, uint32 uIndex, out BSTR pbstr) GetString;
			}
		}
		[CRepr]
		public struct ITfReverseConversion : IUnknown
		{
			public const new Guid IID = .(0xa415e162, 0x157d, 0x417d, 0x8a, 0x8c, 0x0a, 0xb2, 0x6c, 0x7d, 0x27, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoReverseConversion(PWSTR lpstr, out ITfReverseConversionList* ppList) mut => VT.DoReverseConversion(ref this, lpstr, out ppList);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReverseConversion self, PWSTR lpstr, out ITfReverseConversionList* ppList) DoReverseConversion;
			}
		}
		[CRepr]
		public struct ITfReverseConversionMgr : IUnknown
		{
			public const new Guid IID = .(0xb643c236, 0xc493, 0x41b6, 0xab, 0xb3, 0x69, 0x24, 0x12, 0x77, 0x5c, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReverseConversion(uint16 langid, in Guid guidProfile, uint32 dwflag, out ITfReverseConversion* ppReverseConversion) mut => VT.GetReverseConversion(ref this, langid, guidProfile, dwflag, out ppReverseConversion);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfReverseConversionMgr self, uint16 langid, in Guid guidProfile, uint32 dwflag, out ITfReverseConversion* ppReverseConversion) GetReverseConversion;
			}
		}
		[CRepr]
		public struct ITfCandidateString : IUnknown
		{
			public const new Guid IID = .(0x581f317e, 0xfd9d, 0x443f, 0xb9, 0x72, 0xed, 0x00, 0x46, 0x7c, 0x5d, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(out BSTR pbstr) mut => VT.GetString(ref this, out pbstr);
			public HRESULT GetIndex(out uint32 pnIndex) mut => VT.GetIndex(ref this, out pnIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateString self, out BSTR pbstr) GetString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateString self, out uint32 pnIndex) GetIndex;
			}
		}
		[CRepr]
		public struct IEnumTfCandidates : IUnknown
		{
			public const new Guid IID = .(0xdefb1926, 0x6c80, 0x4ce8, 0x87, 0xd4, 0xd6, 0xb7, 0x2b, 0x81, 0x2b, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfCandidates* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, ITfCandidateString** ppCand, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, ppCand, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfCandidates self, out IEnumTfCandidates* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfCandidates self, uint32 ulCount, ITfCandidateString** ppCand, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfCandidates self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfCandidates self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCandidateList : IUnknown
		{
			public const new Guid IID = .(0xa3ad50fb, 0x9bdb, 0x49e3, 0xa8, 0x43, 0x6c, 0x76, 0x52, 0x0f, 0xbf, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumCandidates(out IEnumTfCandidates* ppEnum) mut => VT.EnumCandidates(ref this, out ppEnum);
			public HRESULT GetCandidate(uint32 nIndex, out ITfCandidateString* ppCand) mut => VT.GetCandidate(ref this, nIndex, out ppCand);
			public HRESULT GetCandidateNum(out uint32 pnCnt) mut => VT.GetCandidateNum(ref this, out pnCnt);
			public HRESULT SetResult(uint32 nIndex, TfCandidateResult imcr) mut => VT.SetResult(ref this, nIndex, imcr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateList self, out IEnumTfCandidates* ppEnum) EnumCandidates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateList self, uint32 nIndex, out ITfCandidateString* ppCand) GetCandidate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateList self, out uint32 pnCnt) GetCandidateNum;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfCandidateList self, uint32 nIndex, TfCandidateResult imcr) SetResult;
			}
		}
		[CRepr]
		public struct ITfFnReconversion : ITfFunction
		{
			public const new Guid IID = .(0x4cea93c0, 0x0a58, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfConvertable) mut => VT.QueryRange(ref this, ref pRange, out ppNewRange, out pfConvertable);
			public HRESULT GetReconversion(ref ITfRange pRange, out ITfCandidateList* ppCandList) mut => VT.GetReconversion(ref this, ref pRange, out ppCandList);
			public HRESULT Reconvert(ref ITfRange pRange) mut => VT.Reconvert(ref this, ref pRange);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnReconversion self, ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfConvertable) QueryRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnReconversion self, ref ITfRange pRange, out ITfCandidateList* ppCandList) GetReconversion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnReconversion self, ref ITfRange pRange) Reconvert;
			}
		}
		[CRepr]
		public struct ITfFnPlayBack : ITfFunction
		{
			public const new Guid IID = .(0xa3a416a4, 0x0f64, 0x11d3, 0xb5, 0xb7, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfPlayable) mut => VT.QueryRange(ref this, ref pRange, out ppNewRange, out pfPlayable);
			public HRESULT Play(ref ITfRange pRange) mut => VT.Play(ref this, ref pRange);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnPlayBack self, ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfPlayable) QueryRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnPlayBack self, ref ITfRange pRange) Play;
			}
		}
		[CRepr]
		public struct ITfFnLangProfileUtil : ITfFunction
		{
			public const new Guid IID = .(0xa87a8574, 0xa6c1, 0x4e15, 0x99, 0xf0, 0x3d, 0x39, 0x65, 0xf5, 0x48, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterActiveProfiles() mut => VT.RegisterActiveProfiles(ref this);
			public HRESULT IsProfileAvailableForLang(uint16 langid, out BOOL pfAvailable) mut => VT.IsProfileAvailableForLang(ref this, langid, out pfAvailable);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLangProfileUtil self) RegisterActiveProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLangProfileUtil self, uint16 langid, out BOOL pfAvailable) IsProfileAvailableForLang;
			}
		}
		[CRepr]
		public struct ITfFnConfigure : ITfFunction
		{
			public const new Guid IID = .(0x88f567c6, 0x1757, 0x49f8, 0xa1, 0xb2, 0x89, 0x23, 0x4c, 0x1e, 0xef, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, in Guid rguidProfile) mut => VT.Show(ref this, hwndParent, langid, rguidProfile);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnConfigure self, HWND hwndParent, uint16 langid, in Guid rguidProfile) Show;
			}
		}
		[CRepr]
		public struct ITfFnConfigureRegisterWord : ITfFunction
		{
			public const new Guid IID = .(0xbb95808a, 0x6d8f, 0x4bca, 0x84, 0x00, 0x53, 0x90, 0xb5, 0x86, 0xae, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, in Guid rguidProfile, BSTR bstrRegistered) mut => VT.Show(ref this, hwndParent, langid, rguidProfile, bstrRegistered);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnConfigureRegisterWord self, HWND hwndParent, uint16 langid, in Guid rguidProfile, BSTR bstrRegistered) Show;
			}
		}
		[CRepr]
		public struct ITfFnConfigureRegisterEudc : ITfFunction
		{
			public const new Guid IID = .(0xb5e26ff5, 0xd7ad, 0x4304, 0x91, 0x3f, 0x21, 0xa2, 0xed, 0x95, 0xa1, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, in Guid rguidProfile, BSTR bstrRegistered) mut => VT.Show(ref this, hwndParent, langid, rguidProfile, bstrRegistered);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnConfigureRegisterEudc self, HWND hwndParent, uint16 langid, in Guid rguidProfile, BSTR bstrRegistered) Show;
			}
		}
		[CRepr]
		public struct ITfFnShowHelp : ITfFunction
		{
			public const new Guid IID = .(0x5ab1d30c, 0x094d, 0x4c29, 0x8e, 0xa5, 0x0b, 0xf5, 0x9b, 0xe8, 0x7b, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent) mut => VT.Show(ref this, hwndParent);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnShowHelp self, HWND hwndParent) Show;
			}
		}
		[CRepr]
		public struct ITfFnBalloon : IUnknown
		{
			public const new Guid IID = .(0x3bab89e4, 0x5fbe, 0x45f4, 0xa5, 0xbc, 0xdc, 0xa3, 0x6a, 0xd2, 0x25, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateBalloon(TfLBBalloonStyle style, char16* pch, uint32 cch) mut => VT.UpdateBalloon(ref this, style, pch, cch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnBalloon self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
			}
		}
		[CRepr]
		public struct ITfFnGetSAPIObject : ITfFunction
		{
			public const new Guid IID = .(0x5c0ab7ea, 0x167d, 0x4f59, 0xbf, 0xb5, 0x46, 0x93, 0x75, 0x5e, 0x90, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(TfSapiObject sObj, out IUnknown* ppunk) mut => VT.Get(ref this, sObj, out ppunk);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnGetSAPIObject self, TfSapiObject sObj, out IUnknown* ppunk) Get;
			}
		}
		[CRepr]
		public struct ITfFnPropertyUIStatus : ITfFunction
		{
			public const new Guid IID = .(0x2338ac6e, 0x2b9d, 0x44c0, 0xa7, 0x5e, 0xee, 0x64, 0xf2, 0x56, 0xb3, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(in Guid refguidProp, out uint32 pdw) mut => VT.GetStatus(ref this, refguidProp, out pdw);
			public HRESULT SetStatus(in Guid refguidProp, uint32 dw) mut => VT.SetStatus(ref this, refguidProp, dw);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnPropertyUIStatus self, in Guid refguidProp, out uint32 pdw) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnPropertyUIStatus self, in Guid refguidProp, uint32 dw) SetStatus;
			}
		}
		[CRepr]
		public struct IEnumSpeechCommands : IUnknown
		{
			public const new Guid IID = .(0x8c5dac4f, 0x083c, 0x4b85, 0xa4, 0xc9, 0x71, 0x74, 0x60, 0x48, 0xad, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumSpeechCommands* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, uint16** pSpCmds, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, pSpCmds, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpeechCommands self, out IEnumSpeechCommands* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpeechCommands self, uint32 ulCount, uint16** pSpCmds, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpeechCommands self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSpeechCommands self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ISpeechCommandProvider : IUnknown
		{
			public const new Guid IID = .(0x38e09d4c, 0x586d, 0x435a, 0xb5, 0x92, 0xc8, 0xa8, 0x66, 0x91, 0xde, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumSpeechCommands(uint16 langid, out IEnumSpeechCommands* ppEnum) mut => VT.EnumSpeechCommands(ref this, langid, out ppEnum);
			public HRESULT ProcessCommand(char16* pszCommand, uint32 cch, uint16 langid) mut => VT.ProcessCommand(ref this, pszCommand, cch, langid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechCommandProvider self, uint16 langid, out IEnumSpeechCommands* ppEnum) EnumSpeechCommands;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ISpeechCommandProvider self, char16* pszCommand, uint32 cch, uint16 langid) ProcessCommand;
			}
		}
		[CRepr]
		public struct ITfFnCustomSpeechCommand : ITfFunction
		{
			public const new Guid IID = .(0xfca6c349, 0xa12f, 0x43a3, 0x8d, 0xd6, 0x5a, 0x5a, 0x42, 0x82, 0x57, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSpeechCommandProvider(ref IUnknown pspcmdProvider) mut => VT.SetSpeechCommandProvider(ref this, ref pspcmdProvider);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnCustomSpeechCommand self, ref IUnknown pspcmdProvider) SetSpeechCommandProvider;
			}
		}
		[CRepr]
		public struct ITfFnLMProcessor : ITfFunction
		{
			public const new Guid IID = .(0x7afbf8e7, 0xac4b, 0x4082, 0xb0, 0x58, 0x89, 0x08, 0x99, 0xd3, 0xa0, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfAccepted) mut => VT.QueryRange(ref this, ref pRange, out ppNewRange, out pfAccepted);
			public HRESULT QueryLangID(uint16 langid, out BOOL pfAccepted) mut => VT.QueryLangID(ref this, langid, out pfAccepted);
			public HRESULT GetReconversion(ref ITfRange pRange, out ITfCandidateList* ppCandList) mut => VT.GetReconversion(ref this, ref pRange, out ppCandList);
			public HRESULT Reconvert(ref ITfRange pRange) mut => VT.Reconvert(ref this, ref pRange);
			public HRESULT QueryKey(BOOL fUp, WPARAM vKey, LPARAM lparamKeydata, out BOOL pfInterested) mut => VT.QueryKey(ref this, fUp, vKey, lparamKeydata, out pfInterested);
			public HRESULT InvokeKey(BOOL fUp, WPARAM vKey, LPARAM lparamKeyData) mut => VT.InvokeKey(ref this, fUp, vKey, lparamKeyData);
			public HRESULT InvokeFunc(ref ITfContext pic, in Guid refguidFunc) mut => VT.InvokeFunc(ref this, ref pic, refguidFunc);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, ref ITfRange pRange, out ITfRange* ppNewRange, out BOOL pfAccepted) QueryRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, uint16 langid, out BOOL pfAccepted) QueryLangID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, ref ITfRange pRange, out ITfCandidateList* ppCandList) GetReconversion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, ref ITfRange pRange) Reconvert;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, BOOL fUp, WPARAM vKey, LPARAM lparamKeydata, out BOOL pfInterested) QueryKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, BOOL fUp, WPARAM vKey, LPARAM lparamKeyData) InvokeKey;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMProcessor self, ref ITfContext pic, in Guid refguidFunc) InvokeFunc;
			}
		}
		[CRepr]
		public struct ITfFnLMInternal : ITfFnLMProcessor
		{
			public const new Guid IID = .(0x04b825b1, 0xac9a, 0x4f7b, 0xb5, 0xad, 0xc7, 0x16, 0x8f, 0x1e, 0xe4, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessLattice(ref ITfRange pRange) mut => VT.ProcessLattice(ref this, ref pRange);

			[CRepr]
			public struct VTable : ITfFnLMProcessor.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnLMInternal self, ref ITfRange pRange) ProcessLattice;
			}
		}
		[CRepr]
		public struct IEnumTfLatticeElements : IUnknown
		{
			public const new Guid IID = .(0x56988052, 0x47da, 0x4a05, 0x91, 0x1a, 0xe3, 0xd9, 0x41, 0xf1, 0x71, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(out IEnumTfLatticeElements* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Next(uint32 ulCount, TF_LMLATTELEMENT* rgsElements, out uint32 pcFetched) mut => VT.Next(ref this, ulCount, rgsElements, out pcFetched);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Skip(uint32 ulCount) mut => VT.Skip(ref this, ulCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLatticeElements self, out IEnumTfLatticeElements* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLatticeElements self, uint32 ulCount, TF_LMLATTELEMENT* rgsElements, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLatticeElements self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTfLatticeElements self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLMLattice : IUnknown
		{
			public const new Guid IID = .(0xd4236675, 0xa5bf, 0x4570, 0x9d, 0x42, 0x5d, 0x6d, 0x7b, 0x02, 0xd5, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryType(in Guid rguidType, out BOOL pfSupported) mut => VT.QueryType(ref this, rguidType, out pfSupported);
			public HRESULT EnumLatticeElements(uint32 dwFrameStart, in Guid rguidType, out IEnumTfLatticeElements* ppEnum) mut => VT.EnumLatticeElements(ref this, dwFrameStart, rguidType, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLMLattice self, in Guid rguidType, out BOOL pfSupported) QueryType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfLMLattice self, uint32 dwFrameStart, in Guid rguidType, out IEnumTfLatticeElements* ppEnum) EnumLatticeElements;
			}
		}
		[CRepr]
		public struct ITfFnAdviseText : ITfFunction
		{
			public const new Guid IID = .(0x3527268b, 0x7d53, 0x4dd9, 0x92, 0xb7, 0x72, 0x96, 0xae, 0x46, 0x12, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextUpdate(ref ITfRange pRange, char16* pchText, int32 cch) mut => VT.OnTextUpdate(ref this, ref pRange, pchText, cch);
			public HRESULT OnLatticeUpdate(ref ITfRange pRange, ref ITfLMLattice pLattice) mut => VT.OnLatticeUpdate(ref this, ref pRange, ref pLattice);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnAdviseText self, ref ITfRange pRange, char16* pchText, int32 cch) OnTextUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnAdviseText self, ref ITfRange pRange, ref ITfLMLattice pLattice) OnLatticeUpdate;
			}
		}
		[CRepr]
		public struct ITfFnSearchCandidateProvider : ITfFunction
		{
			public const new Guid IID = .(0x87a2ad8f, 0xf27b, 0x4920, 0x85, 0x01, 0x67, 0x60, 0x22, 0x80, 0x17, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSearchCandidates(BSTR bstrQuery, BSTR bstrApplicationId, out ITfCandidateList* pplist) mut => VT.GetSearchCandidates(ref this, bstrQuery, bstrApplicationId, out pplist);
			public HRESULT SetResult(BSTR bstrQuery, BSTR bstrApplicationID, BSTR bstrResult) mut => VT.SetResult(ref this, bstrQuery, bstrApplicationID, bstrResult);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnSearchCandidateProvider self, BSTR bstrQuery, BSTR bstrApplicationId, out ITfCandidateList* pplist) GetSearchCandidates;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnSearchCandidateProvider self, BSTR bstrQuery, BSTR bstrApplicationID, BSTR bstrResult) SetResult;
			}
		}
		[CRepr]
		public struct ITfIntegratableCandidateListUIElement : IUnknown
		{
			public const new Guid IID = .(0xc7a6f54f, 0xb180, 0x416f, 0xb2, 0xbf, 0x7b, 0xf2, 0xe4, 0x68, 0x3d, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIntegrationStyle(Guid guidIntegrationStyle) mut => VT.SetIntegrationStyle(ref this, guidIntegrationStyle);
			public HRESULT GetSelectionStyle(out TfIntegratableCandidateListSelectionStyle ptfSelectionStyle) mut => VT.GetSelectionStyle(ref this, out ptfSelectionStyle);
			public HRESULT OnKeyDown(WPARAM wParam, LPARAM lParam, out BOOL pfEaten) mut => VT.OnKeyDown(ref this, wParam, lParam, out pfEaten);
			public HRESULT ShowCandidateNumbers(out BOOL pfShow) mut => VT.ShowCandidateNumbers(ref this, out pfShow);
			public HRESULT FinalizeExactCompositionString() mut => VT.FinalizeExactCompositionString(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfIntegratableCandidateListUIElement self, Guid guidIntegrationStyle) SetIntegrationStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfIntegratableCandidateListUIElement self, out TfIntegratableCandidateListSelectionStyle ptfSelectionStyle) GetSelectionStyle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfIntegratableCandidateListUIElement self, WPARAM wParam, LPARAM lParam, out BOOL pfEaten) OnKeyDown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfIntegratableCandidateListUIElement self, out BOOL pfShow) ShowCandidateNumbers;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfIntegratableCandidateListUIElement self) FinalizeExactCompositionString;
			}
		}
		[CRepr]
		public struct ITfFnGetPreferredTouchKeyboardLayout : ITfFunction
		{
			public const new Guid IID = .(0x5f309a41, 0x590a, 0x4acc, 0xa9, 0x7f, 0xd8, 0xef, 0xff, 0x13, 0xfd, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLayout(out TKBLayoutType pTKBLayoutType, ref uint16 pwPreferredLayoutId) mut => VT.GetLayout(ref this, out pTKBLayoutType, ref pwPreferredLayoutId);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnGetPreferredTouchKeyboardLayout self, out TKBLayoutType pTKBLayoutType, ref uint16 pwPreferredLayoutId) GetLayout;
			}
		}
		[CRepr]
		public struct ITfFnGetLinguisticAlternates : ITfFunction
		{
			public const new Guid IID = .(0xea163ce2, 0x7a65, 0x4506, 0x82, 0xa3, 0xc5, 0x28, 0x21, 0x5d, 0xa6, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlternates(ref ITfRange pRange, out ITfCandidateList* ppCandidateList) mut => VT.GetAlternates(ref this, ref pRange, out ppCandidateList);

			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfFnGetLinguisticAlternates self, ref ITfRange pRange, out ITfCandidateList* ppCandidateList) GetAlternates;
			}
		}
		[CRepr]
		public struct IUIManagerEventSink : IUnknown
		{
			public const new Guid IID = .(0xcd91d690, 0xa7e8, 0x4265, 0x9b, 0x38, 0x8b, 0xb3, 0xbb, 0xab, 0xa7, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowOpening(ref RECT prcBounds) mut => VT.OnWindowOpening(ref this, ref prcBounds);
			public HRESULT OnWindowOpened(ref RECT prcBounds) mut => VT.OnWindowOpened(ref this, ref prcBounds);
			public HRESULT OnWindowUpdating(ref RECT prcUpdatedBounds) mut => VT.OnWindowUpdating(ref this, ref prcUpdatedBounds);
			public HRESULT OnWindowUpdated(ref RECT prcUpdatedBounds) mut => VT.OnWindowUpdated(ref this, ref prcUpdatedBounds);
			public HRESULT OnWindowClosing() mut => VT.OnWindowClosing(ref this);
			public HRESULT OnWindowClosed() mut => VT.OnWindowClosed(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self, ref RECT prcBounds) OnWindowOpening;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self, ref RECT prcBounds) OnWindowOpened;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self, ref RECT prcUpdatedBounds) OnWindowUpdating;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self, ref RECT prcUpdatedBounds) OnWindowUpdated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self) OnWindowClosing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIManagerEventSink self) OnWindowClosed;
			}
		}
		[CRepr]
		public struct ITfInputScope : IUnknown
		{
			public const new Guid IID = .(0xfde1eaee, 0x6924, 0x4cdf, 0x91, 0xe7, 0xda, 0x38, 0xcf, 0xf5, 0x55, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputScopes(InputScope** pprgInputScopes, out uint32 pcCount) mut => VT.GetInputScopes(ref this, pprgInputScopes, out pcCount);
			public HRESULT GetPhrase(BSTR** ppbstrPhrases, out uint32 pcCount) mut => VT.GetPhrase(ref this, ppbstrPhrases, out pcCount);
			public HRESULT GetRegularExpression(out BSTR pbstrRegExp) mut => VT.GetRegularExpression(ref this, out pbstrRegExp);
			public HRESULT GetSRGS(out BSTR pbstrSRGS) mut => VT.GetSRGS(ref this, out pbstrSRGS);
			public HRESULT GetXML(out BSTR pbstrXML) mut => VT.GetXML(ref this, out pbstrXML);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope self, InputScope** pprgInputScopes, out uint32 pcCount) GetInputScopes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope self, BSTR** ppbstrPhrases, out uint32 pcCount) GetPhrase;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope self, out BSTR pbstrRegExp) GetRegularExpression;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope self, out BSTR pbstrSRGS) GetSRGS;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope self, out BSTR pbstrXML) GetXML;
			}
		}
		[CRepr]
		public struct ITfInputScope2 : ITfInputScope
		{
			public const new Guid IID = .(0x5731eaa0, 0x6bc2, 0x4681, 0xa5, 0x32, 0x92, 0xfb, 0xb7, 0x4d, 0x7c, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumWordList(out IEnumString* ppEnumString) mut => VT.EnumWordList(ref this, out ppEnumString);

			[CRepr]
			public struct VTable : ITfInputScope.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfInputScope2 self, out IEnumString* ppEnumString) EnumWordList;
			}
		}
		[CRepr]
		public struct ITfMSAAControl : IUnknown
		{
			public const new Guid IID = .(0xb5f8fb3b, 0x393f, 0x4f7c, 0x84, 0xcb, 0x50, 0x49, 0x24, 0xc2, 0x70, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SystemEnableMSAA() mut => VT.SystemEnableMSAA(ref this);
			public HRESULT SystemDisableMSAA() mut => VT.SystemDisableMSAA(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMSAAControl self) SystemEnableMSAA;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfMSAAControl self) SystemDisableMSAA;
			}
		}
		[CRepr]
		public struct IInternalDocWrap : IUnknown
		{
			public const new Guid IID = .(0xe1aa6466, 0x9db4, 0x40ba, 0xbe, 0x03, 0x77, 0xc3, 0x8e, 0x8e, 0x60, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyRevoke() mut => VT.NotifyRevoke(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IInternalDocWrap self) NotifyRevoke;
			}
		}
		[CRepr]
		public struct ITextStoreACPEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc2, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollToRect(int32 acpStart, int32 acpEnd, RECT rc, uint32 dwPosition) mut => VT.ScrollToRect(ref this, acpStart, acpEnd, rc, dwPosition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPEx self, int32 acpStart, int32 acpEnd, RECT rc, uint32 dwPosition) ScrollToRect;
			}
		}
		[CRepr]
		public struct ITextStoreAnchorEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc1, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollToRect(ref IAnchor pStart, ref IAnchor pEnd, RECT rc, uint32 dwPosition) mut => VT.ScrollToRect(ref this, ref pStart, ref pEnd, rc, dwPosition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreAnchorEx self, ref IAnchor pStart, ref IAnchor pEnd, RECT rc, uint32 dwPosition) ScrollToRect;
			}
		}
		[CRepr]
		public struct ITextStoreACPSinkEx : ITextStoreACPSink
		{
			public const new Guid IID = .(0x2bdf9464, 0x41e2, 0x43e3, 0x95, 0x0c, 0xa6, 0x86, 0x5b, 0xa2, 0x5c, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDisconnect() mut => VT.OnDisconnect(ref this);

			[CRepr]
			public struct VTable : ITextStoreACPSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreACPSinkEx self) OnDisconnect;
			}
		}
		[CRepr]
		public struct ITextStoreSinkAnchorEx : ITextStoreAnchorSink
		{
			public const new Guid IID = .(0x25642426, 0x028d, 0x4474, 0x97, 0x7b, 0x11, 0x1b, 0xb1, 0x14, 0xfe, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDisconnect() mut => VT.OnDisconnect(ref this);

			[CRepr]
			public struct VTable : ITextStoreAnchorSink.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITextStoreSinkAnchorEx self) OnDisconnect;
			}
		}
		[CRepr]
		public struct IAccDictionary : IUnknown
		{
			public const new Guid IID = .(0x1dc4cb5f, 0xd737, 0x474d, 0xad, 0xe9, 0x5c, 0xcf, 0xc9, 0xbc, 0x1c, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocalizedString(in Guid Term, uint32 lcid, out BSTR pResult, out uint32 plcid) mut => VT.GetLocalizedString(ref this, Term, lcid, out pResult, out plcid);
			public HRESULT GetParentTerm(in Guid Term, out Guid pParentTerm) mut => VT.GetParentTerm(ref this, Term, out pParentTerm);
			public HRESULT GetMnemonicString(in Guid Term, out BSTR pResult) mut => VT.GetMnemonicString(ref this, Term, out pResult);
			public HRESULT LookupMnemonicTerm(BSTR bstrMnemonic, out Guid pTerm) mut => VT.LookupMnemonicTerm(ref this, bstrMnemonic, out pTerm);
			public HRESULT ConvertValueToString(in Guid Term, uint32 lcid, VARIANT varValue, out BSTR pbstrResult, out uint32 plcid) mut => VT.ConvertValueToString(ref this, Term, lcid, varValue, out pbstrResult, out plcid);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccDictionary self, in Guid Term, uint32 lcid, out BSTR pResult, out uint32 plcid) GetLocalizedString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccDictionary self, in Guid Term, out Guid pParentTerm) GetParentTerm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccDictionary self, in Guid Term, out BSTR pResult) GetMnemonicString;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccDictionary self, BSTR bstrMnemonic, out Guid pTerm) LookupMnemonicTerm;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccDictionary self, in Guid Term, uint32 lcid, VARIANT varValue, out BSTR pbstrResult, out uint32 plcid) ConvertValueToString;
			}
		}
		[CRepr]
		public struct IVersionInfo : IUnknown
		{
			public const new Guid IID = .(0x401518ec, 0xdb00, 0x4611, 0x9b, 0x29, 0x2a, 0x0e, 0x4b, 0x9a, 0xfa, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubcomponentCount(uint32 ulSub, out uint32 ulCount) mut => VT.GetSubcomponentCount(ref this, ulSub, out ulCount);
			public HRESULT GetImplementationID(uint32 ulSub, out Guid implid) mut => VT.GetImplementationID(ref this, ulSub, out implid);
			public HRESULT GetBuildVersion(uint32 ulSub, out uint32 pdwMajor, out uint32 pdwMinor) mut => VT.GetBuildVersion(ref this, ulSub, out pdwMajor, out pdwMinor);
			public HRESULT GetComponentDescription(uint32 ulSub, out BSTR pImplStr) mut => VT.GetComponentDescription(ref this, ulSub, out pImplStr);
			public HRESULT GetInstanceDescription(uint32 ulSub, out BSTR pImplStr) mut => VT.GetInstanceDescription(ref this, ulSub, out pImplStr);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVersionInfo self, uint32 ulSub, out uint32 ulCount) GetSubcomponentCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVersionInfo self, uint32 ulSub, out Guid implid) GetImplementationID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVersionInfo self, uint32 ulSub, out uint32 pdwMajor, out uint32 pdwMinor) GetBuildVersion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVersionInfo self, uint32 ulSub, out BSTR pImplStr) GetComponentDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IVersionInfo self, uint32 ulSub, out BSTR pImplStr) GetInstanceDescription;
			}
		}
		[CRepr]
		public struct ICoCreateLocally : IUnknown
		{
			public const new Guid IID = .(0x03de00aa, 0xf272, 0x41e3, 0x99, 0xcb, 0x03, 0xc5, 0xe8, 0x11, 0x4e, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CoCreateLocally(in Guid rclsid, uint32 dwClsContext, in Guid riid, out IUnknown* punk, in Guid riidParam, ref IUnknown punkParam, VARIANT varParam) mut => VT.CoCreateLocally(ref this, rclsid, dwClsContext, riid, out punk, riidParam, ref punkParam, varParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoCreateLocally self, in Guid rclsid, uint32 dwClsContext, in Guid riid, out IUnknown* punk, in Guid riidParam, ref IUnknown punkParam, VARIANT varParam) CoCreateLocally;
			}
		}
		[CRepr]
		public struct ICoCreatedLocally : IUnknown
		{
			public const new Guid IID = .(0x0a53eb6c, 0x1908, 0x4742, 0x8c, 0xff, 0x2c, 0xee, 0x2e, 0x93, 0xf9, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LocalInit(ref IUnknown punkLocalObject, in Guid riidParam, ref IUnknown punkParam, VARIANT varParam) mut => VT.LocalInit(ref this, ref punkLocalObject, riidParam, ref punkParam, varParam);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ICoCreatedLocally self, ref IUnknown punkLocalObject, in Guid riidParam, ref IUnknown punkParam, VARIANT varParam) LocalInit;
			}
		}
		[CRepr]
		public struct IAccStore : IUnknown
		{
			public const new Guid IID = .(0xe2cd4a63, 0x2b72, 0x4d48, 0xb7, 0x39, 0x95, 0xe4, 0x76, 0x51, 0x95, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(in Guid riid, ref IUnknown punk) mut => VT.Register(ref this, riid, ref punk);
			public HRESULT Unregister(ref IUnknown punk) mut => VT.Unregister(ref this, ref punk);
			public HRESULT GetDocuments(out IEnumUnknown* enumUnknown) mut => VT.GetDocuments(ref this, out enumUnknown);
			public HRESULT LookupByHWND(HWND hWnd, in Guid riid, out IUnknown* ppunk) mut => VT.LookupByHWND(ref this, hWnd, riid, out ppunk);
			public HRESULT LookupByPoint(POINT pt, in Guid riid, out IUnknown* ppunk) mut => VT.LookupByPoint(ref this, pt, riid, out ppunk);
			public HRESULT OnDocumentFocus(ref IUnknown punk) mut => VT.OnDocumentFocus(ref this, ref punk);
			public HRESULT GetFocused(in Guid riid, out IUnknown* ppunk) mut => VT.GetFocused(ref this, riid, out ppunk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, in Guid riid, ref IUnknown punk) Register;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, ref IUnknown punk) Unregister;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, out IEnumUnknown* enumUnknown) GetDocuments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, HWND hWnd, in Guid riid, out IUnknown* ppunk) LookupByHWND;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, POINT pt, in Guid riid, out IUnknown* ppunk) LookupByPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, ref IUnknown punk) OnDocumentFocus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccStore self, in Guid riid, out IUnknown* ppunk) GetFocused;
			}
		}
		[CRepr]
		public struct IAccServerDocMgr : IUnknown
		{
			public const new Guid IID = .(0xad7c73cf, 0x6dd5, 0x4855, 0xab, 0xc2, 0xb0, 0x4b, 0xad, 0x5b, 0x91, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewDocument(in Guid riid, ref IUnknown punk) mut => VT.NewDocument(ref this, riid, ref punk);
			public HRESULT RevokeDocument(ref IUnknown punk) mut => VT.RevokeDocument(ref this, ref punk);
			public HRESULT OnDocumentFocus(ref IUnknown punk) mut => VT.OnDocumentFocus(ref this, ref punk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccServerDocMgr self, in Guid riid, ref IUnknown punk) NewDocument;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccServerDocMgr self, ref IUnknown punk) RevokeDocument;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccServerDocMgr self, ref IUnknown punk) OnDocumentFocus;
			}
		}
		[CRepr]
		public struct IAccClientDocMgr : IUnknown
		{
			public const new Guid IID = .(0x4c896039, 0x7b6d, 0x49e6, 0xa8, 0xc1, 0x45, 0x11, 0x6a, 0x98, 0x29, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocuments(out IEnumUnknown* enumUnknown) mut => VT.GetDocuments(ref this, out enumUnknown);
			public HRESULT LookupByHWND(HWND hWnd, in Guid riid, out IUnknown* ppunk) mut => VT.LookupByHWND(ref this, hWnd, riid, out ppunk);
			public HRESULT LookupByPoint(POINT pt, in Guid riid, out IUnknown* ppunk) mut => VT.LookupByPoint(ref this, pt, riid, out ppunk);
			public HRESULT GetFocused(in Guid riid, out IUnknown* ppunk) mut => VT.GetFocused(ref this, riid, out ppunk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccClientDocMgr self, out IEnumUnknown* enumUnknown) GetDocuments;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccClientDocMgr self, HWND hWnd, in Guid riid, out IUnknown* ppunk) LookupByHWND;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccClientDocMgr self, POINT pt, in Guid riid, out IUnknown* ppunk) LookupByPoint;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccClientDocMgr self, in Guid riid, out IUnknown* ppunk) GetFocused;
			}
		}
		[CRepr]
		public struct IDocWrap : IUnknown
		{
			public const new Guid IID = .(0xdcd285fe, 0x0be0, 0x43bd, 0x99, 0xc9, 0xaa, 0xae, 0xc5, 0x13, 0xc5, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDoc(in Guid riid, ref IUnknown punk) mut => VT.SetDoc(ref this, riid, ref punk);
			public HRESULT GetWrappedDoc(in Guid riid, out IUnknown* ppunk) mut => VT.GetWrappedDoc(ref this, riid, out ppunk);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDocWrap self, in Guid riid, ref IUnknown punk) SetDoc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDocWrap self, in Guid riid, out IUnknown* ppunk) GetWrappedDoc;
			}
		}
		[CRepr]
		public struct IClonableWrapper : IUnknown
		{
			public const new Guid IID = .(0xb33e75ff, 0xe84c, 0x4dca, 0xa2, 0x5c, 0x33, 0xb8, 0xdc, 0x00, 0x33, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CloneNewWrapper(in Guid riid, void** ppv) mut => VT.CloneNewWrapper(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IClonableWrapper self, in Guid riid, void** ppv) CloneNewWrapper;
			}
		}
		[CRepr]
		public struct ITfSpeechUIServer : IUnknown
		{
			public const new Guid IID = .(0x90e9a944, 0x9244, 0x489f, 0xa7, 0x8f, 0xde, 0x67, 0xaf, 0xc0, 0x13, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut => VT.Initialize(ref this);
			public HRESULT ShowUI(BOOL fShow) mut => VT.ShowUI(ref this, fShow);
			public HRESULT UpdateBalloon(TfLBBalloonStyle style, char16* pch, uint32 cch) mut => VT.UpdateBalloon(ref this, style, pch, cch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSpeechUIServer self) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSpeechUIServer self, BOOL fShow) ShowUI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref ITfSpeechUIServer self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
			}
		}
		
		// --- Functions ---
		
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DoMsCtfMonitor(uint32 dwFlags, HANDLE hEventForServiceStop);
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitLocalMsCtfMonitor(uint32 dwFlags);
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UninitLocalMsCtfMonitor();
	}
}
