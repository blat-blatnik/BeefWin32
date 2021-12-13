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
		
		[AllowDuplicates]
		public enum LANG_BAR_ITEM_ICON_MODE_FLAGS : uint32
		{
			TF_DTLBI_NONE = 0,
			TF_DTLBI_USEPROFILEICON = 1,
		}
		[AllowDuplicates]
		public enum TEXT_STORE_TEXT_CHANGE_FLAGS : uint32
		{
			TS_ST_NONE = 0,
			TS_ST_CORRECTION = 1,
		}
		[AllowDuplicates]
		public enum TEXT_STORE_CHANGE_FLAGS : uint32
		{
			TS_TC_NONE = 0,
			TS_TC_CORRECTION = 1,
		}
		[AllowDuplicates]
		public enum INSERT_TEXT_AT_SELECTION_FLAGS : uint32
		{
			TF_IAS_NOQUERY = 1,
			TF_IAS_QUERYONLY = 2,
			TF_IAS_NO_DEFAULT_COMPOSITION = 2147483648,
		}
		[AllowDuplicates]
		public enum ANCHOR_CHANGE_HISTORY_FLAGS : uint32
		{
			TS_CH_PRECEDING_DEL = 1,
			TS_CH_FOLLOWING_DEL = 2,
		}
		[AllowDuplicates]
		public enum TEXT_STORE_LOCK_FLAGS : uint32
		{
			TS_LF_READ = 2,
			TS_LF_READWRITE = 6,
		}
		[AllowDuplicates]
		public enum GET_TEXT_AND_PROPERTY_UPDATES_FLAGS : uint32
		{
			TF_GTP_NONE = 0,
			TF_GTP_INCL_TEXT = 1,
		}
		[AllowDuplicates]
		public enum TF_CONTEXT_EDIT_CONTEXT_FLAGS : uint32
		{
			TF_ES_ASYNCDONTCARE = 0,
			TF_ES_SYNC = 1,
			TF_ES_READ = 2,
			TF_ES_READWRITE = 6,
			TF_ES_ASYNC = 8,
		}
		[AllowDuplicates]
		public enum TsActiveSelEnd : int32
		{
			TS_AE_NONE = 0,
			TS_AE_START = 1,
			TS_AE_END = 2,
		}
		[AllowDuplicates]
		public enum TsLayoutCode : int32
		{
			TS_LC_CREATE = 0,
			TS_LC_CHANGE = 1,
			TS_LC_DESTROY = 2,
		}
		[AllowDuplicates]
		public enum TsRunType : int32
		{
			TS_RT_PLAIN = 0,
			TS_RT_HIDDEN = 1,
			TS_RT_OPAQUE = 2,
		}
		[AllowDuplicates]
		public enum TsGravity : int32
		{
			TS_GR_BACKWARD = 0,
			TS_GR_FORWARD = 1,
		}
		[AllowDuplicates]
		public enum TsShiftDir : int32
		{
			TS_SD_BACKWARD = 0,
			TS_SD_FORWARD = 1,
		}
		[AllowDuplicates]
		public enum TfLBIClick : int32
		{
			TF_LBI_CLK_RIGHT = 1,
			TF_LBI_CLK_LEFT = 2,
		}
		[AllowDuplicates]
		public enum TfLBBalloonStyle : int32
		{
			TF_LB_BALLOON_RECO = 0,
			TF_LB_BALLOON_SHOW = 1,
			TF_LB_BALLOON_MISS = 2,
		}
		[AllowDuplicates]
		public enum TfAnchor : int32
		{
			TF_ANCHOR_START = 0,
			TF_ANCHOR_END = 1,
		}
		[AllowDuplicates]
		public enum TfActiveSelEnd : int32
		{
			TF_AE_NONE = 0,
			TF_AE_START = 1,
			TF_AE_END = 2,
		}
		[AllowDuplicates]
		public enum TfLayoutCode : int32
		{
			TF_LC_CREATE = 0,
			TF_LC_CHANGE = 1,
			TF_LC_DESTROY = 2,
		}
		[AllowDuplicates]
		public enum TfGravity : int32
		{
			TF_GRAVITY_BACKWARD = 0,
			TF_GRAVITY_FORWARD = 1,
		}
		[AllowDuplicates]
		public enum TfShiftDir : int32
		{
			TF_SD_BACKWARD = 0,
			TF_SD_FORWARD = 1,
		}
		[AllowDuplicates]
		public enum TF_DA_LINESTYLE : int32
		{
			TF_LS_NONE = 0,
			TF_LS_SOLID = 1,
			TF_LS_DOT = 2,
			TF_LS_DASH = 3,
			TF_LS_SQUIGGLE = 4,
		}
		[AllowDuplicates]
		public enum TF_DA_COLORTYPE : int32
		{
			TF_CT_NONE = 0,
			TF_CT_SYSCOLOR = 1,
			TF_CT_COLORREF = 2,
		}
		[AllowDuplicates]
		public enum TF_DA_ATTR_INFO : int32
		{
			TF_ATTR_INPUT = 0,
			TF_ATTR_TARGET_CONVERTED = 1,
			TF_ATTR_CONVERTED = 2,
			TF_ATTR_TARGET_NOTCONVERTED = 3,
			TF_ATTR_INPUT_ERROR = 4,
			TF_ATTR_FIXEDCONVERTED = 5,
			TF_ATTR_OTHER = -1,
		}
		[AllowDuplicates]
		public enum TfCandidateResult : int32
		{
			CAND_FINALIZED = 0,
			CAND_SELECTED = 1,
			CAND_CANCELED = 2,
		}
		[AllowDuplicates]
		public enum TfSapiObject : int32
		{
			GETIF_RESMGR = 0,
			GETIF_RECOCONTEXT = 1,
			GETIF_RECOGNIZER = 2,
			GETIF_VOICE = 3,
			GETIF_DICTGRAM = 4,
			GETIF_RECOGNIZERNOINIT = 5,
		}
		[AllowDuplicates]
		public enum TfIntegratableCandidateListSelectionStyle : int32
		{
			STYLE_ACTIVE_SELECTION = 0,
			STYLE_IMPLIED_SELECTION = 1,
		}
		[AllowDuplicates]
		public enum TKBLayoutType : int32
		{
			TKBLT_UNDEFINED = 0,
			TKBLT_CLASSIC = 1,
			TKBLT_OPTIMIZED = 2,
		}
		[AllowDuplicates]
		public enum InputScope : int32
		{
			IS_DEFAULT = 0,
			IS_URL = 1,
			IS_FILE_FULLFILEPATH = 2,
			IS_FILE_FILENAME = 3,
			IS_EMAIL_USERNAME = 4,
			IS_EMAIL_SMTPEMAILADDRESS = 5,
			IS_LOGINNAME = 6,
			IS_PERSONALNAME_FULLNAME = 7,
			IS_PERSONALNAME_PREFIX = 8,
			IS_PERSONALNAME_GIVENNAME = 9,
			IS_PERSONALNAME_MIDDLENAME = 10,
			IS_PERSONALNAME_SURNAME = 11,
			IS_PERSONALNAME_SUFFIX = 12,
			IS_ADDRESS_FULLPOSTALADDRESS = 13,
			IS_ADDRESS_POSTALCODE = 14,
			IS_ADDRESS_STREET = 15,
			IS_ADDRESS_STATEORPROVINCE = 16,
			IS_ADDRESS_CITY = 17,
			IS_ADDRESS_COUNTRYNAME = 18,
			IS_ADDRESS_COUNTRYSHORTNAME = 19,
			IS_CURRENCY_AMOUNTANDSYMBOL = 20,
			IS_CURRENCY_AMOUNT = 21,
			IS_DATE_FULLDATE = 22,
			IS_DATE_MONTH = 23,
			IS_DATE_DAY = 24,
			IS_DATE_YEAR = 25,
			IS_DATE_MONTHNAME = 26,
			IS_DATE_DAYNAME = 27,
			IS_DIGITS = 28,
			IS_NUMBER = 29,
			IS_ONECHAR = 30,
			IS_PASSWORD = 31,
			IS_TELEPHONE_FULLTELEPHONENUMBER = 32,
			IS_TELEPHONE_COUNTRYCODE = 33,
			IS_TELEPHONE_AREACODE = 34,
			IS_TELEPHONE_LOCALNUMBER = 35,
			IS_TIME_FULLTIME = 36,
			IS_TIME_HOUR = 37,
			IS_TIME_MINORSEC = 38,
			IS_NUMBER_FULLWIDTH = 39,
			IS_ALPHANUMERIC_HALFWIDTH = 40,
			IS_ALPHANUMERIC_FULLWIDTH = 41,
			IS_CURRENCY_CHINESE = 42,
			IS_BOPOMOFO = 43,
			IS_HIRAGANA = 44,
			IS_KATAKANA_HALFWIDTH = 45,
			IS_KATAKANA_FULLWIDTH = 46,
			IS_HANJA = 47,
			IS_HANGUL_HALFWIDTH = 48,
			IS_HANGUL_FULLWIDTH = 49,
			IS_SEARCH = 50,
			IS_FORMULA = 51,
			IS_SEARCH_INCREMENTAL = 52,
			IS_CHINESE_HALFWIDTH = 53,
			IS_CHINESE_FULLWIDTH = 54,
			IS_NATIVE_SCRIPT = 55,
			IS_YOMI = 56,
			IS_TEXT = 57,
			IS_CHAT = 58,
			IS_NAME_OR_PHONENUMBER = 59,
			IS_EMAILNAME_OR_ADDRESS = 60,
			IS_PRIVATE = 61,
			IS_MAPS = 62,
			IS_NUMERIC_PASSWORD = 63,
			IS_NUMERIC_PIN = 64,
			IS_ALPHANUMERIC_PIN = 65,
			IS_ALPHANUMERIC_PIN_SET = 66,
			IS_FORMULA_NUMBER = 67,
			IS_CHAT_WITHOUT_EMOJI = 68,
			IS_PHRASELIST = -1,
			IS_REGULAREXPRESSION = -2,
			IS_SRGS = -3,
			IS_XML = -4,
			IS_ENUMSTRING = -5,
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
			public IAnchor paStart;
			public IAnchor paEnd;
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
			public ITfRange range;
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
			public ITfRange pHaltRange;
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
		
		public struct ITextStoreACP {}
		public struct ITextStoreACP2 {}
		public struct ITextStoreACPSink {}
		public struct IAnchor {}
		public struct ITextStoreAnchor {}
		public struct ITextStoreAnchorSink {}
		public struct ITfLangBarMgr {}
		public struct ITfLangBarEventSink {}
		public struct ITfLangBarItemSink {}
		public struct IEnumTfLangBarItems {}
		public struct ITfLangBarItemMgr {}
		public struct ITfLangBarItem {}
		public struct ITfSystemLangBarItemSink {}
		public struct ITfSystemLangBarItem {}
		public struct ITfSystemLangBarItemText {}
		public struct ITfSystemDeviceTypeLangBarItem {}
		public struct ITfLangBarItemButton {}
		public struct ITfLangBarItemBitmapButton {}
		public struct ITfLangBarItemBitmap {}
		public struct ITfLangBarItemBalloon {}
		public struct ITfMenu {}
		public struct ITfThreadMgr {}
		public struct ITfThreadMgrEx {}
		public struct ITfThreadMgr2 {}
		public struct ITfThreadMgrEventSink {}
		public struct ITfConfigureSystemKeystrokeFeed {}
		public struct IEnumTfDocumentMgrs {}
		public struct ITfDocumentMgr {}
		public struct IEnumTfContexts {}
		public struct ITfCompositionView {}
		public struct IEnumITfCompositionView {}
		public struct ITfComposition {}
		public struct ITfCompositionSink {}
		public struct ITfContextComposition {}
		public struct ITfContextOwnerCompositionServices {}
		public struct ITfContextOwnerCompositionSink {}
		public struct ITfContextView {}
		public struct IEnumTfContextViews {}
		public struct ITfContext {}
		public struct ITfQueryEmbedded {}
		public struct ITfInsertAtSelection {}
		public struct ITfCleanupContextSink {}
		public struct ITfCleanupContextDurationSink {}
		public struct ITfReadOnlyProperty {}
		public struct IEnumTfPropertyValue {}
		public struct ITfMouseTracker {}
		public struct ITfMouseTrackerACP {}
		public struct ITfMouseSink {}
		public struct ITfEditRecord {}
		public struct ITfTextEditSink {}
		public struct ITfTextLayoutSink {}
		public struct ITfStatusSink {}
		public struct ITfEditTransactionSink {}
		public struct ITfContextOwner {}
		public struct ITfContextOwnerServices {}
		public struct ITfContextKeyEventSink {}
		public struct ITfEditSession {}
		public struct ITfRange {}
		public struct ITfRangeACP {}
		public struct ITextStoreACPServices {}
		public struct ITfRangeBackup {}
		public struct ITfPropertyStore {}
		public struct IEnumTfRanges {}
		public struct ITfCreatePropertyStore {}
		public struct ITfPersistentPropertyLoaderACP {}
		public struct ITfProperty {}
		public struct IEnumTfProperties {}
		public struct ITfCompartment {}
		public struct ITfCompartmentEventSink {}
		public struct ITfCompartmentMgr {}
		public struct ITfFunction {}
		public struct ITfFunctionProvider {}
		public struct IEnumTfFunctionProviders {}
		public struct ITfInputProcessorProfiles {}
		public struct ITfInputProcessorProfilesEx {}
		public struct ITfInputProcessorProfileSubstituteLayout {}
		public struct ITfActiveLanguageProfileNotifySink {}
		public struct IEnumTfLanguageProfiles {}
		public struct ITfLanguageProfileNotifySink {}
		public struct ITfInputProcessorProfileMgr {}
		public struct IEnumTfInputProcessorProfiles {}
		public struct ITfInputProcessorProfileActivationSink {}
		public struct ITfKeystrokeMgr {}
		public struct ITfKeyEventSink {}
		public struct ITfKeyTraceEventSink {}
		public struct ITfPreservedKeyNotifySink {}
		public struct ITfMessagePump {}
		public struct ITfThreadFocusSink {}
		public struct ITfTextInputProcessor {}
		public struct ITfTextInputProcessorEx {}
		public struct ITfClientId {}
		public struct ITfDisplayAttributeInfo {}
		public struct IEnumTfDisplayAttributeInfo {}
		public struct ITfDisplayAttributeProvider {}
		public struct ITfDisplayAttributeMgr {}
		public struct ITfDisplayAttributeNotifySink {}
		public struct ITfCategoryMgr {}
		public struct ITfSource {}
		public struct ITfSourceSingle {}
		public struct ITfUIElementMgr {}
		public struct IEnumTfUIElements {}
		public struct ITfUIElementSink {}
		public struct ITfUIElement {}
		public struct ITfCandidateListUIElement {}
		public struct ITfCandidateListUIElementBehavior {}
		public struct ITfReadingInformationUIElement {}
		public struct ITfTransitoryExtensionUIElement {}
		public struct ITfTransitoryExtensionSink {}
		public struct ITfToolTipUIElement {}
		public struct ITfReverseConversionList {}
		public struct ITfReverseConversion {}
		public struct ITfReverseConversionMgr {}
		public struct ITfCandidateString {}
		public struct IEnumTfCandidates {}
		public struct ITfCandidateList {}
		public struct ITfFnReconversion {}
		public struct ITfFnPlayBack {}
		public struct ITfFnLangProfileUtil {}
		public struct ITfFnConfigure {}
		public struct ITfFnConfigureRegisterWord {}
		public struct ITfFnConfigureRegisterEudc {}
		public struct ITfFnShowHelp {}
		public struct ITfFnBalloon {}
		public struct ITfFnGetSAPIObject {}
		public struct ITfFnPropertyUIStatus {}
		public struct IEnumSpeechCommands {}
		public struct ISpeechCommandProvider {}
		public struct ITfFnCustomSpeechCommand {}
		public struct ITfFnLMProcessor {}
		public struct ITfFnLMInternal {}
		public struct IEnumTfLatticeElements {}
		public struct ITfLMLattice {}
		public struct ITfFnAdviseText {}
		public struct ITfFnSearchCandidateProvider {}
		public struct ITfIntegratableCandidateListUIElement {}
		public struct ITfFnGetPreferredTouchKeyboardLayout {}
		public struct ITfFnGetLinguisticAlternates {}
		public struct IUIManagerEventSink {}
		public struct ITfInputScope {}
		public struct ITfInputScope2 {}
		public struct ITfMSAAControl {}
		public struct IInternalDocWrap {}
		public struct ITextStoreACPEx {}
		public struct ITextStoreAnchorEx {}
		public struct ITextStoreACPSinkEx {}
		public struct ITextStoreSinkAnchorEx {}
		public struct IAccDictionary {}
		public struct IVersionInfo {}
		public struct ICoCreateLocally {}
		public struct ICoCreatedLocally {}
		public struct IAccStore {}
		public struct IAccServerDocMgr {}
		public struct IAccClientDocMgr {}
		public struct IDocWrap {}
		public struct IClonableWrapper {}
		public struct ITfSpeechUIServer {}
		
		// --- Functions ---
		
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DoMsCtfMonitor(uint32 dwFlags, HANDLE hEventForServiceStop);
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitLocalMsCtfMonitor(uint32 dwFlags);
		[Import("msctfmonitor.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UninitLocalMsCtfMonitor();
		
	}
}
