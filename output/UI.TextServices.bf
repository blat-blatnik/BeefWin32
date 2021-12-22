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
			D = 2,
			DWRITE = 6,
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
			
			public HRESULT AdviseSink(Guid* riid, IUnknown* punk, uint32 dwMask) mut
			{
				return VT.AdviseSink(&this, riid, punk, dwMask);
			}
			public HRESULT UnadviseSink(IUnknown* punk) mut
			{
				return VT.UnadviseSink(&this, punk);
			}
			public HRESULT RequestLock(uint32 dwLockFlags, HRESULT* phrSession) mut
			{
				return VT.RequestLock(&this, dwLockFlags, phrSession);
			}
			public HRESULT GetStatus(TS_STATUS* pdcs) mut
			{
				return VT.GetStatus(&this, pdcs);
			}
			public HRESULT QueryInsert(int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) mut
			{
				return VT.QueryInsert(&this, acpTestStart, acpTestEnd, cch, pacpResultStart, pacpResultEnd);
			}
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) mut
			{
				return VT.GetSelection(&this, ulIndex, ulCount, pSelection, pcFetched);
			}
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ACP* pSelection) mut
			{
				return VT.SetSelection(&this, ulCount, pSelection);
			}
			public HRESULT GetText(int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) mut
			{
				return VT.GetText(&this, acpStart, acpEnd, pchPlain, cchPlainReq, pcchPlainRet, prgRunInfo, cRunInfoReq, pcRunInfoRet, pacpNext);
			}
			public HRESULT SetText(uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) mut
			{
				return VT.SetText(&this, dwFlags, acpStart, acpEnd, pchText, cch, pChange);
			}
			public HRESULT GetFormattedText(int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) mut
			{
				return VT.GetFormattedText(&this, acpStart, acpEnd, ppDataObject);
			}
			public HRESULT GetEmbedded(int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetEmbedded(&this, acpPos, rguidService, riid, ppunk);
			}
			public HRESULT QueryInsertEmbedded(Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) mut
			{
				return VT.QueryInsertEmbedded(&this, pguidService, pFormatEtc, pfInsertable);
			}
			public HRESULT InsertEmbedded(uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertEmbedded(&this, dwFlags, acpStart, acpEnd, pDataObject, pChange);
			}
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertTextAtSelection(&this, dwFlags, pchText, cch, pacpStart, pacpEnd, pChange);
			}
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertEmbeddedAtSelection(&this, dwFlags, pDataObject, pacpStart, pacpEnd, pChange);
			}
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut
			{
				return VT.RequestSupportedAttrs(&this, dwFlags, cFilterAttrs, paFilterAttrs);
			}
			public HRESULT RequestAttrsAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsAtPosition(&this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT RequestAttrsTransitioningAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsTransitioningAtPosition(&this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT FindNextAttrTransition(int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) mut
			{
				return VT.FindNextAttrTransition(&this, acpStart, acpHalt, cFilterAttrs, paFilterAttrs, dwFlags, pacpNext, pfFound, plFoundOffset);
			}
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) mut
			{
				return VT.RetrieveRequestedAttrs(&this, ulCount, paAttrVals, pcFetched);
			}
			public HRESULT GetEndACP(int32* pacp) mut
			{
				return VT.GetEndACP(&this, pacp);
			}
			public HRESULT GetActiveView(uint32* pvcView) mut
			{
				return VT.GetActiveView(&this, pvcView);
			}
			public HRESULT GetACPFromPoint(uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) mut
			{
				return VT.GetACPFromPoint(&this, vcView, ptScreen, dwFlags, pacp);
			}
			public HRESULT GetTextExt(uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) mut
			{
				return VT.GetTextExt(&this, vcView, acpStart, acpEnd, prc, pfClipped);
			}
			public HRESULT GetScreenExt(uint32 vcView, RECT* prc) mut
			{
				return VT.GetScreenExt(&this, vcView, prc);
			}
			public HRESULT GetWnd(uint32 vcView, HWND* phwnd) mut
			{
				return VT.GetWnd(&this, vcView, phwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreACP *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
				public new function HRESULT(ITextStoreACP *self, IUnknown* punk) UnadviseSink;
				public new function HRESULT(ITextStoreACP *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
				public new function HRESULT(ITextStoreACP *self, TS_STATUS* pdcs) GetStatus;
				public new function HRESULT(ITextStoreACP *self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) QueryInsert;
				public new function HRESULT(ITextStoreACP *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) GetSelection;
				public new function HRESULT(ITextStoreACP *self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
				public new function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) GetText;
				public new function HRESULT(ITextStoreACP *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) SetText;
				public new function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) GetFormattedText;
				public new function HRESULT(ITextStoreACP *self, int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
				public new function HRESULT(ITextStoreACP *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
				public new function HRESULT(ITextStoreACP *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) InsertEmbedded;
				public new function HRESULT(ITextStoreACP *self, uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertTextAtSelection;
				public new function HRESULT(ITextStoreACP *self, uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertEmbeddedAtSelection;
				public new function HRESULT(ITextStoreACP *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function HRESULT(ITextStoreACP *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function HRESULT(ITextStoreACP *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
				public new function HRESULT(ITextStoreACP *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
				public new function HRESULT(ITextStoreACP *self, int32* pacp) GetEndACP;
				public new function HRESULT(ITextStoreACP *self, uint32* pvcView) GetActiveView;
				public new function HRESULT(ITextStoreACP *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
				public new function HRESULT(ITextStoreACP *self, uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
				public new function HRESULT(ITextStoreACP *self, uint32 vcView, RECT* prc) GetScreenExt;
				public new function HRESULT(ITextStoreACP *self, uint32 vcView, HWND* phwnd) GetWnd;
			}
		}
		[CRepr]
		public struct ITextStoreACP2 : IUnknown
		{
			public const new Guid IID = .(0xf86ad89f, 0x5fe4, 0x4b8d, 0xbb, 0x9f, 0xef, 0x37, 0x97, 0xa8, 0x4f, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(Guid* riid, IUnknown* punk, uint32 dwMask) mut
			{
				return VT.AdviseSink(&this, riid, punk, dwMask);
			}
			public HRESULT UnadviseSink(IUnknown* punk) mut
			{
				return VT.UnadviseSink(&this, punk);
			}
			public HRESULT RequestLock(uint32 dwLockFlags, HRESULT* phrSession) mut
			{
				return VT.RequestLock(&this, dwLockFlags, phrSession);
			}
			public HRESULT GetStatus(TS_STATUS* pdcs) mut
			{
				return VT.GetStatus(&this, pdcs);
			}
			public HRESULT QueryInsert(int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) mut
			{
				return VT.QueryInsert(&this, acpTestStart, acpTestEnd, cch, pacpResultStart, pacpResultEnd);
			}
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) mut
			{
				return VT.GetSelection(&this, ulIndex, ulCount, pSelection, pcFetched);
			}
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ACP* pSelection) mut
			{
				return VT.SetSelection(&this, ulCount, pSelection);
			}
			public HRESULT GetText(int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) mut
			{
				return VT.GetText(&this, acpStart, acpEnd, pchPlain, cchPlainReq, pcchPlainRet, prgRunInfo, cRunInfoReq, pcRunInfoRet, pacpNext);
			}
			public HRESULT SetText(uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) mut
			{
				return VT.SetText(&this, dwFlags, acpStart, acpEnd, pchText, cch, pChange);
			}
			public HRESULT GetFormattedText(int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) mut
			{
				return VT.GetFormattedText(&this, acpStart, acpEnd, ppDataObject);
			}
			public HRESULT GetEmbedded(int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetEmbedded(&this, acpPos, rguidService, riid, ppunk);
			}
			public HRESULT QueryInsertEmbedded(Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) mut
			{
				return VT.QueryInsertEmbedded(&this, pguidService, pFormatEtc, pfInsertable);
			}
			public HRESULT InsertEmbedded(uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertEmbedded(&this, dwFlags, acpStart, acpEnd, pDataObject, pChange);
			}
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertTextAtSelection(&this, dwFlags, pchText, cch, pacpStart, pacpEnd, pChange);
			}
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) mut
			{
				return VT.InsertEmbeddedAtSelection(&this, dwFlags, pDataObject, pacpStart, pacpEnd, pChange);
			}
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut
			{
				return VT.RequestSupportedAttrs(&this, dwFlags, cFilterAttrs, paFilterAttrs);
			}
			public HRESULT RequestAttrsAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsAtPosition(&this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT RequestAttrsTransitioningAtPosition(int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsTransitioningAtPosition(&this, acpPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT FindNextAttrTransition(int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) mut
			{
				return VT.FindNextAttrTransition(&this, acpStart, acpHalt, cFilterAttrs, paFilterAttrs, dwFlags, pacpNext, pfFound, plFoundOffset);
			}
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) mut
			{
				return VT.RetrieveRequestedAttrs(&this, ulCount, paAttrVals, pcFetched);
			}
			public HRESULT GetEndACP(int32* pacp) mut
			{
				return VT.GetEndACP(&this, pacp);
			}
			public HRESULT GetActiveView(uint32* pvcView) mut
			{
				return VT.GetActiveView(&this, pvcView);
			}
			public HRESULT GetACPFromPoint(uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) mut
			{
				return VT.GetACPFromPoint(&this, vcView, ptScreen, dwFlags, pacp);
			}
			public HRESULT GetTextExt(uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) mut
			{
				return VT.GetTextExt(&this, vcView, acpStart, acpEnd, prc, pfClipped);
			}
			public HRESULT GetScreenExt(uint32 vcView, RECT* prc) mut
			{
				return VT.GetScreenExt(&this, vcView, prc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreACP2 *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
				public new function HRESULT(ITextStoreACP2 *self, IUnknown* punk) UnadviseSink;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
				public new function HRESULT(ITextStoreACP2 *self, TS_STATUS* pdcs) GetStatus;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) QueryInsert;
				public new function HRESULT(ITextStoreACP2 *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) GetSelection;
				public new function HRESULT(ITextStoreACP2 *self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) GetText;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) SetText;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) GetFormattedText;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
				public new function HRESULT(ITextStoreACP2 *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) InsertEmbedded;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertTextAtSelection;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertEmbeddedAtSelection;
				public new function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
				public new function HRESULT(ITextStoreACP2 *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
				public new function HRESULT(ITextStoreACP2 *self, int32* pacp) GetEndACP;
				public new function HRESULT(ITextStoreACP2 *self, uint32* pvcView) GetActiveView;
				public new function HRESULT(ITextStoreACP2 *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
				public new function HRESULT(ITextStoreACP2 *self, uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
				public new function HRESULT(ITextStoreACP2 *self, uint32 vcView, RECT* prc) GetScreenExt;
			}
		}
		[CRepr]
		public struct ITextStoreACPSink : IUnknown
		{
			public const new Guid IID = .(0x22d44c94, 0xa419, 0x4542, 0xa2, 0x72, 0xae, 0x26, 0x09, 0x3e, 0xce, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextChange(TEXT_STORE_TEXT_CHANGE_FLAGS dwFlags, TS_TEXTCHANGE* pChange) mut
			{
				return VT.OnTextChange(&this, dwFlags, pChange);
			}
			public HRESULT OnSelectionChange() mut
			{
				return VT.OnSelectionChange(&this);
			}
			public HRESULT OnLayoutChange(TsLayoutCode lcode, uint32 vcView) mut
			{
				return VT.OnLayoutChange(&this, lcode, vcView);
			}
			public HRESULT OnStatusChange(uint32 dwFlags) mut
			{
				return VT.OnStatusChange(&this, dwFlags);
			}
			public HRESULT OnAttrsChange(int32 acpStart, int32 acpEnd, uint32 cAttrs, Guid* paAttrs) mut
			{
				return VT.OnAttrsChange(&this, acpStart, acpEnd, cAttrs, paAttrs);
			}
			public HRESULT OnLockGranted(TEXT_STORE_LOCK_FLAGS dwLockFlags) mut
			{
				return VT.OnLockGranted(&this, dwLockFlags);
			}
			public HRESULT OnStartEditTransaction() mut
			{
				return VT.OnStartEditTransaction(&this);
			}
			public HRESULT OnEndEditTransaction() mut
			{
				return VT.OnEndEditTransaction(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreACPSink *self, TEXT_STORE_TEXT_CHANGE_FLAGS dwFlags, TS_TEXTCHANGE* pChange) OnTextChange;
				public new function HRESULT(ITextStoreACPSink *self) OnSelectionChange;
				public new function HRESULT(ITextStoreACPSink *self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
				public new function HRESULT(ITextStoreACPSink *self, uint32 dwFlags) OnStatusChange;
				public new function HRESULT(ITextStoreACPSink *self, int32 acpStart, int32 acpEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
				public new function HRESULT(ITextStoreACPSink *self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
				public new function HRESULT(ITextStoreACPSink *self) OnStartEditTransaction;
				public new function HRESULT(ITextStoreACPSink *self) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct IAnchor : IUnknown
		{
			public const new Guid IID = .(0x0feb7e34, 0x5a60, 0x4356, 0x8e, 0xf7, 0xab, 0xde, 0xc2, 0xff, 0x7c, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGravity(TsGravity gravity) mut
			{
				return VT.SetGravity(&this, gravity);
			}
			public HRESULT GetGravity(TsGravity* pgravity) mut
			{
				return VT.GetGravity(&this, pgravity);
			}
			public HRESULT IsEqual(IAnchor* paWith, BOOL* pfEqual) mut
			{
				return VT.IsEqual(&this, paWith, pfEqual);
			}
			public HRESULT Compare(IAnchor* paWith, int32* plResult) mut
			{
				return VT.Compare(&this, paWith, plResult);
			}
			public HRESULT Shift(uint32 dwFlags, int32 cchReq, int32* pcch, IAnchor* paHaltAnchor) mut
			{
				return VT.Shift(&this, dwFlags, cchReq, pcch, paHaltAnchor);
			}
			public HRESULT ShiftTo(IAnchor* paSite) mut
			{
				return VT.ShiftTo(&this, paSite);
			}
			public HRESULT ShiftRegion(uint32 dwFlags, TsShiftDir dir, BOOL* pfNoRegion) mut
			{
				return VT.ShiftRegion(&this, dwFlags, dir, pfNoRegion);
			}
			public HRESULT SetChangeHistoryMask(uint32 dwMask) mut
			{
				return VT.SetChangeHistoryMask(&this, dwMask);
			}
			public HRESULT GetChangeHistory(ANCHOR_CHANGE_HISTORY_FLAGS* pdwHistory) mut
			{
				return VT.GetChangeHistory(&this, pdwHistory);
			}
			public HRESULT ClearChangeHistory() mut
			{
				return VT.ClearChangeHistory(&this);
			}
			public HRESULT Clone(IAnchor** ppaClone) mut
			{
				return VT.Clone(&this, ppaClone);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAnchor *self, TsGravity gravity) SetGravity;
				public new function HRESULT(IAnchor *self, TsGravity* pgravity) GetGravity;
				public new function HRESULT(IAnchor *self, IAnchor* paWith, BOOL* pfEqual) IsEqual;
				public new function HRESULT(IAnchor *self, IAnchor* paWith, int32* plResult) Compare;
				public new function HRESULT(IAnchor *self, uint32 dwFlags, int32 cchReq, int32* pcch, IAnchor* paHaltAnchor) Shift;
				public new function HRESULT(IAnchor *self, IAnchor* paSite) ShiftTo;
				public new function HRESULT(IAnchor *self, uint32 dwFlags, TsShiftDir dir, BOOL* pfNoRegion) ShiftRegion;
				public new function HRESULT(IAnchor *self, uint32 dwMask) SetChangeHistoryMask;
				public new function HRESULT(IAnchor *self, ANCHOR_CHANGE_HISTORY_FLAGS* pdwHistory) GetChangeHistory;
				public new function HRESULT(IAnchor *self) ClearChangeHistory;
				public new function HRESULT(IAnchor *self, IAnchor** ppaClone) Clone;
			}
		}
		[CRepr]
		public struct ITextStoreAnchor : IUnknown
		{
			public const new Guid IID = .(0x9b2077b0, 0x5f18, 0x4dec, 0xbe, 0xe9, 0x3c, 0xc7, 0x22, 0xf5, 0xdf, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(Guid* riid, IUnknown* punk, uint32 dwMask) mut
			{
				return VT.AdviseSink(&this, riid, punk, dwMask);
			}
			public HRESULT UnadviseSink(IUnknown* punk) mut
			{
				return VT.UnadviseSink(&this, punk);
			}
			public HRESULT RequestLock(uint32 dwLockFlags, HRESULT* phrSession) mut
			{
				return VT.RequestLock(&this, dwLockFlags, phrSession);
			}
			public HRESULT GetStatus(TS_STATUS* pdcs) mut
			{
				return VT.GetStatus(&this, pdcs);
			}
			public HRESULT QueryInsert(IAnchor* paTestStart, IAnchor* paTestEnd, uint32 cch, IAnchor** ppaResultStart, IAnchor** ppaResultEnd) mut
			{
				return VT.QueryInsert(&this, paTestStart, paTestEnd, cch, ppaResultStart, ppaResultEnd);
			}
			public HRESULT GetSelection(uint32 ulIndex, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection, uint32* pcFetched) mut
			{
				return VT.GetSelection(&this, ulIndex, ulCount, pSelection, pcFetched);
			}
			public HRESULT SetSelection(uint32 ulCount, TS_SELECTION_ANCHOR* pSelection) mut
			{
				return VT.SetSelection(&this, ulCount, pSelection);
			}
			public HRESULT GetText(uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cchReq, uint32* pcch, BOOL fUpdateAnchor) mut
			{
				return VT.GetText(&this, dwFlags, paStart, paEnd, pchText, cchReq, pcch, fUpdateAnchor);
			}
			public HRESULT SetText(uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cch) mut
			{
				return VT.SetText(&this, dwFlags, paStart, paEnd, pchText, cch);
			}
			public HRESULT GetFormattedText(IAnchor* paStart, IAnchor* paEnd, IDataObject** ppDataObject) mut
			{
				return VT.GetFormattedText(&this, paStart, paEnd, ppDataObject);
			}
			public HRESULT GetEmbedded(uint32 dwFlags, IAnchor* paPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetEmbedded(&this, dwFlags, paPos, rguidService, riid, ppunk);
			}
			public HRESULT InsertEmbedded(uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, IDataObject* pDataObject) mut
			{
				return VT.InsertEmbedded(&this, dwFlags, paStart, paEnd, pDataObject);
			}
			public HRESULT RequestSupportedAttrs(uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) mut
			{
				return VT.RequestSupportedAttrs(&this, dwFlags, cFilterAttrs, paFilterAttrs);
			}
			public HRESULT RequestAttrsAtPosition(IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsAtPosition(&this, paPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT RequestAttrsTransitioningAtPosition(IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) mut
			{
				return VT.RequestAttrsTransitioningAtPosition(&this, paPos, cFilterAttrs, paFilterAttrs, dwFlags);
			}
			public HRESULT FindNextAttrTransition(IAnchor* paStart, IAnchor* paHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, BOOL* pfFound, int32* plFoundOffset) mut
			{
				return VT.FindNextAttrTransition(&this, paStart, paHalt, cFilterAttrs, paFilterAttrs, dwFlags, pfFound, plFoundOffset);
			}
			public HRESULT RetrieveRequestedAttrs(uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) mut
			{
				return VT.RetrieveRequestedAttrs(&this, ulCount, paAttrVals, pcFetched);
			}
			public HRESULT GetStart(IAnchor** ppaStart) mut
			{
				return VT.GetStart(&this, ppaStart);
			}
			public HRESULT GetEnd(IAnchor** ppaEnd) mut
			{
				return VT.GetEnd(&this, ppaEnd);
			}
			public HRESULT GetActiveView(uint32* pvcView) mut
			{
				return VT.GetActiveView(&this, pvcView);
			}
			public HRESULT GetAnchorFromPoint(uint32 vcView, POINT* ptScreen, uint32 dwFlags, IAnchor** ppaSite) mut
			{
				return VT.GetAnchorFromPoint(&this, vcView, ptScreen, dwFlags, ppaSite);
			}
			public HRESULT GetTextExt(uint32 vcView, IAnchor* paStart, IAnchor* paEnd, RECT* prc, BOOL* pfClipped) mut
			{
				return VT.GetTextExt(&this, vcView, paStart, paEnd, prc, pfClipped);
			}
			public HRESULT GetScreenExt(uint32 vcView, RECT* prc) mut
			{
				return VT.GetScreenExt(&this, vcView, prc);
			}
			public HRESULT GetWnd(uint32 vcView, HWND* phwnd) mut
			{
				return VT.GetWnd(&this, vcView, phwnd);
			}
			public HRESULT QueryInsertEmbedded(Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) mut
			{
				return VT.QueryInsertEmbedded(&this, pguidService, pFormatEtc, pfInsertable);
			}
			public HRESULT InsertTextAtSelection(uint32 dwFlags, char16* pchText, uint32 cch, IAnchor** ppaStart, IAnchor** ppaEnd) mut
			{
				return VT.InsertTextAtSelection(&this, dwFlags, pchText, cch, ppaStart, ppaEnd);
			}
			public HRESULT InsertEmbeddedAtSelection(uint32 dwFlags, IDataObject* pDataObject, IAnchor** ppaStart, IAnchor** ppaEnd) mut
			{
				return VT.InsertEmbeddedAtSelection(&this, dwFlags, pDataObject, ppaStart, ppaEnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreAnchor *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
				public new function HRESULT(ITextStoreAnchor *self, IUnknown* punk) UnadviseSink;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
				public new function HRESULT(ITextStoreAnchor *self, TS_STATUS* pdcs) GetStatus;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor* paTestStart, IAnchor* paTestEnd, uint32 cch, IAnchor** ppaResultStart, IAnchor** ppaResultEnd) QueryInsert;
				public new function HRESULT(ITextStoreAnchor *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection, uint32* pcFetched) GetSelection;
				public new function HRESULT(ITextStoreAnchor *self, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection) SetSelection;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cchReq, uint32* pcch, BOOL fUpdateAnchor) GetText;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cch) SetText;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor* paStart, IAnchor* paEnd, IDataObject** ppDataObject) GetFormattedText;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, IDataObject* pDataObject) InsertEmbedded;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor* paStart, IAnchor* paHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
				public new function HRESULT(ITextStoreAnchor *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor** ppaStart) GetStart;
				public new function HRESULT(ITextStoreAnchor *self, IAnchor** ppaEnd) GetEnd;
				public new function HRESULT(ITextStoreAnchor *self, uint32* pvcView) GetActiveView;
				public new function HRESULT(ITextStoreAnchor *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, IAnchor** ppaSite) GetAnchorFromPoint;
				public new function HRESULT(ITextStoreAnchor *self, uint32 vcView, IAnchor* paStart, IAnchor* paEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
				public new function HRESULT(ITextStoreAnchor *self, uint32 vcView, RECT* prc) GetScreenExt;
				public new function HRESULT(ITextStoreAnchor *self, uint32 vcView, HWND* phwnd) GetWnd;
				public new function HRESULT(ITextStoreAnchor *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, char16* pchText, uint32 cch, IAnchor** ppaStart, IAnchor** ppaEnd) InsertTextAtSelection;
				public new function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IDataObject* pDataObject, IAnchor** ppaStart, IAnchor** ppaEnd) InsertEmbeddedAtSelection;
			}
		}
		[CRepr]
		public struct ITextStoreAnchorSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e905, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextChange(TEXT_STORE_CHANGE_FLAGS dwFlags, IAnchor* paStart, IAnchor* paEnd) mut
			{
				return VT.OnTextChange(&this, dwFlags, paStart, paEnd);
			}
			public HRESULT OnSelectionChange() mut
			{
				return VT.OnSelectionChange(&this);
			}
			public HRESULT OnLayoutChange(TsLayoutCode lcode, uint32 vcView) mut
			{
				return VT.OnLayoutChange(&this, lcode, vcView);
			}
			public HRESULT OnStatusChange(uint32 dwFlags) mut
			{
				return VT.OnStatusChange(&this, dwFlags);
			}
			public HRESULT OnAttrsChange(IAnchor* paStart, IAnchor* paEnd, uint32 cAttrs, Guid* paAttrs) mut
			{
				return VT.OnAttrsChange(&this, paStart, paEnd, cAttrs, paAttrs);
			}
			public HRESULT OnLockGranted(TEXT_STORE_LOCK_FLAGS dwLockFlags) mut
			{
				return VT.OnLockGranted(&this, dwLockFlags);
			}
			public HRESULT OnStartEditTransaction() mut
			{
				return VT.OnStartEditTransaction(&this);
			}
			public HRESULT OnEndEditTransaction() mut
			{
				return VT.OnEndEditTransaction(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreAnchorSink *self, TEXT_STORE_CHANGE_FLAGS dwFlags, IAnchor* paStart, IAnchor* paEnd) OnTextChange;
				public new function HRESULT(ITextStoreAnchorSink *self) OnSelectionChange;
				public new function HRESULT(ITextStoreAnchorSink *self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
				public new function HRESULT(ITextStoreAnchorSink *self, uint32 dwFlags) OnStatusChange;
				public new function HRESULT(ITextStoreAnchorSink *self, IAnchor* paStart, IAnchor* paEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
				public new function HRESULT(ITextStoreAnchorSink *self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
				public new function HRESULT(ITextStoreAnchorSink *self) OnStartEditTransaction;
				public new function HRESULT(ITextStoreAnchorSink *self) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct ITfLangBarMgr : IUnknown
		{
			public const new Guid IID = .(0x87955690, 0xe627, 0x11d2, 0x8d, 0xdb, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseEventSink(ITfLangBarEventSink* pSink, HWND hwnd, uint32 dwFlags, uint32* pdwCookie) mut
			{
				return VT.AdviseEventSink(&this, pSink, hwnd, dwFlags, pdwCookie);
			}
			public HRESULT UnadviseEventSink(uint32 dwCookie) mut
			{
				return VT.UnadviseEventSink(&this, dwCookie);
			}
			public HRESULT GetThreadMarshalInterface(uint32 dwThreadId, uint32 dwType, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetThreadMarshalInterface(&this, dwThreadId, dwType, riid, ppunk);
			}
			public HRESULT GetThreadLangBarItemMgr(uint32 dwThreadId, ITfLangBarItemMgr** pplbi, uint32* pdwThreadid) mut
			{
				return VT.GetThreadLangBarItemMgr(&this, dwThreadId, pplbi, pdwThreadid);
			}
			public HRESULT GetInputProcessorProfiles(uint32 dwThreadId, ITfInputProcessorProfiles** ppaip, uint32* pdwThreadid) mut
			{
				return VT.GetInputProcessorProfiles(&this, dwThreadId, ppaip, pdwThreadid);
			}
			public HRESULT RestoreLastFocus(uint32* pdwThreadId, BOOL fPrev) mut
			{
				return VT.RestoreLastFocus(&this, pdwThreadId, fPrev);
			}
			public HRESULT SetModalInput(ITfLangBarEventSink* pSink, uint32 dwThreadId, uint32 dwFlags) mut
			{
				return VT.SetModalInput(&this, pSink, dwThreadId, dwFlags);
			}
			public HRESULT ShowFloating(uint32 dwFlags) mut
			{
				return VT.ShowFloating(&this, dwFlags);
			}
			public HRESULT GetShowFloatingStatus(uint32* pdwFlags) mut
			{
				return VT.GetShowFloatingStatus(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLangBarMgr *self, ITfLangBarEventSink* pSink, HWND hwnd, uint32 dwFlags, uint32* pdwCookie) AdviseEventSink;
				public new function HRESULT(ITfLangBarMgr *self, uint32 dwCookie) UnadviseEventSink;
				public new function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, uint32 dwType, Guid* riid, IUnknown** ppunk) GetThreadMarshalInterface;
				public new function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, ITfLangBarItemMgr** pplbi, uint32* pdwThreadid) GetThreadLangBarItemMgr;
				public new function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, ITfInputProcessorProfiles** ppaip, uint32* pdwThreadid) GetInputProcessorProfiles;
				public new function HRESULT(ITfLangBarMgr *self, uint32* pdwThreadId, BOOL fPrev) RestoreLastFocus;
				public new function HRESULT(ITfLangBarMgr *self, ITfLangBarEventSink* pSink, uint32 dwThreadId, uint32 dwFlags) SetModalInput;
				public new function HRESULT(ITfLangBarMgr *self, uint32 dwFlags) ShowFloating;
				public new function HRESULT(ITfLangBarMgr *self, uint32* pdwFlags) GetShowFloatingStatus;
			}
		}
		[CRepr]
		public struct ITfLangBarEventSink : IUnknown
		{
			public const new Guid IID = .(0x18a4e900, 0xe0ae, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetFocus(uint32 dwThreadId) mut
			{
				return VT.OnSetFocus(&this, dwThreadId);
			}
			public HRESULT OnThreadTerminate(uint32 dwThreadId) mut
			{
				return VT.OnThreadTerminate(&this, dwThreadId);
			}
			public HRESULT OnThreadItemChange(uint32 dwThreadId) mut
			{
				return VT.OnThreadItemChange(&this, dwThreadId);
			}
			public HRESULT OnModalInput(uint32 dwThreadId, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.OnModalInput(&this, dwThreadId, uMsg, wParam, lParam);
			}
			public HRESULT ShowFloating(uint32 dwFlags) mut
			{
				return VT.ShowFloating(&this, dwFlags);
			}
			public HRESULT GetItemFloatingRect(uint32 dwThreadId, Guid* rguid, RECT* prc) mut
			{
				return VT.GetItemFloatingRect(&this, dwThreadId, rguid, prc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnSetFocus;
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnThreadTerminate;
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnThreadItemChange;
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId, uint32 uMsg, WPARAM wParam, LPARAM lParam) OnModalInput;
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwFlags) ShowFloating;
				public new function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId, Guid* rguid, RECT* prc) GetItemFloatingRect;
			}
		}
		[CRepr]
		public struct ITfLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x57dbe1a0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdate(uint32 dwFlags) mut
			{
				return VT.OnUpdate(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLangBarItemSink *self, uint32 dwFlags) OnUpdate;
			}
		}
		[CRepr]
		public struct IEnumTfLangBarItems : IUnknown
		{
			public const new Guid IID = .(0x583f34d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfLangBarItems** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfLangBarItem** ppItem, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, ppItem, pcFetched);
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
				public new function HRESULT(IEnumTfLangBarItems *self, IEnumTfLangBarItems** ppEnum) Clone;
				public new function HRESULT(IEnumTfLangBarItems *self, uint32 ulCount, ITfLangBarItem** ppItem, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfLangBarItems *self) Reset;
				public new function HRESULT(IEnumTfLangBarItems *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLangBarItemMgr : IUnknown
		{
			public const new Guid IID = .(0xba468c55, 0x9956, 0x4fb1, 0xa5, 0x9d, 0x52, 0xa7, 0xdd, 0x7c, 0xc6, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumItems(IEnumTfLangBarItems** ppEnum) mut
			{
				return VT.EnumItems(&this, ppEnum);
			}
			public HRESULT GetItem(Guid* rguid, ITfLangBarItem** ppItem) mut
			{
				return VT.GetItem(&this, rguid, ppItem);
			}
			public HRESULT AddItem(ITfLangBarItem* punk) mut
			{
				return VT.AddItem(&this, punk);
			}
			public HRESULT RemoveItem(ITfLangBarItem* punk) mut
			{
				return VT.RemoveItem(&this, punk);
			}
			public HRESULT AdviseItemSink(ITfLangBarItemSink* punk, uint32* pdwCookie, Guid* rguidItem) mut
			{
				return VT.AdviseItemSink(&this, punk, pdwCookie, rguidItem);
			}
			public HRESULT UnadviseItemSink(uint32 dwCookie) mut
			{
				return VT.UnadviseItemSink(&this, dwCookie);
			}
			public HRESULT GetItemFloatingRect(uint32 dwThreadId, Guid* rguid, RECT* prc) mut
			{
				return VT.GetItemFloatingRect(&this, dwThreadId, rguid, prc);
			}
			public HRESULT GetItemsStatus(uint32 ulCount, Guid* prgguid, uint32* pdwStatus) mut
			{
				return VT.GetItemsStatus(&this, ulCount, prgguid, pdwStatus);
			}
			public HRESULT GetItemNum(uint32* pulCount) mut
			{
				return VT.GetItemNum(&this, pulCount);
			}
			public HRESULT GetItems(uint32 ulCount, ITfLangBarItem** ppItem, TF_LANGBARITEMINFO* pInfo, uint32* pdwStatus, uint32* pcFetched) mut
			{
				return VT.GetItems(&this, ulCount, ppItem, pInfo, pdwStatus, pcFetched);
			}
			public HRESULT AdviseItemsSink(uint32 ulCount, ITfLangBarItemSink** ppunk, Guid* pguidItem, uint32* pdwCookie) mut
			{
				return VT.AdviseItemsSink(&this, ulCount, ppunk, pguidItem, pdwCookie);
			}
			public HRESULT UnadviseItemsSink(uint32 ulCount, uint32* pdwCookie) mut
			{
				return VT.UnadviseItemsSink(&this, ulCount, pdwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLangBarItemMgr *self, IEnumTfLangBarItems** ppEnum) EnumItems;
				public new function HRESULT(ITfLangBarItemMgr *self, Guid* rguid, ITfLangBarItem** ppItem) GetItem;
				public new function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItem* punk) AddItem;
				public new function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItem* punk) RemoveItem;
				public new function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItemSink* punk, uint32* pdwCookie, Guid* rguidItem) AdviseItemSink;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 dwCookie) UnadviseItemSink;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 dwThreadId, Guid* rguid, RECT* prc) GetItemFloatingRect;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, Guid* prgguid, uint32* pdwStatus) GetItemsStatus;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32* pulCount) GetItemNum;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, ITfLangBarItem** ppItem, TF_LANGBARITEMINFO* pInfo, uint32* pdwStatus, uint32* pcFetched) GetItems;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, ITfLangBarItemSink** ppunk, Guid* pguidItem, uint32* pdwCookie) AdviseItemsSink;
				public new function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, uint32* pdwCookie) UnadviseItemsSink;
			}
		}
		[CRepr]
		public struct ITfLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x73540d69, 0xedeb, 0x4ee9, 0x96, 0xc9, 0x23, 0xaa, 0x30, 0xb2, 0x59, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfo(TF_LANGBARITEMINFO* pInfo) mut
			{
				return VT.GetInfo(&this, pInfo);
			}
			public HRESULT GetStatus(uint32* pdwStatus) mut
			{
				return VT.GetStatus(&this, pdwStatus);
			}
			public HRESULT Show(BOOL fShow) mut
			{
				return VT.Show(&this, fShow);
			}
			public HRESULT GetTooltipString(BSTR* pbstrToolTip) mut
			{
				return VT.GetTooltipString(&this, pbstrToolTip);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLangBarItem *self, TF_LANGBARITEMINFO* pInfo) GetInfo;
				public new function HRESULT(ITfLangBarItem *self, uint32* pdwStatus) GetStatus;
				public new function HRESULT(ITfLangBarItem *self, BOOL fShow) Show;
				public new function HRESULT(ITfLangBarItem *self, BSTR* pbstrToolTip) GetTooltipString;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x1449d9ab, 0x13cf, 0x4687, 0xaa, 0x3e, 0x8d, 0x8b, 0x18, 0x57, 0x43, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitMenu(ITfMenu* pMenu) mut
			{
				return VT.InitMenu(&this, pMenu);
			}
			public HRESULT OnMenuSelect(uint32 wID) mut
			{
				return VT.OnMenuSelect(&this, wID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSystemLangBarItemSink *self, ITfMenu* pMenu) InitMenu;
				public new function HRESULT(ITfSystemLangBarItemSink *self, uint32 wID) OnMenuSelect;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x1e13e9ec, 0x6b33, 0x4d4a, 0xb5, 0xeb, 0x8a, 0x92, 0xf0, 0x29, 0xf3, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIcon(HICON hIcon) mut
			{
				return VT.SetIcon(&this, hIcon);
			}
			public HRESULT SetTooltipString(char16* pchToolTip, uint32 cch) mut
			{
				return VT.SetTooltipString(&this, pchToolTip, cch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSystemLangBarItem *self, HICON hIcon) SetIcon;
				public new function HRESULT(ITfSystemLangBarItem *self, char16* pchToolTip, uint32 cch) SetTooltipString;
			}
		}
		[CRepr]
		public struct ITfSystemLangBarItemText : IUnknown
		{
			public const new Guid IID = .(0x5c4ce0e5, 0xba49, 0x4b52, 0xac, 0x6b, 0x3b, 0x39, 0x7b, 0x4f, 0x70, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetItemText(char16* pch, uint32 cch) mut
			{
				return VT.SetItemText(&this, pch, cch);
			}
			public HRESULT GetItemText(BSTR* pbstrText) mut
			{
				return VT.GetItemText(&this, pbstrText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSystemLangBarItemText *self, char16* pch, uint32 cch) SetItemText;
				public new function HRESULT(ITfSystemLangBarItemText *self, BSTR* pbstrText) GetItemText;
			}
		}
		[CRepr]
		public struct ITfSystemDeviceTypeLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x45672eb9, 0x9059, 0x46a2, 0x83, 0x8d, 0x45, 0x30, 0x35, 0x5f, 0x6a, 0x77);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIconMode(LANG_BAR_ITEM_ICON_MODE_FLAGS dwFlags) mut
			{
				return VT.SetIconMode(&this, dwFlags);
			}
			public HRESULT GetIconMode(uint32* pdwFlags) mut
			{
				return VT.GetIconMode(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSystemDeviceTypeLangBarItem *self, LANG_BAR_ITEM_ICON_MODE_FLAGS dwFlags) SetIconMode;
				public new function HRESULT(ITfSystemDeviceTypeLangBarItem *self, uint32* pdwFlags) GetIconMode;
			}
		}
		[CRepr]
		public struct ITfLangBarItemButton : ITfLangBarItem
		{
			public const new Guid IID = .(0x28c7f1d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, RECT* prcArea) mut
			{
				return VT.OnClick(&this, click, pt, prcArea);
			}
			public HRESULT InitMenu(ITfMenu* pMenu) mut
			{
				return VT.InitMenu(&this, pMenu);
			}
			public HRESULT OnMenuSelect(uint32 wID) mut
			{
				return VT.OnMenuSelect(&this, wID);
			}
			public HRESULT GetIcon(HICON* phIcon) mut
			{
				return VT.GetIcon(&this, phIcon);
			}
			public HRESULT GetText(BSTR* pbstrText) mut
			{
				return VT.GetText(&this, pbstrText);
			}
			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function HRESULT(ITfLangBarItemButton *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
				public new function HRESULT(ITfLangBarItemButton *self, ITfMenu* pMenu) InitMenu;
				public new function HRESULT(ITfLangBarItemButton *self, uint32 wID) OnMenuSelect;
				public new function HRESULT(ITfLangBarItemButton *self, HICON* phIcon) GetIcon;
				public new function HRESULT(ITfLangBarItemButton *self, BSTR* pbstrText) GetText;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBitmapButton : ITfLangBarItem
		{
			public const new Guid IID = .(0xa26a0525, 0x3fae, 0x4fa0, 0x89, 0xee, 0x88, 0xa9, 0x64, 0xf9, 0xf1, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, RECT* prcArea) mut
			{
				return VT.OnClick(&this, click, pt, prcArea);
			}
			public HRESULT InitMenu(ITfMenu* pMenu) mut
			{
				return VT.InitMenu(&this, pMenu);
			}
			public HRESULT OnMenuSelect(uint32 wID) mut
			{
				return VT.OnMenuSelect(&this, wID);
			}
			public HRESULT GetPreferredSize(SIZE* pszDefault, SIZE* psz) mut
			{
				return VT.GetPreferredSize(&this, pszDefault, psz);
			}
			public HRESULT DrawBitmap(int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) mut
			{
				return VT.DrawBitmap(&this, bmWidth, bmHeight, dwFlags, phbmp, phbmpMask);
			}
			public HRESULT GetText(BSTR* pbstrText) mut
			{
				return VT.GetText(&this, pbstrText);
			}
			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function HRESULT(ITfLangBarItemBitmapButton *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
				public new function HRESULT(ITfLangBarItemBitmapButton *self, ITfMenu* pMenu) InitMenu;
				public new function HRESULT(ITfLangBarItemBitmapButton *self, uint32 wID) OnMenuSelect;
				public new function HRESULT(ITfLangBarItemBitmapButton *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
				public new function HRESULT(ITfLangBarItemBitmapButton *self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) DrawBitmap;
				public new function HRESULT(ITfLangBarItemBitmapButton *self, BSTR* pbstrText) GetText;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBitmap : ITfLangBarItem
		{
			public const new Guid IID = .(0x73830352, 0xd722, 0x4179, 0xad, 0xa5, 0xf0, 0x45, 0xc9, 0x8d, 0xf3, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, RECT* prcArea) mut
			{
				return VT.OnClick(&this, click, pt, prcArea);
			}
			public HRESULT GetPreferredSize(SIZE* pszDefault, SIZE* psz) mut
			{
				return VT.GetPreferredSize(&this, pszDefault, psz);
			}
			public HRESULT DrawBitmap(int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) mut
			{
				return VT.DrawBitmap(&this, bmWidth, bmHeight, dwFlags, phbmp, phbmpMask);
			}
			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function HRESULT(ITfLangBarItemBitmap *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
				public new function HRESULT(ITfLangBarItemBitmap *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
				public new function HRESULT(ITfLangBarItemBitmap *self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) DrawBitmap;
			}
		}
		[CRepr]
		public struct ITfLangBarItemBalloon : ITfLangBarItem
		{
			public const new Guid IID = .(0x01c2d285, 0xd3c7, 0x4b7b, 0xb5, 0xb5, 0xd9, 0x74, 0x11, 0xd0, 0xc2, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnClick(TfLBIClick click, POINT pt, RECT* prcArea) mut
			{
				return VT.OnClick(&this, click, pt, prcArea);
			}
			public HRESULT GetPreferredSize(SIZE* pszDefault, SIZE* psz) mut
			{
				return VT.GetPreferredSize(&this, pszDefault, psz);
			}
			public HRESULT GetBalloonInfo(TF_LBBALLOONINFO* pInfo) mut
			{
				return VT.GetBalloonInfo(&this, pInfo);
			}
			[CRepr]
			public struct VTable : ITfLangBarItem.VTable
			{
				public new function HRESULT(ITfLangBarItemBalloon *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
				public new function HRESULT(ITfLangBarItemBalloon *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
				public new function HRESULT(ITfLangBarItemBalloon *self, TF_LBBALLOONINFO* pInfo) GetBalloonInfo;
			}
		}
		[CRepr]
		public struct ITfMenu : IUnknown
		{
			public const new Guid IID = .(0x6f8a98e4, 0xaaa0, 0x4f15, 0x8c, 0x5b, 0x07, 0xe0, 0xdf, 0x0a, 0x3d, 0xd8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddMenuItem(uint32 uId, uint32 dwFlags, HBITMAP hbmp, HBITMAP hbmpMask, char16* pch, uint32 cch, ITfMenu** ppMenu) mut
			{
				return VT.AddMenuItem(&this, uId, dwFlags, hbmp, hbmpMask, pch, cch, ppMenu);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMenu *self, uint32 uId, uint32 dwFlags, HBITMAP hbmp, HBITMAP hbmpMask, char16* pch, uint32 cch, ITfMenu** ppMenu) AddMenuItem;
			}
		}
		[CRepr]
		public struct ITfThreadMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e801, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(uint32* ptid) mut
			{
				return VT.Activate(&this, ptid);
			}
			public HRESULT Deactivate() mut
			{
				return VT.Deactivate(&this);
			}
			public HRESULT CreateDocumentMgr(ITfDocumentMgr** ppdim) mut
			{
				return VT.CreateDocumentMgr(&this, ppdim);
			}
			public HRESULT EnumDocumentMgrs(IEnumTfDocumentMgrs** ppEnum) mut
			{
				return VT.EnumDocumentMgrs(&this, ppEnum);
			}
			public HRESULT GetFocus(ITfDocumentMgr** ppdimFocus) mut
			{
				return VT.GetFocus(&this, ppdimFocus);
			}
			public HRESULT SetFocus(ITfDocumentMgr* pdimFocus) mut
			{
				return VT.SetFocus(&this, pdimFocus);
			}
			public HRESULT AssociateFocus(HWND hwnd, ITfDocumentMgr* pdimNew, ITfDocumentMgr** ppdimPrev) mut
			{
				return VT.AssociateFocus(&this, hwnd, pdimNew, ppdimPrev);
			}
			public HRESULT IsThreadFocus(BOOL* pfThreadFocus) mut
			{
				return VT.IsThreadFocus(&this, pfThreadFocus);
			}
			public HRESULT GetFunctionProvider(Guid* clsid, ITfFunctionProvider** ppFuncProv) mut
			{
				return VT.GetFunctionProvider(&this, clsid, ppFuncProv);
			}
			public HRESULT EnumFunctionProviders(IEnumTfFunctionProviders** ppEnum) mut
			{
				return VT.EnumFunctionProviders(&this, ppEnum);
			}
			public HRESULT GetGlobalCompartment(ITfCompartmentMgr** ppCompMgr) mut
			{
				return VT.GetGlobalCompartment(&this, ppCompMgr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfThreadMgr *self, uint32* ptid) Activate;
				public new function HRESULT(ITfThreadMgr *self) Deactivate;
				public new function HRESULT(ITfThreadMgr *self, ITfDocumentMgr** ppdim) CreateDocumentMgr;
				public new function HRESULT(ITfThreadMgr *self, IEnumTfDocumentMgrs** ppEnum) EnumDocumentMgrs;
				public new function HRESULT(ITfThreadMgr *self, ITfDocumentMgr** ppdimFocus) GetFocus;
				public new function HRESULT(ITfThreadMgr *self, ITfDocumentMgr* pdimFocus) SetFocus;
				public new function HRESULT(ITfThreadMgr *self, HWND hwnd, ITfDocumentMgr* pdimNew, ITfDocumentMgr** ppdimPrev) AssociateFocus;
				public new function HRESULT(ITfThreadMgr *self, BOOL* pfThreadFocus) IsThreadFocus;
				public new function HRESULT(ITfThreadMgr *self, Guid* clsid, ITfFunctionProvider** ppFuncProv) GetFunctionProvider;
				public new function HRESULT(ITfThreadMgr *self, IEnumTfFunctionProviders** ppEnum) EnumFunctionProviders;
				public new function HRESULT(ITfThreadMgr *self, ITfCompartmentMgr** ppCompMgr) GetGlobalCompartment;
			}
		}
		[CRepr]
		public struct ITfThreadMgrEx : ITfThreadMgr
		{
			public const new Guid IID = .(0x3e90ade3, 0x7594, 0x4cb0, 0xbb, 0x58, 0x69, 0x62, 0x8f, 0x5f, 0x45, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateEx(uint32* ptid, uint32 dwFlags) mut
			{
				return VT.ActivateEx(&this, ptid, dwFlags);
			}
			public HRESULT GetActiveFlags(uint32* lpdwFlags) mut
			{
				return VT.GetActiveFlags(&this, lpdwFlags);
			}
			[CRepr]
			public struct VTable : ITfThreadMgr.VTable
			{
				public new function HRESULT(ITfThreadMgrEx *self, uint32* ptid, uint32 dwFlags) ActivateEx;
				public new function HRESULT(ITfThreadMgrEx *self, uint32* lpdwFlags) GetActiveFlags;
			}
		}
		[CRepr]
		public struct ITfThreadMgr2 : IUnknown
		{
			public const new Guid IID = .(0x0ab198ef, 0x6477, 0x4ee8, 0x88, 0x12, 0x67, 0x80, 0xed, 0xb8, 0x2d, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(uint32* ptid) mut
			{
				return VT.Activate(&this, ptid);
			}
			public HRESULT Deactivate() mut
			{
				return VT.Deactivate(&this);
			}
			public HRESULT CreateDocumentMgr(ITfDocumentMgr** ppdim) mut
			{
				return VT.CreateDocumentMgr(&this, ppdim);
			}
			public HRESULT EnumDocumentMgrs(IEnumTfDocumentMgrs** ppEnum) mut
			{
				return VT.EnumDocumentMgrs(&this, ppEnum);
			}
			public HRESULT GetFocus(ITfDocumentMgr** ppdimFocus) mut
			{
				return VT.GetFocus(&this, ppdimFocus);
			}
			public HRESULT SetFocus(ITfDocumentMgr* pdimFocus) mut
			{
				return VT.SetFocus(&this, pdimFocus);
			}
			public HRESULT IsThreadFocus(BOOL* pfThreadFocus) mut
			{
				return VT.IsThreadFocus(&this, pfThreadFocus);
			}
			public HRESULT GetFunctionProvider(Guid* clsid, ITfFunctionProvider** ppFuncProv) mut
			{
				return VT.GetFunctionProvider(&this, clsid, ppFuncProv);
			}
			public HRESULT EnumFunctionProviders(IEnumTfFunctionProviders** ppEnum) mut
			{
				return VT.EnumFunctionProviders(&this, ppEnum);
			}
			public HRESULT GetGlobalCompartment(ITfCompartmentMgr** ppCompMgr) mut
			{
				return VT.GetGlobalCompartment(&this, ppCompMgr);
			}
			public HRESULT ActivateEx(uint32* ptid, uint32 dwFlags) mut
			{
				return VT.ActivateEx(&this, ptid, dwFlags);
			}
			public HRESULT GetActiveFlags(uint32* lpdwFlags) mut
			{
				return VT.GetActiveFlags(&this, lpdwFlags);
			}
			public HRESULT SuspendKeystrokeHandling() mut
			{
				return VT.SuspendKeystrokeHandling(&this);
			}
			public HRESULT ResumeKeystrokeHandling() mut
			{
				return VT.ResumeKeystrokeHandling(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfThreadMgr2 *self, uint32* ptid) Activate;
				public new function HRESULT(ITfThreadMgr2 *self) Deactivate;
				public new function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr** ppdim) CreateDocumentMgr;
				public new function HRESULT(ITfThreadMgr2 *self, IEnumTfDocumentMgrs** ppEnum) EnumDocumentMgrs;
				public new function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr** ppdimFocus) GetFocus;
				public new function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr* pdimFocus) SetFocus;
				public new function HRESULT(ITfThreadMgr2 *self, BOOL* pfThreadFocus) IsThreadFocus;
				public new function HRESULT(ITfThreadMgr2 *self, Guid* clsid, ITfFunctionProvider** ppFuncProv) GetFunctionProvider;
				public new function HRESULT(ITfThreadMgr2 *self, IEnumTfFunctionProviders** ppEnum) EnumFunctionProviders;
				public new function HRESULT(ITfThreadMgr2 *self, ITfCompartmentMgr** ppCompMgr) GetGlobalCompartment;
				public new function HRESULT(ITfThreadMgr2 *self, uint32* ptid, uint32 dwFlags) ActivateEx;
				public new function HRESULT(ITfThreadMgr2 *self, uint32* lpdwFlags) GetActiveFlags;
				public new function HRESULT(ITfThreadMgr2 *self) SuspendKeystrokeHandling;
				public new function HRESULT(ITfThreadMgr2 *self) ResumeKeystrokeHandling;
			}
		}
		[CRepr]
		public struct ITfThreadMgrEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e80e, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInitDocumentMgr(ITfDocumentMgr* pdim) mut
			{
				return VT.OnInitDocumentMgr(&this, pdim);
			}
			public HRESULT OnUninitDocumentMgr(ITfDocumentMgr* pdim) mut
			{
				return VT.OnUninitDocumentMgr(&this, pdim);
			}
			public HRESULT OnSetFocus(ITfDocumentMgr* pdimFocus, ITfDocumentMgr* pdimPrevFocus) mut
			{
				return VT.OnSetFocus(&this, pdimFocus, pdimPrevFocus);
			}
			public HRESULT OnPushContext(ITfContext* pic) mut
			{
				return VT.OnPushContext(&this, pic);
			}
			public HRESULT OnPopContext(ITfContext* pic) mut
			{
				return VT.OnPopContext(&this, pic);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdim) OnInitDocumentMgr;
				public new function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdim) OnUninitDocumentMgr;
				public new function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdimFocus, ITfDocumentMgr* pdimPrevFocus) OnSetFocus;
				public new function HRESULT(ITfThreadMgrEventSink *self, ITfContext* pic) OnPushContext;
				public new function HRESULT(ITfThreadMgrEventSink *self, ITfContext* pic) OnPopContext;
			}
		}
		[CRepr]
		public struct ITfConfigureSystemKeystrokeFeed : IUnknown
		{
			public const new Guid IID = .(0x0d2c969a, 0xbc9c, 0x437c, 0x84, 0xee, 0x95, 0x1c, 0x49, 0xb1, 0xa7, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DisableSystemKeystrokeFeed() mut
			{
				return VT.DisableSystemKeystrokeFeed(&this);
			}
			public HRESULT EnableSystemKeystrokeFeed() mut
			{
				return VT.EnableSystemKeystrokeFeed(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfConfigureSystemKeystrokeFeed *self) DisableSystemKeystrokeFeed;
				public new function HRESULT(ITfConfigureSystemKeystrokeFeed *self) EnableSystemKeystrokeFeed;
			}
		}
		[CRepr]
		public struct IEnumTfDocumentMgrs : IUnknown
		{
			public const new Guid IID = .(0xaa80e808, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfDocumentMgrs** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfDocumentMgr** rgDocumentMgr, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgDocumentMgr, pcFetched);
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
				public new function HRESULT(IEnumTfDocumentMgrs *self, IEnumTfDocumentMgrs** ppEnum) Clone;
				public new function HRESULT(IEnumTfDocumentMgrs *self, uint32 ulCount, ITfDocumentMgr** rgDocumentMgr, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfDocumentMgrs *self) Reset;
				public new function HRESULT(IEnumTfDocumentMgrs *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfDocumentMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f4, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateContext(uint32 tidOwner, uint32 dwFlags, IUnknown* punk, ITfContext** ppic, uint32* pecTextStore) mut
			{
				return VT.CreateContext(&this, tidOwner, dwFlags, punk, ppic, pecTextStore);
			}
			public HRESULT Push(ITfContext* pic) mut
			{
				return VT.Push(&this, pic);
			}
			public HRESULT Pop(uint32 dwFlags) mut
			{
				return VT.Pop(&this, dwFlags);
			}
			public HRESULT GetTop(ITfContext** ppic) mut
			{
				return VT.GetTop(&this, ppic);
			}
			public HRESULT GetBase(ITfContext** ppic) mut
			{
				return VT.GetBase(&this, ppic);
			}
			public HRESULT EnumContexts(IEnumTfContexts** ppEnum) mut
			{
				return VT.EnumContexts(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfDocumentMgr *self, uint32 tidOwner, uint32 dwFlags, IUnknown* punk, ITfContext** ppic, uint32* pecTextStore) CreateContext;
				public new function HRESULT(ITfDocumentMgr *self, ITfContext* pic) Push;
				public new function HRESULT(ITfDocumentMgr *self, uint32 dwFlags) Pop;
				public new function HRESULT(ITfDocumentMgr *self, ITfContext** ppic) GetTop;
				public new function HRESULT(ITfDocumentMgr *self, ITfContext** ppic) GetBase;
				public new function HRESULT(ITfDocumentMgr *self, IEnumTfContexts** ppEnum) EnumContexts;
			}
		}
		[CRepr]
		public struct IEnumTfContexts : IUnknown
		{
			public const new Guid IID = .(0x8f1a7ea6, 0x1654, 0x4502, 0xa8, 0x6e, 0xb2, 0x90, 0x23, 0x44, 0xd5, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfContexts** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfContext** rgContext, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgContext, pcFetched);
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
				public new function HRESULT(IEnumTfContexts *self, IEnumTfContexts** ppEnum) Clone;
				public new function HRESULT(IEnumTfContexts *self, uint32 ulCount, ITfContext** rgContext, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfContexts *self) Reset;
				public new function HRESULT(IEnumTfContexts *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0xd7540241, 0xf9a1, 0x4364, 0xbe, 0xfc, 0xdb, 0xcd, 0x2c, 0x43, 0x95, 0xb7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOwnerClsid(Guid* pclsid) mut
			{
				return VT.GetOwnerClsid(&this, pclsid);
			}
			public HRESULT GetRange(ITfRange** ppRange) mut
			{
				return VT.GetRange(&this, ppRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCompositionView *self, Guid* pclsid) GetOwnerClsid;
				public new function HRESULT(ITfCompositionView *self, ITfRange** ppRange) GetRange;
			}
		}
		[CRepr]
		public struct IEnumITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0x5efd22ba, 0x7838, 0x46cb, 0x88, 0xe2, 0xca, 0xdb, 0x14, 0x12, 0x4f, 0x8f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumITfCompositionView** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfCompositionView** rgCompositionView, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgCompositionView, pcFetched);
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
				public new function HRESULT(IEnumITfCompositionView *self, IEnumITfCompositionView** ppEnum) Clone;
				public new function HRESULT(IEnumITfCompositionView *self, uint32 ulCount, ITfCompositionView** rgCompositionView, uint32* pcFetched) Next;
				public new function HRESULT(IEnumITfCompositionView *self) Reset;
				public new function HRESULT(IEnumITfCompositionView *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfComposition : IUnknown
		{
			public const new Guid IID = .(0x20168d64, 0x5a8f, 0x4a5a, 0xb7, 0xbd, 0xcf, 0xa2, 0x9f, 0x4d, 0x0f, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRange(ITfRange** ppRange) mut
			{
				return VT.GetRange(&this, ppRange);
			}
			public HRESULT ShiftStart(uint32 ecWrite, ITfRange* pNewStart) mut
			{
				return VT.ShiftStart(&this, ecWrite, pNewStart);
			}
			public HRESULT ShiftEnd(uint32 ecWrite, ITfRange* pNewEnd) mut
			{
				return VT.ShiftEnd(&this, ecWrite, pNewEnd);
			}
			public HRESULT EndComposition(uint32 ecWrite) mut
			{
				return VT.EndComposition(&this, ecWrite);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfComposition *self, ITfRange** ppRange) GetRange;
				public new function HRESULT(ITfComposition *self, uint32 ecWrite, ITfRange* pNewStart) ShiftStart;
				public new function HRESULT(ITfComposition *self, uint32 ecWrite, ITfRange* pNewEnd) ShiftEnd;
				public new function HRESULT(ITfComposition *self, uint32 ecWrite) EndComposition;
			}
		}
		[CRepr]
		public struct ITfCompositionSink : IUnknown
		{
			public const new Guid IID = .(0xa781718c, 0x579a, 0x4b15, 0xa2, 0x80, 0x32, 0xb8, 0x57, 0x7a, 0xcc, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCompositionTerminated(uint32 ecWrite, ITfComposition* pComposition) mut
			{
				return VT.OnCompositionTerminated(&this, ecWrite, pComposition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCompositionSink *self, uint32 ecWrite, ITfComposition* pComposition) OnCompositionTerminated;
			}
		}
		[CRepr]
		public struct ITfContextComposition : IUnknown
		{
			public const new Guid IID = .(0xd40c8aae, 0xac92, 0x4fc7, 0x9a, 0x11, 0x0e, 0xe0, 0xe2, 0x3a, 0xa3, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartComposition(uint32 ecWrite, ITfRange* pCompositionRange, ITfCompositionSink* pSink, ITfComposition** ppComposition) mut
			{
				return VT.StartComposition(&this, ecWrite, pCompositionRange, pSink, ppComposition);
			}
			public HRESULT EnumCompositions(IEnumITfCompositionView** ppEnum) mut
			{
				return VT.EnumCompositions(&this, ppEnum);
			}
			public HRESULT FindComposition(uint32 ecRead, ITfRange* pTestRange, IEnumITfCompositionView** ppEnum) mut
			{
				return VT.FindComposition(&this, ecRead, pTestRange, ppEnum);
			}
			public HRESULT TakeOwnership(uint32 ecWrite, ITfCompositionView* pComposition, ITfCompositionSink* pSink, ITfComposition** ppComposition) mut
			{
				return VT.TakeOwnership(&this, ecWrite, pComposition, pSink, ppComposition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextComposition *self, uint32 ecWrite, ITfRange* pCompositionRange, ITfCompositionSink* pSink, ITfComposition** ppComposition) StartComposition;
				public new function HRESULT(ITfContextComposition *self, IEnumITfCompositionView** ppEnum) EnumCompositions;
				public new function HRESULT(ITfContextComposition *self, uint32 ecRead, ITfRange* pTestRange, IEnumITfCompositionView** ppEnum) FindComposition;
				public new function HRESULT(ITfContextComposition *self, uint32 ecWrite, ITfCompositionView* pComposition, ITfCompositionSink* pSink, ITfComposition** ppComposition) TakeOwnership;
			}
		}
		[CRepr]
		public struct ITfContextOwnerCompositionServices : ITfContextComposition
		{
			public const new Guid IID = .(0x86462810, 0x593b, 0x4916, 0x97, 0x64, 0x19, 0xc0, 0x8e, 0x9c, 0xe1, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TerminateComposition(ITfCompositionView* pComposition) mut
			{
				return VT.TerminateComposition(&this, pComposition);
			}
			[CRepr]
			public struct VTable : ITfContextComposition.VTable
			{
				public new function HRESULT(ITfContextOwnerCompositionServices *self, ITfCompositionView* pComposition) TerminateComposition;
			}
		}
		[CRepr]
		public struct ITfContextOwnerCompositionSink : IUnknown
		{
			public const new Guid IID = .(0x5f20aa40, 0xb57a, 0x4f34, 0x96, 0xab, 0x35, 0x76, 0xf3, 0x77, 0xcc, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartComposition(ITfCompositionView* pComposition, BOOL* pfOk) mut
			{
				return VT.OnStartComposition(&this, pComposition, pfOk);
			}
			public HRESULT OnUpdateComposition(ITfCompositionView* pComposition, ITfRange* pRangeNew) mut
			{
				return VT.OnUpdateComposition(&this, pComposition, pRangeNew);
			}
			public HRESULT OnEndComposition(ITfCompositionView* pComposition) mut
			{
				return VT.OnEndComposition(&this, pComposition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition, BOOL* pfOk) OnStartComposition;
				public new function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition, ITfRange* pRangeNew) OnUpdateComposition;
				public new function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition) OnEndComposition;
			}
		}
		[CRepr]
		public struct ITfContextView : IUnknown
		{
			public const new Guid IID = .(0x2433bf8e, 0x0f9b, 0x435c, 0xba, 0x2c, 0x18, 0x06, 0x11, 0x97, 0x8c, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRangeFromPoint(uint32 ec, POINT* ppt, uint32 dwFlags, ITfRange** ppRange) mut
			{
				return VT.GetRangeFromPoint(&this, ec, ppt, dwFlags, ppRange);
			}
			public HRESULT GetTextExt(uint32 ec, ITfRange* pRange, RECT* prc, BOOL* pfClipped) mut
			{
				return VT.GetTextExt(&this, ec, pRange, prc, pfClipped);
			}
			public HRESULT GetScreenExt(RECT* prc) mut
			{
				return VT.GetScreenExt(&this, prc);
			}
			public HRESULT GetWnd(HWND* phwnd) mut
			{
				return VT.GetWnd(&this, phwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextView *self, uint32 ec, POINT* ppt, uint32 dwFlags, ITfRange** ppRange) GetRangeFromPoint;
				public new function HRESULT(ITfContextView *self, uint32 ec, ITfRange* pRange, RECT* prc, BOOL* pfClipped) GetTextExt;
				public new function HRESULT(ITfContextView *self, RECT* prc) GetScreenExt;
				public new function HRESULT(ITfContextView *self, HWND* phwnd) GetWnd;
			}
		}
		[CRepr]
		public struct IEnumTfContextViews : IUnknown
		{
			public const new Guid IID = .(0xf0c0f8dd, 0xcf38, 0x44e1, 0xbb, 0x0f, 0x68, 0xcf, 0x0d, 0x55, 0x1c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfContextViews** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfContextView** rgViews, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgViews, pcFetched);
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
				public new function HRESULT(IEnumTfContextViews *self, IEnumTfContextViews** ppEnum) Clone;
				public new function HRESULT(IEnumTfContextViews *self, uint32 ulCount, ITfContextView** rgViews, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfContextViews *self) Reset;
				public new function HRESULT(IEnumTfContextViews *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfContext : IUnknown
		{
			public const new Guid IID = .(0xaa80e7fd, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequestEditSession(uint32 tid, ITfEditSession* pes, TF_CONTEXT_EDIT_CONTEXT_FLAGS dwFlags, HRESULT* phrSession) mut
			{
				return VT.RequestEditSession(&this, tid, pes, dwFlags, phrSession);
			}
			public HRESULT InWriteSession(uint32 tid, BOOL* pfWriteSession) mut
			{
				return VT.InWriteSession(&this, tid, pfWriteSession);
			}
			public HRESULT GetSelection(uint32 ec, uint32 ulIndex, uint32 ulCount, TF_SELECTION* pSelection, uint32* pcFetched) mut
			{
				return VT.GetSelection(&this, ec, ulIndex, ulCount, pSelection, pcFetched);
			}
			public HRESULT SetSelection(uint32 ec, uint32 ulCount, TF_SELECTION* pSelection) mut
			{
				return VT.SetSelection(&this, ec, ulCount, pSelection);
			}
			public HRESULT GetStart(uint32 ec, ITfRange** ppStart) mut
			{
				return VT.GetStart(&this, ec, ppStart);
			}
			public HRESULT GetEnd(uint32 ec, ITfRange** ppEnd) mut
			{
				return VT.GetEnd(&this, ec, ppEnd);
			}
			public HRESULT GetActiveView(ITfContextView** ppView) mut
			{
				return VT.GetActiveView(&this, ppView);
			}
			public HRESULT EnumViews(IEnumTfContextViews** ppEnum) mut
			{
				return VT.EnumViews(&this, ppEnum);
			}
			public HRESULT GetStatus(TS_STATUS* pdcs) mut
			{
				return VT.GetStatus(&this, pdcs);
			}
			public HRESULT GetProperty(Guid* guidProp, ITfProperty** ppProp) mut
			{
				return VT.GetProperty(&this, guidProp, ppProp);
			}
			public HRESULT GetAppProperty(Guid* guidProp, ITfReadOnlyProperty** ppProp) mut
			{
				return VT.GetAppProperty(&this, guidProp, ppProp);
			}
			public HRESULT TrackProperties(Guid** prgProp, uint32 cProp, Guid** prgAppProp, uint32 cAppProp, ITfReadOnlyProperty** ppProperty) mut
			{
				return VT.TrackProperties(&this, prgProp, cProp, prgAppProp, cAppProp, ppProperty);
			}
			public HRESULT EnumProperties(IEnumTfProperties** ppEnum) mut
			{
				return VT.EnumProperties(&this, ppEnum);
			}
			public HRESULT GetDocumentMgr(ITfDocumentMgr** ppDm) mut
			{
				return VT.GetDocumentMgr(&this, ppDm);
			}
			public HRESULT CreateRangeBackup(uint32 ec, ITfRange* pRange, ITfRangeBackup** ppBackup) mut
			{
				return VT.CreateRangeBackup(&this, ec, pRange, ppBackup);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContext *self, uint32 tid, ITfEditSession* pes, TF_CONTEXT_EDIT_CONTEXT_FLAGS dwFlags, HRESULT* phrSession) RequestEditSession;
				public new function HRESULT(ITfContext *self, uint32 tid, BOOL* pfWriteSession) InWriteSession;
				public new function HRESULT(ITfContext *self, uint32 ec, uint32 ulIndex, uint32 ulCount, TF_SELECTION* pSelection, uint32* pcFetched) GetSelection;
				public new function HRESULT(ITfContext *self, uint32 ec, uint32 ulCount, TF_SELECTION* pSelection) SetSelection;
				public new function HRESULT(ITfContext *self, uint32 ec, ITfRange** ppStart) GetStart;
				public new function HRESULT(ITfContext *self, uint32 ec, ITfRange** ppEnd) GetEnd;
				public new function HRESULT(ITfContext *self, ITfContextView** ppView) GetActiveView;
				public new function HRESULT(ITfContext *self, IEnumTfContextViews** ppEnum) EnumViews;
				public new function HRESULT(ITfContext *self, TS_STATUS* pdcs) GetStatus;
				public new function HRESULT(ITfContext *self, Guid* guidProp, ITfProperty** ppProp) GetProperty;
				public new function HRESULT(ITfContext *self, Guid* guidProp, ITfReadOnlyProperty** ppProp) GetAppProperty;
				public new function HRESULT(ITfContext *self, Guid** prgProp, uint32 cProp, Guid** prgAppProp, uint32 cAppProp, ITfReadOnlyProperty** ppProperty) TrackProperties;
				public new function HRESULT(ITfContext *self, IEnumTfProperties** ppEnum) EnumProperties;
				public new function HRESULT(ITfContext *self, ITfDocumentMgr** ppDm) GetDocumentMgr;
				public new function HRESULT(ITfContext *self, uint32 ec, ITfRange* pRange, ITfRangeBackup** ppBackup) CreateRangeBackup;
			}
		}
		[CRepr]
		public struct ITfQueryEmbedded : IUnknown
		{
			public const new Guid IID = .(0x0fab9bdb, 0xd250, 0x4169, 0x84, 0xe5, 0x6b, 0xe1, 0x18, 0xfd, 0xd7, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryInsertEmbedded(Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) mut
			{
				return VT.QueryInsertEmbedded(&this, pguidService, pFormatEtc, pfInsertable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfQueryEmbedded *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
			}
		}
		[CRepr]
		public struct ITfInsertAtSelection : IUnknown
		{
			public const new Guid IID = .(0x55ce16ba, 0x3014, 0x41c1, 0x9c, 0xeb, 0xfa, 0xde, 0x14, 0x46, 0xac, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertTextAtSelection(uint32 ec, INSERT_TEXT_AT_SELECTION_FLAGS dwFlags, char16* pchText, int32 cch, ITfRange** ppRange) mut
			{
				return VT.InsertTextAtSelection(&this, ec, dwFlags, pchText, cch, ppRange);
			}
			public HRESULT InsertEmbeddedAtSelection(uint32 ec, uint32 dwFlags, IDataObject* pDataObject, ITfRange** ppRange) mut
			{
				return VT.InsertEmbeddedAtSelection(&this, ec, dwFlags, pDataObject, ppRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInsertAtSelection *self, uint32 ec, INSERT_TEXT_AT_SELECTION_FLAGS dwFlags, char16* pchText, int32 cch, ITfRange** ppRange) InsertTextAtSelection;
				public new function HRESULT(ITfInsertAtSelection *self, uint32 ec, uint32 dwFlags, IDataObject* pDataObject, ITfRange** ppRange) InsertEmbeddedAtSelection;
			}
		}
		[CRepr]
		public struct ITfCleanupContextSink : IUnknown
		{
			public const new Guid IID = .(0x01689689, 0x7acb, 0x4e9b, 0xab, 0x7c, 0x7e, 0xa4, 0x6b, 0x12, 0xb5, 0x22);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCleanupContext(uint32 ecWrite, ITfContext* pic) mut
			{
				return VT.OnCleanupContext(&this, ecWrite, pic);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCleanupContextSink *self, uint32 ecWrite, ITfContext* pic) OnCleanupContext;
			}
		}
		[CRepr]
		public struct ITfCleanupContextDurationSink : IUnknown
		{
			public const new Guid IID = .(0x45c35144, 0x154e, 0x4797, 0xbe, 0xd8, 0xd3, 0x3a, 0xe7, 0xbf, 0x87, 0x94);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartCleanupContext() mut
			{
				return VT.OnStartCleanupContext(&this);
			}
			public HRESULT OnEndCleanupContext() mut
			{
				return VT.OnEndCleanupContext(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCleanupContextDurationSink *self) OnStartCleanupContext;
				public new function HRESULT(ITfCleanupContextDurationSink *self) OnEndCleanupContext;
			}
		}
		[CRepr]
		public struct ITfReadOnlyProperty : IUnknown
		{
			public const new Guid IID = .(0x17d49a3d, 0xf8b8, 0x4b2f, 0xb2, 0x54, 0x52, 0x31, 0x9d, 0xd6, 0x4c, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguid) mut
			{
				return VT.ComGetType(&this, pguid);
			}
			public HRESULT EnumRanges(uint32 ec, IEnumTfRanges** ppEnum, ITfRange* pTargetRange) mut
			{
				return VT.EnumRanges(&this, ec, ppEnum, pTargetRange);
			}
			public HRESULT GetValue(uint32 ec, ITfRange* pRange, VARIANT* pvarValue) mut
			{
				return VT.GetValue(&this, ec, pRange, pvarValue);
			}
			public HRESULT GetContext(ITfContext** ppContext) mut
			{
				return VT.GetContext(&this, ppContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfReadOnlyProperty *self, Guid* pguid) ComGetType;
				public new function HRESULT(ITfReadOnlyProperty *self, uint32 ec, IEnumTfRanges** ppEnum, ITfRange* pTargetRange) EnumRanges;
				public new function HRESULT(ITfReadOnlyProperty *self, uint32 ec, ITfRange* pRange, VARIANT* pvarValue) GetValue;
				public new function HRESULT(ITfReadOnlyProperty *self, ITfContext** ppContext) GetContext;
			}
		}
		[CRepr]
		public struct IEnumTfPropertyValue : IUnknown
		{
			public const new Guid IID = .(0x8ed8981b, 0x7c10, 0x4d7d, 0x9f, 0xb3, 0xab, 0x72, 0xe9, 0xc7, 0x5f, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfPropertyValue** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, TF_PROPERTYVAL* rgValues, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgValues, pcFetched);
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
				public new function HRESULT(IEnumTfPropertyValue *self, IEnumTfPropertyValue** ppEnum) Clone;
				public new function HRESULT(IEnumTfPropertyValue *self, uint32 ulCount, TF_PROPERTYVAL* rgValues, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfPropertyValue *self) Reset;
				public new function HRESULT(IEnumTfPropertyValue *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfMouseTracker : IUnknown
		{
			public const new Guid IID = .(0x09d146cd, 0xa544, 0x4132, 0x92, 0x5b, 0x7a, 0xfa, 0x8e, 0xf3, 0x22, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseMouseSink(ITfRange* range, ITfMouseSink* pSink, uint32* pdwCookie) mut
			{
				return VT.AdviseMouseSink(&this, range, pSink, pdwCookie);
			}
			public HRESULT UnadviseMouseSink(uint32 dwCookie) mut
			{
				return VT.UnadviseMouseSink(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMouseTracker *self, ITfRange* range, ITfMouseSink* pSink, uint32* pdwCookie) AdviseMouseSink;
				public new function HRESULT(ITfMouseTracker *self, uint32 dwCookie) UnadviseMouseSink;
			}
		}
		[CRepr]
		public struct ITfMouseTrackerACP : IUnknown
		{
			public const new Guid IID = .(0x3bdd78e2, 0xc16e, 0x47fd, 0xb8, 0x83, 0xce, 0x6f, 0xac, 0xc1, 0xa2, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseMouseSink(ITfRangeACP* range, ITfMouseSink* pSink, uint32* pdwCookie) mut
			{
				return VT.AdviseMouseSink(&this, range, pSink, pdwCookie);
			}
			public HRESULT UnadviseMouseSink(uint32 dwCookie) mut
			{
				return VT.UnadviseMouseSink(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMouseTrackerACP *self, ITfRangeACP* range, ITfMouseSink* pSink, uint32* pdwCookie) AdviseMouseSink;
				public new function HRESULT(ITfMouseTrackerACP *self, uint32 dwCookie) UnadviseMouseSink;
			}
		}
		[CRepr]
		public struct ITfMouseSink : IUnknown
		{
			public const new Guid IID = .(0xa1adaaa2, 0x3a24, 0x449d, 0xac, 0x96, 0x51, 0x83, 0xe7, 0xf5, 0xc2, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnMouseEvent(uint32 uEdge, uint32 uQuadrant, uint32 dwBtnStatus, BOOL* pfEaten) mut
			{
				return VT.OnMouseEvent(&this, uEdge, uQuadrant, dwBtnStatus, pfEaten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMouseSink *self, uint32 uEdge, uint32 uQuadrant, uint32 dwBtnStatus, BOOL* pfEaten) OnMouseEvent;
			}
		}
		[CRepr]
		public struct ITfEditRecord : IUnknown
		{
			public const new Guid IID = .(0x42d4d099, 0x7c1a, 0x4a89, 0xb8, 0x36, 0x6c, 0x6f, 0x22, 0x16, 0x0d, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSelectionStatus(BOOL* pfChanged) mut
			{
				return VT.GetSelectionStatus(&this, pfChanged);
			}
			public HRESULT GetTextAndPropertyUpdates(GET_TEXT_AND_PROPERTY_UPDATES_FLAGS dwFlags, Guid** prgProperties, uint32 cProperties, IEnumTfRanges** ppEnum) mut
			{
				return VT.GetTextAndPropertyUpdates(&this, dwFlags, prgProperties, cProperties, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfEditRecord *self, BOOL* pfChanged) GetSelectionStatus;
				public new function HRESULT(ITfEditRecord *self, GET_TEXT_AND_PROPERTY_UPDATES_FLAGS dwFlags, Guid** prgProperties, uint32 cProperties, IEnumTfRanges** ppEnum) GetTextAndPropertyUpdates;
			}
		}
		[CRepr]
		public struct ITfTextEditSink : IUnknown
		{
			public const new Guid IID = .(0x8127d409, 0xccd3, 0x4683, 0x96, 0x7a, 0xb4, 0x3d, 0x5b, 0x48, 0x2b, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEndEdit(ITfContext* pic, uint32 ecReadOnly, ITfEditRecord* pEditRecord) mut
			{
				return VT.OnEndEdit(&this, pic, ecReadOnly, pEditRecord);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfTextEditSink *self, ITfContext* pic, uint32 ecReadOnly, ITfEditRecord* pEditRecord) OnEndEdit;
			}
		}
		[CRepr]
		public struct ITfTextLayoutSink : IUnknown
		{
			public const new Guid IID = .(0x2af2d06a, 0xdd5b, 0x4927, 0xa0, 0xb4, 0x54, 0xf1, 0x9c, 0x91, 0xfa, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLayoutChange(ITfContext* pic, TfLayoutCode lcode, ITfContextView* pView) mut
			{
				return VT.OnLayoutChange(&this, pic, lcode, pView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfTextLayoutSink *self, ITfContext* pic, TfLayoutCode lcode, ITfContextView* pView) OnLayoutChange;
			}
		}
		[CRepr]
		public struct ITfStatusSink : IUnknown
		{
			public const new Guid IID = .(0x6b7d8d73, 0xb267, 0x4f69, 0xb3, 0x2e, 0x1c, 0xa3, 0x21, 0xce, 0x4f, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStatusChange(ITfContext* pic, uint32 dwFlags) mut
			{
				return VT.OnStatusChange(&this, pic, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfStatusSink *self, ITfContext* pic, uint32 dwFlags) OnStatusChange;
			}
		}
		[CRepr]
		public struct ITfEditTransactionSink : IUnknown
		{
			public const new Guid IID = .(0x708fbf70, 0xb520, 0x416b, 0xb0, 0x6c, 0x2c, 0x41, 0xab, 0x44, 0xf8, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStartEditTransaction(ITfContext* pic) mut
			{
				return VT.OnStartEditTransaction(&this, pic);
			}
			public HRESULT OnEndEditTransaction(ITfContext* pic) mut
			{
				return VT.OnEndEditTransaction(&this, pic);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfEditTransactionSink *self, ITfContext* pic) OnStartEditTransaction;
				public new function HRESULT(ITfEditTransactionSink *self, ITfContext* pic) OnEndEditTransaction;
			}
		}
		[CRepr]
		public struct ITfContextOwner : IUnknown
		{
			public const new Guid IID = .(0xaa80e80c, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetACPFromPoint(POINT* ptScreen, uint32 dwFlags, int32* pacp) mut
			{
				return VT.GetACPFromPoint(&this, ptScreen, dwFlags, pacp);
			}
			public HRESULT GetTextExt(int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) mut
			{
				return VT.GetTextExt(&this, acpStart, acpEnd, prc, pfClipped);
			}
			public HRESULT GetScreenExt(RECT* prc) mut
			{
				return VT.GetScreenExt(&this, prc);
			}
			public HRESULT GetStatus(TS_STATUS* pdcs) mut
			{
				return VT.GetStatus(&this, pdcs);
			}
			public HRESULT GetWnd(HWND* phwnd) mut
			{
				return VT.GetWnd(&this, phwnd);
			}
			public HRESULT GetAttribute(Guid* rguidAttribute, VARIANT* pvarValue) mut
			{
				return VT.GetAttribute(&this, rguidAttribute, pvarValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextOwner *self, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
				public new function HRESULT(ITfContextOwner *self, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
				public new function HRESULT(ITfContextOwner *self, RECT* prc) GetScreenExt;
				public new function HRESULT(ITfContextOwner *self, TS_STATUS* pdcs) GetStatus;
				public new function HRESULT(ITfContextOwner *self, HWND* phwnd) GetWnd;
				public new function HRESULT(ITfContextOwner *self, Guid* rguidAttribute, VARIANT* pvarValue) GetAttribute;
			}
		}
		[CRepr]
		public struct ITfContextOwnerServices : IUnknown
		{
			public const new Guid IID = .(0xb23eb630, 0x3e1c, 0x11d3, 0xa7, 0x45, 0x00, 0x50, 0x04, 0x0a, 0xb4, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLayoutChange() mut
			{
				return VT.OnLayoutChange(&this);
			}
			public HRESULT OnStatusChange(uint32 dwFlags) mut
			{
				return VT.OnStatusChange(&this, dwFlags);
			}
			public HRESULT OnAttributeChange(Guid* rguidAttribute) mut
			{
				return VT.OnAttributeChange(&this, rguidAttribute);
			}
			public HRESULT Serialize(ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) mut
			{
				return VT.Serialize(&this, pProp, pRange, pHdr, pStream);
			}
			public HRESULT Unserialize(ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) mut
			{
				return VT.Unserialize(&this, pProp, pHdr, pStream, pLoader);
			}
			public HRESULT ForceLoadProperty(ITfProperty* pProp) mut
			{
				return VT.ForceLoadProperty(&this, pProp);
			}
			public HRESULT CreateRange(int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) mut
			{
				return VT.CreateRange(&this, acpStart, acpEnd, ppRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextOwnerServices *self) OnLayoutChange;
				public new function HRESULT(ITfContextOwnerServices *self, uint32 dwFlags) OnStatusChange;
				public new function HRESULT(ITfContextOwnerServices *self, Guid* rguidAttribute) OnAttributeChange;
				public new function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) Serialize;
				public new function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) Unserialize;
				public new function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp) ForceLoadProperty;
				public new function HRESULT(ITfContextOwnerServices *self, int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) CreateRange;
			}
		}
		[CRepr]
		public struct ITfContextKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0x0552ba5d, 0xc835, 0x4934, 0xbf, 0x50, 0x84, 0x6a, 0xaa, 0x67, 0x43, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnKeyDown(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnKeyDown(&this, wParam, lParam, pfEaten);
			}
			public HRESULT OnKeyUp(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnKeyUp(&this, wParam, lParam, pfEaten);
			}
			public HRESULT OnTestKeyDown(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnTestKeyDown(&this, wParam, lParam, pfEaten);
			}
			public HRESULT OnTestKeyUp(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnTestKeyUp(&this, wParam, lParam, pfEaten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
				public new function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyUp;
				public new function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyDown;
				public new function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyUp;
			}
		}
		[CRepr]
		public struct ITfEditSession : IUnknown
		{
			public const new Guid IID = .(0xaa80e803, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoEditSession(uint32 ec) mut
			{
				return VT.DoEditSession(&this, ec);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfEditSession *self, uint32 ec) DoEditSession;
			}
		}
		[CRepr]
		public struct ITfRange : IUnknown
		{
			public const new Guid IID = .(0xaa80e7ff, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetText(uint32 ec, uint32 dwFlags, char16* pchText, uint32 cchMax, uint32* pcch) mut
			{
				return VT.GetText(&this, ec, dwFlags, pchText, cchMax, pcch);
			}
			public HRESULT SetText(uint32 ec, uint32 dwFlags, char16* pchText, int32 cch) mut
			{
				return VT.SetText(&this, ec, dwFlags, pchText, cch);
			}
			public HRESULT GetFormattedText(uint32 ec, IDataObject** ppDataObject) mut
			{
				return VT.GetFormattedText(&this, ec, ppDataObject);
			}
			public HRESULT GetEmbedded(uint32 ec, Guid* rguidService, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetEmbedded(&this, ec, rguidService, riid, ppunk);
			}
			public HRESULT InsertEmbedded(uint32 ec, uint32 dwFlags, IDataObject* pDataObject) mut
			{
				return VT.InsertEmbedded(&this, ec, dwFlags, pDataObject);
			}
			public HRESULT ShiftStart(uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) mut
			{
				return VT.ShiftStart(&this, ec, cchReq, pcch, pHalt);
			}
			public HRESULT ShiftEnd(uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) mut
			{
				return VT.ShiftEnd(&this, ec, cchReq, pcch, pHalt);
			}
			public HRESULT ShiftStartToRange(uint32 ec, ITfRange* pRange, TfAnchor aPos) mut
			{
				return VT.ShiftStartToRange(&this, ec, pRange, aPos);
			}
			public HRESULT ShiftEndToRange(uint32 ec, ITfRange* pRange, TfAnchor aPos) mut
			{
				return VT.ShiftEndToRange(&this, ec, pRange, aPos);
			}
			public HRESULT ShiftStartRegion(uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) mut
			{
				return VT.ShiftStartRegion(&this, ec, dir, pfNoRegion);
			}
			public HRESULT ShiftEndRegion(uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) mut
			{
				return VT.ShiftEndRegion(&this, ec, dir, pfNoRegion);
			}
			public HRESULT IsEmpty(uint32 ec, BOOL* pfEmpty) mut
			{
				return VT.IsEmpty(&this, ec, pfEmpty);
			}
			public HRESULT Collapse(uint32 ec, TfAnchor aPos) mut
			{
				return VT.Collapse(&this, ec, aPos);
			}
			public HRESULT IsEqualStart(uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) mut
			{
				return VT.IsEqualStart(&this, ec, pWith, aPos, pfEqual);
			}
			public HRESULT IsEqualEnd(uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) mut
			{
				return VT.IsEqualEnd(&this, ec, pWith, aPos, pfEqual);
			}
			public HRESULT CompareStart(uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) mut
			{
				return VT.CompareStart(&this, ec, pWith, aPos, plResult);
			}
			public HRESULT CompareEnd(uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) mut
			{
				return VT.CompareEnd(&this, ec, pWith, aPos, plResult);
			}
			public HRESULT AdjustForInsert(uint32 ec, uint32 cchInsert, BOOL* pfInsertOk) mut
			{
				return VT.AdjustForInsert(&this, ec, cchInsert, pfInsertOk);
			}
			public HRESULT GetGravity(TfGravity* pgStart, TfGravity* pgEnd) mut
			{
				return VT.GetGravity(&this, pgStart, pgEnd);
			}
			public HRESULT SetGravity(uint32 ec, TfGravity gStart, TfGravity gEnd) mut
			{
				return VT.SetGravity(&this, ec, gStart, gEnd);
			}
			public HRESULT Clone(ITfRange** ppClone) mut
			{
				return VT.Clone(&this, ppClone);
			}
			public HRESULT GetContext(ITfContext** ppContext) mut
			{
				return VT.GetContext(&this, ppContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, char16* pchText, uint32 cchMax, uint32* pcch) GetText;
				public new function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, char16* pchText, int32 cch) SetText;
				public new function HRESULT(ITfRange *self, uint32 ec, IDataObject** ppDataObject) GetFormattedText;
				public new function HRESULT(ITfRange *self, uint32 ec, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
				public new function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, IDataObject* pDataObject) InsertEmbedded;
				public new function HRESULT(ITfRange *self, uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) ShiftStart;
				public new function HRESULT(ITfRange *self, uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) ShiftEnd;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pRange, TfAnchor aPos) ShiftStartToRange;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pRange, TfAnchor aPos) ShiftEndToRange;
				public new function HRESULT(ITfRange *self, uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) ShiftStartRegion;
				public new function HRESULT(ITfRange *self, uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) ShiftEndRegion;
				public new function HRESULT(ITfRange *self, uint32 ec, BOOL* pfEmpty) IsEmpty;
				public new function HRESULT(ITfRange *self, uint32 ec, TfAnchor aPos) Collapse;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) IsEqualStart;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) IsEqualEnd;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) CompareStart;
				public new function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) CompareEnd;
				public new function HRESULT(ITfRange *self, uint32 ec, uint32 cchInsert, BOOL* pfInsertOk) AdjustForInsert;
				public new function HRESULT(ITfRange *self, TfGravity* pgStart, TfGravity* pgEnd) GetGravity;
				public new function HRESULT(ITfRange *self, uint32 ec, TfGravity gStart, TfGravity gEnd) SetGravity;
				public new function HRESULT(ITfRange *self, ITfRange** ppClone) Clone;
				public new function HRESULT(ITfRange *self, ITfContext** ppContext) GetContext;
			}
		}
		[CRepr]
		public struct ITfRangeACP : ITfRange
		{
			public const new Guid IID = .(0x057a6296, 0x029b, 0x4154, 0xb7, 0x9a, 0x0d, 0x46, 0x1d, 0x4e, 0xa9, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetExtent(int32* pacpAnchor, int32* pcch) mut
			{
				return VT.GetExtent(&this, pacpAnchor, pcch);
			}
			public HRESULT SetExtent(int32 acpAnchor, int32 cch) mut
			{
				return VT.SetExtent(&this, acpAnchor, cch);
			}
			[CRepr]
			public struct VTable : ITfRange.VTable
			{
				public new function HRESULT(ITfRangeACP *self, int32* pacpAnchor, int32* pcch) GetExtent;
				public new function HRESULT(ITfRangeACP *self, int32 acpAnchor, int32 cch) SetExtent;
			}
		}
		[CRepr]
		public struct ITextStoreACPServices : IUnknown
		{
			public const new Guid IID = .(0xaa80e901, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Serialize(ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) mut
			{
				return VT.Serialize(&this, pProp, pRange, pHdr, pStream);
			}
			public HRESULT Unserialize(ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) mut
			{
				return VT.Unserialize(&this, pProp, pHdr, pStream, pLoader);
			}
			public HRESULT ForceLoadProperty(ITfProperty* pProp) mut
			{
				return VT.ForceLoadProperty(&this, pProp);
			}
			public HRESULT CreateRange(int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) mut
			{
				return VT.CreateRange(&this, acpStart, acpEnd, ppRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) Serialize;
				public new function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) Unserialize;
				public new function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp) ForceLoadProperty;
				public new function HRESULT(ITextStoreACPServices *self, int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) CreateRange;
			}
		}
		[CRepr]
		public struct ITfRangeBackup : IUnknown
		{
			public const new Guid IID = .(0x463a506d, 0x6992, 0x49d2, 0x9b, 0x88, 0x93, 0xd5, 0x5e, 0x70, 0xbb, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Restore(uint32 ec, ITfRange* pRange) mut
			{
				return VT.Restore(&this, ec, pRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfRangeBackup *self, uint32 ec, ITfRange* pRange) Restore;
			}
		}
		[CRepr]
		public struct ITfPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x6834b120, 0x88cb, 0x11d2, 0xbf, 0x45, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguid) mut
			{
				return VT.ComGetType(&this, pguid);
			}
			public HRESULT GetDataType(uint32* pdwReserved) mut
			{
				return VT.GetDataType(&this, pdwReserved);
			}
			public HRESULT GetData(VARIANT* pvarValue) mut
			{
				return VT.GetData(&this, pvarValue);
			}
			public HRESULT OnTextUpdated(uint32 dwFlags, ITfRange* pRangeNew, BOOL* pfAccept) mut
			{
				return VT.OnTextUpdated(&this, dwFlags, pRangeNew, pfAccept);
			}
			public HRESULT Shrink(ITfRange* pRangeNew, BOOL* pfFree) mut
			{
				return VT.Shrink(&this, pRangeNew, pfFree);
			}
			public HRESULT Divide(ITfRange* pRangeThis, ITfRange* pRangeNew, ITfPropertyStore** ppPropStore) mut
			{
				return VT.Divide(&this, pRangeThis, pRangeNew, ppPropStore);
			}
			public HRESULT Clone(ITfPropertyStore** pPropStore) mut
			{
				return VT.Clone(&this, pPropStore);
			}
			public HRESULT GetPropertyRangeCreator(Guid* pclsid) mut
			{
				return VT.GetPropertyRangeCreator(&this, pclsid);
			}
			public HRESULT Serialize(IStream* pStream, uint32* pcb) mut
			{
				return VT.Serialize(&this, pStream, pcb);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfPropertyStore *self, Guid* pguid) ComGetType;
				public new function HRESULT(ITfPropertyStore *self, uint32* pdwReserved) GetDataType;
				public new function HRESULT(ITfPropertyStore *self, VARIANT* pvarValue) GetData;
				public new function HRESULT(ITfPropertyStore *self, uint32 dwFlags, ITfRange* pRangeNew, BOOL* pfAccept) OnTextUpdated;
				public new function HRESULT(ITfPropertyStore *self, ITfRange* pRangeNew, BOOL* pfFree) Shrink;
				public new function HRESULT(ITfPropertyStore *self, ITfRange* pRangeThis, ITfRange* pRangeNew, ITfPropertyStore** ppPropStore) Divide;
				public new function HRESULT(ITfPropertyStore *self, ITfPropertyStore** pPropStore) Clone;
				public new function HRESULT(ITfPropertyStore *self, Guid* pclsid) GetPropertyRangeCreator;
				public new function HRESULT(ITfPropertyStore *self, IStream* pStream, uint32* pcb) Serialize;
			}
		}
		[CRepr]
		public struct IEnumTfRanges : IUnknown
		{
			public const new Guid IID = .(0xf99d3f40, 0x8e32, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfRanges** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfRange** ppRange, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, ppRange, pcFetched);
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
				public new function HRESULT(IEnumTfRanges *self, IEnumTfRanges** ppEnum) Clone;
				public new function HRESULT(IEnumTfRanges *self, uint32 ulCount, ITfRange** ppRange, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfRanges *self) Reset;
				public new function HRESULT(IEnumTfRanges *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCreatePropertyStore : IUnknown
		{
			public const new Guid IID = .(0x2463fbf0, 0xb0af, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsStoreSerializable(Guid* guidProp, ITfRange* pRange, ITfPropertyStore* pPropStore, BOOL* pfSerializable) mut
			{
				return VT.IsStoreSerializable(&this, guidProp, pRange, pPropStore, pfSerializable);
			}
			public HRESULT CreatePropertyStore(Guid* guidProp, ITfRange* pRange, uint32 cb, IStream* pStream, ITfPropertyStore** ppStore) mut
			{
				return VT.CreatePropertyStore(&this, guidProp, pRange, cb, pStream, ppStore);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCreatePropertyStore *self, Guid* guidProp, ITfRange* pRange, ITfPropertyStore* pPropStore, BOOL* pfSerializable) IsStoreSerializable;
				public new function HRESULT(ITfCreatePropertyStore *self, Guid* guidProp, ITfRange* pRange, uint32 cb, IStream* pStream, ITfPropertyStore** ppStore) CreatePropertyStore;
			}
		}
		[CRepr]
		public struct ITfPersistentPropertyLoaderACP : IUnknown
		{
			public const new Guid IID = .(0x4ef89150, 0x0807, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadProperty(TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream** ppStream) mut
			{
				return VT.LoadProperty(&this, pHdr, ppStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfPersistentPropertyLoaderACP *self, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream** ppStream) LoadProperty;
			}
		}
		[CRepr]
		public struct ITfProperty : ITfReadOnlyProperty
		{
			public const new Guid IID = .(0xe2449660, 0x9542, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindRange(uint32 ec, ITfRange* pRange, ITfRange** ppRange, TfAnchor aPos) mut
			{
				return VT.FindRange(&this, ec, pRange, ppRange, aPos);
			}
			public HRESULT SetValueStore(uint32 ec, ITfRange* pRange, ITfPropertyStore* pPropStore) mut
			{
				return VT.SetValueStore(&this, ec, pRange, pPropStore);
			}
			public HRESULT SetValue(uint32 ec, ITfRange* pRange, VARIANT* pvarValue) mut
			{
				return VT.SetValue(&this, ec, pRange, pvarValue);
			}
			public HRESULT Clear(uint32 ec, ITfRange* pRange) mut
			{
				return VT.Clear(&this, ec, pRange);
			}
			[CRepr]
			public struct VTable : ITfReadOnlyProperty.VTable
			{
				public new function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, ITfRange** ppRange, TfAnchor aPos) FindRange;
				public new function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, ITfPropertyStore* pPropStore) SetValueStore;
				public new function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, VARIANT* pvarValue) SetValue;
				public new function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange) Clear;
			}
		}
		[CRepr]
		public struct IEnumTfProperties : IUnknown
		{
			public const new Guid IID = .(0x19188cb0, 0xaca9, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfProperties** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfProperty** ppProp, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, ppProp, pcFetched);
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
				public new function HRESULT(IEnumTfProperties *self, IEnumTfProperties** ppEnum) Clone;
				public new function HRESULT(IEnumTfProperties *self, uint32 ulCount, ITfProperty** ppProp, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfProperties *self) Reset;
				public new function HRESULT(IEnumTfProperties *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCompartment : IUnknown
		{
			public const new Guid IID = .(0xbb08f7a9, 0x607a, 0x4384, 0x86, 0x23, 0x05, 0x68, 0x92, 0xb6, 0x43, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetValue(uint32 tid, VARIANT* pvarValue) mut
			{
				return VT.SetValue(&this, tid, pvarValue);
			}
			public HRESULT GetValue(VARIANT* pvarValue) mut
			{
				return VT.GetValue(&this, pvarValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCompartment *self, uint32 tid, VARIANT* pvarValue) SetValue;
				public new function HRESULT(ITfCompartment *self, VARIANT* pvarValue) GetValue;
			}
		}
		[CRepr]
		public struct ITfCompartmentEventSink : IUnknown
		{
			public const new Guid IID = .(0x743abd5f, 0xf26d, 0x48df, 0x8c, 0xc5, 0x23, 0x84, 0x92, 0x41, 0x9b, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChange(Guid* rguid) mut
			{
				return VT.OnChange(&this, rguid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCompartmentEventSink *self, Guid* rguid) OnChange;
			}
		}
		[CRepr]
		public struct ITfCompartmentMgr : IUnknown
		{
			public const new Guid IID = .(0x7dcf57ac, 0x18ad, 0x438b, 0x82, 0x4d, 0x97, 0x9b, 0xff, 0xb7, 0x4b, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCompartment(Guid* rguid, ITfCompartment** ppcomp) mut
			{
				return VT.GetCompartment(&this, rguid, ppcomp);
			}
			public HRESULT ClearCompartment(uint32 tid, Guid* rguid) mut
			{
				return VT.ClearCompartment(&this, tid, rguid);
			}
			public HRESULT EnumCompartments(IEnumGUID** ppEnum) mut
			{
				return VT.EnumCompartments(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCompartmentMgr *self, Guid* rguid, ITfCompartment** ppcomp) GetCompartment;
				public new function HRESULT(ITfCompartmentMgr *self, uint32 tid, Guid* rguid) ClearCompartment;
				public new function HRESULT(ITfCompartmentMgr *self, IEnumGUID** ppEnum) EnumCompartments;
			}
		}
		[CRepr]
		public struct ITfFunction : IUnknown
		{
			public const new Guid IID = .(0xdb593490, 0x098f, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDisplayName(BSTR* pbstrName) mut
			{
				return VT.GetDisplayName(&this, pbstrName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfFunction *self, BSTR* pbstrName) GetDisplayName;
			}
		}
		[CRepr]
		public struct ITfFunctionProvider : IUnknown
		{
			public const new Guid IID = .(0x101d6610, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(Guid* pguid) mut
			{
				return VT.ComGetType(&this, pguid);
			}
			public HRESULT GetDescription(BSTR* pbstrDesc) mut
			{
				return VT.GetDescription(&this, pbstrDesc);
			}
			public HRESULT GetFunction(Guid* rguid, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetFunction(&this, rguid, riid, ppunk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfFunctionProvider *self, Guid* pguid) ComGetType;
				public new function HRESULT(ITfFunctionProvider *self, BSTR* pbstrDesc) GetDescription;
				public new function HRESULT(ITfFunctionProvider *self, Guid* rguid, Guid* riid, IUnknown** ppunk) GetFunction;
			}
		}
		[CRepr]
		public struct IEnumTfFunctionProviders : IUnknown
		{
			public const new Guid IID = .(0xe4b24db0, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfFunctionProviders** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfFunctionProvider** ppCmdobj, uint32* pcFetch) mut
			{
				return VT.Next(&this, ulCount, ppCmdobj, pcFetch);
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
				public new function HRESULT(IEnumTfFunctionProviders *self, IEnumTfFunctionProviders** ppEnum) Clone;
				public new function HRESULT(IEnumTfFunctionProviders *self, uint32 ulCount, ITfFunctionProvider** ppCmdobj, uint32* pcFetch) Next;
				public new function HRESULT(IEnumTfFunctionProviders *self) Reset;
				public new function HRESULT(IEnumTfFunctionProviders *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x1f02b6c5, 0x7842, 0x4ee6, 0x8a, 0x0b, 0x9a, 0x24, 0x18, 0x3a, 0x95, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(Guid* rclsid) mut
			{
				return VT.Register(&this, rclsid);
			}
			public HRESULT Unregister(Guid* rclsid) mut
			{
				return VT.Unregister(&this, rclsid);
			}
			public HRESULT AddLanguageProfile(Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex) mut
			{
				return VT.AddLanguageProfile(&this, rclsid, langid, guidProfile, pchDesc, cchDesc, pchIconFile, cchFile, uIconIndex);
			}
			public HRESULT RemoveLanguageProfile(Guid* rclsid, uint16 langid, Guid* guidProfile) mut
			{
				return VT.RemoveLanguageProfile(&this, rclsid, langid, guidProfile);
			}
			public HRESULT EnumInputProcessorInfo(IEnumGUID** ppEnum) mut
			{
				return VT.EnumInputProcessorInfo(&this, ppEnum);
			}
			public HRESULT GetDefaultLanguageProfile(uint16 langid, Guid* catid, Guid* pclsid, Guid* pguidProfile) mut
			{
				return VT.GetDefaultLanguageProfile(&this, langid, catid, pclsid, pguidProfile);
			}
			public HRESULT SetDefaultLanguageProfile(uint16 langid, Guid* rclsid, Guid* guidProfiles) mut
			{
				return VT.SetDefaultLanguageProfile(&this, langid, rclsid, guidProfiles);
			}
			public HRESULT ActivateLanguageProfile(Guid* rclsid, uint16 langid, Guid* guidProfiles) mut
			{
				return VT.ActivateLanguageProfile(&this, rclsid, langid, guidProfiles);
			}
			public HRESULT GetActiveLanguageProfile(Guid* rclsid, uint16* plangid, Guid* pguidProfile) mut
			{
				return VT.GetActiveLanguageProfile(&this, rclsid, plangid, pguidProfile);
			}
			public HRESULT GetLanguageProfileDescription(Guid* rclsid, uint16 langid, Guid* guidProfile, BSTR* pbstrProfile) mut
			{
				return VT.GetLanguageProfileDescription(&this, rclsid, langid, guidProfile, pbstrProfile);
			}
			public HRESULT GetCurrentLanguage(uint16* plangid) mut
			{
				return VT.GetCurrentLanguage(&this, plangid);
			}
			public HRESULT ChangeCurrentLanguage(uint16 langid) mut
			{
				return VT.ChangeCurrentLanguage(&this, langid);
			}
			public HRESULT GetLanguageList(uint16** ppLangId, uint32* pulCount) mut
			{
				return VT.GetLanguageList(&this, ppLangId, pulCount);
			}
			public HRESULT EnumLanguageProfiles(uint16 langid, IEnumTfLanguageProfiles** ppEnum) mut
			{
				return VT.EnumLanguageProfiles(&this, langid, ppEnum);
			}
			public HRESULT EnableLanguageProfile(Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) mut
			{
				return VT.EnableLanguageProfile(&this, rclsid, langid, guidProfile, fEnable);
			}
			public HRESULT IsEnabledLanguageProfile(Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL* pfEnable) mut
			{
				return VT.IsEnabledLanguageProfile(&this, rclsid, langid, guidProfile, pfEnable);
			}
			public HRESULT EnableLanguageProfileByDefault(Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) mut
			{
				return VT.EnableLanguageProfileByDefault(&this, rclsid, langid, guidProfile, fEnable);
			}
			public HRESULT SubstituteKeyboardLayout(Guid* rclsid, uint16 langid, Guid* guidProfile, HKL hKL) mut
			{
				return VT.SubstituteKeyboardLayout(&this, rclsid, langid, guidProfile, hKL);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid) Register;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid) Unregister;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex) AddLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile) RemoveLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, IEnumGUID** ppEnum) EnumInputProcessorInfo;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, Guid* catid, Guid* pclsid, Guid* pguidProfile) GetDefaultLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, Guid* rclsid, Guid* guidProfiles) SetDefaultLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfiles) ActivateLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16* plangid, Guid* pguidProfile) GetActiveLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BSTR* pbstrProfile) GetLanguageProfileDescription;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16* plangid) GetCurrentLanguage;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16 langid) ChangeCurrentLanguage;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16** ppLangId, uint32* pulCount) GetLanguageList;
				public new function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, IEnumTfLanguageProfiles** ppEnum) EnumLanguageProfiles;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) EnableLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL* pfEnable) IsEnabledLanguageProfile;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) EnableLanguageProfileByDefault;
				public new function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, HKL hKL) SubstituteKeyboardLayout;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfilesEx : ITfInputProcessorProfiles
		{
			public const new Guid IID = .(0x892f230f, 0xfe00, 0x4a41, 0xa9, 0x8e, 0xfc, 0xd6, 0xde, 0x0d, 0x35, 0xef);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetLanguageProfileDisplayName(Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchFile, uint32 cchFile, uint32 uResId) mut
			{
				return VT.SetLanguageProfileDisplayName(&this, rclsid, langid, guidProfile, pchFile, cchFile, uResId);
			}
			[CRepr]
			public struct VTable : ITfInputProcessorProfiles.VTable
			{
				public new function HRESULT(ITfInputProcessorProfilesEx *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchFile, uint32 cchFile, uint32 uResId) SetLanguageProfileDisplayName;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileSubstituteLayout : IUnknown
		{
			public const new Guid IID = .(0x4fd67194, 0x1002, 0x4513, 0xbf, 0xf2, 0xc0, 0xdd, 0xf6, 0x25, 0x85, 0x52);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubstituteKeyboardLayout(Guid* rclsid, uint16 langid, Guid* guidProfile, HKL* phKL) mut
			{
				return VT.GetSubstituteKeyboardLayout(&this, rclsid, langid, guidProfile, phKL);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInputProcessorProfileSubstituteLayout *self, Guid* rclsid, uint16 langid, Guid* guidProfile, HKL* phKL) GetSubstituteKeyboardLayout;
			}
		}
		[CRepr]
		public struct ITfActiveLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0xb246cb75, 0xa93e, 0x4652, 0xbf, 0x8c, 0xb3, 0xfe, 0x0c, 0xfd, 0x7e, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivated(Guid* clsid, Guid* guidProfile, BOOL fActivated) mut
			{
				return VT.OnActivated(&this, clsid, guidProfile, fActivated);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfActiveLanguageProfileNotifySink *self, Guid* clsid, Guid* guidProfile, BOOL fActivated) OnActivated;
			}
		}
		[CRepr]
		public struct IEnumTfLanguageProfiles : IUnknown
		{
			public const new Guid IID = .(0x3d61bf11, 0xac5f, 0x42c8, 0xa4, 0xcb, 0x93, 0x1b, 0xcc, 0x28, 0xc7, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfLanguageProfiles** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, TF_LANGUAGEPROFILE* pProfile, uint32* pcFetch) mut
			{
				return VT.Next(&this, ulCount, pProfile, pcFetch);
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
				public new function HRESULT(IEnumTfLanguageProfiles *self, IEnumTfLanguageProfiles** ppEnum) Clone;
				public new function HRESULT(IEnumTfLanguageProfiles *self, uint32 ulCount, TF_LANGUAGEPROFILE* pProfile, uint32* pcFetch) Next;
				public new function HRESULT(IEnumTfLanguageProfiles *self) Reset;
				public new function HRESULT(IEnumTfLanguageProfiles *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0x43c9fe15, 0xf494, 0x4c17, 0x9d, 0xe2, 0xb8, 0xa4, 0xac, 0x35, 0x0a, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLanguageChange(uint16 langid, BOOL* pfAccept) mut
			{
				return VT.OnLanguageChange(&this, langid, pfAccept);
			}
			public HRESULT OnLanguageChanged() mut
			{
				return VT.OnLanguageChanged(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLanguageProfileNotifySink *self, uint16 langid, BOOL* pfAccept) OnLanguageChange;
				public new function HRESULT(ITfLanguageProfileNotifySink *self) OnLanguageChanged;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileMgr : IUnknown
		{
			public const new Guid IID = .(0x71c6e74c, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateProfile(uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) mut
			{
				return VT.ActivateProfile(&this, dwProfileType, langid, clsid, guidProfile, hkl, dwFlags);
			}
			public HRESULT DeactivateProfile(uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) mut
			{
				return VT.DeactivateProfile(&this, dwProfileType, langid, clsid, guidProfile, hkl, dwFlags);
			}
			public HRESULT GetProfile(uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, TF_INPUTPROCESSORPROFILE* pProfile) mut
			{
				return VT.GetProfile(&this, dwProfileType, langid, clsid, guidProfile, hkl, pProfile);
			}
			public HRESULT EnumProfiles(uint16 langid, IEnumTfInputProcessorProfiles** ppEnum) mut
			{
				return VT.EnumProfiles(&this, langid, ppEnum);
			}
			public HRESULT ReleaseInputProcessor(Guid* rclsid, uint32 dwFlags) mut
			{
				return VT.ReleaseInputProcessor(&this, rclsid, dwFlags);
			}
			public HRESULT RegisterProfile(Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex, HKL hklsubstitute, uint32 dwPreferredLayout, BOOL bEnabledByDefault, uint32 dwFlags) mut
			{
				return VT.RegisterProfile(&this, rclsid, langid, guidProfile, pchDesc, cchDesc, pchIconFile, cchFile, uIconIndex, hklsubstitute, dwPreferredLayout, bEnabledByDefault, dwFlags);
			}
			public HRESULT UnregisterProfile(Guid* rclsid, uint16 langid, Guid* guidProfile, uint32 dwFlags) mut
			{
				return VT.UnregisterProfile(&this, rclsid, langid, guidProfile, dwFlags);
			}
			public HRESULT GetActiveProfile(Guid* catid, TF_INPUTPROCESSORPROFILE* pProfile) mut
			{
				return VT.GetActiveProfile(&this, catid, pProfile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) ActivateProfile;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) DeactivateProfile;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, TF_INPUTPROCESSORPROFILE* pProfile) GetProfile;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, uint16 langid, IEnumTfInputProcessorProfiles** ppEnum) EnumProfiles;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint32 dwFlags) ReleaseInputProcessor;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex, HKL hklsubstitute, uint32 dwPreferredLayout, BOOL bEnabledByDefault, uint32 dwFlags) RegisterProfile;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint16 langid, Guid* guidProfile, uint32 dwFlags) UnregisterProfile;
				public new function HRESULT(ITfInputProcessorProfileMgr *self, Guid* catid, TF_INPUTPROCESSORPROFILE* pProfile) GetActiveProfile;
			}
		}
		[CRepr]
		public struct IEnumTfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x71c6e74d, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfInputProcessorProfiles** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, TF_INPUTPROCESSORPROFILE* pProfile, uint32* pcFetch) mut
			{
				return VT.Next(&this, ulCount, pProfile, pcFetch);
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
				public new function HRESULT(IEnumTfInputProcessorProfiles *self, IEnumTfInputProcessorProfiles** ppEnum) Clone;
				public new function HRESULT(IEnumTfInputProcessorProfiles *self, uint32 ulCount, TF_INPUTPROCESSORPROFILE* pProfile, uint32* pcFetch) Next;
				public new function HRESULT(IEnumTfInputProcessorProfiles *self) Reset;
				public new function HRESULT(IEnumTfInputProcessorProfiles *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfInputProcessorProfileActivationSink : IUnknown
		{
			public const new Guid IID = .(0x71c6e74e, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnActivated(uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* catid, Guid* guidProfile, HKL hkl, uint32 dwFlags) mut
			{
				return VT.OnActivated(&this, dwProfileType, langid, clsid, catid, guidProfile, hkl, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInputProcessorProfileActivationSink *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* catid, Guid* guidProfile, HKL hkl, uint32 dwFlags) OnActivated;
			}
		}
		[CRepr]
		public struct ITfKeystrokeMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f0, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseKeyEventSink(uint32 tid, ITfKeyEventSink* pSink, BOOL fForeground) mut
			{
				return VT.AdviseKeyEventSink(&this, tid, pSink, fForeground);
			}
			public HRESULT UnadviseKeyEventSink(uint32 tid) mut
			{
				return VT.UnadviseKeyEventSink(&this, tid);
			}
			public HRESULT GetForeground(Guid* pclsid) mut
			{
				return VT.GetForeground(&this, pclsid);
			}
			public HRESULT TestKeyDown(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.TestKeyDown(&this, wParam, lParam, pfEaten);
			}
			public HRESULT TestKeyUp(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.TestKeyUp(&this, wParam, lParam, pfEaten);
			}
			public HRESULT KeyDown(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.KeyDown(&this, wParam, lParam, pfEaten);
			}
			public HRESULT KeyUp(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.KeyUp(&this, wParam, lParam, pfEaten);
			}
			public HRESULT GetPreservedKey(ITfContext* pic, TF_PRESERVEDKEY* pprekey, Guid* pguid) mut
			{
				return VT.GetPreservedKey(&this, pic, pprekey, pguid);
			}
			public HRESULT IsPreservedKey(Guid* rguid, TF_PRESERVEDKEY* pprekey, BOOL* pfRegistered) mut
			{
				return VT.IsPreservedKey(&this, rguid, pprekey, pfRegistered);
			}
			public HRESULT PreserveKey(uint32 tid, Guid* rguid, TF_PRESERVEDKEY* prekey, char16* pchDesc, uint32 cchDesc) mut
			{
				return VT.PreserveKey(&this, tid, rguid, prekey, pchDesc, cchDesc);
			}
			public HRESULT UnpreserveKey(Guid* rguid, TF_PRESERVEDKEY* pprekey) mut
			{
				return VT.UnpreserveKey(&this, rguid, pprekey);
			}
			public HRESULT SetPreservedKeyDescription(Guid* rguid, char16* pchDesc, uint32 cchDesc) mut
			{
				return VT.SetPreservedKeyDescription(&this, rguid, pchDesc, cchDesc);
			}
			public HRESULT GetPreservedKeyDescription(Guid* rguid, BSTR* pbstrDesc) mut
			{
				return VT.GetPreservedKeyDescription(&this, rguid, pbstrDesc);
			}
			public HRESULT SimulatePreservedKey(ITfContext* pic, Guid* rguid, BOOL* pfEaten) mut
			{
				return VT.SimulatePreservedKey(&this, pic, rguid, pfEaten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfKeystrokeMgr *self, uint32 tid, ITfKeyEventSink* pSink, BOOL fForeground) AdviseKeyEventSink;
				public new function HRESULT(ITfKeystrokeMgr *self, uint32 tid) UnadviseKeyEventSink;
				public new function HRESULT(ITfKeystrokeMgr *self, Guid* pclsid) GetForeground;
				public new function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) TestKeyDown;
				public new function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) TestKeyUp;
				public new function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) KeyDown;
				public new function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) KeyUp;
				public new function HRESULT(ITfKeystrokeMgr *self, ITfContext* pic, TF_PRESERVEDKEY* pprekey, Guid* pguid) GetPreservedKey;
				public new function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, TF_PRESERVEDKEY* pprekey, BOOL* pfRegistered) IsPreservedKey;
				public new function HRESULT(ITfKeystrokeMgr *self, uint32 tid, Guid* rguid, TF_PRESERVEDKEY* prekey, char16* pchDesc, uint32 cchDesc) PreserveKey;
				public new function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, TF_PRESERVEDKEY* pprekey) UnpreserveKey;
				public new function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, char16* pchDesc, uint32 cchDesc) SetPreservedKeyDescription;
				public new function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, BSTR* pbstrDesc) GetPreservedKeyDescription;
				public new function HRESULT(ITfKeystrokeMgr *self, ITfContext* pic, Guid* rguid, BOOL* pfEaten) SimulatePreservedKey;
			}
		}
		[CRepr]
		public struct ITfKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f5, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetFocus(BOOL fForeground) mut
			{
				return VT.OnSetFocus(&this, fForeground);
			}
			public HRESULT OnTestKeyDown(ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnTestKeyDown(&this, pic, wParam, lParam, pfEaten);
			}
			public HRESULT OnTestKeyUp(ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnTestKeyUp(&this, pic, wParam, lParam, pfEaten);
			}
			public HRESULT OnKeyDown(ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnKeyDown(&this, pic, wParam, lParam, pfEaten);
			}
			public HRESULT OnKeyUp(ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnKeyUp(&this, pic, wParam, lParam, pfEaten);
			}
			public HRESULT OnPreservedKey(ITfContext* pic, Guid* rguid, BOOL* pfEaten) mut
			{
				return VT.OnPreservedKey(&this, pic, rguid, pfEaten);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfKeyEventSink *self, BOOL fForeground) OnSetFocus;
				public new function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyDown;
				public new function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyUp;
				public new function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
				public new function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyUp;
				public new function HRESULT(ITfKeyEventSink *self, ITfContext* pic, Guid* rguid, BOOL* pfEaten) OnPreservedKey;
			}
		}
		[CRepr]
		public struct ITfKeyTraceEventSink : IUnknown
		{
			public const new Guid IID = .(0x1cd4c13b, 0x1c36, 0x4191, 0xa7, 0x0a, 0x7f, 0x3e, 0x61, 0x1f, 0x36, 0x7d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnKeyTraceDown(WPARAM wParam, LPARAM lParam) mut
			{
				return VT.OnKeyTraceDown(&this, wParam, lParam);
			}
			public HRESULT OnKeyTraceUp(WPARAM wParam, LPARAM lParam) mut
			{
				return VT.OnKeyTraceUp(&this, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfKeyTraceEventSink *self, WPARAM wParam, LPARAM lParam) OnKeyTraceDown;
				public new function HRESULT(ITfKeyTraceEventSink *self, WPARAM wParam, LPARAM lParam) OnKeyTraceUp;
			}
		}
		[CRepr]
		public struct ITfPreservedKeyNotifySink : IUnknown
		{
			public const new Guid IID = .(0x6f77c993, 0xd2b1, 0x446e, 0x85, 0x3e, 0x59, 0x12, 0xef, 0xc8, 0xa2, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdated(TF_PRESERVEDKEY* pprekey) mut
			{
				return VT.OnUpdated(&this, pprekey);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfPreservedKeyNotifySink *self, TF_PRESERVEDKEY* pprekey) OnUpdated;
			}
		}
		[CRepr]
		public struct ITfMessagePump : IUnknown
		{
			public const new Guid IID = .(0x8f1b8ad8, 0x0b6b, 0x4874, 0x90, 0xc5, 0xbd, 0x76, 0x01, 0x1e, 0x8f, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PeekMessageA(MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) mut
			{
				return VT.PeekMessageA(&this, pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg, pfResult);
			}
			public HRESULT GetMessageA(MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) mut
			{
				return VT.GetMessageA(&this, pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, pfResult);
			}
			public HRESULT PeekMessageW(MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) mut
			{
				return VT.PeekMessageW(&this, pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, wRemoveMsg, pfResult);
			}
			public HRESULT GetMessageW(MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) mut
			{
				return VT.GetMessageW(&this, pMsg, hwnd, wMsgFilterMin, wMsgFilterMax, pfResult);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) PeekMessageA;
				public new function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) GetMessageA;
				public new function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) PeekMessageW;
				public new function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) GetMessageW;
			}
		}
		[CRepr]
		public struct ITfThreadFocusSink : IUnknown
		{
			public const new Guid IID = .(0xc0f1db0c, 0x3a20, 0x405c, 0xa3, 0x03, 0x96, 0xb6, 0x01, 0x0a, 0x88, 0x5f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetThreadFocus() mut
			{
				return VT.OnSetThreadFocus(&this);
			}
			public HRESULT OnKillThreadFocus() mut
			{
				return VT.OnKillThreadFocus(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfThreadFocusSink *self) OnSetThreadFocus;
				public new function HRESULT(ITfThreadFocusSink *self) OnKillThreadFocus;
			}
		}
		[CRepr]
		public struct ITfTextInputProcessor : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f7, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Activate(ITfThreadMgr* ptim, uint32 tid) mut
			{
				return VT.Activate(&this, ptim, tid);
			}
			public HRESULT Deactivate() mut
			{
				return VT.Deactivate(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfTextInputProcessor *self, ITfThreadMgr* ptim, uint32 tid) Activate;
				public new function HRESULT(ITfTextInputProcessor *self) Deactivate;
			}
		}
		[CRepr]
		public struct ITfTextInputProcessorEx : ITfTextInputProcessor
		{
			public const new Guid IID = .(0x6e4e2102, 0xf9cd, 0x433d, 0xb4, 0x96, 0x30, 0x3c, 0xe0, 0x3a, 0x65, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateEx(ITfThreadMgr* ptim, uint32 tid, uint32 dwFlags) mut
			{
				return VT.ActivateEx(&this, ptim, tid, dwFlags);
			}
			[CRepr]
			public struct VTable : ITfTextInputProcessor.VTable
			{
				public new function HRESULT(ITfTextInputProcessorEx *self, ITfThreadMgr* ptim, uint32 tid, uint32 dwFlags) ActivateEx;
			}
		}
		[CRepr]
		public struct ITfClientId : IUnknown
		{
			public const new Guid IID = .(0xd60a7b49, 0x1b9f, 0x4be2, 0xb7, 0x02, 0x47, 0xe9, 0xdc, 0x05, 0xde, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetClientId(Guid* rclsid, uint32* ptid) mut
			{
				return VT.GetClientId(&this, rclsid, ptid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfClientId *self, Guid* rclsid, uint32* ptid) GetClientId;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x70528852, 0x2f26, 0x4aea, 0x8c, 0x96, 0x21, 0x51, 0x50, 0x57, 0x89, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGUID(Guid* pguid) mut
			{
				return VT.GetGUID(&this, pguid);
			}
			public HRESULT GetDescription(BSTR* pbstrDesc) mut
			{
				return VT.GetDescription(&this, pbstrDesc);
			}
			public HRESULT GetAttributeInfo(TF_DISPLAYATTRIBUTE* pda) mut
			{
				return VT.GetAttributeInfo(&this, pda);
			}
			public HRESULT SetAttributeInfo(TF_DISPLAYATTRIBUTE* pda) mut
			{
				return VT.SetAttributeInfo(&this, pda);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfDisplayAttributeInfo *self, Guid* pguid) GetGUID;
				public new function HRESULT(ITfDisplayAttributeInfo *self, BSTR* pbstrDesc) GetDescription;
				public new function HRESULT(ITfDisplayAttributeInfo *self, TF_DISPLAYATTRIBUTE* pda) GetAttributeInfo;
				public new function HRESULT(ITfDisplayAttributeInfo *self, TF_DISPLAYATTRIBUTE* pda) SetAttributeInfo;
				public new function HRESULT(ITfDisplayAttributeInfo *self) Reset;
			}
		}
		[CRepr]
		public struct IEnumTfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x7cef04d7, 0xcb75, 0x4e80, 0xa7, 0xab, 0x5f, 0x5b, 0xc7, 0xd3, 0x32, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfDisplayAttributeInfo** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfDisplayAttributeInfo** rgInfo, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgInfo, pcFetched);
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
				public new function HRESULT(IEnumTfDisplayAttributeInfo *self, IEnumTfDisplayAttributeInfo** ppEnum) Clone;
				public new function HRESULT(IEnumTfDisplayAttributeInfo *self, uint32 ulCount, ITfDisplayAttributeInfo** rgInfo, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfDisplayAttributeInfo *self) Reset;
				public new function HRESULT(IEnumTfDisplayAttributeInfo *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeProvider : IUnknown
		{
			public const new Guid IID = .(0xfee47777, 0x163c, 0x4769, 0x99, 0x6a, 0x6e, 0x9c, 0x50, 0xad, 0x8f, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumDisplayAttributeInfo(IEnumTfDisplayAttributeInfo** ppEnum) mut
			{
				return VT.EnumDisplayAttributeInfo(&this, ppEnum);
			}
			public HRESULT GetDisplayAttributeInfo(Guid* guid, ITfDisplayAttributeInfo** ppInfo) mut
			{
				return VT.GetDisplayAttributeInfo(&this, guid, ppInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfDisplayAttributeProvider *self, IEnumTfDisplayAttributeInfo** ppEnum) EnumDisplayAttributeInfo;
				public new function HRESULT(ITfDisplayAttributeProvider *self, Guid* guid, ITfDisplayAttributeInfo** ppInfo) GetDisplayAttributeInfo;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeMgr : IUnknown
		{
			public const new Guid IID = .(0x8ded7393, 0x5db1, 0x475c, 0x9e, 0x71, 0xa3, 0x91, 0x11, 0xb0, 0xff, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdateInfo() mut
			{
				return VT.OnUpdateInfo(&this);
			}
			public HRESULT EnumDisplayAttributeInfo(IEnumTfDisplayAttributeInfo** ppEnum) mut
			{
				return VT.EnumDisplayAttributeInfo(&this, ppEnum);
			}
			public HRESULT GetDisplayAttributeInfo(Guid* guid, ITfDisplayAttributeInfo** ppInfo, Guid* pclsidOwner) mut
			{
				return VT.GetDisplayAttributeInfo(&this, guid, ppInfo, pclsidOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfDisplayAttributeMgr *self) OnUpdateInfo;
				public new function HRESULT(ITfDisplayAttributeMgr *self, IEnumTfDisplayAttributeInfo** ppEnum) EnumDisplayAttributeInfo;
				public new function HRESULT(ITfDisplayAttributeMgr *self, Guid* guid, ITfDisplayAttributeInfo** ppInfo, Guid* pclsidOwner) GetDisplayAttributeInfo;
			}
		}
		[CRepr]
		public struct ITfDisplayAttributeNotifySink : IUnknown
		{
			public const new Guid IID = .(0xad56f402, 0xe162, 0x4f25, 0x90, 0x8f, 0x7d, 0x57, 0x7c, 0xf9, 0xbd, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdateInfo() mut
			{
				return VT.OnUpdateInfo(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfDisplayAttributeNotifySink *self) OnUpdateInfo;
			}
		}
		[CRepr]
		public struct ITfCategoryMgr : IUnknown
		{
			public const new Guid IID = .(0xc3acefb5, 0xf69d, 0x4905, 0x93, 0x8f, 0xfc, 0xad, 0xcf, 0x4b, 0xe8, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterCategory(Guid* rclsid, Guid* rcatid, Guid* rguid) mut
			{
				return VT.RegisterCategory(&this, rclsid, rcatid, rguid);
			}
			public HRESULT UnregisterCategory(Guid* rclsid, Guid* rcatid, Guid* rguid) mut
			{
				return VT.UnregisterCategory(&this, rclsid, rcatid, rguid);
			}
			public HRESULT EnumCategoriesInItem(Guid* rguid, IEnumGUID** ppEnum) mut
			{
				return VT.EnumCategoriesInItem(&this, rguid, ppEnum);
			}
			public HRESULT EnumItemsInCategory(Guid* rcatid, IEnumGUID** ppEnum) mut
			{
				return VT.EnumItemsInCategory(&this, rcatid, ppEnum);
			}
			public HRESULT FindClosestCategory(Guid* rguid, Guid* pcatid, Guid** ppcatidList, uint32 ulCount) mut
			{
				return VT.FindClosestCategory(&this, rguid, pcatid, ppcatidList, ulCount);
			}
			public HRESULT RegisterGUIDDescription(Guid* rclsid, Guid* rguid, char16* pchDesc, uint32 cch) mut
			{
				return VT.RegisterGUIDDescription(&this, rclsid, rguid, pchDesc, cch);
			}
			public HRESULT UnregisterGUIDDescription(Guid* rclsid, Guid* rguid) mut
			{
				return VT.UnregisterGUIDDescription(&this, rclsid, rguid);
			}
			public HRESULT GetGUIDDescription(Guid* rguid, BSTR* pbstrDesc) mut
			{
				return VT.GetGUIDDescription(&this, rguid, pbstrDesc);
			}
			public HRESULT RegisterGUIDDWORD(Guid* rclsid, Guid* rguid, uint32 dw) mut
			{
				return VT.RegisterGUIDDWORD(&this, rclsid, rguid, dw);
			}
			public HRESULT UnregisterGUIDDWORD(Guid* rclsid, Guid* rguid) mut
			{
				return VT.UnregisterGUIDDWORD(&this, rclsid, rguid);
			}
			public HRESULT GetGUIDDWORD(Guid* rguid, uint32* pdw) mut
			{
				return VT.GetGUIDDWORD(&this, rguid, pdw);
			}
			public HRESULT RegisterGUID(Guid* rguid, uint32* pguidatom) mut
			{
				return VT.RegisterGUID(&this, rguid, pguidatom);
			}
			public HRESULT GetGUID(uint32 guidatom, Guid* pguid) mut
			{
				return VT.GetGUID(&this, guidatom, pguid);
			}
			public HRESULT IsEqualTfGuidAtom(uint32 guidatom, Guid* rguid, BOOL* pfEqual) mut
			{
				return VT.IsEqualTfGuidAtom(&this, guidatom, rguid, pfEqual);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rcatid, Guid* rguid) RegisterCategory;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rcatid, Guid* rguid) UnregisterCategory;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rguid, IEnumGUID** ppEnum) EnumCategoriesInItem;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rcatid, IEnumGUID** ppEnum) EnumItemsInCategory;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rguid, Guid* pcatid, Guid** ppcatidList, uint32 ulCount) FindClosestCategory;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid, char16* pchDesc, uint32 cch) RegisterGUIDDescription;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid) UnregisterGUIDDescription;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rguid, BSTR* pbstrDesc) GetGUIDDescription;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid, uint32 dw) RegisterGUIDDWORD;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid) UnregisterGUIDDWORD;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rguid, uint32* pdw) GetGUIDDWORD;
				public new function HRESULT(ITfCategoryMgr *self, Guid* rguid, uint32* pguidatom) RegisterGUID;
				public new function HRESULT(ITfCategoryMgr *self, uint32 guidatom, Guid* pguid) GetGUID;
				public new function HRESULT(ITfCategoryMgr *self, uint32 guidatom, Guid* rguid, BOOL* pfEqual) IsEqualTfGuidAtom;
			}
		}
		[CRepr]
		public struct ITfSource : IUnknown
		{
			public const new Guid IID = .(0x4ea48a35, 0x60ae, 0x446f, 0x8f, 0xd6, 0xe6, 0xa8, 0xd8, 0x24, 0x59, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSink(Guid* riid, IUnknown* punk, uint32* pdwCookie) mut
			{
				return VT.AdviseSink(&this, riid, punk, pdwCookie);
			}
			public HRESULT UnadviseSink(uint32 dwCookie) mut
			{
				return VT.UnadviseSink(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSource *self, Guid* riid, IUnknown* punk, uint32* pdwCookie) AdviseSink;
				public new function HRESULT(ITfSource *self, uint32 dwCookie) UnadviseSink;
			}
		}
		[CRepr]
		public struct ITfSourceSingle : IUnknown
		{
			public const new Guid IID = .(0x73131f9c, 0x56a9, 0x49dd, 0xb0, 0xee, 0xd0, 0x46, 0x63, 0x3f, 0x75, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AdviseSingleSink(uint32 tid, Guid* riid, IUnknown* punk) mut
			{
				return VT.AdviseSingleSink(&this, tid, riid, punk);
			}
			public HRESULT UnadviseSingleSink(uint32 tid, Guid* riid) mut
			{
				return VT.UnadviseSingleSink(&this, tid, riid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSourceSingle *self, uint32 tid, Guid* riid, IUnknown* punk) AdviseSingleSink;
				public new function HRESULT(ITfSourceSingle *self, uint32 tid, Guid* riid) UnadviseSingleSink;
			}
		}
		[CRepr]
		public struct ITfUIElementMgr : IUnknown
		{
			public const new Guid IID = .(0xea1ea135, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUIElement(ITfUIElement* pElement, BOOL* pbShow, uint32* pdwUIElementId) mut
			{
				return VT.BeginUIElement(&this, pElement, pbShow, pdwUIElementId);
			}
			public HRESULT UpdateUIElement(uint32 dwUIElementId) mut
			{
				return VT.UpdateUIElement(&this, dwUIElementId);
			}
			public HRESULT EndUIElement(uint32 dwUIElementId) mut
			{
				return VT.EndUIElement(&this, dwUIElementId);
			}
			public HRESULT GetUIElement(uint32 dwUIELementId, ITfUIElement** ppElement) mut
			{
				return VT.GetUIElement(&this, dwUIELementId, ppElement);
			}
			public HRESULT EnumUIElements(IEnumTfUIElements** ppEnum) mut
			{
				return VT.EnumUIElements(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfUIElementMgr *self, ITfUIElement* pElement, BOOL* pbShow, uint32* pdwUIElementId) BeginUIElement;
				public new function HRESULT(ITfUIElementMgr *self, uint32 dwUIElementId) UpdateUIElement;
				public new function HRESULT(ITfUIElementMgr *self, uint32 dwUIElementId) EndUIElement;
				public new function HRESULT(ITfUIElementMgr *self, uint32 dwUIELementId, ITfUIElement** ppElement) GetUIElement;
				public new function HRESULT(ITfUIElementMgr *self, IEnumTfUIElements** ppEnum) EnumUIElements;
			}
		}
		[CRepr]
		public struct IEnumTfUIElements : IUnknown
		{
			public const new Guid IID = .(0x887aa91e, 0xacba, 0x4931, 0x84, 0xda, 0x3c, 0x52, 0x08, 0xcf, 0x54, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfUIElements** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfUIElement** ppElement, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, ppElement, pcFetched);
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
				public new function HRESULT(IEnumTfUIElements *self, IEnumTfUIElements** ppEnum) Clone;
				public new function HRESULT(IEnumTfUIElements *self, uint32 ulCount, ITfUIElement** ppElement, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfUIElements *self) Reset;
				public new function HRESULT(IEnumTfUIElements *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfUIElementSink : IUnknown
		{
			public const new Guid IID = .(0xea1ea136, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginUIElement(uint32 dwUIElementId, BOOL* pbShow) mut
			{
				return VT.BeginUIElement(&this, dwUIElementId, pbShow);
			}
			public HRESULT UpdateUIElement(uint32 dwUIElementId) mut
			{
				return VT.UpdateUIElement(&this, dwUIElementId);
			}
			public HRESULT EndUIElement(uint32 dwUIElementId) mut
			{
				return VT.EndUIElement(&this, dwUIElementId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId, BOOL* pbShow) BeginUIElement;
				public new function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId) UpdateUIElement;
				public new function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId) EndUIElement;
			}
		}
		[CRepr]
		public struct ITfUIElement : IUnknown
		{
			public const new Guid IID = .(0xea1ea137, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(BSTR* pbstrDescription) mut
			{
				return VT.GetDescription(&this, pbstrDescription);
			}
			public HRESULT GetGUID(Guid* pguid) mut
			{
				return VT.GetGUID(&this, pguid);
			}
			public HRESULT Show(BOOL bShow) mut
			{
				return VT.Show(&this, bShow);
			}
			public HRESULT IsShown(BOOL* pbShow) mut
			{
				return VT.IsShown(&this, pbShow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfUIElement *self, BSTR* pbstrDescription) GetDescription;
				public new function HRESULT(ITfUIElement *self, Guid* pguid) GetGUID;
				public new function HRESULT(ITfUIElement *self, BOOL bShow) Show;
				public new function HRESULT(ITfUIElement *self, BOOL* pbShow) IsShown;
			}
		}
		[CRepr]
		public struct ITfCandidateListUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea138, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdatedFlags(uint32* pdwFlags) mut
			{
				return VT.GetUpdatedFlags(&this, pdwFlags);
			}
			public HRESULT GetDocumentMgr(ITfDocumentMgr** ppdim) mut
			{
				return VT.GetDocumentMgr(&this, ppdim);
			}
			public HRESULT GetCount(uint32* puCount) mut
			{
				return VT.GetCount(&this, puCount);
			}
			public HRESULT GetSelection(uint32* puIndex) mut
			{
				return VT.GetSelection(&this, puIndex);
			}
			public HRESULT GetString(uint32 uIndex, BSTR* pstr) mut
			{
				return VT.GetString(&this, uIndex, pstr);
			}
			public HRESULT GetPageIndex(uint32* pIndex, uint32 uSize, uint32* puPageCnt) mut
			{
				return VT.GetPageIndex(&this, pIndex, uSize, puPageCnt);
			}
			public HRESULT SetPageIndex(uint32* pIndex, uint32 uPageCnt) mut
			{
				return VT.SetPageIndex(&this, pIndex, uPageCnt);
			}
			public HRESULT GetCurrentPage(uint32* puPage) mut
			{
				return VT.GetCurrentPage(&this, puPage);
			}
			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* pdwFlags) GetUpdatedFlags;
				public new function HRESULT(ITfCandidateListUIElement *self, ITfDocumentMgr** ppdim) GetDocumentMgr;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* puCount) GetCount;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* puIndex) GetSelection;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32 uIndex, BSTR* pstr) GetString;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* pIndex, uint32 uSize, uint32* puPageCnt) GetPageIndex;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* pIndex, uint32 uPageCnt) SetPageIndex;
				public new function HRESULT(ITfCandidateListUIElement *self, uint32* puPage) GetCurrentPage;
			}
		}
		[CRepr]
		public struct ITfCandidateListUIElementBehavior : ITfCandidateListUIElement
		{
			public const new Guid IID = .(0x85fad185, 0x58ce, 0x497a, 0x94, 0x60, 0x35, 0x53, 0x66, 0xb6, 0x4b, 0x9a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSelection(uint32 nIndex) mut
			{
				return VT.SetSelection(&this, nIndex);
			}
			public HRESULT Finalize() mut
			{
				return VT.Finalize(&this);
			}
			public HRESULT Abort() mut
			{
				return VT.Abort(&this);
			}
			[CRepr]
			public struct VTable : ITfCandidateListUIElement.VTable
			{
				public new function HRESULT(ITfCandidateListUIElementBehavior *self, uint32 nIndex) SetSelection;
				public new function HRESULT(ITfCandidateListUIElementBehavior *self) Finalize;
				public new function HRESULT(ITfCandidateListUIElementBehavior *self) Abort;
			}
		}
		[CRepr]
		public struct ITfReadingInformationUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea139, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUpdatedFlags(uint32* pdwFlags) mut
			{
				return VT.GetUpdatedFlags(&this, pdwFlags);
			}
			public HRESULT GetContext(ITfContext** ppic) mut
			{
				return VT.GetContext(&this, ppic);
			}
			public HRESULT GetString(BSTR* pstr) mut
			{
				return VT.GetString(&this, pstr);
			}
			public HRESULT GetMaxReadingStringLength(uint32* pcchMax) mut
			{
				return VT.GetMaxReadingStringLength(&this, pcchMax);
			}
			public HRESULT GetErrorIndex(uint32* pErrorIndex) mut
			{
				return VT.GetErrorIndex(&this, pErrorIndex);
			}
			public HRESULT IsVerticalOrderPreferred(BOOL* pfVertical) mut
			{
				return VT.IsVerticalOrderPreferred(&this, pfVertical);
			}
			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function HRESULT(ITfReadingInformationUIElement *self, uint32* pdwFlags) GetUpdatedFlags;
				public new function HRESULT(ITfReadingInformationUIElement *self, ITfContext** ppic) GetContext;
				public new function HRESULT(ITfReadingInformationUIElement *self, BSTR* pstr) GetString;
				public new function HRESULT(ITfReadingInformationUIElement *self, uint32* pcchMax) GetMaxReadingStringLength;
				public new function HRESULT(ITfReadingInformationUIElement *self, uint32* pErrorIndex) GetErrorIndex;
				public new function HRESULT(ITfReadingInformationUIElement *self, BOOL* pfVertical) IsVerticalOrderPreferred;
			}
		}
		[CRepr]
		public struct ITfTransitoryExtensionUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x858f956a, 0x972f, 0x42a2, 0xa2, 0xf2, 0x03, 0x21, 0xe1, 0xab, 0xe2, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocumentMgr(ITfDocumentMgr** ppdim) mut
			{
				return VT.GetDocumentMgr(&this, ppdim);
			}
			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function HRESULT(ITfTransitoryExtensionUIElement *self, ITfDocumentMgr** ppdim) GetDocumentMgr;
			}
		}
		[CRepr]
		public struct ITfTransitoryExtensionSink : IUnknown
		{
			public const new Guid IID = .(0xa615096f, 0x1c57, 0x4813, 0x8a, 0x15, 0x55, 0xee, 0x6e, 0x5a, 0x83, 0x9c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTransitoryExtensionUpdated(ITfContext* pic, uint32 ecReadOnly, ITfRange* pResultRange, ITfRange* pCompositionRange, BOOL* pfDeleteResultRange) mut
			{
				return VT.OnTransitoryExtensionUpdated(&this, pic, ecReadOnly, pResultRange, pCompositionRange, pfDeleteResultRange);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfTransitoryExtensionSink *self, ITfContext* pic, uint32 ecReadOnly, ITfRange* pResultRange, ITfRange* pCompositionRange, BOOL* pfDeleteResultRange) OnTransitoryExtensionUpdated;
			}
		}
		[CRepr]
		public struct ITfToolTipUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x52b18b5c, 0x555d, 0x46b2, 0xb0, 0x0a, 0xfa, 0x68, 0x01, 0x44, 0xfb, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(BSTR* pstr) mut
			{
				return VT.GetString(&this, pstr);
			}
			[CRepr]
			public struct VTable : ITfUIElement.VTable
			{
				public new function HRESULT(ITfToolTipUIElement *self, BSTR* pstr) GetString;
			}
		}
		[CRepr]
		public struct ITfReverseConversionList : IUnknown
		{
			public const new Guid IID = .(0x151d69f0, 0x86f4, 0x4674, 0xb7, 0x21, 0x56, 0x91, 0x1e, 0x79, 0x7f, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLength(uint32* puIndex) mut
			{
				return VT.GetLength(&this, puIndex);
			}
			public HRESULT GetString(uint32 uIndex, BSTR* pbstr) mut
			{
				return VT.GetString(&this, uIndex, pbstr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfReverseConversionList *self, uint32* puIndex) GetLength;
				public new function HRESULT(ITfReverseConversionList *self, uint32 uIndex, BSTR* pbstr) GetString;
			}
		}
		[CRepr]
		public struct ITfReverseConversion : IUnknown
		{
			public const new Guid IID = .(0xa415e162, 0x157d, 0x417d, 0x8a, 0x8c, 0x0a, 0xb2, 0x6c, 0x7d, 0x27, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoReverseConversion(PWSTR lpstr, ITfReverseConversionList** ppList) mut
			{
				return VT.DoReverseConversion(&this, lpstr, ppList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfReverseConversion *self, PWSTR lpstr, ITfReverseConversionList** ppList) DoReverseConversion;
			}
		}
		[CRepr]
		public struct ITfReverseConversionMgr : IUnknown
		{
			public const new Guid IID = .(0xb643c236, 0xc493, 0x41b6, 0xab, 0xb3, 0x69, 0x24, 0x12, 0x77, 0x5c, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetReverseConversion(uint16 langid, Guid* guidProfile, uint32 dwflag, ITfReverseConversion** ppReverseConversion) mut
			{
				return VT.GetReverseConversion(&this, langid, guidProfile, dwflag, ppReverseConversion);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfReverseConversionMgr *self, uint16 langid, Guid* guidProfile, uint32 dwflag, ITfReverseConversion** ppReverseConversion) GetReverseConversion;
			}
		}
		[CRepr]
		public struct ITfCandidateString : IUnknown
		{
			public const new Guid IID = .(0x581f317e, 0xfd9d, 0x443f, 0xb9, 0x72, 0xed, 0x00, 0x46, 0x7c, 0x5d, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetString(BSTR* pbstr) mut
			{
				return VT.GetString(&this, pbstr);
			}
			public HRESULT GetIndex(uint32* pnIndex) mut
			{
				return VT.GetIndex(&this, pnIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCandidateString *self, BSTR* pbstr) GetString;
				public new function HRESULT(ITfCandidateString *self, uint32* pnIndex) GetIndex;
			}
		}
		[CRepr]
		public struct IEnumTfCandidates : IUnknown
		{
			public const new Guid IID = .(0xdefb1926, 0x6c80, 0x4ce8, 0x87, 0xd4, 0xd6, 0xb7, 0x2b, 0x81, 0x2b, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfCandidates** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, ITfCandidateString** ppCand, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, ppCand, pcFetched);
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
				public new function HRESULT(IEnumTfCandidates *self, IEnumTfCandidates** ppEnum) Clone;
				public new function HRESULT(IEnumTfCandidates *self, uint32 ulCount, ITfCandidateString** ppCand, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfCandidates *self) Reset;
				public new function HRESULT(IEnumTfCandidates *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfCandidateList : IUnknown
		{
			public const new Guid IID = .(0xa3ad50fb, 0x9bdb, 0x49e3, 0xa8, 0x43, 0x6c, 0x76, 0x52, 0x0f, 0xbf, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumCandidates(IEnumTfCandidates** ppEnum) mut
			{
				return VT.EnumCandidates(&this, ppEnum);
			}
			public HRESULT GetCandidate(uint32 nIndex, ITfCandidateString** ppCand) mut
			{
				return VT.GetCandidate(&this, nIndex, ppCand);
			}
			public HRESULT GetCandidateNum(uint32* pnCnt) mut
			{
				return VT.GetCandidateNum(&this, pnCnt);
			}
			public HRESULT SetResult(uint32 nIndex, TfCandidateResult imcr) mut
			{
				return VT.SetResult(&this, nIndex, imcr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfCandidateList *self, IEnumTfCandidates** ppEnum) EnumCandidates;
				public new function HRESULT(ITfCandidateList *self, uint32 nIndex, ITfCandidateString** ppCand) GetCandidate;
				public new function HRESULT(ITfCandidateList *self, uint32* pnCnt) GetCandidateNum;
				public new function HRESULT(ITfCandidateList *self, uint32 nIndex, TfCandidateResult imcr) SetResult;
			}
		}
		[CRepr]
		public struct ITfFnReconversion : ITfFunction
		{
			public const new Guid IID = .(0x4cea93c0, 0x0a58, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfConvertable) mut
			{
				return VT.QueryRange(&this, pRange, ppNewRange, pfConvertable);
			}
			public HRESULT GetReconversion(ITfRange* pRange, ITfCandidateList** ppCandList) mut
			{
				return VT.GetReconversion(&this, pRange, ppCandList);
			}
			public HRESULT Reconvert(ITfRange* pRange) mut
			{
				return VT.Reconvert(&this, pRange);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnReconversion *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfConvertable) QueryRange;
				public new function HRESULT(ITfFnReconversion *self, ITfRange* pRange, ITfCandidateList** ppCandList) GetReconversion;
				public new function HRESULT(ITfFnReconversion *self, ITfRange* pRange) Reconvert;
			}
		}
		[CRepr]
		public struct ITfFnPlayBack : ITfFunction
		{
			public const new Guid IID = .(0xa3a416a4, 0x0f64, 0x11d3, 0xb5, 0xb7, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfPlayable) mut
			{
				return VT.QueryRange(&this, pRange, ppNewRange, pfPlayable);
			}
			public HRESULT Play(ITfRange* pRange) mut
			{
				return VT.Play(&this, pRange);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnPlayBack *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfPlayable) QueryRange;
				public new function HRESULT(ITfFnPlayBack *self, ITfRange* pRange) Play;
			}
		}
		[CRepr]
		public struct ITfFnLangProfileUtil : ITfFunction
		{
			public const new Guid IID = .(0xa87a8574, 0xa6c1, 0x4e15, 0x99, 0xf0, 0x3d, 0x39, 0x65, 0xf5, 0x48, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterActiveProfiles() mut
			{
				return VT.RegisterActiveProfiles(&this);
			}
			public HRESULT IsProfileAvailableForLang(uint16 langid, BOOL* pfAvailable) mut
			{
				return VT.IsProfileAvailableForLang(&this, langid, pfAvailable);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnLangProfileUtil *self) RegisterActiveProfiles;
				public new function HRESULT(ITfFnLangProfileUtil *self, uint16 langid, BOOL* pfAvailable) IsProfileAvailableForLang;
			}
		}
		[CRepr]
		public struct ITfFnConfigure : ITfFunction
		{
			public const new Guid IID = .(0x88f567c6, 0x1757, 0x49f8, 0xa1, 0xb2, 0x89, 0x23, 0x4c, 0x1e, 0xef, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, Guid* rguidProfile) mut
			{
				return VT.Show(&this, hwndParent, langid, rguidProfile);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnConfigure *self, HWND hwndParent, uint16 langid, Guid* rguidProfile) Show;
			}
		}
		[CRepr]
		public struct ITfFnConfigureRegisterWord : ITfFunction
		{
			public const new Guid IID = .(0xbb95808a, 0x6d8f, 0x4bca, 0x84, 0x00, 0x53, 0x90, 0xb5, 0x86, 0xae, 0xdf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) mut
			{
				return VT.Show(&this, hwndParent, langid, rguidProfile, bstrRegistered);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnConfigureRegisterWord *self, HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) Show;
			}
		}
		[CRepr]
		public struct ITfFnConfigureRegisterEudc : ITfFunction
		{
			public const new Guid IID = .(0xb5e26ff5, 0xd7ad, 0x4304, 0x91, 0x3f, 0x21, 0xa2, 0xed, 0x95, 0xa1, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) mut
			{
				return VT.Show(&this, hwndParent, langid, rguidProfile, bstrRegistered);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnConfigureRegisterEudc *self, HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) Show;
			}
		}
		[CRepr]
		public struct ITfFnShowHelp : ITfFunction
		{
			public const new Guid IID = .(0x5ab1d30c, 0x094d, 0x4c29, 0x8e, 0xa5, 0x0b, 0xf5, 0x9b, 0xe8, 0x7b, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndParent) mut
			{
				return VT.Show(&this, hwndParent);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnShowHelp *self, HWND hwndParent) Show;
			}
		}
		[CRepr]
		public struct ITfFnBalloon : IUnknown
		{
			public const new Guid IID = .(0x3bab89e4, 0x5fbe, 0x45f4, 0xa5, 0xbc, 0xdc, 0xa3, 0x6a, 0xd2, 0x25, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateBalloon(TfLBBalloonStyle style, char16* pch, uint32 cch) mut
			{
				return VT.UpdateBalloon(&this, style, pch, cch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfFnBalloon *self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
			}
		}
		[CRepr]
		public struct ITfFnGetSAPIObject : ITfFunction
		{
			public const new Guid IID = .(0x5c0ab7ea, 0x167d, 0x4f59, 0xbf, 0xb5, 0x46, 0x93, 0x75, 0x5e, 0x90, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Get(TfSapiObject sObj, IUnknown** ppunk) mut
			{
				return VT.Get(&this, sObj, ppunk);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnGetSAPIObject *self, TfSapiObject sObj, IUnknown** ppunk) Get;
			}
		}
		[CRepr]
		public struct ITfFnPropertyUIStatus : ITfFunction
		{
			public const new Guid IID = .(0x2338ac6e, 0x2b9d, 0x44c0, 0xa7, 0x5e, 0xee, 0x64, 0xf2, 0x56, 0xb3, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(Guid* refguidProp, uint32* pdw) mut
			{
				return VT.GetStatus(&this, refguidProp, pdw);
			}
			public HRESULT SetStatus(Guid* refguidProp, uint32 dw) mut
			{
				return VT.SetStatus(&this, refguidProp, dw);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnPropertyUIStatus *self, Guid* refguidProp, uint32* pdw) GetStatus;
				public new function HRESULT(ITfFnPropertyUIStatus *self, Guid* refguidProp, uint32 dw) SetStatus;
			}
		}
		[CRepr]
		public struct IEnumSpeechCommands : IUnknown
		{
			public const new Guid IID = .(0x8c5dac4f, 0x083c, 0x4b85, 0xa4, 0xc9, 0x71, 0x74, 0x60, 0x48, 0xad, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumSpeechCommands** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, uint16** pSpCmds, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, pSpCmds, pcFetched);
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
				public new function HRESULT(IEnumSpeechCommands *self, IEnumSpeechCommands** ppEnum) Clone;
				public new function HRESULT(IEnumSpeechCommands *self, uint32 ulCount, uint16** pSpCmds, uint32* pcFetched) Next;
				public new function HRESULT(IEnumSpeechCommands *self) Reset;
				public new function HRESULT(IEnumSpeechCommands *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ISpeechCommandProvider : IUnknown
		{
			public const new Guid IID = .(0x38e09d4c, 0x586d, 0x435a, 0xb5, 0x92, 0xc8, 0xa8, 0x66, 0x91, 0xde, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumSpeechCommands(uint16 langid, IEnumSpeechCommands** ppEnum) mut
			{
				return VT.EnumSpeechCommands(&this, langid, ppEnum);
			}
			public HRESULT ProcessCommand(char16* pszCommand, uint32 cch, uint16 langid) mut
			{
				return VT.ProcessCommand(&this, pszCommand, cch, langid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISpeechCommandProvider *self, uint16 langid, IEnumSpeechCommands** ppEnum) EnumSpeechCommands;
				public new function HRESULT(ISpeechCommandProvider *self, char16* pszCommand, uint32 cch, uint16 langid) ProcessCommand;
			}
		}
		[CRepr]
		public struct ITfFnCustomSpeechCommand : ITfFunction
		{
			public const new Guid IID = .(0xfca6c349, 0xa12f, 0x43a3, 0x8d, 0xd6, 0x5a, 0x5a, 0x42, 0x82, 0x57, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSpeechCommandProvider(IUnknown* pspcmdProvider) mut
			{
				return VT.SetSpeechCommandProvider(&this, pspcmdProvider);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnCustomSpeechCommand *self, IUnknown* pspcmdProvider) SetSpeechCommandProvider;
			}
		}
		[CRepr]
		public struct ITfFnLMProcessor : ITfFunction
		{
			public const new Guid IID = .(0x7afbf8e7, 0xac4b, 0x4082, 0xb0, 0x58, 0x89, 0x08, 0x99, 0xd3, 0xa0, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryRange(ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfAccepted) mut
			{
				return VT.QueryRange(&this, pRange, ppNewRange, pfAccepted);
			}
			public HRESULT QueryLangID(uint16 langid, BOOL* pfAccepted) mut
			{
				return VT.QueryLangID(&this, langid, pfAccepted);
			}
			public HRESULT GetReconversion(ITfRange* pRange, ITfCandidateList** ppCandList) mut
			{
				return VT.GetReconversion(&this, pRange, ppCandList);
			}
			public HRESULT Reconvert(ITfRange* pRange) mut
			{
				return VT.Reconvert(&this, pRange);
			}
			public HRESULT QueryKey(BOOL fUp, WPARAM vKey, LPARAM lparamKeydata, BOOL* pfInterested) mut
			{
				return VT.QueryKey(&this, fUp, vKey, lparamKeydata, pfInterested);
			}
			public HRESULT InvokeKey(BOOL fUp, WPARAM vKey, LPARAM lparamKeyData) mut
			{
				return VT.InvokeKey(&this, fUp, vKey, lparamKeyData);
			}
			public HRESULT InvokeFunc(ITfContext* pic, Guid* refguidFunc) mut
			{
				return VT.InvokeFunc(&this, pic, refguidFunc);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfAccepted) QueryRange;
				public new function HRESULT(ITfFnLMProcessor *self, uint16 langid, BOOL* pfAccepted) QueryLangID;
				public new function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange, ITfCandidateList** ppCandList) GetReconversion;
				public new function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange) Reconvert;
				public new function HRESULT(ITfFnLMProcessor *self, BOOL fUp, WPARAM vKey, LPARAM lparamKeydata, BOOL* pfInterested) QueryKey;
				public new function HRESULT(ITfFnLMProcessor *self, BOOL fUp, WPARAM vKey, LPARAM lparamKeyData) InvokeKey;
				public new function HRESULT(ITfFnLMProcessor *self, ITfContext* pic, Guid* refguidFunc) InvokeFunc;
			}
		}
		[CRepr]
		public struct ITfFnLMInternal : ITfFnLMProcessor
		{
			public const new Guid IID = .(0x04b825b1, 0xac9a, 0x4f7b, 0xb5, 0xad, 0xc7, 0x16, 0x8f, 0x1e, 0xe4, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProcessLattice(ITfRange* pRange) mut
			{
				return VT.ProcessLattice(&this, pRange);
			}
			[CRepr]
			public struct VTable : ITfFnLMProcessor.VTable
			{
				public new function HRESULT(ITfFnLMInternal *self, ITfRange* pRange) ProcessLattice;
			}
		}
		[CRepr]
		public struct IEnumTfLatticeElements : IUnknown
		{
			public const new Guid IID = .(0x56988052, 0x47da, 0x4a05, 0x91, 0x1a, 0xe3, 0xd9, 0x41, 0xf1, 0x71, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Clone(IEnumTfLatticeElements** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Next(uint32 ulCount, TF_LMLATTELEMENT* rgsElements, uint32* pcFetched) mut
			{
				return VT.Next(&this, ulCount, rgsElements, pcFetched);
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
				public new function HRESULT(IEnumTfLatticeElements *self, IEnumTfLatticeElements** ppEnum) Clone;
				public new function HRESULT(IEnumTfLatticeElements *self, uint32 ulCount, TF_LMLATTELEMENT* rgsElements, uint32* pcFetched) Next;
				public new function HRESULT(IEnumTfLatticeElements *self) Reset;
				public new function HRESULT(IEnumTfLatticeElements *self, uint32 ulCount) Skip;
			}
		}
		[CRepr]
		public struct ITfLMLattice : IUnknown
		{
			public const new Guid IID = .(0xd4236675, 0xa5bf, 0x4570, 0x9d, 0x42, 0x5d, 0x6d, 0x7b, 0x02, 0xd5, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryType(Guid* rguidType, BOOL* pfSupported) mut
			{
				return VT.QueryType(&this, rguidType, pfSupported);
			}
			public HRESULT EnumLatticeElements(uint32 dwFrameStart, Guid* rguidType, IEnumTfLatticeElements** ppEnum) mut
			{
				return VT.EnumLatticeElements(&this, dwFrameStart, rguidType, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfLMLattice *self, Guid* rguidType, BOOL* pfSupported) QueryType;
				public new function HRESULT(ITfLMLattice *self, uint32 dwFrameStart, Guid* rguidType, IEnumTfLatticeElements** ppEnum) EnumLatticeElements;
			}
		}
		[CRepr]
		public struct ITfFnAdviseText : ITfFunction
		{
			public const new Guid IID = .(0x3527268b, 0x7d53, 0x4dd9, 0x92, 0xb7, 0x72, 0x96, 0xae, 0x46, 0x12, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTextUpdate(ITfRange* pRange, char16* pchText, int32 cch) mut
			{
				return VT.OnTextUpdate(&this, pRange, pchText, cch);
			}
			public HRESULT OnLatticeUpdate(ITfRange* pRange, ITfLMLattice* pLattice) mut
			{
				return VT.OnLatticeUpdate(&this, pRange, pLattice);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnAdviseText *self, ITfRange* pRange, char16* pchText, int32 cch) OnTextUpdate;
				public new function HRESULT(ITfFnAdviseText *self, ITfRange* pRange, ITfLMLattice* pLattice) OnLatticeUpdate;
			}
		}
		[CRepr]
		public struct ITfFnSearchCandidateProvider : ITfFunction
		{
			public const new Guid IID = .(0x87a2ad8f, 0xf27b, 0x4920, 0x85, 0x01, 0x67, 0x60, 0x22, 0x80, 0x17, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSearchCandidates(BSTR bstrQuery, BSTR bstrApplicationId, ITfCandidateList** pplist) mut
			{
				return VT.GetSearchCandidates(&this, bstrQuery, bstrApplicationId, pplist);
			}
			public HRESULT SetResult(BSTR bstrQuery, BSTR bstrApplicationID, BSTR bstrResult) mut
			{
				return VT.SetResult(&this, bstrQuery, bstrApplicationID, bstrResult);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnSearchCandidateProvider *self, BSTR bstrQuery, BSTR bstrApplicationId, ITfCandidateList** pplist) GetSearchCandidates;
				public new function HRESULT(ITfFnSearchCandidateProvider *self, BSTR bstrQuery, BSTR bstrApplicationID, BSTR bstrResult) SetResult;
			}
		}
		[CRepr]
		public struct ITfIntegratableCandidateListUIElement : IUnknown
		{
			public const new Guid IID = .(0xc7a6f54f, 0xb180, 0x416f, 0xb2, 0xbf, 0x7b, 0xf2, 0xe4, 0x68, 0x3d, 0x7b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIntegrationStyle(Guid guidIntegrationStyle) mut
			{
				return VT.SetIntegrationStyle(&this, guidIntegrationStyle);
			}
			public HRESULT GetSelectionStyle(TfIntegratableCandidateListSelectionStyle* ptfSelectionStyle) mut
			{
				return VT.GetSelectionStyle(&this, ptfSelectionStyle);
			}
			public HRESULT OnKeyDown(WPARAM wParam, LPARAM lParam, BOOL* pfEaten) mut
			{
				return VT.OnKeyDown(&this, wParam, lParam, pfEaten);
			}
			public HRESULT ShowCandidateNumbers(BOOL* pfShow) mut
			{
				return VT.ShowCandidateNumbers(&this, pfShow);
			}
			public HRESULT FinalizeExactCompositionString() mut
			{
				return VT.FinalizeExactCompositionString(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfIntegratableCandidateListUIElement *self, Guid guidIntegrationStyle) SetIntegrationStyle;
				public new function HRESULT(ITfIntegratableCandidateListUIElement *self, TfIntegratableCandidateListSelectionStyle* ptfSelectionStyle) GetSelectionStyle;
				public new function HRESULT(ITfIntegratableCandidateListUIElement *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
				public new function HRESULT(ITfIntegratableCandidateListUIElement *self, BOOL* pfShow) ShowCandidateNumbers;
				public new function HRESULT(ITfIntegratableCandidateListUIElement *self) FinalizeExactCompositionString;
			}
		}
		[CRepr]
		public struct ITfFnGetPreferredTouchKeyboardLayout : ITfFunction
		{
			public const new Guid IID = .(0x5f309a41, 0x590a, 0x4acc, 0xa9, 0x7f, 0xd8, 0xef, 0xff, 0x13, 0xfd, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLayout(TKBLayoutType* pTKBLayoutType, uint16* pwPreferredLayoutId) mut
			{
				return VT.GetLayout(&this, pTKBLayoutType, pwPreferredLayoutId);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnGetPreferredTouchKeyboardLayout *self, TKBLayoutType* pTKBLayoutType, uint16* pwPreferredLayoutId) GetLayout;
			}
		}
		[CRepr]
		public struct ITfFnGetLinguisticAlternates : ITfFunction
		{
			public const new Guid IID = .(0xea163ce2, 0x7a65, 0x4506, 0x82, 0xa3, 0xc5, 0x28, 0x21, 0x5d, 0xa6, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAlternates(ITfRange* pRange, ITfCandidateList** ppCandidateList) mut
			{
				return VT.GetAlternates(&this, pRange, ppCandidateList);
			}
			[CRepr]
			public struct VTable : ITfFunction.VTable
			{
				public new function HRESULT(ITfFnGetLinguisticAlternates *self, ITfRange* pRange, ITfCandidateList** ppCandidateList) GetAlternates;
			}
		}
		[CRepr]
		public struct IUIManagerEventSink : IUnknown
		{
			public const new Guid IID = .(0xcd91d690, 0xa7e8, 0x4265, 0x9b, 0x38, 0x8b, 0xb3, 0xbb, 0xab, 0xa7, 0xde);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnWindowOpening(RECT* prcBounds) mut
			{
				return VT.OnWindowOpening(&this, prcBounds);
			}
			public HRESULT OnWindowOpened(RECT* prcBounds) mut
			{
				return VT.OnWindowOpened(&this, prcBounds);
			}
			public HRESULT OnWindowUpdating(RECT* prcUpdatedBounds) mut
			{
				return VT.OnWindowUpdating(&this, prcUpdatedBounds);
			}
			public HRESULT OnWindowUpdated(RECT* prcUpdatedBounds) mut
			{
				return VT.OnWindowUpdated(&this, prcUpdatedBounds);
			}
			public HRESULT OnWindowClosing() mut
			{
				return VT.OnWindowClosing(&this);
			}
			public HRESULT OnWindowClosed() mut
			{
				return VT.OnWindowClosed(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIManagerEventSink *self, RECT* prcBounds) OnWindowOpening;
				public new function HRESULT(IUIManagerEventSink *self, RECT* prcBounds) OnWindowOpened;
				public new function HRESULT(IUIManagerEventSink *self, RECT* prcUpdatedBounds) OnWindowUpdating;
				public new function HRESULT(IUIManagerEventSink *self, RECT* prcUpdatedBounds) OnWindowUpdated;
				public new function HRESULT(IUIManagerEventSink *self) OnWindowClosing;
				public new function HRESULT(IUIManagerEventSink *self) OnWindowClosed;
			}
		}
		[CRepr]
		public struct ITfInputScope : IUnknown
		{
			public const new Guid IID = .(0xfde1eaee, 0x6924, 0x4cdf, 0x91, 0xe7, 0xda, 0x38, 0xcf, 0xf5, 0x55, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputScopes(InputScope** pprgInputScopes, uint32* pcCount) mut
			{
				return VT.GetInputScopes(&this, pprgInputScopes, pcCount);
			}
			public HRESULT GetPhrase(BSTR** ppbstrPhrases, uint32* pcCount) mut
			{
				return VT.GetPhrase(&this, ppbstrPhrases, pcCount);
			}
			public HRESULT GetRegularExpression(BSTR* pbstrRegExp) mut
			{
				return VT.GetRegularExpression(&this, pbstrRegExp);
			}
			public HRESULT GetSRGS(BSTR* pbstrSRGS) mut
			{
				return VT.GetSRGS(&this, pbstrSRGS);
			}
			public HRESULT GetXML(BSTR* pbstrXML) mut
			{
				return VT.GetXML(&this, pbstrXML);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfInputScope *self, InputScope** pprgInputScopes, uint32* pcCount) GetInputScopes;
				public new function HRESULT(ITfInputScope *self, BSTR** ppbstrPhrases, uint32* pcCount) GetPhrase;
				public new function HRESULT(ITfInputScope *self, BSTR* pbstrRegExp) GetRegularExpression;
				public new function HRESULT(ITfInputScope *self, BSTR* pbstrSRGS) GetSRGS;
				public new function HRESULT(ITfInputScope *self, BSTR* pbstrXML) GetXML;
			}
		}
		[CRepr]
		public struct ITfInputScope2 : ITfInputScope
		{
			public const new Guid IID = .(0x5731eaa0, 0x6bc2, 0x4681, 0xa5, 0x32, 0x92, 0xfb, 0xb7, 0x4d, 0x7c, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumWordList(IEnumString** ppEnumString) mut
			{
				return VT.EnumWordList(&this, ppEnumString);
			}
			[CRepr]
			public struct VTable : ITfInputScope.VTable
			{
				public new function HRESULT(ITfInputScope2 *self, IEnumString** ppEnumString) EnumWordList;
			}
		}
		[CRepr]
		public struct ITfMSAAControl : IUnknown
		{
			public const new Guid IID = .(0xb5f8fb3b, 0x393f, 0x4f7c, 0x84, 0xcb, 0x50, 0x49, 0x24, 0xc2, 0x70, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SystemEnableMSAA() mut
			{
				return VT.SystemEnableMSAA(&this);
			}
			public HRESULT SystemDisableMSAA() mut
			{
				return VT.SystemDisableMSAA(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfMSAAControl *self) SystemEnableMSAA;
				public new function HRESULT(ITfMSAAControl *self) SystemDisableMSAA;
			}
		}
		[CRepr]
		public struct IInternalDocWrap : IUnknown
		{
			public const new Guid IID = .(0xe1aa6466, 0x9db4, 0x40ba, 0xbe, 0x03, 0x77, 0xc3, 0x8e, 0x8e, 0x60, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NotifyRevoke() mut
			{
				return VT.NotifyRevoke(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInternalDocWrap *self) NotifyRevoke;
			}
		}
		[CRepr]
		public struct ITextStoreACPEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc2, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollToRect(int32 acpStart, int32 acpEnd, RECT rc, uint32 dwPosition) mut
			{
				return VT.ScrollToRect(&this, acpStart, acpEnd, rc, dwPosition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreACPEx *self, int32 acpStart, int32 acpEnd, RECT rc, uint32 dwPosition) ScrollToRect;
			}
		}
		[CRepr]
		public struct ITextStoreAnchorEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc1, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ScrollToRect(IAnchor* pStart, IAnchor* pEnd, RECT rc, uint32 dwPosition) mut
			{
				return VT.ScrollToRect(&this, pStart, pEnd, rc, dwPosition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITextStoreAnchorEx *self, IAnchor* pStart, IAnchor* pEnd, RECT rc, uint32 dwPosition) ScrollToRect;
			}
		}
		[CRepr]
		public struct ITextStoreACPSinkEx : ITextStoreACPSink
		{
			public const new Guid IID = .(0x2bdf9464, 0x41e2, 0x43e3, 0x95, 0x0c, 0xa6, 0x86, 0x5b, 0xa2, 0x5c, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDisconnect() mut
			{
				return VT.OnDisconnect(&this);
			}
			[CRepr]
			public struct VTable : ITextStoreACPSink.VTable
			{
				public new function HRESULT(ITextStoreACPSinkEx *self) OnDisconnect;
			}
		}
		[CRepr]
		public struct ITextStoreSinkAnchorEx : ITextStoreAnchorSink
		{
			public const new Guid IID = .(0x25642426, 0x028d, 0x4474, 0x97, 0x7b, 0x11, 0x1b, 0xb1, 0x14, 0xfe, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDisconnect() mut
			{
				return VT.OnDisconnect(&this);
			}
			[CRepr]
			public struct VTable : ITextStoreAnchorSink.VTable
			{
				public new function HRESULT(ITextStoreSinkAnchorEx *self) OnDisconnect;
			}
		}
		[CRepr]
		public struct IAccDictionary : IUnknown
		{
			public const new Guid IID = .(0x1dc4cb5f, 0xd737, 0x474d, 0xad, 0xe9, 0x5c, 0xcf, 0xc9, 0xbc, 0x1c, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocalizedString(Guid* Term, uint32 lcid, BSTR* pResult, uint32* plcid) mut
			{
				return VT.GetLocalizedString(&this, Term, lcid, pResult, plcid);
			}
			public HRESULT GetParentTerm(Guid* Term, Guid* pParentTerm) mut
			{
				return VT.GetParentTerm(&this, Term, pParentTerm);
			}
			public HRESULT GetMnemonicString(Guid* Term, BSTR* pResult) mut
			{
				return VT.GetMnemonicString(&this, Term, pResult);
			}
			public HRESULT LookupMnemonicTerm(BSTR bstrMnemonic, Guid* pTerm) mut
			{
				return VT.LookupMnemonicTerm(&this, bstrMnemonic, pTerm);
			}
			public HRESULT ConvertValueToString(Guid* Term, uint32 lcid, VARIANT varValue, BSTR* pbstrResult, uint32* plcid) mut
			{
				return VT.ConvertValueToString(&this, Term, lcid, varValue, pbstrResult, plcid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccDictionary *self, Guid* Term, uint32 lcid, BSTR* pResult, uint32* plcid) GetLocalizedString;
				public new function HRESULT(IAccDictionary *self, Guid* Term, Guid* pParentTerm) GetParentTerm;
				public new function HRESULT(IAccDictionary *self, Guid* Term, BSTR* pResult) GetMnemonicString;
				public new function HRESULT(IAccDictionary *self, BSTR bstrMnemonic, Guid* pTerm) LookupMnemonicTerm;
				public new function HRESULT(IAccDictionary *self, Guid* Term, uint32 lcid, VARIANT varValue, BSTR* pbstrResult, uint32* plcid) ConvertValueToString;
			}
		}
		[CRepr]
		public struct IVersionInfo : IUnknown
		{
			public const new Guid IID = .(0x401518ec, 0xdb00, 0x4611, 0x9b, 0x29, 0x2a, 0x0e, 0x4b, 0x9a, 0xfa, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubcomponentCount(uint32 ulSub, uint32* ulCount) mut
			{
				return VT.GetSubcomponentCount(&this, ulSub, ulCount);
			}
			public HRESULT GetImplementationID(uint32 ulSub, Guid* implid) mut
			{
				return VT.GetImplementationID(&this, ulSub, implid);
			}
			public HRESULT GetBuildVersion(uint32 ulSub, uint32* pdwMajor, uint32* pdwMinor) mut
			{
				return VT.GetBuildVersion(&this, ulSub, pdwMajor, pdwMinor);
			}
			public HRESULT GetComponentDescription(uint32 ulSub, BSTR* pImplStr) mut
			{
				return VT.GetComponentDescription(&this, ulSub, pImplStr);
			}
			public HRESULT GetInstanceDescription(uint32 ulSub, BSTR* pImplStr) mut
			{
				return VT.GetInstanceDescription(&this, ulSub, pImplStr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVersionInfo *self, uint32 ulSub, uint32* ulCount) GetSubcomponentCount;
				public new function HRESULT(IVersionInfo *self, uint32 ulSub, Guid* implid) GetImplementationID;
				public new function HRESULT(IVersionInfo *self, uint32 ulSub, uint32* pdwMajor, uint32* pdwMinor) GetBuildVersion;
				public new function HRESULT(IVersionInfo *self, uint32 ulSub, BSTR* pImplStr) GetComponentDescription;
				public new function HRESULT(IVersionInfo *self, uint32 ulSub, BSTR* pImplStr) GetInstanceDescription;
			}
		}
		[CRepr]
		public struct ICoCreateLocally : IUnknown
		{
			public const new Guid IID = .(0x03de00aa, 0xf272, 0x41e3, 0x99, 0xcb, 0x03, 0xc5, 0xe8, 0x11, 0x4e, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CoCreateLocally(Guid* rclsid, uint32 dwClsContext, Guid* riid, IUnknown** punk, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) mut
			{
				return VT.CoCreateLocally(&this, rclsid, dwClsContext, riid, punk, riidParam, punkParam, varParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICoCreateLocally *self, Guid* rclsid, uint32 dwClsContext, Guid* riid, IUnknown** punk, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) CoCreateLocally;
			}
		}
		[CRepr]
		public struct ICoCreatedLocally : IUnknown
		{
			public const new Guid IID = .(0x0a53eb6c, 0x1908, 0x4742, 0x8c, 0xff, 0x2c, 0xee, 0x2e, 0x93, 0xf9, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LocalInit(IUnknown* punkLocalObject, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) mut
			{
				return VT.LocalInit(&this, punkLocalObject, riidParam, punkParam, varParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICoCreatedLocally *self, IUnknown* punkLocalObject, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) LocalInit;
			}
		}
		[CRepr]
		public struct IAccStore : IUnknown
		{
			public const new Guid IID = .(0xe2cd4a63, 0x2b72, 0x4d48, 0xb7, 0x39, 0x95, 0xe4, 0x76, 0x51, 0x95, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(Guid* riid, IUnknown* punk) mut
			{
				return VT.Register(&this, riid, punk);
			}
			public HRESULT Unregister(IUnknown* punk) mut
			{
				return VT.Unregister(&this, punk);
			}
			public HRESULT GetDocuments(IEnumUnknown** enumUnknown) mut
			{
				return VT.GetDocuments(&this, enumUnknown);
			}
			public HRESULT LookupByHWND(HWND hWnd, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.LookupByHWND(&this, hWnd, riid, ppunk);
			}
			public HRESULT LookupByPoint(POINT pt, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.LookupByPoint(&this, pt, riid, ppunk);
			}
			public HRESULT OnDocumentFocus(IUnknown* punk) mut
			{
				return VT.OnDocumentFocus(&this, punk);
			}
			public HRESULT GetFocused(Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetFocused(&this, riid, ppunk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccStore *self, Guid* riid, IUnknown* punk) Register;
				public new function HRESULT(IAccStore *self, IUnknown* punk) Unregister;
				public new function HRESULT(IAccStore *self, IEnumUnknown** enumUnknown) GetDocuments;
				public new function HRESULT(IAccStore *self, HWND hWnd, Guid* riid, IUnknown** ppunk) LookupByHWND;
				public new function HRESULT(IAccStore *self, POINT pt, Guid* riid, IUnknown** ppunk) LookupByPoint;
				public new function HRESULT(IAccStore *self, IUnknown* punk) OnDocumentFocus;
				public new function HRESULT(IAccStore *self, Guid* riid, IUnknown** ppunk) GetFocused;
			}
		}
		[CRepr]
		public struct IAccServerDocMgr : IUnknown
		{
			public const new Guid IID = .(0xad7c73cf, 0x6dd5, 0x4855, 0xab, 0xc2, 0xb0, 0x4b, 0xad, 0x5b, 0x91, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NewDocument(Guid* riid, IUnknown* punk) mut
			{
				return VT.NewDocument(&this, riid, punk);
			}
			public HRESULT RevokeDocument(IUnknown* punk) mut
			{
				return VT.RevokeDocument(&this, punk);
			}
			public HRESULT OnDocumentFocus(IUnknown* punk) mut
			{
				return VT.OnDocumentFocus(&this, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccServerDocMgr *self, Guid* riid, IUnknown* punk) NewDocument;
				public new function HRESULT(IAccServerDocMgr *self, IUnknown* punk) RevokeDocument;
				public new function HRESULT(IAccServerDocMgr *self, IUnknown* punk) OnDocumentFocus;
			}
		}
		[CRepr]
		public struct IAccClientDocMgr : IUnknown
		{
			public const new Guid IID = .(0x4c896039, 0x7b6d, 0x49e6, 0xa8, 0xc1, 0x45, 0x11, 0x6a, 0x98, 0x29, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDocuments(IEnumUnknown** enumUnknown) mut
			{
				return VT.GetDocuments(&this, enumUnknown);
			}
			public HRESULT LookupByHWND(HWND hWnd, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.LookupByHWND(&this, hWnd, riid, ppunk);
			}
			public HRESULT LookupByPoint(POINT pt, Guid* riid, IUnknown** ppunk) mut
			{
				return VT.LookupByPoint(&this, pt, riid, ppunk);
			}
			public HRESULT GetFocused(Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetFocused(&this, riid, ppunk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccClientDocMgr *self, IEnumUnknown** enumUnknown) GetDocuments;
				public new function HRESULT(IAccClientDocMgr *self, HWND hWnd, Guid* riid, IUnknown** ppunk) LookupByHWND;
				public new function HRESULT(IAccClientDocMgr *self, POINT pt, Guid* riid, IUnknown** ppunk) LookupByPoint;
				public new function HRESULT(IAccClientDocMgr *self, Guid* riid, IUnknown** ppunk) GetFocused;
			}
		}
		[CRepr]
		public struct IDocWrap : IUnknown
		{
			public const new Guid IID = .(0xdcd285fe, 0x0be0, 0x43bd, 0x99, 0xc9, 0xaa, 0xae, 0xc5, 0x13, 0xc5, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDoc(Guid* riid, IUnknown* punk) mut
			{
				return VT.SetDoc(&this, riid, punk);
			}
			public HRESULT GetWrappedDoc(Guid* riid, IUnknown** ppunk) mut
			{
				return VT.GetWrappedDoc(&this, riid, ppunk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDocWrap *self, Guid* riid, IUnknown* punk) SetDoc;
				public new function HRESULT(IDocWrap *self, Guid* riid, IUnknown** ppunk) GetWrappedDoc;
			}
		}
		[CRepr]
		public struct IClonableWrapper : IUnknown
		{
			public const new Guid IID = .(0xb33e75ff, 0xe84c, 0x4dca, 0xa2, 0x5c, 0x33, 0xb8, 0xdc, 0x00, 0x33, 0x74);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CloneNewWrapper(Guid* riid, void** ppv) mut
			{
				return VT.CloneNewWrapper(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IClonableWrapper *self, Guid* riid, void** ppv) CloneNewWrapper;
			}
		}
		[CRepr]
		public struct ITfSpeechUIServer : IUnknown
		{
			public const new Guid IID = .(0x90e9a944, 0x9244, 0x489f, 0xa7, 0x8f, 0xde, 0x67, 0xaf, 0xc0, 0x13, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			public HRESULT ShowUI(BOOL fShow) mut
			{
				return VT.ShowUI(&this, fShow);
			}
			public HRESULT UpdateBalloon(TfLBBalloonStyle style, char16* pch, uint32 cch) mut
			{
				return VT.UpdateBalloon(&this, style, pch, cch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITfSpeechUIServer *self) Initialize;
				public new function HRESULT(ITfSpeechUIServer *self, BOOL fShow) ShowUI;
				public new function HRESULT(ITfSpeechUIServer *self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
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
