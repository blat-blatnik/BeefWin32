using System;

// namespace Devices.PortableDevices
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const PROPERTYKEY DEVPKEY_MTPBTH_IsConnected = .(.(0xea1237fa, 0x589d, 0x4472, 0x84, 0xe4, 0x0a, 0xbe, 0x36, 0xfd, 0x62, 0xef), 2);
		public const Guid GUID_DEVINTERFACE_WPD = .(0x6ac27878, 0xa6fa, 0x4155, 0xba, 0x85, 0xf9, 0x8f, 0x49, 0x1d, 0x4f, 0x33);
		public const Guid GUID_DEVINTERFACE_WPD_PRIVATE = .(0xba0c718f, 0x4ded, 0x49b7, 0xbd, 0xd3, 0xfa, 0xbe, 0x28, 0x66, 0x12, 0x11);
		public const Guid GUID_DEVINTERFACE_WPD_SERVICE = .(0x9ef44f80, 0x3d64, 0x4246, 0xa6, 0xaa, 0x20, 0x6f, 0x32, 0x8d, 0x1e, 0xdc);
		public const uint32 WPD_CONTROL_FUNCTION_GENERIC_MESSAGE = 66;
		public const uint32 IOCTL_WPD_MESSAGE_READWRITE_ACCESS = 4243720;
		public const uint32 IOCTL_WPD_MESSAGE_READ_ACCESS = 4210952;
		public const uint32 FACILITY_WPD = 42;
		public const HRESULT E_WPD_DEVICE_ALREADY_OPENED = -2144731135;
		public const HRESULT E_WPD_DEVICE_NOT_OPEN = -2144731134;
		public const HRESULT E_WPD_OBJECT_ALREADY_ATTACHED_TO_DEVICE = -2144731133;
		public const HRESULT E_WPD_OBJECT_NOT_ATTACHED_TO_DEVICE = -2144731132;
		public const HRESULT E_WPD_OBJECT_NOT_COMMITED = -2144731131;
		public const HRESULT E_WPD_DEVICE_IS_HUNG = -2144731130;
		public const HRESULT E_WPD_SMS_INVALID_RECIPIENT = -2144731036;
		public const HRESULT E_WPD_SMS_INVALID_MESSAGE_BODY = -2144731035;
		public const HRESULT E_WPD_SMS_SERVICE_UNAVAILABLE = -2144731034;
		public const HRESULT E_WPD_SERVICE_ALREADY_OPENED = -2144730936;
		public const HRESULT E_WPD_SERVICE_NOT_OPEN = -2144730935;
		public const HRESULT E_WPD_OBJECT_ALREADY_ATTACHED_TO_SERVICE = -2144730934;
		public const HRESULT E_WPD_OBJECT_NOT_ATTACHED_TO_SERVICE = -2144730933;
		public const HRESULT E_WPD_SERVICE_BAD_PARAMETER_ORDER = -2144730932;
		public const Guid WPD_EVENT_NOTIFICATION = .(0x2ba2e40a, 0x6b4c, 0x4295, 0xbb, 0x43, 0x26, 0x32, 0x2b, 0x99, 0xae, 0xb2);
		public const Guid WPD_EVENT_OBJECT_ADDED = .(0xa726da95, 0xe207, 0x4b02, 0x8d, 0x44, 0xbe, 0xf2, 0xe8, 0x6c, 0xbf, 0xfc);
		public const Guid WPD_EVENT_OBJECT_REMOVED = .(0xbe82ab88, 0xa52c, 0x4823, 0x96, 0xe5, 0xd0, 0x27, 0x26, 0x71, 0xfc, 0x38);
		public const Guid WPD_EVENT_OBJECT_UPDATED = .(0x1445a759, 0x2e01, 0x485d, 0x9f, 0x27, 0xff, 0x07, 0xda, 0xe6, 0x97, 0xab);
		public const Guid WPD_EVENT_DEVICE_RESET = .(0x7755cf53, 0xc1ed, 0x44f3, 0xb5, 0xa2, 0x45, 0x1e, 0x2c, 0x37, 0x6b, 0x27);
		public const Guid WPD_EVENT_DEVICE_CAPABILITIES_UPDATED = .(0x36885aa1, 0xcd54, 0x4daa, 0xb3, 0xd0, 0xaf, 0xb3, 0xe0, 0x3f, 0x59, 0x99);
		public const Guid WPD_EVENT_STORAGE_FORMAT = .(0x3782616b, 0x22bc, 0x4474, 0xa2, 0x51, 0x30, 0x70, 0xf8, 0xd3, 0x88, 0x57);
		public const Guid WPD_EVENT_OBJECT_TRANSFER_REQUESTED = .(0x8d16a0a1, 0xf2c6, 0x41da, 0x8f, 0x19, 0x5e, 0x53, 0x72, 0x1a, 0xdb, 0xf2);
		public const Guid WPD_EVENT_DEVICE_REMOVED = .(0xe4cbca1b, 0x6918, 0x48b9, 0x85, 0xee, 0x02, 0xbe, 0x7c, 0x85, 0x0a, 0xf9);
		public const Guid WPD_EVENT_SERVICE_METHOD_COMPLETE = .(0x8a33f5f8, 0x0acc, 0x4d9b, 0x9c, 0xc4, 0x11, 0x2d, 0x35, 0x3b, 0x86, 0xca);
		public const Guid WPD_CONTENT_TYPE_FUNCTIONAL_OBJECT = .(0x99ed0160, 0x17ff, 0x4c44, 0x9d, 0x98, 0x1d, 0x7a, 0x6f, 0x94, 0x19, 0x21);
		public const Guid WPD_CONTENT_TYPE_FOLDER = .(0x27e2e392, 0xa111, 0x48e0, 0xab, 0x0c, 0xe1, 0x77, 0x05, 0xa0, 0x5f, 0x85);
		public const Guid WPD_CONTENT_TYPE_IMAGE = .(0xef2107d5, 0xa52a, 0x4243, 0xa2, 0x6b, 0x62, 0xd4, 0x17, 0x6d, 0x76, 0x03);
		public const Guid WPD_CONTENT_TYPE_DOCUMENT = .(0x680adf52, 0x950a, 0x4041, 0x9b, 0x41, 0x65, 0xe3, 0x93, 0x64, 0x81, 0x55);
		public const Guid WPD_CONTENT_TYPE_CONTACT = .(0xeaba8313, 0x4525, 0x4707, 0x9f, 0x0e, 0x87, 0xc6, 0x80, 0x8e, 0x94, 0x35);
		public const Guid WPD_CONTENT_TYPE_CONTACT_GROUP = .(0x346b8932, 0x4c36, 0x40d8, 0x94, 0x15, 0x18, 0x28, 0x29, 0x1f, 0x9d, 0xe9);
		public const Guid WPD_CONTENT_TYPE_AUDIO = .(0x4ad2c85e, 0x5e2d, 0x45e5, 0x88, 0x64, 0x4f, 0x22, 0x9e, 0x3c, 0x6c, 0xf0);
		public const Guid WPD_CONTENT_TYPE_VIDEO = .(0x9261b03c, 0x3d78, 0x4519, 0x85, 0xe3, 0x02, 0xc5, 0xe1, 0xf5, 0x0b, 0xb9);
		public const Guid WPD_CONTENT_TYPE_TELEVISION = .(0x60a169cf, 0xf2ae, 0x4e21, 0x93, 0x75, 0x96, 0x77, 0xf1, 0x1c, 0x1c, 0x6e);
		public const Guid WPD_CONTENT_TYPE_PLAYLIST = .(0x1a33f7e4, 0xaf13, 0x48f5, 0x99, 0x4e, 0x77, 0x36, 0x9d, 0xfe, 0x04, 0xa3);
		public const Guid WPD_CONTENT_TYPE_MIXED_CONTENT_ALBUM = .(0x00f0c3ac, 0xa593, 0x49ac, 0x92, 0x19, 0x24, 0xab, 0xca, 0x5a, 0x25, 0x63);
		public const Guid WPD_CONTENT_TYPE_AUDIO_ALBUM = .(0xaa18737e, 0x5009, 0x48fa, 0xae, 0x21, 0x85, 0xf2, 0x43, 0x83, 0xb4, 0xe6);
		public const Guid WPD_CONTENT_TYPE_IMAGE_ALBUM = .(0x75793148, 0x15f5, 0x4a30, 0xa8, 0x13, 0x54, 0xed, 0x8a, 0x37, 0xe2, 0x26);
		public const Guid WPD_CONTENT_TYPE_VIDEO_ALBUM = .(0x012b0db7, 0xd4c1, 0x45d6, 0xb0, 0x81, 0x94, 0xb8, 0x77, 0x79, 0x61, 0x4f);
		public const Guid WPD_CONTENT_TYPE_MEMO = .(0x9cd20ecf, 0x3b50, 0x414f, 0xa6, 0x41, 0xe4, 0x73, 0xff, 0xe4, 0x57, 0x51);
		public const Guid WPD_CONTENT_TYPE_EMAIL = .(0x8038044a, 0x7e51, 0x4f8f, 0x88, 0x3d, 0x1d, 0x06, 0x23, 0xd1, 0x45, 0x33);
		public const Guid WPD_CONTENT_TYPE_APPOINTMENT = .(0x0fed060e, 0x8793, 0x4b1e, 0x90, 0xc9, 0x48, 0xac, 0x38, 0x9a, 0xc6, 0x31);
		public const Guid WPD_CONTENT_TYPE_TASK = .(0x63252f2c, 0x887f, 0x4cb6, 0xb1, 0xac, 0xd2, 0x98, 0x55, 0xdc, 0xef, 0x6c);
		public const Guid WPD_CONTENT_TYPE_PROGRAM = .(0xd269f96a, 0x247c, 0x4bff, 0x98, 0xfb, 0x97, 0xf3, 0xc4, 0x92, 0x20, 0xe6);
		public const Guid WPD_CONTENT_TYPE_GENERIC_FILE = .(0x0085e0a6, 0x8d34, 0x45d7, 0xbc, 0x5c, 0x44, 0x7e, 0x59, 0xc7, 0x3d, 0x48);
		public const Guid WPD_CONTENT_TYPE_CALENDAR = .(0xa1fd5967, 0x6023, 0x49a0, 0x9d, 0xf1, 0xf8, 0x06, 0x0b, 0xe7, 0x51, 0xb0);
		public const Guid WPD_CONTENT_TYPE_GENERIC_MESSAGE = .(0xe80eaaf8, 0xb2db, 0x4133, 0xb6, 0x7e, 0x1b, 0xef, 0x4b, 0x4a, 0x6e, 0x5f);
		public const Guid WPD_CONTENT_TYPE_NETWORK_ASSOCIATION = .(0x031da7ee, 0x18c8, 0x4205, 0x84, 0x7e, 0x89, 0xa1, 0x12, 0x61, 0xd0, 0xf3);
		public const Guid WPD_CONTENT_TYPE_CERTIFICATE = .(0xdc3876e8, 0xa948, 0x4060, 0x90, 0x50, 0xcb, 0xd7, 0x7e, 0x8a, 0x3d, 0x87);
		public const Guid WPD_CONTENT_TYPE_WIRELESS_PROFILE = .(0x0bac070a, 0x9f5f, 0x4da4, 0xa8, 0xf6, 0x3d, 0xe4, 0x4d, 0x68, 0xfd, 0x6c);
		public const Guid WPD_CONTENT_TYPE_MEDIA_CAST = .(0x5e88b3cc, 0x3e65, 0x4e62, 0xbf, 0xff, 0x22, 0x94, 0x95, 0x25, 0x3a, 0xb0);
		public const Guid WPD_CONTENT_TYPE_SECTION = .(0x821089f5, 0x1d91, 0x4dc9, 0xbe, 0x3c, 0xbb, 0xb1, 0xb3, 0x5b, 0x18, 0xce);
		public const Guid WPD_CONTENT_TYPE_UNSPECIFIED = .(0x28d8d31e, 0x249c, 0x454e, 0xaa, 0xbc, 0x34, 0x88, 0x31, 0x68, 0xe6, 0x34);
		public const Guid WPD_CONTENT_TYPE_ALL = .(0x80e170d2, 0x1055, 0x4a3e, 0xb9, 0x52, 0x82, 0xcc, 0x4f, 0x8a, 0x86, 0x89);
		public const Guid WPD_FUNCTIONAL_CATEGORY_DEVICE = .(0x08ea466b, 0xe3a4, 0x4336, 0xa1, 0xf3, 0xa4, 0x4d, 0x2b, 0x5c, 0x43, 0x8c);
		public const Guid WPD_FUNCTIONAL_CATEGORY_STORAGE = .(0x23f05bbc, 0x15de, 0x4c2a, 0xa5, 0x5b, 0xa9, 0xaf, 0x5c, 0xe4, 0x12, 0xef);
		public const Guid WPD_FUNCTIONAL_CATEGORY_STILL_IMAGE_CAPTURE = .(0x613ca327, 0xab93, 0x4900, 0xb4, 0xfa, 0x89, 0x5b, 0xb5, 0x87, 0x4b, 0x79);
		public const Guid WPD_FUNCTIONAL_CATEGORY_AUDIO_CAPTURE = .(0x3f2a1919, 0xc7c2, 0x4a00, 0x85, 0x5d, 0xf5, 0x7c, 0xf0, 0x6d, 0xeb, 0xbb);
		public const Guid WPD_FUNCTIONAL_CATEGORY_VIDEO_CAPTURE = .(0xe23e5f6b, 0x7243, 0x43aa, 0x8d, 0xf1, 0x0e, 0xb3, 0xd9, 0x68, 0xa9, 0x18);
		public const Guid WPD_FUNCTIONAL_CATEGORY_SMS = .(0x0044a0b1, 0xc1e9, 0x4afd, 0xb3, 0x58, 0xa6, 0x2c, 0x61, 0x17, 0xc9, 0xcf);
		public const Guid WPD_FUNCTIONAL_CATEGORY_RENDERING_INFORMATION = .(0x08600ba4, 0xa7ba, 0x4a01, 0xab, 0x0e, 0x00, 0x65, 0xd0, 0xa3, 0x56, 0xd3);
		public const Guid WPD_FUNCTIONAL_CATEGORY_NETWORK_CONFIGURATION = .(0x48f4db72, 0x7c6a, 0x4ab0, 0x9e, 0x1a, 0x47, 0x0e, 0x3c, 0xdb, 0xf2, 0x6a);
		public const Guid WPD_FUNCTIONAL_CATEGORY_ALL = .(0x2d8a6512, 0xa74c, 0x448e, 0xba, 0x8a, 0xf4, 0xac, 0x07, 0xc4, 0x93, 0x99);
		public const Guid WPD_OBJECT_FORMAT_ICON = .(0x077232ed, 0x102c, 0x4638, 0x9c, 0x22, 0x83, 0xf1, 0x42, 0xbf, 0xc8, 0x22);
		public const Guid WPD_OBJECT_FORMAT_M4A = .(0x30aba7ac, 0x6ffd, 0x4c23, 0xa3, 0x59, 0x3e, 0x9b, 0x52, 0xf3, 0xf1, 0xc8);
		public const Guid WPD_OBJECT_FORMAT_NETWORK_ASSOCIATION = .(0xb1020000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_X509V3CERTIFICATE = .(0xb1030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MICROSOFT_WFC = .(0xb1040000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_3GPA = .(0xe5172730, 0xf971, 0x41ef, 0xa1, 0x0b, 0x22, 0x71, 0xa0, 0x01, 0x9d, 0x7a);
		public const Guid WPD_OBJECT_FORMAT_3G2A = .(0x1a11202d, 0x8759, 0x4e34, 0xba, 0x5e, 0xb1, 0x21, 0x10, 0x87, 0xee, 0xe4);
		public const Guid WPD_OBJECT_FORMAT_ALL = .(0xc1f62eb2, 0x4bb3, 0x479c, 0x9c, 0xfa, 0x05, 0xb5, 0xf3, 0xa5, 0x7b, 0x22);
		public const Guid WPD_CATEGORY_NULL = .(0x00000000, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid WPD_OBJECT_PROPERTIES_V1 = .(0xef6b490d, 0x5cd8, 0x437a, 0xaf, 0xfc, 0xda, 0x8b, 0x60, 0xee, 0x4a, 0x3c);
		public const Guid WPD_OBJECT_PROPERTIES_V2 = .(0x0373cd3d, 0x4a46, 0x40d7, 0xb4, 0xd8, 0x73, 0xe8, 0xda, 0x74, 0xe7, 0x75);
		public const Guid WPD_FUNCTIONAL_OBJECT_PROPERTIES_V1 = .(0x8f052d93, 0xabca, 0x4fc5, 0xa5, 0xac, 0xb0, 0x1d, 0xf4, 0xdb, 0xe5, 0x98);
		public const Guid WPD_STORAGE_OBJECT_PROPERTIES_V1 = .(0x01a3057a, 0x74d6, 0x4e80, 0xbe, 0xa7, 0xdc, 0x4c, 0x21, 0x2c, 0xe5, 0x0a);
		public const Guid WPD_NETWORK_ASSOCIATION_PROPERTIES_V1 = .(0xe4c93c1f, 0xb203, 0x43f1, 0xa1, 0x00, 0x5a, 0x07, 0xd1, 0x1b, 0x02, 0x74);
		public const Guid WPD_STILL_IMAGE_CAPTURE_OBJECT_PROPERTIES_V1 = .(0x58c571ec, 0x1bcb, 0x42a7, 0x8a, 0xc5, 0xbb, 0x29, 0x15, 0x73, 0xa2, 0x60);
		public const Guid WPD_RENDERING_INFORMATION_OBJECT_PROPERTIES_V1 = .(0xc53d039f, 0xee23, 0x4a31, 0x85, 0x90, 0x76, 0x39, 0x87, 0x98, 0x70, 0xb4);
		public const Guid WPD_CLIENT_INFORMATION_PROPERTIES_V1 = .(0x204d9f0c, 0x2292, 0x4080, 0x9f, 0x42, 0x40, 0x66, 0x4e, 0x70, 0xf8, 0x59);
		public const Guid WPD_PROPERTY_ATTRIBUTES_V1 = .(0xab7943d8, 0x6332, 0x445f, 0xa0, 0x0d, 0x8d, 0x5e, 0xf1, 0xe9, 0x6f, 0x37);
		public const Guid WPD_PROPERTY_ATTRIBUTES_V2 = .(0x5d9da160, 0x74ae, 0x43cc, 0x85, 0xa9, 0xfe, 0x55, 0x5a, 0x80, 0x79, 0x8e);
		public const Guid WPD_CLASS_EXTENSION_OPTIONS_V1 = .(0x6309ffef, 0xa87c, 0x4ca7, 0x84, 0x34, 0x79, 0x75, 0x76, 0xe4, 0x0a, 0x96);
		public const Guid WPD_CLASS_EXTENSION_OPTIONS_V2 = .(0x3e3595da, 0x4d71, 0x49fe, 0xa0, 0xb4, 0xd4, 0x40, 0x6c, 0x3a, 0xe9, 0x3f);
		public const Guid WPD_CLASS_EXTENSION_OPTIONS_V3 = .(0x65c160f8, 0x1367, 0x4ce2, 0x93, 0x9d, 0x83, 0x10, 0x83, 0x9f, 0x0d, 0x30);
		public const Guid WPD_RESOURCE_ATTRIBUTES_V1 = .(0x1eb6f604, 0x9278, 0x429f, 0x93, 0xcc, 0x5b, 0xb8, 0xc0, 0x66, 0x56, 0xb6);
		public const Guid WPD_DEVICE_PROPERTIES_V1 = .(0x26d4979a, 0xe643, 0x4626, 0x9e, 0x2b, 0x73, 0x6d, 0xc0, 0xc9, 0x2f, 0xdc);
		public const Guid WPD_DEVICE_PROPERTIES_V2 = .(0x463dd662, 0x7fc4, 0x4291, 0x91, 0x1c, 0x7f, 0x4c, 0x9c, 0xca, 0x97, 0x99);
		public const Guid WPD_DEVICE_PROPERTIES_V3 = .(0x6c2b878c, 0xc2ec, 0x490d, 0xb4, 0x25, 0xd7, 0xa7, 0x5e, 0x23, 0xe5, 0xed);
		public const Guid WPD_SERVICE_PROPERTIES_V1 = .(0x7510698a, 0xcb54, 0x481c, 0xb8, 0xdb, 0x0d, 0x75, 0xc9, 0x3f, 0x1c, 0x06);
		public const Guid WPD_EVENT_PROPERTIES_V1 = .(0x15ab1953, 0xf817, 0x4fef, 0xa9, 0x21, 0x56, 0x76, 0xe8, 0x38, 0xf6, 0xe0);
		public const Guid WPD_EVENT_PROPERTIES_V2 = .(0x52807b8a, 0x4914, 0x4323, 0x9b, 0x9a, 0x74, 0xf6, 0x54, 0xb2, 0xb8, 0x46);
		public const Guid WPD_EVENT_OPTIONS_V1 = .(0xb3d8dad7, 0xa361, 0x4b83, 0x8a, 0x48, 0x5b, 0x02, 0xce, 0x10, 0x71, 0x3b);
		public const Guid WPD_EVENT_ATTRIBUTES_V1 = .(0x10c96578, 0x2e81, 0x4111, 0xad, 0xde, 0xe0, 0x8c, 0xa6, 0x13, 0x8f, 0x6d);
		public const Guid WPD_API_OPTIONS_V1 = .(0x10e54a3e, 0x052d, 0x4777, 0xa1, 0x3c, 0xde, 0x76, 0x14, 0xbe, 0x2b, 0xc4);
		public const Guid WPD_FORMAT_ATTRIBUTES_V1 = .(0xa0a02000, 0xbcaf, 0x4be8, 0xb3, 0xf5, 0x23, 0x3f, 0x23, 0x1c, 0xf5, 0x8f);
		public const Guid WPD_METHOD_ATTRIBUTES_V1 = .(0xf17a5071, 0xf039, 0x44af, 0x8e, 0xfe, 0x43, 0x2c, 0xf3, 0x2e, 0x43, 0x2a);
		public const Guid WPD_PARAMETER_ATTRIBUTES_V1 = .(0xe6864dd7, 0xf325, 0x45ea, 0xa1, 0xd5, 0x97, 0xcf, 0x73, 0xb6, 0xca, 0x58);
		public const Guid WPD_CATEGORY_COMMON = .(0xf0422a9c, 0x5dc8, 0x4440, 0xb5, 0xbd, 0x5d, 0xf2, 0x88, 0x35, 0x65, 0x8a);
		public const Guid WPD_CATEGORY_OBJECT_ENUMERATION = .(0xb7474e91, 0xe7f8, 0x4ad9, 0xb4, 0x00, 0xad, 0x1a, 0x4b, 0x58, 0xee, 0xec);
		public const Guid WPD_CATEGORY_OBJECT_PROPERTIES = .(0x9e5582e4, 0x0814, 0x44e6, 0x98, 0x1a, 0xb2, 0x99, 0x8d, 0x58, 0x38, 0x04);
		public const Guid WPD_CATEGORY_OBJECT_PROPERTIES_BULK = .(0x11c824dd, 0x04cd, 0x4e4e, 0x8c, 0x7b, 0xf6, 0xef, 0xb7, 0x94, 0xd8, 0x4e);
		public const Guid WPD_CATEGORY_OBJECT_RESOURCES = .(0xb3a2b22d, 0xa595, 0x4108, 0xbe, 0x0a, 0xfc, 0x3c, 0x96, 0x5f, 0x3d, 0x4a);
		public const Guid WPD_CATEGORY_OBJECT_MANAGEMENT = .(0xef1e43dd, 0xa9ed, 0x4341, 0x8b, 0xcc, 0x18, 0x61, 0x92, 0xae, 0xa0, 0x89);
		public const Guid WPD_CATEGORY_CAPABILITIES = .(0x0cabec78, 0x6b74, 0x41c6, 0x92, 0x16, 0x26, 0x39, 0xd1, 0xfc, 0xe3, 0x56);
		public const Guid WPD_CATEGORY_STORAGE = .(0xd8f907a6, 0x34cc, 0x45fa, 0x97, 0xfb, 0xd0, 0x07, 0xfa, 0x47, 0xec, 0x94);
		public const Guid WPD_CATEGORY_SMS = .(0xafc25d66, 0xfe0d, 0x4114, 0x90, 0x97, 0x97, 0x0c, 0x93, 0xe9, 0x20, 0xd1);
		public const Guid WPD_CATEGORY_STILL_IMAGE_CAPTURE = .(0x4fcd6982, 0x22a2, 0x4b05, 0xa4, 0x8b, 0x62, 0xd3, 0x8b, 0xf2, 0x7b, 0x32);
		public const Guid WPD_CATEGORY_MEDIA_CAPTURE = .(0x59b433ba, 0xfe44, 0x4d8d, 0x80, 0x8c, 0x6b, 0xcb, 0x9b, 0x0f, 0x15, 0xe8);
		public const Guid WPD_CATEGORY_DEVICE_HINTS = .(0x0d5fb92b, 0xcb46, 0x4c4f, 0x83, 0x43, 0x0b, 0xc3, 0xd3, 0xf1, 0x7c, 0x84);
		public const Guid WPD_CLASS_EXTENSION_V1 = .(0x33fb0d11, 0x64a3, 0x4fac, 0xb4, 0xc7, 0x3d, 0xfe, 0xaa, 0x99, 0xb0, 0x51);
		public const Guid WPD_CLASS_EXTENSION_V2 = .(0x7f0779b5, 0xfa2b, 0x4766, 0x9c, 0xb2, 0xf7, 0x3b, 0xa3, 0x0b, 0x67, 0x58);
		public const Guid WPD_CATEGORY_NETWORK_CONFIGURATION = .(0x78f9c6fc, 0x79b8, 0x473c, 0x90, 0x60, 0x6b, 0xd2, 0x3d, 0xd0, 0x72, 0xc4);
		public const Guid WPD_CATEGORY_SERVICE_COMMON = .(0x322f071d, 0x36ef, 0x477f, 0xb4, 0xb5, 0x6f, 0x52, 0xd7, 0x34, 0xba, 0xee);
		public const Guid WPD_CATEGORY_SERVICE_CAPABILITIES = .(0x24457e74, 0x2e9f, 0x44f9, 0x8c, 0x57, 0x1d, 0x1b, 0xcb, 0x17, 0x0b, 0x89);
		public const Guid WPD_CATEGORY_SERVICE_METHODS = .(0x2d521ca8, 0xc1b0, 0x4268, 0xa3, 0x42, 0xcf, 0x19, 0x32, 0x15, 0x69, 0xbc);
		public const Guid WPD_OBJECT_FORMAT_PROPERTIES_ONLY = .(0x30010000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_UNSPECIFIED = .(0x30000000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_SCRIPT = .(0x30020000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_EXECUTABLE = .(0x30030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_TEXT = .(0x30040000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_HTML = .(0x30050000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_DPOF = .(0x30060000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AIFF = .(0x30070000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WAVE = .(0x30080000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MP3 = .(0x30090000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AVI = .(0x300a0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MPEG = .(0x300b0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ASF = .(0x300c0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_EXIF = .(0x38010000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_TIFFEP = .(0x38020000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_FLASHPIX = .(0x38030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_BMP = .(0x38040000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_CIFF = .(0x38050000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_GIF = .(0x38070000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_JFIF = .(0x38080000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_PCD = .(0x38090000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_PICT = .(0x380a0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_PNG = .(0x380b0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_TIFF = .(0x380d0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_TIFFIT = .(0x380e0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_JP2 = .(0x380f0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_JPX = .(0x38100000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WBMP = .(0xb8030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_JPEGXR = .(0xb8040000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WINDOWSIMAGEFORMAT = .(0xb8810000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WMA = .(0xb9010000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WMV = .(0xb9810000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_WPLPLAYLIST = .(0xba100000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_M3UPLAYLIST = .(0xba110000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MPLPLAYLIST = .(0xba120000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ASXPLAYLIST = .(0xba130000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_PLSPLAYLIST = .(0xba140000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ABSTRACT_CONTACT_GROUP = .(0xba060000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ABSTRACT_MEDIA_CAST = .(0xba0b0000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_VCALENDAR1 = .(0xbe020000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ICALENDAR = .(0xbe030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ABSTRACT_CONTACT = .(0xbb810000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_VCARD2 = .(0xbb820000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_VCARD3 = .(0xbb830000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_XML = .(0xba820000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AAC = .(0xb9030000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AUDIBLE = .(0xb9040000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_FLAC = .(0xb9060000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_QCELP = .(0xb9070000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AMR = .(0xb9080000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_OGG = .(0xb9020000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MP4 = .(0xb9820000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MP2 = .(0xb9830000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MICROSOFT_WORD = .(0xba830000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MHT_COMPILED_HTML = .(0xba840000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MICROSOFT_EXCEL = .(0xba850000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MICROSOFT_POWERPOINT = .(0xba860000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_3GP = .(0xb9840000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_3G2 = .(0xb9850000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_AVCHD = .(0xb9860000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_ATSCTS = .(0xb9870000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_DVBTS = .(0xb9880000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_OBJECT_FORMAT_MKV = .(0xb9900000, 0xae6c, 0x4804, 0x98, 0xba, 0xc5, 0x7b, 0x46, 0x96, 0x5f, 0xe7);
		public const Guid WPD_FOLDER_OBJECT_PROPERTIES_V1 = .(0x7e9a7abf, 0xe568, 0x4b34, 0xaa, 0x2f, 0x13, 0xbb, 0x12, 0xab, 0x17, 0x7d);
		public const Guid WPD_IMAGE_OBJECT_PROPERTIES_V1 = .(0x63d64908, 0x9fa1, 0x479f, 0x85, 0xba, 0x99, 0x52, 0x21, 0x64, 0x47, 0xdb);
		public const Guid WPD_DOCUMENT_OBJECT_PROPERTIES_V1 = .(0x0b110203, 0xeb95, 0x4f02, 0x93, 0xe0, 0x97, 0xc6, 0x31, 0x49, 0x3a, 0xd5);
		public const Guid WPD_MEDIA_PROPERTIES_V1 = .(0x2ed8ba05, 0x0ad3, 0x42dc, 0xb0, 0xd0, 0xbc, 0x95, 0xac, 0x39, 0x6a, 0xc8);
		public const Guid WPD_CONTACT_OBJECT_PROPERTIES_V1 = .(0xfbd4fdab, 0x987d, 0x4777, 0xb3, 0xf9, 0x72, 0x61, 0x85, 0xa9, 0x31, 0x2b);
		public const Guid WPD_MUSIC_OBJECT_PROPERTIES_V1 = .(0xb324f56a, 0xdc5d, 0x46e5, 0xb6, 0xdf, 0xd2, 0xea, 0x41, 0x48, 0x88, 0xc6);
		public const Guid WPD_VIDEO_OBJECT_PROPERTIES_V1 = .(0x346f2163, 0xf998, 0x4146, 0x8b, 0x01, 0xd1, 0x9b, 0x4c, 0x00, 0xde, 0x9a);
		public const Guid WPD_COMMON_INFORMATION_OBJECT_PROPERTIES_V1 = .(0xb28ae94b, 0x05a4, 0x4e8e, 0xbe, 0x01, 0x72, 0xcc, 0x7e, 0x09, 0x9d, 0x8f);
		public const Guid WPD_MEMO_OBJECT_PROPERTIES_V1 = .(0x5ffbfc7b, 0x7483, 0x41ad, 0xaf, 0xb9, 0xda, 0x3f, 0x4e, 0x59, 0x2b, 0x8d);
		public const Guid WPD_EMAIL_OBJECT_PROPERTIES_V1 = .(0x41f8f65a, 0x5484, 0x4782, 0xb1, 0x3d, 0x47, 0x40, 0xdd, 0x7c, 0x37, 0xc5);
		public const Guid WPD_APPOINTMENT_OBJECT_PROPERTIES_V1 = .(0xf99efd03, 0x431d, 0x40d8, 0xa1, 0xc9, 0x4e, 0x22, 0x0d, 0x9c, 0x88, 0xd3);
		public const Guid WPD_TASK_OBJECT_PROPERTIES_V1 = .(0xe354e95e, 0xd8a0, 0x4637, 0xa0, 0x3a, 0x0c, 0xb2, 0x68, 0x38, 0xdb, 0xc7);
		public const Guid WPD_SMS_OBJECT_PROPERTIES_V1 = .(0x7e1074cc, 0x50ff, 0x4dd1, 0xa7, 0x42, 0x53, 0xbe, 0x6f, 0x09, 0x3a, 0x0d);
		public const Guid WPD_SECTION_OBJECT_PROPERTIES_V1 = .(0x516afd2b, 0xc64e, 0x44f0, 0x98, 0xdc, 0xbe, 0xe1, 0xc8, 0x8f, 0x7d, 0x66);
		public const uint32 DEVSVC_SERVICEINFO_VERSION = 100;
		public const uint32 DEVSVCTYPE_DEFAULT = 0;
		public const uint32 DEVSVCTYPE_ABSTRACT = 1;
		public const uint32 TYPE_CalendarSvc = 0;
		public const uint32 ENUM_CalendarObj_BusyStatusFree = 0;
		public const uint32 ENUM_CalendarObj_BusyStatusBusy = 1;
		public const uint32 ENUM_CalendarObj_BusyStatusOutOfOffice = 2;
		public const uint32 ENUM_CalendarObj_BusyStatusTentative = 3;
		public const uint32 TYPE_HintsSvc = 0;
		public const uint32 TYPE_MessageSvc = 0;
		public const uint32 ENUM_MessageObj_PriorityHighest = 2;
		public const uint32 ENUM_MessageObj_PriorityNormal = 1;
		public const uint32 ENUM_MessageObj_PriorityLowest = 0;
		public const uint32 ENUM_MessageObj_ReadFalse = 0;
		public const uint32 ENUM_MessageObj_ReadTrue = 255;
		public const uint32 ENUM_MessageObj_PatternTypeDaily = 1;
		public const uint32 ENUM_MessageObj_PatternTypeWeekly = 2;
		public const uint32 ENUM_MessageObj_PatternTypeMonthly = 3;
		public const uint32 ENUM_MessageObj_PatternTypeYearly = 4;
		public const uint32 FLAG_MessageObj_DayOfWeekNone = 0;
		public const uint32 FLAG_MessageObj_DayOfWeekSunday = 1;
		public const uint32 FLAG_MessageObj_DayOfWeekMonday = 2;
		public const uint32 FLAG_MessageObj_DayOfWeekTuesday = 4;
		public const uint32 FLAG_MessageObj_DayOfWeekWednesday = 8;
		public const uint32 FLAG_MessageObj_DayOfWeekThursday = 16;
		public const uint32 FLAG_MessageObj_DayOfWeekFriday = 32;
		public const uint32 FLAG_MessageObj_DayOfWeekSaturday = 64;
		public const uint32 RANGEMIN_MessageObj_PatternDayOfMonth = 1;
		public const uint32 RANGEMAX_MessageObj_PatternDayOfMonth = 31;
		public const uint32 RANGESTEP_MessageObj_PatternDayOfMonth = 1;
		public const uint32 RANGEMIN_MessageObj_PatternMonthOfYear = 1;
		public const uint32 RANGEMAX_MessageObj_PatternMonthOfYear = 12;
		public const uint32 RANGESTEP_MessageObj_PatternMonthOfYear = 1;
		public const uint32 ENUM_MessageObj_PatternInstanceNone = 0;
		public const uint32 ENUM_MessageObj_PatternInstanceFirst = 1;
		public const uint32 ENUM_MessageObj_PatternInstanceSecond = 2;
		public const uint32 ENUM_MessageObj_PatternInstanceThird = 3;
		public const uint32 ENUM_MessageObj_PatternInstanceFourth = 4;
		public const uint32 ENUM_MessageObj_PatternInstanceLast = 5;
		public const uint32 TYPE_DeviceMetadataSvc = 0;
		public const uint32 ENUM_DeviceMetadataObj_DefaultCABFalse = 0;
		public const uint32 ENUM_DeviceMetadataObj_DefaultCABTrue = 1;
		public const uint32 TYPE_NotesSvc = 0;
		public const uint32 TYPE_StatusSvc = 0;
		public const uint32 RANGEMIN_StatusSvc_SignalStrength = 0;
		public const uint32 RANGEMAX_StatusSvc_SignalStrength = 4;
		public const uint32 RANGESTEP_StatusSvc_SignalStrength = 1;
		public const uint32 RANGEMAX_StatusSvc_TextMessages = 255;
		public const uint32 RANGEMAX_StatusSvc_NewPictures = 65535;
		public const uint32 RANGEMAX_StatusSvc_MissedCalls = 255;
		public const uint32 RANGEMAX_StatusSvc_VoiceMail = 255;
		public const uint32 ENUM_StatusSvc_RoamingInactive = 0;
		public const uint32 ENUM_StatusSvc_RoamingActive = 1;
		public const uint32 ENUM_StatusSvc_RoamingUnknown = 2;
		public const uint32 RANGEMIN_StatusSvc_BatteryLife = 0;
		public const uint32 RANGEMAX_StatusSvc_BatteryLife = 100;
		public const uint32 RANGESTEP_StatusSvc_BatteryLife = 1;
		public const uint32 ENUM_StatusSvc_ChargingInactive = 0;
		public const uint32 ENUM_StatusSvc_ChargingActive = 1;
		public const uint32 ENUM_StatusSvc_ChargingUnknown = 2;
		public const uint32 SYNCSVC_FILTER_NONE = 0;
		public const uint32 SYNCSVC_FILTER_CONTACTS_WITH_PHONE = 1;
		public const uint32 SYNCSVC_FILTER_TASK_ACTIVE = 2;
		public const uint32 SYNCSVC_FILTER_CALENDAR_WINDOW_WITH_RECURRENCE = 3;
		public const uint32 ENUM_SyncSvc_SyncObjectReferencesDisabled = 0;
		public const uint32 ENUM_SyncSvc_SyncObjectReferencesEnabled = 255;
		public const uint32 TYPE_TasksSvc = 0;
		public const uint32 ENUM_TaskObj_CompleteFalse = 0;
		public const uint32 ENUM_TaskObj_CompleteTrue = 255;
		public const Guid WPD_CATEGORY_MTP_EXT_VENDOR_OPERATIONS = .(0x4d545058, 0x1a2e, 0x4106, 0xa3, 0x57, 0x77, 0x1e, 0x08, 0x19, 0xfc, 0x56);
		public const Guid WPD_PROPERTIES_MTP_VENDOR_EXTENDED_OBJECT_PROPS = .(0x4d545058, 0x4fce, 0x4578, 0x95, 0xc8, 0x86, 0x98, 0xa9, 0xbc, 0x0f, 0x49);
		public const Guid WPD_PROPERTIES_MTP_VENDOR_EXTENDED_DEVICE_PROPS = .(0x4d545058, 0x8900, 0x40b3, 0x8f, 0x1d, 0xdc, 0x24, 0x6e, 0x1e, 0x83, 0x70);
		public const Guid WPD_EVENT_MTP_VENDOR_EXTENDED_EVENTS = .(0x00000000, 0x5738, 0x4ff2, 0x84, 0x45, 0xbe, 0x31, 0x26, 0x69, 0x10, 0x59);
		public const Guid CLSID_WPD_NAMESPACE_EXTENSION = .(0x35786d3c, 0xb075, 0x49b9, 0x88, 0xdd, 0x02, 0x98, 0x76, 0xe1, 0x1c, 0x01);
		public const Guid WPDNSE_OBJECT_PROPERTIES_V1 = .(0x34d71409, 0x4b47, 0x4d80, 0xaa, 0xac, 0x3a, 0x28, 0xa4, 0xa3, 0xb3, 0xe6);
		public const uint32 WPDNSE_PROPSHEET_DEVICE_GENERAL = 1;
		public const uint32 WPDNSE_PROPSHEET_STORAGE_GENERAL = 2;
		public const uint32 WPDNSE_PROPSHEET_CONTENT_GENERAL = 4;
		public const uint32 WPDNSE_PROPSHEET_CONTENT_REFERENCES = 8;
		public const uint32 WPDNSE_PROPSHEET_CONTENT_RESOURCES = 16;
		public const uint32 WPDNSE_PROPSHEET_CONTENT_DETAILS = 32;
		public const uint32 TYPE_ContactsSvc = 0;
		public const uint32 TYPE_RingtonesSvc = 0;
		public const uint32 TYPE_AnchorSyncSvc = 1;
		public const uint32 ENUM_AnchorResults_AnchorStateNormal = 0;
		public const uint32 ENUM_AnchorResults_AnchorStateInvalid = 1;
		public const uint32 ENUM_AnchorResults_AnchorStateOld = 2;
		public const uint32 ENUM_AnchorResults_ItemStateInvalid = 0;
		public const uint32 ENUM_AnchorResults_ItemStateDeleted = 1;
		public const uint32 ENUM_AnchorResults_ItemStateCreated = 2;
		public const uint32 ENUM_AnchorResults_ItemStateUpdated = 3;
		public const uint32 ENUM_AnchorResults_ItemStateChanged = 4;
		public const uint32 TYPE_FullEnumSyncSvc = 1;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum DELETE_OBJECT_OPTIONS : int32
		{
			PORTABLE_DEVICE_DELETE_NO_RECURSION = 0,
			PORTABLE_DEVICE_DELETE_WITH_RECURSION = 1,
		}
		[AllowDuplicates]
		public enum WPD_DEVICE_TYPES : int32
		{
			WPD_DEVICE_TYPE_GENERIC = 0,
			WPD_DEVICE_TYPE_CAMERA = 1,
			WPD_DEVICE_TYPE_MEDIA_PLAYER = 2,
			WPD_DEVICE_TYPE_PHONE = 3,
			WPD_DEVICE_TYPE_VIDEO = 4,
			WPD_DEVICE_TYPE_PERSONAL_INFORMATION_MANAGER = 5,
			WPD_DEVICE_TYPE_AUDIO_RECORDER = 6,
		}
		[AllowDuplicates]
		public enum WpdAttributeForm : int32
		{
			WPD_PROPERTY_ATTRIBUTE_FORM_UNSPECIFIED = 0,
			WPD_PROPERTY_ATTRIBUTE_FORM_RANGE = 1,
			WPD_PROPERTY_ATTRIBUTE_FORM_ENUMERATION = 2,
			WPD_PROPERTY_ATTRIBUTE_FORM_REGULAR_EXPRESSION = 3,
			WPD_PROPERTY_ATTRIBUTE_FORM_OBJECT_IDENTIFIER = 4,
		}
		[AllowDuplicates]
		public enum WpdParameterAttributeForm : int32
		{
			WPD_PARAMETER_ATTRIBUTE_FORM_UNSPECIFIED = 0,
			WPD_PARAMETER_ATTRIBUTE_FORM_RANGE = 1,
			WPD_PARAMETER_ATTRIBUTE_FORM_ENUMERATION = 2,
			WPD_PARAMETER_ATTRIBUTE_FORM_REGULAR_EXPRESSION = 3,
			WPD_PARAMETER_ATTRIBUTE_FORM_OBJECT_IDENTIFIER = 4,
		}
		[AllowDuplicates]
		public enum WPD_DEVICE_TRANSPORTS : int32
		{
			WPD_DEVICE_TRANSPORT_UNSPECIFIED = 0,
			WPD_DEVICE_TRANSPORT_USB = 1,
			WPD_DEVICE_TRANSPORT_IP = 2,
			WPD_DEVICE_TRANSPORT_BLUETOOTH = 3,
		}
		[AllowDuplicates]
		public enum WPD_STORAGE_TYPE_VALUES : int32
		{
			WPD_STORAGE_TYPE_UNDEFINED = 0,
			WPD_STORAGE_TYPE_FIXED_ROM = 1,
			WPD_STORAGE_TYPE_REMOVABLE_ROM = 2,
			WPD_STORAGE_TYPE_FIXED_RAM = 3,
			WPD_STORAGE_TYPE_REMOVABLE_RAM = 4,
		}
		[AllowDuplicates]
		public enum WPD_STORAGE_ACCESS_CAPABILITY_VALUES : int32
		{
			WPD_STORAGE_ACCESS_CAPABILITY_READWRITE = 0,
			WPD_STORAGE_ACCESS_CAPABILITY_READ_ONLY_WITHOUT_OBJECT_DELETION = 1,
			WPD_STORAGE_ACCESS_CAPABILITY_READ_ONLY_WITH_OBJECT_DELETION = 2,
		}
		[AllowDuplicates]
		public enum WPD_SMS_ENCODING_TYPES : int32
		{
			SMS_ENCODING_7_BIT = 0,
			SMS_ENCODING_8_BIT = 1,
			SMS_ENCODING_UTF_16 = 2,
		}
		[AllowDuplicates]
		public enum SMS_MESSAGE_TYPES : int32
		{
			SMS_TEXT_MESSAGE = 0,
			SMS_BINARY_MESSAGE = 1,
		}
		[AllowDuplicates]
		public enum WPD_POWER_SOURCES : int32
		{
			WPD_POWER_SOURCE_BATTERY = 0,
			WPD_POWER_SOURCE_EXTERNAL = 1,
		}
		[AllowDuplicates]
		public enum WPD_WHITE_BALANCE_SETTINGS : int32
		{
			WPD_WHITE_BALANCE_UNDEFINED = 0,
			WPD_WHITE_BALANCE_MANUAL = 1,
			WPD_WHITE_BALANCE_AUTOMATIC = 2,
			WPD_WHITE_BALANCE_ONE_PUSH_AUTOMATIC = 3,
			WPD_WHITE_BALANCE_DAYLIGHT = 4,
			WPD_WHITE_BALANCE_FLORESCENT = 5,
			WPD_WHITE_BALANCE_TUNGSTEN = 6,
			WPD_WHITE_BALANCE_FLASH = 7,
		}
		[AllowDuplicates]
		public enum WPD_FOCUS_MODES : int32
		{
			WPD_FOCUS_UNDEFINED = 0,
			WPD_FOCUS_MANUAL = 1,
			WPD_FOCUS_AUTOMATIC = 2,
			WPD_FOCUS_AUTOMATIC_MACRO = 3,
		}
		[AllowDuplicates]
		public enum WPD_EXPOSURE_METERING_MODES : int32
		{
			WPD_EXPOSURE_METERING_MODE_UNDEFINED = 0,
			WPD_EXPOSURE_METERING_MODE_AVERAGE = 1,
			WPD_EXPOSURE_METERING_MODE_CENTER_WEIGHTED_AVERAGE = 2,
			WPD_EXPOSURE_METERING_MODE_MULTI_SPOT = 3,
			WPD_EXPOSURE_METERING_MODE_CENTER_SPOT = 4,
		}
		[AllowDuplicates]
		public enum WPD_FLASH_MODES : int32
		{
			WPD_FLASH_MODE_UNDEFINED = 0,
			WPD_FLASH_MODE_AUTO = 1,
			WPD_FLASH_MODE_OFF = 2,
			WPD_FLASH_MODE_FILL = 3,
			WPD_FLASH_MODE_RED_EYE_AUTO = 4,
			WPD_FLASH_MODE_RED_EYE_FILL = 5,
			WPD_FLASH_MODE_EXTERNAL_SYNC = 6,
		}
		[AllowDuplicates]
		public enum WPD_EXPOSURE_PROGRAM_MODES : int32
		{
			WPD_EXPOSURE_PROGRAM_MODE_UNDEFINED = 0,
			WPD_EXPOSURE_PROGRAM_MODE_MANUAL = 1,
			WPD_EXPOSURE_PROGRAM_MODE_AUTO = 2,
			WPD_EXPOSURE_PROGRAM_MODE_APERTURE_PRIORITY = 3,
			WPD_EXPOSURE_PROGRAM_MODE_SHUTTER_PRIORITY = 4,
			WPD_EXPOSURE_PROGRAM_MODE_CREATIVE = 5,
			WPD_EXPOSURE_PROGRAM_MODE_ACTION = 6,
			WPD_EXPOSURE_PROGRAM_MODE_PORTRAIT = 7,
		}
		[AllowDuplicates]
		public enum WPD_CAPTURE_MODES : int32
		{
			WPD_CAPTURE_MODE_UNDEFINED = 0,
			WPD_CAPTURE_MODE_NORMAL = 1,
			WPD_CAPTURE_MODE_BURST = 2,
			WPD_CAPTURE_MODE_TIMELAPSE = 3,
		}
		[AllowDuplicates]
		public enum WPD_EFFECT_MODES : int32
		{
			WPD_EFFECT_MODE_UNDEFINED = 0,
			WPD_EFFECT_MODE_COLOR = 1,
			WPD_EFFECT_MODE_BLACK_AND_WHITE = 2,
			WPD_EFFECT_MODE_SEPIA = 3,
		}
		[AllowDuplicates]
		public enum WPD_FOCUS_METERING_MODES : int32
		{
			WPD_FOCUS_METERING_MODE_UNDEFINED = 0,
			WPD_FOCUS_METERING_MODE_CENTER_SPOT = 1,
			WPD_FOCUS_METERING_MODE_MULTI_SPOT = 2,
		}
		[AllowDuplicates]
		public enum WPD_BITRATE_TYPES : int32
		{
			WPD_BITRATE_TYPE_UNUSED = 0,
			WPD_BITRATE_TYPE_DISCRETE = 1,
			WPD_BITRATE_TYPE_VARIABLE = 2,
			WPD_BITRATE_TYPE_FREE = 3,
		}
		[AllowDuplicates]
		public enum WPD_META_GENRES : int32
		{
			WPD_META_GENRE_UNUSED = 0,
			WPD_META_GENRE_GENERIC_MUSIC_AUDIO_FILE = 1,
			WPD_META_GENRE_GENERIC_NON_MUSIC_AUDIO_FILE = 17,
			WPD_META_GENRE_SPOKEN_WORD_AUDIO_BOOK_FILES = 18,
			WPD_META_GENRE_SPOKEN_WORD_FILES_NON_AUDIO_BOOK = 19,
			WPD_META_GENRE_SPOKEN_WORD_NEWS = 20,
			WPD_META_GENRE_SPOKEN_WORD_TALK_SHOWS = 21,
			WPD_META_GENRE_GENERIC_VIDEO_FILE = 33,
			WPD_META_GENRE_NEWS_VIDEO_FILE = 34,
			WPD_META_GENRE_MUSIC_VIDEO_FILE = 35,
			WPD_META_GENRE_HOME_VIDEO_FILE = 36,
			WPD_META_GENRE_FEATURE_FILM_VIDEO_FILE = 37,
			WPD_META_GENRE_TELEVISION_VIDEO_FILE = 38,
			WPD_META_GENRE_TRAINING_EDUCATIONAL_VIDEO_FILE = 39,
			WPD_META_GENRE_PHOTO_MONTAGE_VIDEO_FILE = 40,
			WPD_META_GENRE_GENERIC_NON_AUDIO_NON_VIDEO = 48,
			WPD_META_GENRE_AUDIO_PODCAST = 64,
			WPD_META_GENRE_VIDEO_PODCAST = 65,
			WPD_META_GENRE_MIXED_PODCAST = 66,
		}
		[AllowDuplicates]
		public enum WPD_CROPPED_STATUS_VALUES : int32
		{
			WPD_CROPPED_STATUS_NOT_CROPPED = 0,
			WPD_CROPPED_STATUS_CROPPED = 1,
			WPD_CROPPED_STATUS_SHOULD_NOT_BE_CROPPED = 2,
		}
		[AllowDuplicates]
		public enum WPD_COLOR_CORRECTED_STATUS_VALUES : int32
		{
			WPD_COLOR_CORRECTED_STATUS_NOT_CORRECTED = 0,
			WPD_COLOR_CORRECTED_STATUS_CORRECTED = 1,
			WPD_COLOR_CORRECTED_STATUS_SHOULD_NOT_BE_CORRECTED = 2,
		}
		[AllowDuplicates]
		public enum WPD_VIDEO_SCAN_TYPES : int32
		{
			WPD_VIDEO_SCAN_TYPE_UNUSED = 0,
			WPD_VIDEO_SCAN_TYPE_PROGRESSIVE = 1,
			WPD_VIDEO_SCAN_TYPE_FIELD_INTERLEAVED_UPPER_FIRST = 2,
			WPD_VIDEO_SCAN_TYPE_FIELD_INTERLEAVED_LOWER_FIRST = 3,
			WPD_VIDEO_SCAN_TYPE_FIELD_SINGLE_UPPER_FIRST = 4,
			WPD_VIDEO_SCAN_TYPE_FIELD_SINGLE_LOWER_FIRST = 5,
			WPD_VIDEO_SCAN_TYPE_MIXED_INTERLACE = 6,
			WPD_VIDEO_SCAN_TYPE_MIXED_INTERLACE_AND_PROGRESSIVE = 7,
		}
		[AllowDuplicates]
		public enum WPD_OPERATION_STATES : int32
		{
			WPD_OPERATION_STATE_UNSPECIFIED = 0,
			WPD_OPERATION_STATE_STARTED = 1,
			WPD_OPERATION_STATE_RUNNING = 2,
			WPD_OPERATION_STATE_PAUSED = 3,
			WPD_OPERATION_STATE_CANCELLED = 4,
			WPD_OPERATION_STATE_FINISHED = 5,
			WPD_OPERATION_STATE_ABORTED = 6,
		}
		[AllowDuplicates]
		public enum WPD_SECTION_DATA_UNITS_VALUES : int32
		{
			WPD_SECTION_DATA_UNITS_BYTES = 0,
			WPD_SECTION_DATA_UNITS_MILLISECONDS = 1,
		}
		[AllowDuplicates]
		public enum WPD_RENDERING_INFORMATION_PROFILE_ENTRY_TYPES : int32
		{
			WPD_RENDERING_INFORMATION_PROFILE_ENTRY_TYPE_OBJECT = 0,
			WPD_RENDERING_INFORMATION_PROFILE_ENTRY_TYPE_RESOURCE = 1,
		}
		[AllowDuplicates]
		public enum WPD_COMMAND_ACCESS_TYPES : int32
		{
			WPD_COMMAND_ACCESS_READ = 1,
			WPD_COMMAND_ACCESS_READWRITE = 3,
			WPD_COMMAND_ACCESS_FROM_PROPERTY_WITH_STGM_ACCESS = 4,
			WPD_COMMAND_ACCESS_FROM_PROPERTY_WITH_FILE_ACCESS = 8,
			WPD_COMMAND_ACCESS_FROM_ATTRIBUTE_WITH_METHOD_ACCESS = 16,
		}
		[AllowDuplicates]
		public enum WPD_SERVICE_INHERITANCE_TYPES : int32
		{
			WPD_SERVICE_INHERITANCE_IMPLEMENTATION = 0,
		}
		[AllowDuplicates]
		public enum WPD_PARAMETER_USAGE_TYPES : int32
		{
			WPD_PARAMETER_USAGE_RETURN = 0,
			WPD_PARAMETER_USAGE_IN = 1,
			WPD_PARAMETER_USAGE_OUT = 2,
			WPD_PARAMETER_USAGE_INOUT = 3,
		}
		[AllowDuplicates]
		public enum WPD_STREAM_UNITS : int32
		{
			WPD_STREAM_UNITS_BYTES = 0,
			WPD_STREAM_UNITS_FRAMES = 1,
			WPD_STREAM_UNITS_ROWS = 2,
			WPD_STREAM_UNITS_MILLISECONDS = 4,
			WPD_STREAM_UNITS_MICROSECONDS = 8,
		}
		[AllowDuplicates]
		public enum DEVICE_RADIO_STATE : int32
		{
			DRS_RADIO_ON = 0,
			DRS_SW_RADIO_OFF = 1,
			DRS_HW_RADIO_OFF = 2,
			DRS_SW_HW_RADIO_OFF = 3,
			DRS_HW_RADIO_ON_UNCONTROLLABLE = 4,
			DRS_RADIO_INVALID = 5,
			DRS_HW_RADIO_OFF_UNCONTROLLABLE = 6,
			DRS_RADIO_MAX = 6,
		}
		[AllowDuplicates]
		public enum SYSTEM_RADIO_STATE : int32
		{
			SRS_RADIO_ENABLED = 0,
			SRS_RADIO_DISABLED = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WPD_COMMAND_ACCESS_LOOKUP_ENTRY
		{
			public PROPERTYKEY Command;
			public uint32 AccessType;
			public PROPERTYKEY AccessProperty;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WpdSerializer = .(0x0b91a74b, 0xad7c, 0x4a9d, 0xb5, 0x63, 0x29, 0xee, 0xf9, 0x16, 0x71, 0x72);
		public const Guid CLSID_PortableDeviceValues = .(0x0c15d503, 0xd017, 0x47ce, 0x90, 0x16, 0x7b, 0x3f, 0x97, 0x87, 0x21, 0xcc);
		public const Guid CLSID_PortableDeviceKeyCollection = .(0xde2d022d, 0x2480, 0x43be, 0x97, 0xf0, 0xd1, 0xfa, 0x2c, 0xf9, 0x8f, 0x4f);
		public const Guid CLSID_PortableDevicePropVariantCollection = .(0x08a99e2f, 0x6d6d, 0x4b80, 0xaf, 0x5a, 0xba, 0xf2, 0xbc, 0xbe, 0x4c, 0xb9);
		public const Guid CLSID_PortableDeviceValuesCollection = .(0x3882134d, 0x14cf, 0x4220, 0x9c, 0xb4, 0x43, 0x5f, 0x86, 0xd8, 0x3f, 0x60);
		public const Guid CLSID_PortableDevice = .(0x728a21c5, 0x3d9e, 0x48d7, 0x98, 0x10, 0x86, 0x48, 0x48, 0xf0, 0xf4, 0x04);
		public const Guid CLSID_PortableDeviceManager = .(0x0af10cec, 0x2ecd, 0x4b92, 0x95, 0x81, 0x34, 0xf6, 0xae, 0x06, 0x37, 0xf3);
		public const Guid CLSID_PortableDeviceService = .(0xef5db4c2, 0x9312, 0x422c, 0x91, 0x52, 0x41, 0x1c, 0xd9, 0xc4, 0xdd, 0x84);
		public const Guid CLSID_PortableDeviceDispatchFactory = .(0x43232233, 0x8338, 0x4658, 0xae, 0x01, 0x0b, 0x4a, 0xe8, 0x30, 0xb6, 0xb0);
		public const Guid CLSID_PortableDeviceFTM = .(0xf7c0039a, 0x4762, 0x488a, 0xb4, 0xb3, 0x76, 0x0e, 0xf9, 0xa1, 0xba, 0x9b);
		public const Guid CLSID_PortableDeviceServiceFTM = .(0x1649b154, 0xc794, 0x497a, 0x9b, 0x03, 0xf3, 0xf0, 0x12, 0x13, 0x02, 0xf3);
		public const Guid CLSID_PortableDeviceWebControl = .(0x186dd02c, 0x2dec, 0x41b5, 0xa7, 0xd4, 0xb5, 0x90, 0x56, 0xfa, 0xde, 0x51);
		public const Guid CLSID_EnumBthMtpConnectors = .(0xa1570149, 0xe645, 0x4f43, 0x8b, 0x0d, 0x40, 0x9b, 0x06, 0x1d, 0xb2, 0xfc);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWpdSerializer : IUnknown
		{
			public const new Guid IID = .(0xb32f4002, 0xbb27, 0x45ff, 0xaf, 0x4f, 0x06, 0x63, 0x1c, 0x1e, 0x8d, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIPortableDeviceValuesFromBuffer(uint8* pBuffer, uint32 dwInputBufferLength, IPortableDeviceValues** ppParams) mut
			{
				return VT.GetIPortableDeviceValuesFromBuffer(&this, pBuffer, dwInputBufferLength, ppParams);
			}
			public HRESULT WriteIPortableDeviceValuesToBuffer(uint32 dwOutputBufferLength, IPortableDeviceValues* pResults, uint8* pBuffer, uint32* pdwBytesWritten) mut
			{
				return VT.WriteIPortableDeviceValuesToBuffer(&this, dwOutputBufferLength, pResults, pBuffer, pdwBytesWritten);
			}
			public HRESULT GetBufferFromIPortableDeviceValues(IPortableDeviceValues* pSource, uint8** ppBuffer, uint32* pdwBufferSize) mut
			{
				return VT.GetBufferFromIPortableDeviceValues(&this, pSource, ppBuffer, pdwBufferSize);
			}
			public HRESULT GetSerializedSize(IPortableDeviceValues* pSource, uint32* pdwSize) mut
			{
				return VT.GetSerializedSize(&this, pSource, pdwSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWpdSerializer *self, uint8* pBuffer, uint32 dwInputBufferLength, IPortableDeviceValues** ppParams) GetIPortableDeviceValuesFromBuffer;
				public new function HRESULT(IWpdSerializer *self, uint32 dwOutputBufferLength, IPortableDeviceValues* pResults, uint8* pBuffer, uint32* pdwBytesWritten) WriteIPortableDeviceValuesToBuffer;
				public new function HRESULT(IWpdSerializer *self, IPortableDeviceValues* pSource, uint8** ppBuffer, uint32* pdwBufferSize) GetBufferFromIPortableDeviceValues;
				public new function HRESULT(IWpdSerializer *self, IPortableDeviceValues* pSource, uint32* pdwSize) GetSerializedSize;
			}
		}
		[CRepr]
		public struct IPortableDeviceValues : IUnknown
		{
			public const new Guid IID = .(0x6848f6f2, 0x3155, 0x4f86, 0xb6, 0xf5, 0x26, 0x3e, 0xee, 0xab, 0x31, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcelt) mut
			{
				return VT.GetCount(&this, pcelt);
			}
			public HRESULT GetAt(uint32 index, PROPERTYKEY* pKey, PROPVARIANT* pValue) mut
			{
				return VT.GetAt(&this, index, pKey, pValue);
			}
			public HRESULT SetValue(PROPERTYKEY* key, PROPVARIANT* pValue) mut
			{
				return VT.SetValue(&this, key, pValue);
			}
			public HRESULT GetValue(PROPERTYKEY* key, PROPVARIANT* pValue) mut
			{
				return VT.GetValue(&this, key, pValue);
			}
			public HRESULT SetStringValue(PROPERTYKEY* key, PWSTR Value) mut
			{
				return VT.SetStringValue(&this, key, Value);
			}
			public HRESULT GetStringValue(PROPERTYKEY* key, PWSTR* pValue) mut
			{
				return VT.GetStringValue(&this, key, pValue);
			}
			public HRESULT SetUnsignedIntegerValue(PROPERTYKEY* key, uint32 Value) mut
			{
				return VT.SetUnsignedIntegerValue(&this, key, Value);
			}
			public HRESULT GetUnsignedIntegerValue(PROPERTYKEY* key, uint32* pValue) mut
			{
				return VT.GetUnsignedIntegerValue(&this, key, pValue);
			}
			public HRESULT SetSignedIntegerValue(PROPERTYKEY* key, int32 Value) mut
			{
				return VT.SetSignedIntegerValue(&this, key, Value);
			}
			public HRESULT GetSignedIntegerValue(PROPERTYKEY* key, int32* pValue) mut
			{
				return VT.GetSignedIntegerValue(&this, key, pValue);
			}
			public HRESULT SetUnsignedLargeIntegerValue(PROPERTYKEY* key, uint64 Value) mut
			{
				return VT.SetUnsignedLargeIntegerValue(&this, key, Value);
			}
			public HRESULT GetUnsignedLargeIntegerValue(PROPERTYKEY* key, uint64* pValue) mut
			{
				return VT.GetUnsignedLargeIntegerValue(&this, key, pValue);
			}
			public HRESULT SetSignedLargeIntegerValue(PROPERTYKEY* key, int64 Value) mut
			{
				return VT.SetSignedLargeIntegerValue(&this, key, Value);
			}
			public HRESULT GetSignedLargeIntegerValue(PROPERTYKEY* key, int64* pValue) mut
			{
				return VT.GetSignedLargeIntegerValue(&this, key, pValue);
			}
			public HRESULT SetFloatValue(PROPERTYKEY* key, float Value) mut
			{
				return VT.SetFloatValue(&this, key, Value);
			}
			public HRESULT GetFloatValue(PROPERTYKEY* key, float* pValue) mut
			{
				return VT.GetFloatValue(&this, key, pValue);
			}
			public HRESULT SetErrorValue(PROPERTYKEY* key, HRESULT Value) mut
			{
				return VT.SetErrorValue(&this, key, Value);
			}
			public HRESULT GetErrorValue(PROPERTYKEY* key, HRESULT* pValue) mut
			{
				return VT.GetErrorValue(&this, key, pValue);
			}
			public HRESULT SetKeyValue(PROPERTYKEY* key, PROPERTYKEY* Value) mut
			{
				return VT.SetKeyValue(&this, key, Value);
			}
			public HRESULT GetKeyValue(PROPERTYKEY* key, PROPERTYKEY* pValue) mut
			{
				return VT.GetKeyValue(&this, key, pValue);
			}
			public HRESULT SetBoolValue(PROPERTYKEY* key, BOOL Value) mut
			{
				return VT.SetBoolValue(&this, key, Value);
			}
			public HRESULT GetBoolValue(PROPERTYKEY* key, BOOL* pValue) mut
			{
				return VT.GetBoolValue(&this, key, pValue);
			}
			public HRESULT SetIUnknownValue(PROPERTYKEY* key, IUnknown* pValue) mut
			{
				return VT.SetIUnknownValue(&this, key, pValue);
			}
			public HRESULT GetIUnknownValue(PROPERTYKEY* key, IUnknown** ppValue) mut
			{
				return VT.GetIUnknownValue(&this, key, ppValue);
			}
			public HRESULT SetGuidValue(PROPERTYKEY* key, Guid* Value) mut
			{
				return VT.SetGuidValue(&this, key, Value);
			}
			public HRESULT GetGuidValue(PROPERTYKEY* key, Guid* pValue) mut
			{
				return VT.GetGuidValue(&this, key, pValue);
			}
			public HRESULT SetBufferValue(PROPERTYKEY* key, uint8* pValue, uint32 cbValue) mut
			{
				return VT.SetBufferValue(&this, key, pValue, cbValue);
			}
			public HRESULT GetBufferValue(PROPERTYKEY* key, uint8** ppValue, uint32* pcbValue) mut
			{
				return VT.GetBufferValue(&this, key, ppValue, pcbValue);
			}
			public HRESULT SetIPortableDeviceValuesValue(PROPERTYKEY* key, IPortableDeviceValues* pValue) mut
			{
				return VT.SetIPortableDeviceValuesValue(&this, key, pValue);
			}
			public HRESULT GetIPortableDeviceValuesValue(PROPERTYKEY* key, IPortableDeviceValues** ppValue) mut
			{
				return VT.GetIPortableDeviceValuesValue(&this, key, ppValue);
			}
			public HRESULT SetIPortableDevicePropVariantCollectionValue(PROPERTYKEY* key, IPortableDevicePropVariantCollection* pValue) mut
			{
				return VT.SetIPortableDevicePropVariantCollectionValue(&this, key, pValue);
			}
			public HRESULT GetIPortableDevicePropVariantCollectionValue(PROPERTYKEY* key, IPortableDevicePropVariantCollection** ppValue) mut
			{
				return VT.GetIPortableDevicePropVariantCollectionValue(&this, key, ppValue);
			}
			public HRESULT SetIPortableDeviceKeyCollectionValue(PROPERTYKEY* key, IPortableDeviceKeyCollection* pValue) mut
			{
				return VT.SetIPortableDeviceKeyCollectionValue(&this, key, pValue);
			}
			public HRESULT GetIPortableDeviceKeyCollectionValue(PROPERTYKEY* key, IPortableDeviceKeyCollection** ppValue) mut
			{
				return VT.GetIPortableDeviceKeyCollectionValue(&this, key, ppValue);
			}
			public HRESULT SetIPortableDeviceValuesCollectionValue(PROPERTYKEY* key, IPortableDeviceValuesCollection* pValue) mut
			{
				return VT.SetIPortableDeviceValuesCollectionValue(&this, key, pValue);
			}
			public HRESULT GetIPortableDeviceValuesCollectionValue(PROPERTYKEY* key, IPortableDeviceValuesCollection** ppValue) mut
			{
				return VT.GetIPortableDeviceValuesCollectionValue(&this, key, ppValue);
			}
			public HRESULT RemoveValue(PROPERTYKEY* key) mut
			{
				return VT.RemoveValue(&this, key);
			}
			public HRESULT CopyValuesFromPropertyStore(IPropertyStore* pStore) mut
			{
				return VT.CopyValuesFromPropertyStore(&this, pStore);
			}
			public HRESULT CopyValuesToPropertyStore(IPropertyStore* pStore) mut
			{
				return VT.CopyValuesToPropertyStore(&this, pStore);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceValues *self, uint32* pcelt) GetCount;
				public new function HRESULT(IPortableDeviceValues *self, uint32 index, PROPERTYKEY* pKey, PROPVARIANT* pValue) GetAt;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PROPVARIANT* pValue) SetValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PROPVARIANT* pValue) GetValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PWSTR Value) SetStringValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PWSTR* pValue) GetStringValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint32 Value) SetUnsignedIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint32* pValue) GetUnsignedIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, int32 Value) SetSignedIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, int32* pValue) GetSignedIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint64 Value) SetUnsignedLargeIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint64* pValue) GetUnsignedLargeIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, int64 Value) SetSignedLargeIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, int64* pValue) GetSignedLargeIntegerValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, float Value) SetFloatValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, float* pValue) GetFloatValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, HRESULT Value) SetErrorValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, HRESULT* pValue) GetErrorValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PROPERTYKEY* Value) SetKeyValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, PROPERTYKEY* pValue) GetKeyValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, BOOL Value) SetBoolValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, BOOL* pValue) GetBoolValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IUnknown* pValue) SetIUnknownValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IUnknown** ppValue) GetIUnknownValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, Guid* Value) SetGuidValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, Guid* pValue) GetGuidValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint8* pValue, uint32 cbValue) SetBufferValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, uint8** ppValue, uint32* pcbValue) GetBufferValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceValues* pValue) SetIPortableDeviceValuesValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceValues** ppValue) GetIPortableDeviceValuesValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDevicePropVariantCollection* pValue) SetIPortableDevicePropVariantCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDevicePropVariantCollection** ppValue) GetIPortableDevicePropVariantCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceKeyCollection* pValue) SetIPortableDeviceKeyCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceKeyCollection** ppValue) GetIPortableDeviceKeyCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceValuesCollection* pValue) SetIPortableDeviceValuesCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key, IPortableDeviceValuesCollection** ppValue) GetIPortableDeviceValuesCollectionValue;
				public new function HRESULT(IPortableDeviceValues *self, PROPERTYKEY* key) RemoveValue;
				public new function HRESULT(IPortableDeviceValues *self, IPropertyStore* pStore) CopyValuesFromPropertyStore;
				public new function HRESULT(IPortableDeviceValues *self, IPropertyStore* pStore) CopyValuesToPropertyStore;
				public new function HRESULT(IPortableDeviceValues *self) Clear;
			}
		}
		[CRepr]
		public struct IPortableDeviceKeyCollection : IUnknown
		{
			public const new Guid IID = .(0xdada2357, 0xe0ad, 0x492e, 0x98, 0xdb, 0xdd, 0x61, 0xc5, 0x3b, 0xa3, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcElems) mut
			{
				return VT.GetCount(&this, pcElems);
			}
			public HRESULT GetAt(uint32 dwIndex, PROPERTYKEY* pKey) mut
			{
				return VT.GetAt(&this, dwIndex, pKey);
			}
			public HRESULT Add(PROPERTYKEY* Key) mut
			{
				return VT.Add(&this, Key);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT RemoveAt(uint32 dwIndex) mut
			{
				return VT.RemoveAt(&this, dwIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceKeyCollection *self, uint32* pcElems) GetCount;
				public new function HRESULT(IPortableDeviceKeyCollection *self, uint32 dwIndex, PROPERTYKEY* pKey) GetAt;
				public new function HRESULT(IPortableDeviceKeyCollection *self, PROPERTYKEY* Key) Add;
				public new function HRESULT(IPortableDeviceKeyCollection *self) Clear;
				public new function HRESULT(IPortableDeviceKeyCollection *self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDevicePropVariantCollection : IUnknown
		{
			public const new Guid IID = .(0x89b2e422, 0x4f1b, 0x4316, 0xbc, 0xef, 0xa4, 0x4a, 0xfe, 0xa8, 0x3e, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcElems) mut
			{
				return VT.GetCount(&this, pcElems);
			}
			public HRESULT GetAt(uint32 dwIndex, PROPVARIANT* pValue) mut
			{
				return VT.GetAt(&this, dwIndex, pValue);
			}
			public HRESULT Add(PROPVARIANT* pValue) mut
			{
				return VT.Add(&this, pValue);
			}
			public HRESULT ComGetType(uint16* pvt) mut
			{
				return VT.ComGetType(&this, pvt);
			}
			public HRESULT ChangeType(uint16 vt) mut
			{
				return VT.ChangeType(&this, vt);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT RemoveAt(uint32 dwIndex) mut
			{
				return VT.RemoveAt(&this, dwIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDevicePropVariantCollection *self, uint32* pcElems) GetCount;
				public new function HRESULT(IPortableDevicePropVariantCollection *self, uint32 dwIndex, PROPVARIANT* pValue) GetAt;
				public new function HRESULT(IPortableDevicePropVariantCollection *self, PROPVARIANT* pValue) Add;
				public new function HRESULT(IPortableDevicePropVariantCollection *self, uint16* pvt) ComGetType;
				public new function HRESULT(IPortableDevicePropVariantCollection *self, uint16 vt) ChangeType;
				public new function HRESULT(IPortableDevicePropVariantCollection *self) Clear;
				public new function HRESULT(IPortableDevicePropVariantCollection *self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDeviceValuesCollection : IUnknown
		{
			public const new Guid IID = .(0x6e3f2d79, 0x4e07, 0x48c4, 0x82, 0x08, 0xd8, 0xc2, 0xe5, 0xaf, 0x4a, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcElems) mut
			{
				return VT.GetCount(&this, pcElems);
			}
			public HRESULT GetAt(uint32 dwIndex, IPortableDeviceValues** ppValues) mut
			{
				return VT.GetAt(&this, dwIndex, ppValues);
			}
			public HRESULT Add(IPortableDeviceValues* pValues) mut
			{
				return VT.Add(&this, pValues);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			public HRESULT RemoveAt(uint32 dwIndex) mut
			{
				return VT.RemoveAt(&this, dwIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceValuesCollection *self, uint32* pcElems) GetCount;
				public new function HRESULT(IPortableDeviceValuesCollection *self, uint32 dwIndex, IPortableDeviceValues** ppValues) GetAt;
				public new function HRESULT(IPortableDeviceValuesCollection *self, IPortableDeviceValues* pValues) Add;
				public new function HRESULT(IPortableDeviceValuesCollection *self) Clear;
				public new function HRESULT(IPortableDeviceValuesCollection *self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDeviceManager : IUnknown
		{
			public const new Guid IID = .(0xa1567595, 0x4c2f, 0x4574, 0xa6, 0xfa, 0xec, 0xef, 0x91, 0x7b, 0x9a, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevices(PWSTR* pPnPDeviceIDs, uint32* pcPnPDeviceIDs) mut
			{
				return VT.GetDevices(&this, pPnPDeviceIDs, pcPnPDeviceIDs);
			}
			public HRESULT RefreshDeviceList() mut
			{
				return VT.RefreshDeviceList(&this);
			}
			public HRESULT GetDeviceFriendlyName(PWSTR pszPnPDeviceID, PWSTR pDeviceFriendlyName, uint32* pcchDeviceFriendlyName) mut
			{
				return VT.GetDeviceFriendlyName(&this, pszPnPDeviceID, pDeviceFriendlyName, pcchDeviceFriendlyName);
			}
			public HRESULT GetDeviceDescription(PWSTR pszPnPDeviceID, PWSTR pDeviceDescription, uint32* pcchDeviceDescription) mut
			{
				return VT.GetDeviceDescription(&this, pszPnPDeviceID, pDeviceDescription, pcchDeviceDescription);
			}
			public HRESULT GetDeviceManufacturer(PWSTR pszPnPDeviceID, PWSTR pDeviceManufacturer, uint32* pcchDeviceManufacturer) mut
			{
				return VT.GetDeviceManufacturer(&this, pszPnPDeviceID, pDeviceManufacturer, pcchDeviceManufacturer);
			}
			public HRESULT GetDeviceProperty(PWSTR pszPnPDeviceID, PWSTR pszDevicePropertyName, uint8* pData, uint32* pcbData, uint32* pdwType) mut
			{
				return VT.GetDeviceProperty(&this, pszPnPDeviceID, pszDevicePropertyName, pData, pcbData, pdwType);
			}
			public HRESULT GetPrivateDevices(PWSTR* pPnPDeviceIDs, uint32* pcPnPDeviceIDs) mut
			{
				return VT.GetPrivateDevices(&this, pPnPDeviceIDs, pcPnPDeviceIDs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceManager *self, PWSTR* pPnPDeviceIDs, uint32* pcPnPDeviceIDs) GetDevices;
				public new function HRESULT(IPortableDeviceManager *self) RefreshDeviceList;
				public new function HRESULT(IPortableDeviceManager *self, PWSTR pszPnPDeviceID, PWSTR pDeviceFriendlyName, uint32* pcchDeviceFriendlyName) GetDeviceFriendlyName;
				public new function HRESULT(IPortableDeviceManager *self, PWSTR pszPnPDeviceID, PWSTR pDeviceDescription, uint32* pcchDeviceDescription) GetDeviceDescription;
				public new function HRESULT(IPortableDeviceManager *self, PWSTR pszPnPDeviceID, PWSTR pDeviceManufacturer, uint32* pcchDeviceManufacturer) GetDeviceManufacturer;
				public new function HRESULT(IPortableDeviceManager *self, PWSTR pszPnPDeviceID, PWSTR pszDevicePropertyName, uint8* pData, uint32* pcbData, uint32* pdwType) GetDeviceProperty;
				public new function HRESULT(IPortableDeviceManager *self, PWSTR* pPnPDeviceIDs, uint32* pcPnPDeviceIDs) GetPrivateDevices;
			}
		}
		[CRepr]
		public struct IPortableDevice : IUnknown
		{
			public const new Guid IID = .(0x625e2df8, 0x6392, 0x4cf0, 0x9a, 0xd1, 0x3c, 0xfa, 0x5f, 0x17, 0x77, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pszPnPDeviceID, IPortableDeviceValues* pClientInfo) mut
			{
				return VT.Open(&this, pszPnPDeviceID, pClientInfo);
			}
			public HRESULT SendCommand(uint32 dwFlags, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) mut
			{
				return VT.SendCommand(&this, dwFlags, pParameters, ppResults);
			}
			public HRESULT Content(IPortableDeviceContent** ppContent) mut
			{
				return VT.Content(&this, ppContent);
			}
			public HRESULT Capabilities(IPortableDeviceCapabilities** ppCapabilities) mut
			{
				return VT.Capabilities(&this, ppCapabilities);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT Advise(uint32 dwFlags, IPortableDeviceEventCallback* pCallback, IPortableDeviceValues* pParameters, PWSTR* ppszCookie) mut
			{
				return VT.Advise(&this, dwFlags, pCallback, pParameters, ppszCookie);
			}
			public HRESULT Unadvise(PWSTR pszCookie) mut
			{
				return VT.Unadvise(&this, pszCookie);
			}
			public HRESULT GetPnPDeviceID(PWSTR* ppszPnPDeviceID) mut
			{
				return VT.GetPnPDeviceID(&this, ppszPnPDeviceID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDevice *self, PWSTR pszPnPDeviceID, IPortableDeviceValues* pClientInfo) Open;
				public new function HRESULT(IPortableDevice *self, uint32 dwFlags, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) SendCommand;
				public new function HRESULT(IPortableDevice *self, IPortableDeviceContent** ppContent) Content;
				public new function HRESULT(IPortableDevice *self, IPortableDeviceCapabilities** ppCapabilities) Capabilities;
				public new function HRESULT(IPortableDevice *self) Cancel;
				public new function HRESULT(IPortableDevice *self) Close;
				public new function HRESULT(IPortableDevice *self, uint32 dwFlags, IPortableDeviceEventCallback* pCallback, IPortableDeviceValues* pParameters, PWSTR* ppszCookie) Advise;
				public new function HRESULT(IPortableDevice *self, PWSTR pszCookie) Unadvise;
				public new function HRESULT(IPortableDevice *self, PWSTR* ppszPnPDeviceID) GetPnPDeviceID;
			}
		}
		[CRepr]
		public struct IPortableDeviceContent : IUnknown
		{
			public const new Guid IID = .(0x6a96ed84, 0x7c73, 0x4480, 0x99, 0x38, 0xbf, 0x5a, 0xf4, 0x77, 0xd4, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumObjects(uint32 dwFlags, PWSTR pszParentObjectID, IPortableDeviceValues* pFilter, IEnumPortableDeviceObjectIDs** ppEnum) mut
			{
				return VT.EnumObjects(&this, dwFlags, pszParentObjectID, pFilter, ppEnum);
			}
			public HRESULT Properties(IPortableDeviceProperties** ppProperties) mut
			{
				return VT.Properties(&this, ppProperties);
			}
			public HRESULT Transfer(IPortableDeviceResources** ppResources) mut
			{
				return VT.Transfer(&this, ppResources);
			}
			public HRESULT CreateObjectWithPropertiesOnly(IPortableDeviceValues* pValues, PWSTR* ppszObjectID) mut
			{
				return VT.CreateObjectWithPropertiesOnly(&this, pValues, ppszObjectID);
			}
			public HRESULT CreateObjectWithPropertiesAndData(IPortableDeviceValues* pValues, IStream** ppData, uint32* pdwOptimalWriteBufferSize, PWSTR* ppszCookie) mut
			{
				return VT.CreateObjectWithPropertiesAndData(&this, pValues, ppData, pdwOptimalWriteBufferSize, ppszCookie);
			}
			public HRESULT Delete(uint32 dwOptions, IPortableDevicePropVariantCollection* pObjectIDs, IPortableDevicePropVariantCollection** ppResults) mut
			{
				return VT.Delete(&this, dwOptions, pObjectIDs, ppResults);
			}
			public HRESULT GetObjectIDsFromPersistentUniqueIDs(IPortableDevicePropVariantCollection* pPersistentUniqueIDs, IPortableDevicePropVariantCollection** ppObjectIDs) mut
			{
				return VT.GetObjectIDsFromPersistentUniqueIDs(&this, pPersistentUniqueIDs, ppObjectIDs);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT Move(IPortableDevicePropVariantCollection* pObjectIDs, PWSTR pszDestinationFolderObjectID, IPortableDevicePropVariantCollection** ppResults) mut
			{
				return VT.Move(&this, pObjectIDs, pszDestinationFolderObjectID, ppResults);
			}
			public HRESULT Copy(IPortableDevicePropVariantCollection* pObjectIDs, PWSTR pszDestinationFolderObjectID, IPortableDevicePropVariantCollection** ppResults) mut
			{
				return VT.Copy(&this, pObjectIDs, pszDestinationFolderObjectID, ppResults);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceContent *self, uint32 dwFlags, PWSTR pszParentObjectID, IPortableDeviceValues* pFilter, IEnumPortableDeviceObjectIDs** ppEnum) EnumObjects;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDeviceProperties** ppProperties) Properties;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDeviceResources** ppResources) Transfer;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDeviceValues* pValues, PWSTR* ppszObjectID) CreateObjectWithPropertiesOnly;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDeviceValues* pValues, IStream** ppData, uint32* pdwOptimalWriteBufferSize, PWSTR* ppszCookie) CreateObjectWithPropertiesAndData;
				public new function HRESULT(IPortableDeviceContent *self, uint32 dwOptions, IPortableDevicePropVariantCollection* pObjectIDs, IPortableDevicePropVariantCollection** ppResults) Delete;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDevicePropVariantCollection* pPersistentUniqueIDs, IPortableDevicePropVariantCollection** ppObjectIDs) GetObjectIDsFromPersistentUniqueIDs;
				public new function HRESULT(IPortableDeviceContent *self) Cancel;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDevicePropVariantCollection* pObjectIDs, PWSTR pszDestinationFolderObjectID, IPortableDevicePropVariantCollection** ppResults) Move;
				public new function HRESULT(IPortableDeviceContent *self, IPortableDevicePropVariantCollection* pObjectIDs, PWSTR pszDestinationFolderObjectID, IPortableDevicePropVariantCollection** ppResults) Copy;
			}
		}
		[CRepr]
		public struct IPortableDeviceContent2 : IPortableDeviceContent
		{
			public const new Guid IID = .(0x9b4add96, 0xf6bf, 0x4034, 0x87, 0x08, 0xec, 0xa7, 0x2b, 0xf1, 0x05, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateObjectWithPropertiesAndData(PWSTR pszObjectID, IPortableDeviceValues* pProperties, IStream** ppData, uint32* pdwOptimalWriteBufferSize) mut
			{
				return VT.UpdateObjectWithPropertiesAndData(&this, pszObjectID, pProperties, ppData, pdwOptimalWriteBufferSize);
			}
			[CRepr]
			public struct VTable : IPortableDeviceContent.VTable
			{
				public new function HRESULT(IPortableDeviceContent2 *self, PWSTR pszObjectID, IPortableDeviceValues* pProperties, IStream** ppData, uint32* pdwOptimalWriteBufferSize) UpdateObjectWithPropertiesAndData;
			}
		}
		[CRepr]
		public struct IEnumPortableDeviceObjectIDs : IUnknown
		{
			public const new Guid IID = .(0x10ece955, 0xcf41, 0x4728, 0xbf, 0xa0, 0x41, 0xee, 0xdf, 0x1b, 0xbf, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cObjects, PWSTR* pObjIDs, uint32* pcFetched) mut
			{
				return VT.Next(&this, cObjects, pObjIDs, pcFetched);
			}
			public HRESULT Skip(uint32 cObjects) mut
			{
				return VT.Skip(&this, cObjects);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumPortableDeviceObjectIDs** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumPortableDeviceObjectIDs *self, uint32 cObjects, PWSTR* pObjIDs, uint32* pcFetched) Next;
				public new function HRESULT(IEnumPortableDeviceObjectIDs *self, uint32 cObjects) Skip;
				public new function HRESULT(IEnumPortableDeviceObjectIDs *self) Reset;
				public new function HRESULT(IEnumPortableDeviceObjectIDs *self, IEnumPortableDeviceObjectIDs** ppEnum) Clone;
				public new function HRESULT(IEnumPortableDeviceObjectIDs *self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceProperties : IUnknown
		{
			public const new Guid IID = .(0x7f6d695c, 0x03df, 0x4439, 0xa8, 0x09, 0x59, 0x26, 0x6b, 0xee, 0xe3, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedProperties(PWSTR pszObjectID, IPortableDeviceKeyCollection** ppKeys) mut
			{
				return VT.GetSupportedProperties(&this, pszObjectID, ppKeys);
			}
			public HRESULT GetPropertyAttributes(PWSTR pszObjectID, PROPERTYKEY* Key, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetPropertyAttributes(&this, pszObjectID, Key, ppAttributes);
			}
			public HRESULT GetValues(PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys, IPortableDeviceValues** ppValues) mut
			{
				return VT.GetValues(&this, pszObjectID, pKeys, ppValues);
			}
			public HRESULT SetValues(PWSTR pszObjectID, IPortableDeviceValues* pValues, IPortableDeviceValues** ppResults) mut
			{
				return VT.SetValues(&this, pszObjectID, pValues, ppResults);
			}
			public HRESULT Delete(PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys) mut
			{
				return VT.Delete(&this, pszObjectID, pKeys);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceProperties *self, PWSTR pszObjectID, IPortableDeviceKeyCollection** ppKeys) GetSupportedProperties;
				public new function HRESULT(IPortableDeviceProperties *self, PWSTR pszObjectID, PROPERTYKEY* Key, IPortableDeviceValues** ppAttributes) GetPropertyAttributes;
				public new function HRESULT(IPortableDeviceProperties *self, PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys, IPortableDeviceValues** ppValues) GetValues;
				public new function HRESULT(IPortableDeviceProperties *self, PWSTR pszObjectID, IPortableDeviceValues* pValues, IPortableDeviceValues** ppResults) SetValues;
				public new function HRESULT(IPortableDeviceProperties *self, PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys) Delete;
				public new function HRESULT(IPortableDeviceProperties *self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceResources : IUnknown
		{
			public const new Guid IID = .(0xfd8878ac, 0xd841, 0x4d17, 0x89, 0x1c, 0xe6, 0x82, 0x9c, 0xdb, 0x69, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedResources(PWSTR pszObjectID, IPortableDeviceKeyCollection** ppKeys) mut
			{
				return VT.GetSupportedResources(&this, pszObjectID, ppKeys);
			}
			public HRESULT GetResourceAttributes(PWSTR pszObjectID, PROPERTYKEY* Key, IPortableDeviceValues** ppResourceAttributes) mut
			{
				return VT.GetResourceAttributes(&this, pszObjectID, Key, ppResourceAttributes);
			}
			public HRESULT GetStream(PWSTR pszObjectID, PROPERTYKEY* Key, uint32 dwMode, uint32* pdwOptimalBufferSize, IStream** ppStream) mut
			{
				return VT.GetStream(&this, pszObjectID, Key, dwMode, pdwOptimalBufferSize, ppStream);
			}
			public HRESULT Delete(PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys) mut
			{
				return VT.Delete(&this, pszObjectID, pKeys);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT CreateResource(IPortableDeviceValues* pResourceAttributes, IStream** ppData, uint32* pdwOptimalWriteBufferSize, PWSTR* ppszCookie) mut
			{
				return VT.CreateResource(&this, pResourceAttributes, ppData, pdwOptimalWriteBufferSize, ppszCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceResources *self, PWSTR pszObjectID, IPortableDeviceKeyCollection** ppKeys) GetSupportedResources;
				public new function HRESULT(IPortableDeviceResources *self, PWSTR pszObjectID, PROPERTYKEY* Key, IPortableDeviceValues** ppResourceAttributes) GetResourceAttributes;
				public new function HRESULT(IPortableDeviceResources *self, PWSTR pszObjectID, PROPERTYKEY* Key, uint32 dwMode, uint32* pdwOptimalBufferSize, IStream** ppStream) GetStream;
				public new function HRESULT(IPortableDeviceResources *self, PWSTR pszObjectID, IPortableDeviceKeyCollection* pKeys) Delete;
				public new function HRESULT(IPortableDeviceResources *self) Cancel;
				public new function HRESULT(IPortableDeviceResources *self, IPortableDeviceValues* pResourceAttributes, IStream** ppData, uint32* pdwOptimalWriteBufferSize, PWSTR* ppszCookie) CreateResource;
			}
		}
		[CRepr]
		public struct IPortableDeviceCapabilities : IUnknown
		{
			public const new Guid IID = .(0x2c8c6dbf, 0xe3dc, 0x4061, 0xbe, 0xcc, 0x85, 0x42, 0xe8, 0x10, 0xd1, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedCommands(IPortableDeviceKeyCollection** ppCommands) mut
			{
				return VT.GetSupportedCommands(&this, ppCommands);
			}
			public HRESULT GetCommandOptions(PROPERTYKEY* Command, IPortableDeviceValues** ppOptions) mut
			{
				return VT.GetCommandOptions(&this, Command, ppOptions);
			}
			public HRESULT GetFunctionalCategories(IPortableDevicePropVariantCollection** ppCategories) mut
			{
				return VT.GetFunctionalCategories(&this, ppCategories);
			}
			public HRESULT GetFunctionalObjects(Guid* Category, IPortableDevicePropVariantCollection** ppObjectIDs) mut
			{
				return VT.GetFunctionalObjects(&this, Category, ppObjectIDs);
			}
			public HRESULT GetSupportedContentTypes(Guid* Category, IPortableDevicePropVariantCollection** ppContentTypes) mut
			{
				return VT.GetSupportedContentTypes(&this, Category, ppContentTypes);
			}
			public HRESULT GetSupportedFormats(Guid* ContentType, IPortableDevicePropVariantCollection** ppFormats) mut
			{
				return VT.GetSupportedFormats(&this, ContentType, ppFormats);
			}
			public HRESULT GetSupportedFormatProperties(Guid* Format, IPortableDeviceKeyCollection** ppKeys) mut
			{
				return VT.GetSupportedFormatProperties(&this, Format, ppKeys);
			}
			public HRESULT GetFixedPropertyAttributes(Guid* Format, PROPERTYKEY* Key, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetFixedPropertyAttributes(&this, Format, Key, ppAttributes);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT GetSupportedEvents(IPortableDevicePropVariantCollection** ppEvents) mut
			{
				return VT.GetSupportedEvents(&this, ppEvents);
			}
			public HRESULT GetEventOptions(Guid* Event, IPortableDeviceValues** ppOptions) mut
			{
				return VT.GetEventOptions(&this, Event, ppOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceCapabilities *self, IPortableDeviceKeyCollection** ppCommands) GetSupportedCommands;
				public new function HRESULT(IPortableDeviceCapabilities *self, PROPERTYKEY* Command, IPortableDeviceValues** ppOptions) GetCommandOptions;
				public new function HRESULT(IPortableDeviceCapabilities *self, IPortableDevicePropVariantCollection** ppCategories) GetFunctionalCategories;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* Category, IPortableDevicePropVariantCollection** ppObjectIDs) GetFunctionalObjects;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* Category, IPortableDevicePropVariantCollection** ppContentTypes) GetSupportedContentTypes;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* ContentType, IPortableDevicePropVariantCollection** ppFormats) GetSupportedFormats;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* Format, IPortableDeviceKeyCollection** ppKeys) GetSupportedFormatProperties;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* Format, PROPERTYKEY* Key, IPortableDeviceValues** ppAttributes) GetFixedPropertyAttributes;
				public new function HRESULT(IPortableDeviceCapabilities *self) Cancel;
				public new function HRESULT(IPortableDeviceCapabilities *self, IPortableDevicePropVariantCollection** ppEvents) GetSupportedEvents;
				public new function HRESULT(IPortableDeviceCapabilities *self, Guid* Event, IPortableDeviceValues** ppOptions) GetEventOptions;
			}
		}
		[CRepr]
		public struct IPortableDeviceEventCallback : IUnknown
		{
			public const new Guid IID = .(0xa8792a31, 0xf385, 0x493c, 0xa8, 0x93, 0x40, 0xf6, 0x4e, 0xb4, 0x5f, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEvent(IPortableDeviceValues* pEventParameters) mut
			{
				return VT.OnEvent(&this, pEventParameters);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceEventCallback *self, IPortableDeviceValues* pEventParameters) OnEvent;
			}
		}
		[CRepr]
		public struct IPortableDeviceDataStream : IStream
		{
			public const new Guid IID = .(0x88e04db3, 0x1012, 0x4d64, 0x99, 0x96, 0xf7, 0x03, 0xa9, 0x50, 0xd3, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectID(PWSTR* ppszObjectID) mut
			{
				return VT.GetObjectID(&this, ppszObjectID);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function HRESULT(IPortableDeviceDataStream *self, PWSTR* ppszObjectID) GetObjectID;
				public new function HRESULT(IPortableDeviceDataStream *self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceUnitsStream : IUnknown
		{
			public const new Guid IID = .(0x5e98025f, 0xbfc4, 0x47a2, 0x9a, 0x5f, 0xbc, 0x90, 0x0a, 0x50, 0x7c, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SeekInUnits(LARGE_INTEGER dlibMove, WPD_STREAM_UNITS units, uint32 dwOrigin, ULARGE_INTEGER* plibNewPosition) mut
			{
				return VT.SeekInUnits(&this, dlibMove, units, dwOrigin, plibNewPosition);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceUnitsStream *self, LARGE_INTEGER dlibMove, WPD_STREAM_UNITS units, uint32 dwOrigin, ULARGE_INTEGER* plibNewPosition) SeekInUnits;
				public new function HRESULT(IPortableDeviceUnitsStream *self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDevicePropertiesBulk : IUnknown
		{
			public const new Guid IID = .(0x482b05c0, 0x4056, 0x44ed, 0x9e, 0x0f, 0x5e, 0x23, 0xb0, 0x09, 0xda, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueueGetValuesByObjectList(IPortableDevicePropVariantCollection* pObjectIDs, IPortableDeviceKeyCollection* pKeys, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) mut
			{
				return VT.QueueGetValuesByObjectList(&this, pObjectIDs, pKeys, pCallback, pContext);
			}
			public HRESULT QueueGetValuesByObjectFormat(Guid* pguidObjectFormat, PWSTR pszParentObjectID, uint32 dwDepth, IPortableDeviceKeyCollection* pKeys, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) mut
			{
				return VT.QueueGetValuesByObjectFormat(&this, pguidObjectFormat, pszParentObjectID, dwDepth, pKeys, pCallback, pContext);
			}
			public HRESULT QueueSetValuesByObjectList(IPortableDeviceValuesCollection* pObjectValues, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) mut
			{
				return VT.QueueSetValuesByObjectList(&this, pObjectValues, pCallback, pContext);
			}
			public HRESULT Start(Guid* pContext) mut
			{
				return VT.Start(&this, pContext);
			}
			public HRESULT Cancel(Guid* pContext) mut
			{
				return VT.Cancel(&this, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDevicePropertiesBulk *self, IPortableDevicePropVariantCollection* pObjectIDs, IPortableDeviceKeyCollection* pKeys, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) QueueGetValuesByObjectList;
				public new function HRESULT(IPortableDevicePropertiesBulk *self, Guid* pguidObjectFormat, PWSTR pszParentObjectID, uint32 dwDepth, IPortableDeviceKeyCollection* pKeys, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) QueueGetValuesByObjectFormat;
				public new function HRESULT(IPortableDevicePropertiesBulk *self, IPortableDeviceValuesCollection* pObjectValues, IPortableDevicePropertiesBulkCallback* pCallback, Guid* pContext) QueueSetValuesByObjectList;
				public new function HRESULT(IPortableDevicePropertiesBulk *self, Guid* pContext) Start;
				public new function HRESULT(IPortableDevicePropertiesBulk *self, Guid* pContext) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDevicePropertiesBulkCallback : IUnknown
		{
			public const new Guid IID = .(0x9deacb80, 0x11e8, 0x40e3, 0xa9, 0xf3, 0xf5, 0x57, 0x98, 0x6a, 0x78, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStart(Guid* pContext) mut
			{
				return VT.OnStart(&this, pContext);
			}
			public HRESULT OnProgress(Guid* pContext, IPortableDeviceValuesCollection* pResults) mut
			{
				return VT.OnProgress(&this, pContext, pResults);
			}
			public HRESULT OnEnd(Guid* pContext, HRESULT hrStatus) mut
			{
				return VT.OnEnd(&this, pContext, hrStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDevicePropertiesBulkCallback *self, Guid* pContext) OnStart;
				public new function HRESULT(IPortableDevicePropertiesBulkCallback *self, Guid* pContext, IPortableDeviceValuesCollection* pResults) OnProgress;
				public new function HRESULT(IPortableDevicePropertiesBulkCallback *self, Guid* pContext, HRESULT hrStatus) OnEnd;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceManager : IUnknown
		{
			public const new Guid IID = .(0xa8abc4e9, 0xa84a, 0x47a9, 0x80, 0xb3, 0xc5, 0xd9, 0xb1, 0x72, 0xa9, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceServices(PWSTR pszPnPDeviceID, Guid* guidServiceCategory, PWSTR* pServices, uint32* pcServices) mut
			{
				return VT.GetDeviceServices(&this, pszPnPDeviceID, guidServiceCategory, pServices, pcServices);
			}
			public HRESULT GetDeviceForService(PWSTR pszPnPServiceID, PWSTR* ppszPnPDeviceID) mut
			{
				return VT.GetDeviceForService(&this, pszPnPServiceID, ppszPnPDeviceID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceManager *self, PWSTR pszPnPDeviceID, Guid* guidServiceCategory, PWSTR* pServices, uint32* pcServices) GetDeviceServices;
				public new function HRESULT(IPortableDeviceServiceManager *self, PWSTR pszPnPServiceID, PWSTR* ppszPnPDeviceID) GetDeviceForService;
			}
		}
		[CRepr]
		public struct IPortableDeviceService : IUnknown
		{
			public const new Guid IID = .(0xd3bd3a44, 0xd7b5, 0x40a9, 0x98, 0xb7, 0x2f, 0xa4, 0xd0, 0x1d, 0xec, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pszPnPServiceID, IPortableDeviceValues* pClientInfo) mut
			{
				return VT.Open(&this, pszPnPServiceID, pClientInfo);
			}
			public HRESULT Capabilities(IPortableDeviceServiceCapabilities** ppCapabilities) mut
			{
				return VT.Capabilities(&this, ppCapabilities);
			}
			public HRESULT Content(IPortableDeviceContent2** ppContent) mut
			{
				return VT.Content(&this, ppContent);
			}
			public HRESULT Methods(IPortableDeviceServiceMethods** ppMethods) mut
			{
				return VT.Methods(&this, ppMethods);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT Close() mut
			{
				return VT.Close(&this);
			}
			public HRESULT GetServiceObjectID(PWSTR* ppszServiceObjectID) mut
			{
				return VT.GetServiceObjectID(&this, ppszServiceObjectID);
			}
			public HRESULT GetPnPServiceID(PWSTR* ppszPnPServiceID) mut
			{
				return VT.GetPnPServiceID(&this, ppszPnPServiceID);
			}
			public HRESULT Advise(uint32 dwFlags, IPortableDeviceEventCallback* pCallback, IPortableDeviceValues* pParameters, PWSTR* ppszCookie) mut
			{
				return VT.Advise(&this, dwFlags, pCallback, pParameters, ppszCookie);
			}
			public HRESULT Unadvise(PWSTR pszCookie) mut
			{
				return VT.Unadvise(&this, pszCookie);
			}
			public HRESULT SendCommand(uint32 dwFlags, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) mut
			{
				return VT.SendCommand(&this, dwFlags, pParameters, ppResults);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceService *self, PWSTR pszPnPServiceID, IPortableDeviceValues* pClientInfo) Open;
				public new function HRESULT(IPortableDeviceService *self, IPortableDeviceServiceCapabilities** ppCapabilities) Capabilities;
				public new function HRESULT(IPortableDeviceService *self, IPortableDeviceContent2** ppContent) Content;
				public new function HRESULT(IPortableDeviceService *self, IPortableDeviceServiceMethods** ppMethods) Methods;
				public new function HRESULT(IPortableDeviceService *self) Cancel;
				public new function HRESULT(IPortableDeviceService *self) Close;
				public new function HRESULT(IPortableDeviceService *self, PWSTR* ppszServiceObjectID) GetServiceObjectID;
				public new function HRESULT(IPortableDeviceService *self, PWSTR* ppszPnPServiceID) GetPnPServiceID;
				public new function HRESULT(IPortableDeviceService *self, uint32 dwFlags, IPortableDeviceEventCallback* pCallback, IPortableDeviceValues* pParameters, PWSTR* ppszCookie) Advise;
				public new function HRESULT(IPortableDeviceService *self, PWSTR pszCookie) Unadvise;
				public new function HRESULT(IPortableDeviceService *self, uint32 dwFlags, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) SendCommand;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceCapabilities : IUnknown
		{
			public const new Guid IID = .(0x24dbd89d, 0x413e, 0x43e0, 0xbd, 0x5b, 0x19, 0x7f, 0x3c, 0x56, 0xc8, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedMethods(IPortableDevicePropVariantCollection** ppMethods) mut
			{
				return VT.GetSupportedMethods(&this, ppMethods);
			}
			public HRESULT GetSupportedMethodsByFormat(Guid* Format, IPortableDevicePropVariantCollection** ppMethods) mut
			{
				return VT.GetSupportedMethodsByFormat(&this, Format, ppMethods);
			}
			public HRESULT GetMethodAttributes(Guid* Method, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetMethodAttributes(&this, Method, ppAttributes);
			}
			public HRESULT GetMethodParameterAttributes(Guid* Method, PROPERTYKEY* Parameter, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetMethodParameterAttributes(&this, Method, Parameter, ppAttributes);
			}
			public HRESULT GetSupportedFormats(IPortableDevicePropVariantCollection** ppFormats) mut
			{
				return VT.GetSupportedFormats(&this, ppFormats);
			}
			public HRESULT GetFormatAttributes(Guid* Format, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetFormatAttributes(&this, Format, ppAttributes);
			}
			public HRESULT GetSupportedFormatProperties(Guid* Format, IPortableDeviceKeyCollection** ppKeys) mut
			{
				return VT.GetSupportedFormatProperties(&this, Format, ppKeys);
			}
			public HRESULT GetFormatPropertyAttributes(Guid* Format, PROPERTYKEY* Property, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetFormatPropertyAttributes(&this, Format, Property, ppAttributes);
			}
			public HRESULT GetSupportedEvents(IPortableDevicePropVariantCollection** ppEvents) mut
			{
				return VT.GetSupportedEvents(&this, ppEvents);
			}
			public HRESULT GetEventAttributes(Guid* Event, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetEventAttributes(&this, Event, ppAttributes);
			}
			public HRESULT GetEventParameterAttributes(Guid* Event, PROPERTYKEY* Parameter, IPortableDeviceValues** ppAttributes) mut
			{
				return VT.GetEventParameterAttributes(&this, Event, Parameter, ppAttributes);
			}
			public HRESULT GetInheritedServices(uint32 dwInheritanceType, IPortableDevicePropVariantCollection** ppServices) mut
			{
				return VT.GetInheritedServices(&this, dwInheritanceType, ppServices);
			}
			public HRESULT GetFormatRenderingProfiles(Guid* Format, IPortableDeviceValuesCollection** ppRenderingProfiles) mut
			{
				return VT.GetFormatRenderingProfiles(&this, Format, ppRenderingProfiles);
			}
			public HRESULT GetSupportedCommands(IPortableDeviceKeyCollection** ppCommands) mut
			{
				return VT.GetSupportedCommands(&this, ppCommands);
			}
			public HRESULT GetCommandOptions(PROPERTYKEY* Command, IPortableDeviceValues** ppOptions) mut
			{
				return VT.GetCommandOptions(&this, Command, ppOptions);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, IPortableDevicePropVariantCollection** ppMethods) GetSupportedMethods;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Format, IPortableDevicePropVariantCollection** ppMethods) GetSupportedMethodsByFormat;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Method, IPortableDeviceValues** ppAttributes) GetMethodAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Method, PROPERTYKEY* Parameter, IPortableDeviceValues** ppAttributes) GetMethodParameterAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, IPortableDevicePropVariantCollection** ppFormats) GetSupportedFormats;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Format, IPortableDeviceValues** ppAttributes) GetFormatAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Format, IPortableDeviceKeyCollection** ppKeys) GetSupportedFormatProperties;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Format, PROPERTYKEY* Property, IPortableDeviceValues** ppAttributes) GetFormatPropertyAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, IPortableDevicePropVariantCollection** ppEvents) GetSupportedEvents;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Event, IPortableDeviceValues** ppAttributes) GetEventAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Event, PROPERTYKEY* Parameter, IPortableDeviceValues** ppAttributes) GetEventParameterAttributes;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, uint32 dwInheritanceType, IPortableDevicePropVariantCollection** ppServices) GetInheritedServices;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, Guid* Format, IPortableDeviceValuesCollection** ppRenderingProfiles) GetFormatRenderingProfiles;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, IPortableDeviceKeyCollection** ppCommands) GetSupportedCommands;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self, PROPERTYKEY* Command, IPortableDeviceValues** ppOptions) GetCommandOptions;
				public new function HRESULT(IPortableDeviceServiceCapabilities *self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceMethods : IUnknown
		{
			public const new Guid IID = .(0xe20333c9, 0xfd34, 0x412d, 0xa3, 0x81, 0xcc, 0x6f, 0x2d, 0x82, 0x0d, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke(Guid* Method, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) mut
			{
				return VT.Invoke(&this, Method, pParameters, ppResults);
			}
			public HRESULT InvokeAsync(Guid* Method, IPortableDeviceValues* pParameters, IPortableDeviceServiceMethodCallback* pCallback) mut
			{
				return VT.InvokeAsync(&this, Method, pParameters, pCallback);
			}
			public HRESULT Cancel(IPortableDeviceServiceMethodCallback* pCallback) mut
			{
				return VT.Cancel(&this, pCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceMethods *self, Guid* Method, IPortableDeviceValues* pParameters, IPortableDeviceValues** ppResults) Invoke;
				public new function HRESULT(IPortableDeviceServiceMethods *self, Guid* Method, IPortableDeviceValues* pParameters, IPortableDeviceServiceMethodCallback* pCallback) InvokeAsync;
				public new function HRESULT(IPortableDeviceServiceMethods *self, IPortableDeviceServiceMethodCallback* pCallback) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceMethodCallback : IUnknown
		{
			public const new Guid IID = .(0xc424233c, 0xafce, 0x4828, 0xa7, 0x56, 0x7e, 0xd7, 0xa2, 0x35, 0x00, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus, IPortableDeviceValues* pResults) mut
			{
				return VT.OnComplete(&this, hrStatus, pResults);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceMethodCallback *self, HRESULT hrStatus, IPortableDeviceValues* pResults) OnComplete;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xe56b0534, 0xd9b9, 0x425c, 0x9b, 0x99, 0x75, 0xf9, 0x7c, 0xb3, 0xd7, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenAsync(PWSTR pszPnPServiceID, IPortableDeviceValues* pClientInfo, IPortableDeviceServiceOpenCallback* pCallback) mut
			{
				return VT.OpenAsync(&this, pszPnPServiceID, pClientInfo, pCallback);
			}
			public HRESULT CancelOpenAsync() mut
			{
				return VT.CancelOpenAsync(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceActivation *self, PWSTR pszPnPServiceID, IPortableDeviceValues* pClientInfo, IPortableDeviceServiceOpenCallback* pCallback) OpenAsync;
				public new function HRESULT(IPortableDeviceServiceActivation *self) CancelOpenAsync;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceOpenCallback : IUnknown
		{
			public const new Guid IID = .(0xbced49c8, 0x8efe, 0x41ed, 0x96, 0x0b, 0x61, 0x31, 0x3a, 0xbd, 0x47, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus) mut
			{
				return VT.OnComplete(&this, hrStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceServiceOpenCallback *self, HRESULT hrStatus) OnComplete;
			}
		}
		[CRepr]
		public struct IPortableDeviceDispatchFactory : IUnknown
		{
			public const new Guid IID = .(0x5e1eafc3, 0xe3d7, 0x4132, 0x96, 0xfa, 0x75, 0x9c, 0x0f, 0x9d, 0x1e, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceDispatch(PWSTR pszPnPDeviceID, IDispatch** ppDeviceDispatch) mut
			{
				return VT.GetDeviceDispatch(&this, pszPnPDeviceID, ppDeviceDispatch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceDispatchFactory *self, PWSTR pszPnPDeviceID, IDispatch** ppDeviceDispatch) GetDeviceDispatch;
			}
		}
		[CRepr]
		public struct IPortableDeviceWebControl : IDispatch
		{
			public const new Guid IID = .(0x94fc7953, 0x5ca1, 0x483a, 0x8a, 0xee, 0xdf, 0x52, 0xe7, 0x74, 0x7d, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceFromId(BSTR deviceId, IDispatch** ppDevice) mut
			{
				return VT.GetDeviceFromId(&this, deviceId, ppDevice);
			}
			public HRESULT GetDeviceFromIdAsync(BSTR deviceId, IDispatch* pCompletionHandler, IDispatch* pErrorHandler) mut
			{
				return VT.GetDeviceFromIdAsync(&this, deviceId, pCompletionHandler, pErrorHandler);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IPortableDeviceWebControl *self, BSTR deviceId, IDispatch** ppDevice) GetDeviceFromId;
				public new function HRESULT(IPortableDeviceWebControl *self, BSTR deviceId, IDispatch* pCompletionHandler, IDispatch* pErrorHandler) GetDeviceFromIdAsync;
			}
		}
		[CRepr]
		public struct IEnumPortableDeviceConnectors : IUnknown
		{
			public const new Guid IID = .(0xbfdef549, 0x9247, 0x454f, 0xbd, 0x82, 0x06, 0xfe, 0x80, 0x85, 0x3f, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cRequested, IPortableDeviceConnector** pConnectors, uint32* pcFetched) mut
			{
				return VT.Next(&this, cRequested, pConnectors, pcFetched);
			}
			public HRESULT Skip(uint32 cConnectors) mut
			{
				return VT.Skip(&this, cConnectors);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumPortableDeviceConnectors** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumPortableDeviceConnectors *self, uint32 cRequested, IPortableDeviceConnector** pConnectors, uint32* pcFetched) Next;
				public new function HRESULT(IEnumPortableDeviceConnectors *self, uint32 cConnectors) Skip;
				public new function HRESULT(IEnumPortableDeviceConnectors *self) Reset;
				public new function HRESULT(IEnumPortableDeviceConnectors *self, IEnumPortableDeviceConnectors** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IPortableDeviceConnector : IUnknown
		{
			public const new Guid IID = .(0x625e2df8, 0x6392, 0x4cf0, 0x9a, 0xd1, 0x3c, 0xfa, 0x5f, 0x17, 0x77, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(IConnectionRequestCallback* pCallback) mut
			{
				return VT.Connect(&this, pCallback);
			}
			public HRESULT Disconnect(IConnectionRequestCallback* pCallback) mut
			{
				return VT.Disconnect(&this, pCallback);
			}
			public HRESULT Cancel(IConnectionRequestCallback* pCallback) mut
			{
				return VT.Cancel(&this, pCallback);
			}
			public HRESULT GetProperty(DEVPROPKEY* pPropertyKey, uint32* pPropertyType, uint8** ppData, uint32* pcbData) mut
			{
				return VT.GetProperty(&this, pPropertyKey, pPropertyType, ppData, pcbData);
			}
			public HRESULT SetProperty(DEVPROPKEY* pPropertyKey, uint32 PropertyType, uint8* pData, uint32 cbData) mut
			{
				return VT.SetProperty(&this, pPropertyKey, PropertyType, pData, cbData);
			}
			public HRESULT GetPnPID(PWSTR* ppwszPnPID) mut
			{
				return VT.GetPnPID(&this, ppwszPnPID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPortableDeviceConnector *self, IConnectionRequestCallback* pCallback) Connect;
				public new function HRESULT(IPortableDeviceConnector *self, IConnectionRequestCallback* pCallback) Disconnect;
				public new function HRESULT(IPortableDeviceConnector *self, IConnectionRequestCallback* pCallback) Cancel;
				public new function HRESULT(IPortableDeviceConnector *self, DEVPROPKEY* pPropertyKey, uint32* pPropertyType, uint8** ppData, uint32* pcbData) GetProperty;
				public new function HRESULT(IPortableDeviceConnector *self, DEVPROPKEY* pPropertyKey, uint32 PropertyType, uint8* pData, uint32 cbData) SetProperty;
				public new function HRESULT(IPortableDeviceConnector *self, PWSTR* ppwszPnPID) GetPnPID;
			}
		}
		[CRepr]
		public struct IConnectionRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x272c9ae0, 0x7161, 0x4ae0, 0x91, 0xbd, 0x9f, 0x44, 0x8e, 0xe9, 0xc4, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus) mut
			{
				return VT.OnComplete(&this, hrStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IConnectionRequestCallback *self, HRESULT hrStatus) OnComplete;
			}
		}
		[CRepr]
		public struct IMediaRadioManager : IUnknown
		{
			public const new Guid IID = .(0x6cfdcab5, 0xfc47, 0x42a5, 0x92, 0x41, 0x07, 0x4b, 0x58, 0x83, 0x0e, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRadioInstances(IRadioInstanceCollection** ppCollection) mut
			{
				return VT.GetRadioInstances(&this, ppCollection);
			}
			public HRESULT OnSystemRadioStateChange(SYSTEM_RADIO_STATE sysRadioState, uint32 uTimeoutSec) mut
			{
				return VT.OnSystemRadioStateChange(&this, sysRadioState, uTimeoutSec);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMediaRadioManager *self, IRadioInstanceCollection** ppCollection) GetRadioInstances;
				public new function HRESULT(IMediaRadioManager *self, SYSTEM_RADIO_STATE sysRadioState, uint32 uTimeoutSec) OnSystemRadioStateChange;
			}
		}
		[CRepr]
		public struct IRadioInstanceCollection : IUnknown
		{
			public const new Guid IID = .(0xe5791fae, 0x5665, 0x4e0c, 0x95, 0xbe, 0x5f, 0xde, 0x31, 0x64, 0x41, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pcInstance) mut
			{
				return VT.GetCount(&this, pcInstance);
			}
			public HRESULT GetAt(uint32 uIndex, IRadioInstance** ppRadioInstance) mut
			{
				return VT.GetAt(&this, uIndex, ppRadioInstance);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRadioInstanceCollection *self, uint32* pcInstance) GetCount;
				public new function HRESULT(IRadioInstanceCollection *self, uint32 uIndex, IRadioInstance** ppRadioInstance) GetAt;
			}
		}
		[CRepr]
		public struct IRadioInstance : IUnknown
		{
			public const new Guid IID = .(0x70aa1c9e, 0xf2b4, 0x4c61, 0x86, 0xd3, 0x6b, 0x9f, 0xb7, 0x5f, 0xd1, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRadioManagerSignature(Guid* pguidSignature) mut
			{
				return VT.GetRadioManagerSignature(&this, pguidSignature);
			}
			public HRESULT GetInstanceSignature(BSTR* pbstrId) mut
			{
				return VT.GetInstanceSignature(&this, pbstrId);
			}
			public HRESULT GetFriendlyName(uint32 lcid, BSTR* pbstrName) mut
			{
				return VT.GetFriendlyName(&this, lcid, pbstrName);
			}
			public HRESULT GetRadioState(DEVICE_RADIO_STATE* pRadioState) mut
			{
				return VT.GetRadioState(&this, pRadioState);
			}
			public HRESULT SetRadioState(DEVICE_RADIO_STATE radioState, uint32 uTimeoutSec) mut
			{
				return VT.SetRadioState(&this, radioState, uTimeoutSec);
			}
			public BOOL IsMultiComm() mut
			{
				return VT.IsMultiComm(&this);
			}
			public BOOL IsAssociatingDevice() mut
			{
				return VT.IsAssociatingDevice(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRadioInstance *self, Guid* pguidSignature) GetRadioManagerSignature;
				public new function HRESULT(IRadioInstance *self, BSTR* pbstrId) GetInstanceSignature;
				public new function HRESULT(IRadioInstance *self, uint32 lcid, BSTR* pbstrName) GetFriendlyName;
				public new function HRESULT(IRadioInstance *self, DEVICE_RADIO_STATE* pRadioState) GetRadioState;
				public new function HRESULT(IRadioInstance *self, DEVICE_RADIO_STATE radioState, uint32 uTimeoutSec) SetRadioState;
				public new function BOOL(IRadioInstance *self) IsMultiComm;
				public new function BOOL(IRadioInstance *self) IsAssociatingDevice;
			}
		}
		[CRepr]
		public struct IMediaRadioManagerNotifySink : IUnknown
		{
			public const new Guid IID = .(0x89d81f5f, 0xc147, 0x49ed, 0xa1, 0x1c, 0x77, 0xb2, 0x0c, 0x31, 0xe7, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInstanceAdd(IRadioInstance* pRadioInstance) mut
			{
				return VT.OnInstanceAdd(&this, pRadioInstance);
			}
			public HRESULT OnInstanceRemove(BSTR bstrRadioInstanceId) mut
			{
				return VT.OnInstanceRemove(&this, bstrRadioInstanceId);
			}
			public HRESULT OnInstanceRadioChange(BSTR bstrRadioInstanceId, DEVICE_RADIO_STATE radioState) mut
			{
				return VT.OnInstanceRadioChange(&this, bstrRadioInstanceId, radioState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMediaRadioManagerNotifySink *self, IRadioInstance* pRadioInstance) OnInstanceAdd;
				public new function HRESULT(IMediaRadioManagerNotifySink *self, BSTR bstrRadioInstanceId) OnInstanceRemove;
				public new function HRESULT(IMediaRadioManagerNotifySink *self, BSTR bstrRadioInstanceId, DEVICE_RADIO_STATE radioState) OnInstanceRadioChange;
			}
		}
		
		// --- Functions ---
		
		[Import("dmprocessxmlfiltered.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMProcessConfigXMLFiltered(PWSTR pszXmlIn, PWSTR* rgszAllowedCspNodes, uint32 dwNumAllowedCspNodes, BSTR* pbstrXmlOut);
		
	}
}
