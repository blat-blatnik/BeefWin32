namespace Win32.Devices.Properties;

using System;
using Win32.Foundation;

static
{
	#region Constants
	public const DEVPROPKEY DEVPKEY_DeviceInterface_Autoplay_Silent = .(.(0x434dd28f, 0x9e75, 0x450a, 0x9a, 0xb9, 0xff, 0x61, 0xe6, 0x18, 0xba, 0xd0), 2);
	public const DEVPROPKEY DEVPKEY_NAME = .(.(0xb725f130, 0x47ef, 0x101a, 0xa5, 0xf1, 0x02, 0x60, 0x8c, 0x9e, 0xeb, 0xac), 10);
	public const DEVPROPKEY DEVPKEY_Device_DeviceDesc = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 2);
	public const DEVPROPKEY DEVPKEY_Device_HardwareIds = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 3);
	public const DEVPROPKEY DEVPKEY_Device_CompatibleIds = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 4);
	public const DEVPROPKEY DEVPKEY_Device_Service = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 6);
	public const DEVPROPKEY DEVPKEY_Device_Class = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 9);
	public const DEVPROPKEY DEVPKEY_Device_ClassGuid = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 10);
	public const DEVPROPKEY DEVPKEY_Device_Driver = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 11);
	public const DEVPROPKEY DEVPKEY_Device_ConfigFlags = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 12);
	public const DEVPROPKEY DEVPKEY_Device_Manufacturer = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 13);
	public const DEVPROPKEY DEVPKEY_Device_FriendlyName = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 14);
	public const DEVPROPKEY DEVPKEY_Device_LocationInfo = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 15);
	public const DEVPROPKEY DEVPKEY_Device_PDOName = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 16);
	public const DEVPROPKEY DEVPKEY_Device_Capabilities = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 17);
	public const DEVPROPKEY DEVPKEY_Device_UINumber = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 18);
	public const DEVPROPKEY DEVPKEY_Device_UpperFilters = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 19);
	public const DEVPROPKEY DEVPKEY_Device_LowerFilters = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 20);
	public const DEVPROPKEY DEVPKEY_Device_BusTypeGuid = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 21);
	public const DEVPROPKEY DEVPKEY_Device_LegacyBusType = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 22);
	public const DEVPROPKEY DEVPKEY_Device_BusNumber = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 23);
	public const DEVPROPKEY DEVPKEY_Device_EnumeratorName = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 24);
	public const DEVPROPKEY DEVPKEY_Device_Security = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 25);
	public const DEVPROPKEY DEVPKEY_Device_SecuritySDS = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 26);
	public const DEVPROPKEY DEVPKEY_Device_DevType = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 27);
	public const DEVPROPKEY DEVPKEY_Device_Exclusive = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 28);
	public const DEVPROPKEY DEVPKEY_Device_Characteristics = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 29);
	public const DEVPROPKEY DEVPKEY_Device_Address = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 30);
	public const DEVPROPKEY DEVPKEY_Device_UINumberDescFormat = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 31);
	public const DEVPROPKEY DEVPKEY_Device_PowerData = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 32);
	public const DEVPROPKEY DEVPKEY_Device_RemovalPolicy = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 33);
	public const DEVPROPKEY DEVPKEY_Device_RemovalPolicyDefault = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 34);
	public const DEVPROPKEY DEVPKEY_Device_RemovalPolicyOverride = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 35);
	public const DEVPROPKEY DEVPKEY_Device_InstallState = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 36);
	public const DEVPROPKEY DEVPKEY_Device_LocationPaths = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 37);
	public const DEVPROPKEY DEVPKEY_Device_BaseContainerId = .(.(0xa45c254e, 0xdf1c, 0x4efd, 0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0), 38);
	public const DEVPROPKEY DEVPKEY_Device_InstanceId = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 256);
	public const DEVPROPKEY DEVPKEY_Device_DevNodeStatus = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 2);
	public const DEVPROPKEY DEVPKEY_Device_ProblemCode = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 3);
	public const DEVPROPKEY DEVPKEY_Device_EjectionRelations = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 4);
	public const DEVPROPKEY DEVPKEY_Device_RemovalRelations = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 5);
	public const DEVPROPKEY DEVPKEY_Device_PowerRelations = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 6);
	public const DEVPROPKEY DEVPKEY_Device_BusRelations = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 7);
	public const DEVPROPKEY DEVPKEY_Device_Parent = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 8);
	public const DEVPROPKEY DEVPKEY_Device_Children = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 9);
	public const DEVPROPKEY DEVPKEY_Device_Siblings = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 10);
	public const DEVPROPKEY DEVPKEY_Device_TransportRelations = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 11);
	public const DEVPROPKEY DEVPKEY_Device_ProblemStatus = .(.(0x4340a6c5, 0x93fa, 0x4706, 0x97, 0x2c, 0x7b, 0x64, 0x80, 0x08, 0xa5, 0xa7), 12);
	public const DEVPROPKEY DEVPKEY_Device_Reported = .(.(0x80497100, 0x8c73, 0x48b9, 0xaa, 0xd9, 0xce, 0x38, 0x7e, 0x19, 0xc5, 0x6e), 2);
	public const DEVPROPKEY DEVPKEY_Device_Legacy = .(.(0x80497100, 0x8c73, 0x48b9, 0xaa, 0xd9, 0xce, 0x38, 0x7e, 0x19, 0xc5, 0x6e), 3);
	public const DEVPROPKEY DEVPKEY_Device_ContainerId = .(.(0x8c7ed206, 0x3f8a, 0x4827, 0xb3, 0xab, 0xae, 0x9e, 0x1f, 0xae, 0xfc, 0x6c), 2);
	public const DEVPROPKEY DEVPKEY_Device_InLocalMachineContainer = .(.(0x8c7ed206, 0x3f8a, 0x4827, 0xb3, 0xab, 0xae, 0x9e, 0x1f, 0xae, 0xfc, 0x6c), 4);
	public const DEVPROPKEY DEVPKEY_Device_Model = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 39);
	public const DEVPROPKEY DEVPKEY_Device_ModelId = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 2);
	public const DEVPROPKEY DEVPKEY_Device_FriendlyNameAttributes = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 3);
	public const DEVPROPKEY DEVPKEY_Device_ManufacturerAttributes = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 4);
	public const DEVPROPKEY DEVPKEY_Device_PresenceNotForDevice = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 5);
	public const DEVPROPKEY DEVPKEY_Device_SignalStrength = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 6);
	public const DEVPROPKEY DEVPKEY_Device_IsAssociateableByUserAction = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 7);
	public const DEVPROPKEY DEVPKEY_Device_ShowInUninstallUI = .(.(0x80d81ea6, 0x7473, 0x4b0c, 0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b), 8);
	public const DEVPROPKEY DEVPKEY_Device_Numa_Proximity_Domain = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 1);
	public const DEVPROPKEY DEVPKEY_Device_DHP_Rebalance_Policy = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 2);
	public const DEVPROPKEY DEVPKEY_Device_Numa_Node = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 3);
	public const DEVPROPKEY DEVPKEY_Device_BusReportedDeviceDesc = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 4);
	public const DEVPROPKEY DEVPKEY_Device_IsPresent = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 5);
	public const DEVPROPKEY DEVPKEY_Device_HasProblem = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 6);
	public const DEVPROPKEY DEVPKEY_Device_ConfigurationId = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 7);
	public const DEVPROPKEY DEVPKEY_Device_ReportedDeviceIdsHash = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 8);
	public const DEVPROPKEY DEVPKEY_Device_PhysicalDeviceLocation = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 9);
	public const DEVPROPKEY DEVPKEY_Device_BiosDeviceName = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 10);
	public const DEVPROPKEY DEVPKEY_Device_DriverProblemDesc = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 11);
	public const DEVPROPKEY DEVPKEY_Device_DebuggerSafe = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 12);
	public const DEVPROPKEY DEVPKEY_Device_PostInstallInProgress = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 13);
	public const DEVPROPKEY DEVPKEY_Device_Stack = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 14);
	public const DEVPROPKEY DEVPKEY_Device_ExtendedConfigurationIds = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 15);
	public const DEVPROPKEY DEVPKEY_Device_IsRebootRequired = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 16);
	public const DEVPROPKEY DEVPKEY_Device_FirmwareDate = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 17);
	public const DEVPROPKEY DEVPKEY_Device_FirmwareVersion = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 18);
	public const DEVPROPKEY DEVPKEY_Device_FirmwareRevision = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 19);
	public const DEVPROPKEY DEVPKEY_Device_DependencyProviders = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 20);
	public const DEVPROPKEY DEVPKEY_Device_DependencyDependents = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 21);
	public const DEVPROPKEY DEVPKEY_Device_SoftRestartSupported = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 22);
	public const DEVPROPKEY DEVPKEY_Device_ExtendedAddress = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 23);
	public const DEVPROPKEY DEVPKEY_Device_AssignedToGuest = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 24);
	public const DEVPROPKEY DEVPKEY_Device_CreatorProcessId = .(.(0x540b947e, 0x8b40, 0x45bc, 0xa8, 0xa2, 0x6a, 0x0b, 0x89, 0x4c, 0xbd, 0xa2), 25);
	public const DEVPROPKEY DEVPKEY_Device_SessionId = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 6);
	public const DEVPROPKEY DEVPKEY_Device_InstallDate = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 100);
	public const DEVPROPKEY DEVPKEY_Device_FirstInstallDate = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 101);
	public const DEVPROPKEY DEVPKEY_Device_LastArrivalDate = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 102);
	public const DEVPROPKEY DEVPKEY_Device_LastRemovalDate = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 103);
	public const DEVPROPKEY DEVPKEY_Device_DriverDate = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 2);
	public const DEVPROPKEY DEVPKEY_Device_DriverVersion = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 3);
	public const DEVPROPKEY DEVPKEY_Device_DriverDesc = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 4);
	public const DEVPROPKEY DEVPKEY_Device_DriverInfPath = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 5);
	public const DEVPROPKEY DEVPKEY_Device_DriverInfSection = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 6);
	public const DEVPROPKEY DEVPKEY_Device_DriverInfSectionExt = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 7);
	public const DEVPROPKEY DEVPKEY_Device_MatchingDeviceId = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 8);
	public const DEVPROPKEY DEVPKEY_Device_DriverProvider = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 9);
	public const DEVPROPKEY DEVPKEY_Device_DriverPropPageProvider = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 10);
	public const DEVPROPKEY DEVPKEY_Device_DriverCoInstallers = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 11);
	public const DEVPROPKEY DEVPKEY_Device_ResourcePickerTags = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 12);
	public const DEVPROPKEY DEVPKEY_Device_ResourcePickerExceptions = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 13);
	public const DEVPROPKEY DEVPKEY_Device_DriverRank = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 14);
	public const DEVPROPKEY DEVPKEY_Device_DriverLogoLevel = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 15);
	public const DEVPROPKEY DEVPKEY_Device_NoConnectSound = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 17);
	public const DEVPROPKEY DEVPKEY_Device_GenericDriverInstalled = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 18);
	public const DEVPROPKEY DEVPKEY_Device_AdditionalSoftwareRequested = .(.(0xa8b865dd, 0x2e3d, 0x4094, 0xad, 0x97, 0xe5, 0x93, 0xa7, 0x0c, 0x75, 0xd6), 19);
	public const DEVPROPKEY DEVPKEY_Device_SafeRemovalRequired = .(.(0xafd97640, 0x86a3, 0x4210, 0xb6, 0x7c, 0x28, 0x9c, 0x41, 0xaa, 0xbe, 0x55), 2);
	public const DEVPROPKEY DEVPKEY_Device_SafeRemovalRequiredOverride = .(.(0xafd97640, 0x86a3, 0x4210, 0xb6, 0x7c, 0x28, 0x9c, 0x41, 0xaa, 0xbe, 0x55), 3);
	public const DEVPROPKEY DEVPKEY_DrvPkg_Model = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 2);
	public const DEVPROPKEY DEVPKEY_DrvPkg_VendorWebSite = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 3);
	public const DEVPROPKEY DEVPKEY_DrvPkg_DetailedDescription = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 4);
	public const DEVPROPKEY DEVPKEY_DrvPkg_DocumentationLink = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 5);
	public const DEVPROPKEY DEVPKEY_DrvPkg_Icon = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 6);
	public const DEVPROPKEY DEVPKEY_DrvPkg_BrandingIcon = .(.(0xcf73bb51, 0x3abf, 0x44a2, 0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32), 7);
	public const DEVPROPKEY DEVPKEY_DeviceClass_UpperFilters = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 19);
	public const DEVPROPKEY DEVPKEY_DeviceClass_LowerFilters = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 20);
	public const DEVPROPKEY DEVPKEY_DeviceClass_Security = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 25);
	public const DEVPROPKEY DEVPKEY_DeviceClass_SecuritySDS = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 26);
	public const DEVPROPKEY DEVPKEY_DeviceClass_DevType = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 27);
	public const DEVPROPKEY DEVPKEY_DeviceClass_Exclusive = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 28);
	public const DEVPROPKEY DEVPKEY_DeviceClass_Characteristics = .(.(0x4321918b, 0xf69e, 0x470d, 0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b), 29);
	public const DEVPROPKEY DEVPKEY_DeviceClass_Name = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 2);
	public const DEVPROPKEY DEVPKEY_DeviceClass_ClassName = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 3);
	public const DEVPROPKEY DEVPKEY_DeviceClass_Icon = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 4);
	public const DEVPROPKEY DEVPKEY_DeviceClass_ClassInstaller = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 5);
	public const DEVPROPKEY DEVPKEY_DeviceClass_PropPageProvider = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 6);
	public const DEVPROPKEY DEVPKEY_DeviceClass_NoInstallClass = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 7);
	public const DEVPROPKEY DEVPKEY_DeviceClass_NoDisplayClass = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 8);
	public const DEVPROPKEY DEVPKEY_DeviceClass_SilentInstall = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 9);
	public const DEVPROPKEY DEVPKEY_DeviceClass_NoUseClass = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 10);
	public const DEVPROPKEY DEVPKEY_DeviceClass_DefaultService = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 11);
	public const DEVPROPKEY DEVPKEY_DeviceClass_IconPath = .(.(0x259abffc, 0x50a7, 0x47ce, 0xaf, 0x08, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66), 12);
	public const DEVPROPKEY DEVPKEY_DeviceClass_DHPRebalanceOptOut = .(.(0xd14d3ef3, 0x66cf, 0x4ba2, 0x9d, 0x38, 0x0d, 0xdb, 0x37, 0xab, 0x47, 0x01), 2);
	public const DEVPROPKEY DEVPKEY_DeviceClass_ClassCoInstallers = .(.(0x713d1703, 0xa2e2, 0x49f5, 0x92, 0x14, 0x56, 0x47, 0x2e, 0xf3, 0xda, 0x5c), 2);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_FriendlyName = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 2);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_Enabled = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 3);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_ClassGuid = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 4);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_ReferenceString = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 5);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_Restricted = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 6);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_UnrestrictedAppCapabilities = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 8);
	public const DEVPROPKEY DEVPKEY_DeviceInterface_SchematicName = .(.(0x026e516e, 0xb814, 0x414b, 0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22), 9);
	public const DEVPROPKEY DEVPKEY_DeviceInterfaceClass_DefaultInterface = .(.(0x14c83a99, 0x0b3f, 0x44b7, 0xbe, 0x4c, 0xa1, 0x78, 0xd3, 0x99, 0x05, 0x64), 2);
	public const DEVPROPKEY DEVPKEY_DeviceInterfaceClass_Name = .(.(0x14c83a99, 0x0b3f, 0x44b7, 0xbe, 0x4c, 0xa1, 0x78, 0xd3, 0x99, 0x05, 0x64), 3);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Address = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 51);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_DiscoveryMethod = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 52);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsEncrypted = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 53);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsAuthenticated = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 54);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsConnected = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 55);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsPaired = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 56);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Icon = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 57);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Version = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 65);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Last_Seen = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 66);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Last_Connected = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 67);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsShowInDisconnectedState = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 68);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsLocalMachine = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 70);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_MetadataPath = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 71);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsMetadataSearchInProgress = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 72);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_MetadataChecksum = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 73);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsNotInterestingForDisplay = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 74);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_LaunchDeviceStageOnDeviceConnect = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 76);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_LaunchDeviceStageFromExplorer = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 77);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_BaselineExperienceId = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 78);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsDeviceUniquelyIdentifiable = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 79);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_AssociationArray = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 80);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_DeviceDescription1 = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 81);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_DeviceDescription2 = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 82);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_HasProblem = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 83);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsSharedDevice = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 84);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsNetworkDevice = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 85);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsDefaultDevice = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 86);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_MetadataCabinet = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 87);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_RequiresPairingElevation = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 88);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_ExperienceId = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 89);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Category = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 90);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Category_Desc_Singular = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 91);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Category_Desc_Plural = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 92);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Category_Icon = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 93);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_CategoryGroup_Desc = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 94);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_CategoryGroup_Icon = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 95);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_PrimaryCategory = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 97);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_UnpairUninstall = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 98);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_RequiresUninstallElevation = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 99);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_DeviceFunctionSubRank = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 100);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_AlwaysShowDeviceAsConnected = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 101);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_ConfigFlags = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 105);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_PrivilegedPackageFamilyNames = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 106);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_CustomPrivilegedPackageFamilyNames = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 107);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_IsRebootRequired = .(.(0x78c34fc8, 0x104a, 0x4aca, 0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57), 108);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_FriendlyName = .(.(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd), 12288);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_Manufacturer = .(.(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd), 8192);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_ModelName = .(.(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd), 8194);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_ModelNumber = .(.(0x656a3bb3, 0xecc0, 0x43fd, 0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd), 8195);
	public const DEVPROPKEY DEVPKEY_DeviceContainer_InstallInProgress = .(.(0x83da6326, 0x97a6, 0x4088, 0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29), 9);
	public const DEVPROPKEY DEVPKEY_DevQuery_ObjectType = .(.(0x13673f42, 0xa3d6, 0x49f6, 0xb4, 0xda, 0xae, 0x46, 0xe0, 0xc5, 0x23, 0x7c), 2);
	public const uint32 DEVPROP_TYPEMOD_ARRAY = 4096;
	public const uint32 DEVPROP_TYPEMOD_LIST = 8192;
	public const uint32 DEVPROP_TYPE_EMPTY = 0;
	public const uint32 DEVPROP_TYPE_NULL = 1;
	public const uint32 DEVPROP_TYPE_SBYTE = 2;
	public const uint32 DEVPROP_TYPE_BYTE = 3;
	public const uint32 DEVPROP_TYPE_INT16 = 4;
	public const uint32 DEVPROP_TYPE_UINT16 = 5;
	public const uint32 DEVPROP_TYPE_INT32 = 6;
	public const uint32 DEVPROP_TYPE_UINT32 = 7;
	public const uint32 DEVPROP_TYPE_INT64 = 8;
	public const uint32 DEVPROP_TYPE_UINT64 = 9;
	public const uint32 DEVPROP_TYPE_FLOAT = 10;
	public const uint32 DEVPROP_TYPE_DOUBLE = 11;
	public const uint32 DEVPROP_TYPE_DECIMAL = 12;
	public const uint32 DEVPROP_TYPE_GUID = 13;
	public const uint32 DEVPROP_TYPE_CURRENCY = 14;
	public const uint32 DEVPROP_TYPE_DATE = 15;
	public const uint32 DEVPROP_TYPE_FILETIME = 16;
	public const uint32 DEVPROP_TYPE_BOOLEAN = 17;
	public const uint32 DEVPROP_TYPE_STRING = 18;
	public const uint32 DEVPROP_TYPE_SECURITY_DESCRIPTOR = 19;
	public const uint32 DEVPROP_TYPE_SECURITY_DESCRIPTOR_STRING = 20;
	public const uint32 DEVPROP_TYPE_DEVPROPKEY = 21;
	public const uint32 DEVPROP_TYPE_DEVPROPTYPE = 22;
	public const uint32 DEVPROP_TYPE_ERROR = 23;
	public const uint32 DEVPROP_TYPE_NTSTATUS = 24;
	public const uint32 DEVPROP_TYPE_STRING_INDIRECT = 25;
	public const uint32 MAX_DEVPROP_TYPE = 25;
	public const uint32 MAX_DEVPROP_TYPEMOD = 8192;
	public const uint32 DEVPROP_MASK_TYPE = 4095;
	public const uint32 DEVPROP_MASK_TYPEMOD = 61440;
	public const uint32 DEVPROPID_FIRST_USABLE = 2;
	#endregion
	
	#region Enums
	public enum DEVPROPSTORE : int32
	{
		SYSTEM = 0,
		USER = 1,
	}
	#endregion
	
	#region Structs
	[CRepr]
	public struct DEVPROPKEY
	{
		public Guid fmtid;
		public uint32 pid;
		public this(Guid fmtid, uint32 pid)
		{
			this.fmtid = fmtid;
			this.pid = pid;
		}
	}
	[CRepr]
	public struct DEVPROPCOMPKEY
	{
		public DEVPROPKEY Key;
		public DEVPROPSTORE Store;
		public PWSTR LocaleName;
	}
	[CRepr]
	public struct DEVPROPERTY
	{
		public DEVPROPCOMPKEY CompKey;
		public uint32 Type;
		public uint32 BufferSize;
		public void* Buffer;
	}
	#endregion
	
}
