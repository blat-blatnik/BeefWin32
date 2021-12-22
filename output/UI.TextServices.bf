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
			
			public function HRESULT(ITextStoreACP *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
			public function HRESULT(ITextStoreACP *self, IUnknown* punk) UnadviseSink;
			public function HRESULT(ITextStoreACP *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
			public function HRESULT(ITextStoreACP *self, TS_STATUS* pdcs) GetStatus;
			public function HRESULT(ITextStoreACP *self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) QueryInsert;
			public function HRESULT(ITextStoreACP *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) GetSelection;
			public function HRESULT(ITextStoreACP *self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
			public function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) GetText;
			public function HRESULT(ITextStoreACP *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) SetText;
			public function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) GetFormattedText;
			public function HRESULT(ITextStoreACP *self, int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
			public function HRESULT(ITextStoreACP *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
			public function HRESULT(ITextStoreACP *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) InsertEmbedded;
			public function HRESULT(ITextStoreACP *self, uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertTextAtSelection;
			public function HRESULT(ITextStoreACP *self, uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertEmbeddedAtSelection;
			public function HRESULT(ITextStoreACP *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
			public function HRESULT(ITextStoreACP *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
			public function HRESULT(ITextStoreACP *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
			public function HRESULT(ITextStoreACP *self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
			public function HRESULT(ITextStoreACP *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
			public function HRESULT(ITextStoreACP *self, int32* pacp) GetEndACP;
			public function HRESULT(ITextStoreACP *self, uint32* pvcView) GetActiveView;
			public function HRESULT(ITextStoreACP *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
			public function HRESULT(ITextStoreACP *self, uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
			public function HRESULT(ITextStoreACP *self, uint32 vcView, RECT* prc) GetScreenExt;
			public function HRESULT(ITextStoreACP *self, uint32 vcView, HWND* phwnd) GetWnd;
		}
		[CRepr]
		public struct ITextStoreACP2 : IUnknown
		{
			public const new Guid IID = .(0xf86ad89f, 0x5fe4, 0x4b8d, 0xbb, 0x9f, 0xef, 0x37, 0x97, 0xa8, 0x4f, 0x1f);
			
			public function HRESULT(ITextStoreACP2 *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
			public function HRESULT(ITextStoreACP2 *self, IUnknown* punk) UnadviseSink;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
			public function HRESULT(ITextStoreACP2 *self, TS_STATUS* pdcs) GetStatus;
			public function HRESULT(ITextStoreACP2 *self, int32 acpTestStart, int32 acpTestEnd, uint32 cch, int32* pacpResultStart, int32* pacpResultEnd) QueryInsert;
			public function HRESULT(ITextStoreACP2 *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ACP* pSelection, uint32* pcFetched) GetSelection;
			public function HRESULT(ITextStoreACP2 *self, uint32 ulCount, TS_SELECTION_ACP* pSelection) SetSelection;
			public function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpEnd, char16* pchPlain, uint32 cchPlainReq, uint32* pcchPlainRet, TS_RUNINFO* prgRunInfo, uint32 cRunInfoReq, uint32* pcRunInfoRet, int32* pacpNext) GetText;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, char16* pchText, uint32 cch, TS_TEXTCHANGE* pChange) SetText;
			public function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpEnd, IDataObject** ppDataObject) GetFormattedText;
			public function HRESULT(ITextStoreACP2 *self, int32 acpPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
			public function HRESULT(ITextStoreACP2 *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, int32 acpStart, int32 acpEnd, IDataObject* pDataObject, TS_TEXTCHANGE* pChange) InsertEmbedded;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, char16* pchText, uint32 cch, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertTextAtSelection;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, IDataObject* pDataObject, int32* pacpStart, int32* pacpEnd, TS_TEXTCHANGE* pChange) InsertEmbeddedAtSelection;
			public function HRESULT(ITextStoreACP2 *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
			public function HRESULT(ITextStoreACP2 *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
			public function HRESULT(ITextStoreACP2 *self, int32 acpPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
			public function HRESULT(ITextStoreACP2 *self, int32 acpStart, int32 acpHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, int32* pacpNext, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
			public function HRESULT(ITextStoreACP2 *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
			public function HRESULT(ITextStoreACP2 *self, int32* pacp) GetEndACP;
			public function HRESULT(ITextStoreACP2 *self, uint32* pvcView) GetActiveView;
			public function HRESULT(ITextStoreACP2 *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
			public function HRESULT(ITextStoreACP2 *self, uint32 vcView, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
			public function HRESULT(ITextStoreACP2 *self, uint32 vcView, RECT* prc) GetScreenExt;
		}
		[CRepr]
		public struct ITextStoreACPSink : IUnknown
		{
			public const new Guid IID = .(0x22d44c94, 0xa419, 0x4542, 0xa2, 0x72, 0xae, 0x26, 0x09, 0x3e, 0xce, 0xcf);
			
			public function HRESULT(ITextStoreACPSink *self, TEXT_STORE_TEXT_CHANGE_FLAGS dwFlags, TS_TEXTCHANGE* pChange) OnTextChange;
			public function HRESULT(ITextStoreACPSink *self) OnSelectionChange;
			public function HRESULT(ITextStoreACPSink *self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
			public function HRESULT(ITextStoreACPSink *self, uint32 dwFlags) OnStatusChange;
			public function HRESULT(ITextStoreACPSink *self, int32 acpStart, int32 acpEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
			public function HRESULT(ITextStoreACPSink *self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
			public function HRESULT(ITextStoreACPSink *self) OnStartEditTransaction;
			public function HRESULT(ITextStoreACPSink *self) OnEndEditTransaction;
		}
		[CRepr]
		public struct IAnchor : IUnknown
		{
			public const new Guid IID = .(0x0feb7e34, 0x5a60, 0x4356, 0x8e, 0xf7, 0xab, 0xde, 0xc2, 0xff, 0x7c, 0xf8);
			
			public function HRESULT(IAnchor *self, TsGravity gravity) SetGravity;
			public function HRESULT(IAnchor *self, TsGravity* pgravity) GetGravity;
			public function HRESULT(IAnchor *self, IAnchor* paWith, BOOL* pfEqual) IsEqual;
			public function HRESULT(IAnchor *self, IAnchor* paWith, int32* plResult) Compare;
			public function HRESULT(IAnchor *self, uint32 dwFlags, int32 cchReq, int32* pcch, IAnchor* paHaltAnchor) Shift;
			public function HRESULT(IAnchor *self, IAnchor* paSite) ShiftTo;
			public function HRESULT(IAnchor *self, uint32 dwFlags, TsShiftDir dir, BOOL* pfNoRegion) ShiftRegion;
			public function HRESULT(IAnchor *self, uint32 dwMask) SetChangeHistoryMask;
			public function HRESULT(IAnchor *self, ANCHOR_CHANGE_HISTORY_FLAGS* pdwHistory) GetChangeHistory;
			public function HRESULT(IAnchor *self) ClearChangeHistory;
			public function HRESULT(IAnchor *self, IAnchor** ppaClone) Clone;
		}
		[CRepr]
		public struct ITextStoreAnchor : IUnknown
		{
			public const new Guid IID = .(0x9b2077b0, 0x5f18, 0x4dec, 0xbe, 0xe9, 0x3c, 0xc7, 0x22, 0xf5, 0xdf, 0xe0);
			
			public function HRESULT(ITextStoreAnchor *self, Guid* riid, IUnknown* punk, uint32 dwMask) AdviseSink;
			public function HRESULT(ITextStoreAnchor *self, IUnknown* punk) UnadviseSink;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwLockFlags, HRESULT* phrSession) RequestLock;
			public function HRESULT(ITextStoreAnchor *self, TS_STATUS* pdcs) GetStatus;
			public function HRESULT(ITextStoreAnchor *self, IAnchor* paTestStart, IAnchor* paTestEnd, uint32 cch, IAnchor** ppaResultStart, IAnchor** ppaResultEnd) QueryInsert;
			public function HRESULT(ITextStoreAnchor *self, uint32 ulIndex, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection, uint32* pcFetched) GetSelection;
			public function HRESULT(ITextStoreAnchor *self, uint32 ulCount, TS_SELECTION_ANCHOR* pSelection) SetSelection;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cchReq, uint32* pcch, BOOL fUpdateAnchor) GetText;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, char16* pchText, uint32 cch) SetText;
			public function HRESULT(ITextStoreAnchor *self, IAnchor* paStart, IAnchor* paEnd, IDataObject** ppDataObject) GetFormattedText;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paPos, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IAnchor* paStart, IAnchor* paEnd, IDataObject* pDataObject) InsertEmbedded;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, uint32 cFilterAttrs, Guid* paFilterAttrs) RequestSupportedAttrs;
			public function HRESULT(ITextStoreAnchor *self, IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsAtPosition;
			public function HRESULT(ITextStoreAnchor *self, IAnchor* paPos, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags) RequestAttrsTransitioningAtPosition;
			public function HRESULT(ITextStoreAnchor *self, IAnchor* paStart, IAnchor* paHalt, uint32 cFilterAttrs, Guid* paFilterAttrs, uint32 dwFlags, BOOL* pfFound, int32* plFoundOffset) FindNextAttrTransition;
			public function HRESULT(ITextStoreAnchor *self, uint32 ulCount, TS_ATTRVAL* paAttrVals, uint32* pcFetched) RetrieveRequestedAttrs;
			public function HRESULT(ITextStoreAnchor *self, IAnchor** ppaStart) GetStart;
			public function HRESULT(ITextStoreAnchor *self, IAnchor** ppaEnd) GetEnd;
			public function HRESULT(ITextStoreAnchor *self, uint32* pvcView) GetActiveView;
			public function HRESULT(ITextStoreAnchor *self, uint32 vcView, POINT* ptScreen, uint32 dwFlags, IAnchor** ppaSite) GetAnchorFromPoint;
			public function HRESULT(ITextStoreAnchor *self, uint32 vcView, IAnchor* paStart, IAnchor* paEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
			public function HRESULT(ITextStoreAnchor *self, uint32 vcView, RECT* prc) GetScreenExt;
			public function HRESULT(ITextStoreAnchor *self, uint32 vcView, HWND* phwnd) GetWnd;
			public function HRESULT(ITextStoreAnchor *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, char16* pchText, uint32 cch, IAnchor** ppaStart, IAnchor** ppaEnd) InsertTextAtSelection;
			public function HRESULT(ITextStoreAnchor *self, uint32 dwFlags, IDataObject* pDataObject, IAnchor** ppaStart, IAnchor** ppaEnd) InsertEmbeddedAtSelection;
		}
		[CRepr]
		public struct ITextStoreAnchorSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e905, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITextStoreAnchorSink *self, TEXT_STORE_CHANGE_FLAGS dwFlags, IAnchor* paStart, IAnchor* paEnd) OnTextChange;
			public function HRESULT(ITextStoreAnchorSink *self) OnSelectionChange;
			public function HRESULT(ITextStoreAnchorSink *self, TsLayoutCode lcode, uint32 vcView) OnLayoutChange;
			public function HRESULT(ITextStoreAnchorSink *self, uint32 dwFlags) OnStatusChange;
			public function HRESULT(ITextStoreAnchorSink *self, IAnchor* paStart, IAnchor* paEnd, uint32 cAttrs, Guid* paAttrs) OnAttrsChange;
			public function HRESULT(ITextStoreAnchorSink *self, TEXT_STORE_LOCK_FLAGS dwLockFlags) OnLockGranted;
			public function HRESULT(ITextStoreAnchorSink *self) OnStartEditTransaction;
			public function HRESULT(ITextStoreAnchorSink *self) OnEndEditTransaction;
		}
		[CRepr]
		public struct ITfLangBarMgr : IUnknown
		{
			public const new Guid IID = .(0x87955690, 0xe627, 0x11d2, 0x8d, 0xdb, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfLangBarMgr *self, ITfLangBarEventSink* pSink, HWND hwnd, uint32 dwFlags, uint32* pdwCookie) AdviseEventSink;
			public function HRESULT(ITfLangBarMgr *self, uint32 dwCookie) UnadviseEventSink;
			public function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, uint32 dwType, Guid* riid, IUnknown** ppunk) GetThreadMarshalInterface;
			public function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, ITfLangBarItemMgr** pplbi, uint32* pdwThreadid) GetThreadLangBarItemMgr;
			public function HRESULT(ITfLangBarMgr *self, uint32 dwThreadId, ITfInputProcessorProfiles** ppaip, uint32* pdwThreadid) GetInputProcessorProfiles;
			public function HRESULT(ITfLangBarMgr *self, uint32* pdwThreadId, BOOL fPrev) RestoreLastFocus;
			public function HRESULT(ITfLangBarMgr *self, ITfLangBarEventSink* pSink, uint32 dwThreadId, uint32 dwFlags) SetModalInput;
			public function HRESULT(ITfLangBarMgr *self, uint32 dwFlags) ShowFloating;
			public function HRESULT(ITfLangBarMgr *self, uint32* pdwFlags) GetShowFloatingStatus;
		}
		[CRepr]
		public struct ITfLangBarEventSink : IUnknown
		{
			public const new Guid IID = .(0x18a4e900, 0xe0ae, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnSetFocus;
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnThreadTerminate;
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId) OnThreadItemChange;
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId, uint32 uMsg, WPARAM wParam, LPARAM lParam) OnModalInput;
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwFlags) ShowFloating;
			public function HRESULT(ITfLangBarEventSink *self, uint32 dwThreadId, Guid* rguid, RECT* prc) GetItemFloatingRect;
		}
		[CRepr]
		public struct ITfLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x57dbe1a0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfLangBarItemSink *self, uint32 dwFlags) OnUpdate;
		}
		[CRepr]
		public struct IEnumTfLangBarItems : IUnknown
		{
			public const new Guid IID = .(0x583f34d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(IEnumTfLangBarItems *self, IEnumTfLangBarItems** ppEnum) Clone;
			public function HRESULT(IEnumTfLangBarItems *self, uint32 ulCount, ITfLangBarItem** ppItem, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfLangBarItems *self) Reset;
			public function HRESULT(IEnumTfLangBarItems *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfLangBarItemMgr : IUnknown
		{
			public const new Guid IID = .(0xba468c55, 0x9956, 0x4fb1, 0xa5, 0x9d, 0x52, 0xa7, 0xdd, 0x7c, 0xc6, 0xaa);
			
			public function HRESULT(ITfLangBarItemMgr *self, IEnumTfLangBarItems** ppEnum) EnumItems;
			public function HRESULT(ITfLangBarItemMgr *self, Guid* rguid, ITfLangBarItem** ppItem) GetItem;
			public function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItem* punk) AddItem;
			public function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItem* punk) RemoveItem;
			public function HRESULT(ITfLangBarItemMgr *self, ITfLangBarItemSink* punk, uint32* pdwCookie, Guid* rguidItem) AdviseItemSink;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 dwCookie) UnadviseItemSink;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 dwThreadId, Guid* rguid, RECT* prc) GetItemFloatingRect;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, Guid* prgguid, uint32* pdwStatus) GetItemsStatus;
			public function HRESULT(ITfLangBarItemMgr *self, uint32* pulCount) GetItemNum;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, ITfLangBarItem** ppItem, TF_LANGBARITEMINFO* pInfo, uint32* pdwStatus, uint32* pcFetched) GetItems;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, ITfLangBarItemSink** ppunk, Guid* pguidItem, uint32* pdwCookie) AdviseItemsSink;
			public function HRESULT(ITfLangBarItemMgr *self, uint32 ulCount, uint32* pdwCookie) UnadviseItemsSink;
		}
		[CRepr]
		public struct ITfLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x73540d69, 0xedeb, 0x4ee9, 0x96, 0xc9, 0x23, 0xaa, 0x30, 0xb2, 0x59, 0x16);
			
			public function HRESULT(ITfLangBarItem *self, TF_LANGBARITEMINFO* pInfo) GetInfo;
			public function HRESULT(ITfLangBarItem *self, uint32* pdwStatus) GetStatus;
			public function HRESULT(ITfLangBarItem *self, BOOL fShow) Show;
			public function HRESULT(ITfLangBarItem *self, BSTR* pbstrToolTip) GetTooltipString;
		}
		[CRepr]
		public struct ITfSystemLangBarItemSink : IUnknown
		{
			public const new Guid IID = .(0x1449d9ab, 0x13cf, 0x4687, 0xaa, 0x3e, 0x8d, 0x8b, 0x18, 0x57, 0x43, 0x96);
			
			public function HRESULT(ITfSystemLangBarItemSink *self, ITfMenu* pMenu) InitMenu;
			public function HRESULT(ITfSystemLangBarItemSink *self, uint32 wID) OnMenuSelect;
		}
		[CRepr]
		public struct ITfSystemLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x1e13e9ec, 0x6b33, 0x4d4a, 0xb5, 0xeb, 0x8a, 0x92, 0xf0, 0x29, 0xf3, 0x56);
			
			public function HRESULT(ITfSystemLangBarItem *self, HICON hIcon) SetIcon;
			public function HRESULT(ITfSystemLangBarItem *self, char16* pchToolTip, uint32 cch) SetTooltipString;
		}
		[CRepr]
		public struct ITfSystemLangBarItemText : IUnknown
		{
			public const new Guid IID = .(0x5c4ce0e5, 0xba49, 0x4b52, 0xac, 0x6b, 0x3b, 0x39, 0x7b, 0x4f, 0x70, 0x1f);
			
			public function HRESULT(ITfSystemLangBarItemText *self, char16* pch, uint32 cch) SetItemText;
			public function HRESULT(ITfSystemLangBarItemText *self, BSTR* pbstrText) GetItemText;
		}
		[CRepr]
		public struct ITfSystemDeviceTypeLangBarItem : IUnknown
		{
			public const new Guid IID = .(0x45672eb9, 0x9059, 0x46a2, 0x83, 0x8d, 0x45, 0x30, 0x35, 0x5f, 0x6a, 0x77);
			
			public function HRESULT(ITfSystemDeviceTypeLangBarItem *self, LANG_BAR_ITEM_ICON_MODE_FLAGS dwFlags) SetIconMode;
			public function HRESULT(ITfSystemDeviceTypeLangBarItem *self, uint32* pdwFlags) GetIconMode;
		}
		[CRepr]
		public struct ITfLangBarItemButton : ITfLangBarItem
		{
			public const new Guid IID = .(0x28c7f1d0, 0xde25, 0x11d2, 0xaf, 0xdd, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfLangBarItemButton *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
			public function HRESULT(ITfLangBarItemButton *self, ITfMenu* pMenu) InitMenu;
			public function HRESULT(ITfLangBarItemButton *self, uint32 wID) OnMenuSelect;
			public function HRESULT(ITfLangBarItemButton *self, HICON* phIcon) GetIcon;
			public function HRESULT(ITfLangBarItemButton *self, BSTR* pbstrText) GetText;
		}
		[CRepr]
		public struct ITfLangBarItemBitmapButton : ITfLangBarItem
		{
			public const new Guid IID = .(0xa26a0525, 0x3fae, 0x4fa0, 0x89, 0xee, 0x88, 0xa9, 0x64, 0xf9, 0xf1, 0xb5);
			
			public function HRESULT(ITfLangBarItemBitmapButton *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
			public function HRESULT(ITfLangBarItemBitmapButton *self, ITfMenu* pMenu) InitMenu;
			public function HRESULT(ITfLangBarItemBitmapButton *self, uint32 wID) OnMenuSelect;
			public function HRESULT(ITfLangBarItemBitmapButton *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
			public function HRESULT(ITfLangBarItemBitmapButton *self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) DrawBitmap;
			public function HRESULT(ITfLangBarItemBitmapButton *self, BSTR* pbstrText) GetText;
		}
		[CRepr]
		public struct ITfLangBarItemBitmap : ITfLangBarItem
		{
			public const new Guid IID = .(0x73830352, 0xd722, 0x4179, 0xad, 0xa5, 0xf0, 0x45, 0xc9, 0x8d, 0xf3, 0x55);
			
			public function HRESULT(ITfLangBarItemBitmap *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
			public function HRESULT(ITfLangBarItemBitmap *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
			public function HRESULT(ITfLangBarItemBitmap *self, int32 bmWidth, int32 bmHeight, uint32 dwFlags, HBITMAP* phbmp, HBITMAP* phbmpMask) DrawBitmap;
		}
		[CRepr]
		public struct ITfLangBarItemBalloon : ITfLangBarItem
		{
			public const new Guid IID = .(0x01c2d285, 0xd3c7, 0x4b7b, 0xb5, 0xb5, 0xd9, 0x74, 0x11, 0xd0, 0xc2, 0x83);
			
			public function HRESULT(ITfLangBarItemBalloon *self, TfLBIClick click, POINT pt, RECT* prcArea) OnClick;
			public function HRESULT(ITfLangBarItemBalloon *self, SIZE* pszDefault, SIZE* psz) GetPreferredSize;
			public function HRESULT(ITfLangBarItemBalloon *self, TF_LBBALLOONINFO* pInfo) GetBalloonInfo;
		}
		[CRepr]
		public struct ITfMenu : IUnknown
		{
			public const new Guid IID = .(0x6f8a98e4, 0xaaa0, 0x4f15, 0x8c, 0x5b, 0x07, 0xe0, 0xdf, 0x0a, 0x3d, 0xd8);
			
			public function HRESULT(ITfMenu *self, uint32 uId, uint32 dwFlags, HBITMAP hbmp, HBITMAP hbmpMask, char16* pch, uint32 cch, ITfMenu** ppMenu) AddMenuItem;
		}
		[CRepr]
		public struct ITfThreadMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e801, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfThreadMgr *self, uint32* ptid) Activate;
			public function HRESULT(ITfThreadMgr *self) Deactivate;
			public function HRESULT(ITfThreadMgr *self, ITfDocumentMgr** ppdim) CreateDocumentMgr;
			public function HRESULT(ITfThreadMgr *self, IEnumTfDocumentMgrs** ppEnum) EnumDocumentMgrs;
			public function HRESULT(ITfThreadMgr *self, ITfDocumentMgr** ppdimFocus) GetFocus;
			public function HRESULT(ITfThreadMgr *self, ITfDocumentMgr* pdimFocus) SetFocus;
			public function HRESULT(ITfThreadMgr *self, HWND hwnd, ITfDocumentMgr* pdimNew, ITfDocumentMgr** ppdimPrev) AssociateFocus;
			public function HRESULT(ITfThreadMgr *self, BOOL* pfThreadFocus) IsThreadFocus;
			public function HRESULT(ITfThreadMgr *self, Guid* clsid, ITfFunctionProvider** ppFuncProv) GetFunctionProvider;
			public function HRESULT(ITfThreadMgr *self, IEnumTfFunctionProviders** ppEnum) EnumFunctionProviders;
			public function HRESULT(ITfThreadMgr *self, ITfCompartmentMgr** ppCompMgr) GetGlobalCompartment;
		}
		[CRepr]
		public struct ITfThreadMgrEx : ITfThreadMgr
		{
			public const new Guid IID = .(0x3e90ade3, 0x7594, 0x4cb0, 0xbb, 0x58, 0x69, 0x62, 0x8f, 0x5f, 0x45, 0x8c);
			
			public function HRESULT(ITfThreadMgrEx *self, uint32* ptid, uint32 dwFlags) ActivateEx;
			public function HRESULT(ITfThreadMgrEx *self, uint32* lpdwFlags) GetActiveFlags;
		}
		[CRepr]
		public struct ITfThreadMgr2 : IUnknown
		{
			public const new Guid IID = .(0x0ab198ef, 0x6477, 0x4ee8, 0x88, 0x12, 0x67, 0x80, 0xed, 0xb8, 0x2d, 0x5e);
			
			public function HRESULT(ITfThreadMgr2 *self, uint32* ptid) Activate;
			public function HRESULT(ITfThreadMgr2 *self) Deactivate;
			public function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr** ppdim) CreateDocumentMgr;
			public function HRESULT(ITfThreadMgr2 *self, IEnumTfDocumentMgrs** ppEnum) EnumDocumentMgrs;
			public function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr** ppdimFocus) GetFocus;
			public function HRESULT(ITfThreadMgr2 *self, ITfDocumentMgr* pdimFocus) SetFocus;
			public function HRESULT(ITfThreadMgr2 *self, BOOL* pfThreadFocus) IsThreadFocus;
			public function HRESULT(ITfThreadMgr2 *self, Guid* clsid, ITfFunctionProvider** ppFuncProv) GetFunctionProvider;
			public function HRESULT(ITfThreadMgr2 *self, IEnumTfFunctionProviders** ppEnum) EnumFunctionProviders;
			public function HRESULT(ITfThreadMgr2 *self, ITfCompartmentMgr** ppCompMgr) GetGlobalCompartment;
			public function HRESULT(ITfThreadMgr2 *self, uint32* ptid, uint32 dwFlags) ActivateEx;
			public function HRESULT(ITfThreadMgr2 *self, uint32* lpdwFlags) GetActiveFlags;
			public function HRESULT(ITfThreadMgr2 *self) SuspendKeystrokeHandling;
			public function HRESULT(ITfThreadMgr2 *self) ResumeKeystrokeHandling;
		}
		[CRepr]
		public struct ITfThreadMgrEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e80e, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdim) OnInitDocumentMgr;
			public function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdim) OnUninitDocumentMgr;
			public function HRESULT(ITfThreadMgrEventSink *self, ITfDocumentMgr* pdimFocus, ITfDocumentMgr* pdimPrevFocus) OnSetFocus;
			public function HRESULT(ITfThreadMgrEventSink *self, ITfContext* pic) OnPushContext;
			public function HRESULT(ITfThreadMgrEventSink *self, ITfContext* pic) OnPopContext;
		}
		[CRepr]
		public struct ITfConfigureSystemKeystrokeFeed : IUnknown
		{
			public const new Guid IID = .(0x0d2c969a, 0xbc9c, 0x437c, 0x84, 0xee, 0x95, 0x1c, 0x49, 0xb1, 0xa7, 0x64);
			
			public function HRESULT(ITfConfigureSystemKeystrokeFeed *self) DisableSystemKeystrokeFeed;
			public function HRESULT(ITfConfigureSystemKeystrokeFeed *self) EnableSystemKeystrokeFeed;
		}
		[CRepr]
		public struct IEnumTfDocumentMgrs : IUnknown
		{
			public const new Guid IID = .(0xaa80e808, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(IEnumTfDocumentMgrs *self, IEnumTfDocumentMgrs** ppEnum) Clone;
			public function HRESULT(IEnumTfDocumentMgrs *self, uint32 ulCount, ITfDocumentMgr** rgDocumentMgr, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfDocumentMgrs *self) Reset;
			public function HRESULT(IEnumTfDocumentMgrs *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfDocumentMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f4, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfDocumentMgr *self, uint32 tidOwner, uint32 dwFlags, IUnknown* punk, ITfContext** ppic, uint32* pecTextStore) CreateContext;
			public function HRESULT(ITfDocumentMgr *self, ITfContext* pic) Push;
			public function HRESULT(ITfDocumentMgr *self, uint32 dwFlags) Pop;
			public function HRESULT(ITfDocumentMgr *self, ITfContext** ppic) GetTop;
			public function HRESULT(ITfDocumentMgr *self, ITfContext** ppic) GetBase;
			public function HRESULT(ITfDocumentMgr *self, IEnumTfContexts** ppEnum) EnumContexts;
		}
		[CRepr]
		public struct IEnumTfContexts : IUnknown
		{
			public const new Guid IID = .(0x8f1a7ea6, 0x1654, 0x4502, 0xa8, 0x6e, 0xb2, 0x90, 0x23, 0x44, 0xd5, 0x07);
			
			public function HRESULT(IEnumTfContexts *self, IEnumTfContexts** ppEnum) Clone;
			public function HRESULT(IEnumTfContexts *self, uint32 ulCount, ITfContext** rgContext, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfContexts *self) Reset;
			public function HRESULT(IEnumTfContexts *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0xd7540241, 0xf9a1, 0x4364, 0xbe, 0xfc, 0xdb, 0xcd, 0x2c, 0x43, 0x95, 0xb7);
			
			public function HRESULT(ITfCompositionView *self, Guid* pclsid) GetOwnerClsid;
			public function HRESULT(ITfCompositionView *self, ITfRange** ppRange) GetRange;
		}
		[CRepr]
		public struct IEnumITfCompositionView : IUnknown
		{
			public const new Guid IID = .(0x5efd22ba, 0x7838, 0x46cb, 0x88, 0xe2, 0xca, 0xdb, 0x14, 0x12, 0x4f, 0x8f);
			
			public function HRESULT(IEnumITfCompositionView *self, IEnumITfCompositionView** ppEnum) Clone;
			public function HRESULT(IEnumITfCompositionView *self, uint32 ulCount, ITfCompositionView** rgCompositionView, uint32* pcFetched) Next;
			public function HRESULT(IEnumITfCompositionView *self) Reset;
			public function HRESULT(IEnumITfCompositionView *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfComposition : IUnknown
		{
			public const new Guid IID = .(0x20168d64, 0x5a8f, 0x4a5a, 0xb7, 0xbd, 0xcf, 0xa2, 0x9f, 0x4d, 0x0f, 0xd9);
			
			public function HRESULT(ITfComposition *self, ITfRange** ppRange) GetRange;
			public function HRESULT(ITfComposition *self, uint32 ecWrite, ITfRange* pNewStart) ShiftStart;
			public function HRESULT(ITfComposition *self, uint32 ecWrite, ITfRange* pNewEnd) ShiftEnd;
			public function HRESULT(ITfComposition *self, uint32 ecWrite) EndComposition;
		}
		[CRepr]
		public struct ITfCompositionSink : IUnknown
		{
			public const new Guid IID = .(0xa781718c, 0x579a, 0x4b15, 0xa2, 0x80, 0x32, 0xb8, 0x57, 0x7a, 0xcc, 0x5e);
			
			public function HRESULT(ITfCompositionSink *self, uint32 ecWrite, ITfComposition* pComposition) OnCompositionTerminated;
		}
		[CRepr]
		public struct ITfContextComposition : IUnknown
		{
			public const new Guid IID = .(0xd40c8aae, 0xac92, 0x4fc7, 0x9a, 0x11, 0x0e, 0xe0, 0xe2, 0x3a, 0xa3, 0x9b);
			
			public function HRESULT(ITfContextComposition *self, uint32 ecWrite, ITfRange* pCompositionRange, ITfCompositionSink* pSink, ITfComposition** ppComposition) StartComposition;
			public function HRESULT(ITfContextComposition *self, IEnumITfCompositionView** ppEnum) EnumCompositions;
			public function HRESULT(ITfContextComposition *self, uint32 ecRead, ITfRange* pTestRange, IEnumITfCompositionView** ppEnum) FindComposition;
			public function HRESULT(ITfContextComposition *self, uint32 ecWrite, ITfCompositionView* pComposition, ITfCompositionSink* pSink, ITfComposition** ppComposition) TakeOwnership;
		}
		[CRepr]
		public struct ITfContextOwnerCompositionServices : ITfContextComposition
		{
			public const new Guid IID = .(0x86462810, 0x593b, 0x4916, 0x97, 0x64, 0x19, 0xc0, 0x8e, 0x9c, 0xe1, 0x10);
			
			public function HRESULT(ITfContextOwnerCompositionServices *self, ITfCompositionView* pComposition) TerminateComposition;
		}
		[CRepr]
		public struct ITfContextOwnerCompositionSink : IUnknown
		{
			public const new Guid IID = .(0x5f20aa40, 0xb57a, 0x4f34, 0x96, 0xab, 0x35, 0x76, 0xf3, 0x77, 0xcc, 0x79);
			
			public function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition, BOOL* pfOk) OnStartComposition;
			public function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition, ITfRange* pRangeNew) OnUpdateComposition;
			public function HRESULT(ITfContextOwnerCompositionSink *self, ITfCompositionView* pComposition) OnEndComposition;
		}
		[CRepr]
		public struct ITfContextView : IUnknown
		{
			public const new Guid IID = .(0x2433bf8e, 0x0f9b, 0x435c, 0xba, 0x2c, 0x18, 0x06, 0x11, 0x97, 0x8c, 0x30);
			
			public function HRESULT(ITfContextView *self, uint32 ec, POINT* ppt, uint32 dwFlags, ITfRange** ppRange) GetRangeFromPoint;
			public function HRESULT(ITfContextView *self, uint32 ec, ITfRange* pRange, RECT* prc, BOOL* pfClipped) GetTextExt;
			public function HRESULT(ITfContextView *self, RECT* prc) GetScreenExt;
			public function HRESULT(ITfContextView *self, HWND* phwnd) GetWnd;
		}
		[CRepr]
		public struct IEnumTfContextViews : IUnknown
		{
			public const new Guid IID = .(0xf0c0f8dd, 0xcf38, 0x44e1, 0xbb, 0x0f, 0x68, 0xcf, 0x0d, 0x55, 0x1c, 0x78);
			
			public function HRESULT(IEnumTfContextViews *self, IEnumTfContextViews** ppEnum) Clone;
			public function HRESULT(IEnumTfContextViews *self, uint32 ulCount, ITfContextView** rgViews, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfContextViews *self) Reset;
			public function HRESULT(IEnumTfContextViews *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfContext : IUnknown
		{
			public const new Guid IID = .(0xaa80e7fd, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfContext *self, uint32 tid, ITfEditSession* pes, TF_CONTEXT_EDIT_CONTEXT_FLAGS dwFlags, HRESULT* phrSession) RequestEditSession;
			public function HRESULT(ITfContext *self, uint32 tid, BOOL* pfWriteSession) InWriteSession;
			public function HRESULT(ITfContext *self, uint32 ec, uint32 ulIndex, uint32 ulCount, TF_SELECTION* pSelection, uint32* pcFetched) GetSelection;
			public function HRESULT(ITfContext *self, uint32 ec, uint32 ulCount, TF_SELECTION* pSelection) SetSelection;
			public function HRESULT(ITfContext *self, uint32 ec, ITfRange** ppStart) GetStart;
			public function HRESULT(ITfContext *self, uint32 ec, ITfRange** ppEnd) GetEnd;
			public function HRESULT(ITfContext *self, ITfContextView** ppView) GetActiveView;
			public function HRESULT(ITfContext *self, IEnumTfContextViews** ppEnum) EnumViews;
			public function HRESULT(ITfContext *self, TS_STATUS* pdcs) GetStatus;
			public function HRESULT(ITfContext *self, Guid* guidProp, ITfProperty** ppProp) GetProperty;
			public function HRESULT(ITfContext *self, Guid* guidProp, ITfReadOnlyProperty** ppProp) GetAppProperty;
			public function HRESULT(ITfContext *self, Guid** prgProp, uint32 cProp, Guid** prgAppProp, uint32 cAppProp, ITfReadOnlyProperty** ppProperty) TrackProperties;
			public function HRESULT(ITfContext *self, IEnumTfProperties** ppEnum) EnumProperties;
			public function HRESULT(ITfContext *self, ITfDocumentMgr** ppDm) GetDocumentMgr;
			public function HRESULT(ITfContext *self, uint32 ec, ITfRange* pRange, ITfRangeBackup** ppBackup) CreateRangeBackup;
		}
		[CRepr]
		public struct ITfQueryEmbedded : IUnknown
		{
			public const new Guid IID = .(0x0fab9bdb, 0xd250, 0x4169, 0x84, 0xe5, 0x6b, 0xe1, 0x18, 0xfd, 0xd7, 0xa8);
			
			public function HRESULT(ITfQueryEmbedded *self, Guid* pguidService, FORMATETC* pFormatEtc, BOOL* pfInsertable) QueryInsertEmbedded;
		}
		[CRepr]
		public struct ITfInsertAtSelection : IUnknown
		{
			public const new Guid IID = .(0x55ce16ba, 0x3014, 0x41c1, 0x9c, 0xeb, 0xfa, 0xde, 0x14, 0x46, 0xac, 0x6c);
			
			public function HRESULT(ITfInsertAtSelection *self, uint32 ec, INSERT_TEXT_AT_SELECTION_FLAGS dwFlags, char16* pchText, int32 cch, ITfRange** ppRange) InsertTextAtSelection;
			public function HRESULT(ITfInsertAtSelection *self, uint32 ec, uint32 dwFlags, IDataObject* pDataObject, ITfRange** ppRange) InsertEmbeddedAtSelection;
		}
		[CRepr]
		public struct ITfCleanupContextSink : IUnknown
		{
			public const new Guid IID = .(0x01689689, 0x7acb, 0x4e9b, 0xab, 0x7c, 0x7e, 0xa4, 0x6b, 0x12, 0xb5, 0x22);
			
			public function HRESULT(ITfCleanupContextSink *self, uint32 ecWrite, ITfContext* pic) OnCleanupContext;
		}
		[CRepr]
		public struct ITfCleanupContextDurationSink : IUnknown
		{
			public const new Guid IID = .(0x45c35144, 0x154e, 0x4797, 0xbe, 0xd8, 0xd3, 0x3a, 0xe7, 0xbf, 0x87, 0x94);
			
			public function HRESULT(ITfCleanupContextDurationSink *self) OnStartCleanupContext;
			public function HRESULT(ITfCleanupContextDurationSink *self) OnEndCleanupContext;
		}
		[CRepr]
		public struct ITfReadOnlyProperty : IUnknown
		{
			public const new Guid IID = .(0x17d49a3d, 0xf8b8, 0x4b2f, 0xb2, 0x54, 0x52, 0x31, 0x9d, 0xd6, 0x4c, 0x53);
			
			public function HRESULT(ITfReadOnlyProperty *self, Guid* pguid) GetType;
			public function HRESULT(ITfReadOnlyProperty *self, uint32 ec, IEnumTfRanges** ppEnum, ITfRange* pTargetRange) EnumRanges;
			public function HRESULT(ITfReadOnlyProperty *self, uint32 ec, ITfRange* pRange, VARIANT* pvarValue) GetValue;
			public function HRESULT(ITfReadOnlyProperty *self, ITfContext** ppContext) GetContext;
		}
		[CRepr]
		public struct IEnumTfPropertyValue : IUnknown
		{
			public const new Guid IID = .(0x8ed8981b, 0x7c10, 0x4d7d, 0x9f, 0xb3, 0xab, 0x72, 0xe9, 0xc7, 0x5f, 0x72);
			
			public function HRESULT(IEnumTfPropertyValue *self, IEnumTfPropertyValue** ppEnum) Clone;
			public function HRESULT(IEnumTfPropertyValue *self, uint32 ulCount, TF_PROPERTYVAL* rgValues, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfPropertyValue *self) Reset;
			public function HRESULT(IEnumTfPropertyValue *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfMouseTracker : IUnknown
		{
			public const new Guid IID = .(0x09d146cd, 0xa544, 0x4132, 0x92, 0x5b, 0x7a, 0xfa, 0x8e, 0xf3, 0x22, 0xd0);
			
			public function HRESULT(ITfMouseTracker *self, ITfRange* range, ITfMouseSink* pSink, uint32* pdwCookie) AdviseMouseSink;
			public function HRESULT(ITfMouseTracker *self, uint32 dwCookie) UnadviseMouseSink;
		}
		[CRepr]
		public struct ITfMouseTrackerACP : IUnknown
		{
			public const new Guid IID = .(0x3bdd78e2, 0xc16e, 0x47fd, 0xb8, 0x83, 0xce, 0x6f, 0xac, 0xc1, 0xa2, 0x08);
			
			public function HRESULT(ITfMouseTrackerACP *self, ITfRangeACP* range, ITfMouseSink* pSink, uint32* pdwCookie) AdviseMouseSink;
			public function HRESULT(ITfMouseTrackerACP *self, uint32 dwCookie) UnadviseMouseSink;
		}
		[CRepr]
		public struct ITfMouseSink : IUnknown
		{
			public const new Guid IID = .(0xa1adaaa2, 0x3a24, 0x449d, 0xac, 0x96, 0x51, 0x83, 0xe7, 0xf5, 0xc2, 0x17);
			
			public function HRESULT(ITfMouseSink *self, uint32 uEdge, uint32 uQuadrant, uint32 dwBtnStatus, BOOL* pfEaten) OnMouseEvent;
		}
		[CRepr]
		public struct ITfEditRecord : IUnknown
		{
			public const new Guid IID = .(0x42d4d099, 0x7c1a, 0x4a89, 0xb8, 0x36, 0x6c, 0x6f, 0x22, 0x16, 0x0d, 0xf0);
			
			public function HRESULT(ITfEditRecord *self, BOOL* pfChanged) GetSelectionStatus;
			public function HRESULT(ITfEditRecord *self, GET_TEXT_AND_PROPERTY_UPDATES_FLAGS dwFlags, Guid** prgProperties, uint32 cProperties, IEnumTfRanges** ppEnum) GetTextAndPropertyUpdates;
		}
		[CRepr]
		public struct ITfTextEditSink : IUnknown
		{
			public const new Guid IID = .(0x8127d409, 0xccd3, 0x4683, 0x96, 0x7a, 0xb4, 0x3d, 0x5b, 0x48, 0x2b, 0xf7);
			
			public function HRESULT(ITfTextEditSink *self, ITfContext* pic, uint32 ecReadOnly, ITfEditRecord* pEditRecord) OnEndEdit;
		}
		[CRepr]
		public struct ITfTextLayoutSink : IUnknown
		{
			public const new Guid IID = .(0x2af2d06a, 0xdd5b, 0x4927, 0xa0, 0xb4, 0x54, 0xf1, 0x9c, 0x91, 0xfa, 0xde);
			
			public function HRESULT(ITfTextLayoutSink *self, ITfContext* pic, TfLayoutCode lcode, ITfContextView* pView) OnLayoutChange;
		}
		[CRepr]
		public struct ITfStatusSink : IUnknown
		{
			public const new Guid IID = .(0x6b7d8d73, 0xb267, 0x4f69, 0xb3, 0x2e, 0x1c, 0xa3, 0x21, 0xce, 0x4f, 0x45);
			
			public function HRESULT(ITfStatusSink *self, ITfContext* pic, uint32 dwFlags) OnStatusChange;
		}
		[CRepr]
		public struct ITfEditTransactionSink : IUnknown
		{
			public const new Guid IID = .(0x708fbf70, 0xb520, 0x416b, 0xb0, 0x6c, 0x2c, 0x41, 0xab, 0x44, 0xf8, 0xba);
			
			public function HRESULT(ITfEditTransactionSink *self, ITfContext* pic) OnStartEditTransaction;
			public function HRESULT(ITfEditTransactionSink *self, ITfContext* pic) OnEndEditTransaction;
		}
		[CRepr]
		public struct ITfContextOwner : IUnknown
		{
			public const new Guid IID = .(0xaa80e80c, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfContextOwner *self, POINT* ptScreen, uint32 dwFlags, int32* pacp) GetACPFromPoint;
			public function HRESULT(ITfContextOwner *self, int32 acpStart, int32 acpEnd, RECT* prc, BOOL* pfClipped) GetTextExt;
			public function HRESULT(ITfContextOwner *self, RECT* prc) GetScreenExt;
			public function HRESULT(ITfContextOwner *self, TS_STATUS* pdcs) GetStatus;
			public function HRESULT(ITfContextOwner *self, HWND* phwnd) GetWnd;
			public function HRESULT(ITfContextOwner *self, Guid* rguidAttribute, VARIANT* pvarValue) GetAttribute;
		}
		[CRepr]
		public struct ITfContextOwnerServices : IUnknown
		{
			public const new Guid IID = .(0xb23eb630, 0x3e1c, 0x11d3, 0xa7, 0x45, 0x00, 0x50, 0x04, 0x0a, 0xb4, 0x07);
			
			public function HRESULT(ITfContextOwnerServices *self) OnLayoutChange;
			public function HRESULT(ITfContextOwnerServices *self, uint32 dwFlags) OnStatusChange;
			public function HRESULT(ITfContextOwnerServices *self, Guid* rguidAttribute) OnAttributeChange;
			public function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) Serialize;
			public function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) Unserialize;
			public function HRESULT(ITfContextOwnerServices *self, ITfProperty* pProp) ForceLoadProperty;
			public function HRESULT(ITfContextOwnerServices *self, int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) CreateRange;
		}
		[CRepr]
		public struct ITfContextKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0x0552ba5d, 0xc835, 0x4934, 0xbf, 0x50, 0x84, 0x6a, 0xaa, 0x67, 0x43, 0x2f);
			
			public function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
			public function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyUp;
			public function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyDown;
			public function HRESULT(ITfContextKeyEventSink *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyUp;
		}
		[CRepr]
		public struct ITfEditSession : IUnknown
		{
			public const new Guid IID = .(0xaa80e803, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfEditSession *self, uint32 ec) DoEditSession;
		}
		[CRepr]
		public struct ITfRange : IUnknown
		{
			public const new Guid IID = .(0xaa80e7ff, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, char16* pchText, uint32 cchMax, uint32* pcch) GetText;
			public function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, char16* pchText, int32 cch) SetText;
			public function HRESULT(ITfRange *self, uint32 ec, IDataObject** ppDataObject) GetFormattedText;
			public function HRESULT(ITfRange *self, uint32 ec, Guid* rguidService, Guid* riid, IUnknown** ppunk) GetEmbedded;
			public function HRESULT(ITfRange *self, uint32 ec, uint32 dwFlags, IDataObject* pDataObject) InsertEmbedded;
			public function HRESULT(ITfRange *self, uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) ShiftStart;
			public function HRESULT(ITfRange *self, uint32 ec, int32 cchReq, int32* pcch, TF_HALTCOND* pHalt) ShiftEnd;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pRange, TfAnchor aPos) ShiftStartToRange;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pRange, TfAnchor aPos) ShiftEndToRange;
			public function HRESULT(ITfRange *self, uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) ShiftStartRegion;
			public function HRESULT(ITfRange *self, uint32 ec, TfShiftDir dir, BOOL* pfNoRegion) ShiftEndRegion;
			public function HRESULT(ITfRange *self, uint32 ec, BOOL* pfEmpty) IsEmpty;
			public function HRESULT(ITfRange *self, uint32 ec, TfAnchor aPos) Collapse;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) IsEqualStart;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, BOOL* pfEqual) IsEqualEnd;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) CompareStart;
			public function HRESULT(ITfRange *self, uint32 ec, ITfRange* pWith, TfAnchor aPos, int32* plResult) CompareEnd;
			public function HRESULT(ITfRange *self, uint32 ec, uint32 cchInsert, BOOL* pfInsertOk) AdjustForInsert;
			public function HRESULT(ITfRange *self, TfGravity* pgStart, TfGravity* pgEnd) GetGravity;
			public function HRESULT(ITfRange *self, uint32 ec, TfGravity gStart, TfGravity gEnd) SetGravity;
			public function HRESULT(ITfRange *self, ITfRange** ppClone) Clone;
			public function HRESULT(ITfRange *self, ITfContext** ppContext) GetContext;
		}
		[CRepr]
		public struct ITfRangeACP : ITfRange
		{
			public const new Guid IID = .(0x057a6296, 0x029b, 0x4154, 0xb7, 0x9a, 0x0d, 0x46, 0x1d, 0x4e, 0xa9, 0x4c);
			
			public function HRESULT(ITfRangeACP *self, int32* pacpAnchor, int32* pcch) GetExtent;
			public function HRESULT(ITfRangeACP *self, int32 acpAnchor, int32 cch) SetExtent;
		}
		[CRepr]
		public struct ITextStoreACPServices : IUnknown
		{
			public const new Guid IID = .(0xaa80e901, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp, ITfRange* pRange, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream) Serialize;
			public function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream* pStream, ITfPersistentPropertyLoaderACP* pLoader) Unserialize;
			public function HRESULT(ITextStoreACPServices *self, ITfProperty* pProp) ForceLoadProperty;
			public function HRESULT(ITextStoreACPServices *self, int32 acpStart, int32 acpEnd, ITfRangeACP** ppRange) CreateRange;
		}
		[CRepr]
		public struct ITfRangeBackup : IUnknown
		{
			public const new Guid IID = .(0x463a506d, 0x6992, 0x49d2, 0x9b, 0x88, 0x93, 0xd5, 0x5e, 0x70, 0xbb, 0x16);
			
			public function HRESULT(ITfRangeBackup *self, uint32 ec, ITfRange* pRange) Restore;
		}
		[CRepr]
		public struct ITfPropertyStore : IUnknown
		{
			public const new Guid IID = .(0x6834b120, 0x88cb, 0x11d2, 0xbf, 0x45, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfPropertyStore *self, Guid* pguid) GetType;
			public function HRESULT(ITfPropertyStore *self, uint32* pdwReserved) GetDataType;
			public function HRESULT(ITfPropertyStore *self, VARIANT* pvarValue) GetData;
			public function HRESULT(ITfPropertyStore *self, uint32 dwFlags, ITfRange* pRangeNew, BOOL* pfAccept) OnTextUpdated;
			public function HRESULT(ITfPropertyStore *self, ITfRange* pRangeNew, BOOL* pfFree) Shrink;
			public function HRESULT(ITfPropertyStore *self, ITfRange* pRangeThis, ITfRange* pRangeNew, ITfPropertyStore** ppPropStore) Divide;
			public function HRESULT(ITfPropertyStore *self, ITfPropertyStore** pPropStore) Clone;
			public function HRESULT(ITfPropertyStore *self, Guid* pclsid) GetPropertyRangeCreator;
			public function HRESULT(ITfPropertyStore *self, IStream* pStream, uint32* pcb) Serialize;
		}
		[CRepr]
		public struct IEnumTfRanges : IUnknown
		{
			public const new Guid IID = .(0xf99d3f40, 0x8e32, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(IEnumTfRanges *self, IEnumTfRanges** ppEnum) Clone;
			public function HRESULT(IEnumTfRanges *self, uint32 ulCount, ITfRange** ppRange, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfRanges *self) Reset;
			public function HRESULT(IEnumTfRanges *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfCreatePropertyStore : IUnknown
		{
			public const new Guid IID = .(0x2463fbf0, 0xb0af, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfCreatePropertyStore *self, Guid* guidProp, ITfRange* pRange, ITfPropertyStore* pPropStore, BOOL* pfSerializable) IsStoreSerializable;
			public function HRESULT(ITfCreatePropertyStore *self, Guid* guidProp, ITfRange* pRange, uint32 cb, IStream* pStream, ITfPropertyStore** ppStore) CreatePropertyStore;
		}
		[CRepr]
		public struct ITfPersistentPropertyLoaderACP : IUnknown
		{
			public const new Guid IID = .(0x4ef89150, 0x0807, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfPersistentPropertyLoaderACP *self, TF_PERSISTENT_PROPERTY_HEADER_ACP* pHdr, IStream** ppStream) LoadProperty;
		}
		[CRepr]
		public struct ITfProperty : ITfReadOnlyProperty
		{
			public const new Guid IID = .(0xe2449660, 0x9542, 0x11d2, 0xbf, 0x46, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, ITfRange** ppRange, TfAnchor aPos) FindRange;
			public function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, ITfPropertyStore* pPropStore) SetValueStore;
			public function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange, VARIANT* pvarValue) SetValue;
			public function HRESULT(ITfProperty *self, uint32 ec, ITfRange* pRange) Clear;
		}
		[CRepr]
		public struct IEnumTfProperties : IUnknown
		{
			public const new Guid IID = .(0x19188cb0, 0xaca9, 0x11d2, 0xaf, 0xc5, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(IEnumTfProperties *self, IEnumTfProperties** ppEnum) Clone;
			public function HRESULT(IEnumTfProperties *self, uint32 ulCount, ITfProperty** ppProp, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfProperties *self) Reset;
			public function HRESULT(IEnumTfProperties *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfCompartment : IUnknown
		{
			public const new Guid IID = .(0xbb08f7a9, 0x607a, 0x4384, 0x86, 0x23, 0x05, 0x68, 0x92, 0xb6, 0x43, 0x71);
			
			public function HRESULT(ITfCompartment *self, uint32 tid, VARIANT* pvarValue) SetValue;
			public function HRESULT(ITfCompartment *self, VARIANT* pvarValue) GetValue;
		}
		[CRepr]
		public struct ITfCompartmentEventSink : IUnknown
		{
			public const new Guid IID = .(0x743abd5f, 0xf26d, 0x48df, 0x8c, 0xc5, 0x23, 0x84, 0x92, 0x41, 0x9b, 0x64);
			
			public function HRESULT(ITfCompartmentEventSink *self, Guid* rguid) OnChange;
		}
		[CRepr]
		public struct ITfCompartmentMgr : IUnknown
		{
			public const new Guid IID = .(0x7dcf57ac, 0x18ad, 0x438b, 0x82, 0x4d, 0x97, 0x9b, 0xff, 0xb7, 0x4b, 0x7c);
			
			public function HRESULT(ITfCompartmentMgr *self, Guid* rguid, ITfCompartment** ppcomp) GetCompartment;
			public function HRESULT(ITfCompartmentMgr *self, uint32 tid, Guid* rguid) ClearCompartment;
			public function HRESULT(ITfCompartmentMgr *self, IEnumGUID** ppEnum) EnumCompartments;
		}
		[CRepr]
		public struct ITfFunction : IUnknown
		{
			public const new Guid IID = .(0xdb593490, 0x098f, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfFunction *self, BSTR* pbstrName) GetDisplayName;
		}
		[CRepr]
		public struct ITfFunctionProvider : IUnknown
		{
			public const new Guid IID = .(0x101d6610, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfFunctionProvider *self, Guid* pguid) GetType;
			public function HRESULT(ITfFunctionProvider *self, BSTR* pbstrDesc) GetDescription;
			public function HRESULT(ITfFunctionProvider *self, Guid* rguid, Guid* riid, IUnknown** ppunk) GetFunction;
		}
		[CRepr]
		public struct IEnumTfFunctionProviders : IUnknown
		{
			public const new Guid IID = .(0xe4b24db0, 0x0990, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(IEnumTfFunctionProviders *self, IEnumTfFunctionProviders** ppEnum) Clone;
			public function HRESULT(IEnumTfFunctionProviders *self, uint32 ulCount, ITfFunctionProvider** ppCmdobj, uint32* pcFetch) Next;
			public function HRESULT(IEnumTfFunctionProviders *self) Reset;
			public function HRESULT(IEnumTfFunctionProviders *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x1f02b6c5, 0x7842, 0x4ee6, 0x8a, 0x0b, 0x9a, 0x24, 0x18, 0x3a, 0x95, 0xca);
			
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid) Register;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid) Unregister;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex) AddLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile) RemoveLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, IEnumGUID** ppEnum) EnumInputProcessorInfo;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, Guid* catid, Guid* pclsid, Guid* pguidProfile) GetDefaultLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, Guid* rclsid, Guid* guidProfiles) SetDefaultLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfiles) ActivateLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16* plangid, Guid* pguidProfile) GetActiveLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BSTR* pbstrProfile) GetLanguageProfileDescription;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16* plangid) GetCurrentLanguage;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16 langid) ChangeCurrentLanguage;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16** ppLangId, uint32* pulCount) GetLanguageList;
			public function HRESULT(ITfInputProcessorProfiles *self, uint16 langid, IEnumTfLanguageProfiles** ppEnum) EnumLanguageProfiles;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) EnableLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL* pfEnable) IsEnabledLanguageProfile;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, BOOL fEnable) EnableLanguageProfileByDefault;
			public function HRESULT(ITfInputProcessorProfiles *self, Guid* rclsid, uint16 langid, Guid* guidProfile, HKL hKL) SubstituteKeyboardLayout;
		}
		[CRepr]
		public struct ITfInputProcessorProfilesEx : ITfInputProcessorProfiles
		{
			public const new Guid IID = .(0x892f230f, 0xfe00, 0x4a41, 0xa9, 0x8e, 0xfc, 0xd6, 0xde, 0x0d, 0x35, 0xef);
			
			public function HRESULT(ITfInputProcessorProfilesEx *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchFile, uint32 cchFile, uint32 uResId) SetLanguageProfileDisplayName;
		}
		[CRepr]
		public struct ITfInputProcessorProfileSubstituteLayout : IUnknown
		{
			public const new Guid IID = .(0x4fd67194, 0x1002, 0x4513, 0xbf, 0xf2, 0xc0, 0xdd, 0xf6, 0x25, 0x85, 0x52);
			
			public function HRESULT(ITfInputProcessorProfileSubstituteLayout *self, Guid* rclsid, uint16 langid, Guid* guidProfile, HKL* phKL) GetSubstituteKeyboardLayout;
		}
		[CRepr]
		public struct ITfActiveLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0xb246cb75, 0xa93e, 0x4652, 0xbf, 0x8c, 0xb3, 0xfe, 0x0c, 0xfd, 0x7e, 0x57);
			
			public function HRESULT(ITfActiveLanguageProfileNotifySink *self, Guid* clsid, Guid* guidProfile, BOOL fActivated) OnActivated;
		}
		[CRepr]
		public struct IEnumTfLanguageProfiles : IUnknown
		{
			public const new Guid IID = .(0x3d61bf11, 0xac5f, 0x42c8, 0xa4, 0xcb, 0x93, 0x1b, 0xcc, 0x28, 0xc7, 0x44);
			
			public function HRESULT(IEnumTfLanguageProfiles *self, IEnumTfLanguageProfiles** ppEnum) Clone;
			public function HRESULT(IEnumTfLanguageProfiles *self, uint32 ulCount, TF_LANGUAGEPROFILE* pProfile, uint32* pcFetch) Next;
			public function HRESULT(IEnumTfLanguageProfiles *self) Reset;
			public function HRESULT(IEnumTfLanguageProfiles *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfLanguageProfileNotifySink : IUnknown
		{
			public const new Guid IID = .(0x43c9fe15, 0xf494, 0x4c17, 0x9d, 0xe2, 0xb8, 0xa4, 0xac, 0x35, 0x0a, 0xa8);
			
			public function HRESULT(ITfLanguageProfileNotifySink *self, uint16 langid, BOOL* pfAccept) OnLanguageChange;
			public function HRESULT(ITfLanguageProfileNotifySink *self) OnLanguageChanged;
		}
		[CRepr]
		public struct ITfInputProcessorProfileMgr : IUnknown
		{
			public const new Guid IID = .(0x71c6e74c, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) ActivateProfile;
			public function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, uint32 dwFlags) DeactivateProfile;
			public function HRESULT(ITfInputProcessorProfileMgr *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* guidProfile, HKL hkl, TF_INPUTPROCESSORPROFILE* pProfile) GetProfile;
			public function HRESULT(ITfInputProcessorProfileMgr *self, uint16 langid, IEnumTfInputProcessorProfiles** ppEnum) EnumProfiles;
			public function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint32 dwFlags) ReleaseInputProcessor;
			public function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint16 langid, Guid* guidProfile, char16* pchDesc, uint32 cchDesc, char16* pchIconFile, uint32 cchFile, uint32 uIconIndex, HKL hklsubstitute, uint32 dwPreferredLayout, BOOL bEnabledByDefault, uint32 dwFlags) RegisterProfile;
			public function HRESULT(ITfInputProcessorProfileMgr *self, Guid* rclsid, uint16 langid, Guid* guidProfile, uint32 dwFlags) UnregisterProfile;
			public function HRESULT(ITfInputProcessorProfileMgr *self, Guid* catid, TF_INPUTPROCESSORPROFILE* pProfile) GetActiveProfile;
		}
		[CRepr]
		public struct IEnumTfInputProcessorProfiles : IUnknown
		{
			public const new Guid IID = .(0x71c6e74d, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(IEnumTfInputProcessorProfiles *self, IEnumTfInputProcessorProfiles** ppEnum) Clone;
			public function HRESULT(IEnumTfInputProcessorProfiles *self, uint32 ulCount, TF_INPUTPROCESSORPROFILE* pProfile, uint32* pcFetch) Next;
			public function HRESULT(IEnumTfInputProcessorProfiles *self) Reset;
			public function HRESULT(IEnumTfInputProcessorProfiles *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfInputProcessorProfileActivationSink : IUnknown
		{
			public const new Guid IID = .(0x71c6e74e, 0x0f28, 0x11d8, 0xa8, 0x2a, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfInputProcessorProfileActivationSink *self, uint32 dwProfileType, uint16 langid, Guid* clsid, Guid* catid, Guid* guidProfile, HKL hkl, uint32 dwFlags) OnActivated;
		}
		[CRepr]
		public struct ITfKeystrokeMgr : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f0, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfKeystrokeMgr *self, uint32 tid, ITfKeyEventSink* pSink, BOOL fForeground) AdviseKeyEventSink;
			public function HRESULT(ITfKeystrokeMgr *self, uint32 tid) UnadviseKeyEventSink;
			public function HRESULT(ITfKeystrokeMgr *self, Guid* pclsid) GetForeground;
			public function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) TestKeyDown;
			public function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) TestKeyUp;
			public function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) KeyDown;
			public function HRESULT(ITfKeystrokeMgr *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) KeyUp;
			public function HRESULT(ITfKeystrokeMgr *self, ITfContext* pic, TF_PRESERVEDKEY* pprekey, Guid* pguid) GetPreservedKey;
			public function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, TF_PRESERVEDKEY* pprekey, BOOL* pfRegistered) IsPreservedKey;
			public function HRESULT(ITfKeystrokeMgr *self, uint32 tid, Guid* rguid, TF_PRESERVEDKEY* prekey, char16* pchDesc, uint32 cchDesc) PreserveKey;
			public function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, TF_PRESERVEDKEY* pprekey) UnpreserveKey;
			public function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, char16* pchDesc, uint32 cchDesc) SetPreservedKeyDescription;
			public function HRESULT(ITfKeystrokeMgr *self, Guid* rguid, BSTR* pbstrDesc) GetPreservedKeyDescription;
			public function HRESULT(ITfKeystrokeMgr *self, ITfContext* pic, Guid* rguid, BOOL* pfEaten) SimulatePreservedKey;
		}
		[CRepr]
		public struct ITfKeyEventSink : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f5, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfKeyEventSink *self, BOOL fForeground) OnSetFocus;
			public function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyDown;
			public function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnTestKeyUp;
			public function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
			public function HRESULT(ITfKeyEventSink *self, ITfContext* pic, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyUp;
			public function HRESULT(ITfKeyEventSink *self, ITfContext* pic, Guid* rguid, BOOL* pfEaten) OnPreservedKey;
		}
		[CRepr]
		public struct ITfKeyTraceEventSink : IUnknown
		{
			public const new Guid IID = .(0x1cd4c13b, 0x1c36, 0x4191, 0xa7, 0x0a, 0x7f, 0x3e, 0x61, 0x1f, 0x36, 0x7d);
			
			public function HRESULT(ITfKeyTraceEventSink *self, WPARAM wParam, LPARAM lParam) OnKeyTraceDown;
			public function HRESULT(ITfKeyTraceEventSink *self, WPARAM wParam, LPARAM lParam) OnKeyTraceUp;
		}
		[CRepr]
		public struct ITfPreservedKeyNotifySink : IUnknown
		{
			public const new Guid IID = .(0x6f77c993, 0xd2b1, 0x446e, 0x85, 0x3e, 0x59, 0x12, 0xef, 0xc8, 0xa2, 0x86);
			
			public function HRESULT(ITfPreservedKeyNotifySink *self, TF_PRESERVEDKEY* pprekey) OnUpdated;
		}
		[CRepr]
		public struct ITfMessagePump : IUnknown
		{
			public const new Guid IID = .(0x8f1b8ad8, 0x0b6b, 0x4874, 0x90, 0xc5, 0xbd, 0x76, 0x01, 0x1e, 0x8f, 0x7c);
			
			public function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) PeekMessageA;
			public function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) GetMessageA;
			public function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, uint32 wRemoveMsg, BOOL* pfResult) PeekMessageW;
			public function HRESULT(ITfMessagePump *self, MSG* pMsg, HWND hwnd, uint32 wMsgFilterMin, uint32 wMsgFilterMax, BOOL* pfResult) GetMessageW;
		}
		[CRepr]
		public struct ITfThreadFocusSink : IUnknown
		{
			public const new Guid IID = .(0xc0f1db0c, 0x3a20, 0x405c, 0xa3, 0x03, 0x96, 0xb6, 0x01, 0x0a, 0x88, 0x5f);
			
			public function HRESULT(ITfThreadFocusSink *self) OnSetThreadFocus;
			public function HRESULT(ITfThreadFocusSink *self) OnKillThreadFocus;
		}
		[CRepr]
		public struct ITfTextInputProcessor : IUnknown
		{
			public const new Guid IID = .(0xaa80e7f7, 0x2021, 0x11d2, 0x93, 0xe0, 0x00, 0x60, 0xb0, 0x67, 0xb8, 0x6e);
			
			public function HRESULT(ITfTextInputProcessor *self, ITfThreadMgr* ptim, uint32 tid) Activate;
			public function HRESULT(ITfTextInputProcessor *self) Deactivate;
		}
		[CRepr]
		public struct ITfTextInputProcessorEx : ITfTextInputProcessor
		{
			public const new Guid IID = .(0x6e4e2102, 0xf9cd, 0x433d, 0xb4, 0x96, 0x30, 0x3c, 0xe0, 0x3a, 0x65, 0x07);
			
			public function HRESULT(ITfTextInputProcessorEx *self, ITfThreadMgr* ptim, uint32 tid, uint32 dwFlags) ActivateEx;
		}
		[CRepr]
		public struct ITfClientId : IUnknown
		{
			public const new Guid IID = .(0xd60a7b49, 0x1b9f, 0x4be2, 0xb7, 0x02, 0x47, 0xe9, 0xdc, 0x05, 0xde, 0xc3);
			
			public function HRESULT(ITfClientId *self, Guid* rclsid, uint32* ptid) GetClientId;
		}
		[CRepr]
		public struct ITfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x70528852, 0x2f26, 0x4aea, 0x8c, 0x96, 0x21, 0x51, 0x50, 0x57, 0x89, 0x32);
			
			public function HRESULT(ITfDisplayAttributeInfo *self, Guid* pguid) GetGUID;
			public function HRESULT(ITfDisplayAttributeInfo *self, BSTR* pbstrDesc) GetDescription;
			public function HRESULT(ITfDisplayAttributeInfo *self, TF_DISPLAYATTRIBUTE* pda) GetAttributeInfo;
			public function HRESULT(ITfDisplayAttributeInfo *self, TF_DISPLAYATTRIBUTE* pda) SetAttributeInfo;
			public function HRESULT(ITfDisplayAttributeInfo *self) Reset;
		}
		[CRepr]
		public struct IEnumTfDisplayAttributeInfo : IUnknown
		{
			public const new Guid IID = .(0x7cef04d7, 0xcb75, 0x4e80, 0xa7, 0xab, 0x5f, 0x5b, 0xc7, 0xd3, 0x32, 0xde);
			
			public function HRESULT(IEnumTfDisplayAttributeInfo *self, IEnumTfDisplayAttributeInfo** ppEnum) Clone;
			public function HRESULT(IEnumTfDisplayAttributeInfo *self, uint32 ulCount, ITfDisplayAttributeInfo** rgInfo, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfDisplayAttributeInfo *self) Reset;
			public function HRESULT(IEnumTfDisplayAttributeInfo *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfDisplayAttributeProvider : IUnknown
		{
			public const new Guid IID = .(0xfee47777, 0x163c, 0x4769, 0x99, 0x6a, 0x6e, 0x9c, 0x50, 0xad, 0x8f, 0x54);
			
			public function HRESULT(ITfDisplayAttributeProvider *self, IEnumTfDisplayAttributeInfo** ppEnum) EnumDisplayAttributeInfo;
			public function HRESULT(ITfDisplayAttributeProvider *self, Guid* guid, ITfDisplayAttributeInfo** ppInfo) GetDisplayAttributeInfo;
		}
		[CRepr]
		public struct ITfDisplayAttributeMgr : IUnknown
		{
			public const new Guid IID = .(0x8ded7393, 0x5db1, 0x475c, 0x9e, 0x71, 0xa3, 0x91, 0x11, 0xb0, 0xff, 0x67);
			
			public function HRESULT(ITfDisplayAttributeMgr *self) OnUpdateInfo;
			public function HRESULT(ITfDisplayAttributeMgr *self, IEnumTfDisplayAttributeInfo** ppEnum) EnumDisplayAttributeInfo;
			public function HRESULT(ITfDisplayAttributeMgr *self, Guid* guid, ITfDisplayAttributeInfo** ppInfo, Guid* pclsidOwner) GetDisplayAttributeInfo;
		}
		[CRepr]
		public struct ITfDisplayAttributeNotifySink : IUnknown
		{
			public const new Guid IID = .(0xad56f402, 0xe162, 0x4f25, 0x90, 0x8f, 0x7d, 0x57, 0x7c, 0xf9, 0xbd, 0xa9);
			
			public function HRESULT(ITfDisplayAttributeNotifySink *self) OnUpdateInfo;
		}
		[CRepr]
		public struct ITfCategoryMgr : IUnknown
		{
			public const new Guid IID = .(0xc3acefb5, 0xf69d, 0x4905, 0x93, 0x8f, 0xfc, 0xad, 0xcf, 0x4b, 0xe8, 0x30);
			
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rcatid, Guid* rguid) RegisterCategory;
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rcatid, Guid* rguid) UnregisterCategory;
			public function HRESULT(ITfCategoryMgr *self, Guid* rguid, IEnumGUID** ppEnum) EnumCategoriesInItem;
			public function HRESULT(ITfCategoryMgr *self, Guid* rcatid, IEnumGUID** ppEnum) EnumItemsInCategory;
			public function HRESULT(ITfCategoryMgr *self, Guid* rguid, Guid* pcatid, Guid** ppcatidList, uint32 ulCount) FindClosestCategory;
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid, char16* pchDesc, uint32 cch) RegisterGUIDDescription;
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid) UnregisterGUIDDescription;
			public function HRESULT(ITfCategoryMgr *self, Guid* rguid, BSTR* pbstrDesc) GetGUIDDescription;
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid, uint32 dw) RegisterGUIDDWORD;
			public function HRESULT(ITfCategoryMgr *self, Guid* rclsid, Guid* rguid) UnregisterGUIDDWORD;
			public function HRESULT(ITfCategoryMgr *self, Guid* rguid, uint32* pdw) GetGUIDDWORD;
			public function HRESULT(ITfCategoryMgr *self, Guid* rguid, uint32* pguidatom) RegisterGUID;
			public function HRESULT(ITfCategoryMgr *self, uint32 guidatom, Guid* pguid) GetGUID;
			public function HRESULT(ITfCategoryMgr *self, uint32 guidatom, Guid* rguid, BOOL* pfEqual) IsEqualTfGuidAtom;
		}
		[CRepr]
		public struct ITfSource : IUnknown
		{
			public const new Guid IID = .(0x4ea48a35, 0x60ae, 0x446f, 0x8f, 0xd6, 0xe6, 0xa8, 0xd8, 0x24, 0x59, 0xf7);
			
			public function HRESULT(ITfSource *self, Guid* riid, IUnknown* punk, uint32* pdwCookie) AdviseSink;
			public function HRESULT(ITfSource *self, uint32 dwCookie) UnadviseSink;
		}
		[CRepr]
		public struct ITfSourceSingle : IUnknown
		{
			public const new Guid IID = .(0x73131f9c, 0x56a9, 0x49dd, 0xb0, 0xee, 0xd0, 0x46, 0x63, 0x3f, 0x75, 0x28);
			
			public function HRESULT(ITfSourceSingle *self, uint32 tid, Guid* riid, IUnknown* punk) AdviseSingleSink;
			public function HRESULT(ITfSourceSingle *self, uint32 tid, Guid* riid) UnadviseSingleSink;
		}
		[CRepr]
		public struct ITfUIElementMgr : IUnknown
		{
			public const new Guid IID = .(0xea1ea135, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfUIElementMgr *self, ITfUIElement* pElement, BOOL* pbShow, uint32* pdwUIElementId) BeginUIElement;
			public function HRESULT(ITfUIElementMgr *self, uint32 dwUIElementId) UpdateUIElement;
			public function HRESULT(ITfUIElementMgr *self, uint32 dwUIElementId) EndUIElement;
			public function HRESULT(ITfUIElementMgr *self, uint32 dwUIELementId, ITfUIElement** ppElement) GetUIElement;
			public function HRESULT(ITfUIElementMgr *self, IEnumTfUIElements** ppEnum) EnumUIElements;
		}
		[CRepr]
		public struct IEnumTfUIElements : IUnknown
		{
			public const new Guid IID = .(0x887aa91e, 0xacba, 0x4931, 0x84, 0xda, 0x3c, 0x52, 0x08, 0xcf, 0x54, 0x3f);
			
			public function HRESULT(IEnumTfUIElements *self, IEnumTfUIElements** ppEnum) Clone;
			public function HRESULT(IEnumTfUIElements *self, uint32 ulCount, ITfUIElement** ppElement, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfUIElements *self) Reset;
			public function HRESULT(IEnumTfUIElements *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfUIElementSink : IUnknown
		{
			public const new Guid IID = .(0xea1ea136, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId, BOOL* pbShow) BeginUIElement;
			public function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId) UpdateUIElement;
			public function HRESULT(ITfUIElementSink *self, uint32 dwUIElementId) EndUIElement;
		}
		[CRepr]
		public struct ITfUIElement : IUnknown
		{
			public const new Guid IID = .(0xea1ea137, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfUIElement *self, BSTR* pbstrDescription) GetDescription;
			public function HRESULT(ITfUIElement *self, Guid* pguid) GetGUID;
			public function HRESULT(ITfUIElement *self, BOOL bShow) Show;
			public function HRESULT(ITfUIElement *self, BOOL* pbShow) IsShown;
		}
		[CRepr]
		public struct ITfCandidateListUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea138, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfCandidateListUIElement *self, uint32* pdwFlags) GetUpdatedFlags;
			public function HRESULT(ITfCandidateListUIElement *self, ITfDocumentMgr** ppdim) GetDocumentMgr;
			public function HRESULT(ITfCandidateListUIElement *self, uint32* puCount) GetCount;
			public function HRESULT(ITfCandidateListUIElement *self, uint32* puIndex) GetSelection;
			public function HRESULT(ITfCandidateListUIElement *self, uint32 uIndex, BSTR* pstr) GetString;
			public function HRESULT(ITfCandidateListUIElement *self, uint32* pIndex, uint32 uSize, uint32* puPageCnt) GetPageIndex;
			public function HRESULT(ITfCandidateListUIElement *self, uint32* pIndex, uint32 uPageCnt) SetPageIndex;
			public function HRESULT(ITfCandidateListUIElement *self, uint32* puPage) GetCurrentPage;
		}
		[CRepr]
		public struct ITfCandidateListUIElementBehavior : ITfCandidateListUIElement
		{
			public const new Guid IID = .(0x85fad185, 0x58ce, 0x497a, 0x94, 0x60, 0x35, 0x53, 0x66, 0xb6, 0x4b, 0x9a);
			
			public function HRESULT(ITfCandidateListUIElementBehavior *self, uint32 nIndex) SetSelection;
			public function HRESULT(ITfCandidateListUIElementBehavior *self) Finalize;
			public function HRESULT(ITfCandidateListUIElementBehavior *self) Abort;
		}
		[CRepr]
		public struct ITfReadingInformationUIElement : ITfUIElement
		{
			public const new Guid IID = .(0xea1ea139, 0x19df, 0x11d7, 0xa6, 0xd2, 0x00, 0x06, 0x5b, 0x84, 0x43, 0x5c);
			
			public function HRESULT(ITfReadingInformationUIElement *self, uint32* pdwFlags) GetUpdatedFlags;
			public function HRESULT(ITfReadingInformationUIElement *self, ITfContext** ppic) GetContext;
			public function HRESULT(ITfReadingInformationUIElement *self, BSTR* pstr) GetString;
			public function HRESULT(ITfReadingInformationUIElement *self, uint32* pcchMax) GetMaxReadingStringLength;
			public function HRESULT(ITfReadingInformationUIElement *self, uint32* pErrorIndex) GetErrorIndex;
			public function HRESULT(ITfReadingInformationUIElement *self, BOOL* pfVertical) IsVerticalOrderPreferred;
		}
		[CRepr]
		public struct ITfTransitoryExtensionUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x858f956a, 0x972f, 0x42a2, 0xa2, 0xf2, 0x03, 0x21, 0xe1, 0xab, 0xe2, 0x09);
			
			public function HRESULT(ITfTransitoryExtensionUIElement *self, ITfDocumentMgr** ppdim) GetDocumentMgr;
		}
		[CRepr]
		public struct ITfTransitoryExtensionSink : IUnknown
		{
			public const new Guid IID = .(0xa615096f, 0x1c57, 0x4813, 0x8a, 0x15, 0x55, 0xee, 0x6e, 0x5a, 0x83, 0x9c);
			
			public function HRESULT(ITfTransitoryExtensionSink *self, ITfContext* pic, uint32 ecReadOnly, ITfRange* pResultRange, ITfRange* pCompositionRange, BOOL* pfDeleteResultRange) OnTransitoryExtensionUpdated;
		}
		[CRepr]
		public struct ITfToolTipUIElement : ITfUIElement
		{
			public const new Guid IID = .(0x52b18b5c, 0x555d, 0x46b2, 0xb0, 0x0a, 0xfa, 0x68, 0x01, 0x44, 0xfb, 0xdb);
			
			public function HRESULT(ITfToolTipUIElement *self, BSTR* pstr) GetString;
		}
		[CRepr]
		public struct ITfReverseConversionList : IUnknown
		{
			public const new Guid IID = .(0x151d69f0, 0x86f4, 0x4674, 0xb7, 0x21, 0x56, 0x91, 0x1e, 0x79, 0x7f, 0x47);
			
			public function HRESULT(ITfReverseConversionList *self, uint32* puIndex) GetLength;
			public function HRESULT(ITfReverseConversionList *self, uint32 uIndex, BSTR* pbstr) GetString;
		}
		[CRepr]
		public struct ITfReverseConversion : IUnknown
		{
			public const new Guid IID = .(0xa415e162, 0x157d, 0x417d, 0x8a, 0x8c, 0x0a, 0xb2, 0x6c, 0x7d, 0x27, 0x81);
			
			public function HRESULT(ITfReverseConversion *self, PWSTR lpstr, ITfReverseConversionList** ppList) DoReverseConversion;
		}
		[CRepr]
		public struct ITfReverseConversionMgr : IUnknown
		{
			public const new Guid IID = .(0xb643c236, 0xc493, 0x41b6, 0xab, 0xb3, 0x69, 0x24, 0x12, 0x77, 0x5c, 0xc4);
			
			public function HRESULT(ITfReverseConversionMgr *self, uint16 langid, Guid* guidProfile, uint32 dwflag, ITfReverseConversion** ppReverseConversion) GetReverseConversion;
		}
		[CRepr]
		public struct ITfCandidateString : IUnknown
		{
			public const new Guid IID = .(0x581f317e, 0xfd9d, 0x443f, 0xb9, 0x72, 0xed, 0x00, 0x46, 0x7c, 0x5d, 0x40);
			
			public function HRESULT(ITfCandidateString *self, BSTR* pbstr) GetString;
			public function HRESULT(ITfCandidateString *self, uint32* pnIndex) GetIndex;
		}
		[CRepr]
		public struct IEnumTfCandidates : IUnknown
		{
			public const new Guid IID = .(0xdefb1926, 0x6c80, 0x4ce8, 0x87, 0xd4, 0xd6, 0xb7, 0x2b, 0x81, 0x2b, 0xde);
			
			public function HRESULT(IEnumTfCandidates *self, IEnumTfCandidates** ppEnum) Clone;
			public function HRESULT(IEnumTfCandidates *self, uint32 ulCount, ITfCandidateString** ppCand, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfCandidates *self) Reset;
			public function HRESULT(IEnumTfCandidates *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfCandidateList : IUnknown
		{
			public const new Guid IID = .(0xa3ad50fb, 0x9bdb, 0x49e3, 0xa8, 0x43, 0x6c, 0x76, 0x52, 0x0f, 0xbf, 0x5d);
			
			public function HRESULT(ITfCandidateList *self, IEnumTfCandidates** ppEnum) EnumCandidates;
			public function HRESULT(ITfCandidateList *self, uint32 nIndex, ITfCandidateString** ppCand) GetCandidate;
			public function HRESULT(ITfCandidateList *self, uint32* pnCnt) GetCandidateNum;
			public function HRESULT(ITfCandidateList *self, uint32 nIndex, TfCandidateResult imcr) SetResult;
		}
		[CRepr]
		public struct ITfFnReconversion : ITfFunction
		{
			public const new Guid IID = .(0x4cea93c0, 0x0a58, 0x11d3, 0x8d, 0xf0, 0x00, 0x10, 0x5a, 0x27, 0x99, 0xb5);
			
			public function HRESULT(ITfFnReconversion *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfConvertable) QueryRange;
			public function HRESULT(ITfFnReconversion *self, ITfRange* pRange, ITfCandidateList** ppCandList) GetReconversion;
			public function HRESULT(ITfFnReconversion *self, ITfRange* pRange) Reconvert;
		}
		[CRepr]
		public struct ITfFnPlayBack : ITfFunction
		{
			public const new Guid IID = .(0xa3a416a4, 0x0f64, 0x11d3, 0xb5, 0xb7, 0x00, 0xc0, 0x4f, 0xc3, 0x24, 0xa1);
			
			public function HRESULT(ITfFnPlayBack *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfPlayable) QueryRange;
			public function HRESULT(ITfFnPlayBack *self, ITfRange* pRange) Play;
		}
		[CRepr]
		public struct ITfFnLangProfileUtil : ITfFunction
		{
			public const new Guid IID = .(0xa87a8574, 0xa6c1, 0x4e15, 0x99, 0xf0, 0x3d, 0x39, 0x65, 0xf5, 0x48, 0xeb);
			
			public function HRESULT(ITfFnLangProfileUtil *self) RegisterActiveProfiles;
			public function HRESULT(ITfFnLangProfileUtil *self, uint16 langid, BOOL* pfAvailable) IsProfileAvailableForLang;
		}
		[CRepr]
		public struct ITfFnConfigure : ITfFunction
		{
			public const new Guid IID = .(0x88f567c6, 0x1757, 0x49f8, 0xa1, 0xb2, 0x89, 0x23, 0x4c, 0x1e, 0xef, 0xf9);
			
			public function HRESULT(ITfFnConfigure *self, HWND hwndParent, uint16 langid, Guid* rguidProfile) Show;
		}
		[CRepr]
		public struct ITfFnConfigureRegisterWord : ITfFunction
		{
			public const new Guid IID = .(0xbb95808a, 0x6d8f, 0x4bca, 0x84, 0x00, 0x53, 0x90, 0xb5, 0x86, 0xae, 0xdf);
			
			public function HRESULT(ITfFnConfigureRegisterWord *self, HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) Show;
		}
		[CRepr]
		public struct ITfFnConfigureRegisterEudc : ITfFunction
		{
			public const new Guid IID = .(0xb5e26ff5, 0xd7ad, 0x4304, 0x91, 0x3f, 0x21, 0xa2, 0xed, 0x95, 0xa1, 0xb0);
			
			public function HRESULT(ITfFnConfigureRegisterEudc *self, HWND hwndParent, uint16 langid, Guid* rguidProfile, BSTR bstrRegistered) Show;
		}
		[CRepr]
		public struct ITfFnShowHelp : ITfFunction
		{
			public const new Guid IID = .(0x5ab1d30c, 0x094d, 0x4c29, 0x8e, 0xa5, 0x0b, 0xf5, 0x9b, 0xe8, 0x7b, 0xf3);
			
			public function HRESULT(ITfFnShowHelp *self, HWND hwndParent) Show;
		}
		[CRepr]
		public struct ITfFnBalloon : IUnknown
		{
			public const new Guid IID = .(0x3bab89e4, 0x5fbe, 0x45f4, 0xa5, 0xbc, 0xdc, 0xa3, 0x6a, 0xd2, 0x25, 0xa8);
			
			public function HRESULT(ITfFnBalloon *self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
		}
		[CRepr]
		public struct ITfFnGetSAPIObject : ITfFunction
		{
			public const new Guid IID = .(0x5c0ab7ea, 0x167d, 0x4f59, 0xbf, 0xb5, 0x46, 0x93, 0x75, 0x5e, 0x90, 0xca);
			
			public function HRESULT(ITfFnGetSAPIObject *self, TfSapiObject sObj, IUnknown** ppunk) Get;
		}
		[CRepr]
		public struct ITfFnPropertyUIStatus : ITfFunction
		{
			public const new Guid IID = .(0x2338ac6e, 0x2b9d, 0x44c0, 0xa7, 0x5e, 0xee, 0x64, 0xf2, 0x56, 0xb3, 0xbd);
			
			public function HRESULT(ITfFnPropertyUIStatus *self, Guid* refguidProp, uint32* pdw) GetStatus;
			public function HRESULT(ITfFnPropertyUIStatus *self, Guid* refguidProp, uint32 dw) SetStatus;
		}
		[CRepr]
		public struct IEnumSpeechCommands : IUnknown
		{
			public const new Guid IID = .(0x8c5dac4f, 0x083c, 0x4b85, 0xa4, 0xc9, 0x71, 0x74, 0x60, 0x48, 0xad, 0xca);
			
			public function HRESULT(IEnumSpeechCommands *self, IEnumSpeechCommands** ppEnum) Clone;
			public function HRESULT(IEnumSpeechCommands *self, uint32 ulCount, uint16** pSpCmds, uint32* pcFetched) Next;
			public function HRESULT(IEnumSpeechCommands *self) Reset;
			public function HRESULT(IEnumSpeechCommands *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ISpeechCommandProvider : IUnknown
		{
			public const new Guid IID = .(0x38e09d4c, 0x586d, 0x435a, 0xb5, 0x92, 0xc8, 0xa8, 0x66, 0x91, 0xde, 0xc6);
			
			public function HRESULT(ISpeechCommandProvider *self, uint16 langid, IEnumSpeechCommands** ppEnum) EnumSpeechCommands;
			public function HRESULT(ISpeechCommandProvider *self, char16* pszCommand, uint32 cch, uint16 langid) ProcessCommand;
		}
		[CRepr]
		public struct ITfFnCustomSpeechCommand : ITfFunction
		{
			public const new Guid IID = .(0xfca6c349, 0xa12f, 0x43a3, 0x8d, 0xd6, 0x5a, 0x5a, 0x42, 0x82, 0x57, 0x7b);
			
			public function HRESULT(ITfFnCustomSpeechCommand *self, IUnknown* pspcmdProvider) SetSpeechCommandProvider;
		}
		[CRepr]
		public struct ITfFnLMProcessor : ITfFunction
		{
			public const new Guid IID = .(0x7afbf8e7, 0xac4b, 0x4082, 0xb0, 0x58, 0x89, 0x08, 0x99, 0xd3, 0xa0, 0x10);
			
			public function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange, ITfRange** ppNewRange, BOOL* pfAccepted) QueryRange;
			public function HRESULT(ITfFnLMProcessor *self, uint16 langid, BOOL* pfAccepted) QueryLangID;
			public function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange, ITfCandidateList** ppCandList) GetReconversion;
			public function HRESULT(ITfFnLMProcessor *self, ITfRange* pRange) Reconvert;
			public function HRESULT(ITfFnLMProcessor *self, BOOL fUp, WPARAM vKey, LPARAM lparamKeydata, BOOL* pfInterested) QueryKey;
			public function HRESULT(ITfFnLMProcessor *self, BOOL fUp, WPARAM vKey, LPARAM lparamKeyData) InvokeKey;
			public function HRESULT(ITfFnLMProcessor *self, ITfContext* pic, Guid* refguidFunc) InvokeFunc;
		}
		[CRepr]
		public struct ITfFnLMInternal : ITfFnLMProcessor
		{
			public const new Guid IID = .(0x04b825b1, 0xac9a, 0x4f7b, 0xb5, 0xad, 0xc7, 0x16, 0x8f, 0x1e, 0xe4, 0x45);
			
			public function HRESULT(ITfFnLMInternal *self, ITfRange* pRange) ProcessLattice;
		}
		[CRepr]
		public struct IEnumTfLatticeElements : IUnknown
		{
			public const new Guid IID = .(0x56988052, 0x47da, 0x4a05, 0x91, 0x1a, 0xe3, 0xd9, 0x41, 0xf1, 0x71, 0x45);
			
			public function HRESULT(IEnumTfLatticeElements *self, IEnumTfLatticeElements** ppEnum) Clone;
			public function HRESULT(IEnumTfLatticeElements *self, uint32 ulCount, TF_LMLATTELEMENT* rgsElements, uint32* pcFetched) Next;
			public function HRESULT(IEnumTfLatticeElements *self) Reset;
			public function HRESULT(IEnumTfLatticeElements *self, uint32 ulCount) Skip;
		}
		[CRepr]
		public struct ITfLMLattice : IUnknown
		{
			public const new Guid IID = .(0xd4236675, 0xa5bf, 0x4570, 0x9d, 0x42, 0x5d, 0x6d, 0x7b, 0x02, 0xd5, 0x9b);
			
			public function HRESULT(ITfLMLattice *self, Guid* rguidType, BOOL* pfSupported) QueryType;
			public function HRESULT(ITfLMLattice *self, uint32 dwFrameStart, Guid* rguidType, IEnumTfLatticeElements** ppEnum) EnumLatticeElements;
		}
		[CRepr]
		public struct ITfFnAdviseText : ITfFunction
		{
			public const new Guid IID = .(0x3527268b, 0x7d53, 0x4dd9, 0x92, 0xb7, 0x72, 0x96, 0xae, 0x46, 0x12, 0x49);
			
			public function HRESULT(ITfFnAdviseText *self, ITfRange* pRange, char16* pchText, int32 cch) OnTextUpdate;
			public function HRESULT(ITfFnAdviseText *self, ITfRange* pRange, ITfLMLattice* pLattice) OnLatticeUpdate;
		}
		[CRepr]
		public struct ITfFnSearchCandidateProvider : ITfFunction
		{
			public const new Guid IID = .(0x87a2ad8f, 0xf27b, 0x4920, 0x85, 0x01, 0x67, 0x60, 0x22, 0x80, 0x17, 0x5d);
			
			public function HRESULT(ITfFnSearchCandidateProvider *self, BSTR bstrQuery, BSTR bstrApplicationId, ITfCandidateList** pplist) GetSearchCandidates;
			public function HRESULT(ITfFnSearchCandidateProvider *self, BSTR bstrQuery, BSTR bstrApplicationID, BSTR bstrResult) SetResult;
		}
		[CRepr]
		public struct ITfIntegratableCandidateListUIElement : IUnknown
		{
			public const new Guid IID = .(0xc7a6f54f, 0xb180, 0x416f, 0xb2, 0xbf, 0x7b, 0xf2, 0xe4, 0x68, 0x3d, 0x7b);
			
			public function HRESULT(ITfIntegratableCandidateListUIElement *self, Guid guidIntegrationStyle) SetIntegrationStyle;
			public function HRESULT(ITfIntegratableCandidateListUIElement *self, TfIntegratableCandidateListSelectionStyle* ptfSelectionStyle) GetSelectionStyle;
			public function HRESULT(ITfIntegratableCandidateListUIElement *self, WPARAM wParam, LPARAM lParam, BOOL* pfEaten) OnKeyDown;
			public function HRESULT(ITfIntegratableCandidateListUIElement *self, BOOL* pfShow) ShowCandidateNumbers;
			public function HRESULT(ITfIntegratableCandidateListUIElement *self) FinalizeExactCompositionString;
		}
		[CRepr]
		public struct ITfFnGetPreferredTouchKeyboardLayout : ITfFunction
		{
			public const new Guid IID = .(0x5f309a41, 0x590a, 0x4acc, 0xa9, 0x7f, 0xd8, 0xef, 0xff, 0x13, 0xfd, 0xfc);
			
			public function HRESULT(ITfFnGetPreferredTouchKeyboardLayout *self, TKBLayoutType* pTKBLayoutType, uint16* pwPreferredLayoutId) GetLayout;
		}
		[CRepr]
		public struct ITfFnGetLinguisticAlternates : ITfFunction
		{
			public const new Guid IID = .(0xea163ce2, 0x7a65, 0x4506, 0x82, 0xa3, 0xc5, 0x28, 0x21, 0x5d, 0xa6, 0x4e);
			
			public function HRESULT(ITfFnGetLinguisticAlternates *self, ITfRange* pRange, ITfCandidateList** ppCandidateList) GetAlternates;
		}
		[CRepr]
		public struct IUIManagerEventSink : IUnknown
		{
			public const new Guid IID = .(0xcd91d690, 0xa7e8, 0x4265, 0x9b, 0x38, 0x8b, 0xb3, 0xbb, 0xab, 0xa7, 0xde);
			
			public function HRESULT(IUIManagerEventSink *self, RECT* prcBounds) OnWindowOpening;
			public function HRESULT(IUIManagerEventSink *self, RECT* prcBounds) OnWindowOpened;
			public function HRESULT(IUIManagerEventSink *self, RECT* prcUpdatedBounds) OnWindowUpdating;
			public function HRESULT(IUIManagerEventSink *self, RECT* prcUpdatedBounds) OnWindowUpdated;
			public function HRESULT(IUIManagerEventSink *self) OnWindowClosing;
			public function HRESULT(IUIManagerEventSink *self) OnWindowClosed;
		}
		[CRepr]
		public struct ITfInputScope : IUnknown
		{
			public const new Guid IID = .(0xfde1eaee, 0x6924, 0x4cdf, 0x91, 0xe7, 0xda, 0x38, 0xcf, 0xf5, 0x55, 0x9d);
			
			public function HRESULT(ITfInputScope *self, InputScope** pprgInputScopes, uint32* pcCount) GetInputScopes;
			public function HRESULT(ITfInputScope *self, BSTR** ppbstrPhrases, uint32* pcCount) GetPhrase;
			public function HRESULT(ITfInputScope *self, BSTR* pbstrRegExp) GetRegularExpression;
			public function HRESULT(ITfInputScope *self, BSTR* pbstrSRGS) GetSRGS;
			public function HRESULT(ITfInputScope *self, BSTR* pbstrXML) GetXML;
		}
		[CRepr]
		public struct ITfInputScope2 : ITfInputScope
		{
			public const new Guid IID = .(0x5731eaa0, 0x6bc2, 0x4681, 0xa5, 0x32, 0x92, 0xfb, 0xb7, 0x4d, 0x7c, 0x41);
			
			public function HRESULT(ITfInputScope2 *self, IEnumString** ppEnumString) EnumWordList;
		}
		[CRepr]
		public struct ITfMSAAControl : IUnknown
		{
			public const new Guid IID = .(0xb5f8fb3b, 0x393f, 0x4f7c, 0x84, 0xcb, 0x50, 0x49, 0x24, 0xc2, 0x70, 0x5a);
			
			public function HRESULT(ITfMSAAControl *self) SystemEnableMSAA;
			public function HRESULT(ITfMSAAControl *self) SystemDisableMSAA;
		}
		[CRepr]
		public struct IInternalDocWrap : IUnknown
		{
			public const new Guid IID = .(0xe1aa6466, 0x9db4, 0x40ba, 0xbe, 0x03, 0x77, 0xc3, 0x8e, 0x8e, 0x60, 0xb2);
			
			public function HRESULT(IInternalDocWrap *self) NotifyRevoke;
		}
		[CRepr]
		public struct ITextStoreACPEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc2, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public function HRESULT(ITextStoreACPEx *self, int32 acpStart, int32 acpEnd, RECT rc, uint32 dwPosition) ScrollToRect;
		}
		[CRepr]
		public struct ITextStoreAnchorEx : IUnknown
		{
			public const new Guid IID = .(0xa2de3bc1, 0x3d8e, 0x11d3, 0x81, 0xa9, 0xf7, 0x53, 0xfb, 0xe6, 0x1a, 0x00);
			
			public function HRESULT(ITextStoreAnchorEx *self, IAnchor* pStart, IAnchor* pEnd, RECT rc, uint32 dwPosition) ScrollToRect;
		}
		[CRepr]
		public struct ITextStoreACPSinkEx : ITextStoreACPSink
		{
			public const new Guid IID = .(0x2bdf9464, 0x41e2, 0x43e3, 0x95, 0x0c, 0xa6, 0x86, 0x5b, 0xa2, 0x5c, 0xd4);
			
			public function HRESULT(ITextStoreACPSinkEx *self) OnDisconnect;
		}
		[CRepr]
		public struct ITextStoreSinkAnchorEx : ITextStoreAnchorSink
		{
			public const new Guid IID = .(0x25642426, 0x028d, 0x4474, 0x97, 0x7b, 0x11, 0x1b, 0xb1, 0x14, 0xfe, 0x3e);
			
			public function HRESULT(ITextStoreSinkAnchorEx *self) OnDisconnect;
		}
		[CRepr]
		public struct IAccDictionary : IUnknown
		{
			public const new Guid IID = .(0x1dc4cb5f, 0xd737, 0x474d, 0xad, 0xe9, 0x5c, 0xcf, 0xc9, 0xbc, 0x1c, 0xc9);
			
			public function HRESULT(IAccDictionary *self, Guid* Term, uint32 lcid, BSTR* pResult, uint32* plcid) GetLocalizedString;
			public function HRESULT(IAccDictionary *self, Guid* Term, Guid* pParentTerm) GetParentTerm;
			public function HRESULT(IAccDictionary *self, Guid* Term, BSTR* pResult) GetMnemonicString;
			public function HRESULT(IAccDictionary *self, BSTR bstrMnemonic, Guid* pTerm) LookupMnemonicTerm;
			public function HRESULT(IAccDictionary *self, Guid* Term, uint32 lcid, VARIANT varValue, BSTR* pbstrResult, uint32* plcid) ConvertValueToString;
		}
		[CRepr]
		public struct IVersionInfo : IUnknown
		{
			public const new Guid IID = .(0x401518ec, 0xdb00, 0x4611, 0x9b, 0x29, 0x2a, 0x0e, 0x4b, 0x9a, 0xfa, 0x85);
			
			public function HRESULT(IVersionInfo *self, uint32 ulSub, uint32* ulCount) GetSubcomponentCount;
			public function HRESULT(IVersionInfo *self, uint32 ulSub, Guid* implid) GetImplementationID;
			public function HRESULT(IVersionInfo *self, uint32 ulSub, uint32* pdwMajor, uint32* pdwMinor) GetBuildVersion;
			public function HRESULT(IVersionInfo *self, uint32 ulSub, BSTR* pImplStr) GetComponentDescription;
			public function HRESULT(IVersionInfo *self, uint32 ulSub, BSTR* pImplStr) GetInstanceDescription;
		}
		[CRepr]
		public struct ICoCreateLocally : IUnknown
		{
			public const new Guid IID = .(0x03de00aa, 0xf272, 0x41e3, 0x99, 0xcb, 0x03, 0xc5, 0xe8, 0x11, 0x4e, 0xa0);
			
			public function HRESULT(ICoCreateLocally *self, Guid* rclsid, uint32 dwClsContext, Guid* riid, IUnknown** punk, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) CoCreateLocally;
		}
		[CRepr]
		public struct ICoCreatedLocally : IUnknown
		{
			public const new Guid IID = .(0x0a53eb6c, 0x1908, 0x4742, 0x8c, 0xff, 0x2c, 0xee, 0x2e, 0x93, 0xf9, 0x4c);
			
			public function HRESULT(ICoCreatedLocally *self, IUnknown* punkLocalObject, Guid* riidParam, IUnknown* punkParam, VARIANT varParam) LocalInit;
		}
		[CRepr]
		public struct IAccStore : IUnknown
		{
			public const new Guid IID = .(0xe2cd4a63, 0x2b72, 0x4d48, 0xb7, 0x39, 0x95, 0xe4, 0x76, 0x51, 0x95, 0xba);
			
			public function HRESULT(IAccStore *self, Guid* riid, IUnknown* punk) Register;
			public function HRESULT(IAccStore *self, IUnknown* punk) Unregister;
			public function HRESULT(IAccStore *self, IEnumUnknown** enumUnknown) GetDocuments;
			public function HRESULT(IAccStore *self, HWND hWnd, Guid* riid, IUnknown** ppunk) LookupByHWND;
			public function HRESULT(IAccStore *self, POINT pt, Guid* riid, IUnknown** ppunk) LookupByPoint;
			public function HRESULT(IAccStore *self, IUnknown* punk) OnDocumentFocus;
			public function HRESULT(IAccStore *self, Guid* riid, IUnknown** ppunk) GetFocused;
		}
		[CRepr]
		public struct IAccServerDocMgr : IUnknown
		{
			public const new Guid IID = .(0xad7c73cf, 0x6dd5, 0x4855, 0xab, 0xc2, 0xb0, 0x4b, 0xad, 0x5b, 0x91, 0x53);
			
			public function HRESULT(IAccServerDocMgr *self, Guid* riid, IUnknown* punk) NewDocument;
			public function HRESULT(IAccServerDocMgr *self, IUnknown* punk) RevokeDocument;
			public function HRESULT(IAccServerDocMgr *self, IUnknown* punk) OnDocumentFocus;
		}
		[CRepr]
		public struct IAccClientDocMgr : IUnknown
		{
			public const new Guid IID = .(0x4c896039, 0x7b6d, 0x49e6, 0xa8, 0xc1, 0x45, 0x11, 0x6a, 0x98, 0x29, 0x2b);
			
			public function HRESULT(IAccClientDocMgr *self, IEnumUnknown** enumUnknown) GetDocuments;
			public function HRESULT(IAccClientDocMgr *self, HWND hWnd, Guid* riid, IUnknown** ppunk) LookupByHWND;
			public function HRESULT(IAccClientDocMgr *self, POINT pt, Guid* riid, IUnknown** ppunk) LookupByPoint;
			public function HRESULT(IAccClientDocMgr *self, Guid* riid, IUnknown** ppunk) GetFocused;
		}
		[CRepr]
		public struct IDocWrap : IUnknown
		{
			public const new Guid IID = .(0xdcd285fe, 0x0be0, 0x43bd, 0x99, 0xc9, 0xaa, 0xae, 0xc5, 0x13, 0xc5, 0x55);
			
			public function HRESULT(IDocWrap *self, Guid* riid, IUnknown* punk) SetDoc;
			public function HRESULT(IDocWrap *self, Guid* riid, IUnknown** ppunk) GetWrappedDoc;
		}
		[CRepr]
		public struct IClonableWrapper : IUnknown
		{
			public const new Guid IID = .(0xb33e75ff, 0xe84c, 0x4dca, 0xa2, 0x5c, 0x33, 0xb8, 0xdc, 0x00, 0x33, 0x74);
			
			public function HRESULT(IClonableWrapper *self, Guid* riid, void** ppv) CloneNewWrapper;
		}
		[CRepr]
		public struct ITfSpeechUIServer : IUnknown
		{
			public const new Guid IID = .(0x90e9a944, 0x9244, 0x489f, 0xa7, 0x8f, 0xde, 0x67, 0xaf, 0xc0, 0x13, 0xa7);
			
			public function HRESULT(ITfSpeechUIServer *self) Initialize;
			public function HRESULT(ITfSpeechUIServer *self, BOOL fShow) ShowUI;
			public function HRESULT(ITfSpeechUIServer *self, TfLBBalloonStyle style, char16* pch, uint32 cch) UpdateBalloon;
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
