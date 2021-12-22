using System;

// namespace Devices.Sensors
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid GUID_DEVINTERFACE_SENSOR = .(0xba1bb692, 0x9b7a, 0x4833, 0x9a, 0x1e, 0x52, 0x5e, 0xd1, 0x34, 0xe7, 0xe2);
		public const Guid SENSOR_EVENT_STATE_CHANGED = .(0xbfd96016, 0x6bd7, 0x4560, 0xad, 0x34, 0xf2, 0xf6, 0x60, 0x7e, 0x8f, 0x81);
		public const Guid SENSOR_EVENT_DATA_UPDATED = .(0x2ed0f2a4, 0x0087, 0x41d3, 0x87, 0xdb, 0x67, 0x73, 0x37, 0x0b, 0x3c, 0x88);
		public const Guid SENSOR_EVENT_PROPERTY_CHANGED = .(0x2358f099, 0x84c9, 0x4d3d, 0x90, 0xdf, 0xc2, 0x42, 0x1e, 0x2b, 0x20, 0x45);
		public const Guid SENSOR_EVENT_ACCELEROMETER_SHAKE = .(0x825f5a94, 0x0f48, 0x4396, 0x9c, 0xa0, 0x6e, 0xcb, 0x5c, 0x99, 0xd9, 0x15);
		public const Guid SENSOR_EVENT_PARAMETER_COMMON_GUID = .(0x64346e30, 0x8728, 0x4b34, 0xbd, 0xf6, 0x4f, 0x52, 0x44, 0x2c, 0x5c, 0x28);
		public const Guid SENSOR_ERROR_PARAMETER_COMMON_GUID = .(0x77112bcd, 0xfce1, 0x4f43, 0xb8, 0xb8, 0xa8, 0x82, 0x56, 0xad, 0xb4, 0xb3);
		public const Guid SENSOR_PROPERTY_COMMON_GUID = .(0x7f8383ec, 0xd3ec, 0x495c, 0xa8, 0xcf, 0xb8, 0xbb, 0xe8, 0x5c, 0x29, 0x20);
		public const Guid SENSOR_CATEGORY_ALL = .(0xc317c286, 0xc468, 0x4288, 0x99, 0x75, 0xd4, 0xc4, 0x58, 0x7c, 0x44, 0x2c);
		public const Guid SENSOR_CATEGORY_LOCATION = .(0xbfa794e4, 0xf964, 0x4fdb, 0x90, 0xf6, 0x51, 0x05, 0x6b, 0xfe, 0x4b, 0x44);
		public const Guid SENSOR_CATEGORY_ENVIRONMENTAL = .(0x323439aa, 0x7f66, 0x492b, 0xba, 0x0c, 0x73, 0xe9, 0xaa, 0x0a, 0x65, 0xd5);
		public const Guid SENSOR_CATEGORY_MOTION = .(0xcd09daf1, 0x3b2e, 0x4c3d, 0xb5, 0x98, 0xb5, 0xe5, 0xff, 0x93, 0xfd, 0x46);
		public const Guid SENSOR_CATEGORY_ORIENTATION = .(0x9e6c04b6, 0x96fe, 0x4954, 0xb7, 0x26, 0x68, 0x68, 0x2a, 0x47, 0x3f, 0x69);
		public const Guid SENSOR_CATEGORY_MECHANICAL = .(0x8d131d68, 0x8ef7, 0x4656, 0x80, 0xb5, 0xcc, 0xcb, 0xd9, 0x37, 0x91, 0xc5);
		public const Guid SENSOR_CATEGORY_ELECTRICAL = .(0xfb73fcd8, 0xfc4a, 0x483c, 0xac, 0x58, 0x27, 0xb6, 0x91, 0xc6, 0xbe, 0xff);
		public const Guid SENSOR_CATEGORY_BIOMETRIC = .(0xca19690f, 0xa2c7, 0x477d, 0xa9, 0x9e, 0x99, 0xec, 0x6e, 0x2b, 0x56, 0x48);
		public const Guid SENSOR_CATEGORY_LIGHT = .(0x17a665c0, 0x9063, 0x4216, 0xb2, 0x02, 0x5c, 0x7a, 0x25, 0x5e, 0x18, 0xce);
		public const Guid SENSOR_CATEGORY_SCANNER = .(0xb000e77e, 0xf5b5, 0x420f, 0x81, 0x5d, 0x02, 0x70, 0xa7, 0x26, 0xf2, 0x70);
		public const Guid SENSOR_CATEGORY_OTHER = .(0x2c90e7a9, 0xf4c9, 0x4fa2, 0xaf, 0x37, 0x56, 0xd4, 0x71, 0xfe, 0x5a, 0x3d);
		public const Guid SENSOR_CATEGORY_UNSUPPORTED = .(0x2beae7fa, 0x19b0, 0x48c5, 0xa1, 0xf6, 0xb5, 0x48, 0x0d, 0xc2, 0x06, 0xb0);
		public const Guid SENSOR_TYPE_LOCATION_GPS = .(0xed4ca589, 0x327a, 0x4ff9, 0xa5, 0x60, 0x91, 0xda, 0x4b, 0x48, 0x27, 0x5e);
		public const Guid SENSOR_TYPE_LOCATION_STATIC = .(0x095f8184, 0x0fa9, 0x4445, 0x8e, 0x6e, 0xb7, 0x0f, 0x32, 0x0b, 0x6b, 0x4c);
		public const Guid SENSOR_TYPE_LOCATION_LOOKUP = .(0x3b2eae4a, 0x72ce, 0x436d, 0x96, 0xd2, 0x3c, 0x5b, 0x85, 0x70, 0xe9, 0x87);
		public const Guid SENSOR_TYPE_LOCATION_TRIANGULATION = .(0x691c341a, 0x5406, 0x4fe1, 0x94, 0x2f, 0x22, 0x46, 0xcb, 0xeb, 0x39, 0xe0);
		public const Guid SENSOR_TYPE_LOCATION_OTHER = .(0x9b2d0566, 0x0368, 0x4f71, 0xb8, 0x8d, 0x53, 0x3f, 0x13, 0x20, 0x31, 0xde);
		public const Guid SENSOR_TYPE_LOCATION_BROADCAST = .(0xd26988cf, 0x5162, 0x4039, 0xbb, 0x17, 0x4c, 0x58, 0xb6, 0x98, 0xe4, 0x4a);
		public const Guid SENSOR_TYPE_LOCATION_DEAD_RECKONING = .(0x1a37d538, 0xf28b, 0x42da, 0x9f, 0xce, 0xa9, 0xd0, 0xa2, 0xa6, 0xd8, 0x29);
		public const Guid SENSOR_TYPE_ENVIRONMENTAL_TEMPERATURE = .(0x04fd0ec4, 0xd5da, 0x45fa, 0x95, 0xa9, 0x5d, 0xb3, 0x8e, 0xe1, 0x93, 0x06);
		public const Guid SENSOR_TYPE_ENVIRONMENTAL_ATMOSPHERIC_PRESSURE = .(0x0e903829, 0xff8a, 0x4a93, 0x97, 0xdf, 0x3d, 0xcb, 0xde, 0x40, 0x22, 0x88);
		public const Guid SENSOR_TYPE_ENVIRONMENTAL_HUMIDITY = .(0x5c72bf67, 0xbd7e, 0x4257, 0x99, 0x0b, 0x98, 0xa3, 0xba, 0x3b, 0x40, 0x0a);
		public const Guid SENSOR_TYPE_ENVIRONMENTAL_WIND_SPEED = .(0xdd50607b, 0xa45f, 0x42cd, 0x8e, 0xfd, 0xec, 0x61, 0x76, 0x1c, 0x42, 0x26);
		public const Guid SENSOR_TYPE_ENVIRONMENTAL_WIND_DIRECTION = .(0x9ef57a35, 0x9306, 0x434d, 0xaf, 0x09, 0x37, 0xfa, 0x5a, 0x9c, 0x00, 0xbd);
		public const Guid SENSOR_TYPE_ACCELEROMETER_1D = .(0xc04d2387, 0x7340, 0x4cc2, 0x99, 0x1e, 0x3b, 0x18, 0xcb, 0x8e, 0xf2, 0xf4);
		public const Guid SENSOR_TYPE_ACCELEROMETER_2D = .(0xb2c517a8, 0xf6b5, 0x4ba6, 0xa4, 0x23, 0x5d, 0xf5, 0x60, 0xb4, 0xcc, 0x07);
		public const Guid SENSOR_TYPE_ACCELEROMETER_3D = .(0xc2fb0f5f, 0xe2d2, 0x4c78, 0xbc, 0xd0, 0x35, 0x2a, 0x95, 0x82, 0x81, 0x9d);
		public const Guid SENSOR_TYPE_MOTION_DETECTOR = .(0x5c7c1a12, 0x30a5, 0x43b9, 0xa4, 0xb2, 0xcf, 0x09, 0xec, 0x5b, 0x7b, 0xe8);
		public const Guid SENSOR_TYPE_GYROMETER_1D = .(0xfa088734, 0xf552, 0x4584, 0x83, 0x24, 0xed, 0xfa, 0xf6, 0x49, 0x65, 0x2c);
		public const Guid SENSOR_TYPE_GYROMETER_2D = .(0x31ef4f83, 0x919b, 0x48bf, 0x8d, 0xe0, 0x5d, 0x7a, 0x9d, 0x24, 0x05, 0x56);
		public const Guid SENSOR_TYPE_GYROMETER_3D = .(0x09485f5a, 0x759e, 0x42c2, 0xbd, 0x4b, 0xa3, 0x49, 0xb7, 0x5c, 0x86, 0x43);
		public const Guid SENSOR_TYPE_SPEEDOMETER = .(0x6bd73c1f, 0x0bb4, 0x4310, 0x81, 0xb2, 0xdf, 0xc1, 0x8a, 0x52, 0xbf, 0x94);
		public const Guid SENSOR_TYPE_COMPASS_1D = .(0xa415f6c5, 0xcb50, 0x49d0, 0x8e, 0x62, 0xa8, 0x27, 0x0b, 0xd7, 0xa2, 0x6c);
		public const Guid SENSOR_TYPE_COMPASS_2D = .(0x15655cc0, 0x997a, 0x4d30, 0x84, 0xdb, 0x57, 0xca, 0xba, 0x36, 0x48, 0xbb);
		public const Guid SENSOR_TYPE_COMPASS_3D = .(0x76b5ce0d, 0x17dd, 0x414d, 0x93, 0xa1, 0xe1, 0x27, 0xf4, 0x0b, 0xdf, 0x6e);
		public const Guid SENSOR_TYPE_INCLINOMETER_1D = .(0xb96f98c5, 0x7a75, 0x4ba7, 0x94, 0xe9, 0xac, 0x86, 0x8c, 0x96, 0x6d, 0xd8);
		public const Guid SENSOR_TYPE_INCLINOMETER_2D = .(0xab140f6d, 0x83eb, 0x4264, 0xb7, 0x0b, 0xb1, 0x6a, 0x5b, 0x25, 0x6a, 0x01);
		public const Guid SENSOR_TYPE_INCLINOMETER_3D = .(0xb84919fb, 0xea85, 0x4976, 0x84, 0x44, 0x6f, 0x6f, 0x5c, 0x6d, 0x31, 0xdb);
		public const Guid SENSOR_TYPE_DISTANCE_1D = .(0x5f14ab2f, 0x1407, 0x4306, 0xa9, 0x3f, 0xb1, 0xdb, 0xab, 0xe4, 0xf9, 0xc0);
		public const Guid SENSOR_TYPE_DISTANCE_2D = .(0x5cf9a46c, 0xa9a2, 0x4e55, 0xb6, 0xa1, 0xa0, 0x4a, 0xaf, 0xa9, 0x5a, 0x92);
		public const Guid SENSOR_TYPE_DISTANCE_3D = .(0xa20cae31, 0x0e25, 0x4772, 0x9f, 0xe5, 0x96, 0x60, 0x8a, 0x13, 0x54, 0xb2);
		public const Guid SENSOR_TYPE_AGGREGATED_QUADRANT_ORIENTATION = .(0x9f81f1af, 0xc4ab, 0x4307, 0x99, 0x04, 0xc8, 0x28, 0xbf, 0xb9, 0x08, 0x29);
		public const Guid SENSOR_TYPE_AGGREGATED_DEVICE_ORIENTATION = .(0xcdb5d8f7, 0x3cfd, 0x41c8, 0x85, 0x42, 0xcc, 0xe6, 0x22, 0xcf, 0x5d, 0x6e);
		public const Guid SENSOR_TYPE_AGGREGATED_SIMPLE_DEVICE_ORIENTATION = .(0x86a19291, 0x0482, 0x402c, 0xbf, 0x4c, 0xad, 0xda, 0xc5, 0x2b, 0x1c, 0x39);
		public const Guid SENSOR_TYPE_VOLTAGE = .(0xc5484637, 0x4fb7, 0x4953, 0x98, 0xb8, 0xa5, 0x6d, 0x8a, 0xa1, 0xfb, 0x1e);
		public const Guid SENSOR_TYPE_CURRENT = .(0x5adc9fce, 0x15a0, 0x4bbe, 0xa1, 0xad, 0x2d, 0x38, 0xa9, 0xae, 0x83, 0x1c);
		public const Guid SENSOR_TYPE_CAPACITANCE = .(0xca2ffb1c, 0x2317, 0x49c0, 0xa0, 0xb4, 0xb6, 0x3c, 0xe6, 0x34, 0x61, 0xa0);
		public const Guid SENSOR_TYPE_RESISTANCE = .(0x9993d2c8, 0xc157, 0x4a52, 0xa7, 0xb5, 0x19, 0x5c, 0x76, 0x03, 0x72, 0x31);
		public const Guid SENSOR_TYPE_INDUCTANCE = .(0xdc1d933f, 0xc435, 0x4c7d, 0xa2, 0xfe, 0x60, 0x71, 0x92, 0xa5, 0x24, 0xd3);
		public const Guid SENSOR_TYPE_ELECTRICAL_POWER = .(0x212f10f5, 0x14ab, 0x4376, 0x9a, 0x43, 0xa7, 0x79, 0x40, 0x98, 0xc2, 0xfe);
		public const Guid SENSOR_TYPE_POTENTIOMETER = .(0x2b3681a9, 0xcadc, 0x45aa, 0xa6, 0xff, 0x54, 0x95, 0x7c, 0x8b, 0xb4, 0x40);
		public const Guid SENSOR_TYPE_FREQUENCY = .(0x8cd2cbb6, 0x73e6, 0x4640, 0xa7, 0x09, 0x72, 0xae, 0x8f, 0xb6, 0x0d, 0x7f);
		public const Guid SENSOR_TYPE_BOOLEAN_SWITCH = .(0x9c7e371f, 0x1041, 0x460b, 0x8d, 0x5c, 0x71, 0xe4, 0x75, 0x2e, 0x35, 0x0c);
		public const Guid SENSOR_TYPE_MULTIVALUE_SWITCH = .(0xb3ee4d76, 0x37a4, 0x4402, 0xb2, 0x5e, 0x99, 0xc6, 0x0a, 0x77, 0x5f, 0xa1);
		public const Guid SENSOR_TYPE_FORCE = .(0xc2ab2b02, 0x1a1c, 0x4778, 0xa8, 0x1b, 0x95, 0x4a, 0x17, 0x88, 0xcc, 0x75);
		public const Guid SENSOR_TYPE_SCALE = .(0xc06dd92c, 0x7feb, 0x438e, 0x9b, 0xf6, 0x82, 0x20, 0x7f, 0xff, 0x5b, 0xb8);
		public const Guid SENSOR_TYPE_PRESSURE = .(0x26d31f34, 0x6352, 0x41cf, 0xb7, 0x93, 0xea, 0x07, 0x13, 0xd5, 0x3d, 0x77);
		public const Guid SENSOR_TYPE_STRAIN = .(0xc6d1ec0e, 0x6803, 0x4361, 0xad, 0x3d, 0x85, 0xbc, 0xc5, 0x8c, 0x6d, 0x29);
		public const Guid SENSOR_TYPE_BOOLEAN_SWITCH_ARRAY = .(0x545c8ba5, 0xb143, 0x4545, 0x86, 0x8f, 0xca, 0x7f, 0xd9, 0x86, 0xb4, 0xf6);
		public const Guid SENSOR_TYPE_HUMAN_PRESENCE = .(0xc138c12b, 0xad52, 0x451c, 0x93, 0x75, 0x87, 0xf5, 0x18, 0xff, 0x10, 0xc6);
		public const Guid SENSOR_TYPE_HUMAN_PROXIMITY = .(0x5220dae9, 0x3179, 0x4430, 0x9f, 0x90, 0x06, 0x26, 0x6d, 0x2a, 0x34, 0xde);
		public const Guid SENSOR_TYPE_TOUCH = .(0x17db3018, 0x06c4, 0x4f7d, 0x81, 0xaf, 0x92, 0x74, 0xb7, 0x59, 0x9c, 0x27);
		public const Guid SENSOR_TYPE_AMBIENT_LIGHT = .(0x97f115c8, 0x599a, 0x4153, 0x88, 0x94, 0xd2, 0xd1, 0x28, 0x99, 0x91, 0x8a);
		public const Guid SENSOR_TYPE_RFID_SCANNER = .(0x44328ef5, 0x02dd, 0x4e8d, 0xad, 0x5d, 0x92, 0x49, 0x83, 0x2b, 0x2e, 0xca);
		public const Guid SENSOR_TYPE_BARCODE_SCANNER = .(0x990b3d8f, 0x85bb, 0x45ff, 0x91, 0x4d, 0x99, 0x8c, 0x04, 0xf3, 0x72, 0xdf);
		public const Guid SENSOR_TYPE_CUSTOM = .(0xe83af229, 0x8640, 0x4d18, 0xa2, 0x13, 0xe2, 0x26, 0x75, 0xeb, 0xb2, 0xc3);
		public const Guid SENSOR_TYPE_UNKNOWN = .(0x10ba83e3, 0xef4f, 0x41ed, 0x98, 0x85, 0xa8, 0x7d, 0x64, 0x35, 0xa8, 0xe1);
		public const Guid SENSOR_DATA_TYPE_COMMON_GUID = .(0xdb5e0cf2, 0xcf1f, 0x4c18, 0xb4, 0x6c, 0xd8, 0x60, 0x11, 0xd6, 0x21, 0x50);
		public const Guid SENSOR_DATA_TYPE_LOCATION_GUID = .(0x055c74d8, 0xca6f, 0x47d6, 0x95, 0xc6, 0x1e, 0xd3, 0x63, 0x7a, 0x0f, 0xf4);
		public const Guid SENSOR_DATA_TYPE_ENVIRONMENTAL_GUID = .(0x8b0aa2f1, 0x2d57, 0x42ee, 0x8c, 0xc0, 0x4d, 0x27, 0x62, 0x2b, 0x46, 0xc4);
		public const Guid SENSOR_DATA_TYPE_MOTION_GUID = .(0x3f8a69a2, 0x07c5, 0x4e48, 0xa9, 0x65, 0xcd, 0x79, 0x7a, 0xab, 0x56, 0xd5);
		public const Guid SENSOR_DATA_TYPE_ORIENTATION_GUID = .(0x1637d8a2, 0x4248, 0x4275, 0x86, 0x5d, 0x55, 0x8d, 0xe8, 0x4a, 0xed, 0xfd);
		public const Guid SENSOR_DATA_TYPE_GUID_MECHANICAL_GUID = .(0x38564a7c, 0xf2f2, 0x49bb, 0x9b, 0x2b, 0xba, 0x60, 0xf6, 0x6a, 0x58, 0xdf);
		public const Guid SENSOR_DATA_TYPE_BIOMETRIC_GUID = .(0x2299288a, 0x6d9e, 0x4b0b, 0xb7, 0xec, 0x35, 0x28, 0xf8, 0x9e, 0x40, 0xaf);
		public const Guid SENSOR_DATA_TYPE_LIGHT_GUID = .(0xe4c77ce2, 0xdcb7, 0x46e9, 0x84, 0x39, 0x4f, 0xec, 0x54, 0x88, 0x33, 0xa6);
		public const Guid SENSOR_DATA_TYPE_SCANNER_GUID = .(0xd7a59a3c, 0x3421, 0x44ab, 0x8d, 0x3a, 0x9d, 0xe8, 0xab, 0x6c, 0x4c, 0xae);
		public const Guid SENSOR_DATA_TYPE_ELECTRICAL_GUID = .(0xbbb246d1, 0xe242, 0x4780, 0xa2, 0xd3, 0xcd, 0xed, 0x84, 0xf3, 0x58, 0x42);
		public const Guid SENSOR_DATA_TYPE_CUSTOM_GUID = .(0xb14c764f, 0x07cf, 0x41e8, 0x9d, 0x82, 0xeb, 0xe3, 0xd0, 0x77, 0x6a, 0x6f);
		public const Guid SENSOR_PROPERTY_TEST_GUID = .(0xe1e962f4, 0x6e65, 0x45f7, 0x9c, 0x36, 0xd4, 0x87, 0xb7, 0xb1, 0xbd, 0x34);
		public const uint32 GNSS_CLEAR_ALL_ASSISTANCE_DATA = 1;
		public const Guid GUID_SensorCategory_All = .(0xc317c286, 0xc468, 0x4288, 0x99, 0x75, 0xd4, 0xc4, 0x58, 0x7c, 0x44, 0x2c);
		public const Guid GUID_SensorCategory_Biometric = .(0xca19690f, 0xa2c7, 0x477d, 0xa9, 0x9e, 0x99, 0xec, 0x6e, 0x2b, 0x56, 0x48);
		public const Guid GUID_SensorCategory_Electrical = .(0xfb73fcd8, 0xfc4a, 0x483c, 0xac, 0x58, 0x27, 0xb6, 0x91, 0xc6, 0xbe, 0xff);
		public const Guid GUID_SensorCategory_Environmental = .(0x323439aa, 0x7f66, 0x492b, 0xba, 0x0c, 0x73, 0xe9, 0xaa, 0x0a, 0x65, 0xd5);
		public const Guid GUID_SensorCategory_Light = .(0x17a665c0, 0x9063, 0x4216, 0xb2, 0x02, 0x5c, 0x7a, 0x25, 0x5e, 0x18, 0xce);
		public const Guid GUID_SensorCategory_Location = .(0xbfa794e4, 0xf964, 0x4fdb, 0x90, 0xf6, 0x51, 0x05, 0x6b, 0xfe, 0x4b, 0x44);
		public const Guid GUID_SensorCategory_Mechanical = .(0x8d131d68, 0x8ef7, 0x4656, 0x80, 0xb5, 0xcc, 0xcb, 0xd9, 0x37, 0x91, 0xc5);
		public const Guid GUID_SensorCategory_Motion = .(0xcd09daf1, 0x3b2e, 0x4c3d, 0xb5, 0x98, 0xb5, 0xe5, 0xff, 0x93, 0xfd, 0x46);
		public const Guid GUID_SensorCategory_Orientation = .(0x9e6c04b6, 0x96fe, 0x4954, 0xb7, 0x26, 0x68, 0x68, 0x2a, 0x47, 0x3f, 0x69);
		public const Guid GUID_SensorCategory_Other = .(0x2c90e7a9, 0xf4c9, 0x4fa2, 0xaf, 0x37, 0x56, 0xd4, 0x71, 0xfe, 0x5a, 0x3d);
		public const Guid GUID_SensorCategory_PersonalActivity = .(0xf1609081, 0x1e12, 0x412b, 0xa1, 0x4d, 0xcb, 0xb0, 0xe9, 0x5b, 0xd2, 0xe5);
		public const Guid GUID_SensorCategory_Scanner = .(0xb000e77e, 0xf5b5, 0x420f, 0x81, 0x5d, 0x02, 0x70, 0xa7, 0x26, 0xf2, 0x70);
		public const Guid GUID_SensorCategory_Unsupported = .(0x2beae7fa, 0x19b0, 0x48c5, 0xa1, 0xf6, 0xb5, 0x48, 0x0d, 0xc2, 0x06, 0xb0);
		public const Guid GUID_SensorType_Accelerometer3D = .(0xc2fb0f5f, 0xe2d2, 0x4c78, 0xbc, 0xd0, 0x35, 0x2a, 0x95, 0x82, 0x81, 0x9d);
		public const Guid GUID_SensorType_ActivityDetection = .(0x9d9e0118, 0x1807, 0x4f2e, 0x96, 0xe4, 0x2c, 0xe5, 0x71, 0x42, 0xe1, 0x96);
		public const Guid GUID_SensorType_AmbientLight = .(0x97f115c8, 0x599a, 0x4153, 0x88, 0x94, 0xd2, 0xd1, 0x28, 0x99, 0x91, 0x8a);
		public const Guid GUID_SensorType_Barometer = .(0x0e903829, 0xff8a, 0x4a93, 0x97, 0xdf, 0x3d, 0xcb, 0xde, 0x40, 0x22, 0x88);
		public const Guid GUID_SensorType_Custom = .(0xe83af229, 0x8640, 0x4d18, 0xa2, 0x13, 0xe2, 0x26, 0x75, 0xeb, 0xb2, 0xc3);
		public const Guid GUID_SensorType_FloorElevation = .(0xade4987f, 0x7ac4, 0x4dfa, 0x97, 0x22, 0x0a, 0x02, 0x71, 0x81, 0xc7, 0x47);
		public const Guid GUID_SensorType_GeomagneticOrientation = .(0xe77195f8, 0x2d1f, 0x4823, 0x97, 0x1b, 0x1c, 0x44, 0x67, 0x55, 0x6c, 0x9d);
		public const Guid GUID_SensorType_GravityVector = .(0x03b52c73, 0xbb76, 0x463f, 0x95, 0x24, 0x38, 0xde, 0x76, 0xeb, 0x70, 0x0b);
		public const Guid GUID_SensorType_Gyrometer3D = .(0x09485f5a, 0x759e, 0x42c2, 0xbd, 0x4b, 0xa3, 0x49, 0xb7, 0x5c, 0x86, 0x43);
		public const Guid GUID_SensorType_Humidity = .(0x5c72bf67, 0xbd7e, 0x4257, 0x99, 0x0b, 0x98, 0xa3, 0xba, 0x3b, 0x40, 0x0a);
		public const Guid GUID_SensorType_LinearAccelerometer = .(0x038b0283, 0x97b4, 0x41c8, 0xbc, 0x24, 0x5f, 0xf1, 0xaa, 0x48, 0xfe, 0xc7);
		public const Guid GUID_SensorType_Magnetometer3D = .(0x55e5effb, 0x15c7, 0x40df, 0x86, 0x98, 0xa8, 0x4b, 0x7c, 0x86, 0x3c, 0x53);
		public const Guid GUID_SensorType_Orientation = .(0xcdb5d8f7, 0x3cfd, 0x41c8, 0x85, 0x42, 0xcc, 0xe6, 0x22, 0xcf, 0x5d, 0x6e);
		public const Guid GUID_SensorType_Pedometer = .(0xb19f89af, 0xe3eb, 0x444b, 0x8d, 0xea, 0x20, 0x25, 0x75, 0xa7, 0x15, 0x99);
		public const Guid GUID_SensorType_Proximity = .(0x5220dae9, 0x3179, 0x4430, 0x9f, 0x90, 0x06, 0x26, 0x6d, 0x2a, 0x34, 0xde);
		public const Guid GUID_SensorType_RelativeOrientation = .(0x40993b51, 0x4706, 0x44dc, 0x98, 0xd5, 0xc9, 0x20, 0xc0, 0x37, 0xff, 0xab);
		public const Guid GUID_SensorType_SimpleDeviceOrientation = .(0x86a19291, 0x0482, 0x402c, 0xbf, 0x4c, 0xad, 0xda, 0xc5, 0x2b, 0x1c, 0x39);
		public const Guid GUID_SensorType_Temperature = .(0x04fd0ec4, 0xd5da, 0x45fa, 0x95, 0xa9, 0x5d, 0xb3, 0x8e, 0xe1, 0x93, 0x06);
		public const Guid GUID_SensorType_HingeAngle = .(0x82358065, 0xf4c4, 0x4da1, 0xb2, 0x72, 0x13, 0xc2, 0x33, 0x32, 0xa2, 0x07);
		public const uint32 SENSOR_PROPERTY_LIST_HEADER_SIZE = 8;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SensorState : int32
		{
			SENSOR_STATE_MIN = 0,
			SENSOR_STATE_READY = 0,
			SENSOR_STATE_NOT_AVAILABLE = 1,
			SENSOR_STATE_NO_DATA = 2,
			SENSOR_STATE_INITIALIZING = 3,
			SENSOR_STATE_ACCESS_DENIED = 4,
			SENSOR_STATE_ERROR = 5,
			SENSOR_STATE_MAX = 5,
		}
		[AllowDuplicates]
		public enum SensorConnectionType : int32
		{
			SENSOR_CONNECTION_TYPE_PC_INTEGRATED = 0,
			SENSOR_CONNECTION_TYPE_PC_ATTACHED = 1,
			SENSOR_CONNECTION_TYPE_PC_EXTERNAL = 2,
		}
		[AllowDuplicates]
		public enum LOCATION_DESIRED_ACCURACY : int32
		{
			LOCATION_DESIRED_ACCURACY_DEFAULT = 0,
			LOCATION_DESIRED_ACCURACY_HIGH = 1,
		}
		[AllowDuplicates]
		public enum LOCATION_POSITION_SOURCE : int32
		{
			LOCATION_POSITION_SOURCE_CELLULAR = 0,
			LOCATION_POSITION_SOURCE_SATELLITE = 1,
			LOCATION_POSITION_SOURCE_WIFI = 2,
			LOCATION_POSITION_SOURCE_IPADDRESS = 3,
			LOCATION_POSITION_SOURCE_UNKNOWN = 4,
		}
		[AllowDuplicates]
		public enum SimpleDeviceOrientation : int32
		{
			SIMPLE_DEVICE_ORIENTATION_NOT_ROTATED = 0,
			SIMPLE_DEVICE_ORIENTATION_ROTATED_90 = 1,
			SIMPLE_DEVICE_ORIENTATION_ROTATED_180 = 2,
			SIMPLE_DEVICE_ORIENTATION_ROTATED_270 = 3,
			SIMPLE_DEVICE_ORIENTATION_ROTATED_FACE_UP = 4,
			SIMPLE_DEVICE_ORIENTATION_ROTATED_FACE_DOWN = 5,
		}
		[AllowDuplicates]
		public enum MagnetometerAccuracy : int32
		{
			MAGNETOMETER_ACCURACY_UNKNOWN = 0,
			MAGNETOMETER_ACCURACY_UNRELIABLE = 1,
			MAGNETOMETER_ACCURACY_APPROXIMATE = 2,
			MAGNETOMETER_ACCURACY_HIGH = 3,
		}
		[AllowDuplicates]
		public enum ACTIVITY_STATE_COUNT : int32
		{
			ActivityStateCount = 8,
		}
		[AllowDuplicates]
		public enum ACTIVITY_STATE : int32
		{
			ActivityState_Unknown = 1,
			ActivityState_Stationary = 2,
			ActivityState_Fidgeting = 4,
			ActivityState_Walking = 8,
			ActivityState_Running = 16,
			ActivityState_InVehicle = 32,
			ActivityState_Biking = 64,
			ActivityState_Idle = 128,
			ActivityState_Max = 256,
			ActivityState_Force_Dword = -1,
		}
		[AllowDuplicates]
		public enum ELEVATION_CHANGE_MODE : int32
		{
			ElevationChangeMode_Unknown = 0,
			ElevationChangeMode_Elevator = 1,
			ElevationChangeMode_Stepping = 2,
			ElevationChangeMode_Max = 3,
			ElevationChangeMode_Force_Dword = -1,
		}
		[AllowDuplicates]
		public enum MAGNETOMETER_ACCURACY : int32
		{
			MagnetometerAccuracy_Unknown = 0,
			MagnetometerAccuracy_Unreliable = 1,
			MagnetometerAccuracy_Approximate = 2,
			MagnetometerAccuracy_High = 3,
		}
		[AllowDuplicates]
		public enum PEDOMETER_STEP_TYPE_COUNT : int32
		{
			PedometerStepTypeCount = 3,
		}
		[AllowDuplicates]
		public enum PEDOMETER_STEP_TYPE : int32
		{
			PedometerStepType_Unknown = 1,
			PedometerStepType_Walking = 2,
			PedometerStepType_Running = 4,
			PedometerStepType_Max = 8,
			PedometerStepType_Force_Dword = -1,
		}
		[AllowDuplicates]
		public enum PROXIMITY_TYPE : int32
		{
			ProximityType_ObjectProximity = 0,
			ProximityType_HumanProximity = 1,
			ProximityType_Force_Dword = -1,
		}
		[AllowDuplicates]
		public enum HUMAN_PRESENCE_DETECTION_TYPE_COUNT : int32
		{
			HumanPresenceDetectionTypeCount = 4,
		}
		[AllowDuplicates]
		public enum HUMAN_PRESENCE_DETECTION_TYPE : int32
		{
			HumanPresenceDetectionType_VendorDefinedNonBiometric = 1,
			HumanPresenceDetectionType_VendorDefinedBiometric = 2,
			HumanPresenceDetectionType_FacialBiometric = 4,
			HumanPresenceDetectionType_AudioBiometric = 8,
			HumanPresenceDetectionType_Force_Dword = -1,
		}
		[AllowDuplicates]
		public enum SIMPLE_DEVICE_ORIENTATION : int32
		{
			SimpleDeviceOrientation_NotRotated = 0,
			SimpleDeviceOrientation_Rotated90DegreesCounterclockwise = 1,
			SimpleDeviceOrientation_Rotated180DegreesCounterclockwise = 2,
			SimpleDeviceOrientation_Rotated270DegreesCounterclockwise = 3,
			SimpleDeviceOrientation_Faceup = 4,
			SimpleDeviceOrientation_Facedown = 5,
		}
		[AllowDuplicates]
		public enum SENSOR_STATE : int32
		{
			SensorState_Initializing = 0,
			SensorState_Idle = 1,
			SensorState_Active = 2,
			SensorState_Error = 3,
		}
		[AllowDuplicates]
		public enum SENSOR_CONNECTION_TYPES : int32
		{
			SensorConnectionType_Integrated = 0,
			SensorConnectionType_Attached = 1,
			SensorConnectionType_External = 2,
		}
		[AllowDuplicates]
		public enum AXIS : int32
		{
			AXIS_X = 0,
			AXIS_Y = 1,
			AXIS_Z = 2,
			AXIS_MAX = 3,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SENSOR_VALUE_PAIR
		{
			public PROPERTYKEY Key;
			public PROPVARIANT Value;
		}
		[CRepr]
		public struct SENSOR_COLLECTION_LIST
		{
			public uint32 AllocatedSizeInBytes;
			public uint32 Count;
			public SENSOR_VALUE_PAIR[] List;
		}
		[CRepr]
		public struct SENSOR_PROPERTY_LIST
		{
			public uint32 AllocatedSizeInBytes;
			public uint32 Count;
			public PROPERTYKEY[] List;
		}
		[CRepr]
		public struct VEC3D
		{
			public float X;
			public float Y;
			public float Z;
		}
		[CRepr]
		public struct MATRIX3X3
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous1_e__Struct Anonymous1;
				public _Anonymous2_e__Struct Anonymous2;
				public float[9] M;
				
				[CRepr]
				public struct _Anonymous1_e__Struct
				{
					public float A11;
					public float A12;
					public float A13;
					public float A21;
					public float A22;
					public float A23;
					public float A31;
					public float A32;
					public float A33;
				}
				[CRepr]
				public struct _Anonymous2_e__Struct
				{
					public VEC3D V1;
					public VEC3D V2;
					public VEC3D V3;
				}
			}
		}
		[CRepr]
		public struct QUATERNION
		{
			public float X;
			public float Y;
			public float Z;
			public float W;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_SensorManager = .(0x77a1c827, 0xfcd2, 0x4689, 0x89, 0x15, 0x9d, 0x61, 0x3c, 0xc5, 0xfa, 0x3e);
		public const Guid CLSID_SensorCollection = .(0x79c43adb, 0xa429, 0x469f, 0xaa, 0x39, 0x2f, 0x2b, 0x74, 0xb7, 0x59, 0x37);
		public const Guid CLSID_Sensor = .(0xe97ced00, 0x523a, 0x4133, 0xbf, 0x6f, 0xd3, 0xa2, 0xda, 0xe7, 0xf6, 0xba);
		public const Guid CLSID_SensorDataReport = .(0x4ea9d6ef, 0x694b, 0x4218, 0x88, 0x16, 0xcc, 0xda, 0x8d, 0xa7, 0x4b, 0xba);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct ISensorManager : IUnknown
		{
			public const new Guid IID = .(0xbd77db67, 0x45a8, 0x42dc, 0x8d, 0x00, 0x6d, 0xcf, 0x15, 0xf8, 0x37, 0x7a);
			
			public function HRESULT(ISensorManager *self, Guid* sensorCategory, ISensorCollection** ppSensorsFound) GetSensorsByCategory;
			public function HRESULT(ISensorManager *self, Guid* sensorType, ISensorCollection** ppSensorsFound) GetSensorsByType;
			public function HRESULT(ISensorManager *self, Guid* sensorID, ISensor** ppSensor) GetSensorByID;
			public function HRESULT(ISensorManager *self, ISensorManagerEvents* pEvents) SetEventSink;
			public function HRESULT(ISensorManager *self, HWND hParent, ISensorCollection* pSensors, BOOL fModal) RequestPermissions;
		}
		[CRepr]
		public struct ILocationPermissions : IUnknown
		{
			public const new Guid IID = .(0xd5fb0a7f, 0xe74e, 0x44f5, 0x8e, 0x02, 0x48, 0x06, 0x86, 0x3a, 0x27, 0x4f);
			
			public function HRESULT(ILocationPermissions *self, BOOL* pfEnabled) GetGlobalLocationPermission;
			public function HRESULT(ILocationPermissions *self, uint32 dwClientThreadId) CheckLocationCapability;
		}
		[CRepr]
		public struct ISensorCollection : IUnknown
		{
			public const new Guid IID = .(0x23571e11, 0xe545, 0x4dd8, 0xa3, 0x37, 0xb8, 0x9b, 0xf4, 0x4b, 0x10, 0xdf);
			
			public function HRESULT(ISensorCollection *self, uint32 ulIndex, ISensor** ppSensor) GetAt;
			public function HRESULT(ISensorCollection *self, uint32* pCount) GetCount;
			public function HRESULT(ISensorCollection *self, ISensor* pSensor) Add;
			public function HRESULT(ISensorCollection *self, ISensor* pSensor) Remove;
			public function HRESULT(ISensorCollection *self, Guid* sensorID) RemoveByID;
			public function HRESULT(ISensorCollection *self) Clear;
		}
		[CRepr]
		public struct ISensor : IUnknown
		{
			public const new Guid IID = .(0x5fa08f80, 0x2657, 0x458e, 0xaf, 0x75, 0x46, 0xf7, 0x3f, 0xa6, 0xac, 0x5c);
			
			public function HRESULT(ISensor *self, Guid* pID) GetID;
			public function HRESULT(ISensor *self, Guid* pSensorCategory) GetCategory;
			public function HRESULT(ISensor *self, Guid* pSensorType) GetType;
			public function HRESULT(ISensor *self, BSTR* pFriendlyName) GetFriendlyName;
			public function HRESULT(ISensor *self, PROPERTYKEY* key, PROPVARIANT* pProperty) GetProperty;
			public function HRESULT(ISensor *self, IPortableDeviceKeyCollection* pKeys, IPortableDeviceValues** ppProperties) GetProperties;
			public function HRESULT(ISensor *self, IPortableDeviceKeyCollection** ppDataFields) GetSupportedDataFields;
			public function HRESULT(ISensor *self, IPortableDeviceValues* pProperties, IPortableDeviceValues** ppResults) SetProperties;
			public function HRESULT(ISensor *self, PROPERTYKEY* key, int16* pIsSupported) SupportsDataField;
			public function HRESULT(ISensor *self, SensorState* pState) GetState;
			public function HRESULT(ISensor *self, ISensorDataReport** ppDataReport) GetData;
			public function HRESULT(ISensor *self, Guid* eventGuid, int16* pIsSupported) SupportsEvent;
			public function HRESULT(ISensor *self, Guid** ppValues, uint32* pCount) GetEventInterest;
			public function HRESULT(ISensor *self, Guid* pValues, uint32 count) SetEventInterest;
			public function HRESULT(ISensor *self, ISensorEvents* pEvents) SetEventSink;
		}
		[CRepr]
		public struct ISensorDataReport : IUnknown
		{
			public const new Guid IID = .(0x0ab9df9b, 0xc4b5, 0x4796, 0x88, 0x98, 0x04, 0x70, 0x70, 0x6a, 0x2e, 0x1d);
			
			public function HRESULT(ISensorDataReport *self, SYSTEMTIME* pTimeStamp) GetTimestamp;
			public function HRESULT(ISensorDataReport *self, PROPERTYKEY* pKey, PROPVARIANT* pValue) GetSensorValue;
			public function HRESULT(ISensorDataReport *self, IPortableDeviceKeyCollection* pKeys, IPortableDeviceValues** ppValues) GetSensorValues;
		}
		[CRepr]
		public struct ISensorManagerEvents : IUnknown
		{
			public const new Guid IID = .(0x9b3b0b86, 0x266a, 0x4aad, 0xb2, 0x1f, 0xfd, 0xe5, 0x50, 0x10, 0x01, 0xb7);
			
			public function HRESULT(ISensorManagerEvents *self, ISensor* pSensor, SensorState state) OnSensorEnter;
		}
		[CRepr]
		public struct ISensorEvents : IUnknown
		{
			public const new Guid IID = .(0x5d8dcc91, 0x4641, 0x47e7, 0xb7, 0xc3, 0xb7, 0x4f, 0x48, 0xa6, 0xc3, 0x91);
			
			public function HRESULT(ISensorEvents *self, ISensor* pSensor, SensorState state) OnStateChanged;
			public function HRESULT(ISensorEvents *self, ISensor* pSensor, ISensorDataReport* pNewData) OnDataUpdated;
			public function HRESULT(ISensorEvents *self, ISensor* pSensor, Guid* eventID, IPortableDeviceValues* pEventData) OnEvent;
			public function HRESULT(ISensorEvents *self, Guid* ID) OnLeave;
		}
		
		// --- Functions ---
		
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS GetPerformanceTime(uint32* TimeMs);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromFloat(float fltVal, PROPVARIANT* ppropvar);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetPropVariant(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, BOOLEAN TypeCheck, PROPVARIANT* pValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeySetPropVariant(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, BOOLEAN TypeCheck, PROPVARIANT* pValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetFileTime(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, FILETIME* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetGuid(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, Guid* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetBool(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, BOOL* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetUlong(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, uint32* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetUshort(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, uint16* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetFloat(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, float* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetDouble(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, double* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetInt32(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, int32* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetInt64(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, int64* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetNthUlong(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, uint32 Occurrence, uint32* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetNthUshort(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, uint32 Occurrence, uint16* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropKeyFindKeyGetNthInt64(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey, uint32 Occurrence, int64* pRetValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN IsKeyPresentInPropertyList(SENSOR_PROPERTY_LIST* pList, PROPERTYKEY* pKey);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN IsKeyPresentInCollectionList(SENSOR_COLLECTION_LIST* pList, PROPERTYKEY* pKey);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN IsCollectionListSame(SENSOR_COLLECTION_LIST* ListA, SENSOR_COLLECTION_LIST* ListB);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropVariantGetInformation(PROPVARIANT* PropVariantValue, uint32* PropVariantOffset, uint32* PropVariantSize, void** PropVariantPointer, uint32* RemappedType);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS PropertiesListCopy(SENSOR_PROPERTY_LIST* Target, SENSOR_PROPERTY_LIST* Source);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PropertiesListGetFillableCount(uint32 BufferSizeBytes);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CollectionsListGetMarshalledSize(SENSOR_COLLECTION_LIST* Collection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListCopyAndMarshall(SENSOR_COLLECTION_LIST* Target, SENSOR_COLLECTION_LIST* Source);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListMarshall(SENSOR_COLLECTION_LIST* Target);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CollectionsListGetMarshalledSizeWithoutSerialization(SENSOR_COLLECTION_LIST* Collection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListUpdateMarshalledPointer(SENSOR_COLLECTION_LIST* Collection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SerializationBufferAllocate(uint32 SizeInBytes, uint8** pBuffer);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void SerializationBufferFree(uint8* Buffer);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CollectionsListGetSerializedSize(SENSOR_COLLECTION_LIST* Collection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListSerializeToBuffer(SENSOR_COLLECTION_LIST* SourceCollection, uint32 TargetBufferSizeInBytes, uint8* TargetBuffer);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListAllocateBufferAndSerialize(SENSOR_COLLECTION_LIST* SourceCollection, uint32* pTargetBufferSizeInBytes, uint8** pTargetBuffer);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListDeserializeFromBuffer(uint32 SourceBufferSizeInBytes, uint8* SourceBuffer, SENSOR_COLLECTION_LIST* TargetCollection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS SensorCollectionGetAt(uint32 Index, SENSOR_COLLECTION_LIST* pSensorsList, PROPERTYKEY* pKey, PROPVARIANT* pValue);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 CollectionsListGetFillableCount(uint32 BufferSizeBytes);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN EvaluateActivityThresholds(SENSOR_COLLECTION_LIST* newSample, SENSOR_COLLECTION_LIST* oldSample, SENSOR_COLLECTION_LIST* thresholds);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern NTSTATUS CollectionsListSortSubscribedActivitiesByConfidence(SENSOR_COLLECTION_LIST* thresholds, SENSOR_COLLECTION_LIST* pCollection);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitPropVariantFromCLSIDArray(Guid* members, uint32 size, PROPVARIANT* ppropvar);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN IsSensorSubscribed(SENSOR_COLLECTION_LIST* subscriptionList, Guid currentType);
		[Import("sensorsutilsv2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOLEAN IsGUIDPresentInList(Guid* guidArray, uint32 arrayLength, Guid* guidElem);
		
	}
}
