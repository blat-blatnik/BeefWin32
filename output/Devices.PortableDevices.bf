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
		
		public enum DELETE_OBJECT_OPTIONS : int32
		{
			NO_RECURSION = 0,
			WITH_RECURSION = 1,
		}
		public enum WPD_DEVICE_TYPES : int32
		{
			GENERIC = 0,
			CAMERA = 1,
			MEDIA_PLAYER = 2,
			PHONE = 3,
			VIDEO = 4,
			PERSONAL_INFORMATION_MANAGER = 5,
			AUDIO_RECORDER = 6,
		}
		public enum WpdAttributeForm : int32
		{
			UNSPECIFIED = 0,
			RANGE = 1,
			ENUMERATION = 2,
			REGULAR_EXPRESSION = 3,
			OBJECT_IDENTIFIER = 4,
		}
		public enum WpdParameterAttributeForm : int32
		{
			UNSPECIFIED = 0,
			RANGE = 1,
			ENUMERATION = 2,
			REGULAR_EXPRESSION = 3,
			OBJECT_IDENTIFIER = 4,
		}
		public enum WPD_DEVICE_TRANSPORTS : int32
		{
			UNSPECIFIED = 0,
			USB = 1,
			IP = 2,
			BLUETOOTH = 3,
		}
		public enum WPD_STORAGE_TYPE_VALUES : int32
		{
			UNDEFINED = 0,
			FIXED_ROM = 1,
			REMOVABLE_ROM = 2,
			FIXED_RAM = 3,
			REMOVABLE_RAM = 4,
		}
		public enum WPD_STORAGE_ACCESS_CAPABILITY_VALUES : int32
		{
			READWRITE = 0,
			READ_ONLY_WITHOUT_OBJECT_DELETION = 1,
			READ_ONLY_WITH_OBJECT_DELETION = 2,
		}
		public enum WPD_SMS_ENCODING_TYPES : int32
		{
			_7_BIT = 0,
			_8_BIT = 1,
			UTF_16 = 2,
		}
		public enum SMS_MESSAGE_TYPES : int32
		{
			TEXT_MESSAGE = 0,
			BINARY_MESSAGE = 1,
		}
		public enum WPD_POWER_SOURCES : int32
		{
			BATTERY = 0,
			EXTERNAL = 1,
		}
		public enum WPD_WHITE_BALANCE_SETTINGS : int32
		{
			UNDEFINED = 0,
			MANUAL = 1,
			AUTOMATIC = 2,
			ONE_PUSH_AUTOMATIC = 3,
			DAYLIGHT = 4,
			FLORESCENT = 5,
			TUNGSTEN = 6,
			FLASH = 7,
		}
		public enum WPD_FOCUS_MODES : int32
		{
			UNDEFINED = 0,
			MANUAL = 1,
			AUTOMATIC = 2,
			AUTOMATIC_MACRO = 3,
		}
		public enum WPD_EXPOSURE_METERING_MODES : int32
		{
			UNDEFINED = 0,
			AVERAGE = 1,
			CENTER_WEIGHTED_AVERAGE = 2,
			MULTI_SPOT = 3,
			CENTER_SPOT = 4,
		}
		public enum WPD_FLASH_MODES : int32
		{
			UNDEFINED = 0,
			AUTO = 1,
			OFF = 2,
			FILL = 3,
			RED_EYE_AUTO = 4,
			RED_EYE_FILL = 5,
			EXTERNAL_SYNC = 6,
		}
		public enum WPD_EXPOSURE_PROGRAM_MODES : int32
		{
			UNDEFINED = 0,
			MANUAL = 1,
			AUTO = 2,
			APERTURE_PRIORITY = 3,
			SHUTTER_PRIORITY = 4,
			CREATIVE = 5,
			ACTION = 6,
			PORTRAIT = 7,
		}
		public enum WPD_CAPTURE_MODES : int32
		{
			UNDEFINED = 0,
			NORMAL = 1,
			BURST = 2,
			TIMELAPSE = 3,
		}
		public enum WPD_EFFECT_MODES : int32
		{
			UNDEFINED = 0,
			COLOR = 1,
			BLACK_AND_WHITE = 2,
			SEPIA = 3,
		}
		public enum WPD_FOCUS_METERING_MODES : int32
		{
			UNDEFINED = 0,
			CENTER_SPOT = 1,
			MULTI_SPOT = 2,
		}
		public enum WPD_BITRATE_TYPES : int32
		{
			UNUSED = 0,
			DISCRETE = 1,
			VARIABLE = 2,
			FREE = 3,
		}
		public enum WPD_META_GENRES : int32
		{
			UNUSED = 0,
			GENERIC_MUSIC_AUDIO_FILE = 1,
			GENERIC_NON_MUSIC_AUDIO_FILE = 17,
			SPOKEN_WORD_AUDIO_BOOK_FILES = 18,
			SPOKEN_WORD_FILES_NON_AUDIO_BOOK = 19,
			SPOKEN_WORD_NEWS = 20,
			SPOKEN_WORD_TALK_SHOWS = 21,
			GENERIC_VIDEO_FILE = 33,
			NEWS_VIDEO_FILE = 34,
			MUSIC_VIDEO_FILE = 35,
			HOME_VIDEO_FILE = 36,
			FEATURE_FILM_VIDEO_FILE = 37,
			TELEVISION_VIDEO_FILE = 38,
			TRAINING_EDUCATIONAL_VIDEO_FILE = 39,
			PHOTO_MONTAGE_VIDEO_FILE = 40,
			GENERIC_NON_AUDIO_NON_VIDEO = 48,
			AUDIO_PODCAST = 64,
			VIDEO_PODCAST = 65,
			MIXED_PODCAST = 66,
		}
		public enum WPD_CROPPED_STATUS_VALUES : int32
		{
			NOT_CROPPED = 0,
			CROPPED = 1,
			SHOULD_NOT_BE_CROPPED = 2,
		}
		public enum WPD_COLOR_CORRECTED_STATUS_VALUES : int32
		{
			NOT_CORRECTED = 0,
			CORRECTED = 1,
			SHOULD_NOT_BE_CORRECTED = 2,
		}
		public enum WPD_VIDEO_SCAN_TYPES : int32
		{
			UNUSED = 0,
			PROGRESSIVE = 1,
			FIELD_INTERLEAVED_UPPER_FIRST = 2,
			FIELD_INTERLEAVED_LOWER_FIRST = 3,
			FIELD_SINGLE_UPPER_FIRST = 4,
			FIELD_SINGLE_LOWER_FIRST = 5,
			MIXED_INTERLACE = 6,
			MIXED_INTERLACE_AND_PROGRESSIVE = 7,
		}
		public enum WPD_OPERATION_STATES : int32
		{
			UNSPECIFIED = 0,
			STARTED = 1,
			RUNNING = 2,
			PAUSED = 3,
			CANCELLED = 4,
			FINISHED = 5,
			ABORTED = 6,
		}
		public enum WPD_SECTION_DATA_UNITS_VALUES : int32
		{
			BYTES = 0,
			MILLISECONDS = 1,
		}
		public enum WPD_RENDERING_INFORMATION_PROFILE_ENTRY_TYPES : int32
		{
			OBJECT = 0,
			RESOURCE = 1,
		}
		public enum WPD_COMMAND_ACCESS_TYPES : int32
		{
			READ = 1,
			READWRITE = 3,
			FROM_PROPERTY_WITH_STGM_ACCESS = 4,
			FROM_PROPERTY_WITH_FILE_ACCESS = 8,
			FROM_ATTRIBUTE_WITH_METHOD_ACCESS = 16,
		}
		public enum WPD_SERVICE_INHERITANCE_TYPES : int32
		{
			IMPLEMENTATION = 0,
		}
		public enum WPD_PARAMETER_USAGE_TYPES : int32
		{
			RETURN = 0,
			IN = 1,
			OUT = 2,
			INOUT = 3,
		}
		public enum WPD_STREAM_UNITS : int32
		{
			BYTES = 0,
			FRAMES = 1,
			ROWS = 2,
			MILLISECONDS = 4,
			MICROSECONDS = 8,
		}
		[AllowDuplicates]
		public enum DEVICE_RADIO_STATE : int32
		{
			RADIO_ON = 0,
			SW_RADIO_OFF = 1,
			HW_RADIO_OFF = 2,
			SW_HW_RADIO_OFF = 3,
			HW_RADIO_ON_UNCONTROLLABLE = 4,
			RADIO_INVALID = 5,
			HW_RADIO_OFF_UNCONTROLLABLE = 6,
			RADIO_MAX = 6,
		}
		public enum SYSTEM_RADIO_STATE : int32
		{
			ENABLED = 0,
			DISABLED = 1,
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
			
			public HRESULT GetIPortableDeviceValuesFromBuffer(uint8* pBuffer, uint32 dwInputBufferLength, out IPortableDeviceValues* ppParams) mut => VT.GetIPortableDeviceValuesFromBuffer(ref this, pBuffer, dwInputBufferLength, out ppParams);
			public HRESULT WriteIPortableDeviceValuesToBuffer(uint32 dwOutputBufferLength, ref IPortableDeviceValues pResults, uint8* pBuffer, out uint32 pdwBytesWritten) mut => VT.WriteIPortableDeviceValuesToBuffer(ref this, dwOutputBufferLength, ref pResults, pBuffer, out pdwBytesWritten);
			public HRESULT GetBufferFromIPortableDeviceValues(ref IPortableDeviceValues pSource, uint8** ppBuffer, out uint32 pdwBufferSize) mut => VT.GetBufferFromIPortableDeviceValues(ref this, ref pSource, ppBuffer, out pdwBufferSize);
			public HRESULT GetSerializedSize(ref IPortableDeviceValues pSource, out uint32 pdwSize) mut => VT.GetSerializedSize(ref this, ref pSource, out pdwSize);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWpdSerializer self, uint8* pBuffer, uint32 dwInputBufferLength, out IPortableDeviceValues* ppParams) GetIPortableDeviceValuesFromBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWpdSerializer self, uint32 dwOutputBufferLength, ref IPortableDeviceValues pResults, uint8* pBuffer, out uint32 pdwBytesWritten) WriteIPortableDeviceValuesToBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWpdSerializer self, ref IPortableDeviceValues pSource, uint8** ppBuffer, out uint32 pdwBufferSize) GetBufferFromIPortableDeviceValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWpdSerializer self, ref IPortableDeviceValues pSource, out uint32 pdwSize) GetSerializedSize;
			}
		}
		[CRepr]
		public struct IPortableDeviceValues : IUnknown
		{
			public const new Guid IID = .(0x6848f6f2, 0x3155, 0x4f86, 0xb6, 0xf5, 0x26, 0x3e, 0xee, 0xab, 0x31, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(ref uint32 pcelt) mut => VT.GetCount(ref this, ref pcelt);
			public HRESULT GetAt(uint32 index, out PROPERTYKEY pKey, out PROPVARIANT pValue) mut => VT.GetAt(ref this, index, out pKey, out pValue);
			public HRESULT SetValue(in PROPERTYKEY key, in PROPVARIANT pValue) mut => VT.SetValue(ref this, key, pValue);
			public HRESULT GetValue(in PROPERTYKEY key, out PROPVARIANT pValue) mut => VT.GetValue(ref this, key, out pValue);
			public HRESULT SetStringValue(in PROPERTYKEY key, PWSTR Value) mut => VT.SetStringValue(ref this, key, Value);
			public HRESULT GetStringValue(in PROPERTYKEY key, out PWSTR pValue) mut => VT.GetStringValue(ref this, key, out pValue);
			public HRESULT SetUnsignedIntegerValue(in PROPERTYKEY key, uint32 Value) mut => VT.SetUnsignedIntegerValue(ref this, key, Value);
			public HRESULT GetUnsignedIntegerValue(in PROPERTYKEY key, out uint32 pValue) mut => VT.GetUnsignedIntegerValue(ref this, key, out pValue);
			public HRESULT SetSignedIntegerValue(in PROPERTYKEY key, int32 Value) mut => VT.SetSignedIntegerValue(ref this, key, Value);
			public HRESULT GetSignedIntegerValue(in PROPERTYKEY key, out int32 pValue) mut => VT.GetSignedIntegerValue(ref this, key, out pValue);
			public HRESULT SetUnsignedLargeIntegerValue(in PROPERTYKEY key, uint64 Value) mut => VT.SetUnsignedLargeIntegerValue(ref this, key, Value);
			public HRESULT GetUnsignedLargeIntegerValue(in PROPERTYKEY key, out uint64 pValue) mut => VT.GetUnsignedLargeIntegerValue(ref this, key, out pValue);
			public HRESULT SetSignedLargeIntegerValue(in PROPERTYKEY key, int64 Value) mut => VT.SetSignedLargeIntegerValue(ref this, key, Value);
			public HRESULT GetSignedLargeIntegerValue(in PROPERTYKEY key, out int64 pValue) mut => VT.GetSignedLargeIntegerValue(ref this, key, out pValue);
			public HRESULT SetFloatValue(in PROPERTYKEY key, float Value) mut => VT.SetFloatValue(ref this, key, Value);
			public HRESULT GetFloatValue(in PROPERTYKEY key, out float pValue) mut => VT.GetFloatValue(ref this, key, out pValue);
			public HRESULT SetErrorValue(in PROPERTYKEY key, HRESULT Value) mut => VT.SetErrorValue(ref this, key, Value);
			public HRESULT GetErrorValue(in PROPERTYKEY key, out HRESULT pValue) mut => VT.GetErrorValue(ref this, key, out pValue);
			public HRESULT SetKeyValue(in PROPERTYKEY key, in PROPERTYKEY Value) mut => VT.SetKeyValue(ref this, key, Value);
			public HRESULT GetKeyValue(in PROPERTYKEY key, out PROPERTYKEY pValue) mut => VT.GetKeyValue(ref this, key, out pValue);
			public HRESULT SetBoolValue(in PROPERTYKEY key, BOOL Value) mut => VT.SetBoolValue(ref this, key, Value);
			public HRESULT GetBoolValue(in PROPERTYKEY key, out BOOL pValue) mut => VT.GetBoolValue(ref this, key, out pValue);
			public HRESULT SetIUnknownValue(in PROPERTYKEY key, ref IUnknown pValue) mut => VT.SetIUnknownValue(ref this, key, ref pValue);
			public HRESULT GetIUnknownValue(in PROPERTYKEY key, out IUnknown* ppValue) mut => VT.GetIUnknownValue(ref this, key, out ppValue);
			public HRESULT SetGuidValue(in PROPERTYKEY key, in Guid Value) mut => VT.SetGuidValue(ref this, key, Value);
			public HRESULT GetGuidValue(in PROPERTYKEY key, out Guid pValue) mut => VT.GetGuidValue(ref this, key, out pValue);
			public HRESULT SetBufferValue(in PROPERTYKEY key, uint8* pValue, uint32 cbValue) mut => VT.SetBufferValue(ref this, key, pValue, cbValue);
			public HRESULT GetBufferValue(in PROPERTYKEY key, uint8** ppValue, out uint32 pcbValue) mut => VT.GetBufferValue(ref this, key, ppValue, out pcbValue);
			public HRESULT SetIPortableDeviceValuesValue(in PROPERTYKEY key, ref IPortableDeviceValues pValue) mut => VT.SetIPortableDeviceValuesValue(ref this, key, ref pValue);
			public HRESULT GetIPortableDeviceValuesValue(in PROPERTYKEY key, out IPortableDeviceValues* ppValue) mut => VT.GetIPortableDeviceValuesValue(ref this, key, out ppValue);
			public HRESULT SetIPortableDevicePropVariantCollectionValue(in PROPERTYKEY key, ref IPortableDevicePropVariantCollection pValue) mut => VT.SetIPortableDevicePropVariantCollectionValue(ref this, key, ref pValue);
			public HRESULT GetIPortableDevicePropVariantCollectionValue(in PROPERTYKEY key, out IPortableDevicePropVariantCollection* ppValue) mut => VT.GetIPortableDevicePropVariantCollectionValue(ref this, key, out ppValue);
			public HRESULT SetIPortableDeviceKeyCollectionValue(in PROPERTYKEY key, ref IPortableDeviceKeyCollection pValue) mut => VT.SetIPortableDeviceKeyCollectionValue(ref this, key, ref pValue);
			public HRESULT GetIPortableDeviceKeyCollectionValue(in PROPERTYKEY key, out IPortableDeviceKeyCollection* ppValue) mut => VT.GetIPortableDeviceKeyCollectionValue(ref this, key, out ppValue);
			public HRESULT SetIPortableDeviceValuesCollectionValue(in PROPERTYKEY key, ref IPortableDeviceValuesCollection pValue) mut => VT.SetIPortableDeviceValuesCollectionValue(ref this, key, ref pValue);
			public HRESULT GetIPortableDeviceValuesCollectionValue(in PROPERTYKEY key, out IPortableDeviceValuesCollection* ppValue) mut => VT.GetIPortableDeviceValuesCollectionValue(ref this, key, out ppValue);
			public HRESULT RemoveValue(in PROPERTYKEY key) mut => VT.RemoveValue(ref this, key);
			public HRESULT CopyValuesFromPropertyStore(ref IPropertyStore pStore) mut => VT.CopyValuesFromPropertyStore(ref this, ref pStore);
			public HRESULT CopyValuesToPropertyStore(ref IPropertyStore pStore) mut => VT.CopyValuesToPropertyStore(ref this, ref pStore);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, ref uint32 pcelt) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, uint32 index, out PROPERTYKEY pKey, out PROPVARIANT pValue) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, in PROPVARIANT pValue) SetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out PROPVARIANT pValue) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, PWSTR Value) SetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out PWSTR pValue) GetStringValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, uint32 Value) SetUnsignedIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out uint32 pValue) GetUnsignedIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, int32 Value) SetSignedIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out int32 pValue) GetSignedIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, uint64 Value) SetUnsignedLargeIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out uint64 pValue) GetUnsignedLargeIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, int64 Value) SetSignedLargeIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out int64 pValue) GetSignedLargeIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, float Value) SetFloatValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out float pValue) GetFloatValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, HRESULT Value) SetErrorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out HRESULT pValue) GetErrorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, in PROPERTYKEY Value) SetKeyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out PROPERTYKEY pValue) GetKeyValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, BOOL Value) SetBoolValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out BOOL pValue) GetBoolValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, ref IUnknown pValue) SetIUnknownValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out IUnknown* ppValue) GetIUnknownValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, in Guid Value) SetGuidValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out Guid pValue) GetGuidValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, uint8* pValue, uint32 cbValue) SetBufferValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, uint8** ppValue, out uint32 pcbValue) GetBufferValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, ref IPortableDeviceValues pValue) SetIPortableDeviceValuesValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out IPortableDeviceValues* ppValue) GetIPortableDeviceValuesValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, ref IPortableDevicePropVariantCollection pValue) SetIPortableDevicePropVariantCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out IPortableDevicePropVariantCollection* ppValue) GetIPortableDevicePropVariantCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, ref IPortableDeviceKeyCollection pValue) SetIPortableDeviceKeyCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out IPortableDeviceKeyCollection* ppValue) GetIPortableDeviceKeyCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, ref IPortableDeviceValuesCollection pValue) SetIPortableDeviceValuesCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key, out IPortableDeviceValuesCollection* ppValue) GetIPortableDeviceValuesCollectionValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, in PROPERTYKEY key) RemoveValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, ref IPropertyStore pStore) CopyValuesFromPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self, ref IPropertyStore pStore) CopyValuesToPropertyStore;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValues self) Clear;
			}
		}
		[CRepr]
		public struct IPortableDeviceKeyCollection : IUnknown
		{
			public const new Guid IID = .(0xdada2357, 0xe0ad, 0x492e, 0x98, 0xdb, 0xdd, 0x61, 0xc5, 0x3b, 0xa3, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(ref uint32 pcElems) mut => VT.GetCount(ref this, ref pcElems);
			public HRESULT GetAt(uint32 dwIndex, ref PROPERTYKEY pKey) mut => VT.GetAt(ref this, dwIndex, ref pKey);
			public HRESULT Add(in PROPERTYKEY Key) mut => VT.Add(ref this, Key);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT RemoveAt(uint32 dwIndex) mut => VT.RemoveAt(ref this, dwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceKeyCollection self, ref uint32 pcElems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceKeyCollection self, uint32 dwIndex, ref PROPERTYKEY pKey) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceKeyCollection self, in PROPERTYKEY Key) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceKeyCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceKeyCollection self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDevicePropVariantCollection : IUnknown
		{
			public const new Guid IID = .(0x89b2e422, 0x4f1b, 0x4316, 0xbc, 0xef, 0xa4, 0x4a, 0xfe, 0xa8, 0x3e, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(ref uint32 pcElems) mut => VT.GetCount(ref this, ref pcElems);
			public HRESULT GetAt(uint32 dwIndex, ref PROPVARIANT pValue) mut => VT.GetAt(ref this, dwIndex, ref pValue);
			public HRESULT Add(in PROPVARIANT pValue) mut => VT.Add(ref this, pValue);
			public HRESULT ComGetType(out uint16 pvt) mut => VT.ComGetType(ref this, out pvt);
			public HRESULT ChangeType(uint16 vt) mut => VT.ChangeType(ref this, vt);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT RemoveAt(uint32 dwIndex) mut => VT.RemoveAt(ref this, dwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, ref uint32 pcElems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, uint32 dwIndex, ref PROPVARIANT pValue) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, in PROPVARIANT pValue) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, out uint16 pvt) ComGetType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, uint16 vt) ChangeType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropVariantCollection self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDeviceValuesCollection : IUnknown
		{
			public const new Guid IID = .(0x6e3f2d79, 0x4e07, 0x48c4, 0x82, 0x08, 0xd8, 0xc2, 0xe5, 0xaf, 0x4a, 0x99);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(ref uint32 pcElems) mut => VT.GetCount(ref this, ref pcElems);
			public HRESULT GetAt(uint32 dwIndex, out IPortableDeviceValues* ppValues) mut => VT.GetAt(ref this, dwIndex, out ppValues);
			public HRESULT Add(ref IPortableDeviceValues pValues) mut => VT.Add(ref this, ref pValues);
			public HRESULT Clear() mut => VT.Clear(ref this);
			public HRESULT RemoveAt(uint32 dwIndex) mut => VT.RemoveAt(ref this, dwIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValuesCollection self, ref uint32 pcElems) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValuesCollection self, uint32 dwIndex, out IPortableDeviceValues* ppValues) GetAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValuesCollection self, ref IPortableDeviceValues pValues) Add;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValuesCollection self) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceValuesCollection self, uint32 dwIndex) RemoveAt;
			}
		}
		[CRepr]
		public struct IPortableDeviceManager : IUnknown
		{
			public const new Guid IID = .(0xa1567595, 0x4c2f, 0x4574, 0xa6, 0xfa, 0xec, 0xef, 0x91, 0x7b, 0x9a, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevices(out PWSTR pPnPDeviceIDs, out uint32 pcPnPDeviceIDs) mut => VT.GetDevices(ref this, out pPnPDeviceIDs, out pcPnPDeviceIDs);
			public HRESULT RefreshDeviceList() mut => VT.RefreshDeviceList(ref this);
			public HRESULT GetDeviceFriendlyName(PWSTR pszPnPDeviceID, PWSTR pDeviceFriendlyName, out uint32 pcchDeviceFriendlyName) mut => VT.GetDeviceFriendlyName(ref this, pszPnPDeviceID, pDeviceFriendlyName, out pcchDeviceFriendlyName);
			public HRESULT GetDeviceDescription(PWSTR pszPnPDeviceID, PWSTR pDeviceDescription, out uint32 pcchDeviceDescription) mut => VT.GetDeviceDescription(ref this, pszPnPDeviceID, pDeviceDescription, out pcchDeviceDescription);
			public HRESULT GetDeviceManufacturer(PWSTR pszPnPDeviceID, PWSTR pDeviceManufacturer, out uint32 pcchDeviceManufacturer) mut => VT.GetDeviceManufacturer(ref this, pszPnPDeviceID, pDeviceManufacturer, out pcchDeviceManufacturer);
			public HRESULT GetDeviceProperty(PWSTR pszPnPDeviceID, PWSTR pszDevicePropertyName, out uint8 pData, out uint32 pcbData, out uint32 pdwType) mut => VT.GetDeviceProperty(ref this, pszPnPDeviceID, pszDevicePropertyName, out pData, out pcbData, out pdwType);
			public HRESULT GetPrivateDevices(out PWSTR pPnPDeviceIDs, out uint32 pcPnPDeviceIDs) mut => VT.GetPrivateDevices(ref this, out pPnPDeviceIDs, out pcPnPDeviceIDs);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, out PWSTR pPnPDeviceIDs, out uint32 pcPnPDeviceIDs) GetDevices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self) RefreshDeviceList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, PWSTR pszPnPDeviceID, PWSTR pDeviceFriendlyName, out uint32 pcchDeviceFriendlyName) GetDeviceFriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, PWSTR pszPnPDeviceID, PWSTR pDeviceDescription, out uint32 pcchDeviceDescription) GetDeviceDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, PWSTR pszPnPDeviceID, PWSTR pDeviceManufacturer, out uint32 pcchDeviceManufacturer) GetDeviceManufacturer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, PWSTR pszPnPDeviceID, PWSTR pszDevicePropertyName, out uint8 pData, out uint32 pcbData, out uint32 pdwType) GetDeviceProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceManager self, out PWSTR pPnPDeviceIDs, out uint32 pcPnPDeviceIDs) GetPrivateDevices;
			}
		}
		[CRepr]
		public struct IPortableDevice : IUnknown
		{
			public const new Guid IID = .(0x625e2df8, 0x6392, 0x4cf0, 0x9a, 0xd1, 0x3c, 0xfa, 0x5f, 0x17, 0x77, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pszPnPDeviceID, ref IPortableDeviceValues pClientInfo) mut => VT.Open(ref this, pszPnPDeviceID, ref pClientInfo);
			public HRESULT SendCommand(uint32 dwFlags, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) mut => VT.SendCommand(ref this, dwFlags, ref pParameters, out ppResults);
			public HRESULT Content(out IPortableDeviceContent* ppContent) mut => VT.Content(ref this, out ppContent);
			public HRESULT Capabilities(out IPortableDeviceCapabilities* ppCapabilities) mut => VT.Capabilities(ref this, out ppCapabilities);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT Advise(uint32 dwFlags, ref IPortableDeviceEventCallback pCallback, ref IPortableDeviceValues pParameters, out PWSTR ppszCookie) mut => VT.Advise(ref this, dwFlags, ref pCallback, ref pParameters, out ppszCookie);
			public HRESULT Unadvise(PWSTR pszCookie) mut => VT.Unadvise(ref this, pszCookie);
			public HRESULT GetPnPDeviceID(out PWSTR ppszPnPDeviceID) mut => VT.GetPnPDeviceID(ref this, out ppszPnPDeviceID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, PWSTR pszPnPDeviceID, ref IPortableDeviceValues pClientInfo) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, uint32 dwFlags, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) SendCommand;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, out IPortableDeviceContent* ppContent) Content;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, out IPortableDeviceCapabilities* ppCapabilities) Capabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, uint32 dwFlags, ref IPortableDeviceEventCallback pCallback, ref IPortableDeviceValues pParameters, out PWSTR ppszCookie) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, PWSTR pszCookie) Unadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevice self, out PWSTR ppszPnPDeviceID) GetPnPDeviceID;
			}
		}
		[CRepr]
		public struct IPortableDeviceContent : IUnknown
		{
			public const new Guid IID = .(0x6a96ed84, 0x7c73, 0x4480, 0x99, 0x38, 0xbf, 0x5a, 0xf4, 0x77, 0xd4, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumObjects(uint32 dwFlags, PWSTR pszParentObjectID, ref IPortableDeviceValues pFilter, out IEnumPortableDeviceObjectIDs* ppEnum) mut => VT.EnumObjects(ref this, dwFlags, pszParentObjectID, ref pFilter, out ppEnum);
			public HRESULT Properties(out IPortableDeviceProperties* ppProperties) mut => VT.Properties(ref this, out ppProperties);
			public HRESULT Transfer(out IPortableDeviceResources* ppResources) mut => VT.Transfer(ref this, out ppResources);
			public HRESULT CreateObjectWithPropertiesOnly(ref IPortableDeviceValues pValues, out PWSTR ppszObjectID) mut => VT.CreateObjectWithPropertiesOnly(ref this, ref pValues, out ppszObjectID);
			public HRESULT CreateObjectWithPropertiesAndData(ref IPortableDeviceValues pValues, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize, out PWSTR ppszCookie) mut => VT.CreateObjectWithPropertiesAndData(ref this, ref pValues, out ppData, out pdwOptimalWriteBufferSize, out ppszCookie);
			public HRESULT Delete(uint32 dwOptions, ref IPortableDevicePropVariantCollection pObjectIDs, out IPortableDevicePropVariantCollection* ppResults) mut => VT.Delete(ref this, dwOptions, ref pObjectIDs, out ppResults);
			public HRESULT GetObjectIDsFromPersistentUniqueIDs(ref IPortableDevicePropVariantCollection pPersistentUniqueIDs, out IPortableDevicePropVariantCollection* ppObjectIDs) mut => VT.GetObjectIDsFromPersistentUniqueIDs(ref this, ref pPersistentUniqueIDs, out ppObjectIDs);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Move(ref IPortableDevicePropVariantCollection pObjectIDs, PWSTR pszDestinationFolderObjectID, out IPortableDevicePropVariantCollection* ppResults) mut => VT.Move(ref this, ref pObjectIDs, pszDestinationFolderObjectID, out ppResults);
			public HRESULT Copy(ref IPortableDevicePropVariantCollection pObjectIDs, PWSTR pszDestinationFolderObjectID, out IPortableDevicePropVariantCollection* ppResults) mut => VT.Copy(ref this, ref pObjectIDs, pszDestinationFolderObjectID, out ppResults);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, uint32 dwFlags, PWSTR pszParentObjectID, ref IPortableDeviceValues pFilter, out IEnumPortableDeviceObjectIDs* ppEnum) EnumObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, out IPortableDeviceProperties* ppProperties) Properties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, out IPortableDeviceResources* ppResources) Transfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, ref IPortableDeviceValues pValues, out PWSTR ppszObjectID) CreateObjectWithPropertiesOnly;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, ref IPortableDeviceValues pValues, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize, out PWSTR ppszCookie) CreateObjectWithPropertiesAndData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, uint32 dwOptions, ref IPortableDevicePropVariantCollection pObjectIDs, out IPortableDevicePropVariantCollection* ppResults) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, ref IPortableDevicePropVariantCollection pPersistentUniqueIDs, out IPortableDevicePropVariantCollection* ppObjectIDs) GetObjectIDsFromPersistentUniqueIDs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, ref IPortableDevicePropVariantCollection pObjectIDs, PWSTR pszDestinationFolderObjectID, out IPortableDevicePropVariantCollection* ppResults) Move;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent self, ref IPortableDevicePropVariantCollection pObjectIDs, PWSTR pszDestinationFolderObjectID, out IPortableDevicePropVariantCollection* ppResults) Copy;
			}
		}
		[CRepr]
		public struct IPortableDeviceContent2 : IPortableDeviceContent
		{
			public const new Guid IID = .(0x9b4add96, 0xf6bf, 0x4034, 0x87, 0x08, 0xec, 0xa7, 0x2b, 0xf1, 0x05, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateObjectWithPropertiesAndData(PWSTR pszObjectID, ref IPortableDeviceValues pProperties, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize) mut => VT.UpdateObjectWithPropertiesAndData(ref this, pszObjectID, ref pProperties, out ppData, out pdwOptimalWriteBufferSize);

			[CRepr]
			public struct VTable : IPortableDeviceContent.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceContent2 self, PWSTR pszObjectID, ref IPortableDeviceValues pProperties, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize) UpdateObjectWithPropertiesAndData;
			}
		}
		[CRepr]
		public struct IEnumPortableDeviceObjectIDs : IUnknown
		{
			public const new Guid IID = .(0x10ece955, 0xcf41, 0x4728, 0xbf, 0xa0, 0x41, 0xee, 0xdf, 0x1b, 0xbf, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cObjects, PWSTR* pObjIDs, out uint32 pcFetched) mut => VT.Next(ref this, cObjects, pObjIDs, out pcFetched);
			public HRESULT Skip(uint32 cObjects) mut => VT.Skip(ref this, cObjects);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumPortableDeviceObjectIDs* ppEnum) mut => VT.Clone(ref this, out ppEnum);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceObjectIDs self, uint32 cObjects, PWSTR* pObjIDs, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceObjectIDs self, uint32 cObjects) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceObjectIDs self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceObjectIDs self, out IEnumPortableDeviceObjectIDs* ppEnum) Clone;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceObjectIDs self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceProperties : IUnknown
		{
			public const new Guid IID = .(0x7f6d695c, 0x03df, 0x4439, 0xa8, 0x09, 0x59, 0x26, 0x6b, 0xee, 0xe3, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedProperties(PWSTR pszObjectID, out IPortableDeviceKeyCollection* ppKeys) mut => VT.GetSupportedProperties(ref this, pszObjectID, out ppKeys);
			public HRESULT GetPropertyAttributes(PWSTR pszObjectID, in PROPERTYKEY Key, out IPortableDeviceValues* ppAttributes) mut => VT.GetPropertyAttributes(ref this, pszObjectID, Key, out ppAttributes);
			public HRESULT GetValues(PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys, out IPortableDeviceValues* ppValues) mut => VT.GetValues(ref this, pszObjectID, ref pKeys, out ppValues);
			public HRESULT SetValues(PWSTR pszObjectID, ref IPortableDeviceValues pValues, out IPortableDeviceValues* ppResults) mut => VT.SetValues(ref this, pszObjectID, ref pValues, out ppResults);
			public HRESULT Delete(PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys) mut => VT.Delete(ref this, pszObjectID, ref pKeys);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self, PWSTR pszObjectID, out IPortableDeviceKeyCollection* ppKeys) GetSupportedProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self, PWSTR pszObjectID, in PROPERTYKEY Key, out IPortableDeviceValues* ppAttributes) GetPropertyAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self, PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys, out IPortableDeviceValues* ppValues) GetValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self, PWSTR pszObjectID, ref IPortableDeviceValues pValues, out IPortableDeviceValues* ppResults) SetValues;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self, PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceProperties self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceResources : IUnknown
		{
			public const new Guid IID = .(0xfd8878ac, 0xd841, 0x4d17, 0x89, 0x1c, 0xe6, 0x82, 0x9c, 0xdb, 0x69, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedResources(PWSTR pszObjectID, out IPortableDeviceKeyCollection* ppKeys) mut => VT.GetSupportedResources(ref this, pszObjectID, out ppKeys);
			public HRESULT GetResourceAttributes(PWSTR pszObjectID, in PROPERTYKEY Key, out IPortableDeviceValues* ppResourceAttributes) mut => VT.GetResourceAttributes(ref this, pszObjectID, Key, out ppResourceAttributes);
			public HRESULT GetStream(PWSTR pszObjectID, in PROPERTYKEY Key, uint32 dwMode, out uint32 pdwOptimalBufferSize, out IStream* ppStream) mut => VT.GetStream(ref this, pszObjectID, Key, dwMode, out pdwOptimalBufferSize, out ppStream);
			public HRESULT Delete(PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys) mut => VT.Delete(ref this, pszObjectID, ref pKeys);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT CreateResource(ref IPortableDeviceValues pResourceAttributes, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize, out PWSTR ppszCookie) mut => VT.CreateResource(ref this, ref pResourceAttributes, out ppData, out pdwOptimalWriteBufferSize, out ppszCookie);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self, PWSTR pszObjectID, out IPortableDeviceKeyCollection* ppKeys) GetSupportedResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self, PWSTR pszObjectID, in PROPERTYKEY Key, out IPortableDeviceValues* ppResourceAttributes) GetResourceAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self, PWSTR pszObjectID, in PROPERTYKEY Key, uint32 dwMode, out uint32 pdwOptimalBufferSize, out IStream* ppStream) GetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self, PWSTR pszObjectID, ref IPortableDeviceKeyCollection pKeys) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceResources self, ref IPortableDeviceValues pResourceAttributes, out IStream* ppData, out uint32 pdwOptimalWriteBufferSize, out PWSTR ppszCookie) CreateResource;
			}
		}
		[CRepr]
		public struct IPortableDeviceCapabilities : IUnknown
		{
			public const new Guid IID = .(0x2c8c6dbf, 0xe3dc, 0x4061, 0xbe, 0xcc, 0x85, 0x42, 0xe8, 0x10, 0xd1, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedCommands(out IPortableDeviceKeyCollection* ppCommands) mut => VT.GetSupportedCommands(ref this, out ppCommands);
			public HRESULT GetCommandOptions(in PROPERTYKEY Command, out IPortableDeviceValues* ppOptions) mut => VT.GetCommandOptions(ref this, Command, out ppOptions);
			public HRESULT GetFunctionalCategories(out IPortableDevicePropVariantCollection* ppCategories) mut => VT.GetFunctionalCategories(ref this, out ppCategories);
			public HRESULT GetFunctionalObjects(in Guid Category, out IPortableDevicePropVariantCollection* ppObjectIDs) mut => VT.GetFunctionalObjects(ref this, Category, out ppObjectIDs);
			public HRESULT GetSupportedContentTypes(in Guid Category, out IPortableDevicePropVariantCollection* ppContentTypes) mut => VT.GetSupportedContentTypes(ref this, Category, out ppContentTypes);
			public HRESULT GetSupportedFormats(in Guid ContentType, out IPortableDevicePropVariantCollection* ppFormats) mut => VT.GetSupportedFormats(ref this, ContentType, out ppFormats);
			public HRESULT GetSupportedFormatProperties(in Guid Format, out IPortableDeviceKeyCollection* ppKeys) mut => VT.GetSupportedFormatProperties(ref this, Format, out ppKeys);
			public HRESULT GetFixedPropertyAttributes(in Guid Format, in PROPERTYKEY Key, out IPortableDeviceValues* ppAttributes) mut => VT.GetFixedPropertyAttributes(ref this, Format, Key, out ppAttributes);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT GetSupportedEvents(out IPortableDevicePropVariantCollection* ppEvents) mut => VT.GetSupportedEvents(ref this, out ppEvents);
			public HRESULT GetEventOptions(in Guid Event, out IPortableDeviceValues* ppOptions) mut => VT.GetEventOptions(ref this, Event, out ppOptions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, out IPortableDeviceKeyCollection* ppCommands) GetSupportedCommands;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in PROPERTYKEY Command, out IPortableDeviceValues* ppOptions) GetCommandOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, out IPortableDevicePropVariantCollection* ppCategories) GetFunctionalCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid Category, out IPortableDevicePropVariantCollection* ppObjectIDs) GetFunctionalObjects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid Category, out IPortableDevicePropVariantCollection* ppContentTypes) GetSupportedContentTypes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid ContentType, out IPortableDevicePropVariantCollection* ppFormats) GetSupportedFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid Format, out IPortableDeviceKeyCollection* ppKeys) GetSupportedFormatProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid Format, in PROPERTYKEY Key, out IPortableDeviceValues* ppAttributes) GetFixedPropertyAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, out IPortableDevicePropVariantCollection* ppEvents) GetSupportedEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceCapabilities self, in Guid Event, out IPortableDeviceValues* ppOptions) GetEventOptions;
			}
		}
		[CRepr]
		public struct IPortableDeviceEventCallback : IUnknown
		{
			public const new Guid IID = .(0xa8792a31, 0xf385, 0x493c, 0xa8, 0x93, 0x40, 0xf6, 0x4e, 0xb4, 0x5f, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnEvent(ref IPortableDeviceValues pEventParameters) mut => VT.OnEvent(ref this, ref pEventParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceEventCallback self, ref IPortableDeviceValues pEventParameters) OnEvent;
			}
		}
		[CRepr]
		public struct IPortableDeviceDataStream : IStream
		{
			public const new Guid IID = .(0x88e04db3, 0x1012, 0x4d64, 0x99, 0x96, 0xf7, 0x03, 0xa9, 0x50, 0xd3, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetObjectID(out PWSTR ppszObjectID) mut => VT.GetObjectID(ref this, out ppszObjectID);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceDataStream self, out PWSTR ppszObjectID) GetObjectID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceDataStream self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceUnitsStream : IUnknown
		{
			public const new Guid IID = .(0x5e98025f, 0xbfc4, 0x47a2, 0x9a, 0x5f, 0xbc, 0x90, 0x0a, 0x50, 0x7c, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SeekInUnits(LARGE_INTEGER dlibMove, WPD_STREAM_UNITS units, uint32 dwOrigin, ULARGE_INTEGER* plibNewPosition) mut => VT.SeekInUnits(ref this, dlibMove, units, dwOrigin, plibNewPosition);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceUnitsStream self, LARGE_INTEGER dlibMove, WPD_STREAM_UNITS units, uint32 dwOrigin, ULARGE_INTEGER* plibNewPosition) SeekInUnits;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceUnitsStream self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDevicePropertiesBulk : IUnknown
		{
			public const new Guid IID = .(0x482b05c0, 0x4056, 0x44ed, 0x9e, 0x0f, 0x5e, 0x23, 0xb0, 0x09, 0xda, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueueGetValuesByObjectList(ref IPortableDevicePropVariantCollection pObjectIDs, ref IPortableDeviceKeyCollection pKeys, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) mut => VT.QueueGetValuesByObjectList(ref this, ref pObjectIDs, ref pKeys, ref pCallback, out pContext);
			public HRESULT QueueGetValuesByObjectFormat(in Guid pguidObjectFormat, PWSTR pszParentObjectID, uint32 dwDepth, ref IPortableDeviceKeyCollection pKeys, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) mut => VT.QueueGetValuesByObjectFormat(ref this, pguidObjectFormat, pszParentObjectID, dwDepth, ref pKeys, ref pCallback, out pContext);
			public HRESULT QueueSetValuesByObjectList(ref IPortableDeviceValuesCollection pObjectValues, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) mut => VT.QueueSetValuesByObjectList(ref this, ref pObjectValues, ref pCallback, out pContext);
			public HRESULT Start(in Guid pContext) mut => VT.Start(ref this, pContext);
			public HRESULT Cancel(in Guid pContext) mut => VT.Cancel(ref this, pContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulk self, ref IPortableDevicePropVariantCollection pObjectIDs, ref IPortableDeviceKeyCollection pKeys, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) QueueGetValuesByObjectList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulk self, in Guid pguidObjectFormat, PWSTR pszParentObjectID, uint32 dwDepth, ref IPortableDeviceKeyCollection pKeys, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) QueueGetValuesByObjectFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulk self, ref IPortableDeviceValuesCollection pObjectValues, ref IPortableDevicePropertiesBulkCallback pCallback, out Guid pContext) QueueSetValuesByObjectList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulk self, in Guid pContext) Start;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulk self, in Guid pContext) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDevicePropertiesBulkCallback : IUnknown
		{
			public const new Guid IID = .(0x9deacb80, 0x11e8, 0x40e3, 0xa9, 0xf3, 0xf5, 0x57, 0x98, 0x6a, 0x78, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStart(in Guid pContext) mut => VT.OnStart(ref this, pContext);
			public HRESULT OnProgress(in Guid pContext, ref IPortableDeviceValuesCollection pResults) mut => VT.OnProgress(ref this, pContext, ref pResults);
			public HRESULT OnEnd(in Guid pContext, HRESULT hrStatus) mut => VT.OnEnd(ref this, pContext, hrStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulkCallback self, in Guid pContext) OnStart;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulkCallback self, in Guid pContext, ref IPortableDeviceValuesCollection pResults) OnProgress;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDevicePropertiesBulkCallback self, in Guid pContext, HRESULT hrStatus) OnEnd;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceManager : IUnknown
		{
			public const new Guid IID = .(0xa8abc4e9, 0xa84a, 0x47a9, 0x80, 0xb3, 0xc5, 0xd9, 0xb1, 0x72, 0xa9, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceServices(PWSTR pszPnPDeviceID, in Guid guidServiceCategory, out PWSTR pServices, out uint32 pcServices) mut => VT.GetDeviceServices(ref this, pszPnPDeviceID, guidServiceCategory, out pServices, out pcServices);
			public HRESULT GetDeviceForService(PWSTR pszPnPServiceID, out PWSTR ppszPnPDeviceID) mut => VT.GetDeviceForService(ref this, pszPnPServiceID, out ppszPnPDeviceID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceManager self, PWSTR pszPnPDeviceID, in Guid guidServiceCategory, out PWSTR pServices, out uint32 pcServices) GetDeviceServices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceManager self, PWSTR pszPnPServiceID, out PWSTR ppszPnPDeviceID) GetDeviceForService;
			}
		}
		[CRepr]
		public struct IPortableDeviceService : IUnknown
		{
			public const new Guid IID = .(0xd3bd3a44, 0xd7b5, 0x40a9, 0x98, 0xb7, 0x2f, 0xa4, 0xd0, 0x1d, 0xec, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pszPnPServiceID, ref IPortableDeviceValues pClientInfo) mut => VT.Open(ref this, pszPnPServiceID, ref pClientInfo);
			public HRESULT Capabilities(out IPortableDeviceServiceCapabilities* ppCapabilities) mut => VT.Capabilities(ref this, out ppCapabilities);
			public HRESULT Content(out IPortableDeviceContent2* ppContent) mut => VT.Content(ref this, out ppContent);
			public HRESULT Methods(out IPortableDeviceServiceMethods* ppMethods) mut => VT.Methods(ref this, out ppMethods);
			public HRESULT Cancel() mut => VT.Cancel(ref this);
			public HRESULT Close() mut => VT.Close(ref this);
			public HRESULT GetServiceObjectID(out PWSTR ppszServiceObjectID) mut => VT.GetServiceObjectID(ref this, out ppszServiceObjectID);
			public HRESULT GetPnPServiceID(out PWSTR ppszPnPServiceID) mut => VT.GetPnPServiceID(ref this, out ppszPnPServiceID);
			public HRESULT Advise(uint32 dwFlags, ref IPortableDeviceEventCallback pCallback, ref IPortableDeviceValues pParameters, out PWSTR ppszCookie) mut => VT.Advise(ref this, dwFlags, ref pCallback, ref pParameters, out ppszCookie);
			public HRESULT Unadvise(PWSTR pszCookie) mut => VT.Unadvise(ref this, pszCookie);
			public HRESULT SendCommand(uint32 dwFlags, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) mut => VT.SendCommand(ref this, dwFlags, ref pParameters, out ppResults);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, PWSTR pszPnPServiceID, ref IPortableDeviceValues pClientInfo) Open;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, out IPortableDeviceServiceCapabilities* ppCapabilities) Capabilities;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, out IPortableDeviceContent2* ppContent) Content;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, out IPortableDeviceServiceMethods* ppMethods) Methods;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self) Close;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, out PWSTR ppszServiceObjectID) GetServiceObjectID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, out PWSTR ppszPnPServiceID) GetPnPServiceID;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, uint32 dwFlags, ref IPortableDeviceEventCallback pCallback, ref IPortableDeviceValues pParameters, out PWSTR ppszCookie) Advise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, PWSTR pszCookie) Unadvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceService self, uint32 dwFlags, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) SendCommand;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceCapabilities : IUnknown
		{
			public const new Guid IID = .(0x24dbd89d, 0x413e, 0x43e0, 0xbd, 0x5b, 0x19, 0x7f, 0x3c, 0x56, 0xc8, 0x86);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedMethods(out IPortableDevicePropVariantCollection* ppMethods) mut => VT.GetSupportedMethods(ref this, out ppMethods);
			public HRESULT GetSupportedMethodsByFormat(in Guid Format, out IPortableDevicePropVariantCollection* ppMethods) mut => VT.GetSupportedMethodsByFormat(ref this, Format, out ppMethods);
			public HRESULT GetMethodAttributes(in Guid Method, out IPortableDeviceValues* ppAttributes) mut => VT.GetMethodAttributes(ref this, Method, out ppAttributes);
			public HRESULT GetMethodParameterAttributes(in Guid Method, in PROPERTYKEY Parameter, out IPortableDeviceValues* ppAttributes) mut => VT.GetMethodParameterAttributes(ref this, Method, Parameter, out ppAttributes);
			public HRESULT GetSupportedFormats(out IPortableDevicePropVariantCollection* ppFormats) mut => VT.GetSupportedFormats(ref this, out ppFormats);
			public HRESULT GetFormatAttributes(in Guid Format, out IPortableDeviceValues* ppAttributes) mut => VT.GetFormatAttributes(ref this, Format, out ppAttributes);
			public HRESULT GetSupportedFormatProperties(in Guid Format, out IPortableDeviceKeyCollection* ppKeys) mut => VT.GetSupportedFormatProperties(ref this, Format, out ppKeys);
			public HRESULT GetFormatPropertyAttributes(in Guid Format, in PROPERTYKEY Property, out IPortableDeviceValues* ppAttributes) mut => VT.GetFormatPropertyAttributes(ref this, Format, Property, out ppAttributes);
			public HRESULT GetSupportedEvents(out IPortableDevicePropVariantCollection* ppEvents) mut => VT.GetSupportedEvents(ref this, out ppEvents);
			public HRESULT GetEventAttributes(in Guid Event, out IPortableDeviceValues* ppAttributes) mut => VT.GetEventAttributes(ref this, Event, out ppAttributes);
			public HRESULT GetEventParameterAttributes(in Guid Event, in PROPERTYKEY Parameter, out IPortableDeviceValues* ppAttributes) mut => VT.GetEventParameterAttributes(ref this, Event, Parameter, out ppAttributes);
			public HRESULT GetInheritedServices(uint32 dwInheritanceType, out IPortableDevicePropVariantCollection* ppServices) mut => VT.GetInheritedServices(ref this, dwInheritanceType, out ppServices);
			public HRESULT GetFormatRenderingProfiles(in Guid Format, out IPortableDeviceValuesCollection* ppRenderingProfiles) mut => VT.GetFormatRenderingProfiles(ref this, Format, out ppRenderingProfiles);
			public HRESULT GetSupportedCommands(out IPortableDeviceKeyCollection* ppCommands) mut => VT.GetSupportedCommands(ref this, out ppCommands);
			public HRESULT GetCommandOptions(in PROPERTYKEY Command, out IPortableDeviceValues* ppOptions) mut => VT.GetCommandOptions(ref this, Command, out ppOptions);
			public HRESULT Cancel() mut => VT.Cancel(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, out IPortableDevicePropVariantCollection* ppMethods) GetSupportedMethods;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Format, out IPortableDevicePropVariantCollection* ppMethods) GetSupportedMethodsByFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Method, out IPortableDeviceValues* ppAttributes) GetMethodAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Method, in PROPERTYKEY Parameter, out IPortableDeviceValues* ppAttributes) GetMethodParameterAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, out IPortableDevicePropVariantCollection* ppFormats) GetSupportedFormats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Format, out IPortableDeviceValues* ppAttributes) GetFormatAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Format, out IPortableDeviceKeyCollection* ppKeys) GetSupportedFormatProperties;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Format, in PROPERTYKEY Property, out IPortableDeviceValues* ppAttributes) GetFormatPropertyAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, out IPortableDevicePropVariantCollection* ppEvents) GetSupportedEvents;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Event, out IPortableDeviceValues* ppAttributes) GetEventAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Event, in PROPERTYKEY Parameter, out IPortableDeviceValues* ppAttributes) GetEventParameterAttributes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, uint32 dwInheritanceType, out IPortableDevicePropVariantCollection* ppServices) GetInheritedServices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in Guid Format, out IPortableDeviceValuesCollection* ppRenderingProfiles) GetFormatRenderingProfiles;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, out IPortableDeviceKeyCollection* ppCommands) GetSupportedCommands;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self, in PROPERTYKEY Command, out IPortableDeviceValues* ppOptions) GetCommandOptions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceCapabilities self) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceMethods : IUnknown
		{
			public const new Guid IID = .(0xe20333c9, 0xfd34, 0x412d, 0xa3, 0x81, 0xcc, 0x6f, 0x2d, 0x82, 0x0d, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke(in Guid Method, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) mut => VT.Invoke(ref this, Method, ref pParameters, out ppResults);
			public HRESULT InvokeAsync(in Guid Method, ref IPortableDeviceValues pParameters, ref IPortableDeviceServiceMethodCallback pCallback) mut => VT.InvokeAsync(ref this, Method, ref pParameters, ref pCallback);
			public HRESULT Cancel(ref IPortableDeviceServiceMethodCallback pCallback) mut => VT.Cancel(ref this, ref pCallback);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceMethods self, in Guid Method, ref IPortableDeviceValues pParameters, out IPortableDeviceValues* ppResults) Invoke;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceMethods self, in Guid Method, ref IPortableDeviceValues pParameters, ref IPortableDeviceServiceMethodCallback pCallback) InvokeAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceMethods self, ref IPortableDeviceServiceMethodCallback pCallback) Cancel;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceMethodCallback : IUnknown
		{
			public const new Guid IID = .(0xc424233c, 0xafce, 0x4828, 0xa7, 0x56, 0x7e, 0xd7, 0xa2, 0x35, 0x00, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus, ref IPortableDeviceValues pResults) mut => VT.OnComplete(ref this, hrStatus, ref pResults);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceMethodCallback self, HRESULT hrStatus, ref IPortableDeviceValues pResults) OnComplete;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceActivation : IUnknown
		{
			public const new Guid IID = .(0xe56b0534, 0xd9b9, 0x425c, 0x9b, 0x99, 0x75, 0xf9, 0x7c, 0xb3, 0xd7, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OpenAsync(PWSTR pszPnPServiceID, ref IPortableDeviceValues pClientInfo, ref IPortableDeviceServiceOpenCallback pCallback) mut => VT.OpenAsync(ref this, pszPnPServiceID, ref pClientInfo, ref pCallback);
			public HRESULT CancelOpenAsync() mut => VT.CancelOpenAsync(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceActivation self, PWSTR pszPnPServiceID, ref IPortableDeviceValues pClientInfo, ref IPortableDeviceServiceOpenCallback pCallback) OpenAsync;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceActivation self) CancelOpenAsync;
			}
		}
		[CRepr]
		public struct IPortableDeviceServiceOpenCallback : IUnknown
		{
			public const new Guid IID = .(0xbced49c8, 0x8efe, 0x41ed, 0x96, 0x0b, 0x61, 0x31, 0x3a, 0xbd, 0x47, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus) mut => VT.OnComplete(ref this, hrStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceServiceOpenCallback self, HRESULT hrStatus) OnComplete;
			}
		}
		[CRepr]
		public struct IPortableDeviceDispatchFactory : IUnknown
		{
			public const new Guid IID = .(0x5e1eafc3, 0xe3d7, 0x4132, 0x96, 0xfa, 0x75, 0x9c, 0x0f, 0x9d, 0x1e, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceDispatch(PWSTR pszPnPDeviceID, out IDispatch* ppDeviceDispatch) mut => VT.GetDeviceDispatch(ref this, pszPnPDeviceID, out ppDeviceDispatch);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceDispatchFactory self, PWSTR pszPnPDeviceID, out IDispatch* ppDeviceDispatch) GetDeviceDispatch;
			}
		}
		[CRepr]
		public struct IPortableDeviceWebControl : IDispatch
		{
			public const new Guid IID = .(0x94fc7953, 0x5ca1, 0x483a, 0x8a, 0xee, 0xdf, 0x52, 0xe7, 0x74, 0x7d, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDeviceFromId(BSTR deviceId, out IDispatch* ppDevice) mut => VT.GetDeviceFromId(ref this, deviceId, out ppDevice);
			public HRESULT GetDeviceFromIdAsync(BSTR deviceId, ref IDispatch pCompletionHandler, IDispatch* pErrorHandler) mut => VT.GetDeviceFromIdAsync(ref this, deviceId, ref pCompletionHandler, pErrorHandler);

			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceWebControl self, BSTR deviceId, out IDispatch* ppDevice) GetDeviceFromId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceWebControl self, BSTR deviceId, ref IDispatch pCompletionHandler, IDispatch* pErrorHandler) GetDeviceFromIdAsync;
			}
		}
		[CRepr]
		public struct IEnumPortableDeviceConnectors : IUnknown
		{
			public const new Guid IID = .(0xbfdef549, 0x9247, 0x454f, 0xbd, 0x82, 0x06, 0xfe, 0x80, 0x85, 0x3f, 0xaa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cRequested, IPortableDeviceConnector** pConnectors, out uint32 pcFetched) mut => VT.Next(ref this, cRequested, pConnectors, out pcFetched);
			public HRESULT Skip(uint32 cConnectors) mut => VT.Skip(ref this, cConnectors);
			public HRESULT Reset() mut => VT.Reset(ref this);
			public HRESULT Clone(out IEnumPortableDeviceConnectors* ppEnum) mut => VT.Clone(ref this, out ppEnum);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceConnectors self, uint32 cRequested, IPortableDeviceConnector** pConnectors, out uint32 pcFetched) Next;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceConnectors self, uint32 cConnectors) Skip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceConnectors self) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPortableDeviceConnectors self, out IEnumPortableDeviceConnectors* ppEnum) Clone;
			}
		}
		[CRepr]
		public struct IPortableDeviceConnector : IUnknown
		{
			public const new Guid IID = .(0x625e2df8, 0x6392, 0x4cf0, 0x9a, 0xd1, 0x3c, 0xfa, 0x5f, 0x17, 0x77, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(ref IConnectionRequestCallback pCallback) mut => VT.Connect(ref this, ref pCallback);
			public HRESULT Disconnect(ref IConnectionRequestCallback pCallback) mut => VT.Disconnect(ref this, ref pCallback);
			public HRESULT Cancel(ref IConnectionRequestCallback pCallback) mut => VT.Cancel(ref this, ref pCallback);
			public HRESULT GetProperty(in DEVPROPKEY pPropertyKey, out uint32 pPropertyType, uint8** ppData, out uint32 pcbData) mut => VT.GetProperty(ref this, pPropertyKey, out pPropertyType, ppData, out pcbData);
			public HRESULT SetProperty(in DEVPROPKEY pPropertyKey, uint32 PropertyType, uint8* pData, uint32 cbData) mut => VT.SetProperty(ref this, pPropertyKey, PropertyType, pData, cbData);
			public HRESULT GetPnPID(out PWSTR ppwszPnPID) mut => VT.GetPnPID(ref this, out ppwszPnPID);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, ref IConnectionRequestCallback pCallback) Connect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, ref IConnectionRequestCallback pCallback) Disconnect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, ref IConnectionRequestCallback pCallback) Cancel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, in DEVPROPKEY pPropertyKey, out uint32 pPropertyType, uint8** ppData, out uint32 pcbData) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, in DEVPROPKEY pPropertyKey, uint32 PropertyType, uint8* pData, uint32 cbData) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPortableDeviceConnector self, out PWSTR ppwszPnPID) GetPnPID;
			}
		}
		[CRepr]
		public struct IConnectionRequestCallback : IUnknown
		{
			public const new Guid IID = .(0x272c9ae0, 0x7161, 0x4ae0, 0x91, 0xbd, 0x9f, 0x44, 0x8e, 0xe9, 0xc4, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnComplete(HRESULT hrStatus) mut => VT.OnComplete(ref this, hrStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectionRequestCallback self, HRESULT hrStatus) OnComplete;
			}
		}
		[CRepr]
		public struct IMediaRadioManager : IUnknown
		{
			public const new Guid IID = .(0x6cfdcab5, 0xfc47, 0x42a5, 0x92, 0x41, 0x07, 0x4b, 0x58, 0x83, 0x0e, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRadioInstances(out IRadioInstanceCollection* ppCollection) mut => VT.GetRadioInstances(ref this, out ppCollection);
			public HRESULT OnSystemRadioStateChange(SYSTEM_RADIO_STATE sysRadioState, uint32 uTimeoutSec) mut => VT.OnSystemRadioStateChange(ref this, sysRadioState, uTimeoutSec);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaRadioManager self, out IRadioInstanceCollection* ppCollection) GetRadioInstances;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaRadioManager self, SYSTEM_RADIO_STATE sysRadioState, uint32 uTimeoutSec) OnSystemRadioStateChange;
			}
		}
		[CRepr]
		public struct IRadioInstanceCollection : IUnknown
		{
			public const new Guid IID = .(0xe5791fae, 0x5665, 0x4e0c, 0x95, 0xbe, 0x5f, 0xde, 0x31, 0x64, 0x41, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(out uint32 pcInstance) mut => VT.GetCount(ref this, out pcInstance);
			public HRESULT GetAt(uint32 uIndex, out IRadioInstance* ppRadioInstance) mut => VT.GetAt(ref this, uIndex, out ppRadioInstance);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstanceCollection self, out uint32 pcInstance) GetCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstanceCollection self, uint32 uIndex, out IRadioInstance* ppRadioInstance) GetAt;
			}
		}
		[CRepr]
		public struct IRadioInstance : IUnknown
		{
			public const new Guid IID = .(0x70aa1c9e, 0xf2b4, 0x4c61, 0x86, 0xd3, 0x6b, 0x9f, 0xb7, 0x5f, 0xd1, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRadioManagerSignature(out Guid pguidSignature) mut => VT.GetRadioManagerSignature(ref this, out pguidSignature);
			public HRESULT GetInstanceSignature(out BSTR pbstrId) mut => VT.GetInstanceSignature(ref this, out pbstrId);
			public HRESULT GetFriendlyName(uint32 lcid, out BSTR pbstrName) mut => VT.GetFriendlyName(ref this, lcid, out pbstrName);
			public HRESULT GetRadioState(out DEVICE_RADIO_STATE pRadioState) mut => VT.GetRadioState(ref this, out pRadioState);
			public HRESULT SetRadioState(DEVICE_RADIO_STATE radioState, uint32 uTimeoutSec) mut => VT.SetRadioState(ref this, radioState, uTimeoutSec);
			public BOOL IsMultiComm() mut => VT.IsMultiComm(ref this);
			public BOOL IsAssociatingDevice() mut => VT.IsAssociatingDevice(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstance self, out Guid pguidSignature) GetRadioManagerSignature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstance self, out BSTR pbstrId) GetInstanceSignature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstance self, uint32 lcid, out BSTR pbstrName) GetFriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstance self, out DEVICE_RADIO_STATE pRadioState) GetRadioState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IRadioInstance self, DEVICE_RADIO_STATE radioState, uint32 uTimeoutSec) SetRadioState;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IRadioInstance self) IsMultiComm;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IRadioInstance self) IsAssociatingDevice;
			}
		}
		[CRepr]
		public struct IMediaRadioManagerNotifySink : IUnknown
		{
			public const new Guid IID = .(0x89d81f5f, 0xc147, 0x49ed, 0xa1, 0x1c, 0x77, 0xb2, 0x0c, 0x31, 0xe7, 0xc9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnInstanceAdd(ref IRadioInstance pRadioInstance) mut => VT.OnInstanceAdd(ref this, ref pRadioInstance);
			public HRESULT OnInstanceRemove(BSTR bstrRadioInstanceId) mut => VT.OnInstanceRemove(ref this, bstrRadioInstanceId);
			public HRESULT OnInstanceRadioChange(BSTR bstrRadioInstanceId, DEVICE_RADIO_STATE radioState) mut => VT.OnInstanceRadioChange(ref this, bstrRadioInstanceId, radioState);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaRadioManagerNotifySink self, ref IRadioInstance pRadioInstance) OnInstanceAdd;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaRadioManagerNotifySink self, BSTR bstrRadioInstanceId) OnInstanceRemove;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMediaRadioManagerNotifySink self, BSTR bstrRadioInstanceId, DEVICE_RADIO_STATE radioState) OnInstanceRadioChange;
			}
		}
		
		// --- Functions ---
		
		[Import("dmprocessxmlfiltered.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMProcessConfigXMLFiltered(PWSTR pszXmlIn, PWSTR* rgszAllowedCspNodes, uint32 dwNumAllowedCspNodes, out BSTR pbstrXmlOut);
	}
}
