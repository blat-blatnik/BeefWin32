namespace Win32.Networking.Clustering;

using System;
using Win32.Foundation;
using Win32.Graphics.Gdi;
using Win32.Security;
using Win32.System.Com;
using Win32.System.Registry;
using Win32.System.SystemServices;
using Win32.UI.WindowsAndMessaging;

static
{
	#region Constants
	public const uint32 CLUSTER_VERSION_FLAG_MIXED_MODE = 1;
	public const uint32 CLUSTER_VERSION_UNKNOWN = 4294967295;
	public const uint32 NT4_MAJOR_VERSION = 1;
	public const uint32 NT4SP4_MAJOR_VERSION = 2;
	public const uint32 NT5_MAJOR_VERSION = 3;
	public const uint32 NT51_MAJOR_VERSION = 4;
	public const uint32 NT6_MAJOR_VERSION = 5;
	public const uint32 NT7_MAJOR_VERSION = 6;
	public const uint32 NT8_MAJOR_VERSION = 7;
	public const uint32 NT9_MAJOR_VERSION = 8;
	public const uint32 NT10_MAJOR_VERSION = 9;
	public const uint32 NT11_MAJOR_VERSION = 10;
	public const uint32 NT12_MAJOR_VERSION = 11;
	public const uint32 NT13_MAJOR_VERSION = 12;
	public const uint32 WS2016_TP4_UPGRADE_VERSION = 6;
	public const uint32 WS2016_TP5_UPGRADE_VERSION = 7;
	public const uint32 WS2016_RTM_UPGRADE_VERSION = 8;
	public const uint32 RS3_UPGRADE_VERSION = 1;
	public const uint32 RS4_UPGRADE_VERSION = 2;
	public const uint32 RS5_UPGRADE_VERSION = 3;
	public const uint32 NINETEEN_H1_UPGRADE_VERSION = 1;
	public const uint32 NINETEEN_H2_UPGRADE_VERSION = 2;
	public const uint32 MN_UPGRADE_VERSION = 3;
	public const uint32 FE_UPGRADE_VERSION = 4;
	public const uint32 CA_UPGRADE_VERSION = 1;
	public const uint32 HCI_UPGRADE_BIT = 32768;
	public const String CLUSREG_NAME_MIXED_MODE = "MixedMode";
	public const uint32 CLUSAPI_VERSION_SERVER2008 = 1536;
	public const uint32 CLUSAPI_VERSION_SERVER2008R2 = 1792;
	public const uint32 CLUSAPI_VERSION_WINDOWS8 = 1793;
	public const uint32 CLUSAPI_VERSION_WINDOWSBLUE = 1794;
	public const uint32 CLUSAPI_VERSION_WINTHRESHOLD = 1795;
	public const uint32 CLUSAPI_VERSION_RS3 = 2560;
	public const uint32 CLUSAPI_VERSION = 2560;
	public const uint32 CREATE_CLUSTER_VERSION = 1536;
	public const uint32 CREATE_CLUSTER_MAJOR_VERSION_MASK = 4294967040;
	public const uint32 MAX_CLUSTERNAME_LENGTH = 63;
	public const uint32 CLUSTER_INSTALLED = 1;
	public const uint32 CLUSTER_CONFIGURED = 2;
	public const uint32 CLUSTER_RUNNING = 16;
	public const uint32 CLUS_HYBRID_QUORUM = 1024;
	public const uint32 CLUS_NODE_MAJORITY_QUORUM = 0;
	public const uint32 CLUSCTL_RESOURCE_STATE_CHANGE_REASON_VERSION_1 = 1;
	public const uint32 CLUSREG_DATABASE_SYNC_WRITE_TO_ALL_NODES = 1;
	public const uint32 CLUSREG_DATABASE_ISOLATE_READ = 2;
	public const uint32 CLUSTER_ENUM_ITEM_VERSION_1 = 1;
	public const uint32 CLUSTER_ENUM_ITEM_VERSION = 1;
	public const uint32 CLUSTER_CREATE_GROUP_INFO_VERSION_1 = 1;
	public const uint32 CLUSTER_CREATE_GROUP_INFO_VERSION = 1;
	public const uint32 GROUPSET_READY_SETTING_DELAY = 1;
	public const uint32 GROUPSET_READY_SETTING_ONLINE = 2;
	public const uint32 GROUPSET_READY_SETTING_OS_HEARTBEAT = 3;
	public const uint32 GROUPSET_READY_SETTING_APPLICATION_READY = 4;
	public const uint32 CLUS_GRP_MOVE_ALLOWED = 0;
	public const uint32 CLUS_GRP_MOVE_LOCKED = 1;
	public const int32 CLUSAPI_READ_ACCESS = 1;
	public const int32 CLUSAPI_CHANGE_ACCESS = 2;
	public const int32 CLUSAPI_NO_ACCESS = 4;
	public const uint32 CLUSTER_SET_ACCESS_TYPE_ALLOWED = 0;
	public const uint32 CLUSTER_SET_ACCESS_TYPE_DENIED = 1;
	public const uint32 CLUSTER_DELETE_ACCESS_CONTROL_ENTRY = 2;
	public const uint64 CLUSGROUPSET_STATUS_GROUPS_PENDING = 1uL;
	public const uint64 CLUSGROUPSET_STATUS_GROUPS_ONLINE = 2uL;
	public const uint64 CLUSGROUPSET_STATUS_OS_HEARTBEAT = 4uL;
	public const uint64 CLUSGROUPSET_STATUS_APPLICATION_READY = 8uL;
	public const uint32 CLUSTER_AVAILABILITY_SET_CONFIG_V1 = 1;
	public const uint32 CLUSTER_GROUP_ENUM_ITEM_VERSION_1 = 1;
	public const uint32 CLUSTER_GROUP_ENUM_ITEM_VERSION = 1;
	public const uint32 CLUSTER_RESOURCE_ENUM_ITEM_VERSION_1 = 1;
	public const uint32 CLUSTER_RESOURCE_ENUM_ITEM_VERSION = 1;
	public const uint32 CLUSAPI_NODE_PAUSE_REMAIN_ON_PAUSED_NODE_ON_MOVE_ERROR = 1;
	public const uint32 CLUSAPI_NODE_AVOID_PLACEMENT = 2;
	public const uint32 CLUSAPI_NODE_PAUSE_RETRY_DRAIN_ON_FAILURE = 4;
	public const uint64 CLUSGRP_STATUS_LOCKED_MODE = 1uL;
	public const uint64 CLUSGRP_STATUS_PREEMPTED = 2uL;
	public const uint64 CLUSGRP_STATUS_WAITING_IN_QUEUE_FOR_MOVE = 4uL;
	public const uint64 CLUSGRP_STATUS_PHYSICAL_RESOURCES_LACKING = 8uL;
	public const uint64 CLUSGRP_STATUS_WAITING_TO_START = 16uL;
	public const uint64 CLUSGRP_STATUS_EMBEDDED_FAILURE = 32uL;
	public const uint64 CLUSGRP_STATUS_OFFLINE_DUE_TO_ANTIAFFINITY_CONFLICT = 64uL;
	public const uint64 CLUSGRP_STATUS_NETWORK_FAILURE = 128uL;
	public const uint64 CLUSGRP_STATUS_UNMONITORED = 256uL;
	public const uint64 CLUSGRP_STATUS_OS_HEARTBEAT = 512uL;
	public const uint64 CLUSGRP_STATUS_APPLICATION_READY = 1024uL;
	public const uint64 CLUSGRP_STATUS_OFFLINE_NOT_LOCAL_DISK_OWNER = 2048uL;
	public const uint64 CLUSGRP_STATUS_WAITING_FOR_DEPENDENCIES = 4096uL;
	public const uint64 CLUSRES_STATUS_LOCKED_MODE = 1uL;
	public const uint64 CLUSRES_STATUS_EMBEDDED_FAILURE = 2uL;
	public const uint64 CLUSRES_STATUS_FAILED_DUE_TO_INSUFFICIENT_CPU = 4uL;
	public const uint64 CLUSRES_STATUS_FAILED_DUE_TO_INSUFFICIENT_MEMORY = 8uL;
	public const uint64 CLUSRES_STATUS_FAILED_DUE_TO_INSUFFICIENT_GENERIC_RESOURCES = 16uL;
	public const uint64 CLUSRES_STATUS_NETWORK_FAILURE = 32uL;
	public const uint64 CLUSRES_STATUS_UNMONITORED = 64uL;
	public const uint64 CLUSRES_STATUS_OS_HEARTBEAT = 128uL;
	public const uint64 CLUSRES_STATUS_APPLICATION_READY = 256uL;
	public const uint64 CLUSRES_STATUS_OFFLINE_NOT_LOCAL_DISK_OWNER = 512uL;
	public const uint32 CLUSAPI_GROUP_ONLINE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUSAPI_GROUP_ONLINE_SYNCHRONOUS = 2;
	public const uint32 CLUSAPI_GROUP_ONLINE_BEST_POSSIBLE_NODE = 4;
	public const uint32 CLUSAPI_GROUP_ONLINE_IGNORE_AFFINITY_RULE = 8;
	public const uint32 CLUSAPI_GROUP_OFFLINE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUSAPI_RESOURCE_ONLINE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUSAPI_RESOURCE_ONLINE_DO_NOT_UPDATE_PERSISTENT_STATE = 2;
	public const uint32 CLUSAPI_RESOURCE_ONLINE_NECESSARY_FOR_QUORUM = 4;
	public const uint32 CLUSAPI_RESOURCE_ONLINE_BEST_POSSIBLE_NODE = 8;
	public const uint32 CLUSAPI_RESOURCE_ONLINE_IGNORE_AFFINITY_RULE = 32;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_FORCE_WITH_TERMINATION = 2;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_DO_NOT_UPDATE_PERSISTENT_STATE = 4;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_NONE = 0;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_UNKNOWN = 1;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_MOVING = 2;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_USER_REQUESTED = 4;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_BEING_DELETED = 8;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_BEING_RESTARTED = 16;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_PREEMPTED = 32;
	public const uint32 CLUSAPI_RESOURCE_OFFLINE_REASON_SHUTTING_DOWN = 64;
	public const uint32 CLUSAPI_GROUP_MOVE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUSAPI_GROUP_MOVE_RETURN_TO_SOURCE_NODE_ON_ERROR = 2;
	public const uint32 CLUSAPI_GROUP_MOVE_QUEUE_ENABLED = 4;
	public const uint32 CLUSAPI_GROUP_MOVE_HIGH_PRIORITY_START = 8;
	public const uint32 CLUSAPI_GROUP_MOVE_FAILBACK = 16;
	public const uint32 CLUSAPI_GROUP_MOVE_IGNORE_AFFINITY_RULE = 32;
	public const uint64 CLUSAPI_CHANGE_RESOURCE_GROUP_FORCE_MOVE_TO_CSV = 1uL;
	public const uint64 CLUSAPI_VALID_CHANGE_RESOURCE_GROUP_FLAGS = 1uL;
	public const uint32 GROUP_FAILURE_INFO_VERSION_1 = 1;
	public const uint32 RESOURCE_FAILURE_INFO_VERSION_1 = 1;
	public const uint32 CLUS_ACCESS_ANY = 0;
	public const uint32 CLUS_ACCESS_READ = 1;
	public const uint32 CLUS_ACCESS_WRITE = 2;
	public const uint32 CLUS_NO_MODIFY = 0;
	public const uint32 CLUS_MODIFY = 1;
	public const uint32 CLUS_NOT_GLOBAL = 0;
	public const uint32 CLUS_GLOBAL = 1;
	public const uint32 CLUSCTL_ACCESS_SHIFT = 0;
	public const uint32 CLUSCTL_FUNCTION_SHIFT = 2;
	public const uint32 CLCTL_INTERNAL_SHIFT = 20;
	public const uint32 CLCTL_USER_SHIFT = 21;
	public const uint32 CLCTL_MODIFY_SHIFT = 22;
	public const uint32 CLCTL_GLOBAL_SHIFT = 23;
	public const uint32 CLUSCTL_OBJECT_SHIFT = 24;
	public const uint32 CLUSCTL_CONTROL_CODE_MASK = 4194303;
	public const uint32 CLUSCTL_OBJECT_MASK = 255;
	public const uint32 CLUSCTL_ACCESS_MODE_MASK = 3;
	public const uint32 CLCTL_CLUSTER_BASE = 0;
	public const int32 BitLockerEnabled = 1;
	public const int32 BitLockerDecrypted = 4;
	public const int32 BitlockerEncrypted = 8;
	public const int32 BitLockerDecrypting = 16;
	public const int32 BitlockerEncrypting = 32;
	public const int32 BitLockerPaused = 64;
	public const int32 BitLockerStopped = 128;
	public const uint64 RedirectedIOReasonUserRequest = 1uL;
	public const uint64 RedirectedIOReasonUnsafeFileSystemFilter = 2uL;
	public const uint64 RedirectedIOReasonUnsafeVolumeFilter = 4uL;
	public const uint64 RedirectedIOReasonFileSystemTiering = 8uL;
	public const uint64 RedirectedIOReasonBitLockerInitializing = 16uL;
	public const uint64 RedirectedIOReasonReFs = 32uL;
	public const uint64 RedirectedIOReasonMax = 9223372036854775808uL;
	public const uint64 VolumeRedirectedIOReasonNoDiskConnectivity = 1uL;
	public const uint64 VolumeRedirectedIOReasonStorageSpaceNotAttached = 2uL;
	public const uint64 VolumeRedirectedIOReasonVolumeReplicationEnabled = 4uL;
	public const uint64 VolumeRedirectedIOReasonMax = 9223372036854775808uL;
	public const uint32 MAX_OBJECTID = 64;
	public const uint32 MAX_CO_PASSWORD_LENGTH = 16;
	public const uint32 GUID_PRESENT = 1;
	public const uint32 CREATEDC_PRESENT = 2;
	public const uint32 MAX_CO_PASSWORD_LENGTHEX = 127;
	public const uint32 MAX_CO_PASSWORD_STORAGEEX = 128;
	public const uint32 MAX_CREATINGDC_LENGTH = 256;
	public const uint32 DNS_LENGTH = 64;
	public const uint32 MAINTENANCE_MODE_V2_SIG = 2881155087;
	public const uint32 NNLEN = 80;
	public const String CLUS_RESTYPE_NAME_GENAPP = "Generic Application";
	public const String CLUS_RESTYPE_NAME_GENSVC = "Generic Service";
	public const String CLUS_RESTYPE_NAME_GENSCRIPT = "Generic Script";
	public const String CLUS_RESTYPE_NAME_IPADDR = "IP Address";
	public const String CLUS_RESTYPE_NAME_NETNAME = "Network Name";
	public const String CLUS_RESTYPE_NAME_DNN = "Distributed Network Name";
	public const String CLUS_RESTYPE_NAME_FILESHR = "File Share";
	public const String CLUS_RESTYPE_NAME_PRTSPLR = "Print Spooler";
	public const String CLUS_RESTYPE_NAME_IPV6_NATIVE = "IPv6 Address";
	public const String CLUS_RESTYPE_NAME_IPV6_TUNNEL = "IPv6 Tunnel Address";
	public const String CLUS_RESTYPE_NAME_VSSTASK = "Volume Shadow Copy Service Task";
	public const String CLUS_RESTYPE_NAME_WINS = "WINS Service";
	public const String CLUS_RESTYPE_NAME_DHCP = "DHCP Service";
	public const String CLUS_RESTYPE_NAME_MSMQ = "Microsoft Message Queue Server";
	public const String CLUS_RESTYPE_NAME_NEW_MSMQ = "MSMQ";
	public const String CLUS_RESTYPE_NAME_MSMQ_TRIGGER = "MSMQTriggers";
	public const String CLUS_RESTYPE_NAME_MSDTC = "Distributed Transaction Coordinator";
	public const String CLUS_RESTYPE_NAME_NFS = "NFS Share";
	public const String CLUS_RESTYPE_NAME_NETWORK_FILE_SYSTEM = "Network File System";
	public const String CLUS_RESTYPE_NAME_ISNS = "Microsoft iSNS";
	public const String CLUS_RESTYPE_NAME_HARDDISK = "Physical Disk";
	public const String CLUS_RESTYPE_NAME_PHYS_DISK = "Physical Disk";
	public const String CLUS_RESTYPE_NAME_FSWITNESS = "File Share Witness";
	public const String CLUS_RESTYPE_NAME_FILESERVER = "File Server";
	public const String CLUS_RESTYPE_NAME_SODAFILESERVER = "Scale Out File Server";
	public const String CLUS_RESTYPE_NAME_DFS = "Distributed File System";
	public const String CLUS_RESTYPE_NAME_DFSR = "DFS Replicated Folder";
	public const String CLUS_RESTYPE_NAME_VM = "Virtual Machine";
	public const String CLUS_RESTYPE_NAME_VM_CONFIG = "Virtual Machine Configuration";
	public const String CLUS_RESTYPE_NAME_ISCSITARGET = "iSCSI Target Server";
	public const String CLUS_RESTYPE_NAME_STORAGE_POOL = "Storage Pool";
	public const String CLUS_RESTYPE_NAME_TASKSCHEDULER = "Task Scheduler";
	public const String CLUS_RESTYPE_NAME_VMREPLICA_BROKER = "Virtual Machine Replication Broker";
	public const String CLUS_RESTYPE_NAME_VMREPLICA_COORDINATOR = "Virtual Machine Replication Coordinator";
	public const String CLUS_RESTYPE_NAME_NFS_V2 = "Network File System";
	public const String CLUS_RESTYPE_NAME_NFS_MSNS = "NFS Multi Server Namespace";
	public const String CLUS_RESTYPE_NAME_CAU = "ClusterAwareUpdatingResource";
	public const String CLUS_RESTYPE_NAME_NV_PROVIDER_ADDRESS = "Provider Address";
	public const String CLUS_RESTYPE_NAME_NAT = "Nat";
	public const String CLUS_RESTYPE_NAME_STORAGE_POLICIES = "Storage Policies";
	public const String CLUS_RESTYPE_NAME_STORQOS = "Storage QoS Policy Manager";
	public const String CLUS_RESTYPE_NAME_HEALTH_SERVICE = "Health Service";
	public const String CLUS_RESTYPE_NAME_VM_WMI = "Virtual Machine Cluster WMI";
	public const String CLUS_RESTYPE_NAME_SDDC_MANAGEMENT = "SDDC Management";
	public const String CLUS_RESTYPE_NAME_HCSVM = "HCS Virtual Machine";
	public const String CLUS_RESTYPE_NAME_VIRTUAL_IPV4 = "Disjoint IPv4 Address";
	public const String CLUS_RESTYPE_NAME_VIRTUAL_IPV6 = "Disjoint IPv6 Address";
	public const String CLUS_RESTYPE_NAME_CLOUD_WITNESS = "Cloud Witness";
	public const String CLUS_RESTYPE_NAME_STORAGE_REPLICA = "Storage Replica";
	public const String CLUS_RESTYPE_NAME_CROSS_CLUSTER = "Cross Cluster Dependency Orchestrator";
	public const String CLUS_RESTYPE_NAME_SCALEOUT_MASTER = "Scaleout Master";
	public const String CLUS_RESTYPE_NAME_SCALEOUT_WORKER = "Scaleout Worker";
	public const String CLUS_RESTYPE_NAME_CONTAINER = "Container";
	public const String CLUS_RES_NAME_SCALEOUT_MASTER = "Scaleout Master";
	public const String CLUS_RES_NAME_SCALEOUT_WORKER = "Scaleout Worker";
	public const String CLUSREG_NAME_CLUS_DESC = "Description";
	public const String CLUSREG_NAME_CLUS_SD = "Security Descriptor";
	public const String CLUSREG_NAME_CLUS_DEFAULT_NETWORK_ROLE = "DefaultNetworkRole";
	public const String CLUSREG_NAME_QUORUM_ARBITRATION_TIMEOUT = "QuorumArbitrationTimeMax";
	public const String CLUSTER_HANG_TIMEOUT_KEYNAME = "ClusSvcHangTimeout";
	public const String CLUSTER_HANG_RECOVERY_ACTION_KEYNAME = "HangRecoveryAction";
	public const String CLUSTER_CSA_VSS_STATE = "BackupInProgress";
	public const String CLUSTER_REQUEST_REPLY_TIMEOUT = "RequestReplyTimeout";
	public const String CLUSTER_WITNESS_FAILED_RESTART_INTERVAL = "WitnessRestartInterval";
	public const String CLUSTER_WITNESS_DATABASE_WRITE_TIMEOUT = "WitnessDatabaseWriteTimeout";
	public const String CLUSTER_ADD_EVICT_DELAY = "AddEvictDelay";
	public const String CLUSREG_NAME_FIXQUORUM = "FixQuorum";
	public const String CLUSREG_NAME_PREVENTQUORUM = "PreventQuorum";
	public const String CLUSREG_NAME_IGNORE_PERSISTENT_STATE = "IgnorePersistentStateOnStartup";
	public const String CLUSTER_SHARED_VOLUMES_ROOT = "SharedVolumesRoot";
	public const String ENABLE_CLUSTER_SHARED_VOLUMES = "EnableSharedVolumes";
	public const String CLUSTER_SHARED_VOLUME_VSS_WRITER_OPERATION_TIMEOUT = "SharedVolumeVssWriterOperationTimeout";
	public const String USE_CLIENT_ACCESS_NETWORKS_FOR_CSV = "UseClientAccessNetworksForSharedVolumes";
	public const String CLUSTER_CSV_COMPATIBLE_FILTERS = "SharedVolumeCompatibleFilters";
	public const String CLUSTER_CSV_INCOMPATIBLE_FILTERS = "SharedVolumeIncompatibleFilters";
	public const String CLUSTER_GROUP_WAIT_DELAY = "ClusterGroupWaitDelay";
	public const String MINIMUM_PREEMPTOR_PRIORITY = "MinimumPreemptorPriority";
	public const String MINIMUM_NEVER_PREEMPT_PRIORITY = "MinimumNeverPreemptPriority";
	public const String CLUSTER_ENFORCED_ANTIAFFINITY = "ClusterEnforcedAntiaffinity";
	public const String CLUSREG_NAME_SHUTDOWN_TIMEOUT_MINUTES = "ShutdownTimeoutInMinutes";
	public const String CLUSREG_NAME_CSV_MDS_SD = "SharedVolumeSecurityDescriptor";
	public const String CLUSREG_NAME_FAILOVER_MOVE_MIGRATION_TYPE = "FailoverMoveMigrationType";
	public const String CLUSREG_NAME_CSV_BLOCK_CACHE = "BlockCacheSize";
	public const String CLUSREG_NAME_ROUTE_HISTORY_LENGTH = "RouteHistoryLength";
	public const String CLUSREG_NAME_LAST_RECENT_EVENTS_RESET_TIME = "RecentEventsResetTime";
	public const String CLUSREG_NAME_DRAIN_ON_SHUTDOWN = "DrainOnShutdown";
	public const String CLUSREG_NAME_NETFT_IPSEC_ENABLED = "NetftIPSecEnabled";
	public const String CLUSREG_NAME_WITNESS_DYNAMIC_WEIGHT = "WitnessDynamicWeight";
	public const String CLUSREG_NAME_MESSAGE_BUFFER_LENGTH = "MessageBufferLength";
	public const String CLUSREG_NAME_DATABASE_READ_WRITE_MODE = "DatabaseReadWriteMode";
	public const String CLUSREG_NAME_FUNCTIONAL_LEVEL = "ClusterFunctionalLevel";
	public const String CLUSREG_NAME_UPGRADE_VERSION = "ClusterUpgradeVersion";
	public const String CLUSREG_NAME_RESILIENCY_LEVEL = "ResiliencyLevel";
	public const String CLUSREG_NAME_RESILIENCY_DEFAULT_SECONDS = "ResiliencyDefaultPeriod";
	public const String CLUSREG_NAME_QUARANTINE_THRESHOLD = "QuarantineThreshold";
	public const String CLUSREG_NAME_QUARANTINE_DURATION = "QuarantineDuration";
	public const String CLUSTER_S2D_ENABLED = "S2DEnabled";
	public const String CLUSTER_S2D_BUS_TYPES = "S2DBusTypes";
	public const String CLUSTER_S2D_CACHE_PAGE_SIZE_KBYTES = "S2DCachePageSizeKBytes";
	public const String CLUSTER_S2D_OPTIMIZATIONS = "S2DOptimizations";
	public const String CLUSTER_S2D_IO_LATENCY_THRESHOLD = "S2DIOLatencyThreshold";
	public const String CLUSTER_S2D_CACHE_DESIRED_STATE = "S2DCacheDesiredState";
	public const String CLUSTER_S2D_CACHE_METADATA_RESERVE = "S2DCacheMetadataReserveBytes";
	public const String CLUSTER_S2D_CACHE_FLASH_RESERVE_PERCENT = "S2DCacheFlashReservePercent";
	public const String CLUSTER_S2D_CACHE_BEHAVIOR_FLAGS = "S2DCacheBehavior";
	public const String CLUSTER_NAME_PREFERRED_SITE = "PreferredSite";
	public const String CLUSTER_NAME_AUTO_BALANCER_MODE = "AutoBalancerMode";
	public const String CLUSTER_NAME_AUTO_BALANCER_LEVEL = "AutoBalancerLevel";
	public const String CLUSREG_NAME_GROUP_DEPENDENCY_TIMEOUT = "GroupDependencyTimeout";
	public const String CLUSREG_NAME_PLACEMENT_OPTIONS = "PlacementOptions";
	public const String CLUSREG_NAME_ENABLED_EVENT_LOGS = "EnabledEventLogs";
	public const String CLUSREG_NAME_SAME_SUBNET_DELAY = "SameSubnetDelay";
	public const String CLUSREG_NAME_CROSS_SUBNET_DELAY = "CrossSubnetDelay";
	public const String CLUSREG_NAME_CROSS_SITE_DELAY = "CrossSiteDelay";
	public const String CLUSREG_NAME_SAME_SUBNET_THRESHOLD = "SameSubnetThreshold";
	public const String CLUSREG_NAME_CROSS_SUBNET_THRESHOLD = "CrossSubnetThreshold";
	public const String CLUSREG_NAME_CROSS_SITE_THRESHOLD = "CrossSiteThreshold";
	public const String CLUSREG_NAME_PLUMB_ALL_CROSS_SUBNET_ROUTES = "PlumbAllCrossSubnetRoutes";
	public const String CLUSREG_NAME_NODE_NAME = "NodeName";
	public const String CLUSREG_NAME_NODE_HIGHEST_VERSION = "NodeHighestVersion";
	public const String CLUSREG_NAME_NODE_LOWEST_VERSION = "NodeLowestVersion";
	public const String CLUSREG_NAME_NODE_DESC = "Description";
	public const String CLUSREG_NAME_NODE_MAJOR_VERSION = "MajorVersion";
	public const String CLUSREG_NAME_NODE_MINOR_VERSION = "MinorVersion";
	public const String CLUSREG_NAME_NODE_BUILD_NUMBER = "BuildNumber";
	public const String CLUSREG_NAME_NODE_CSDVERSION = "CSDVersion";
	public const String CLUSREG_NAME_NODE_WEIGHT = "NodeWeight";
	public const String CLUSREG_NAME_NODE_DYNAMIC_WEIGHT = "DynamicWeight";
	public const String CLUSREG_NAME_NODE_IS_PRIMARY = "IsPrimary";
	public const String CLUSREG_NAME_NODE_DRAIN_STATUS = "NodeDrainStatus";
	public const String CLUSREG_NAME_NODE_DRAIN_TARGET = "NodeDrainTarget";
	public const String CLUSREG_NAME_NODE_NEEDS_PQ = "NeedsPreventQuorum";
	public const String CLUSREG_NAME_NODE_FDID = "FaultDomainId";
	public const String CLUSREG_NAME_NODE_STATUS_INFO = "StatusInformation";
	public const String CLUSREG_NAME_NODE_FAULT_DOMAIN = "FaultDomain";
	public const String CLUSREG_NAME_NODE_MODEL = "Model";
	public const String CLUSREG_NAME_NODE_SERIALNUMBER = "SerialNumber";
	public const String CLUSREG_NAME_NODE_MANUFACTURER = "Manufacturer";
	public const String CLUSREG_NAME_GRP_NAME = "Name";
	public const String CLUSREG_NAME_GRP_TYPE = "GroupType";
	public const String CLUSREG_NAME_GRP_DESC = "Description";
	public const String CLUSREG_NAME_GRP_PERSISTENT_STATE = "PersistentState";
	public const String CLUSREG_NAME_GRP_FAILBACK_TYPE = "AutoFailbackType";
	public const String CLUSREG_NAME_GRP_FAILBACK_WIN_START = "FailbackWindowStart";
	public const String CLUSREG_NAME_GRP_FAILBACK_WIN_END = "FailbackWindowEnd";
	public const String CLUSREG_NAME_GRP_FAILOVER_THRESHOLD = "FailoverThreshold";
	public const String CLUSREG_NAME_GRP_FAILOVER_PERIOD = "FailoverPeriod";
	public const String CLUSREG_NAME_GRP_PRIORITY = "Priority";
	public const String CLUSREG_NAME_GRP_DEFAULT_OWNER = "DefaultOwner";
	public const String CLUSREG_NAME_GRP_STATUS_INFORMATION = "StatusInformation";
	public const String CLUSREG_NAME_GRP_ANTI_AFFINITY_CLASS_NAME = "AntiAffinityClassNames";
	public const String CLUSREG_NAME_GRP_START_DELAY = "GroupStartDelay";
	public const String CLUSREG_NAME_GRP_CCF_EPOCH = "CCFEpoch";
	public const String CLUSREG_NAME_GRP_CCF_EPOCH_HIGH = "CCFEpochHigh";
	public const String CLUSREG_NAME_GRP_RESILIENCY_PERIOD = "ResiliencyPeriod";
	public const String CLUSREG_NAME_GRP_PREFERRED_SITE = "PreferredSite";
	public const String CLUSREG_NAME_GRP_COLD_START_SETTING = "ColdStartSetting";
	public const String CLUSREG_NAME_GRP_FAULT_DOMAIN = "FaultDomain";
	public const String CLUSREG_NAME_GRP_UPDATE_DOMAIN = "UpdateDomain";
	public const String CLUSREG_NAME_GRP_PLACEMENT_OPTIONS = "PlacementOptions";
	public const String CLUSREG_NAME_GRP_LOCK_MOVE = "LockedFromMoving";
	public const String CLUSREG_NAME_RES_NAME = "Name";
	public const String CLUSREG_NAME_RES_TYPE = "Type";
	public const String CLUSREG_NAME_RES_DESC = "Description";
	public const String CLUSREG_NAME_RES_SEPARATE_MONITOR = "SeparateMonitor";
	public const String CLUSREG_NAME_RES_PERSISTENT_STATE = "PersistentState";
	public const String CLUSREG_NAME_RES_LOOKS_ALIVE = "LooksAlivePollInterval";
	public const String CLUSREG_NAME_RES_IS_ALIVE = "IsAlivePollInterval";
	public const String CLUSREG_NAME_RES_RESTART_ACTION = "RestartAction";
	public const String CLUSREG_NAME_RES_RESTART_THRESHOLD = "RestartThreshold";
	public const String CLUSREG_NAME_RES_RESTART_PERIOD = "RestartPeriod";
	public const String CLUSREG_NAME_RES_RESTART_DELAY = "RestartDelay";
	public const String CLUSREG_NAME_RES_RETRY_PERIOD_ON_FAILURE = "RetryPeriodOnFailure";
	public const String CLUSREG_NAME_RES_EMBEDDED_FAILURE_ACTION = "EmbeddedFailureAction";
	public const String CLUSREG_NAME_RES_PENDING_TIMEOUT = "PendingTimeout";
	public const String CLUSREG_NAME_RES_DEADLOCK_TIMEOUT = "DeadlockTimeout";
	public const String CLUSREG_NAME_RES_MONITOR_PID = "MonitorProcessId";
	public const String CLUSREG_NAME_RES_STATUS_INFORMATION = "StatusInformation";
	public const String CLUSREG_NAME_RES_LAST_OPERATION_STATUS_CODE = "LastOperationStatusCode";
	public const String CLUSREG_NAME_RES_DATA1 = "ResourceSpecificData1";
	public const String CLUSREG_NAME_RES_DATA2 = "ResourceSpecificData2";
	public const String CLUSREG_NAME_RES_STATUS = "ResourceSpecificStatus";
	public const String CLUSREG_NAME_RESTYPE_NAME = "Name";
	public const String CLUSREG_NAME_RESTYPE_DESC = "Description";
	public const String CLUSREG_NAME_RESTYPE_DLL_NAME = "DllName";
	public const String CLUSREG_NAME_RESTYPE_ADMIN_EXTENSIONS = "AdminExtensions";
	public const String CLUSREG_NAME_RESTYPE_LOOKS_ALIVE = "LooksAlivePollInterval";
	public const String CLUSREG_NAME_RESTYPE_IS_ALIVE = "IsAlivePollInterval";
	public const String CLUSREG_NAME_RESTYPE_PENDING_TIMEOUT = "PendingTimeout";
	public const String CLUSREG_NAME_RESTYPE_DEADLOCK_TIMEOUT = "DeadlockTimeout";
	public const String CLUSREG_NAME_RESTYPE_DUMP_POLICY = "DumpPolicy";
	public const String CLUSREG_NAME_RESTYPE_DUMP_LOG_QUERY = "DumpLogQuery";
	public const String CLUSREG_NAME_RESTYPE_DUMP_SERVICES = "DumpServices";
	public const String CLUSREG_NAME_RESTYPE_ENABLED_EVENT_LOGS = "EnabledEventLogs";
	public const String CLUSREG_NAME_RESTYPE_MAX_MONITORS = "MaximumMonitors";
	public const String CLUSREG_NAME_RESTYPE_WPR_START_AFTER = "WprStartAfter";
	public const String CLUSREG_NAME_RESTYPE_WPR_PROFILES = "WprProfiles";
	public const String CLUSREG_NAME_NET_NAME = "Name";
	public const String CLUSREG_NAME_NET_IPV6_ADDRESSES = "IPv6Addresses";
	public const String CLUSREG_NAME_NET_IPV6_PREFIXLENGTHS = "IPv6PrefixLengths";
	public const String CLUSREG_NAME_NET_IPV4_ADDRESSES = "IPv4Addresses";
	public const String CLUSREG_NAME_NET_IPV4_PREFIXLENGTHS = "IPv4PrefixLengths";
	public const String CLUSREG_NAME_NET_ADDRESS = "Address";
	public const String CLUSREG_NAME_NET_ADDRESS_MASK = "AddressMask";
	public const String CLUSREG_NAME_NET_DESC = "Description";
	public const String CLUSREG_NAME_NET_ROLE = "Role";
	public const String CLUSREG_NAME_NET_SPEED = "LinkSpeed";
	public const String CLUSREG_NAME_NET_RDMA_CAPABLE = "RdmaCapable";
	public const String CLUSREG_NAME_NET_RSS_CAPABLE = "RssCapable";
	public const String CLUSREG_NAME_NET_METRIC = "Metric";
	public const String CLUSREG_NAME_NET_AUTOMETRIC = "AutoMetric";
	public const String CLUSREG_NAME_NETIFACE_NAME = "Name";
	public const String CLUSREG_NAME_NETIFACE_NODE = "Node";
	public const String CLUSREG_NAME_NETIFACE_NETWORK = "Network";
	public const String CLUSREG_NAME_NETIFACE_ADAPTER_NAME = "Adapter";
	public const String CLUSREG_NAME_NETIFACE_ADAPTER_ID = "AdapterId";
	public const String CLUSREG_NAME_NETIFACE_DHCP_ENABLED = "DhcpEnabled";
	public const String CLUSREG_NAME_NETIFACE_IPV6_ADDRESSES = "IPv6Addresses";
	public const String CLUSREG_NAME_NETIFACE_IPV4_ADDRESSES = "IPv4Addresses";
	public const String CLUSREG_NAME_NETIFACE_ADDRESS = "Address";
	public const String CLUSREG_NAME_NETIFACE_DESC = "Description";
	public const String CLUSREG_NAME_GROUPSET_NAME = "Name";
	public const String CLUSREG_NAME_GROUPSET_STARTUP_SETTING = "StartupSetting";
	public const String CLUSREG_NAME_GROUPSET_STARTUP_COUNT = "StartupCount";
	public const String CLUSREG_NAME_GROUPSET_STARTUP_DELAY = "StartupDelay";
	public const String CLUSREG_NAME_GROUPSET_IS_GLOBAL = "IsGlobal";
	public const String CLUSREG_NAME_GROUPSET_STATUS_INFORMATION = "StatusInformation";
	public const String CLUSREG_NAME_GROUPSET_IS_AVAILABILITY_SET = "IsAvailabilitySet";
	public const String CLUSREG_NAME_GROUPSET_UPDATE_DOMAINS = "UpdateDomains";
	public const String CLUSREG_NAME_GROUPSET_FAULT_DOMAINS = "FaultDomains";
	public const String CLUSREG_NAME_GROUPSET_RESERVE_NODE = "ReserveSpareNode";
	public const String CLUSREG_NAME_GROUPSET_AVAILABILITY_SET_INDEX_TO_NODE_MAPPING = "NodeDomainInfo";
	public const String CLUSREG_NAME_AFFINITYRULE_NAME = "Name";
	public const String CLUSREG_NAME_AFFINITYRULE_TYPE = "RuleType";
	public const String CLUSREG_NAME_AFFINITYRULE_GROUPS = "Groups";
	public const String CLUSREG_NAME_AFFINITYRULE_ENABLED = "Enabled";
	public const String CLUSREG_NAME_START_MEMORY = "StartMemory";
	public const String CLUSREG_NAME_VIRTUAL_NUMA_COUNT = "VirtualNumaCount";
	public const String CLUSREG_NAME_DDA_DEVICE_ALLOCATIONS = "DdaDeviceAllocations";
	public const String CLUSREG_NAME_GPUP_DEVICE_ALLOCATIONS = "GpupDeviceAllocations";
	public const String CLUSREG_NAME_PHYSDISK_DISKIDTYPE = "DiskIdType";
	public const String CLUSREG_NAME_PHYSDISK_DISKSIGNATURE = "DiskSignature";
	public const String CLUSREG_NAME_PHYSDISK_DISKIDGUID = "DiskIdGuid";
	public const String CLUSREG_NAME_PHYSDISK_DISKRUNCHKDSK = "DiskRunChkDsk";
	public const String CLUSREG_NAME_PHYSDISK_DISKUNIQUEIDS = "DiskUniqueIds";
	public const String CLUSREG_NAME_PHYSDISK_DISKVOLUMEINFO = "DiskVolumeInfo";
	public const String CLUSREG_NAME_PHYSDISK_DISKARBTYPE = "DiskArbType";
	public const String CLUSREG_NAME_PHYSDISK_DISKARBINTERVAL = "DiskArbInterval";
	public const String CLUSREG_NAME_PHYSDISK_DISKPATH = "DiskPath";
	public const String CLUSREG_NAME_PHYSDISK_DISKRELOAD = "DiskReload";
	public const String CLUSREG_NAME_PHYSDISK_MAINTMODE = "MaintenanceMode";
	public const String CLUSREG_NAME_PHYSDISK_DISKIODELAY = "MaxIoLatency";
	public const String CLUSREG_NAME_PHYSDISK_MIGRATEFIXUP = "MigrateDriveLetters";
	public const String CLUSREG_NAME_PHYSDISK_CSVWRITETHROUGH = "CsvEnforceWriteThrough";
	public const String CLUSREG_NAME_PHYSDISK_CSVBLOCKCACHE = "EnableBlockCache";
	public const String CLUSREG_NAME_PHYSDISK_FASTONLINEARBITRATE = "FastOnlineArbitrate";
	public const String CLUSREG_NAME_PHYSDISK_SPACEIDGUID = "VirtualDiskId";
	public const String CLUSREG_NAME_STORAGESPACE_POOLIDGUID = "PoolId";
	public const String CLUSREG_NAME_PHYSDISK_CSVSNAPSHOTDIFFAREASIZE = "SnapshotDiffSize";
	public const String CLUSREG_NAME_PHYSDISK_CSVSNAPSHOTAGELIMIT = "SnapshotAgeLimit";
	public const String CLUSREG_NAME_PHYSDISK_DISKGUID = "DiskGuid";
	public const String CLUSREG_NAME_PHYSDISK_VOLSNAPACTIVATETIMEOUT = "VolsnapActivateTimeout";
	public const String CLUSREG_NAME_PHYSDISK_DISKRECOVERYACTION = "DiskRecoveryAction";
	public const String CLUSREG_NAME_STORAGESPACE_NAME = "VirtualDiskName";
	public const String CLUSREG_NAME_STORAGESPACE_DESCRIPTION = "VirtualDiskDescription";
	public const String CLUSREG_NAME_STORAGESPACE_HEALTH = "VirtualDiskHealth";
	public const String CLUSREG_NAME_STORAGESPACE_STATE = "VirtualDiskState";
	public const String CLUSREG_NAME_STORAGESPACE_PROVISIONING = "VirtualDiskProvisioning";
	public const String CLUSREG_NAME_STORAGESPACE_RESILIENCYTYPE = "VirtualDiskResiliencyType";
	public const String CLUSREG_NAME_STORAGESPACE_RESILIENCYCOLUMNS = "VirtualDiskResiliencyColumns";
	public const String CLUSREG_NAME_STORAGESPACE_RESILIENCYINTERLEAVE = "VirtualDiskResiliencyInterleave";
	public const String CLUSREG_NAME_GENAPP_COMMAND_LINE = "CommandLine";
	public const String CLUSREG_NAME_GENAPP_CURRENT_DIRECTORY = "CurrentDirectory";
	public const String CLUSREG_NAME_GENAPP_USE_NETWORK_NAME = "UseNetworkName";
	public const String CLUSREG_NAME_GENSCRIPT_SCRIPT_FILEPATH = "ScriptFilepath";
	public const String CLUSREG_NAME_GENSVC_SERVICE_NAME = "ServiceName";
	public const String CLUSREG_NAME_GENSVC_STARTUP_PARAMS = "StartupParameters";
	public const String CLUSREG_NAME_GENSVC_USE_NETWORK_NAME = "UseNetworkName";
	public const String CLUSREG_NAME_IPADDR_NETWORK = "Network";
	public const String CLUSREG_NAME_IPADDR_ADDRESS = "Address";
	public const String CLUSREG_NAME_IPADDR_SUBNET_MASK = "SubnetMask";
	public const String CLUSREG_NAME_IPADDR_ENABLE_NETBIOS = "EnableNetBIOS";
	public const String CLUSREG_NAME_IPADDR_OVERRIDE_ADDRMATCH = "OverrideAddressMatch";
	public const String CLUSREG_NAME_IPADDR_ENABLE_DHCP = "EnableDhcp";
	public const String CLUSREG_NAME_IPADDR_LEASE_OBTAINED_TIME = "LeaseObtainedTime";
	public const String CLUSREG_NAME_IPADDR_LEASE_TERMINATES_TIME = "LeaseExpiresTime";
	public const String CLUSREG_NAME_IPADDR_T1 = "T1";
	public const String CLUSREG_NAME_IPADDR_T2 = "T2";
	public const String CLUSREG_NAME_IPADDR_DHCP_SERVER = "DhcpServer";
	public const String CLUSREG_NAME_IPADDR_DHCP_ADDRESS = "DhcpAddress";
	public const String CLUSREG_NAME_IPADDR_DHCP_SUBNET_MASK = "DhcpSubnetMask";
	public const String CLUSREG_NAME_IPADDR_SHARED_NETNAME = "SharedNetname";
	public const String CLUSREG_NAME_IPADDR_PROBE_PORT = "ProbePort";
	public const String CLUSREG_NAME_IPADDR_PROBE_FAILURE_THRESHOLD = "ProbeFailureThreshold";
	public const String CLUSREG_NAME_IPV6_NATIVE_NETWORK = "Network";
	public const String CLUSREG_NAME_IPV6_NATIVE_ADDRESS = "Address";
	public const String CLUSREG_NAME_IPV6_NATIVE_PREFIX_LENGTH = "PrefixLength";
	public const String CLUSREG_NAME_IPV6_TUNNEL_ADDRESS = "Address";
	public const String CLUSREG_NAME_IPV6_TUNNEL_TUNNELTYPE = "TunnelType";
	public const String CLUSREG_NAME_NETNAME_NAME = "Name";
	public const String CLUSREG_NAME_NETNAME_CREATING_DC = "CreatingDC";
	public const String CLUSREG_NAME_NETNAME_OBJECT_ID = "ObjectGUID";
	public const String CLUSREG_NAME_NETNAME_DNS_NAME = "DnsName";
	public const String CLUSREG_NAME_NETNAME_REMAP_PIPE_NAMES = "RemapPipeNames";
	public const String CLUSREG_NAME_NETNAME_RESOURCE_DATA = "ResourceData";
	public const String CLUSREG_NAME_NETNAME_STATUS_NETBIOS = "StatusNetBIOS";
	public const String CLUSREG_NAME_NETNAME_STATUS_DNS = "StatusDNS";
	public const String CLUSREG_NAME_NETNAME_STATUS_KERBEROS = "StatusKerberos";
	public const String CLUSREG_NAME_NETNAME_VCO_CONTAINER = "VcoContainer";
	public const String CLUSREG_NAME_NETNAME_LAST_DNS_UPDATE = "LastDNSUpdateTime";
	public const String CLUSREG_NAME_NETNAME_CONTAINERGUID = "CryptoContainerGUID";
	public const String CLUSREG_NAME_NETNAME_HOST_TTL = "HostRecordTTL";
	public const String CLUSREG_NAME_NETNAME_PUBLISH_PTR = "PublishPTRRecords";
	public const String CLUSREG_NAME_NETNAME_REMOVEVCO_ONDELETE = "DeleteVcoOnResCleanup";
	public const String CLUSREG_NAME_NETNAME_REGISTER_ALL_IP = "RegisterAllProvidersIP";
	public const String CLUSREG_KEYNAME_OBJECTGUIDS = "ObjectGUIDs";
	public const String CLUSREG_NAME_NETNAME_EXCLUDE_NETWORKS = "ExcludeNetworks";
	public const String CLUSREG_NAME_NETNAME_ALIASES = "Aliases";
	public const String CLUSREG_NAME_NETNAME_IN_USE_NETWORKS = "InUseNetworks";
	public const String CLUSREG_NAME_NETNAME_DNS_SUFFIX = "DnsSuffix";
	public const String CLUSREG_NAME_NETNAME_AD_AWARE = "ADAware";
	public const String CLUSREG_NAME_NETNAME_DNN_DISABLE_CLONES = "DisableClones";
	public const String CLUSREG_NAME_PRTSPOOL_DEFAULT_SPOOL_DIR = "DefaultSpoolDirectory";
	public const String CLUSREG_NAME_PRTSPOOL_TIMEOUT = "JobCompletionTimeout";
	public const String CLUSREG_NAME_FILESHR_SERVER_NAME = "ServerName";
	public const String CLUSREG_NAME_FILESHR_SHARE_NAME = "ShareName";
	public const String CLUSREG_NAME_FILESHR_PATH = "Path";
	public const String CLUSREG_NAME_FILESHR_REMARK = "Remark";
	public const String CLUSREG_NAME_FILESHR_MAX_USERS = "MaxUsers";
	public const String CLUSREG_NAME_FILESHR_SD = "Security Descriptor";
	public const String CLUSREG_NAME_FILESHR_SHARE_SUBDIRS = "ShareSubDirs";
	public const String CLUSREG_NAME_FILESHR_HIDE_SUBDIR_SHARES = "HideSubDirShares";
	public const String CLUSREG_NAME_FILESHR_IS_DFS_ROOT = "IsDfsRoot";
	public const String CLUSREG_NAME_FILESHR_SHARE_FLAGS = "ShareFlags";
	public const String CLUSREG_NAME_FILESHR_CA_TIMEOUT = "CATimeout";
	public const String CLUSREG_NAME_DHCP_DATABASE_PATH = "DatabasePath";
	public const String CLUSREG_NAME_DHCP_BACKUP_PATH = "BackupPath";
	public const String CLUSREG_NAME_LOG_FILE_PATH = "LogFilePath";
	public const String CLUSREG_NAME_WINS_DATABASE_PATH = "DatabasePath";
	public const String CLUSREG_NAME_WINS_BACKUP_PATH = "BackupPath";
	public const String CLUSREG_NAME_VSSTASK_CURRENTDIRECTORY = "CurrentDirectory";
	public const String CLUSREG_NAME_VSSTASK_APPNAME = "ApplicationName";
	public const String CLUSREG_NAME_VSSTASK_APPPARAMS = "ApplicationParams";
	public const String CLUSREG_NAME_VSSTASK_TRIGGERARRAY = "TriggerArray";
	public const String CLUSREG_NAME_FSWITNESS_SHARE_PATH = "SharePath";
	public const String CLUSREG_NAME_FSWITNESS_ARB_DELAY = "ArbitrationDelay";
	public const String CLUSREG_NAME_FSWITNESS_IMPERSONATE_CNO = "ImpersonateCNO";
	public const String CLUSREG_NAME_STORAGESPACE_POOLNAME = "Name";
	public const String CLUSREG_NAME_STORAGESPACE_POOLDESC = "Description";
	public const String CLUSREG_NAME_STORAGESPACE_POOLDRIVEIDS = "DriveIds";
	public const String CLUSREG_NAME_STORAGESPACE_POOLHEALTH = "Health";
	public const String CLUSREG_NAME_STORAGESPACE_POOLSTATE = "State";
	public const String CLUSREG_NAME_STORAGESPACE_POOLTOTALCAPACITY = "TotalCapacity";
	public const String CLUSREG_NAME_STORAGESPACE_POOLCONSUMEDCAPACITY = "ConsumedCapacity";
	public const String CLUSREG_NAME_STORAGESPACE_POOLARBITRATE = "Arbitrate";
	public const String CLUSREG_NAME_STORAGESPACE_POOLREEVALTIMEOUT = "ReEvaluatePlacementTimeout";
	public const String CLUSREG_NAME_STORAGESPACE_POOLQUORUMSHARE = "PoolQuorumShare";
	public const String CLUSREG_NAME_STORAGESPACE_POOLQUORUMUSERACCOUNT = "PoolQuorumUserAccount";
	public const String CLUSREG_NAME_SOFS_SMBASYMMETRYMODE = "SmbAsymmetryMode";
	public const String CLUSREG_NAME_VIP_PREFIX_LENGTH = "PrefixLength";
	public const String CLUSREG_NAME_VIP_ADAPTER_NAME = "AdapterName";
	public const String CLUSREG_NAME_VIP_ADDRESS = "Address";
	public const String CLUSREG_NAME_VIP_VSID = "VSID";
	public const String CLUSREG_NAME_VIP_RDID = "RDID";
	public const String CLUSREG_NAME_CLOUDWITNESS_PRIMARY_TOKEN = "PrimaryToken";
	public const String CLUSREG_NAME_CLOUDWITNESS_PRIMARY_KEY = "PrimaryKey";
	public const String CLUSREG_NAME_CLOUDWITNESS_ACCOUNT_NAME = "AccountName";
	public const String CLUSREG_NAME_CLOUDWITNESS_ENDPOINT_INFO = "EndpointInfo";
	public const String CLUSREG_NAME_CLOUDWITNESS_CONTAINER_NAME = "ContainerName";
	public const String CLOUD_WITNESS_CONTAINER_NAME = "msft-cloud-witness";
	public const String CLUS_NAME_RES_TYPE_SOURCE_RESID = "SourceResourceId";
	public const String CLUS_NAME_RES_TYPE_TARGET_RESID = "TargetResourceId";
	public const String CLUS_NAME_RES_TYPE_SOURCE_VOLUMES = "SourceVolumes";
	public const String CLUS_NAME_RES_TYPE_TARGET_VOLUMES = "TargetVolumes";
	public const String CLUS_NAME_RES_TYPE_DATA_RESID = "DataResourceId";
	public const String CLUS_NAME_RES_TYPE_LOG_RESID = "LogResourceId";
	public const String CLUS_NAME_RES_TYPE_LOG_VOLUME = "LogVolume";
	public const String CLUS_NAME_RES_TYPE_REPLICATION_GROUPID = "ReplicationGroupId";
	public const String CLUS_NAME_RES_TYPE_CLUSTER_GROUPID = "ClusterGroupId";
	public const String CLUS_NAME_RES_TYPE_REPLICATION_GROUP_TYPE = "ReplicationClusterGroupType";
	public const String CLUS_NAME_RES_TYPE_MINIMUM_LOG_SIZE = "MinimumLogSizeInBytes";
	public const String CLUS_NAME_RES_TYPE_UNIT_LOG_SIZE_CHANGE = "UnitOfLogSizeChangeInBytes";
	public const String CLUS_NAME_RES_TYPE_LOG_MULTIPLE = "LogSizeMultiple";
	public const uint32 SR_REPLICATED_PARTITION_DISALLOW_MULTINODE_IO = 1;
	public const uint32 CLUSCTL_RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_FLAG_ADD_VOLUME_INFO = 1;
	public const uint32 CLUSCTL_RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_FLAG_FILTER_BY_POOL = 2;
	public const uint32 CLUSCTL_RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_FLAG_INCLUDE_NON_SHARED_DISKS = 4;
	public const String STARTUP_ROUTINE = "Startup";
	public const uint32 CLRES_VERSION_V1_00 = 256;
	public const String STARTUP_EX_ROUTINE = "StartupEx";
	public const uint32 CLRES_VERSION_V2_00 = 512;
	public const uint32 CLRES_VERSION_V3_00 = 768;
	public const uint32 CLRES_VERSION_V4_00 = 1024;
	public const uint32 CLUSCTL_GET_OPERATION_CONTEXT_PARAMS_VERSION_1 = 1;
	public const String CLUSRES_NAME_GET_OPERATION_CONTEXT_FLAGS = "Flags";
	public const uint32 CLUSRESDLL_STATUS_OFFLINE_BUSY = 1;
	public const uint32 CLUSRESDLL_STATUS_OFFLINE_SOURCE_THROTTLED = 2;
	public const uint32 CLUSRESDLL_STATUS_OFFLINE_DESTINATION_THROTTLED = 4;
	public const uint32 CLUSRESDLL_STATUS_OFFLINE_DESTINATION_REJECTED = 8;
	public const uint32 CLUSRESDLL_STATUS_INSUFFICIENT_MEMORY = 16;
	public const uint32 CLUSRESDLL_STATUS_INSUFFICIENT_PROCESSOR = 32;
	public const uint32 CLUSRESDLL_STATUS_INSUFFICIENT_OTHER_RESOURCES = 64;
	public const uint32 CLUSRESDLL_STATUS_INVALID_PARAMETERS = 128;
	public const uint32 CLUSRESDLL_STATUS_NETWORK_NOT_AVAILABLE = 256;
	public const uint32 CLUSRESDLL_STATUS_DO_NOT_COLLECT_WER_REPORT = 1073741824;
	public const uint32 CLUSRESDLL_STATUS_DUMP_NOW = 2147483648;
	public const uint32 CLUS_RESDLL_OPEN_RECOVER_MONITOR_STATE = 1;
	public const uint32 CLUS_RESDLL_ONLINE_RECOVER_MONITOR_STATE = 1;
	public const uint32 CLUS_RESDLL_ONLINE_IGNORE_RESOURCE_STATUS = 2;
	public const uint32 CLUS_RESDLL_ONLINE_RETURN_TO_SOURCE_NODE_ON_ERROR = 4;
	public const uint32 CLUS_RESDLL_ONLINE_RESTORE_ONLINE_STATE = 8;
	public const uint32 CLUS_RESDLL_ONLINE_IGNORE_NETWORK_CONNECTIVITY = 16;
	public const uint32 CLUS_RESDLL_OFFLINE_IGNORE_RESOURCE_STATUS = 1;
	public const uint32 CLUS_RESDLL_OFFLINE_RETURN_TO_SOURCE_NODE_ON_ERROR = 2;
	public const uint32 CLUS_RESDLL_OFFLINE_QUEUE_ENABLED = 4;
	public const uint32 CLUS_RESDLL_OFFLINE_RETURNING_TO_SOURCE_NODE_BECAUSE_OF_ERROR = 8;
	public const uint32 CLUS_RESDLL_OFFLINE_DUE_TO_EMBEDDED_FAILURE = 16;
	public const uint32 CLUS_RESDLL_OFFLINE_IGNORE_NETWORK_CONNECTIVITY = 32;
	public const uint32 CLUS_RESDLL_OFFLINE_DO_NOT_UPDATE_PERSISTENT_STATE = 64;
	public const uint32 CLUS_RESDLL_OPEN_DONT_DELETE_TEMP_DISK = 2;
	public const uint32 RESTYPE_MONITOR_SHUTTING_DOWN_NODE_STOP = 1;
	public const uint32 RESTYPE_MONITOR_SHUTTING_DOWN_CLUSSVC_CRASH = 2;
	public const uint32 RESUTIL_PROPITEM_READ_ONLY = 1;
	public const uint32 RESUTIL_PROPITEM_REQUIRED = 2;
	public const uint32 RESUTIL_PROPITEM_SIGNED = 4;
	public const uint32 RESUTIL_PROPITEM_IN_MEMORY = 8;
	public const uint32 LOCKED_MODE_FLAGS_DONT_REMOVE_FROM_MOVE_QUEUE = 1;
	public const String CLUSTER_HEALTH_FAULT_PROPERTY_NAME = "ClusterHealth";
	public const uint32 CLUSTER_HEALTH_FAULT_ARGS = 7;
	public const uint32 CLUSTER_HEALTH_FAULT_ID = 0;
	public const uint32 CLUSTER_HEALTH_FAULT_ERRORTYPE = 1;
	public const uint32 CLUSTER_HEALTH_FAULT_ERRORCODE = 2;
	public const uint32 CLUSTER_HEALTH_FAULT_DESCRIPTION = 3;
	public const uint32 CLUSTER_HEALTH_FAULT_PROVIDER = 4;
	public const uint32 CLUSTER_HEALTH_FAULT_FLAGS = 5;
	public const uint32 CLUSTER_HEALTH_FAULT_RESERVED = 6;
	public const String CLUSTER_HEALTH_FAULT_ID_LABEL = "Id";
	public const String CLUSTER_HEALTH_FAULT_ERRORTYPE_LABEL = "ErrorType";
	public const String CLUSTER_HEALTH_FAULT_ERRORCODE_LABEL = "ErrorCode";
	public const String CLUSTER_HEALTH_FAULT_DESCRIPTION_LABEL = "Description";
	public const String CLUSTER_HEALTH_FAULT_PROVIDER_LABEL = "Provider";
	public const String CLUSTER_HEALTH_FAULT_FLAGS_LABEL = "Flags";
	public const String CLUSTER_HEALTH_FAULT_RESERVED_LABEL = "Reserved";
	public const uint32 CLUS_CREATE_CRYPT_CONTAINER_NOT_FOUND = 1;
	public const uint32 SET_APPINSTANCE_CSV_FLAGS_VALID_ONLY_IF_CSV_COORDINATOR = 1;
	#endregion
	
	#region Enums
	public enum CLUSTER_QUORUM_TYPE : int32
	{
		OperationalQuorum = 0,
		ModifyQuorum = 1,
	}
	public enum NODE_CLUSTER_STATE : int32
	{
		NotInstalled = 0,
		NotConfigured = 1,
		NotRunning = 3,
		Running = 19,
	}
	public enum CLUSTER_RESOURCE_STATE_CHANGE_REASON : int32
	{
		Unknown = 0,
		Move = 1,
		Failover = 2,
		FailedMove = 3,
		Shutdown = 4,
		Rundown = 5,
	}
	public enum CLUSTER_REG_COMMAND : int32
	{
		COMMAND_NONE = 0,
		SET_VALUE = 1,
		CREATE_KEY = 2,
		DELETE_KEY = 3,
		DELETE_VALUE = 4,
		SET_KEY_SECURITY = 5,
		VALUE_DELETED = 6,
		READ_KEY = 7,
		READ_VALUE = 8,
		READ_ERROR = 9,
		CONTROL_COMMAND = 10,
		CONDITION_EXISTS = 11,
		CONDITION_NOT_EXISTS = 12,
		CONDITION_IS_EQUAL = 13,
		CONDITION_IS_NOT_EQUAL = 14,
		CONDITION_IS_GREATER_THAN = 15,
		CONDITION_IS_LESS_THAN = 16,
		CONDITION_KEY_EXISTS = 17,
		CONDITION_KEY_NOT_EXISTS = 18,
		LAST_COMMAND = 19,
	}
	public enum CLUSGROUP_TYPE : int32
	{
		CoreCluster = 1,
		AvailableStorage = 2,
		Temporary = 3,
		SharedVolume = 4,
		StoragePool = 5,
		FileServer = 100,
		PrintServer = 101,
		DhcpServer = 102,
		Dtc = 103,
		Msmq = 104,
		Wins = 105,
		StandAloneDfs = 106,
		GenericApplication = 107,
		GenericService = 108,
		GenericScript = 109,
		IScsiNameService = 110,
		VirtualMachine = 111,
		TsSessionBroker = 112,
		IScsiTarget = 113,
		ScaleoutFileServer = 114,
		VMReplicaBroker = 115,
		TaskScheduler = 116,
		ClusterUpdateAgent = 117,
		ScaleoutCluster = 118,
		StorageReplica = 119,
		VMReplicaCoordinator = 120,
		CrossClusterOrchestrator = 121,
		InfrastructureFileServer = 122,
		CoreSddc = 123,
		Unknown = 9999,
	}
	public enum CLUSTER_MGMT_POINT_TYPE : int32
	{
		NONE = 0,
		CNO = 1,
		DNS_ONLY = 2,
		CNO_ONLY = 3,
	}
	public enum CLUSTER_MGMT_POINT_RESTYPE : int32
	{
		AUTO = 0,
		SNN = 1,
		DNN = 2,
	}
	public enum CLUSTER_CLOUD_TYPE : int32
	{
		NONE = 0,
		AZURE = 1,
		MIXED = 128,
		UNKNOWN = -1,
	}
	public enum CLUS_GROUP_START_SETTING : int32
	{
		START_ALWAYS = 0,
		DO_NOT_START = 1,
		START_ALLOWED = 2,
	}
	[AllowDuplicates]
	public enum CLUS_AFFINITY_RULE_TYPE : int32
	{
		NONE = 0,
		SAME_FAULT_DOMAIN = 1,
		SAME_NODE = 2,
		DIFFERENT_FAULT_DOMAIN = 3,
		DIFFERENT_NODE = 4,
		MIN = 0,
		MAX = 4,
	}
	public enum CLUSTER_QUORUM_VALUE : int32
	{
		MAINTAINED = 0,
		LOST = 1,
	}
	public enum CLUSTER_UPGRADE_PHASE : int32
	{
		Initialize = 1,
		ValidatingUpgrade = 2,
		UpgradingComponents = 3,
		InstallingNewComponents = 4,
		UpgradeComplete = 5,
	}
	public enum CLUSTER_CHANGE : int32
	{
		NODE_STATE = 1,
		NODE_DELETED = 2,
		NODE_ADDED = 4,
		NODE_PROPERTY = 8,
		REGISTRY_NAME = 16,
		REGISTRY_ATTRIBUTES = 32,
		REGISTRY_VALUE = 64,
		REGISTRY_SUBTREE = 128,
		RESOURCE_STATE = 256,
		RESOURCE_DELETED = 512,
		RESOURCE_ADDED = 1024,
		RESOURCE_PROPERTY = 2048,
		GROUP_STATE = 4096,
		GROUP_DELETED = 8192,
		GROUP_ADDED = 16384,
		GROUP_PROPERTY = 32768,
		RESOURCE_TYPE_DELETED = 65536,
		RESOURCE_TYPE_ADDED = 131072,
		RESOURCE_TYPE_PROPERTY = 262144,
		CLUSTER_RECONNECT = 524288,
		NETWORK_STATE = 1048576,
		NETWORK_DELETED = 2097152,
		NETWORK_ADDED = 4194304,
		NETWORK_PROPERTY = 8388608,
		NETINTERFACE_STATE = 16777216,
		NETINTERFACE_DELETED = 33554432,
		NETINTERFACE_ADDED = 67108864,
		NETINTERFACE_PROPERTY = 134217728,
		QUORUM_STATE = 268435456,
		CLUSTER_STATE = 536870912,
		CLUSTER_PROPERTY = 1073741824,
		HANDLE_CLOSE = -2147483648,
		ALL = -1,
	}
	public enum CLUSTER_NOTIFICATIONS_VERSION : int32
	{
		V1 = 1,
		V2 = 2,
	}
	public enum CLUSTER_CHANGE_CLUSTER_V2 : int32
	{
		RECONNECT_V2 = 1,
		STATE_V2 = 2,
		GROUP_ADDED_V2 = 4,
		HANDLE_CLOSE_V2 = 8,
		NETWORK_ADDED_V2 = 16,
		NODE_ADDED_V2 = 32,
		RESOURCE_TYPE_ADDED_V2 = 64,
		COMMON_PROPERTY_V2 = 128,
		PRIVATE_PROPERTY_V2 = 256,
		LOST_NOTIFICATIONS_V2 = 512,
		RENAME_V2 = 1024,
		MEMBERSHIP_V2 = 2048,
		UPGRADED_V2 = 4096,
		ALL_V2 = 8191,
	}
	public enum CLUSTER_CHANGE_GROUP_V2 : int32
	{
		DELETED_V2 = 1,
		COMMON_PROPERTY_V2 = 2,
		PRIVATE_PROPERTY_V2 = 4,
		STATE_V2 = 8,
		OWNER_NODE_V2 = 16,
		PREFERRED_OWNERS_V2 = 32,
		RESOURCE_ADDED_V2 = 64,
		RESOURCE_GAINED_V2 = 128,
		RESOURCE_LOST_V2 = 256,
		HANDLE_CLOSE_V2 = 512,
		ALL_V2 = 1023,
	}
	public enum CLUSTER_CHANGE_GROUPSET_V2 : int32
	{
		DELETED_v2 = 1,
		COMMON_PROPERTY_V2 = 2,
		PRIVATE_PROPERTY_V2 = 4,
		STATE_V2 = 8,
		GROUP_ADDED = 16,
		GROUP_REMOVED = 32,
		DEPENDENCIES_V2 = 64,
		DEPENDENTS_V2 = 128,
		HANDLE_CLOSE_v2 = 256,
		ALL_V2 = 511,
	}
	public enum CLUSTER_CHANGE_RESOURCE_V2 : int32
	{
		COMMON_PROPERTY_V2 = 1,
		PRIVATE_PROPERTY_V2 = 2,
		STATE_V2 = 4,
		OWNER_GROUP_V2 = 8,
		DEPENDENCIES_V2 = 16,
		DEPENDENTS_V2 = 32,
		POSSIBLE_OWNERS_V2 = 64,
		DELETED_V2 = 128,
		DLL_UPGRADED_V2 = 256,
		HANDLE_CLOSE_V2 = 512,
		TERMINAL_STATE_V2 = 1024,
		ALL_V2 = 2047,
	}
	public enum CLUSTER_CHANGE_RESOURCE_TYPE_V2 : int32
	{
		CHANGE_RESOURCE_TYPE_DELETED_V2 = 1,
		CHANGE_RESOURCE_TYPE_COMMON_PROPERTY_V2 = 2,
		CHANGE_RESOURCE_TYPE_PRIVATE_PROPERTY_V2 = 4,
		CHANGE_RESOURCE_TYPE_POSSIBLE_OWNERS_V2 = 8,
		CHANGE_RESOURCE_TYPE_DLL_UPGRADED_V2 = 16,
		RESOURCE_TYPE_SPECIFIC_V2 = 32,
		CHANGE_RESOURCE_TYPE_ALL_V2 = 63,
	}
	public enum CLUSTER_CHANGE_NETINTERFACE_V2 : int32
	{
		DELETED_V2 = 1,
		COMMON_PROPERTY_V2 = 2,
		PRIVATE_PROPERTY_V2 = 4,
		STATE_V2 = 8,
		HANDLE_CLOSE_V2 = 16,
		ALL_V2 = 31,
	}
	public enum CLUSTER_CHANGE_NETWORK_V2 : int32
	{
		DELETED_V2 = 1,
		COMMON_PROPERTY_V2 = 2,
		PRIVATE_PROPERTY_V2 = 4,
		STATE_V2 = 8,
		HANDLE_CLOSE_V2 = 16,
		ALL_V2 = 31,
	}
	public enum CLUSTER_CHANGE_NODE_V2 : int32
	{
		NETINTERFACE_ADDED_V2 = 1,
		DELETED_V2 = 2,
		COMMON_PROPERTY_V2 = 4,
		PRIVATE_PROPERTY_V2 = 8,
		STATE_V2 = 16,
		GROUP_GAINED_V2 = 32,
		GROUP_LOST_V2 = 64,
		HANDLE_CLOSE_V2 = 128,
		ALL_V2 = 255,
	}
	public enum CLUSTER_CHANGE_REGISTRY_V2 : int32
	{
		ATTRIBUTES_V2 = 1,
		NAME_V2 = 2,
		SUBTREE_V2 = 4,
		VALUE_V2 = 8,
		HANDLE_CLOSE_V2 = 16,
		ALL_V2 = 31,
	}
	[AllowDuplicates]
	public enum CLUSTER_CHANGE_QUORUM_V2 : int32
	{
		STATE_V2 = 1,
		ALL_V2 = 1,
	}
	public enum CLUSTER_CHANGE_SHARED_VOLUME_V2 : int32
	{
		STATE_V2 = 1,
		ADDED_V2 = 2,
		REMOVED_V2 = 4,
		ALL_V2 = 7,
	}
	public enum CLUSTER_CHANGE_SPACEPORT_V2 : int32
	{
		CUSTOM_PNP_V2 = 1,
	}
	public enum CLUSTER_CHANGE_NODE_UPGRADE_PHASE_V2 : int32
	{
		NODE_PREPARE = 1,
		NODE_COMMIT = 2,
		NODE_POSTCOMMIT = 4,
		ALL = 7,
	}
	public enum CLUSTER_OBJECT_TYPE : int32
	{
		NONE = 0,
		CLUSTER = 1,
		GROUP = 2,
		RESOURCE = 3,
		RESOURCE_TYPE = 4,
		NETWORK_INTERFACE = 5,
		NETWORK = 6,
		NODE = 7,
		REGISTRY = 8,
		QUORUM = 9,
		SHARED_VOLUME = 10,
		GROUPSET = 13,
		AFFINITYRULE = 16,
	}
	public enum CLUSTERSET_OBJECT_TYPE : int32
	{
		NONE = 0,
		MEMBER = 1,
		WORKLOAD = 2,
		DATABASE = 3,
	}
	public enum CLUSTER_ENUM : int32
	{
		NODE = 1,
		RESTYPE = 2,
		RESOURCE = 4,
		GROUP = 8,
		NETWORK = 16,
		NETINTERFACE = 32,
		SHARED_VOLUME_GROUP = 536870912,
		SHARED_VOLUME_RESOURCE = 1073741824,
		INTERNAL_NETWORK = -2147483648,
		ALL = 63,
	}
	public enum CLUSTER_NODE_ENUM : int32
	{
		NETINTERFACES = 1,
		GROUPS = 2,
		PREFERRED_GROUPS = 4,
		ALL = 3,
	}
	public enum CLUSTER_NODE_STATE : int32
	{
		StateUnknown = -1,
		Up = 0,
		Down = 1,
		Paused = 2,
		Joining = 3,
	}
	public enum CLUSTER_STORAGENODE_STATE : int32
	{
		StateUnknown = 0,
		Up = 1,
		Down = 2,
		Paused = 3,
		Starting = 4,
		Stopping = 5,
	}
	public enum CLUSTER_NODE_DRAIN_STATUS : int32
	{
		NodeDrainStatusNotInitiated = 0,
		NodeDrainStatusInProgress = 1,
		NodeDrainStatusCompleted = 2,
		NodeDrainStatusFailed = 3,
		ClusterNodeDrainStatusCount = 4,
	}
	public enum CLUSTER_NODE_STATUS : int32
	{
		Normal = 0,
		Isolated = 1,
		Quarantined = 2,
		DrainInProgress = 4,
		DrainCompleted = 8,
		DrainFailed = 16,
		AvoidPlacement = 32,
		Max = 51,
	}
	public enum CLUSTER_GROUP_ENUM : int32
	{
		CONTAINS = 1,
		NODES = 2,
		ALL = 3,
	}
	public enum CLUSTER_GROUP_STATE : int32
	{
		StateUnknown = -1,
		Online = 0,
		Offline = 1,
		Failed = 2,
		PartialOnline = 3,
		Pending = 4,
	}
	public enum CLUSTER_GROUP_PRIORITY : int32
	{
		Disabled = 0,
		Low = 1000,
		Medium = 2000,
		High = 3000,
	}
	public enum CLUSTER_GROUP_AUTOFAILBACK_TYPE : int32
	{
		PreventFailback = 0,
		AllowFailback = 1,
		FailbackTypeCount = 2,
	}
	public enum CLUSTER_NODE_RESUME_FAILBACK_TYPE : int32
	{
		DoNotFailbackGroups = 0,
		FailbackGroupsImmediately = 1,
		FailbackGroupsPerPolicy = 2,
		ClusterNodeResumeFailbackTypeCount = 3,
	}
	public enum CLUSTER_RESOURCE_STATE : int32
	{
		StateUnknown = -1,
		Inherited = 0,
		Initializing = 1,
		Online = 2,
		Offline = 3,
		Failed = 4,
		Pending = 128,
		OnlinePending = 129,
		OfflinePending = 130,
	}
	public enum CLUSTER_RESOURCE_RESTART_ACTION : int32
	{
		DontRestart = 0,
		RestartNoNotify = 1,
		RestartNotify = 2,
		RestartActionCount = 3,
	}
	public enum CLUSTER_RESOURCE_EMBEDDED_FAILURE_ACTION : int32
	{
		None = 0,
		LogOnly = 1,
		Recover = 2,
	}
	[AllowDuplicates]
	public enum CLUSTER_RESOURCE_CREATE_FLAGS : int32
	{
		DEFAULT_MONITOR = 0,
		SEPARATE_MONITOR = 1,
		VALID_FLAGS = 1,
	}
	public enum CLUSTER_SHARED_VOLUME_SNAPSHOT_STATE : int32
	{
		SnapshotStateUnknown = 0,
		PrepareForHWSnapshot = 1,
		HWSnapshotCompleted = 2,
		PrepareForFreeze = 3,
	}
	public enum CLUSTER_PROPERTY_TYPE : int32
	{
		UNKNOWN = -1,
		ENDMARK = 0,
		LIST_VALUE = 1,
		RESCLASS = 2,
		RESERVED1 = 3,
		NAME = 4,
		SIGNATURE = 5,
		SCSI_ADDRESS = 6,
		DISK_NUMBER = 7,
		PARTITION_INFO = 8,
		FTSET_INFO = 9,
		DISK_SERIALNUMBER = 10,
		DISK_GUID = 11,
		DISK_SIZE = 12,
		PARTITION_INFO_EX = 13,
		PARTITION_INFO_EX2 = 14,
		STORAGE_DEVICE_ID_DESCRIPTOR = 15,
		USER = 32768,
	}
	public enum CLUSTER_PROPERTY_FORMAT : int32
	{
		UNKNOWN = 0,
		BINARY = 1,
		DWORD = 2,
		SZ = 3,
		EXPAND_SZ = 4,
		MULTI_SZ = 5,
		ULARGE_INTEGER = 6,
		LONG = 7,
		EXPANDED_SZ = 8,
		SECURITY_DESCRIPTOR = 9,
		LARGE_INTEGER = 10,
		WORD = 11,
		FILETIME = 12,
		VALUE_LIST = 13,
		PROPERTY_LIST = 14,
		USER = 32768,
	}
	public enum CLUSTER_PROPERTY_SYNTAX : uint32
	{
		ENDMARK = 0,
		NAME = 262147,
		RESCLASS = 131074,
		LIST_VALUE_SZ = 65539,
		LIST_VALUE_EXPAND_SZ = 65540,
		LIST_VALUE_DWORD = 65538,
		LIST_VALUE_BINARY = 65537,
		LIST_VALUE_MULTI_SZ = 65541,
		LIST_VALUE_LONG = 65543,
		LIST_VALUE_EXPANDED_SZ = 65544,
		LIST_VALUE_SECURITY_DESCRIPTOR = 65545,
		LIST_VALUE_LARGE_INTEGER = 65546,
		LIST_VALUE_ULARGE_INTEGER = 65542,
		LIST_VALUE_WORD = 65547,
		LIST_VALUE_PROPERTY_LIST = 65550,
		LIST_VALUE_FILETIME = 65548,
		DISK_SIGNATURE = 327682,
		SCSI_ADDRESS = 393218,
		DISK_NUMBER = 458754,
		PARTITION_INFO = 524289,
		FTSET_INFO = 589825,
		DISK_SERIALNUMBER = 655363,
		DISK_GUID = 720899,
		DISK_SIZE = 786438,
		PARTITION_INFO_EX = 851969,
		PARTITION_INFO_EX2 = 917505,
		STORAGE_DEVICE_ID_DESCRIPTOR = 983041,
	}
	public enum CLUSTER_CONTROL_OBJECT : int32
	{
		INVALID = 0,
		RESOURCE = 1,
		RESOURCE_TYPE = 2,
		GROUP = 3,
		NODE = 4,
		NETWORK = 5,
		NETINTERFACE = 6,
		CLUSTER = 7,
		GROUPSET = 8,
		AFFINITYRULE = 9,
		USER = 128,
	}
	public enum CLCTL_CODES : int32
	{
		CLCTL_UNKNOWN = 0,
		CLCTL_GET_CHARACTERISTICS = 5,
		CLCTL_GET_FLAGS = 9,
		CLCTL_GET_CLASS_INFO = 13,
		CLCTL_GET_REQUIRED_DEPENDENCIES = 17,
		CLCTL_GET_ARB_TIMEOUT = 21,
		CLCTL_GET_FAILURE_INFO = 25,
		CLCTL_GET_NAME = 41,
		CLCTL_GET_RESOURCE_TYPE = 45,
		CLCTL_GET_NODE = 49,
		CLCTL_GET_NETWORK = 53,
		CLCTL_GET_ID = 57,
		CLCTL_GET_FQDN = 61,
		CLCTL_GET_CLUSTER_SERVICE_ACCOUNT_NAME = 65,
		CLCTL_CHECK_VOTER_EVICT = 69,
		CLCTL_CHECK_VOTER_DOWN = 73,
		CLCTL_SHUTDOWN = 77,
		CLCTL_ENUM_COMMON_PROPERTIES = 81,
		CLCTL_GET_RO_COMMON_PROPERTIES = 85,
		CLCTL_GET_COMMON_PROPERTIES = 89,
		CLCTL_SET_COMMON_PROPERTIES = 4194398,
		CLCTL_VALIDATE_COMMON_PROPERTIES = 97,
		CLCTL_GET_COMMON_PROPERTY_FMTS = 101,
		CLCTL_GET_COMMON_RESOURCE_PROPERTY_FMTS = 105,
		CLCTL_ENUM_PRIVATE_PROPERTIES = 121,
		CLCTL_GET_RO_PRIVATE_PROPERTIES = 125,
		CLCTL_GET_PRIVATE_PROPERTIES = 129,
		CLCTL_SET_PRIVATE_PROPERTIES = 4194438,
		CLCTL_VALIDATE_PRIVATE_PROPERTIES = 137,
		CLCTL_GET_PRIVATE_PROPERTY_FMTS = 141,
		CLCTL_GET_PRIVATE_RESOURCE_PROPERTY_FMTS = 145,
		CLCTL_ADD_REGISTRY_CHECKPOINT = 4194466,
		CLCTL_DELETE_REGISTRY_CHECKPOINT = 4194470,
		CLCTL_GET_REGISTRY_CHECKPOINTS = 169,
		CLCTL_ADD_CRYPTO_CHECKPOINT = 4194478,
		CLCTL_DELETE_CRYPTO_CHECKPOINT = 4194482,
		CLCTL_GET_CRYPTO_CHECKPOINTS = 181,
		CLCTL_RESOURCE_UPGRADE_DLL = 4194490,
		CLCTL_ADD_REGISTRY_CHECKPOINT_64BIT = 4194494,
		CLCTL_ADD_REGISTRY_CHECKPOINT_32BIT = 4194498,
		CLCTL_GET_LOADBAL_PROCESS_LIST = 201,
		CLCTL_SET_ACCOUNT_ACCESS = 4194546,
		CLCTL_GET_NETWORK_NAME = 361,
		CLCTL_NETNAME_GET_VIRTUAL_SERVER_TOKEN = 365,
		CLCTL_NETNAME_REGISTER_DNS_RECORDS = 370,
		CLCTL_GET_DNS_NAME = 373,
		CLCTL_NETNAME_SET_PWD_INFO = 378,
		CLCTL_NETNAME_DELETE_CO = 382,
		CLCTL_NETNAME_VALIDATE_VCO = 385,
		CLCTL_NETNAME_RESET_VCO = 389,
		CLCTL_NETNAME_REPAIR_VCO = 397,
		CLCTL_STORAGE_GET_DISK_INFO = 401,
		CLCTL_STORAGE_GET_AVAILABLE_DISKS = 405,
		CLCTL_STORAGE_IS_PATH_VALID = 409,
		CLCTL_STORAGE_SYNC_CLUSDISK_DB = 4194718,
		CLCTL_STORAGE_GET_DISK_NUMBER_INFO = 417,
		CLCTL_QUERY_DELETE = 441,
		CLCTL_IPADDRESS_RENEW_LEASE = 4194750,
		CLCTL_IPADDRESS_RELEASE_LEASE = 4194754,
		CLCTL_QUERY_MAINTENANCE_MODE = 481,
		CLCTL_SET_MAINTENANCE_MODE = 4194790,
		CLCTL_STORAGE_SET_DRIVELETTER = 4194794,
		CLCTL_STORAGE_GET_DRIVELETTERS = 493,
		CLCTL_STORAGE_GET_DISK_INFO_EX = 497,
		CLCTL_STORAGE_GET_AVAILABLE_DISKS_EX = 501,
		CLCTL_STORAGE_GET_DISK_INFO_EX2 = 505,
		CLCTL_STORAGE_GET_CLUSPORT_DISK_COUNT = 509,
		CLCTL_STORAGE_REMAP_DRIVELETTER = 513,
		CLCTL_STORAGE_GET_DISKID = 517,
		CLCTL_STORAGE_IS_CLUSTERABLE = 521,
		CLCTL_STORAGE_REMOVE_VM_OWNERSHIP = 4194830,
		CLCTL_STORAGE_GET_MOUNTPOINTS = 529,
		CLCTL_STORAGE_GET_DIRTY = 537,
		CLCTL_STORAGE_GET_SHARED_VOLUME_INFO = 549,
		CLCTL_STORAGE_IS_CSV_FILE = 553,
		CLCTL_STORAGE_GET_RESOURCEID = 557,
		CLCTL_VALIDATE_PATH = 561,
		CLCTL_VALIDATE_NETNAME = 565,
		CLCTL_VALIDATE_DIRECTORY = 569,
		CLCTL_BATCH_BLOCK_KEY = 574,
		CLCTL_BATCH_UNBLOCK_KEY = 577,
		CLCTL_FILESERVER_SHARE_ADD = 4194886,
		CLCTL_FILESERVER_SHARE_DEL = 4194890,
		CLCTL_FILESERVER_SHARE_MODIFY = 4194894,
		CLCTL_FILESERVER_SHARE_REPORT = 593,
		CLCTL_NETNAME_GET_OU_FOR_VCO = 4194926,
		CLCTL_ENABLE_SHARED_VOLUME_DIRECTIO = 4194954,
		CLCTL_DISABLE_SHARED_VOLUME_DIRECTIO = 4194958,
		CLCTL_GET_SHARED_VOLUME_ID = 657,
		CLCTL_SET_CSV_MAINTENANCE_MODE = 4194966,
		CLCTL_SET_SHARED_VOLUME_BACKUP_MODE = 4194970,
		CLCTL_STORAGE_GET_SHARED_VOLUME_PARTITION_NAMES = 669,
		CLCTL_STORAGE_GET_SHARED_VOLUME_STATES = 4194978,
		CLCTL_STORAGE_IS_SHARED_VOLUME = 677,
		CLCTL_GET_CLUSDB_TIMESTAMP = 681,
		CLCTL_RW_MODIFY_NOOP = 4194990,
		CLCTL_IS_QUORUM_BLOCKED = 689,
		CLCTL_POOL_GET_DRIVE_INFO = 693,
		CLCTL_GET_GUM_LOCK_OWNER = 697,
		CLCTL_GET_STUCK_NODES = 701,
		CLCTL_INJECT_GEM_FAULT = 705,
		CLCTL_INTRODUCE_GEM_REPAIR_DELAY = 709,
		CLCTL_SEND_DUMMY_GEM_MESSAGES = 713,
		CLCTL_BLOCK_GEM_SEND_RECV = 717,
		CLCTL_GET_GEMID_VECTOR = 721,
		CLCTL_ADD_CRYPTO_CHECKPOINT_EX = 4195030,
		CLCTL_GROUP_GET_LAST_MOVE_TIME = 729,
		CLCTL_SET_STORAGE_CONFIGURATION = 4195042,
		CLCTL_GET_STORAGE_CONFIGURATION = 741,
		CLCTL_GET_STORAGE_CONFIG_ATTRIBUTES = 745,
		CLCTL_REMOVE_NODE = 4195054,
		CLCTL_IS_FEATURE_INSTALLED = 753,
		CLCTL_IS_S2D_FEATURE_SUPPORTED = 757,
		CLCTL_STORAGE_GET_PHYSICAL_DISK_INFO = 761,
		CLCTL_STORAGE_GET_CLUSBFLT_PATHS = 765,
		CLCTL_STORAGE_GET_CLUSBFLT_PATHINFO = 769,
		CLCTL_CLEAR_NODE_CONNECTION_INFO = 4195078,
		CLCTL_SET_DNS_DOMAIN = 4195082,
		CTCTL_GET_ROUTESTATUS_BASIC = 781,
		CTCTL_GET_ROUTESTATUS_EXTENDED = 785,
		CTCTL_GET_FAULT_DOMAIN_STATE = 789,
		CLCTL_NETNAME_SET_PWD_INFOEX = 794,
		CLCTL_STORAGE_GET_AVAILABLE_DISKS_EX2_INT = 8161,
		CLCTL_CLOUD_WITNESS_RESOURCE_TYPE_VALIDATE_CREDENTIALS = 8417,
		CLCTL_CLOUD_WITNESS_RESOURCE_UPDATE_TOKEN = 4202726,
		CLCTL_RESOURCE_PREPARE_UPGRADE = 4202730,
		CLCTL_RESOURCE_UPGRADE_COMPLETED = 4202734,
		CLCTL_CLOUD_WITNESS_RESOURCE_TYPE_VALIDATE_CREDENTIALS_WITH_KEY = 8433,
		CLCTL_CLOUD_WITNESS_RESOURCE_UPDATE_KEY = 4202742,
		CLCTL_REPLICATION_ADD_REPLICATION_GROUP = 8514,
		CLCTL_REPLICATION_GET_LOG_INFO = 8517,
		CLCTL_REPLICATION_GET_ELIGIBLE_LOGDISKS = 8521,
		CLCTL_REPLICATION_GET_ELIGIBLE_TARGET_DATADISKS = 8525,
		CLCTL_REPLICATION_GET_ELIGIBLE_SOURCE_DATADISKS = 8529,
		CLCTL_REPLICATION_GET_REPLICATED_DISKS = 8533,
		CLCTL_REPLICATION_GET_REPLICA_VOLUMES = 8537,
		CLCTL_REPLICATION_GET_LOG_VOLUME = 8541,
		CLCTL_REPLICATION_GET_RESOURCE_GROUP = 8545,
		CLCTL_REPLICATION_GET_REPLICATED_PARTITION_INFO = 8549,
		CLCTL_GET_STATE_CHANGE_TIME = 11613,
		CLCTL_SET_CLUSTER_S2D_ENABLED = 4205922,
		CLCTL_SET_CLUSTER_S2D_CACHE_METADATA_RESERVE_BYTES = 4205934,
		CLCTL_GROUPSET_GET_GROUPS = 11633,
		CLCTL_GROUPSET_GET_PROVIDER_GROUPS = 11637,
		CLCTL_GROUPSET_GET_PROVIDER_GROUPSETS = 11641,
		CLCTL_GROUP_GET_PROVIDER_GROUPS = 11645,
		CLCTL_GROUP_GET_PROVIDER_GROUPSETS = 11649,
		CLCTL_GROUP_SET_CCF_FROM_MASTER = 4205958,
		CLCTL_GET_INFRASTRUCTURE_SOFS_BUFFER = 11657,
		CLCTL_SET_INFRASTRUCTURE_SOFS_BUFFER = 4205966,
		CLCTL_NOTIFY_INFRASTRUCTURE_SOFS_CHANGED = 4205970,
		CLCTL_SCALEOUT_COMMAND = 4205974,
		CLCTL_SCALEOUT_CONTROL = 4205978,
		CLCTL_SCALEOUT_GET_CLUSTERS = 4205981,
		CLCTL_RELOAD_AUTOLOGGER_CONFIG = 11730,
		CLCTL_STORAGE_RENAME_SHARED_VOLUME = 11734,
		CLCTL_STORAGE_RENAME_SHARED_VOLUME_GUID = 11738,
		CLCTL_ENUM_AFFINITY_RULE_NAMES = 11741,
		CLCTL_GET_NODES_IN_FD = 11745,
		CLCTL_FORCE_DB_FLUSH = 4206054,
		CLCTL_DELETE = 5242886,
		CLCTL_INSTALL_NODE = 5242890,
		CLCTL_EVICT_NODE = 5242894,
		CLCTL_ADD_DEPENDENCY = 5242898,
		CLCTL_REMOVE_DEPENDENCY = 5242902,
		CLCTL_ADD_OWNER = 5242906,
		CLCTL_REMOVE_OWNER = 5242910,
		CLCTL_SET_NAME = 5242918,
		CLCTL_CLUSTER_NAME_CHANGED = 5242922,
		CLCTL_CLUSTER_VERSION_CHANGED = 5242926,
		CLCTL_FIXUP_ON_UPGRADE = 5242930,
		CLCTL_STARTING_PHASE1 = 5242934,
		CLCTL_STARTING_PHASE2 = 5242938,
		CLCTL_HOLD_IO = 5242942,
		CLCTL_RESUME_IO = 5242946,
		CLCTL_FORCE_QUORUM = 5242950,
		CLCTL_INITIALIZE = 5242954,
		CLCTL_STATE_CHANGE_REASON = 5242958,
		CLCTL_PROVIDER_STATE_CHANGE = 5242962,
		CLCTL_LEAVING_GROUP = 5242966,
		CLCTL_JOINING_GROUP = 5242970,
		CLCTL_FSWITNESS_GET_EPOCH_INFO = 1048669,
		CLCTL_FSWITNESS_SET_EPOCH_INFO = 5242978,
		CLCTL_FSWITNESS_RELEASE_LOCK = 5242982,
		CLCTL_NETNAME_CREDS_NOTIFYCAM = 5242986,
		CLCTL_NOTIFY_QUORUM_STATUS = 5243006,
		CLCTL_NOTIFY_MONITOR_SHUTTING_DOWN = 1048705,
		CLCTL_UNDELETE = 5243014,
		CLCTL_GET_OPERATION_CONTEXT = 1057001,
		CLCTL_NOTIFY_OWNER_CHANGE = 5251362,
		CLCTL_VALIDATE_CHANGE_GROUP = 1057061,
		CLCTL_CHECK_DRAIN_VETO = 1057069,
		CLCTL_NOTIFY_DRAIN_COMPLETE = 1057073,
	}
	[AllowDuplicates]
	public enum CLUSCTL_RESOURCE_CODES : int32
	{
		RESOURCE_UNKNOWN = 16777216,
		RESOURCE_GET_CHARACTERISTICS = 16777221,
		RESOURCE_GET_FLAGS = 16777225,
		RESOURCE_GET_CLASS_INFO = 16777229,
		RESOURCE_GET_REQUIRED_DEPENDENCIES = 16777233,
		RESOURCE_GET_NAME = 16777257,
		RESOURCE_GET_ID = 16777273,
		RESOURCE_GET_RESOURCE_TYPE = 16777261,
		RESOURCE_ENUM_COMMON_PROPERTIES = 16777297,
		RESOURCE_GET_RO_COMMON_PROPERTIES = 16777301,
		RESOURCE_GET_COMMON_PROPERTIES = 16777305,
		RESOURCE_SET_COMMON_PROPERTIES = 20971614,
		RESOURCE_VALIDATE_COMMON_PROPERTIES = 16777313,
		RESOURCE_GET_COMMON_PROPERTY_FMTS = 16777317,
		RESOURCE_ENUM_PRIVATE_PROPERTIES = 16777337,
		RESOURCE_GET_RO_PRIVATE_PROPERTIES = 16777341,
		RESOURCE_GET_PRIVATE_PROPERTIES = 16777345,
		RESOURCE_SET_PRIVATE_PROPERTIES = 20971654,
		RESOURCE_VALIDATE_PRIVATE_PROPERTIES = 16777353,
		RESOURCE_GET_PRIVATE_PROPERTY_FMTS = 16777357,
		RESOURCE_ADD_REGISTRY_CHECKPOINT = 20971682,
		RESOURCE_DELETE_REGISTRY_CHECKPOINT = 20971686,
		RESOURCE_GET_REGISTRY_CHECKPOINTS = 16777385,
		RESOURCE_ADD_CRYPTO_CHECKPOINT = 20971694,
		RESOURCE_DELETE_CRYPTO_CHECKPOINT = 20971698,
		RESOURCE_ADD_CRYPTO_CHECKPOINT_EX = 20972246,
		RESOURCE_GET_CRYPTO_CHECKPOINTS = 16777397,
		RESOURCE_GET_LOADBAL_PROCESS_LIST = 16777417,
		RESOURCE_GET_NETWORK_NAME = 16777577,
		RESOURCE_NETNAME_GET_VIRTUAL_SERVER_TOKEN = 16777581,
		RESOURCE_NETNAME_SET_PWD_INFO = 16777594,
		RESOURCE_NETNAME_SET_PWD_INFOEX = 16778010,
		RESOURCE_NETNAME_DELETE_CO = 16777598,
		RESOURCE_NETNAME_VALIDATE_VCO = 16777601,
		RESOURCE_NETNAME_RESET_VCO = 16777605,
		RESOURCE_NETNAME_REPAIR_VCO = 16777613,
		RESOURCE_NETNAME_REGISTER_DNS_RECORDS = 16777586,
		RESOURCE_GET_DNS_NAME = 16777589,
		RESOURCE_STORAGE_GET_DISK_INFO = 16777617,
		RESOURCE_STORAGE_GET_DISK_NUMBER_INFO = 16777633,
		RESOURCE_STORAGE_IS_PATH_VALID = 16777625,
		RESOURCE_QUERY_DELETE = 16777657,
		RESOURCE_UPGRADE_DLL = 20971706,
		RESOURCE_IPADDRESS_RENEW_LEASE = 20971966,
		RESOURCE_IPADDRESS_RELEASE_LEASE = 20971970,
		RESOURCE_ADD_REGISTRY_CHECKPOINT_64BIT = 20971710,
		RESOURCE_ADD_REGISTRY_CHECKPOINT_32BIT = 20971714,
		RESOURCE_QUERY_MAINTENANCE_MODE = 16777697,
		RESOURCE_SET_MAINTENANCE_MODE = 20972006,
		RESOURCE_STORAGE_SET_DRIVELETTER = 20972010,
		RESOURCE_STORAGE_GET_DISK_INFO_EX = 16777713,
		RESOURCE_STORAGE_GET_DISK_INFO_EX2 = 16777721,
		RESOURCE_STORAGE_GET_MOUNTPOINTS = 16777745,
		RESOURCE_STORAGE_GET_DIRTY = 16777753,
		RESOURCE_STORAGE_GET_SHARED_VOLUME_INFO = 16777765,
		RESOURCE_SET_CSV_MAINTENANCE_MODE = 20972182,
		RESOURCE_ENABLE_SHARED_VOLUME_DIRECTIO = 20972170,
		RESOURCE_DISABLE_SHARED_VOLUME_DIRECTIO = 20972174,
		RESOURCE_SET_SHARED_VOLUME_BACKUP_MODE = 20972186,
		RESOURCE_STORAGE_GET_SHARED_VOLUME_PARTITION_NAMES = 16777885,
		RESOURCE_GET_FAILURE_INFO = 16777241,
		RESOURCE_STORAGE_GET_DISKID = 16777733,
		RESOURCE_STORAGE_GET_SHARED_VOLUME_STATES = 20972194,
		RESOURCE_STORAGE_IS_SHARED_VOLUME = 16777893,
		RESOURCE_IS_QUORUM_BLOCKED = 16777905,
		RESOURCE_POOL_GET_DRIVE_INFO = 16777909,
		RESOURCE_RLUA_GET_VIRTUAL_SERVER_TOKEN = 16777581,
		RESOURCE_RLUA_SET_PWD_INFO = 16777594,
		RESOURCE_RLUA_SET_PWD_INFOEX = 16778010,
		RESOURCE_DELETE = 22020102,
		RESOURCE_UNDELETE = 22020230,
		RESOURCE_INSTALL_NODE = 22020106,
		RESOURCE_EVICT_NODE = 22020110,
		RESOURCE_ADD_DEPENDENCY = 22020114,
		RESOURCE_REMOVE_DEPENDENCY = 22020118,
		RESOURCE_ADD_OWNER = 22020122,
		RESOURCE_REMOVE_OWNER = 22020126,
		RESOURCE_SET_NAME = 22020134,
		RESOURCE_CLUSTER_NAME_CHANGED = 22020138,
		RESOURCE_CLUSTER_VERSION_CHANGED = 22020142,
		RESOURCE_FORCE_QUORUM = 22020166,
		RESOURCE_INITIALIZE = 22020170,
		RESOURCE_STATE_CHANGE_REASON = 22020174,
		RESOURCE_PROVIDER_STATE_CHANGE = 22020178,
		RESOURCE_LEAVING_GROUP = 22020182,
		RESOURCE_JOINING_GROUP = 22020186,
		RESOURCE_FSWITNESS_GET_EPOCH_INFO = 17825885,
		RESOURCE_FSWITNESS_SET_EPOCH_INFO = 22020194,
		RESOURCE_FSWITNESS_RELEASE_LOCK = 22020198,
		RESOURCE_NETNAME_CREDS_NOTIFYCAM = 22020202,
		RESOURCE_GET_OPERATION_CONTEXT = 17834217,
		RESOURCE_RW_MODIFY_NOOP = 20972206,
		RESOURCE_NOTIFY_QUORUM_STATUS = 22020222,
		RESOURCE_NOTIFY_OWNER_CHANGE = 22028578,
		RESOURCE_VALIDATE_CHANGE_GROUP = 17834277,
		RESOURCE_STORAGE_RENAME_SHARED_VOLUME = 16788950,
		RESOURCE_STORAGE_RENAME_SHARED_VOLUME_GUID = 16788954,
		CLOUD_WITNESS_RESOURCE_UPDATE_TOKEN = 20979942,
		CLOUD_WITNESS_RESOURCE_UPDATE_KEY = 20979958,
		RESOURCE_PREPARE_UPGRADE = 20979946,
		RESOURCE_UPGRADE_COMPLETED = 20979950,
		RESOURCE_GET_STATE_CHANGE_TIME = 16788829,
		RESOURCE_GET_INFRASTRUCTURE_SOFS_BUFFER = 16788873,
		RESOURCE_SET_INFRASTRUCTURE_SOFS_BUFFER = 20983182,
		RESOURCE_SCALEOUT_COMMAND = 20983190,
		RESOURCE_SCALEOUT_CONTROL = 20983194,
		RESOURCE_SCALEOUT_GET_CLUSTERS = 20983197,
		RESOURCE_CHECK_DRAIN_VETO = 17834285,
		RESOURCE_NOTIFY_DRAIN_COMPLETE = 17834289,
		RESOURCE_GET_NODES_IN_FD = 16788961,
	}
	[AllowDuplicates]
	public enum CLUSCTL_RESOURCE_TYPE_CODES : int32
	{
		RESOURCE_TYPE_UNKNOWN = 33554432,
		RESOURCE_TYPE_GET_CHARACTERISTICS = 33554437,
		RESOURCE_TYPE_GET_FLAGS = 33554441,
		RESOURCE_TYPE_GET_CLASS_INFO = 33554445,
		RESOURCE_TYPE_GET_REQUIRED_DEPENDENCIES = 33554449,
		RESOURCE_TYPE_GET_ARB_TIMEOUT = 33554453,
		RESOURCE_TYPE_ENUM_COMMON_PROPERTIES = 33554513,
		RESOURCE_TYPE_GET_RO_COMMON_PROPERTIES = 33554517,
		RESOURCE_TYPE_GET_COMMON_PROPERTIES = 33554521,
		RESOURCE_TYPE_VALIDATE_COMMON_PROPERTIES = 33554529,
		RESOURCE_TYPE_SET_COMMON_PROPERTIES = 37748830,
		RESOURCE_TYPE_GET_COMMON_PROPERTY_FMTS = 33554533,
		RESOURCE_TYPE_GET_COMMON_RESOURCE_PROPERTY_FMTS = 33554537,
		RESOURCE_TYPE_ENUM_PRIVATE_PROPERTIES = 33554553,
		RESOURCE_TYPE_GET_RO_PRIVATE_PROPERTIES = 33554557,
		RESOURCE_TYPE_GET_PRIVATE_PROPERTIES = 33554561,
		RESOURCE_TYPE_SET_PRIVATE_PROPERTIES = 37748870,
		RESOURCE_TYPE_VALIDATE_PRIVATE_PROPERTIES = 33554569,
		RESOURCE_TYPE_GET_PRIVATE_PROPERTY_FMTS = 33554573,
		RESOURCE_TYPE_GET_PRIVATE_RESOURCE_PROPERTY_FMTS = 33554577,
		RESOURCE_TYPE_GET_REGISTRY_CHECKPOINTS = 33554601,
		RESOURCE_TYPE_GET_CRYPTO_CHECKPOINTS = 33554613,
		RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS = 33554837,
		RESOURCE_TYPE_STORAGE_SYNC_CLUSDISK_DB = 37749150,
		RESOURCE_TYPE_NETNAME_VALIDATE_NETNAME = 33554997,
		RESOURCE_TYPE_NETNAME_GET_OU_FOR_VCO = 37749358,
		RESOURCE_TYPE_GEN_APP_VALIDATE_PATH = 33554993,
		RESOURCE_TYPE_GEN_APP_VALIDATE_DIRECTORY = 33555001,
		RESOURCE_TYPE_GEN_SCRIPT_VALIDATE_PATH = 33554993,
		RESOURCE_TYPE_QUERY_DELETE = 33554873,
		RESOURCE_TYPE_STORAGE_GET_DRIVELETTERS = 33554925,
		RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX = 33554933,
		RESOURCE_TYPE_STORAGE_REMAP_DRIVELETTER = 33554945,
		RESOURCE_TYPE_STORAGE_GET_DISKID = 33554949,
		RESOURCE_TYPE_STORAGE_GET_RESOURCEID = 33554989,
		RESOURCE_TYPE_STORAGE_IS_CLUSTERABLE = 33554953,
		RESOURCE_TYPE_STORAGE_REMOVE_VM_OWNERSHIP = 37749262,
		RESOURCE_TYPE_STORAGE_IS_CSV_FILE = 16777769,
		RESOURCE_TYPE_WITNESS_VALIDATE_PATH = 33554993,
		RESOURCE_TYPE_INSTALL_NODE = 38797322,
		RESOURCE_TYPE_EVICT_NODE = 38797326,
		RESOURCE_TYPE_CLUSTER_VERSION_CHANGED = 38797358,
		RESOURCE_TYPE_FIXUP_ON_UPGRADE = 38797362,
		RESOURCE_TYPE_STARTING_PHASE1 = 38797366,
		RESOURCE_TYPE_STARTING_PHASE2 = 38797370,
		RESOURCE_TYPE_HOLD_IO = 38797374,
		RESOURCE_TYPE_RESUME_IO = 38797378,
		RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_INT = 33562593,
		RESOURCE_TYPE_REPLICATION_GET_ELIGIBLE_LOGDISKS = 33562953,
		RESOURCE_TYPE_REPLICATION_GET_ELIGIBLE_TARGET_DATADISKS = 33562957,
		RESOURCE_TYPE_REPLICATION_GET_ELIGIBLE_SOURCE_DATADISKS = 33562961,
		RESOURCE_TYPE_REPLICATION_GET_REPLICATED_DISKS = 33562965,
		RESOURCE_TYPE_REPLICATION_GET_REPLICA_VOLUMES = 33562969,
		RESOURCE_TYPE_REPLICATION_GET_LOG_VOLUME = 33562973,
		RESOURCE_TYPE_REPLICATION_GET_RESOURCE_GROUP = 33562977,
		RESOURCE_TYPE_REPLICATION_GET_REPLICATED_PARTITION_INFO = 33562981,
		RESOURCE_TYPE_REPLICATION_GET_LOG_INFO = 33562949,
		RESOURCE_TYPE_REPLICATION_ADD_REPLICATION_GROUP = 33562946,
		CLOUD_WITNESS_RESOURCE_TYPE_VALIDATE_CREDENTIALS = 33562849,
		CLOUD_WITNESS_RESOURCE_TYPE_VALIDATE_CREDENTIALS_WITH_KEY = 33562865,
		RESOURCE_TYPE_PREPARE_UPGRADE = 37757162,
		RESOURCE_TYPE_UPGRADE_COMPLETED = 37757166,
		RESOURCE_TYPE_NOTIFY_MONITOR_SHUTTING_DOWN = 34603137,
		RESOURCE_TYPE_CHECK_DRAIN_VETO = 34611501,
		RESOURCE_TYPE_NOTIFY_DRAIN_COMPLETE = 34611505,
	}
	public enum CLUSCTL_GROUP_CODES : int32
	{
		UNKNOWN = 50331648,
		GET_CHARACTERISTICS = 50331653,
		GET_FLAGS = 50331657,
		GET_NAME = 50331689,
		GET_ID = 50331705,
		ENUM_COMMON_PROPERTIES = 50331729,
		GET_RO_COMMON_PROPERTIES = 50331733,
		GET_COMMON_PROPERTIES = 50331737,
		SET_COMMON_PROPERTIES = 54526046,
		VALIDATE_COMMON_PROPERTIES = 50331745,
		ENUM_PRIVATE_PROPERTIES = 50331769,
		GET_RO_PRIVATE_PROPERTIES = 50331773,
		GET_PRIVATE_PROPERTIES = 50331777,
		SET_PRIVATE_PROPERTIES = 54526086,
		VALIDATE_PRIVATE_PROPERTIES = 50331785,
		QUERY_DELETE = 50332089,
		GET_COMMON_PROPERTY_FMTS = 50331749,
		GET_PRIVATE_PROPERTY_FMTS = 50331789,
		GET_FAILURE_INFO = 50331673,
		GET_LAST_MOVE_TIME = 50332377,
		SET_CCF_FROM_MASTER = 54537606,
	}
	public enum CLUSCTL_NODE_CODES : int32
	{
		UNKNOWN = 67108864,
		GET_CHARACTERISTICS = 67108869,
		GET_FLAGS = 67108873,
		GET_NAME = 67108905,
		GET_ID = 67108921,
		ENUM_COMMON_PROPERTIES = 67108945,
		GET_RO_COMMON_PROPERTIES = 67108949,
		GET_COMMON_PROPERTIES = 67108953,
		SET_COMMON_PROPERTIES = 71303262,
		VALIDATE_COMMON_PROPERTIES = 67108961,
		ENUM_PRIVATE_PROPERTIES = 67108985,
		GET_RO_PRIVATE_PROPERTIES = 67108989,
		GET_PRIVATE_PROPERTIES = 67108993,
		SET_PRIVATE_PROPERTIES = 71303302,
		VALIDATE_PRIVATE_PROPERTIES = 67109001,
		GET_COMMON_PROPERTY_FMTS = 67108965,
		GET_PRIVATE_PROPERTY_FMTS = 67109005,
		GET_CLUSTER_SERVICE_ACCOUNT_NAME = 67108929,
		GET_STUCK_NODES = 67109565,
		INJECT_GEM_FAULT = 67109569,
		INTRODUCE_GEM_REPAIR_DELAY = 67109573,
		SEND_DUMMY_GEM_MESSAGES = 67109577,
		BLOCK_GEM_SEND_RECV = 67109581,
		GET_GEMID_VECTOR = 67109585,
	}
	public enum CLUSCTL_NETWORK_CODES : int32
	{
		UNKNOWN = 83886080,
		GET_CHARACTERISTICS = 83886085,
		GET_FLAGS = 83886089,
		GET_NAME = 83886121,
		GET_ID = 83886137,
		ENUM_COMMON_PROPERTIES = 83886161,
		GET_RO_COMMON_PROPERTIES = 83886165,
		GET_COMMON_PROPERTIES = 83886169,
		SET_COMMON_PROPERTIES = 88080478,
		VALIDATE_COMMON_PROPERTIES = 83886177,
		ENUM_PRIVATE_PROPERTIES = 83886201,
		GET_RO_PRIVATE_PROPERTIES = 83886205,
		GET_PRIVATE_PROPERTIES = 83886209,
		SET_PRIVATE_PROPERTIES = 88080518,
		VALIDATE_PRIVATE_PROPERTIES = 83886217,
		GET_COMMON_PROPERTY_FMTS = 83886181,
		GET_PRIVATE_PROPERTY_FMTS = 83886221,
	}
	public enum CLUSCTL_NETINTERFACE_CODES : int32
	{
		UNKNOWN = 100663296,
		GET_CHARACTERISTICS = 100663301,
		GET_FLAGS = 100663305,
		GET_NAME = 100663337,
		GET_ID = 100663353,
		GET_NODE = 100663345,
		GET_NETWORK = 100663349,
		ENUM_COMMON_PROPERTIES = 100663377,
		GET_RO_COMMON_PROPERTIES = 100663381,
		GET_COMMON_PROPERTIES = 100663385,
		SET_COMMON_PROPERTIES = 104857694,
		VALIDATE_COMMON_PROPERTIES = 100663393,
		ENUM_PRIVATE_PROPERTIES = 100663417,
		GET_RO_PRIVATE_PROPERTIES = 100663421,
		GET_PRIVATE_PROPERTIES = 100663425,
		SET_PRIVATE_PROPERTIES = 104857734,
		VALIDATE_PRIVATE_PROPERTIES = 100663433,
		GET_COMMON_PROPERTY_FMTS = 100663397,
		GET_PRIVATE_PROPERTY_FMTS = 100663437,
	}
	public enum CLUSCTL_CLUSTER_CODES : int32
	{
		UNKNOWN = 117440512,
		GET_FQDN = 117440573,
		SET_STORAGE_CONFIGURATION = 121635554,
		GET_STORAGE_CONFIGURATION = 117441253,
		GET_STORAGE_CONFIG_ATTRIBUTES = 117441257,
		ENUM_COMMON_PROPERTIES = 117440593,
		GET_RO_COMMON_PROPERTIES = 117440597,
		GET_COMMON_PROPERTIES = 117440601,
		SET_COMMON_PROPERTIES = 121634910,
		VALIDATE_COMMON_PROPERTIES = 117440609,
		ENUM_PRIVATE_PROPERTIES = 117440633,
		GET_RO_PRIVATE_PROPERTIES = 117440637,
		GET_PRIVATE_PROPERTIES = 117440641,
		SET_PRIVATE_PROPERTIES = 121634950,
		VALIDATE_PRIVATE_PROPERTIES = 117440649,
		GET_COMMON_PROPERTY_FMTS = 117440613,
		GET_PRIVATE_PROPERTY_FMTS = 117440653,
		CHECK_VOTER_EVICT = 117440581,
		CHECK_VOTER_DOWN = 117440585,
		SHUTDOWN = 117440589,
		BATCH_BLOCK_KEY = 117441086,
		BATCH_UNBLOCK_KEY = 117441089,
		GET_SHARED_VOLUME_ID = 117441169,
		GET_CLUSDB_TIMESTAMP = 117441193,
		GET_GUM_LOCK_OWNER = 117441209,
		REMOVE_NODE = 121635566,
		SET_ACCOUNT_ACCESS = 121635058,
		CLEAR_NODE_CONNECTION_INFO = 121635590,
		SET_DNS_DOMAIN = 121635594,
		SET_CLUSTER_S2D_ENABLED = 121646434,
		SET_CLUSTER_S2D_CACHE_METADATA_RESERVE_BYTES = 121646446,
		STORAGE_RENAME_SHARED_VOLUME = 117452246,
		STORAGE_RENAME_SHARED_VOLUME_GUID = 117452250,
		RELOAD_AUTOLOGGER_CONFIG = 117452242,
		ENUM_AFFINITY_RULE_NAMES = 117452253,
		GET_NODES_IN_FD = 117452257,
		FORCE_FLUSH_DB = 121646566,
		GET_CLMUSR_TOKEN = 117440877,
	}
	public enum CLUSCTL_GROUPSET_CODES : int32
	{
		GROUPSET_GET_COMMON_PROPERTIES = 134217817,
		GROUPSET_GET_RO_COMMON_PROPERTIES = 134217813,
		GROUPSET_SET_COMMON_PROPERTIES = 138412126,
		GROUPSET_GET_GROUPS = 134229361,
		GROUPSET_GET_PROVIDER_GROUPS = 134229365,
		GROUPSET_GET_PROVIDER_GROUPSETS = 134229369,
		GROUP_GET_PROVIDER_GROUPS = 134229373,
		GROUP_GET_PROVIDER_GROUPSETS = 134229377,
		GROUPSET_GET_ID = 134217785,
	}
	public enum CLUSCTL_AFFINITYRULE_CODES : int32
	{
		GET_COMMON_PROPERTIES = 150995033,
		GET_RO_COMMON_PROPERTIES = 150995029,
		SET_COMMON_PROPERTIES = 155189342,
		GET_ID = 150995001,
		GET_GROUPNAMES = 151006577,
	}
	public enum CLUSTER_RESOURCE_CLASS : int32
	{
		UNKNOWN = 0,
		STORAGE = 1,
		NETWORK = 2,
		USER = 32768,
	}
	public enum CLUS_RESSUBCLASS : int32
	{
		RESSUBCLASS_SHARED = -2147483648,
	}
	public enum CLUS_RESSUBCLASS_STORAGE : int32
	{
		SHARED_BUS = -2147483648,
		DISK = 1073741824,
		REPLICATION = 268435456,
	}
	public enum CLUS_RESSUBCLASS_NETWORK : int32
	{
		NETWORK_INTERNET_PROTOCOL = -2147483648,
	}
	public enum CLUS_CHARACTERISTICS : int32
	{
		UNKNOWN = 0,
		QUORUM = 1,
		DELETE_REQUIRES_ALL_NODES = 2,
		LOCAL_QUORUM = 4,
		LOCAL_QUORUM_DEBUG = 8,
		REQUIRES_STATE_CHANGE_REASON = 16,
		BROADCAST_DELETE = 32,
		SINGLE_CLUSTER_INSTANCE = 64,
		SINGLE_GROUP_INSTANCE = 128,
		COEXIST_IN_SHARED_VOLUME_GROUP = 256,
		PLACEMENT_DATA = 512,
		MONITOR_DETACH = 1024,
		MONITOR_REATTACH = 2048,
		OPERATION_CONTEXT = 4096,
		CLONES = 8192,
		NOT_PREEMPTABLE = 16384,
		NOTIFY_NEW_OWNER = 32768,
		SUPPORTS_UNMONITORED_STATE = 65536,
		INFRASTRUCTURE = 131072,
		VETO_DRAIN = 262144,
		DRAIN_LOCAL_OFFLINE = 524288,
	}
	public enum CLUS_FLAGS : int32
	{
		FLAG_CORE = 1,
	}
	public enum CLUSPROP_PIFLAGS : int32
	{
		STICKY = 1,
		REMOVABLE = 2,
		USABLE = 4,
		DEFAULT_QUORUM = 8,
		USABLE_FOR_CSV = 16,
		ENCRYPTION_ENABLED = 32,
		RAW = 64,
		UNKNOWN = -2147483648,
	}
	public enum CLUSTER_CSV_VOLUME_FAULT_STATE : int32
	{
		NoFaults = 0,
		NoDirectIO = 1,
		NoAccess = 2,
		InMaintenance = 4,
		Dismounted = 8,
	}
	public enum CLUSTER_SHARED_VOLUME_BACKUP_STATE : int32
	{
		None = 0,
		InProgress = 1,
	}
	public enum CLUSTER_SHARED_VOLUME_STATE : int32
	{
		Unavailable = 0,
		Paused = 1,
		Active = 2,
		ActiveRedirected = 3,
		ActiveVolumeRedirected = 4,
	}
	public enum CLUSTER_SHARED_VOLUME_RENAME_INPUT_TYPE : int32
	{
		None = 0,
		VolumeOffset = 1,
		VolumeId = 2,
		VolumeName = 3,
		VolumeGuid = 4,
	}
	public enum MAINTENANCE_MODE_TYPE_ENUM : int32
	{
		DisableIsAliveCheck = 1,
		OfflineResource = 2,
		UnclusterResource = 3,
	}
	public enum CLUSPROP_IPADDR_ENABLENETBIOS : int32
	{
		DISABLED = 0,
		ENABLED = 1,
		TRACK_NIC = 2,
	}
	public enum FILESHARE_CHANGE_ENUM : int32
	{
		NONE = 0,
		ADD = 1,
		DEL = 2,
		MODIFY = 3,
	}
	public enum CLUSTER_RESOURCE_ENUM : int32
	{
		DEPENDS = 1,
		PROVIDES = 2,
		NODES = 4,
		ALL = 7,
	}
	public enum CLUSTER_RESOURCE_TYPE_ENUM : int32
	{
		NODES = 1,
		RESOURCES = 2,
		ALL = 3,
	}
	[AllowDuplicates]
	public enum CLUSTER_NETWORK_ENUM : int32
	{
		NETINTERFACES = 1,
		ALL = 1,
	}
	public enum CLUSTER_NETWORK_STATE : int32
	{
		StateUnknown = -1,
		Unavailable = 0,
		Down = 1,
		Partitioned = 2,
		Up = 3,
	}
	public enum CLUSTER_NETWORK_ROLE : int32
	{
		None = 0,
		InternalUse = 1,
		ClientAccess = 2,
		InternalAndClient = 3,
	}
	public enum CLUSTER_NETINTERFACE_STATE : int32
	{
		StateUnknown = -1,
		Unavailable = 0,
		Failed = 1,
		Unreachable = 2,
		Up = 3,
	}
	public enum CLUSTER_SETUP_PHASE : int32
	{
		Initialize = 1,
		ValidateNodeState = 100,
		ValidateNetft = 102,
		ValidateClusDisk = 103,
		ConfigureClusSvc = 104,
		StartingClusSvc = 105,
		QueryClusterNameAccount = 106,
		ValidateClusterNameAccount = 107,
		CreateClusterAccount = 108,
		ConfigureClusterAccount = 109,
		FormingCluster = 200,
		AddClusterProperties = 201,
		CreateResourceTypes = 202,
		CreateGroups = 203,
		CreateIPAddressResources = 204,
		CreateNetworkName = 205,
		ClusterGroupOnline = 206,
		GettingCurrentMembership = 300,
		AddNodeToCluster = 301,
		NodeUp = 302,
		MoveGroup = 400,
		DeleteGroup = 401,
		CleanupCOs = 402,
		OfflineGroup = 403,
		EvictNode = 404,
		CleanupNode = 405,
		CoreGroupCleanup = 406,
		FailureCleanup = 999,
	}
	public enum CLUSTER_SETUP_PHASE_TYPE : int32
	{
		Start = 1,
		Continue = 2,
		End = 3,
		Report = 4,
	}
	public enum CLUSTER_SETUP_PHASE_SEVERITY : int32
	{
		Informational = 1,
		Warning = 2,
		Fatal = 3,
	}
	[AllowDuplicates]
	public enum PLACEMENT_OPTIONS : int32
	{
		MIN_VALUE = 0,
		DEFAULT_PLACEMENT_OPTIONS = 0,
		DISABLE_CSV_VM_DEPENDENCY = 1,
		CONSIDER_OFFLINE_VMS = 2,
		DONT_USE_MEMORY = 4,
		DONT_USE_CPU = 8,
		DONT_USE_LOCAL_TEMP_DISK = 16,
		DONT_RESUME_VMS_WITH_EXISTING_TEMP_DISK = 32,
		SAVE_VMS_WITH_LOCAL_DISK_ON_DRAIN_OVERWRITE = 64,
		DONT_RESUME_AVAILABILTY_SET_VMS_WITH_EXISTING_TEMP_DISK = 128,
		SAVE_AVAILABILTY_SET_VMS_WITH_LOCAL_DISK_ON_DRAIN_OVERWRITE = 256,
		AVAILABILITY_SET_DOMAIN_AFFINITY = 512,
		ALL = 1023,
	}
	[AllowDuplicates]
	public enum GRP_PLACEMENT_OPTIONS : int32
	{
		MIN_VALUE = 0,
		DEFAULT = 0,
		DISABLE_AUTOBALANCING = 1,
		ALL = 1,
	}
	public enum SR_REPLICATED_DISK_TYPE : int32
	{
		None = 0,
		Source = 1,
		LogSource = 2,
		Destination = 3,
		LogDestination = 4,
		NotInParthership = 5,
		LogNotInParthership = 6,
		Other = 7,
	}
	public enum SR_DISK_REPLICATION_ELIGIBLE : int32
	{
		None = 0,
		Yes = 1,
		Offline = 2,
		NotGpt = 3,
		PartitionLayoutMismatch = 4,
		InsufficientFreeSpace = 5,
		NotInSameSite = 6,
		InSameSite = 7,
		FileSystemNotSupported = 8,
		AlreadyInReplication = 9,
		SameAsSpecifiedDisk = 10,
		Other = 9999,
	}
	public enum VM_RESDLL_CONTEXT : int32
	{
		TurnOff = 0,
		Save = 1,
		Shutdown = 2,
		ShutdownForce = 3,
		LiveMigration = 4,
	}
	public enum RESDLL_CONTEXT_OPERATION_TYPE : int32
	{
		Failback = 0,
		Drain = 1,
		DrainFailure = 2,
		EmbeddedFailure = 3,
		Preemption = 4,
		NetworkDisconnect = 5,
		NetworkDisconnectMoveRetry = 6,
	}
	public enum LOG_LEVEL : int32
	{
		INFORMATION = 0,
		WARNING = 1,
		ERROR = 2,
		SEVERE = 3,
	}
	public enum RESOURCE_EXIT_STATE : int32
	{
		Continue = 0,
		Terminate = 1,
		Max = 2,
	}
	public enum FAILURE_TYPE : int32
	{
		GENERAL = 0,
		EMBEDDED = 1,
		NETWORK_LOSS = 2,
	}
	public enum CLUSTER_RESOURCE_APPLICATION_STATE : int32
	{
		StateUnknown = 1,
		OSHeartBeat = 2,
		Ready = 3,
	}
	public enum RESOURCE_MONITOR_STATE : int32
	{
		Initializing = 0,
		Idle = 1,
		StartingResource = 2,
		InitializingResource = 3,
		OnlineResource = 4,
		OfflineResource = 5,
		ShutdownResource = 6,
		DeletingResource = 7,
		IsAlivePoll = 8,
		LooksAlivePoll = 9,
		ArbitrateResource = 10,
		ReleaseResource = 11,
		ResourceControl = 12,
		ResourceTypeControl = 13,
		TerminateResource = 14,
		Deadlocked = 15,
	}
	public enum CLUSTER_ROLE : int32
	{
		DHCP = 0,
		DTC = 1,
		FileServer = 2,
		GenericApplication = 3,
		GenericScript = 4,
		GenericService = 5,
		ISCSINameServer = 6,
		MSMQ = 7,
		NFS = 8,
		PrintServer = 9,
		StandAloneNamespaceServer = 10,
		VolumeShadowCopyServiceTask = 11,
		WINS = 12,
		TaskScheduler = 13,
		NetworkFileSystem = 14,
		DFSReplicatedFolder = 15,
		DistributedFileSystem = 16,
		DistributedNetworkName = 17,
		FileShare = 18,
		FileShareWitness = 19,
		HardDisk = 20,
		IPAddress = 21,
		IPV6Address = 22,
		IPV6TunnelAddress = 23,
		ISCSITargetServer = 24,
		NetworkName = 25,
		PhysicalDisk = 26,
		SODAFileServer = 27,
		StoragePool = 28,
		VirtualMachine = 29,
		VirtualMachineConfiguration = 30,
		VirtualMachineReplicaBroker = 31,
	}
	public enum CLUSTER_ROLE_STATE : int32
	{
		Unknown = -1,
		Clustered = 0,
		Unclustered = 1,
	}
	public enum CLUADMEX_OBJECT_TYPE : int32
	{
		NONE = 0,
		CLUSTER = 1,
		NODE = 2,
		GROUP = 3,
		RESOURCE = 4,
		RESOURCETYPE = 5,
		NETWORK = 6,
		NETINTERFACE = 7,
	}
	#endregion
	
	#region Function pointers
	public function uint32 PCLUSAPI_GET_NODE_CLUSTER_STATE(PWSTR lpszNodeName, out uint32 pdwClusterState);
	public function _HCLUSTER* PCLUSAPI_OPEN_CLUSTER(PWSTR lpszClusterName);
	public function _HCLUSTER* PCLUSAPI_OPEN_CLUSTER_EX(PWSTR lpszClusterName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER(ref _HCLUSTER hCluster);
	public function uint32 PCLUSAPI_SetClusterName(ref _HCLUSTER hCluster, PWSTR lpszNewClusterName);
	public function uint32 PCLUSAPI_GET_CLUSTER_INFORMATION(ref _HCLUSTER hCluster, char16* lpszClusterName, out uint32 lpcchClusterName, CLUSTERVERSIONINFO* lpClusterInfo);
	public function uint32 PCLUSAPI_GET_CLUSTER_QUORUM_RESOURCE(ref _HCLUSTER hCluster, char16* lpszResourceName, out uint32 lpcchResourceName, char16* lpszDeviceName, out uint32 lpcchDeviceName, out uint32 lpdwMaxQuorumLogSize);
	public function uint32 PCLUSAPI_SET_CLUSTER_QUORUM_RESOURCE(ref _HRESOURCE hResource, PWSTR lpszDeviceName, uint32 dwMaxQuoLogSize);
	public function uint32 PCLUSAPI_BACKUP_CLUSTER_DATABASE(ref _HCLUSTER hCluster, PWSTR lpszPathName);
	public function uint32 PCLUSAPI_RESTORE_CLUSTER_DATABASE(PWSTR lpszPathName, BOOL bForce, PWSTR lpszQuorumDriveLetter);
	public function uint32 PCLUSAPI_SET_CLUSTER_NETWORK_PRIORITY_ORDER(ref _HCLUSTER hCluster, uint32 NetworkCount, _HNETWORK** NetworkList);
	public function uint32 PCLUSAPI_SET_CLUSTER_SERVICE_ACCOUNT_PASSWORD(PWSTR lpszClusterName, PWSTR lpszNewPassword, uint32 dwFlags, CLUSTER_SET_PASSWORD_STATUS* lpReturnStatusBuffer, out uint32 lpcbReturnStatusBufferSize);
	public function uint32 PCLUSAPI_CLUSTER_CONTROL(ref _HCLUSTER hCluster, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function BOOL PCLUSTER_UPGRADE_PROGRESS_CALLBACK(void* pvCallbackArg, CLUSTER_UPGRADE_PHASE eUpgradePhase);
	public function uint32 PCLUSAPI_CLUSTER_UPGRADE(ref _HCLUSTER hCluster, BOOL perform, PCLUSTER_UPGRADE_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function _HCHANGE* PCLUSAPI_CREATE_CLUSTER_NOTIFY_PORT_V2(ref _HCHANGE hChange, ref _HCLUSTER hCluster, ref NOTIFY_FILTER_AND_TYPE Filters, uint32 dwFilterCount, uint dwNotifyKey);
	public function uint32 PCLUSAPI_REGISTER_CLUSTER_NOTIFY_V2(ref _HCHANGE hChange, NOTIFY_FILTER_AND_TYPE Filter, HANDLE hObject, uint dwNotifyKey);
	public function uint32 PCLUSAPI_GET_NOTIFY_EVENT_HANDLE_V2(ref _HCHANGE hChange, out HANDLE lphTargetEvent);
	public function uint32 PCLUSAPI_GET_CLUSTER_NOTIFY_V2(ref _HCHANGE hChange, out uint lpdwNotifyKey, NOTIFY_FILTER_AND_TYPE* pFilterAndType, uint8* buffer, uint32* lpcchBufferSize, PWSTR lpszObjectId, uint32* lpcchObjectId, PWSTR lpszParentId, uint32* lpcchParentId, PWSTR lpszName, uint32* lpcchName, PWSTR lpszType, uint32* lpcchType, uint32 dwMilliseconds);
	public function _HCHANGE* PCLUSAPI_CREATE_CLUSTER_NOTIFY_PORT(ref _HCHANGE hChange, ref _HCLUSTER hCluster, uint32 dwFilter, uint dwNotifyKey);
	public function uint32 PCLUSAPI_REGISTER_CLUSTER_NOTIFY(ref _HCHANGE hChange, uint32 dwFilterType, HANDLE hObject, uint dwNotifyKey);
	public function uint32 PCLUSAPI_GET_CLUSTER_NOTIFY(ref _HCHANGE hChange, out uint lpdwNotifyKey, out uint32 lpdwFilterType, char16* lpszName, out uint32 lpcchName, uint32 dwMilliseconds);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_NOTIFY_PORT(ref _HCHANGE hChange);
	public function _HCLUSENUM* PCLUSAPI_CLUSTER_OPEN_ENUM(ref _HCLUSTER hCluster, uint32 dwType);
	public function uint32 PCLUSAPI_CLUSTER_GET_ENUM_COUNT(ref _HCLUSENUM hEnum);
	public function uint32 PCLUSAPI_CLUSTER_ENUM(ref _HCLUSENUM hEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_CLOSE_ENUM(ref _HCLUSENUM hEnum);
	public function _HCLUSENUMEX* PCLUSAPI_CLUSTER_OPEN_ENUM_EX(ref _HCLUSTER hCluster, uint32 dwType, void* pOptions);
	public function uint32 PCLUSAPI_CLUSTER_GET_ENUM_COUNT_EX(ref _HCLUSENUMEX hClusterEnum);
	public function uint32 PCLUSAPI_CLUSTER_ENUM_EX(ref _HCLUSENUMEX hClusterEnum, uint32 dwIndex, out CLUSTER_ENUM_ITEM pItem, out uint32 cbItem);
	public function uint32 PCLUSAPI_CLUSTER_CLOSE_ENUM_EX(ref _HCLUSENUMEX hClusterEnum);
	public function _HGROUPSET* PCLUSAPI_CREATE_CLUSTER_GROUP_GROUPSET(ref _HCLUSTER hCluster, PWSTR lpszGroupSetName);
	public function _HGROUPSET* PCLUSAPI_OPEN_CLUSTER_GROUP_GROUPSET(ref _HCLUSTER hCluster, PWSTR lpszGroupSetName);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_GROUP_GROUPSET(ref _HGROUPSET hGroupSet);
	public function uint32 PCLUSAPI_DELETE_CLUSTER_GROUP_GROUPSET(ref _HGROUPSET hGroupSet);
	public function uint32 PCLUSAPI_CLUSTER_ADD_GROUP_TO_GROUP_GROUPSET(ref _HGROUPSET hGroupSet, ref _HGROUP hGroup);
	public function uint32 PCLUSAPI_CLUSTER_REMOVE_GROUP_FROM_GROUP_GROUPSET(ref _HGROUPSET hGroupSet, ref _HGROUP hGroupName);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_GROUPSET_CONTROL(ref _HGROUPSET hGroupSet, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	public function uint32 PCLUSAPI_ADD_CLUSTER_GROUP_DEPENDENCY(ref _HGROUP hDependentGroup, ref _HGROUP hProviderGroup);
	public function uint32 PCLUSAPI_SET_GROUP_DEPENDENCY_EXPRESSION(ref _HGROUP hGroupSet, PWSTR lpszDependencyExpression);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_GROUP_DEPENDENCY(ref _HGROUP hGroup, ref _HGROUP hDependsOn);
	public function uint32 PCLUSAPI_ADD_CLUSTER_GROUP_GROUPSET_DEPENDENCY(ref _HGROUPSET hDependentGroupSet, ref _HGROUPSET hProviderGroupSet);
	public function uint32 PCLUSAPI_SET_CLUSTER_GROUP_GROUPSET_DEPENDENCY_EXPRESSION(ref _HGROUPSET hGroupSet, PWSTR lpszDependencyExpression);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_GROUP_GROUPSET_DEPENDENCY(ref _HGROUPSET hGroupSet, ref _HGROUPSET hDependsOn);
	public function uint32 PCLUSAPI_ADD_CLUSTER_GROUP_TO_GROUP_GROUPSET_DEPENDENCY(ref _HGROUP hDependentGroup, ref _HGROUPSET hProviderGroupSet);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_GROUP_TO_GROUP_GROUPSET_DEPENDENCY(ref _HGROUP hGroup, ref _HGROUPSET hDependsOn);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_GROUP_GROUPSET(ref _HGROUPSET hGroupSet);
	public function uint32 PCLUSAPI_ADD_CROSS_CLUSTER_GROUPSET_DEPENDENCY(ref _HGROUPSET hDependentGroupSet, PWSTR lpRemoteClusterName, PWSTR lpRemoteGroupSetName);
	public function uint32 PCLUSAPI_REMOVE_CROSS_CLUSTER_GROUPSET_DEPENDENCY(ref _HGROUPSET hDependentGroupSet, PWSTR lpRemoteClusterName, PWSTR lpRemoteGroupSetName);
	public function _HGROUPSET* PCLUSAPI_CREATE_CLUSTER_AVAILABILITY_SET(ref _HCLUSTER hCluster, PWSTR lpAvailabilitySetName, ref CLUSTER_AVAILABILITY_SET_CONFIG pAvailabilitySetConfig);
	public function uint32 PCLUSAPI_CLUSTER_CREATE_AFFINITY_RULE(ref _HCLUSTER hCluster, PWSTR ruleName, CLUS_AFFINITY_RULE_TYPE ruleType);
	public function uint32 PCLUSAPI_CLUSTER_REMOVE_AFFINITY_RULE(ref _HCLUSTER hCluster, PWSTR ruleName);
	public function uint32 PCLUSAPI_CLUSTER_ADD_GROUP_TO_AFFINITY_RULE(ref _HCLUSTER hCluster, PWSTR ruleName, ref _HGROUP hGroup);
	public function uint32 PCLUSAPI_CLUSTER_REMOVE_GROUP_FROM_AFFINITY_RULE(ref _HCLUSTER hCluster, PWSTR ruleName, ref _HGROUP hGroup);
	public function uint32 PCLUSAPI_CLUSTER_AFFINITY_RULE_CONTROL(ref _HCLUSTER hCluster, PWSTR affinityRuleName, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	public function _HNODE* PCLUSAPI_OPEN_CLUSTER_NODE(ref _HCLUSTER hCluster, PWSTR lpszNodeName);
	public function _HNODE* PCLUSAPI_OPEN_CLUSTER_NODE_EX(ref _HCLUSTER hCluster, PWSTR lpszNodeName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function _HNODE* PCLUSAPI_OPEN_NODE_BY_ID(ref _HCLUSTER hCluster, uint32 nodeId);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_NODE(ref _HNODE hNode);
	public function CLUSTER_NODE_STATE PCLUSAPI_GET_CLUSTER_NODE_STATE(ref _HNODE hNode);
	public function uint32 PCLUSAPI_GET_CLUSTER_NODE_ID(_HNODE* hNode, char16* lpszNodeId, out uint32 lpcchName);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_NODE(ref _HNODE hNode);
	public function uint32 PCLUSAPI_PAUSE_CLUSTER_NODE(ref _HNODE hNode);
	public function uint32 PCLUSAPI_RESUME_CLUSTER_NODE(ref _HNODE hNode);
	public function uint32 PCLUSAPI_EVICT_CLUSTER_NODE(ref _HNODE hNode);
	public function _HNODEENUM* PCLUSAPI_CLUSTER_NODE_OPEN_ENUM(ref _HNODE hNode, uint32 dwType);
	public function _HNODEENUMEX* PCLUSAPI_CLUSTER_NODE_OPEN_ENUM_EX(ref _HNODE hNode, uint32 dwType, void* pOptions);
	public function uint32 PCLUSAPI_CLUSTER_NODE_GET_ENUM_COUNT_EX(ref _HNODEENUMEX hNodeEnum);
	public function uint32 PCLUSAPI_CLUSTER_NODE_ENUM_EX(ref _HNODEENUMEX hNodeEnum, uint32 dwIndex, out CLUSTER_ENUM_ITEM pItem, out uint32 cbItem);
	public function uint32 PCLUSAPI_CLUSTER_NODE_CLOSE_ENUM_EX(ref _HNODEENUMEX hNodeEnum);
	public function uint32 PCLUSAPI_CLUSTER_NODE_GET_ENUM_COUNT(ref _HNODEENUM hNodeEnum);
	public function uint32 PCLUSAPI_CLUSTER_NODE_CLOSE_ENUM(ref _HNODEENUM hNodeEnum);
	public function uint32 PCLUSAPI_CLUSTER_NODE_ENUM(ref _HNODEENUM hNodeEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_EVICT_CLUSTER_NODE_EX(ref _HNODE hNode, uint32 dwTimeOut, out HRESULT phrCleanupStatus);
	public function HKEY PCLUSAPI_GET_CLUSTER_RESOURCE_TYPE_KEY(ref _HCLUSTER hCluster, PWSTR lpszTypeName, uint32 samDesired);
	public function _HGROUP* PCLUSAPI_CREATE_CLUSTER_GROUP(ref _HCLUSTER hCluster, PWSTR lpszGroupName);
	public function _HGROUP* PCLUSAPI_OPEN_CLUSTER_GROUP(ref _HCLUSTER hCluster, PWSTR lpszGroupName);
	public function _HGROUP* PCLUSAPI_OPEN_CLUSTER_GROUP_EX(ref _HCLUSTER hCluster, PWSTR lpszGroupName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function uint32 PCLUSAPI_PAUSE_CLUSTER_NODE_EX(ref _HNODE hNode, BOOL bDrainNode, uint32 dwPauseFlags, _HNODE* hNodeDrainTarget);
	public function uint32 PCLUSAPI_RESUME_CLUSTER_NODE_EX(ref _HNODE hNode, CLUSTER_NODE_RESUME_FAILBACK_TYPE eResumeFailbackType, uint32 dwResumeFlagsReserved);
	public function _HGROUP* PCLUSAPI_CREATE_CLUSTER_GROUPEX(ref _HCLUSTER hCluster, PWSTR lpszGroupName, CLUSTER_CREATE_GROUP_INFO* pGroupInfo);
	public function _HGROUPENUMEX* PCLUSAPI_CLUSTER_GROUP_OPEN_ENUM_EX(ref _HCLUSTER hCluster, PWSTR lpszProperties, uint32 cbProperties, PWSTR lpszRoProperties, uint32 cbRoProperties, uint32 dwFlags);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_GET_ENUM_COUNT_EX(ref _HGROUPENUMEX hGroupEnumEx);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_ENUM_EX(ref _HGROUPENUMEX hGroupEnumEx, uint32 dwIndex, out CLUSTER_GROUP_ENUM_ITEM pItem, out uint32 cbItem);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_CLOSE_ENUM_EX(ref _HGROUPENUMEX hGroupEnumEx);
	public function _HRESENUMEX* PCLUSAPI_CLUSTER_RESOURCE_OPEN_ENUM_EX(ref _HCLUSTER hCluster, PWSTR lpszProperties, uint32 cbProperties, PWSTR lpszRoProperties, uint32 cbRoProperties, uint32 dwFlags);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_GET_ENUM_COUNT_EX(ref _HRESENUMEX hResourceEnumEx);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_ENUM_EX(ref _HRESENUMEX hResourceEnumEx, uint32 dwIndex, out CLUSTER_RESOURCE_ENUM_ITEM pItem, out uint32 cbItem);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_CLOSE_ENUM_EX(ref _HRESENUMEX hResourceEnumEx);
	public function uint32 PCLUSAPI_RESTART_CLUSTER_RESOURCE(out _HRESOURCE hResource, uint32 dwFlags);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_GROUP(ref _HGROUP hGroup);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_GROUP(ref _HGROUP hGroup);
	public function CLUSTER_GROUP_STATE PCLUSAPI_GET_CLUSTER_GROUP_STATE(ref _HGROUP hGroup, char16* lpszNodeName, uint32* lpcchNodeName);
	public function uint32 PCLUSAPI_SET_CLUSTER_GROUP_NAME(out _HGROUP hGroup, PWSTR lpszGroupName);
	public function uint32 PCLUSAPI_SET_CLUSTER_GROUP_NODE_LIST(ref _HGROUP hGroup, uint32 NodeCount, _HNODE** NodeList);
	public function uint32 PCLUSAPI_ONLINE_CLUSTER_GROUP(ref _HGROUP hGroup, _HNODE* hDestinationNode);
	public function uint32 PCLUSAPI_MOVE_CLUSTER_GROUP(ref _HGROUP hGroup, _HNODE* hDestinationNode);
	public function uint32 PCLUSAPI_OFFLINE_CLUSTER_GROUP(out _HGROUP hGroup);
	public function uint32 PCLUSAPI_DELETE_CLUSTER_GROUP(out _HGROUP hGroup);
	public function uint32 PCLUSAPI_DESTROY_CLUSTER_GROUP(out _HGROUP hGroup);
	public function _HGROUPENUM* PCLUSAPI_CLUSTER_GROUP_OPEN_ENUM(out _HGROUP hGroup, uint32 dwType);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_GET_ENUM_COUNT(ref _HGROUPENUM hGroupEnum);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_ENUM(ref _HGROUPENUM hGroupEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszResourceName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_CLOSE_ENUM(out _HGROUPENUM hGroupEnum);
	public function _HRESOURCE* PCLUSAPI_CREATE_CLUSTER_RESOURCE(out _HGROUP hGroup, PWSTR lpszResourceName, PWSTR lpszResourceType, uint32 dwFlags);
	public function _HRESOURCE* PCLUSAPI_OPEN_CLUSTER_RESOURCE(out _HCLUSTER hCluster, PWSTR lpszResourceName);
	public function _HRESOURCE* PCLUSAPI_OPEN_CLUSTER_RESOURCE_EX(ref _HCLUSTER hCluster, PWSTR lpszResourceName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_RESOURCE(out _HRESOURCE hResource);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_RESOURCE(ref _HRESOURCE hResource);
	public function uint32 PCLUSAPI_DELETE_CLUSTER_RESOURCE(out _HRESOURCE hResource);
	public function CLUSTER_RESOURCE_STATE PCLUSAPI_GET_CLUSTER_RESOURCE_STATE(ref _HRESOURCE hResource, char16* lpszNodeName, uint32* lpcchNodeName, char16* lpszGroupName, uint32* lpcchGroupName);
	public function uint32 PCLUSAPI_SET_CLUSTER_RESOURCE_NAME(out _HRESOURCE hResource, PWSTR lpszResourceName);
	public function uint32 PCLUSAPI_FAIL_CLUSTER_RESOURCE(out _HRESOURCE hResource);
	public function uint32 PCLUSAPI_ONLINE_CLUSTER_RESOURCE(out _HRESOURCE hResource);
	public function uint32 PCLUSAPI_OFFLINE_CLUSTER_RESOURCE(out _HRESOURCE hResource);
	public function uint32 PCLUSAPI_CHANGE_CLUSTER_RESOURCE_GROUP(out _HRESOURCE hResource, out _HGROUP hGroup);
	public function uint32 PCLUSAPI_CHANGE_CLUSTER_RESOURCE_GROUP_EX(out _HRESOURCE hResource, out _HGROUP hGroup, uint64 Flags);
	public function uint32 PCLUSAPI_ADD_CLUSTER_RESOURCE_NODE(out _HRESOURCE hResource, out _HNODE hNode);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_RESOURCE_NODE(out _HRESOURCE hResource, out _HNODE hNode);
	public function uint32 PCLUSAPI_ADD_CLUSTER_RESOURCE_DEPENDENCY(out _HRESOURCE hResource, out _HRESOURCE hDependsOn);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_RESOURCE_DEPENDENCY(out _HRESOURCE hResource, out _HRESOURCE hDependsOn);
	public function uint32 PCLUSAPI_SET_CLUSTER_RESOURCE_DEPENDENCY_EXPRESSION(ref _HRESOURCE hResource, PWSTR lpszDependencyExpression);
	public function uint32 PCLUSAPI_GET_CLUSTER_RESOURCE_DEPENDENCY_EXPRESSION(ref _HRESOURCE hResource, char16* lpszDependencyExpression, out uint32 lpcchDependencyExpression);
	public function uint32 PCLUSAPI_ADD_RESOURCE_TO_CLUSTER_SHARED_VOLUMES(ref _HRESOURCE hResource);
	public function uint32 PCLUSAPI_REMOVE_RESOURCE_FROM_CLUSTER_SHARED_VOLUMES(ref _HRESOURCE hResource);
	public function uint32 PCLUSAPI_IS_FILE_ON_CLUSTER_SHARED_VOLUME(PWSTR lpszPathName, out BOOL pbFileIsOnSharedVolume);
	public function uint32 PCLUSAPI_SHARED_VOLUME_SET_SNAPSHOT_STATE(Guid guidSnapshotSet, PWSTR lpszVolumeName, CLUSTER_SHARED_VOLUME_SNAPSHOT_STATE state);
	public function BOOL PCLUSAPI_CAN_RESOURCE_BE_DEPENDENT(out _HRESOURCE hResource, out _HRESOURCE hResourceDependent);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_CONTROL(ref _HRESOURCE hResource, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_TYPE_CONTROL(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function uint32 PCLUSAPI_CLUSTER_GROUP_CONTROL(ref _HGROUP hGroup, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function uint32 PCLUSAPI_CLUSTER_NODE_CONTROL(ref _HNODE hNode, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function BOOL PCLUSAPI_GET_CLUSTER_RESOURCE_NETWORK_NAME(ref _HRESOURCE hResource, char16* lpBuffer, out uint32 nSize);
	public function _HRESENUM* PCLUSAPI_CLUSTER_RESOURCE_OPEN_ENUM(out _HRESOURCE hResource, uint32 dwType);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_GET_ENUM_COUNT(ref _HRESENUM hResEnum);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_ENUM(ref _HRESENUM hResEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_CLOSE_ENUM(out _HRESENUM hResEnum);
	public function uint32 PCLUSAPI_CREATE_CLUSTER_RESOURCE_TYPE(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, PWSTR lpszDisplayName, PWSTR lpszResourceTypeDll, uint32 dwLooksAlivePollInterval, uint32 dwIsAlivePollInterval);
	public function uint32 PCLUSAPI_DELETE_CLUSTER_RESOURCE_TYPE(out _HCLUSTER hCluster, PWSTR lpszResourceTypeName);
	public function _HRESTYPEENUM* PCLUSAPI_CLUSTER_RESOURCE_TYPE_OPEN_ENUM(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, uint32 dwType);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_TYPE_GET_ENUM_COUNT(ref _HRESTYPEENUM hResTypeEnum);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_TYPE_ENUM(ref _HRESTYPEENUM hResTypeEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_RESOURCE_TYPE_CLOSE_ENUM(ref _HRESTYPEENUM hResTypeEnum);
	public function _HNETWORK* PCLUSAPI_OPEN_CLUSTER_NETWORK(ref _HCLUSTER hCluster, PWSTR lpszNetworkName);
	public function _HNETWORK* PCLUSAPI_OPEN_CLUSTER_NETWORK_EX(ref _HCLUSTER hCluster, PWSTR lpszNetworkName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_NETWORK(ref _HNETWORK hNetwork);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_NETWORK(ref _HNETWORK hNetwork);
	public function _HNETWORKENUM* PCLUSAPI_CLUSTER_NETWORK_OPEN_ENUM(ref _HNETWORK hNetwork, uint32 dwType);
	public function uint32 PCLUSAPI_CLUSTER_NETWORK_GET_ENUM_COUNT(ref _HNETWORKENUM hNetworkEnum);
	public function uint32 PCLUSAPI_CLUSTER_NETWORK_ENUM(ref _HNETWORKENUM hNetworkEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_NETWORK_CLOSE_ENUM(ref _HNETWORKENUM hNetworkEnum);
	public function CLUSTER_NETWORK_STATE PCLUSAPI_GET_CLUSTER_NETWORK_STATE(ref _HNETWORK hNetwork);
	public function uint32 PCLUSAPI_SET_CLUSTER_NETWORK_NAME(ref _HNETWORK hNetwork, PWSTR lpszName);
	public function uint32 PCLUSAPI_GET_CLUSTER_NETWORK_ID(ref _HNETWORK hNetwork, char16* lpszNetworkId, out uint32 lpcchName);
	public function uint32 PCLUSAPI_CLUSTER_NETWORK_CONTROL(ref _HNETWORK hNetwork, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function _HNETINTERFACE* PCLUSAPI_OPEN_CLUSTER_NET_INTERFACE(ref _HCLUSTER hCluster, PWSTR lpszInterfaceName);
	public function _HNETINTERFACE* PCLUSAPI_OPEN_CLUSTER_NETINTERFACE_EX(ref _HCLUSTER hCluster, PWSTR lpszNetInterfaceName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	public function uint32 PCLUSAPI_GET_CLUSTER_NET_INTERFACE(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PWSTR lpszNetworkName, char16* lpszInterfaceName, out uint32 lpcchInterfaceName);
	public function BOOL PCLUSAPI_CLOSE_CLUSTER_NET_INTERFACE(ref _HNETINTERFACE hNetInterface);
	public function _HCLUSTER* PCLUSAPI_GET_CLUSTER_FROM_NET_INTERFACE(ref _HNETINTERFACE hNetInterface);
	public function CLUSTER_NETINTERFACE_STATE PCLUSAPI_GET_CLUSTER_NET_INTERFACE_STATE(ref _HNETINTERFACE hNetInterface);
	public function uint32 PCLUSAPI_CLUSTER_NET_INTERFACE_CONTROL(ref _HNETINTERFACE hNetInterface, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	public function HKEY PCLUSAPI_GET_CLUSTER_KEY(out _HCLUSTER hCluster, uint32 samDesired);
	public function HKEY PCLUSAPI_GET_CLUSTER_GROUP_KEY(out _HGROUP hGroup, uint32 samDesired);
	public function HKEY PCLUSAPI_GET_CLUSTER_RESOURCE_KEY(out _HRESOURCE hResource, uint32 samDesired);
	public function HKEY PCLUSAPI_GET_CLUSTER_NODE_KEY(out _HNODE hNode, uint32 samDesired);
	public function HKEY PCLUSAPI_GET_CLUSTER_NETWORK_KEY(ref _HNETWORK hNetwork, uint32 samDesired);
	public function HKEY PCLUSAPI_GET_CLUSTER_NET_INTERFACE_KEY(ref _HNETINTERFACE hNetInterface, uint32 samDesired);
	public function int32 PCLUSAPI_CLUSTER_REG_CREATE_KEY(HKEY hKey, PWSTR lpszSubKey, uint32 dwOptions, uint32 samDesired, SECURITY_ATTRIBUTES* lpSecurityAttributes, out HKEY phkResult, uint32* lpdwDisposition);
	public function int32 PCLUSAPI_CLUSTER_REG_OPEN_KEY(HKEY hKey, PWSTR lpszSubKey, uint32 samDesired, out HKEY phkResult);
	public function int32 PCLUSAPI_CLUSTER_REG_DELETE_KEY(HKEY hKey, PWSTR lpszSubKey);
	public function int32 PCLUSAPI_CLUSTER_REG_CLOSE_KEY(HKEY hKey);
	public function int32 PCLUSAPI_CLUSTER_REG_ENUM_KEY(HKEY hKey, uint32 dwIndex, char16* lpszName, out uint32 lpcchName, out FILETIME lpftLastWriteTime);
	public function uint32 PCLUSAPI_CLUSTER_REG_SET_VALUE(HKEY hKey, PWSTR lpszValueName, uint32 dwType, in uint8 lpData, uint32 cbData);
	public function uint32 PCLUSAPI_CLUSTER_REG_DELETE_VALUE(HKEY hKey, PWSTR lpszValueName);
	public function int32 PCLUSAPI_CLUSTER_REG_QUERY_VALUE(HKEY hKey, PWSTR lpszValueName, uint32* lpdwValueType, uint8* lpData, uint32* lpcbData);
	public function uint32 PCLUSAPI_CLUSTER_REG_ENUM_VALUE(HKEY hKey, uint32 dwIndex, char16* lpszValueName, out uint32 lpcchValueName, out uint32 lpdwType, uint8* lpData, uint32* lpcbData);
	public function int32 PCLUSAPI_CLUSTER_REG_QUERY_INFO_KEY(HKEY hKey, out uint32 lpcSubKeys, out uint32 lpcbMaxSubKeyLen, out uint32 lpcValues, out uint32 lpcbMaxValueNameLen, out uint32 lpcbMaxValueLen, out uint32 lpcbSecurityDescriptor, out FILETIME lpftLastWriteTime);
	public function int32 PCLUSAPI_CLUSTER_REG_GET_KEY_SECURITY(HKEY hKey, uint32 RequestedInformation, PSECURITY_DESCRIPTOR pSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
	public function int32 PCLUSAPI_CLUSTER_REG_SET_KEY_SECURITY(HKEY hKey, uint32 SecurityInformation, PSECURITY_DESCRIPTOR pSecurityDescriptor);
	public function int32 PCLUSAPI_CLUSTER_REG_SYNC_DATABASE(out _HCLUSTER hCluster, uint32 flags);
	public function int32 PCLUSAPI_CLUSTER_REG_CREATE_BATCH(HKEY hKey, out _HREGBATCH* pHREGBATCH);
	public function int32 PCLUSTER_REG_BATCH_ADD_COMMAND(ref _HREGBATCH hRegBatch, CLUSTER_REG_COMMAND dwCommand, PWSTR wzName, uint32 dwOptions, void* lpData, uint32 cbData);
	public function int32 PCLUSTER_REG_CLOSE_BATCH(ref _HREGBATCH hRegBatch, BOOL bCommit, int32* failedCommandNumber);
	public function int32 PCLUSTER_REG_BATCH_READ_COMMAND(ref _HREGBATCHNOTIFICATION hBatchNotification, out CLUSTER_BATCH_COMMAND pBatchCommand);
	public function int32 PCLUSTER_REG_BATCH_CLOSE_NOTIFICATION(ref _HREGBATCHNOTIFICATION hBatchNotification);
	public function int32 PCLUSTER_REG_CREATE_BATCH_NOTIFY_PORT(HKEY hKey, out _HREGBATCHPORT* phBatchNotifyPort);
	public function int32 PCLUSTER_REG_CLOSE_BATCH_NOTIFY_PORT(ref _HREGBATCHPORT hBatchNotifyPort);
	public function int32 PCLUSTER_REG_GET_BATCH_NOTIFICATION(ref _HREGBATCHPORT hBatchNotify, out _HREGBATCHNOTIFICATION* phBatchNotification);
	public function int32 PCLUSTER_REG_CREATE_READ_BATCH(HKEY hKey, out _HREGREADBATCH* phRegReadBatch);
	public function int32 PCLUSTER_REG_READ_BATCH_ADD_COMMAND(ref _HREGREADBATCH hRegReadBatch, PWSTR wzSubkeyName, PWSTR wzValueName);
	public function int32 PCLUSTER_REG_CLOSE_READ_BATCH(ref _HREGREADBATCH hRegReadBatch, out _HREGREADBATCHREPLY* phRegReadBatchReply);
	public function int32 PCLUSTER_REG_CLOSE_READ_BATCH_EX(ref _HREGREADBATCH hRegReadBatch, uint32 flags, out _HREGREADBATCHREPLY* phRegReadBatchReply);
	public function int32 PCLUSTER_REG_READ_BATCH_REPLY_NEXT_COMMAND(ref _HREGREADBATCHREPLY hRegReadBatchReply, out CLUSTER_READ_BATCH_COMMAND pBatchCommand);
	public function int32 PCLUSTER_REG_CLOSE_READ_BATCH_REPLY(ref _HREGREADBATCHREPLY hRegReadBatchReply);
	public function uint32 PCLUSTER_SET_ACCOUNT_ACCESS(ref _HCLUSTER hCluster, PWSTR szAccountSID, uint32 dwAccess, uint32 dwControlType);
	public function BOOL PCLUSTER_SETUP_PROGRESS_CALLBACK(void* pvCallbackArg, CLUSTER_SETUP_PHASE eSetupPhase, CLUSTER_SETUP_PHASE_TYPE ePhaseType, CLUSTER_SETUP_PHASE_SEVERITY ePhaseSeverity, uint32 dwPercentComplete, PWSTR lpszObjectName, uint32 dwStatus);
	public function _HCLUSTER* PCLUSAPI_CREATE_CLUSTER(ref CREATE_CLUSTER_CONFIG pConfig, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function _HCLUSTER* PCLUSAPI_CREATE_CLUSTER_CNOLESS(ref CREATE_CLUSTER_CONFIG pConfig, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function uint32 PCLUSAPI_CREATE_CLUSTER_NAME_ACCOUNT(ref _HCLUSTER hCluster, ref CREATE_CLUSTER_NAME_ACCOUNT pConfig, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function uint32 PCLUSAPI_REMOVE_CLUSTER_NAME_ACCOUNT(ref _HCLUSTER hCluster);
	public function _HNODE* PCLUSAPI_ADD_CLUSTER_NODE(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function _HNODE* PCLUSAPI_ADD_CLUSTER_NODE_EX(ref _HCLUSTER hCluster, PWSTR lpszNodeName, uint32 dwFlags, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	public function uint32 PCLUSAPI_DESTROY_CLUSTER(ref _HCLUSTER hCluster, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg, BOOL fdeleteVirtualComputerObjects);
	public function uint32 PSET_RESOURCE_STATUS_ROUTINE_EX(int ResourceHandle, out RESOURCE_STATUS_EX ResourceStatus);
	public function uint32 PSET_RESOURCE_STATUS_ROUTINE(int ResourceHandle, out RESOURCE_STATUS ResourceStatus);
	public function void PQUORUM_RESOURCE_LOST(int Resource);
	public function void PLOG_EVENT_ROUTINE(int ResourceHandle, LOG_LEVEL LogLevel, PWSTR FormatString);
	public function void* POPEN_ROUTINE(PWSTR ResourceName, HKEY ResourceKey, int ResourceHandle);
	public function void PCLOSE_ROUTINE(void* Resource);
	public function uint32 PONLINE_ROUTINE(void* Resource, out HANDLE EventHandle);
	public function uint32 POFFLINE_ROUTINE(void* Resource);
	public function void PTERMINATE_ROUTINE(void* Resource);
	public function BOOL PIS_ALIVE_ROUTINE(void* Resource);
	public function BOOL PLOOKS_ALIVE_ROUTINE(void* Resource);
	public function uint32 PARBITRATE_ROUTINE(void* Resource, PQUORUM_RESOURCE_LOST LostQuorumResource);
	public function uint32 PRELEASE_ROUTINE(void* Resource);
	public function uint32 PRESOURCE_CONTROL_ROUTINE(void* Resource, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned);
	public function uint32 PRESOURCE_TYPE_CONTROL_ROUTINE(PWSTR ResourceTypeName, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned);
	public function void* POPEN_V2_ROUTINE(PWSTR ResourceName, HKEY ResourceKey, int ResourceHandle, uint32 OpenFlags);
	public function uint32 PONLINE_V2_ROUTINE(void* Resource, out HANDLE EventHandle, uint32 OnlineFlags, uint8* InBuffer, uint32 InBufferSize, uint32 Reserved);
	public function uint32 POFFLINE_V2_ROUTINE(void* Resource, PWSTR DestinationNodeName, uint32 OfflineFlags, uint8* InBuffer, uint32 InBufferSize, uint32 Reserved);
	public function uint32 PCANCEL_ROUTINE(void* Resource, uint32 CancelFlags_RESERVED);
	public function uint32 PBEGIN_RESCALL_ROUTINE(void* Resource, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned, int64 context, out BOOL ReturnedAsynchronously);
	public function uint32 PBEGIN_RESTYPECALL_ROUTINE(PWSTR ResourceTypeName, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned, int64 context, out BOOL ReturnedAsynchronously);
	public function uint32 PBEGIN_RESCALL_AS_USER_ROUTINE(void* Resource, HANDLE TokenHandle, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned, int64 context, out BOOL ReturnedAsynchronously);
	public function uint32 PBEGIN_RESTYPECALL_AS_USER_ROUTINE(PWSTR ResourceTypeName, HANDLE TokenHandle, uint32 ControlCode, void* InBuffer, uint32 InBufferSize, void* OutBuffer, uint32 OutBufferSize, out uint32 BytesReturned, int64 context, out BOOL ReturnedAsynchronously);
	public function uint32 PSTARTUP_ROUTINE(PWSTR ResourceType, uint32 MinVersionSupported, uint32 MaxVersionSupported, PSET_RESOURCE_STATUS_ROUTINE SetResourceStatus, PLOG_EVENT_ROUTINE LogEvent, out CLRES_FUNCTION_TABLE* FunctionTable);
	public function uint32 PSET_RESOURCE_LOCKED_MODE_ROUTINE(int ResourceHandle, BOOL LockedModeEnabled, uint32 LockedModeReason);
	public function uint32 PSIGNAL_FAILURE_ROUTINE(int ResourceHandle, FAILURE_TYPE FailureType, uint32 ApplicationSpecificErrorCode);
	public function uint32 PSET_RESOURCE_INMEMORY_NODELOCAL_PROPERTIES_ROUTINE(int ResourceHandle, ref uint8 propertyListBuffer, uint32 propertyListBufferSize);
	public function uint32 PEND_CONTROL_CALL(int64 context, uint32 status);
	public function uint32 PEND_TYPE_CONTROL_CALL(int64 context, uint32 status);
	public function uint32 PEXTEND_RES_CONTROL_CALL(int64 context, uint32 newTimeoutInMs);
	public function uint32 PEXTEND_RES_TYPE_CONTROL_CALL(int64 context, uint32 newTimeoutInMs);
	public function uint32 PRAISE_RES_TYPE_NOTIFICATION(PWSTR ResourceType, in uint8 pPayload, uint32 payloadSize);
	public function uint32 PCHANGE_RESOURCE_PROCESS_FOR_DUMPS(int resource, PWSTR processName, uint32 processId, BOOL isAdd);
	public function uint32 PCHANGE_RES_TYPE_PROCESS_FOR_DUMPS(PWSTR resourceTypeName, PWSTR processName, uint32 processId, BOOL isAdd);
	public function uint32 PSET_INTERNAL_STATE(int param0, CLUSTER_RESOURCE_APPLICATION_STATE stateType, BOOL active);
	public function uint32 PSET_RESOURCE_LOCKED_MODE_EX_ROUTINE(int ResourceHandle, BOOL LockedModeEnabled, uint32 LockedModeReason, uint32 LockedModeFlags);
	public function uint32 PREQUEST_DUMP_ROUTINE(int ResourceHandle, BOOL DumpDueToCallInProgress, uint32 DumpDelayInMs);
	public function uint32 PSTARTUP_EX_ROUTINE(PWSTR ResourceType, uint32 MinVersionSupported, uint32 MaxVersionSupported, out CLRES_CALLBACK_FUNCTION_TABLE MonitorCallbackFunctions, out CLRES_FUNCTION_TABLE* ResourceDllInterfaceFunctions);
	public function uint32 PRESUTIL_START_RESOURCE_SERVICE(PWSTR pszServiceName, out int phServiceHandle);
	public function uint32 PRESUTIL_VERIFY_RESOURCE_SERVICE(PWSTR pszServiceName);
	public function uint32 PRESUTIL_STOP_RESOURCE_SERVICE(PWSTR pszServiceName);
	public function uint32 PRESUTIL_VERIFY_SERVICE(SC_HANDLE hServiceHandle);
	public function uint32 PRESUTIL_STOP_SERVICE(SC_HANDLE hServiceHandle);
	public function uint32 PRESUTIL_CREATE_DIRECTORY_TREE(PWSTR pszPath);
	public function BOOL PRESUTIL_IS_PATH_VALID(PWSTR pszPath);
	public function uint32 PRESUTIL_ENUM_PROPERTIES(in RESUTIL_PROPERTY_ITEM pPropertyTable, PWSTR pszOutProperties, uint32 cbOutPropertiesSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_ENUM_PRIVATE_PROPERTIES(HKEY hkeyClusterKey, PWSTR pszOutProperties, uint32 cbOutPropertiesSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_GET_PROPERTIES(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_GET_ALL_PROPERTIES(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_GET_PRIVATE_PROPERTIES(HKEY hkeyClusterKey, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_GET_PROPERTY_SIZE(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTableItem, out uint32 pcbOutPropertyListSize, out uint32 pnPropertyCount);
	public function uint32 PRESUTIL_GET_PROPERTY(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTableItem, void** pOutPropertyItem, out uint32 pcbOutPropertyItemSize);
	public function uint32 PRESUTIL_VERIFY_PROPERTY_TABLE(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, uint8* pOutParams);
	public function uint32 PRESUTIL_SET_PROPERTY_TABLE(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, uint8* pOutParams);
	public function uint32 PRESUTIL_SET_PROPERTY_TABLE_EX(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, BOOL bForceWrite, out uint8 pOutParams);
	public function uint32 PRESUTIL_SET_PROPERTY_PARAMETER_BLOCK(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, in uint8 pInParams, void* pInPropertyList, uint32 cbInPropertyListSize, out uint8 pOutParams);
	public function uint32 PRESUTIL_SET_PROPERTY_PARAMETER_BLOCK_EX(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, in uint8 pInParams, void* pInPropertyList, uint32 cbInPropertyListSize, BOOL bForceWrite, out uint8 pOutParams);
	public function uint32 PRESUTIL_SET_UNKNOWN_PROPERTIES(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pInPropertyList, uint32 cbInPropertyListSize);
	public function uint32 PRESUTIL_GET_PROPERTIES_TO_PARAMETER_BLOCK(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, out uint8 pOutParams, BOOL bCheckForRequiredProperties, out PWSTR pszNameOfPropInError);
	public function uint32 PRESUTIL_PROPERTY_LIST_FROM_PARAMETER_BLOCK(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, out uint32 pcbOutPropertyListSize, in uint8 pInParams, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_DUP_PARAMETER_BLOCK(out uint8 pOutParams, in uint8 pInParams, in RESUTIL_PROPERTY_ITEM pPropertyTable);
	public function void PRESUTIL_FREE_PARAMETER_BLOCK(out uint8 pOutParams, in uint8 pInParams, in RESUTIL_PROPERTY_ITEM pPropertyTable);
	public function uint32 PRESUTIL_ADD_UNKNOWN_PROPERTIES(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 pcbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_SET_PRIVATE_PROPERTY_LIST(HKEY hkeyClusterKey, void* pInPropertyList, uint32 cbInPropertyListSize);
	public function uint32 PRESUTIL_VERIFY_PRIVATE_PROPERTY_LIST(void* pInPropertyList, uint32 cbInPropertyListSize);
	public function PWSTR PRESUTIL_DUP_STRING(PWSTR pszInString);
	public function uint32 PRESUTIL_GET_BINARY_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, uint8** ppbOutValue, out uint32 pcbOutValueSize);
	public function PWSTR PRESUTIL_GET_SZ_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName);
	public function PWSTR PRESUTIL_GET_EXPAND_SZ_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, BOOL bExpand);
	public function uint32 PRESUTIL_GET_DWORD_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, out uint32 pdwOutValue, uint32 dwDefaultValue);
	public function uint32 PRESUTIL_GET_QWORD_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, out uint64 pqwOutValue, uint64 qwDefaultValue);
	public function uint32 PRESUTIL_SET_BINARY_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, in uint8 pbNewValue, uint32 cbNewValueSize, uint8** ppbOutValue, out uint32 pcbOutValueSize);
	public function uint32 PRESUTIL_SET_SZ_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, PWSTR* ppszOutString);
	public function uint32 PRESUTIL_SET_EXPAND_SZ_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, PWSTR* ppszOutString);
	public function uint32 PRESUTIL_SET_MULTI_SZ_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, uint32 cbNewValueSize, PWSTR* ppszOutValue, uint32* pcbOutValueSize);
	public function uint32 PRESUTIL_SET_DWORD_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, uint32 dwNewValue, out uint32 pdwOutValue);
	public function uint32 PRESUTIL_SET_QWORD_VALUE(HKEY hkeyClusterKey, PWSTR pszValueName, uint64 qwNewValue, uint64* pqwOutValue);
	public function uint32 PRESUTIL_GET_BINARY_PROPERTY(out uint8* ppbOutValue, out uint32 pcbOutValueSize, in CLUSPROP_BINARY pValueStruct, uint8* pbOldValue, uint32 cbOldValueSize, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function uint32 PRESUTIL_GET_SZ_PROPERTY(out PWSTR ppszOutValue, in CLUSPROP_SZ pValueStruct, PWSTR pszOldValue, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function uint32 PRESUTIL_GET_MULTI_SZ_PROPERTY(out PWSTR ppszOutValue, out uint32 pcbOutValueSize, in CLUSPROP_SZ pValueStruct, PWSTR pszOldValue, uint32 cbOldValueSize, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function uint32 PRESUTIL_GET_DWORD_PROPERTY(out uint32 pdwOutValue, in CLUSPROP_DWORD pValueStruct, uint32 dwOldValue, uint32 dwMinimum, uint32 dwMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function uint32 PRESUTIL_GET_LONG_PROPERTY(out int32 plOutValue, in CLUSPROP_LONG pValueStruct, int32 lOldValue, int32 lMinimum, int32 lMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function uint32 PRESUTIL_GET_FILETIME_PROPERTY(out FILETIME pftOutValue, in CLUSPROP_FILETIME pValueStruct, FILETIME ftOldValue, FILETIME ftMinimum, FILETIME ftMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	public function void* PRESUTIL_GET_ENVIRONMENT_WITH_NET_NAME(ref _HRESOURCE hResource);
	public function uint32 PRESUTIL_FREE_ENVIRONMENT(void* lpEnvironment);
	public function PWSTR PRESUTIL_EXPAND_ENVIRONMENT_STRINGS(PWSTR pszSrc);
	public function uint32 PRESUTIL_SET_RESOURCE_SERVICE_ENVIRONMENT(PWSTR pszServiceName, out _HRESOURCE hResource, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	public function uint32 PRESUTIL_REMOVE_RESOURCE_SERVICE_ENVIRONMENT(PWSTR pszServiceName, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	public function uint32 PRESUTIL_SET_RESOURCE_SERVICE_START_PARAMETERS(PWSTR pszServiceName, SC_HANDLE schSCMHandle, out int phService, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	public function uint32 PRESUTIL_FIND_SZ_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	public function uint32 PRESUTIL_FIND_EXPAND_SZ_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	public function uint32 PRESUTIL_FIND_EXPANDED_SZ_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	public function uint32 PRESUTIL_FIND_DWORD_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out uint32 pdwPropertyValue);
	public function uint32 PRESUTIL_FIND_BINARY_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, uint8** pbPropertyValue, uint32* pcbPropertyValueSize);
	public function uint32 PRESUTIL_FIND_MULTI_SZ_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out PWSTR pszPropertyValue, out uint32 pcbPropertyValueSize);
	public function uint32 PRESUTIL_FIND_LONG_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out int32 plPropertyValue);
	public function uint32 PRESUTIL_FIND_ULARGEINTEGER_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out uint64 plPropertyValue);
	public function uint32 PRESUTIL_FIND_FILETIME_PROPERTY(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out FILETIME pftPropertyValue);
	public function uint32 PWORKER_START_ROUTINE(out CLUS_WORKER pWorker, void* lpThreadParameter);
	public function uint32 PCLUSAPI_CLUS_WORKER_CREATE(out CLUS_WORKER lpWorker, PWORKER_START_ROUTINE lpStartAddress, void* lpParameter);
	public function BOOL PCLUSAPIClusWorkerCheckTerminate(out CLUS_WORKER lpWorker);
	public function void PCLUSAPI_CLUS_WORKER_TERMINATE(ref CLUS_WORKER lpWorker);
	public function uint32 LPRESOURCE_CALLBACK(out _HRESOURCE param0, out _HRESOURCE param1, void* param2);
	public function uint32 LPRESOURCE_CALLBACK_EX(out _HCLUSTER param0, out _HRESOURCE param1, out _HRESOURCE param2, void* param3);
	public function uint32 LPGROUP_CALLBACK_EX(out _HCLUSTER param0, out _HGROUP param1, out _HGROUP param2, void* param3);
	public function uint32 LPNODE_CALLBACK(out _HCLUSTER param0, out _HNODE param1, CLUSTER_NODE_STATE param2, void* param3);
	public function BOOL PRESUTIL_RESOURCES_EQUAL(out _HRESOURCE hSelf, out _HRESOURCE hResource);
	public function BOOL PRESUTIL_RESOURCE_TYPES_EQUAL(PWSTR lpszResourceTypeName, out _HRESOURCE hResource);
	public function BOOL PRESUTIL_IS_RESOURCE_CLASS_EQUAL(out CLUS_RESOURCE_CLASS_INFO prci, out _HRESOURCE hResource);
	public function uint32 PRESUTIL_ENUM_RESOURCES(out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK pResCallBack, void* pParameter);
	public function uint32 PRESUTIL_ENUM_RESOURCES_EX(out _HCLUSTER hCluster, out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK_EX pResCallBack, void* pParameter);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY(HANDLE hSelf, PWSTR lpszResourceType);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY_BY_NAME(out _HCLUSTER hCluster, HANDLE hSelf, PWSTR lpszResourceType, BOOL bRecurse);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY_BY_CLASS(out _HCLUSTER hCluster, HANDLE hSelf, out CLUS_RESOURCE_CLASS_INFO prci, BOOL bRecurse);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_NAME_DEPENDENCY(PWSTR lpszResourceName, PWSTR lpszResourceType);
	public function uint32 PRESUTIL_GET_RESOURCE_DEPENDENTIP_ADDRESS_PROPS(ref _HRESOURCE hResource, char16* pszAddress, out uint32 pcchAddress, char16* pszSubnetMask, out uint32 pcchSubnetMask, char16* pszNetwork, out uint32 pcchNetwork);
	public function uint32 PRESUTIL_FIND_DEPENDENT_DISK_RESOURCE_DRIVE_LETTER(ref _HCLUSTER hCluster, ref _HRESOURCE hResource, char16* pszDriveLetter, out uint32 pcchDriveLetter);
	public function uint32 PRESUTIL_TERMINATE_SERVICE_PROCESS_FROM_RES_DLL(uint32 dwServicePid, BOOL bOffline, out uint32 pdwResourceState, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	public function uint32 PRESUTIL_GET_PROPERTY_FORMATS(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyFormatList, uint32 cbPropertyFormatListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	public function uint32 PRESUTIL_GET_CORE_CLUSTER_RESOURCES(ref _HCLUSTER hCluster, out _HRESOURCE* phClusterNameResource, out _HRESOURCE* phClusterIPAddressResource, out _HRESOURCE* phClusterQuorumResource);
	public function uint32 PRESUTIL_GET_RESOURCE_NAME(ref _HRESOURCE hResource, char16* pszResourceName, out uint32 pcchResourceNameInOut);
	public function BOOL PCLUSTER_IS_PATH_ON_SHARED_VOLUME(PWSTR lpszPathName);
	public function BOOL PCLUSTER_GET_VOLUME_PATH_NAME(PWSTR lpszFileName, PWSTR lpszVolumePathName, uint32 cchBufferLength);
	public function BOOL PCLUSTER_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT(PWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, uint32 cchBufferLength);
	public function uint32 PCLUSTER_PREPARE_SHARED_VOLUME_FOR_BACKUP(PWSTR lpszFileName, PWSTR lpszVolumePathName, out uint32 lpcchVolumePathName, PWSTR lpszVolumeName, out uint32 lpcchVolumeName);
	public function uint32 PCLUSTER_CLEAR_BACKUP_STATE_FOR_SHARED_VOLUME(PWSTR lpszVolumePathName);
	public function uint32 PRESUTIL_SET_RESOURCE_SERVICE_START_PARAMETERS_EX(PWSTR pszServiceName, SC_HANDLE schSCMHandle, out int phService, uint32 dwDesiredAccess, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	public function uint32 PRESUTIL_ENUM_RESOURCES_EX2(out _HCLUSTER hCluster, out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK_EX pResCallBack, void* pParameter, uint32 dwDesiredAccess);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY_EX(HANDLE hSelf, PWSTR lpszResourceType, uint32 dwDesiredAccess);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY_BY_NAME_EX(out _HCLUSTER hCluster, HANDLE hSelf, PWSTR lpszResourceType, BOOL bRecurse, uint32 dwDesiredAccess);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_DEPENDENCY_BY_CLASS_EX(out _HCLUSTER hCluster, HANDLE hSelf, out CLUS_RESOURCE_CLASS_INFO prci, BOOL bRecurse, uint32 dwDesiredAccess);
	public function _HRESOURCE* PRESUTIL_GET_RESOURCE_NAME_DEPENDENCY_EX(PWSTR lpszResourceName, PWSTR lpszResourceType, uint32 dwDesiredAccess);
	public function uint32 PRESUTIL_GET_CORE_CLUSTER_RESOURCES_EX(ref _HCLUSTER hClusterIn, out _HRESOURCE* phClusterNameResourceOut, out _HRESOURCE* phClusterIPAddressResourceOut, out _HRESOURCE* phClusterQuorumResourceOut, uint32 dwDesiredAccess);
	public function _HCLUSCRYPTPROVIDER* POPEN_CLUSTER_CRYPT_PROVIDER(PWSTR lpszResource, ref int8 lpszProvider, uint32 dwType, uint32 dwFlags);
	public function _HCLUSCRYPTPROVIDER* POPEN_CLUSTER_CRYPT_PROVIDEREX(PWSTR lpszResource, PWSTR lpszKeyname, ref int8 lpszProvider, uint32 dwType, uint32 dwFlags);
	public function uint32 PCLOSE_CLUSTER_CRYPT_PROVIDER(ref _HCLUSCRYPTPROVIDER hClusCryptProvider);
	public function uint32 PCLUSTER_ENCRYPT(ref _HCLUSCRYPTPROVIDER hClusCryptProvider, uint8* pData, uint32 cbData, out uint8* ppData, out uint32 pcbData);
	public function uint32 PCLUSTER_DECRYPT(ref _HCLUSCRYPTPROVIDER hClusCryptProvider, ref uint8 pCryptInput, uint32 cbCryptInput, out uint8* ppCryptOutput, out uint32 pcbCryptOutput);
	public function uint32 PFREE_CLUSTER_CRYPT(void* pCryptInfo);
	public function uint32 PRES_UTIL_VERIFY_SHUTDOWN_SAFE(uint32 flags, uint32 reason, out uint32 pResult);
	public function uint32 PREGISTER_APPINSTANCE(HANDLE ProcessHandle, ref Guid AppInstanceId, BOOL ChildrenInheritAppInstance);
	public function uint32 PREGISTER_APPINSTANCE_VERSION(ref Guid AppInstanceId, uint64 InstanceVersionHigh, uint64 InstanceVersionLow);
	public function uint32 PQUERY_APPINSTANCE_VERSION(ref Guid AppInstanceId, out uint64 InstanceVersionHigh, out uint64 InstanceVersionLow, out NTSTATUS VersionStatus);
	public function uint32 PRESET_ALL_APPINSTANCE_VERSIONS();
	public function uint32 SET_APP_INSTANCE_CSV_FLAGS(HANDLE ProcessHandle, uint32 Mask, uint32 Flags);
	#endregion
	
	#region Structs
	[CRepr]
	public struct _HCLUSTER {}
	[CRepr]
	public struct _HNODE {}
	[CRepr]
	public struct _HRESOURCE {}
	[CRepr]
	public struct _HGROUP {}
	[CRepr]
	public struct _HNETWORK {}
	[CRepr]
	public struct _HNETINTERFACE {}
	[CRepr]
	public struct _HCHANGE {}
	[CRepr]
	public struct _HCLUSENUM {}
	[CRepr]
	public struct _HGROUPENUM {}
	[CRepr]
	public struct _HRESENUM {}
	[CRepr]
	public struct _HNETWORKENUM {}
	[CRepr]
	public struct _HNODEENUM {}
	[CRepr]
	public struct _HNETINTERFACEENUM {}
	[CRepr]
	public struct _HRESTYPEENUM {}
	[CRepr]
	public struct _HREGBATCH {}
	[CRepr]
	public struct _HREGBATCHPORT {}
	[CRepr]
	public struct _HREGBATCHNOTIFICATION {}
	[CRepr]
	public struct _HREGREADBATCH {}
	[CRepr]
	public struct _HREGREADBATCHREPLY {}
	[CRepr]
	public struct _HNODEENUMEX {}
	[CRepr]
	public struct _HCLUSENUMEX {}
	[CRepr]
	public struct _HGROUPENUMEX {}
	[CRepr]
	public struct _HRESENUMEX {}
	[CRepr]
	public struct _HGROUPSET {}
	[CRepr]
	public struct _HGROUPSETENUM {}
	[CRepr]
	public struct CLUSTERVERSIONINFO_NT4
	{
		public uint32 dwVersionInfoSize;
		public uint16 MajorVersion;
		public uint16 MinorVersion;
		public uint16 BuildNumber;
		public char16[64] szVendorId;
		public char16[64] szCSDVersion;
	}
	[CRepr]
	public struct CLUSTERVERSIONINFO
	{
		public uint32 dwVersionInfoSize;
		public uint16 MajorVersion;
		public uint16 MinorVersion;
		public uint16 BuildNumber;
		public char16[64] szVendorId;
		public char16[64] szCSDVersion;
		public uint32 dwClusterHighestVersion;
		public uint32 dwClusterLowestVersion;
		public uint32 dwFlags;
		public uint32 dwReserved;
	}
	[CRepr]
	public struct CLUS_STARTING_PARAMS
	{
		public uint32 dwSize;
		public BOOL bForm;
		public BOOL bFirst;
	}
	[CRepr]
	public struct CLUSCTL_RESOURCE_STATE_CHANGE_REASON_STRUCT
	{
		public uint32 dwSize;
		public uint32 dwVersion;
		public CLUSTER_RESOURCE_STATE_CHANGE_REASON eReason;
	}
	[CRepr]
	public struct CLUSTER_BATCH_COMMAND
	{
		public CLUSTER_REG_COMMAND Command;
		public uint32 dwOptions;
		public PWSTR wzName;
		public uint8* lpData;
		public uint32 cbData;
	}
	[CRepr]
	public struct CLUSTER_READ_BATCH_COMMAND
	{
		public CLUSTER_REG_COMMAND Command;
		public uint32 dwOptions;
		public PWSTR wzSubkeyName;
		public PWSTR wzValueName;
		public uint8* lpData;
		public uint32 cbData;
	}
	[CRepr]
	public struct CLUSTER_ENUM_ITEM
	{
		public uint32 dwVersion;
		public uint32 dwType;
		public uint32 cbId;
		public PWSTR lpszId;
		public uint32 cbName;
		public PWSTR lpszName;
	}
	[CRepr]
	public struct CLUSTER_CREATE_GROUP_INFO
	{
		public uint32 dwVersion;
		public CLUSGROUP_TYPE groupType;
	}
	[CRepr]
	public struct CLUSTER_VALIDATE_PATH
	{
		public char16[1] szPath_array;
		
		public char16* szPath mut => &szPath_array[0];
	}
	[CRepr]
	public struct CLUSTER_VALIDATE_DIRECTORY
	{
		public char16[1] szPath_array;
		
		public char16* szPath mut => &szPath_array[0];
	}
	[CRepr]
	public struct CLUSTER_VALIDATE_NETNAME
	{
		public char16[1] szNetworkName_array;
		
		public char16* szNetworkName mut => &szNetworkName_array[0];
	}
	[CRepr]
	public struct CLUSTER_VALIDATE_CSV_FILENAME
	{
		public char16[1] szFileName_array;
		
		public char16* szFileName mut => &szFileName_array[0];
	}
	[CRepr]
	public struct CLUSTER_SET_PASSWORD_STATUS
	{
		public uint32 NodeId;
		public BOOLEAN SetAttempted;
		public uint32 ReturnStatus;
	}
	[CRepr]
	public struct CLUSTER_IP_ENTRY
	{
		public PWSTR lpszIpAddress;
		public uint32 dwPrefixLength;
	}
	[CRepr]
	public struct CREATE_CLUSTER_CONFIG
	{
		public uint32 dwVersion;
		public PWSTR lpszClusterName;
		public uint32 cNodes;
		public PWSTR* ppszNodeNames;
		public uint32 cIpEntries;
		public CLUSTER_IP_ENTRY* pIpEntries;
		public BOOLEAN fEmptyCluster;
		public CLUSTER_MGMT_POINT_TYPE managementPointType;
		public CLUSTER_MGMT_POINT_RESTYPE managementPointResType;
	}
	[CRepr]
	public struct CREATE_CLUSTER_NAME_ACCOUNT
	{
		public uint32 dwVersion;
		public PWSTR lpszClusterName;
		public uint32 dwFlags;
		public PWSTR pszUserName;
		public PWSTR pszPassword;
		public PWSTR pszDomain;
		public CLUSTER_MGMT_POINT_TYPE managementPointType;
		public CLUSTER_MGMT_POINT_RESTYPE managementPointResType;
		public BOOLEAN bUpgradeVCOs;
	}
	[CRepr]
	public struct NOTIFY_FILTER_AND_TYPE
	{
		public uint32 dwObjectType;
		public int64 FilterFlags;
	}
	[CRepr]
	public struct CLUSTER_MEMBERSHIP_INFO
	{
		public BOOL HasQuorum;
		public uint32 UpnodesSize;
		public uint8[1] Upnodes_array;
		
		public uint8* Upnodes mut => &Upnodes_array[0];
	}
	[CRepr]
	public struct CLUSTER_AVAILABILITY_SET_CONFIG
	{
		public uint32 dwVersion;
		public uint32 dwUpdateDomains;
		public uint32 dwFaultDomains;
		public BOOL bReserveSpareNode;
	}
	[CRepr]
	public struct CLUSTER_GROUP_ENUM_ITEM
	{
		public uint32 dwVersion;
		public uint32 cbId;
		public PWSTR lpszId;
		public uint32 cbName;
		public PWSTR lpszName;
		public CLUSTER_GROUP_STATE state;
		public uint32 cbOwnerNode;
		public PWSTR lpszOwnerNode;
		public uint32 dwFlags;
		public uint32 cbProperties;
		public void* pProperties;
		public uint32 cbRoProperties;
		public void* pRoProperties;
	}
	[CRepr]
	public struct CLUSTER_RESOURCE_ENUM_ITEM
	{
		public uint32 dwVersion;
		public uint32 cbId;
		public PWSTR lpszId;
		public uint32 cbName;
		public PWSTR lpszName;
		public uint32 cbOwnerGroupName;
		public PWSTR lpszOwnerGroupName;
		public uint32 cbOwnerGroupId;
		public PWSTR lpszOwnerGroupId;
		public uint32 cbProperties;
		public void* pProperties;
		public uint32 cbRoProperties;
		public void* pRoProperties;
	}
	[CRepr]
	public struct GROUP_FAILURE_INFO
	{
		public uint32 dwFailoverAttemptsRemaining;
		public uint32 dwFailoverPeriodRemaining;
	}
	[CRepr]
	public struct GROUP_FAILURE_INFO_BUFFER
	{
		public uint32 dwVersion;
		public GROUP_FAILURE_INFO Info;
	}
	[CRepr]
	public struct RESOURCE_FAILURE_INFO
	{
		public uint32 dwRestartAttemptsRemaining;
		public uint32 dwRestartPeriodRemaining;
	}
	[CRepr]
	public struct RESOURCE_FAILURE_INFO_BUFFER
	{
		public uint32 dwVersion;
		public RESOURCE_FAILURE_INFO Info;
	}
	[CRepr]
	public struct RESOURCE_TERMINAL_FAILURE_INFO_BUFFER
	{
		public BOOL isTerminalFailure;
		public uint32 restartPeriodRemaining;
	}
	[CRepr, Union]
	public struct CLUSPROP_SYNTAX
	{
		public uint32 dw;
		public using _Anonymous_e__Struct Anonymous;
		
		[CRepr]
		public struct _Anonymous_e__Struct
		{
			public uint16 wFormat;
			public uint16 wType;
		}
	}
	[CRepr]
	public struct CLUSPROP_VALUE
	{
		public CLUSPROP_SYNTAX Syntax;
		public uint32 cbLength;
	}
	[CRepr]
	public struct CLUSPROP_BINARY
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5129_C41;
		public uint8[1] rgb_array;
		
		public uint8* rgb mut => &rgb_array[0];
	}
	[CRepr]
	public struct CLUSPROP_WORD
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5139_C39;
		public uint16 w;
	}
	[CRepr]
	public struct CLUSPROP_DWORD
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5149_C40;
		public uint32 dw;
	}
	[CRepr]
	public struct CLUSPROP_LONG
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5159_C39;
		public int32 l;
	}
	[CRepr]
	public struct CLUSPROP_SZ
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5169_C37;
		public char16[1] sz_array;
		
		public char16* sz mut => &sz_array[0];
	}
	[CRepr]
	public struct CLUSPROP_ULARGE_INTEGER
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5186_C14;
		public ULARGE_INTEGER li;
	}
	[CRepr]
	public struct CLUSPROP_LARGE_INTEGER
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5199_C14;
		public LARGE_INTEGER li;
	}
	[CRepr]
	public struct CLUSPROP_SECURITY_DESCRIPTOR
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5211_C54;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public SECURITY_DESCRIPTOR_RELATIVE sd;
			public uint8[1] rgbSecurityDescriptor_array;
			
			public uint8* rgbSecurityDescriptor mut => &rgbSecurityDescriptor_array[0];
		}
	}
	[CRepr]
	public struct CLUSPROP_FILETIME
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5225_C14;
		public FILETIME ft;
	}
	[CRepr]
	public struct CLUS_RESOURCE_CLASS_INFO
	{
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public using _Anonymous_e__Struct Anonymous;
			public ULARGE_INTEGER li;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public using _Anonymous_e__Union Anonymous;
				public uint32 SubClass;
				
				[CRepr, Union]
				public struct _Anonymous_e__Union
				{
					public uint32 dw;
					public CLUSTER_RESOURCE_CLASS rc;
				}
			}
		}
	}
	[CRepr]
	public struct CLUSPROP_RESOURCE_CLASS
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5250_C14;
		public CLUSTER_RESOURCE_CLASS rc;
	}
	[CRepr]
	public struct CLUSPROP_RESOURCE_CLASS_INFO
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5261_C14;
		public CLUS_RESOURCE_CLASS_INFO __AnonymousBase_clusapi_L5262_C14;
	}
	[CRepr, Union]
	public struct CLUSPROP_REQUIRED_DEPENDENCY
	{
		public CLUSPROP_VALUE Value;
		public CLUSPROP_RESOURCE_CLASS ResClass;
		public CLUSPROP_SZ ResTypeName;
	}
	[CRepr]
	public struct CLUS_FORCE_QUORUM_INFO
	{
		public uint32 dwSize;
		public uint32 dwNodeBitMask;
		public uint32 dwMaxNumberofNodes;
		public char16[1] multiszNodeList_array;
		
		public char16* multiszNodeList mut => &multiszNodeList_array[0];
	}
	[CRepr]
	public struct CLUS_PARTITION_INFO
	{
		public uint32 dwFlags;
		public char16[260] szDeviceName;
		public char16[260] szVolumeLabel;
		public uint32 dwSerialNumber;
		public uint32 rgdwMaximumComponentLength;
		public uint32 dwFileSystemFlags;
		public char16[32] szFileSystem;
	}
	[CRepr]
	public struct CLUS_PARTITION_INFO_EX
	{
		public uint32 dwFlags;
		public char16[260] szDeviceName;
		public char16[260] szVolumeLabel;
		public uint32 dwSerialNumber;
		public uint32 rgdwMaximumComponentLength;
		public uint32 dwFileSystemFlags;
		public char16[32] szFileSystem;
		public ULARGE_INTEGER TotalSizeInBytes;
		public ULARGE_INTEGER FreeSizeInBytes;
		public uint32 DeviceNumber;
		public uint32 PartitionNumber;
		public Guid VolumeGuid;
	}
	[CRepr]
	public struct CLUS_PARTITION_INFO_EX2
	{
		public Guid GptPartitionId;
		public char16[260] szPartitionName;
		public uint32 EncryptionFlags;
	}
	[CRepr]
	public struct CLUS_CSV_VOLUME_INFO
	{
		public ULARGE_INTEGER VolumeOffset;
		public uint32 PartitionNumber;
		public CLUSTER_CSV_VOLUME_FAULT_STATE FaultState;
		public CLUSTER_SHARED_VOLUME_BACKUP_STATE BackupState;
		public char16[260] szVolumeFriendlyName;
		public char16[50] szVolumeName;
	}
	[CRepr]
	public struct CLUS_CSV_VOLUME_NAME
	{
		public LARGE_INTEGER VolumeOffset;
		public char16[260] szVolumeName;
		public char16[263] szRootPath;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_STATE_INFO
	{
		public char16[260] szVolumeName;
		public char16[260] szNodeName;
		public CLUSTER_SHARED_VOLUME_STATE VolumeState;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_STATE_INFO_EX
	{
		public char16[260] szVolumeName;
		public char16[260] szNodeName;
		public CLUSTER_SHARED_VOLUME_STATE VolumeState;
		public char16[260] szVolumeFriendlyName;
		public uint64 RedirectedIOReason;
		public uint64 VolumeRedirectedIOReason;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME
	{
		public CLUSTER_SHARED_VOLUME_RENAME_INPUT_TYPE InputType;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint64 VolumeOffset;
			public char16[260] VolumeId;
			public char16[260] VolumeName;
			public char16[50] VolumeGuid;
		}
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_RENAME_INPUT_NAME
	{
		public char16[260] NewVolumeName;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_RENAME_INPUT_GUID_NAME
	{
		public char16[260] NewVolumeName;
		public char16[50] NewVolumeGuid;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_RENAME_INPUT
	{
		public CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME __AnonymousBase_clusapi_L5464_C14;
		public CLUSTER_SHARED_VOLUME_RENAME_INPUT_NAME __AnonymousBase_clusapi_L5465_C14;
	}
	[CRepr]
	public struct CLUSTER_SHARED_VOLUME_RENAME_GUID_INPUT
	{
		public CLUSTER_SHARED_VOLUME_RENAME_INPUT_VOLUME __AnonymousBase_clusapi_L5475_C14;
		public CLUSTER_SHARED_VOLUME_RENAME_INPUT_GUID_NAME __AnonymousBase_clusapi_L5476_C14;
	}
	[CRepr]
	public struct CLUS_CHKDSK_INFO
	{
		public uint32 PartitionNumber;
		public uint32 ChkdskState;
		public uint32 FileIdCount;
		public uint64[1] FileIdList_array;
		
		public uint64* FileIdList mut => &FileIdList_array[0];
	}
	[CRepr]
	public struct CLUS_DISK_NUMBER_INFO
	{
		public uint32 DiskNumber;
		public uint32 BytesPerSector;
	}
	[CRepr]
	public struct CLUS_SHARED_VOLUME_BACKUP_MODE
	{
		public CLUSTER_SHARED_VOLUME_BACKUP_STATE BackupState;
		public uint32 DelayTimerInSecs;
		public char16[260] VolumeName;
	}
	[CRepr]
	public struct CLUSPROP_PARTITION_INFO
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5507_C14;
		public CLUS_PARTITION_INFO __AnonymousBase_clusapi_L5508_C14;
	}
	[CRepr]
	public struct CLUSPROP_PARTITION_INFO_EX
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5519_C14;
		public CLUS_PARTITION_INFO_EX __AnonymousBase_clusapi_L5520_C14;
	}
	[CRepr]
	public struct CLUSPROP_PARTITION_INFO_EX2
	{
		public CLUSPROP_PARTITION_INFO_EX __AnonymousBase_clusapi_L5533_C14;
		public CLUS_PARTITION_INFO_EX2 __AnonymousBase_clusapi_L5534_C14;
	}
	[CRepr]
	public struct CLUS_FTSET_INFO
	{
		public uint32 dwRootSignature;
		public uint32 dwFtType;
	}
	[CRepr]
	public struct CLUSPROP_FTSET_INFO
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5555_C14;
		public CLUS_FTSET_INFO __AnonymousBase_clusapi_L5556_C14;
	}
	[CRepr]
	public struct CLUS_SCSI_ADDRESS
	{
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public using _Anonymous_e__Struct Anonymous;
			public uint32 dw;
			
			[CRepr]
			public struct _Anonymous_e__Struct
			{
				public uint8 PortNumber;
				public uint8 PathId;
				public uint8 TargetId;
				public uint8 Lun;
			}
		}
	}
	[CRepr]
	public struct CLUSPROP_SCSI_ADDRESS
	{
		public CLUSPROP_VALUE __AnonymousBase_clusapi_L5583_C14;
		public CLUS_SCSI_ADDRESS __AnonymousBase_clusapi_L5584_C14;
	}
	[CRepr]
	public struct CLUS_NETNAME_VS_TOKEN_INFO
	{
		public uint32 ProcessID;
		public uint32 DesiredAccess;
		public BOOL InheritHandle;
	}
	[CRepr]
	public struct CLUS_NETNAME_PWD_INFO
	{
		public uint32 Flags;
		public char16[16] Password;
		public char16[258] CreatingDC;
		public char16[64] ObjectGuid;
	}
	[CRepr]
	public struct CLUS_NETNAME_PWD_INFOEX
	{
		public uint32 Flags;
		public char16[128] Password;
		public char16[258] CreatingDC;
		public char16[64] ObjectGuid;
	}
	[CRepr]
	public struct CLUS_DNN_LEADER_STATUS
	{
		public BOOL IsOnline;
		public BOOL IsFileServerPresent;
	}
	[CRepr]
	public struct CLUS_DNN_SODAFS_CLONE_STATUS
	{
		public uint32 NodeId;
		public CLUSTER_RESOURCE_STATE Status;
	}
	[CRepr]
	public struct CLUS_NETNAME_IP_INFO_ENTRY
	{
		public uint32 NodeId;
		public uint32 AddressSize;
		public uint8[1] Address_array;
		
		public uint8* Address mut => &Address_array[0];
	}
	[CRepr]
	public struct CLUS_NETNAME_IP_INFO_FOR_MULTICHANNEL
	{
		public char16[64] szName;
		public uint32 NumEntries;
		public CLUS_NETNAME_IP_INFO_ENTRY[1] IpInfo_array;
		
		public CLUS_NETNAME_IP_INFO_ENTRY* IpInfo mut => &IpInfo_array[0];
	}
	[CRepr]
	public struct CLUS_MAINTENANCE_MODE_INFO
	{
		public BOOL InMaintenance;
	}
	[CRepr]
	public struct CLUS_CSV_MAINTENANCE_MODE_INFO
	{
		public BOOL InMaintenance;
		public char16[260] VolumeName;
	}
	[CRepr]
	public struct CLUS_MAINTENANCE_MODE_INFOEX
	{
		public BOOL InMaintenance;
		public MAINTENANCE_MODE_TYPE_ENUM MaintainenceModeType;
		public CLUSTER_RESOURCE_STATE InternalState;
		public uint32 Signature;
	}
	[CRepr]
	public struct CLUS_SET_MAINTENANCE_MODE_INPUT
	{
		public BOOL InMaintenance;
		public uint32 ExtraParameterSize;
		public uint8[1] ExtraParameter_array;
		
		public uint8* ExtraParameter mut => &ExtraParameter_array[0];
	}
	[CRepr]
	public struct CLUS_STORAGE_SET_DRIVELETTER
	{
		public uint32 PartitionNumber;
		public uint32 DriveLetterMask;
	}
	[CRepr]
	public struct CLUS_STORAGE_GET_AVAILABLE_DRIVELETTERS
	{
		public uint32 AvailDrivelettersMask;
	}
	[CRepr]
	public struct CLUS_STORAGE_REMAP_DRIVELETTER
	{
		public uint32 CurrentDriveLetterMask;
		public uint32 TargetDriveLetterMask;
	}
	[CRepr]
	public struct CLUS_PROVIDER_STATE_CHANGE_INFO
	{
		public uint32 dwSize;
		public CLUSTER_RESOURCE_STATE resourceState;
		public char16[1] szProviderId_array;
		
		public char16* szProviderId mut => &szProviderId_array[0];
	}
	[CRepr]
	public struct CLUS_CREATE_INFRASTRUCTURE_FILESERVER_INPUT
	{
		public char16[16] FileServerName;
	}
	[CRepr]
	public struct CLUS_CREATE_INFRASTRUCTURE_FILESERVER_OUTPUT
	{
		public char16[260] FileServerName;
	}
	[CRepr]
	public struct CLUSPROP_LIST
	{
		public uint32 nPropertyCount;
		public CLUSPROP_SZ PropertyName;
	}
	[CRepr]
	public struct FILESHARE_CHANGE
	{
		public FILESHARE_CHANGE_ENUM Change;
		public char16[84] ShareName;
	}
	[CRepr]
	public struct FILESHARE_CHANGE_LIST
	{
		public uint32 NumEntries;
		public FILESHARE_CHANGE[1] ChangeEntry_array;
		
		public FILESHARE_CHANGE* ChangeEntry mut => &ChangeEntry_array[0];
	}
	[CRepr]
	public struct CLUSCTL_GROUP_GET_LAST_MOVE_TIME_OUTPUT
	{
		public uint64 GetTickCount64;
		public SYSTEMTIME GetSystemTime;
		public uint32 NodeId;
	}
	[CRepr, Union]
	public struct CLUSPROP_BUFFER_HELPER
	{
		public uint8* pb;
		public uint16* pw;
		public uint32* pdw;
		public int32* pl;
		public PWSTR psz;
		public CLUSPROP_LIST* pList;
		public CLUSPROP_SYNTAX* pSyntax;
		public CLUSPROP_SZ* pName;
		public CLUSPROP_VALUE* pValue;
		public CLUSPROP_BINARY* pBinaryValue;
		public CLUSPROP_WORD* pWordValue;
		public CLUSPROP_DWORD* pDwordValue;
		public CLUSPROP_LONG* pLongValue;
		public CLUSPROP_ULARGE_INTEGER* pULargeIntegerValue;
		public CLUSPROP_LARGE_INTEGER* pLargeIntegerValue;
		public CLUSPROP_SZ* pStringValue;
		public CLUSPROP_SZ* pMultiSzValue;
		public CLUSPROP_SECURITY_DESCRIPTOR* pSecurityDescriptor;
		public CLUSPROP_RESOURCE_CLASS* pResourceClassValue;
		public CLUSPROP_RESOURCE_CLASS_INFO* pResourceClassInfoValue;
		public CLUSPROP_DWORD* pDiskSignatureValue;
		public CLUSPROP_SCSI_ADDRESS* pScsiAddressValue;
		public CLUSPROP_DWORD* pDiskNumberValue;
		public CLUSPROP_PARTITION_INFO* pPartitionInfoValue;
		public CLUSPROP_REQUIRED_DEPENDENCY* pRequiredDependencyValue;
		public CLUSPROP_PARTITION_INFO_EX* pPartitionInfoValueEx;
		public CLUSPROP_PARTITION_INFO_EX2* pPartitionInfoValueEx2;
		public CLUSPROP_FILETIME* pFileTimeValue;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_REPLICATED_PARTITION_INFO
	{
		public uint64 PartitionOffset;
		public uint32 Capabilities;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_REPLICATED_PARTITION_ARRAY
	{
		public uint32 Count;
		public SR_RESOURCE_TYPE_REPLICATED_PARTITION_INFO[1] PartitionArray_array;
		
		public SR_RESOURCE_TYPE_REPLICATED_PARTITION_INFO* PartitionArray mut => &PartitionArray_array[0];
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_QUERY_ELIGIBLE_LOGDISKS
	{
		public Guid DataDiskGuid;
		public BOOLEAN IncludeOfflineDisks;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_QUERY_ELIGIBLE_TARGET_DATADISKS
	{
		public Guid SourceDataDiskGuid;
		public Guid TargetReplicationGroupGuid;
		public BOOLEAN SkipConnectivityCheck;
		public BOOLEAN IncludeOfflineDisks;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_QUERY_ELIGIBLE_SOURCE_DATADISKS
	{
		public Guid DataDiskGuid;
		public BOOLEAN IncludeAvailableStoargeDisks;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_DISK_INFO
	{
		public SR_DISK_REPLICATION_ELIGIBLE Reason;
		public Guid DiskGuid;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_ELIGIBLE_DISKS_RESULT
	{
		public uint16 Count;
		public SR_RESOURCE_TYPE_DISK_INFO[1] DiskInfo_array;
		
		public SR_RESOURCE_TYPE_DISK_INFO* DiskInfo mut => &DiskInfo_array[0];
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_REPLICATED_DISK
	{
		public SR_REPLICATED_DISK_TYPE Type;
		public Guid ClusterDiskResourceGuid;
		public Guid ReplicationGroupId;
		public char16[260] ReplicationGroupName;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_REPLICATED_DISKS_RESULT
	{
		public uint16 Count;
		public SR_RESOURCE_TYPE_REPLICATED_DISK[1] ReplicatedDisks_array;
		
		public SR_RESOURCE_TYPE_REPLICATED_DISK* ReplicatedDisks mut => &ReplicatedDisks_array[0];
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_ADD_REPLICATION_GROUP
	{
		public char16[260] ReplicationGroupName;
		public char16[260] Description;
		public char16[260] LogPath;
		public uint64 MaxLogSizeInBytes;
		public uint16 LogType;
		public uint32 ReplicationMode;
		public uint32 MinimumPartnersInSync;
		public BOOLEAN EnableWriteConsistency;
		public BOOLEAN EnableEncryption;
		public char16[260] CertificateThumbprint;
		public uint32 VolumeNameCount;
		public char16[260] VolumeNames;
	}
	[CRepr]
	public struct SR_RESOURCE_TYPE_ADD_REPLICATION_GROUP_RESULT
	{
		public uint32 Result;
		public char16[260] ErrorString;
	}
	[CRepr]
	public struct CLUSCTL_RESOURCE_TYPE_STORAGE_GET_AVAILABLE_DISKS_EX2_INPUT
	{
		public uint32 dwFlags;
		public Guid guidPoolFilter;
	}
	[CRepr]
	public struct RESOURCE_STATUS
	{
		public CLUSTER_RESOURCE_STATE ResourceState;
		public uint32 CheckPoint;
		public uint32 WaitHint;
		public HANDLE EventHandle;
	}
	[CRepr]
	public struct NodeUtilizationInfoElement
	{
		public uint64 Id;
		public uint64 AvailableMemory;
		public uint64 AvailableMemoryAfterReclamation;
	}
	[CRepr]
	public struct ResourceUtilizationInfoElement
	{
		public uint64 PhysicalNumaId;
		public uint64 CurrentMemory;
	}
	[CRepr]
	public struct GET_OPERATION_CONTEXT_PARAMS
	{
		public uint32 Size;
		public uint32 Version;
		public RESDLL_CONTEXT_OPERATION_TYPE Type;
		public uint32 Priority;
	}
	[CRepr]
	public struct RESOURCE_STATUS_EX
	{
		public CLUSTER_RESOURCE_STATE ResourceState;
		public uint32 CheckPoint;
		public HANDLE EventHandle;
		public uint32 ApplicationSpecificErrorCode;
		public uint32 Flags;
		public uint32 WaitHint;
	}
	[CRepr]
	public struct CLRES_V1_FUNCTIONS
	{
		public POPEN_ROUTINE Open;
		public PCLOSE_ROUTINE Close;
		public PONLINE_ROUTINE Online;
		public POFFLINE_ROUTINE Offline;
		public PTERMINATE_ROUTINE Terminate;
		public PLOOKS_ALIVE_ROUTINE LooksAlive;
		public PIS_ALIVE_ROUTINE IsAlive;
		public PARBITRATE_ROUTINE Arbitrate;
		public PRELEASE_ROUTINE Release;
		public PRESOURCE_CONTROL_ROUTINE ResourceControl;
		public PRESOURCE_TYPE_CONTROL_ROUTINE ResourceTypeControl;
	}
	[CRepr]
	public struct CLRES_V2_FUNCTIONS
	{
		public POPEN_V2_ROUTINE Open;
		public PCLOSE_ROUTINE Close;
		public PONLINE_V2_ROUTINE Online;
		public POFFLINE_V2_ROUTINE Offline;
		public PTERMINATE_ROUTINE Terminate;
		public PLOOKS_ALIVE_ROUTINE LooksAlive;
		public PIS_ALIVE_ROUTINE IsAlive;
		public PARBITRATE_ROUTINE Arbitrate;
		public PRELEASE_ROUTINE Release;
		public PRESOURCE_CONTROL_ROUTINE ResourceControl;
		public PRESOURCE_TYPE_CONTROL_ROUTINE ResourceTypeControl;
		public PCANCEL_ROUTINE Cancel;
	}
	[CRepr]
	public struct CLRES_V3_FUNCTIONS
	{
		public POPEN_V2_ROUTINE Open;
		public PCLOSE_ROUTINE Close;
		public PONLINE_V2_ROUTINE Online;
		public POFFLINE_V2_ROUTINE Offline;
		public PTERMINATE_ROUTINE Terminate;
		public PLOOKS_ALIVE_ROUTINE LooksAlive;
		public PIS_ALIVE_ROUTINE IsAlive;
		public PARBITRATE_ROUTINE Arbitrate;
		public PRELEASE_ROUTINE Release;
		public PBEGIN_RESCALL_ROUTINE BeginResourceControl;
		public PBEGIN_RESTYPECALL_ROUTINE BeginResourceTypeControl;
		public PCANCEL_ROUTINE Cancel;
	}
	[CRepr]
	public struct CLRES_V4_FUNCTIONS
	{
		public POPEN_V2_ROUTINE Open;
		public PCLOSE_ROUTINE Close;
		public PONLINE_V2_ROUTINE Online;
		public POFFLINE_V2_ROUTINE Offline;
		public PTERMINATE_ROUTINE Terminate;
		public PLOOKS_ALIVE_ROUTINE LooksAlive;
		public PIS_ALIVE_ROUTINE IsAlive;
		public PARBITRATE_ROUTINE Arbitrate;
		public PRELEASE_ROUTINE Release;
		public PBEGIN_RESCALL_ROUTINE BeginResourceControl;
		public PBEGIN_RESTYPECALL_ROUTINE BeginResourceTypeControl;
		public PCANCEL_ROUTINE Cancel;
		public PBEGIN_RESCALL_AS_USER_ROUTINE BeginResourceControlAsUser;
		public PBEGIN_RESTYPECALL_AS_USER_ROUTINE BeginResourceTypeControlAsUser;
	}
	[CRepr]
	public struct CLRES_FUNCTION_TABLE
	{
		public uint32 TableSize;
		public uint32 Version;
		public using _Anonymous_e__Union Anonymous;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public CLRES_V1_FUNCTIONS V1Functions;
			public CLRES_V2_FUNCTIONS V2Functions;
			public CLRES_V3_FUNCTIONS V3Functions;
			public CLRES_V4_FUNCTIONS V4Functions;
		}
	}
	[CRepr]
	public struct RESUTIL_LARGEINT_DATA
	{
		public LARGE_INTEGER Default;
		public LARGE_INTEGER Minimum;
		public LARGE_INTEGER Maximum;
	}
	[CRepr]
	public struct RESUTIL_ULARGEINT_DATA
	{
		public ULARGE_INTEGER Default;
		public ULARGE_INTEGER Minimum;
		public ULARGE_INTEGER Maximum;
	}
	[CRepr]
	public struct RESUTIL_FILETIME_DATA
	{
		public FILETIME Default;
		public FILETIME Minimum;
		public FILETIME Maximum;
	}
	[CRepr]
	public struct RESUTIL_PROPERTY_ITEM
	{
		public PWSTR Name;
		public PWSTR KeyName;
		public uint32 Format;
		public using _Anonymous_e__Union Anonymous;
		public uint32 Minimum;
		public uint32 Maximum;
		public uint32 Flags;
		public uint32 Offset;
		
		[CRepr, Union]
		public struct _Anonymous_e__Union
		{
			public uint DefaultPtr;
			public uint32 Default;
			public void* lpDefault;
			public RESUTIL_LARGEINT_DATA* LargeIntData;
			public RESUTIL_ULARGEINT_DATA* ULargeIntData;
			public RESUTIL_FILETIME_DATA* FileTimeData;
		}
	}
	[CRepr]
	public struct CLRES_CALLBACK_FUNCTION_TABLE
	{
		public PLOG_EVENT_ROUTINE LogEvent;
		public PSET_RESOURCE_STATUS_ROUTINE_EX SetResourceStatusEx;
		public PSET_RESOURCE_LOCKED_MODE_ROUTINE SetResourceLockedMode;
		public PSIGNAL_FAILURE_ROUTINE SignalFailure;
		public PSET_RESOURCE_INMEMORY_NODELOCAL_PROPERTIES_ROUTINE SetResourceInMemoryNodeLocalProperties;
		public PEND_CONTROL_CALL EndControlCall;
		public PEND_TYPE_CONTROL_CALL EndTypeControlCall;
		public PEXTEND_RES_CONTROL_CALL ExtendControlCall;
		public PEXTEND_RES_TYPE_CONTROL_CALL ExtendTypeControlCall;
		public PRAISE_RES_TYPE_NOTIFICATION RaiseResTypeNotification;
		public PCHANGE_RESOURCE_PROCESS_FOR_DUMPS ChangeResourceProcessForDumps;
		public PCHANGE_RES_TYPE_PROCESS_FOR_DUMPS ChangeResTypeProcessForDumps;
		public PSET_INTERNAL_STATE SetInternalState;
		public PSET_RESOURCE_LOCKED_MODE_EX_ROUTINE SetResourceLockedModeEx;
		public PREQUEST_DUMP_ROUTINE RequestDump;
	}
	[CRepr]
	public struct MONITOR_STATE
	{
		public LARGE_INTEGER LastUpdate;
		public RESOURCE_MONITOR_STATE State;
		public HANDLE ActiveResource;
		public BOOL ResmonStop;
	}
	[CRepr]
	public struct POST_UPGRADE_VERSION_INFO
	{
		public uint32 newMajorVersion;
		public uint32 newUpgradeVersion;
		public uint32 oldMajorVersion;
		public uint32 oldUpgradeVersion;
		public uint32 reserved;
	}
	[CRepr]
	public struct CLUSTER_HEALTH_FAULT
	{
		public PWSTR Id;
		public uint32 ErrorType;
		public uint32 ErrorCode;
		public PWSTR Description;
		public PWSTR Provider;
		public uint32 Flags;
		public uint32 Reserved;
	}
	[CRepr]
	public struct CLUSTER_HEALTH_FAULT_ARRAY
	{
		public uint32 numFaults;
		public CLUSTER_HEALTH_FAULT* faults;
	}
	[CRepr]
	public struct CLUS_WORKER
	{
		public HANDLE hThread;
		public BOOL Terminate;
	}
	[CRepr]
	public struct _HCLUSCRYPTPROVIDER {}
	[CRepr]
	public struct PaxosTagCStruct
	{
		public uint64 __padding__PaxosTagVtable;
		public uint64 __padding__NextEpochVtable;
		public uint64 __padding__NextEpoch_DateTimeVtable;
		public uint64 NextEpoch_DateTime_ticks;
		public int32 NextEpoch_Value;
		public uint32 __padding__BoundryNextEpoch;
		public uint64 __padding__EpochVtable;
		public uint64 __padding__Epoch_DateTimeVtable;
		public uint64 Epoch_DateTime_ticks;
		public int32 Epoch_Value;
		public uint32 __padding__BoundryEpoch;
		public int32 Sequence;
		public uint32 __padding__BoundrySequence;
	}
	[CRepr]
	public struct WitnessTagUpdateHelper
	{
		public int32 Version;
		public PaxosTagCStruct paxosToSet;
		public PaxosTagCStruct paxosToValidate;
	}
	[CRepr]
	public struct WitnessTagHelper
	{
		public int32 Version;
		public PaxosTagCStruct paxosToValidate;
	}
	#endregion
	
	#region COM class IDs
	public const Guid CLSID_ClusApplication = .(0xf2e606e5, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_Cluster = .(0xf2e606e3, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusVersion = .(0xf2e60715, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResType = .(0xf2e6070f, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusProperty = .(0xf2e606fd, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusProperties = .(0xf2e606ff, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_DomainNames = .(0xf2e606e1, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNetwork = .(0xf2e606f1, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNetInterface = .(0xf2e606ed, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNetInterfaces = .(0xf2e606ef, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResDependencies = .(0xf2e60703, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResGroupResources = .(0xf2e606e9, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResTypeResources = .(0xf2e60713, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResGroupPreferredOwnerNodes = .(0xf2e606e7, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResPossibleOwnerNodes = .(0xf2e6070d, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNetworks = .(0xf2e606f3, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNetworkNetInterfaces = .(0xf2e606f5, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNodeNetInterfaces = .(0xf2e606fb, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusRefObject = .(0xf2e60701, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusterNames = .(0xf2e606eb, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNode = .(0xf2e606f7, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusNodes = .(0xf2e606f9, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResGroup = .(0xf2e60705, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResGroups = .(0xf2e60707, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResource = .(0xf2e60709, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResources = .(0xf2e6070b, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResTypes = .(0xf2e60711, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResTypePossibleOwnerNodes = .(0xf2e60717, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusPropertyValue = .(0xf2e60719, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusPropertyValues = .(0xf2e6071b, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusPropertyValueData = .(0xf2e6071d, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusPartition = .(0xf2e6071f, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusPartitionEx = .(0x53d51d26, 0xb51b, 0x4a79, 0xb2, 0xc3, 0x50, 0x48, 0xd9, 0x3a, 0x98, 0xfc);
	public const Guid CLSID_ClusPartitions = .(0xf2e60721, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusDisk = .(0xf2e60723, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusDisks = .(0xf2e60725, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusScsiAddress = .(0xf2e60727, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusRegistryKeys = .(0xf2e60729, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusCryptoKeys = .(0xf2e6072b, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	public const Guid CLSID_ClusResDependents = .(0xf2e6072d, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct IGetClusterUIInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede50, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetClusterName(BSTR lpszName, out int32 pcchName) mut => VT.GetClusterName(ref this, lpszName, out pcchName);
		public uint32 GetLocale() mut => VT.GetLocale(ref this);
		public HFONT GetFont() mut => VT.GetFont(ref this);
		public HICON GetIcon() mut => VT.GetIcon(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetClusterUIInfo self, BSTR lpszName, out int32 pcchName) GetClusterName;
			public new function [CallingConvention(.Stdcall)] uint32(ref IGetClusterUIInfo self) GetLocale;
			public new function [CallingConvention(.Stdcall)] HFONT(ref IGetClusterUIInfo self) GetFont;
			public new function [CallingConvention(.Stdcall)] HICON(ref IGetClusterUIInfo self) GetIcon;
		}
	}
	[CRepr]
	public struct IGetClusterDataInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede51, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetClusterName(BSTR lpszName, out int32 pcchName) mut => VT.GetClusterName(ref this, lpszName, out pcchName);
		public _HCLUSTER* GetClusterHandle() mut => VT.GetClusterHandle(ref this);
		public int32 GetObjectCount() mut => VT.GetObjectCount(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetClusterDataInfo self, BSTR lpszName, out int32 pcchName) GetClusterName;
			public new function [CallingConvention(.Stdcall)] _HCLUSTER*(ref IGetClusterDataInfo self) GetClusterHandle;
			public new function [CallingConvention(.Stdcall)] int32(ref IGetClusterDataInfo self) GetObjectCount;
		}
	}
	[CRepr]
	public struct IGetClusterObjectInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede52, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetObjectName(int32 lObjIndex, BSTR lpszName, out int32 pcchName) mut => VT.GetObjectName(ref this, lObjIndex, lpszName, out pcchName);
		public CLUADMEX_OBJECT_TYPE GetObjectType(int32 lObjIndex) mut => VT.GetObjectType(ref this, lObjIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetClusterObjectInfo self, int32 lObjIndex, BSTR lpszName, out int32 pcchName) GetObjectName;
			public new function [CallingConvention(.Stdcall)] CLUADMEX_OBJECT_TYPE(ref IGetClusterObjectInfo self, int32 lObjIndex) GetObjectType;
		}
	}
	[CRepr]
	public struct IGetClusterNodeInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede53, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public _HNODE* GetNodeHandle(int32 lObjIndex) mut => VT.GetNodeHandle(ref this, lObjIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] _HNODE*(ref IGetClusterNodeInfo self, int32 lObjIndex) GetNodeHandle;
		}
	}
	[CRepr]
	public struct IGetClusterGroupInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede54, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public _HGROUP* GetGroupHandle(int32 lObjIndex) mut => VT.GetGroupHandle(ref this, lObjIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] _HGROUP*(ref IGetClusterGroupInfo self, int32 lObjIndex) GetGroupHandle;
		}
	}
	[CRepr]
	public struct IGetClusterResourceInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede55, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public _HRESOURCE* GetResourceHandle(int32 lObjIndex) mut => VT.GetResourceHandle(ref this, lObjIndex);
		public HRESULT GetResourceTypeName(int32 lObjIndex, BSTR lpszResTypeName, out int32 pcchResTypeName) mut => VT.GetResourceTypeName(ref this, lObjIndex, lpszResTypeName, out pcchResTypeName);
		public BOOL GetResourceNetworkName(int32 lObjIndex, BSTR lpszNetName, out uint32 pcchNetName) mut => VT.GetResourceNetworkName(ref this, lObjIndex, lpszNetName, out pcchNetName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] _HRESOURCE*(ref IGetClusterResourceInfo self, int32 lObjIndex) GetResourceHandle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetClusterResourceInfo self, int32 lObjIndex, BSTR lpszResTypeName, out int32 pcchResTypeName) GetResourceTypeName;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IGetClusterResourceInfo self, int32 lObjIndex, BSTR lpszNetName, out uint32 pcchNetName) GetResourceNetworkName;
		}
	}
	[CRepr]
	public struct IGetClusterNetworkInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede56, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public _HNETWORK* GetNetworkHandle(int32 lObjIndex) mut => VT.GetNetworkHandle(ref this, lObjIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] _HNETWORK*(ref IGetClusterNetworkInfo self, int32 lObjIndex) GetNetworkHandle;
		}
	}
	[CRepr]
	public struct IGetClusterNetInterfaceInfo : IUnknown
	{
		public const new Guid IID = .(0x97dede57, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public _HNETINTERFACE* GetNetInterfaceHandle(int32 lObjIndex) mut => VT.GetNetInterfaceHandle(ref this, lObjIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] _HNETINTERFACE*(ref IGetClusterNetInterfaceInfo self, int32 lObjIndex) GetNetInterfaceHandle;
		}
	}
	[CRepr]
	public struct IWCPropertySheetCallback : IUnknown
	{
		public const new Guid IID = .(0x97dede60, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddPropertySheetPage(ref int32 hpage) mut => VT.AddPropertySheetPage(ref this, ref hpage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCPropertySheetCallback self, ref int32 hpage) AddPropertySheetPage;
		}
	}
	[CRepr]
	public struct IWEExtendPropertySheet : IUnknown
	{
		public const new Guid IID = .(0x97dede61, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreatePropertySheetPages(ref IUnknown piData, ref IWCPropertySheetCallback piCallback) mut => VT.CreatePropertySheetPages(ref this, ref piData, ref piCallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWEExtendPropertySheet self, ref IUnknown piData, ref IWCPropertySheetCallback piCallback) CreatePropertySheetPages;
		}
	}
	[CRepr]
	public struct IWCWizardCallback : IUnknown
	{
		public const new Guid IID = .(0x97dede62, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddWizardPage(ref int32 hpage) mut => VT.AddWizardPage(ref this, ref hpage);
		public HRESULT EnableNext(ref int32 hpage, BOOL bEnable) mut => VT.EnableNext(ref this, ref hpage, bEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCWizardCallback self, ref int32 hpage) AddWizardPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCWizardCallback self, ref int32 hpage, BOOL bEnable) EnableNext;
		}
	}
	[CRepr]
	public struct IWEExtendWizard : IUnknown
	{
		public const new Guid IID = .(0x97dede63, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateWizardPages(ref IUnknown piData, ref IWCWizardCallback piCallback) mut => VT.CreateWizardPages(ref this, ref piData, ref piCallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWEExtendWizard self, ref IUnknown piData, ref IWCWizardCallback piCallback) CreateWizardPages;
		}
	}
	[CRepr]
	public struct IWCContextMenuCallback : IUnknown
	{
		public const new Guid IID = .(0x97dede64, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddExtensionMenuItem(BSTR lpszName, BSTR lpszStatusBarText, uint32 nCommandID, uint32 nSubmenuCommandID, uint32 uFlags) mut => VT.AddExtensionMenuItem(ref this, lpszName, lpszStatusBarText, nCommandID, nSubmenuCommandID, uFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCContextMenuCallback self, BSTR lpszName, BSTR lpszStatusBarText, uint32 nCommandID, uint32 nSubmenuCommandID, uint32 uFlags) AddExtensionMenuItem;
		}
	}
	[CRepr]
	public struct IWEExtendContextMenu : IUnknown
	{
		public const new Guid IID = .(0x97dede65, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddContextMenuItems(ref IUnknown piData, ref IWCContextMenuCallback piCallback) mut => VT.AddContextMenuItems(ref this, ref piData, ref piCallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWEExtendContextMenu self, ref IUnknown piData, ref IWCContextMenuCallback piCallback) AddContextMenuItems;
		}
	}
	[CRepr]
	public struct IWEInvokeCommand : IUnknown
	{
		public const new Guid IID = .(0x97dede66, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InvokeCommand(uint32 nCommandID, ref IUnknown piData) mut => VT.InvokeCommand(ref this, nCommandID, ref piData);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWEInvokeCommand self, uint32 nCommandID, ref IUnknown piData) InvokeCommand;
		}
	}
	[CRepr]
	public struct IWCWizard97Callback : IUnknown
	{
		public const new Guid IID = .(0x97dede67, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddWizard97Page(ref int32 hpage) mut => VT.AddWizard97Page(ref this, ref hpage);
		public HRESULT EnableNext(ref int32 hpage, BOOL bEnable) mut => VT.EnableNext(ref this, ref hpage, bEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCWizard97Callback self, ref int32 hpage) AddWizard97Page;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWCWizard97Callback self, ref int32 hpage, BOOL bEnable) EnableNext;
		}
	}
	[CRepr]
	public struct IWEExtendWizard97 : IUnknown
	{
		public const new Guid IID = .(0x97dede68, 0xfc6b, 0x11cf, 0xb5, 0xf5, 0x00, 0xa0, 0xc9, 0x0a, 0xb5, 0x05);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateWizard97Pages(ref IUnknown piData, ref IWCWizard97Callback piCallback) mut => VT.CreateWizard97Pages(ref this, ref piData, ref piCallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWEExtendWizard97 self, ref IUnknown piData, ref IWCWizard97Callback piCallback) CreateWizard97Pages;
		}
	}
	[CRepr]
	public struct ISClusApplication : IDispatch
	{
		public const new Guid IID = .(0xf2e606e6, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_DomainNames(out ISDomainNames* ppDomains) mut => VT.get_DomainNames(ref this, out ppDomains);
		public HRESULT get_ClusterNames(BSTR bstrDomainName, out ISClusterNames* ppClusters) mut => VT.get_ClusterNames(ref this, bstrDomainName, out ppClusters);
		public HRESULT OpenCluster(BSTR bstrClusterName, out ISCluster* pCluster) mut => VT.OpenCluster(ref this, bstrClusterName, out pCluster);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusApplication self, out ISDomainNames* ppDomains) get_DomainNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusApplication self, BSTR bstrDomainName, out ISClusterNames* ppClusters) get_ClusterNames;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusApplication self, BSTR bstrClusterName, out ISCluster* pCluster) OpenCluster;
		}
	}
	[CRepr]
	public struct ISDomainNames : IDispatch
	{
		public const new Guid IID = .(0xf2e606e2, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out BSTR pbstrDomainName) mut => VT.get_Item(ref this, varIndex, out pbstrDomainName);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISDomainNames self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISDomainNames self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISDomainNames self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISDomainNames self, VARIANT varIndex, out BSTR pbstrDomainName) get_Item;
		}
	}
	[CRepr]
	public struct ISClusterNames : IDispatch
	{
		public const new Guid IID = .(0xf2e606ec, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out BSTR pbstrClusterName) mut => VT.get_Item(ref this, varIndex, out pbstrClusterName);
		public HRESULT get_DomainName(out BSTR pbstrDomainName) mut => VT.get_DomainName(ref this, out pbstrDomainName);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusterNames self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusterNames self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusterNames self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusterNames self, VARIANT varIndex, out BSTR pbstrClusterName) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusterNames self, out BSTR pbstrDomainName) get_DomainName;
		}
	}
	[CRepr]
	public struct ISClusRefObject : IDispatch
	{
		public const new Guid IID = .(0xf2e60702, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRefObject self, out uint phandle) get_Handle;
		}
	}
	[CRepr]
	public struct ISClusVersion : IDispatch
	{
		public const new Guid IID = .(0xf2e60716, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Name(out BSTR pbstrClusterName) mut => VT.get_Name(ref this, out pbstrClusterName);
		public HRESULT get_MajorVersion(out int32 pnMajorVersion) mut => VT.get_MajorVersion(ref this, out pnMajorVersion);
		public HRESULT get_MinorVersion(out int32 pnMinorVersion) mut => VT.get_MinorVersion(ref this, out pnMinorVersion);
		public HRESULT get_BuildNumber(out int16 pnBuildNumber) mut => VT.get_BuildNumber(ref this, out pnBuildNumber);
		public HRESULT get_VendorId(out BSTR pbstrVendorId) mut => VT.get_VendorId(ref this, out pbstrVendorId);
		public HRESULT get_CSDVersion(out BSTR pbstrCSDVersion) mut => VT.get_CSDVersion(ref this, out pbstrCSDVersion);
		public HRESULT get_ClusterHighestVersion(out int32 pnClusterHighestVersion) mut => VT.get_ClusterHighestVersion(ref this, out pnClusterHighestVersion);
		public HRESULT get_ClusterLowestVersion(out int32 pnClusterLowestVersion) mut => VT.get_ClusterLowestVersion(ref this, out pnClusterLowestVersion);
		public HRESULT get_Flags(out int32 pnFlags) mut => VT.get_Flags(ref this, out pnFlags);
		public HRESULT get_MixedVersion(out VARIANT pvarMixedVersion) mut => VT.get_MixedVersion(ref this, out pvarMixedVersion);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out BSTR pbstrClusterName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int32 pnMajorVersion) get_MajorVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int32 pnMinorVersion) get_MinorVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int16 pnBuildNumber) get_BuildNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out BSTR pbstrVendorId) get_VendorId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out BSTR pbstrCSDVersion) get_CSDVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int32 pnClusterHighestVersion) get_ClusterHighestVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int32 pnClusterLowestVersion) get_ClusterLowestVersion;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out int32 pnFlags) get_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusVersion self, out VARIANT pvarMixedVersion) get_MixedVersion;
		}
	}
	[CRepr]
	public struct ISCluster : IDispatch
	{
		public const new Guid IID = .(0xf2e606e4, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT Open(BSTR bstrClusterName) mut => VT.Open(ref this, bstrClusterName);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT put_Name(BSTR bstrClusterName) mut => VT.put_Name(ref this, bstrClusterName);
		public HRESULT get_Version(out ISClusVersion* ppClusVersion) mut => VT.get_Version(ref this, out ppClusVersion);
		public HRESULT put_QuorumResource(ref ISClusResource pClusterResource) mut => VT.put_QuorumResource(ref this, ref pClusterResource);
		public HRESULT get_QuorumResource(out ISClusResource* pClusterResource) mut => VT.get_QuorumResource(ref this, out pClusterResource);
		public HRESULT get_QuorumLogSize(out int32 pnLogSize) mut => VT.get_QuorumLogSize(ref this, out pnLogSize);
		public HRESULT put_QuorumLogSize(int32 nLogSize) mut => VT.put_QuorumLogSize(ref this, nLogSize);
		public HRESULT get_QuorumPath(out BSTR ppPath) mut => VT.get_QuorumPath(ref this, out ppPath);
		public HRESULT put_QuorumPath(BSTR pPath) mut => VT.put_QuorumPath(ref this, pPath);
		public HRESULT get_Nodes(out ISClusNodes* ppNodes) mut => VT.get_Nodes(ref this, out ppNodes);
		public HRESULT get_ResourceGroups(out ISClusResGroups* ppClusterResourceGroups) mut => VT.get_ResourceGroups(ref this, out ppClusterResourceGroups);
		public HRESULT get_Resources(out ISClusResources* ppClusterResources) mut => VT.get_Resources(ref this, out ppClusterResources);
		public HRESULT get_ResourceTypes(out ISClusResTypes* ppResourceTypes) mut => VT.get_ResourceTypes(ref this, out ppResourceTypes);
		public HRESULT get_Networks(out ISClusNetworks* ppNetworks) mut => VT.get_Networks(ref this, out ppNetworks);
		public HRESULT get_NetInterfaces(out ISClusNetInterfaces* ppNetInterfaces) mut => VT.get_NetInterfaces(ref this, out ppNetInterfaces);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, BSTR bstrClusterName) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, BSTR bstrClusterName) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusVersion* ppClusVersion) get_Version;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, ref ISClusResource pClusterResource) put_QuorumResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusResource* pClusterResource) get_QuorumResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out int32 pnLogSize) get_QuorumLogSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, int32 nLogSize) put_QuorumLogSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out BSTR ppPath) get_QuorumPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, BSTR pPath) put_QuorumPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusNodes* ppNodes) get_Nodes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusResGroups* ppClusterResourceGroups) get_ResourceGroups;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusResources* ppClusterResources) get_Resources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusResTypes* ppResourceTypes) get_ResourceTypes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusNetworks* ppNetworks) get_Networks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISCluster self, out ISClusNetInterfaces* ppNetInterfaces) get_NetInterfaces;
		}
	}
	[CRepr]
	public struct ISClusNode : IDispatch
	{
		public const new Guid IID = .(0xf2e606f8, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT get_NodeID(out BSTR pbstrNodeID) mut => VT.get_NodeID(ref this, out pbstrNodeID);
		public HRESULT get_State(out CLUSTER_NODE_STATE dwState) mut => VT.get_State(ref this, out dwState);
		public HRESULT Pause() mut => VT.Pause(ref this);
		public HRESULT Resume() mut => VT.Resume(ref this);
		public HRESULT Evict() mut => VT.Evict(ref this);
		public HRESULT get_ResourceGroups(out ISClusResGroups* ppResourceGroups) mut => VT.get_ResourceGroups(ref this, out ppResourceGroups);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);
		public HRESULT get_NetInterfaces(out ISClusNodeNetInterfaces* ppClusNetInterfaces) mut => VT.get_NetInterfaces(ref this, out ppClusNetInterfaces);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out BSTR pbstrNodeID) get_NodeID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out CLUSTER_NODE_STATE dwState) get_State;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self) Pause;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self) Resume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self) Evict;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusResGroups* ppResourceGroups) get_ResourceGroups;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISCluster* ppCluster) get_Cluster;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNode self, out ISClusNodeNetInterfaces* ppClusNetInterfaces) get_NetInterfaces;
		}
	}
	[CRepr]
	public struct ISClusNodes : IDispatch
	{
		public const new Guid IID = .(0xf2e606fa, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNode* ppNode) mut => VT.get_Item(ref this, varIndex, out ppNode);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodes self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodes self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodes self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodes self, VARIANT varIndex, out ISClusNode* ppNode) get_Item;
		}
	}
	[CRepr]
	public struct ISClusNetwork : IDispatch
	{
		public const new Guid IID = .(0xf2e606f2, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT put_Name(BSTR bstrNetworkName) mut => VT.put_Name(ref this, bstrNetworkName);
		public HRESULT get_NetworkID(out BSTR pbstrNetworkID) mut => VT.get_NetworkID(ref this, out pbstrNetworkID);
		public HRESULT get_State(out CLUSTER_NETWORK_STATE dwState) mut => VT.get_State(ref this, out dwState);
		public HRESULT get_NetInterfaces(out ISClusNetworkNetInterfaces* ppClusNetInterfaces) mut => VT.get_NetInterfaces(ref this, out ppClusNetInterfaces);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, BSTR bstrNetworkName) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out BSTR pbstrNetworkID) get_NetworkID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out CLUSTER_NETWORK_STATE dwState) get_State;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISClusNetworkNetInterfaces* ppClusNetInterfaces) get_NetInterfaces;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetwork self, out ISCluster* ppCluster) get_Cluster;
		}
	}
	[CRepr]
	public struct ISClusNetworks : IDispatch
	{
		public const new Guid IID = .(0xf2e606f4, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNetwork* ppClusNetwork) mut => VT.get_Item(ref this, varIndex, out ppClusNetwork);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworks self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworks self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworks self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworks self, VARIANT varIndex, out ISClusNetwork* ppClusNetwork) get_Item;
		}
	}
	[CRepr]
	public struct ISClusNetInterface : IDispatch
	{
		public const new Guid IID = .(0xf2e606ee, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT get_State(out CLUSTER_NETINTERFACE_STATE dwState) mut => VT.get_State(ref this, out dwState);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out CLUSTER_NETINTERFACE_STATE dwState) get_State;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterface self, out ISCluster* ppCluster) get_Cluster;
		}
	}
	[CRepr]
	public struct ISClusNetInterfaces : IDispatch
	{
		public const new Guid IID = .(0xf2e606f0, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) mut => VT.get_Item(ref this, varIndex, out ppClusNetInterface);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterfaces self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterfaces self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterfaces self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetInterfaces self, VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) get_Item;
		}
	}
	[CRepr]
	public struct ISClusNodeNetInterfaces : IDispatch
	{
		public const new Guid IID = .(0xf2e606fc, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) mut => VT.get_Item(ref this, varIndex, out ppClusNetInterface);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodeNetInterfaces self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodeNetInterfaces self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodeNetInterfaces self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNodeNetInterfaces self, VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) get_Item;
		}
	}
	[CRepr]
	public struct ISClusNetworkNetInterfaces : IDispatch
	{
		public const new Guid IID = .(0xf2e606f6, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) mut => VT.get_Item(ref this, varIndex, out ppClusNetInterface);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworkNetInterfaces self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworkNetInterfaces self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworkNetInterfaces self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusNetworkNetInterfaces self, VARIANT varIndex, out ISClusNetInterface* ppClusNetInterface) get_Item;
		}
	}
	[CRepr]
	public struct ISClusResGroup : IDispatch
	{
		public const new Guid IID = .(0xf2e60706, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT put_Name(BSTR bstrGroupName) mut => VT.put_Name(ref this, bstrGroupName);
		public HRESULT get_State(out CLUSTER_GROUP_STATE dwState) mut => VT.get_State(ref this, out dwState);
		public HRESULT get_OwnerNode(out ISClusNode* ppOwnerNode) mut => VT.get_OwnerNode(ref this, out ppOwnerNode);
		public HRESULT get_Resources(out ISClusResGroupResources* ppClusterGroupResources) mut => VT.get_Resources(ref this, out ppClusterGroupResources);
		public HRESULT get_PreferredOwnerNodes(out ISClusResGroupPreferredOwnerNodes* ppOwnerNodes) mut => VT.get_PreferredOwnerNodes(ref this, out ppOwnerNodes);
		public HRESULT Delete() mut => VT.Delete(ref this);
		public HRESULT Online(VARIANT varTimeout, VARIANT varNode, out VARIANT pvarPending) mut => VT.Online(ref this, varTimeout, varNode, out pvarPending);
		public HRESULT Move(VARIANT varTimeout, VARIANT varNode, out VARIANT pvarPending) mut => VT.Move(ref this, varTimeout, varNode, out pvarPending);
		public HRESULT Offline(VARIANT varTimeout, out VARIANT pvarPending) mut => VT.Offline(ref this, varTimeout, out pvarPending);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, BSTR bstrGroupName) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out CLUSTER_GROUP_STATE dwState) get_State;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusNode* ppOwnerNode) get_OwnerNode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusResGroupResources* ppClusterGroupResources) get_Resources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISClusResGroupPreferredOwnerNodes* ppOwnerNodes) get_PreferredOwnerNodes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, VARIANT varTimeout, VARIANT varNode, out VARIANT pvarPending) Online;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, VARIANT varTimeout, VARIANT varNode, out VARIANT pvarPending) Move;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, VARIANT varTimeout, out VARIANT pvarPending) Offline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroup self, out ISCluster* ppCluster) get_Cluster;
		}
	}
	[CRepr]
	public struct ISClusResGroups : IDispatch
	{
		public const new Guid IID = .(0xf2e60708, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResGroup* ppClusResGroup) mut => VT.get_Item(ref this, varIndex, out ppClusResGroup);
		public HRESULT CreateItem(BSTR bstrResourceGroupName, out ISClusResGroup* ppResourceGroup) mut => VT.CreateItem(ref this, bstrResourceGroupName, out ppResourceGroup);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self, VARIANT varIndex, out ISClusResGroup* ppClusResGroup) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self, BSTR bstrResourceGroupName, out ISClusResGroup* ppResourceGroup) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroups self, VARIANT varIndex) DeleteItem;
		}
	}
	[CRepr]
	public struct ISClusResource : IDispatch
	{
		public const new Guid IID = .(0xf2e6070a, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Handle(out uint phandle) mut => VT.get_Handle(ref this, out phandle);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT put_Name(BSTR bstrResourceName) mut => VT.put_Name(ref this, bstrResourceName);
		public HRESULT get_State(out CLUSTER_RESOURCE_STATE dwState) mut => VT.get_State(ref this, out dwState);
		public HRESULT get_CoreFlag(out CLUS_FLAGS dwCoreFlag) mut => VT.get_CoreFlag(ref this, out dwCoreFlag);
		public HRESULT BecomeQuorumResource(BSTR bstrDevicePath, int32 lMaxLogSize) mut => VT.BecomeQuorumResource(ref this, bstrDevicePath, lMaxLogSize);
		public HRESULT Delete() mut => VT.Delete(ref this);
		public HRESULT Fail() mut => VT.Fail(ref this);
		public HRESULT Online(int32 nTimeout, out VARIANT pvarPending) mut => VT.Online(ref this, nTimeout, out pvarPending);
		public HRESULT Offline(int32 nTimeout, out VARIANT pvarPending) mut => VT.Offline(ref this, nTimeout, out pvarPending);
		public HRESULT ChangeResourceGroup(ref ISClusResGroup pResourceGroup) mut => VT.ChangeResourceGroup(ref this, ref pResourceGroup);
		public HRESULT AddResourceNode(ref ISClusNode pNode) mut => VT.AddResourceNode(ref this, ref pNode);
		public HRESULT RemoveResourceNode(ref ISClusNode pNode) mut => VT.RemoveResourceNode(ref this, ref pNode);
		public HRESULT CanResourceBeDependent(ref ISClusResource pResource, out VARIANT pvarDependent) mut => VT.CanResourceBeDependent(ref this, ref pResource, out pvarDependent);
		public HRESULT get_PossibleOwnerNodes(out ISClusResPossibleOwnerNodes* ppOwnerNodes) mut => VT.get_PossibleOwnerNodes(ref this, out ppOwnerNodes);
		public HRESULT get_Dependencies(out ISClusResDependencies* ppResDependencies) mut => VT.get_Dependencies(ref this, out ppResDependencies);
		public HRESULT get_Dependents(out ISClusResDependents* ppResDependents) mut => VT.get_Dependents(ref this, out ppResDependents);
		public HRESULT get_Group(out ISClusResGroup* ppResGroup) mut => VT.get_Group(ref this, out ppResGroup);
		public HRESULT get_OwnerNode(out ISClusNode* ppOwnerNode) mut => VT.get_OwnerNode(ref this, out ppOwnerNode);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);
		public HRESULT get_ClassInfo(out CLUSTER_RESOURCE_CLASS prcClassInfo) mut => VT.get_ClassInfo(ref this, out prcClassInfo);
		public HRESULT get_Disk(out ISClusDisk* ppDisk) mut => VT.get_Disk(ref this, out ppDisk);
		public HRESULT get_RegistryKeys(out ISClusRegistryKeys* ppRegistryKeys) mut => VT.get_RegistryKeys(ref this, out ppRegistryKeys);
		public HRESULT get_CryptoKeys(out ISClusCryptoKeys* ppCryptoKeys) mut => VT.get_CryptoKeys(ref this, out ppCryptoKeys);
		public HRESULT get_TypeName(out BSTR pbstrTypeName) mut => VT.get_TypeName(ref this, out pbstrTypeName);
		public HRESULT get_Type(out ISClusResType* ppResourceType) mut => VT.get_Type(ref this, out ppResourceType);
		public HRESULT get_MaintenanceMode(out BOOL pbMaintenanceMode) mut => VT.get_MaintenanceMode(ref this, out pbMaintenanceMode);
		public HRESULT put_MaintenanceMode(BOOL bMaintenanceMode) mut => VT.put_MaintenanceMode(ref this, bMaintenanceMode);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out uint phandle) get_Handle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, BSTR bstrResourceName) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out CLUSTER_RESOURCE_STATE dwState) get_State;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out CLUS_FLAGS dwCoreFlag) get_CoreFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, BSTR bstrDevicePath, int32 lMaxLogSize) BecomeQuorumResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self) Fail;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, int32 nTimeout, out VARIANT pvarPending) Online;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, int32 nTimeout, out VARIANT pvarPending) Offline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, ref ISClusResGroup pResourceGroup) ChangeResourceGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, ref ISClusNode pNode) AddResourceNode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, ref ISClusNode pNode) RemoveResourceNode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, ref ISClusResource pResource, out VARIANT pvarDependent) CanResourceBeDependent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusResPossibleOwnerNodes* ppOwnerNodes) get_PossibleOwnerNodes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusResDependencies* ppResDependencies) get_Dependencies;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusResDependents* ppResDependents) get_Dependents;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusResGroup* ppResGroup) get_Group;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusNode* ppOwnerNode) get_OwnerNode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISCluster* ppCluster) get_Cluster;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out CLUSTER_RESOURCE_CLASS prcClassInfo) get_ClassInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusDisk* ppDisk) get_Disk;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusRegistryKeys* ppRegistryKeys) get_RegistryKeys;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusCryptoKeys* ppCryptoKeys) get_CryptoKeys;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out BSTR pbstrTypeName) get_TypeName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out ISClusResType* ppResourceType) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, out BOOL pbMaintenanceMode) get_MaintenanceMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResource self, BOOL bMaintenanceMode) put_MaintenanceMode;
		}
	}
	[CRepr]
	public struct ISClusResDependencies : IDispatch
	{
		public const new Guid IID = .(0xf2e60704, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResource* ppClusResource) mut => VT.get_Item(ref this, varIndex, out ppClusResource);
		public HRESULT CreateItem(BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) mut => VT.CreateItem(ref this, bstrResourceName, bstrResourceType, dwFlags, out ppClusterResource);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);
		public HRESULT AddItem(ref ISClusResource pResource) mut => VT.AddItem(ref this, ref pResource);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, VARIANT varIndex, out ISClusResource* ppClusResource) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, VARIANT varIndex) DeleteItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, ref ISClusResource pResource) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependencies self, VARIANT varIndex) RemoveItem;
		}
	}
	[CRepr]
	public struct ISClusResGroupResources : IDispatch
	{
		public const new Guid IID = .(0xf2e606ea, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResource* ppClusResource) mut => VT.get_Item(ref this, varIndex, out ppClusResource);
		public HRESULT CreateItem(BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) mut => VT.CreateItem(ref this, bstrResourceName, bstrResourceType, dwFlags, out ppClusterResource);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self, VARIANT varIndex, out ISClusResource* ppClusResource) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self, BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupResources self, VARIANT varIndex) DeleteItem;
		}
	}
	[CRepr]
	public struct ISClusResTypeResources : IDispatch
	{
		public const new Guid IID = .(0xf2e60714, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResource* ppClusResource) mut => VT.get_Item(ref this, varIndex, out ppClusResource);
		public HRESULT CreateItem(BSTR bstrResourceName, BSTR bstrGroupName, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) mut => VT.CreateItem(ref this, bstrResourceName, bstrGroupName, dwFlags, out ppClusterResource);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self, VARIANT varIndex, out ISClusResource* ppClusResource) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self, BSTR bstrResourceName, BSTR bstrGroupName, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypeResources self, VARIANT varIndex) DeleteItem;
		}
	}
	[CRepr]
	public struct ISClusResources : IDispatch
	{
		public const new Guid IID = .(0xf2e6070c, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResource* ppClusResource) mut => VT.get_Item(ref this, varIndex, out ppClusResource);
		public HRESULT CreateItem(BSTR bstrResourceName, BSTR bstrResourceType, BSTR bstrGroupName, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) mut => VT.CreateItem(ref this, bstrResourceName, bstrResourceType, bstrGroupName, dwFlags, out ppClusterResource);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self, VARIANT varIndex, out ISClusResource* ppClusResource) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self, BSTR bstrResourceName, BSTR bstrResourceType, BSTR bstrGroupName, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResources self, VARIANT varIndex) DeleteItem;
		}
	}
	[CRepr]
	public struct ISClusResGroupPreferredOwnerNodes : IDispatch
	{
		public const new Guid IID = .(0xf2e606e8, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNode* ppNode) mut => VT.get_Item(ref this, varIndex, out ppNode);
		public HRESULT InsertItem(ref ISClusNode pNode, int32 nPosition) mut => VT.InsertItem(ref this, ref pNode, nPosition);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);
		public HRESULT get_Modified(out VARIANT pvarModified) mut => VT.get_Modified(ref this, out pvarModified);
		public HRESULT SaveChanges() mut => VT.SaveChanges(ref this);
		public HRESULT AddItem(ref ISClusNode pNode) mut => VT.AddItem(ref this, ref pNode);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, VARIANT varIndex, out ISClusNode* ppNode) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, ref ISClusNode pNode, int32 nPosition) InsertItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, VARIANT varIndex) RemoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, out VARIANT pvarModified) get_Modified;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self) SaveChanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResGroupPreferredOwnerNodes self, ref ISClusNode pNode) AddItem;
		}
	}
	[CRepr]
	public struct ISClusResPossibleOwnerNodes : IDispatch
	{
		public const new Guid IID = .(0xf2e6070e, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNode* ppNode) mut => VT.get_Item(ref this, varIndex, out ppNode);
		public HRESULT AddItem(ref ISClusNode pNode) mut => VT.AddItem(ref this, ref pNode);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);
		public HRESULT get_Modified(out VARIANT pvarModified) mut => VT.get_Modified(ref this, out pvarModified);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, VARIANT varIndex, out ISClusNode* ppNode) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, ref ISClusNode pNode) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, VARIANT varIndex) RemoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResPossibleOwnerNodes self, out VARIANT pvarModified) get_Modified;
		}
	}
	[CRepr]
	public struct ISClusResTypePossibleOwnerNodes : IDispatch
	{
		public const new Guid IID = .(0xf2e60718, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusNode* ppNode) mut => VT.get_Item(ref this, varIndex, out ppNode);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypePossibleOwnerNodes self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypePossibleOwnerNodes self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypePossibleOwnerNodes self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypePossibleOwnerNodes self, VARIANT varIndex, out ISClusNode* ppNode) get_Item;
		}
	}
	[CRepr]
	public struct ISClusResType : IDispatch
	{
		public const new Guid IID = .(0xf2e60710, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CommonProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonProperties(ref this, out ppProperties);
		public HRESULT get_PrivateProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateProperties(ref this, out ppProperties);
		public HRESULT get_CommonROProperties(out ISClusProperties* ppProperties) mut => VT.get_CommonROProperties(ref this, out ppProperties);
		public HRESULT get_PrivateROProperties(out ISClusProperties* ppProperties) mut => VT.get_PrivateROProperties(ref this, out ppProperties);
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT Delete() mut => VT.Delete(ref this);
		public HRESULT get_Cluster(out ISCluster* ppCluster) mut => VT.get_Cluster(ref this, out ppCluster);
		public HRESULT get_Resources(out ISClusResTypeResources* ppClusterResTypeResources) mut => VT.get_Resources(ref this, out ppClusterResTypeResources);
		public HRESULT get_PossibleOwnerNodes(out ISClusResTypePossibleOwnerNodes* ppOwnerNodes) mut => VT.get_PossibleOwnerNodes(ref this, out ppOwnerNodes);
		public HRESULT get_AvailableDisks(out ISClusDisks* ppAvailableDisks) mut => VT.get_AvailableDisks(ref this, out ppAvailableDisks);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusProperties* ppProperties) get_CommonProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusProperties* ppProperties) get_PrivateProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusProperties* ppProperties) get_CommonROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusProperties* ppProperties) get_PrivateROProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self) Delete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISCluster* ppCluster) get_Cluster;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusResTypeResources* ppClusterResTypeResources) get_Resources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusResTypePossibleOwnerNodes* ppOwnerNodes) get_PossibleOwnerNodes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResType self, out ISClusDisks* ppAvailableDisks) get_AvailableDisks;
		}
	}
	[CRepr]
	public struct ISClusResTypes : IDispatch
	{
		public const new Guid IID = .(0xf2e60712, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResType* ppClusResType) mut => VT.get_Item(ref this, varIndex, out ppClusResType);
		public HRESULT CreateItem(BSTR bstrResourceTypeName, BSTR bstrDisplayName, BSTR bstrResourceTypeDll, int32 dwLooksAlivePollInterval, int32 dwIsAlivePollInterval, out ISClusResType* ppResourceType) mut => VT.CreateItem(ref this, bstrResourceTypeName, bstrDisplayName, bstrResourceTypeDll, dwLooksAlivePollInterval, dwIsAlivePollInterval, out ppResourceType);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self, VARIANT varIndex, out ISClusResType* ppClusResType) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self, BSTR bstrResourceTypeName, BSTR bstrDisplayName, BSTR bstrResourceTypeDll, int32 dwLooksAlivePollInterval, int32 dwIsAlivePollInterval, out ISClusResType* ppResourceType) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResTypes self, VARIANT varIndex) DeleteItem;
		}
	}
	[CRepr]
	public struct ISClusProperty : IDispatch
	{
		public const new Guid IID = .(0xf2e606fe, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Name(out BSTR pbstrName) mut => VT.get_Name(ref this, out pbstrName);
		public HRESULT get_Length(out int32 pLength) mut => VT.get_Length(ref this, out pLength);
		public HRESULT get_ValueCount(out int32 pCount) mut => VT.get_ValueCount(ref this, out pCount);
		public HRESULT get_Values(out ISClusPropertyValues* ppClusterPropertyValues) mut => VT.get_Values(ref this, out ppClusterPropertyValues);
		public HRESULT get_Value(out VARIANT pvarValue) mut => VT.get_Value(ref this, out pvarValue);
		public HRESULT put_Value(VARIANT varValue) mut => VT.put_Value(ref this, varValue);
		public HRESULT get_Type(out CLUSTER_PROPERTY_TYPE pType) mut => VT.get_Type(ref this, out pType);
		public HRESULT put_Type(CLUSTER_PROPERTY_TYPE Type) mut => VT.put_Type(ref this, Type);
		public HRESULT get_Format(out CLUSTER_PROPERTY_FORMAT pFormat) mut => VT.get_Format(ref this, out pFormat);
		public HRESULT put_Format(CLUSTER_PROPERTY_FORMAT Format) mut => VT.put_Format(ref this, Format);
		public HRESULT get_ReadOnly(out VARIANT pvarReadOnly) mut => VT.get_ReadOnly(ref this, out pvarReadOnly);
		public HRESULT get_Private(out VARIANT pvarPrivate) mut => VT.get_Private(ref this, out pvarPrivate);
		public HRESULT get_Common(out VARIANT pvarCommon) mut => VT.get_Common(ref this, out pvarCommon);
		public HRESULT get_Modified(out VARIANT pvarModified) mut => VT.get_Modified(ref this, out pvarModified);
		public HRESULT UseDefaultValue() mut => VT.UseDefaultValue(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out BSTR pbstrName) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out int32 pLength) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out int32 pCount) get_ValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out ISClusPropertyValues* ppClusterPropertyValues) get_Values;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out VARIANT pvarValue) get_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, VARIANT varValue) put_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out CLUSTER_PROPERTY_TYPE pType) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, CLUSTER_PROPERTY_TYPE Type) put_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out CLUSTER_PROPERTY_FORMAT pFormat) get_Format;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, CLUSTER_PROPERTY_FORMAT Format) put_Format;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out VARIANT pvarReadOnly) get_ReadOnly;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out VARIANT pvarPrivate) get_Private;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out VARIANT pvarCommon) get_Common;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self, out VARIANT pvarModified) get_Modified;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperty self) UseDefaultValue;
		}
	}
	[CRepr]
	public struct ISClusPropertyValue : IDispatch
	{
		public const new Guid IID = .(0xf2e6071a, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Value(out VARIANT pvarValue) mut => VT.get_Value(ref this, out pvarValue);
		public HRESULT put_Value(VARIANT varValue) mut => VT.put_Value(ref this, varValue);
		public HRESULT get_Type(out CLUSTER_PROPERTY_TYPE pType) mut => VT.get_Type(ref this, out pType);
		public HRESULT put_Type(CLUSTER_PROPERTY_TYPE Type) mut => VT.put_Type(ref this, Type);
		public HRESULT get_Format(out CLUSTER_PROPERTY_FORMAT pFormat) mut => VT.get_Format(ref this, out pFormat);
		public HRESULT put_Format(CLUSTER_PROPERTY_FORMAT Format) mut => VT.put_Format(ref this, Format);
		public HRESULT get_Length(out int32 pLength) mut => VT.get_Length(ref this, out pLength);
		public HRESULT get_DataCount(out int32 pCount) mut => VT.get_DataCount(ref this, out pCount);
		public HRESULT get_Data(out ISClusPropertyValueData* ppClusterPropertyValueData) mut => VT.get_Data(ref this, out ppClusterPropertyValueData);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out VARIANT pvarValue) get_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, VARIANT varValue) put_Value;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out CLUSTER_PROPERTY_TYPE pType) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, CLUSTER_PROPERTY_TYPE Type) put_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out CLUSTER_PROPERTY_FORMAT pFormat) get_Format;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, CLUSTER_PROPERTY_FORMAT Format) put_Format;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out int32 pLength) get_Length;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out int32 pCount) get_DataCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValue self, out ISClusPropertyValueData* ppClusterPropertyValueData) get_Data;
		}
	}
	[CRepr]
	public struct ISClusPropertyValues : IDispatch
	{
		public const new Guid IID = .(0xf2e6071c, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT get_Item(VARIANT varIndex, out ISClusPropertyValue* ppPropertyValue) mut => VT.get_Item(ref this, varIndex, out ppPropertyValue);
		public HRESULT CreateItem(BSTR bstrName, VARIANT varValue, out ISClusPropertyValue* ppPropertyValue) mut => VT.CreateItem(ref this, bstrName, varValue, out ppPropertyValue);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValues self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValues self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValues self, VARIANT varIndex, out ISClusPropertyValue* ppPropertyValue) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValues self, BSTR bstrName, VARIANT varValue, out ISClusPropertyValue* ppPropertyValue) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValues self, VARIANT varIndex) RemoveItem;
		}
	}
	[CRepr]
	public struct ISClusProperties : IDispatch
	{
		public const new Guid IID = .(0xf2e60700, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusProperty* ppClusProperty) mut => VT.get_Item(ref this, varIndex, out ppClusProperty);
		public HRESULT CreateItem(BSTR bstrName, VARIANT varValue, out ISClusProperty* pProperty) mut => VT.CreateItem(ref this, bstrName, varValue, out pProperty);
		public HRESULT UseDefaultValue(VARIANT varIndex) mut => VT.UseDefaultValue(ref this, varIndex);
		public HRESULT SaveChanges(out VARIANT pvarStatusCode) mut => VT.SaveChanges(ref this, out pvarStatusCode);
		public HRESULT get_ReadOnly(out VARIANT pvarReadOnly) mut => VT.get_ReadOnly(ref this, out pvarReadOnly);
		public HRESULT get_Private(out VARIANT pvarPrivate) mut => VT.get_Private(ref this, out pvarPrivate);
		public HRESULT get_Common(out VARIANT pvarCommon) mut => VT.get_Common(ref this, out pvarCommon);
		public HRESULT get_Modified(out VARIANT pvarModified) mut => VT.get_Modified(ref this, out pvarModified);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, VARIANT varIndex, out ISClusProperty* ppClusProperty) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, BSTR bstrName, VARIANT varValue, out ISClusProperty* pProperty) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, VARIANT varIndex) UseDefaultValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out VARIANT pvarStatusCode) SaveChanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out VARIANT pvarReadOnly) get_ReadOnly;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out VARIANT pvarPrivate) get_Private;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out VARIANT pvarCommon) get_Common;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusProperties self, out VARIANT pvarModified) get_Modified;
		}
	}
	[CRepr]
	public struct ISClusPropertyValueData : IDispatch
	{
		public const new Guid IID = .(0xf2e6071e, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT get_Item(VARIANT varIndex, out VARIANT pvarValue) mut => VT.get_Item(ref this, varIndex, out pvarValue);
		public HRESULT CreateItem(VARIANT varValue, out VARIANT pvarData) mut => VT.CreateItem(ref this, varValue, out pvarData);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValueData self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValueData self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValueData self, VARIANT varIndex, out VARIANT pvarValue) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValueData self, VARIANT varValue, out VARIANT pvarData) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPropertyValueData self, VARIANT varIndex) RemoveItem;
		}
	}
	[CRepr]
	public struct ISClusPartition : IDispatch
	{
		public const new Guid IID = .(0xf2e60720, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Flags(out int32 plFlags) mut => VT.get_Flags(ref this, out plFlags);
		public HRESULT get_DeviceName(out BSTR pbstrDeviceName) mut => VT.get_DeviceName(ref this, out pbstrDeviceName);
		public HRESULT get_VolumeLabel(out BSTR pbstrVolumeLabel) mut => VT.get_VolumeLabel(ref this, out pbstrVolumeLabel);
		public HRESULT get_SerialNumber(out int32 plSerialNumber) mut => VT.get_SerialNumber(ref this, out plSerialNumber);
		public HRESULT get_MaximumComponentLength(out int32 plMaximumComponentLength) mut => VT.get_MaximumComponentLength(ref this, out plMaximumComponentLength);
		public HRESULT get_FileSystemFlags(out int32 plFileSystemFlags) mut => VT.get_FileSystemFlags(ref this, out plFileSystemFlags);
		public HRESULT get_FileSystem(out BSTR pbstrFileSystem) mut => VT.get_FileSystem(ref this, out pbstrFileSystem);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out int32 plFlags) get_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out BSTR pbstrDeviceName) get_DeviceName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out BSTR pbstrVolumeLabel) get_VolumeLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out int32 plSerialNumber) get_SerialNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out int32 plMaximumComponentLength) get_MaximumComponentLength;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out int32 plFileSystemFlags) get_FileSystemFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartition self, out BSTR pbstrFileSystem) get_FileSystem;
		}
	}
	[CRepr]
	public struct ISClusPartitionEx : ISClusPartition
	{
		public const new Guid IID = .(0x8802d4fe, 0xb32e, 0x4ad1, 0x9d, 0xbd, 0x64, 0xf1, 0x8e, 0x11, 0x66, 0xce);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_TotalSize(out int32 plTotalSize) mut => VT.get_TotalSize(ref this, out plTotalSize);
		public HRESULT get_FreeSpace(out int32 plFreeSpace) mut => VT.get_FreeSpace(ref this, out plFreeSpace);
		public HRESULT get_DeviceNumber(out int32 plDeviceNumber) mut => VT.get_DeviceNumber(ref this, out plDeviceNumber);
		public HRESULT get_PartitionNumber(out int32 plPartitionNumber) mut => VT.get_PartitionNumber(ref this, out plPartitionNumber);
		public HRESULT get_VolumeGuid(out BSTR pbstrVolumeGuid) mut => VT.get_VolumeGuid(ref this, out pbstrVolumeGuid);

		[CRepr]
		public struct VTable : ISClusPartition.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitionEx self, out int32 plTotalSize) get_TotalSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitionEx self, out int32 plFreeSpace) get_FreeSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitionEx self, out int32 plDeviceNumber) get_DeviceNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitionEx self, out int32 plPartitionNumber) get_PartitionNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitionEx self, out BSTR pbstrVolumeGuid) get_VolumeGuid;
		}
	}
	[CRepr]
	public struct ISClusPartitions : IDispatch
	{
		public const new Guid IID = .(0xf2e60722, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT get_Item(VARIANT varIndex, out ISClusPartition* ppPartition) mut => VT.get_Item(ref this, varIndex, out ppPartition);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitions self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitions self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusPartitions self, VARIANT varIndex, out ISClusPartition* ppPartition) get_Item;
		}
	}
	[CRepr]
	public struct ISClusDisk : IDispatch
	{
		public const new Guid IID = .(0xf2e60724, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Signature(out int32 plSignature) mut => VT.get_Signature(ref this, out plSignature);
		public HRESULT get_ScsiAddress(out ISClusScsiAddress* ppScsiAddress) mut => VT.get_ScsiAddress(ref this, out ppScsiAddress);
		public HRESULT get_DiskNumber(out int32 plDiskNumber) mut => VT.get_DiskNumber(ref this, out plDiskNumber);
		public HRESULT get_Partitions(out ISClusPartitions* ppPartitions) mut => VT.get_Partitions(ref this, out ppPartitions);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisk self, out int32 plSignature) get_Signature;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisk self, out ISClusScsiAddress* ppScsiAddress) get_ScsiAddress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisk self, out int32 plDiskNumber) get_DiskNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisk self, out ISClusPartitions* ppPartitions) get_Partitions;
		}
	}
	[CRepr]
	public struct ISClusDisks : IDispatch
	{
		public const new Guid IID = .(0xf2e60726, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT get_Item(VARIANT varIndex, out ISClusDisk* ppDisk) mut => VT.get_Item(ref this, varIndex, out ppDisk);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisks self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisks self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusDisks self, VARIANT varIndex, out ISClusDisk* ppDisk) get_Item;
		}
	}
	[CRepr]
	public struct ISClusScsiAddress : IDispatch
	{
		public const new Guid IID = .(0xf2e60728, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_PortNumber(out VARIANT pvarPortNumber) mut => VT.get_PortNumber(ref this, out pvarPortNumber);
		public HRESULT get_PathId(out VARIANT pvarPathId) mut => VT.get_PathId(ref this, out pvarPathId);
		public HRESULT get_TargetId(out VARIANT pvarTargetId) mut => VT.get_TargetId(ref this, out pvarTargetId);
		public HRESULT get_Lun(out VARIANT pvarLun) mut => VT.get_Lun(ref this, out pvarLun);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusScsiAddress self, out VARIANT pvarPortNumber) get_PortNumber;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusScsiAddress self, out VARIANT pvarPathId) get_PathId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusScsiAddress self, out VARIANT pvarTargetId) get_TargetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusScsiAddress self, out VARIANT pvarLun) get_Lun;
		}
	}
	[CRepr]
	public struct ISClusRegistryKeys : IDispatch
	{
		public const new Guid IID = .(0xf2e6072a, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out BSTR pbstrRegistryKey) mut => VT.get_Item(ref this, varIndex, out pbstrRegistryKey);
		public HRESULT AddItem(BSTR bstrRegistryKey) mut => VT.AddItem(ref this, bstrRegistryKey);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self, VARIANT varIndex, out BSTR pbstrRegistryKey) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self, BSTR bstrRegistryKey) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusRegistryKeys self, VARIANT varIndex) RemoveItem;
		}
	}
	[CRepr]
	public struct ISClusCryptoKeys : IDispatch
	{
		public const new Guid IID = .(0xf2e6072c, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out BSTR pbstrCyrptoKey) mut => VT.get_Item(ref this, varIndex, out pbstrCyrptoKey);
		public HRESULT AddItem(BSTR bstrCryptoKey) mut => VT.AddItem(ref this, bstrCryptoKey);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self, VARIANT varIndex, out BSTR pbstrCyrptoKey) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self, BSTR bstrCryptoKey) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusCryptoKeys self, VARIANT varIndex) RemoveItem;
		}
	}
	[CRepr]
	public struct ISClusResDependents : IDispatch
	{
		public const new Guid IID = .(0xf2e6072e, 0x2631, 0x11d1, 0x89, 0xf1, 0x00, 0xa0, 0xc9, 0x0d, 0x06, 0x1e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get__NewEnum(out IUnknown* retval) mut => VT.get__NewEnum(ref this, out retval);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT get_Item(VARIANT varIndex, out ISClusResource* ppClusResource) mut => VT.get_Item(ref this, varIndex, out ppClusResource);
		public HRESULT CreateItem(BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) mut => VT.CreateItem(ref this, bstrResourceName, bstrResourceType, dwFlags, out ppClusterResource);
		public HRESULT DeleteItem(VARIANT varIndex) mut => VT.DeleteItem(ref this, varIndex);
		public HRESULT AddItem(ref ISClusResource pResource) mut => VT.AddItem(ref this, ref pResource);
		public HRESULT RemoveItem(VARIANT varIndex) mut => VT.RemoveItem(ref this, varIndex);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, out IUnknown* retval) get__NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, VARIANT varIndex, out ISClusResource* ppClusResource) get_Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, BSTR bstrResourceName, BSTR bstrResourceType, CLUSTER_RESOURCE_CREATE_FLAGS dwFlags, out ISClusResource* ppClusterResource) CreateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, VARIANT varIndex) DeleteItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, ref ISClusResource pResource) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISClusResDependents self, VARIANT varIndex) RemoveItem;
		}
	}
	#endregion
	
	#region Functions
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetNodeClusterState(PWSTR lpszNodeName, out uint32 pdwClusterState);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* OpenCluster(PWSTR lpszClusterName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* OpenClusterEx(PWSTR lpszClusterName, uint32 DesiredAccess, uint32* GrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseCluster(ref _HCLUSTER hCluster);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterName(ref _HCLUSTER hCluster, PWSTR lpszNewClusterName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterInformation(ref _HCLUSTER hCluster, char16* lpszClusterName, out uint32 lpcchClusterName, CLUSTERVERSIONINFO* lpClusterInfo);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterQuorumResource(ref _HCLUSTER hCluster, char16* lpszResourceName, out uint32 lpcchResourceName, char16* lpszDeviceName, out uint32 lpcchDeviceName, out uint32 lpdwMaxQuorumLogSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterQuorumResource(ref _HRESOURCE hResource, PWSTR lpszDeviceName, uint32 dwMaxQuoLogSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 BackupClusterDatabase(ref _HCLUSTER hCluster, PWSTR lpszPathName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RestoreClusterDatabase(PWSTR lpszPathName, BOOL bForce, PWSTR lpszQuorumDriveLetter);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterNetworkPriorityOrder(ref _HCLUSTER hCluster, uint32 NetworkCount, _HNETWORK** NetworkList);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterServiceAccountPassword(PWSTR lpszClusterName, PWSTR lpszNewPassword, uint32 dwFlags, CLUSTER_SET_PASSWORD_STATUS* lpReturnStatusBuffer, out uint32 lpcbReturnStatusBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterControl(ref _HCLUSTER hCluster, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterUpgradeFunctionalLevel(ref _HCLUSTER hCluster, BOOL perform, PCLUSTER_UPGRADE_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCHANGE* CreateClusterNotifyPortV2(ref _HCHANGE hChange, ref _HCLUSTER hCluster, ref NOTIFY_FILTER_AND_TYPE Filters, uint32 dwFilterCount, uint dwNotifyKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterClusterNotifyV2(ref _HCHANGE hChange, NOTIFY_FILTER_AND_TYPE Filter, HANDLE hObject, uint dwNotifyKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetNotifyEventHandle(ref _HCHANGE hChange, out HANDLE lphTargetEvent);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterNotifyV2(ref _HCHANGE hChange, out uint lpdwNotifyKey, NOTIFY_FILTER_AND_TYPE* pFilterAndType, uint8* buffer, uint32* lpbBufferSize, char16* lpszObjectId, uint32* lpcchObjectId, char16* lpszParentId, uint32* lpcchParentId, char16* lpszName, uint32* lpcchName, char16* lpszType, uint32* lpcchType, uint32 dwMilliseconds);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCHANGE* CreateClusterNotifyPort(ref _HCHANGE hChange, ref _HCLUSTER hCluster, uint32 dwFilter, uint dwNotifyKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterClusterNotify(ref _HCHANGE hChange, uint32 dwFilterType, HANDLE hObject, uint dwNotifyKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterNotify(ref _HCHANGE hChange, out uint lpdwNotifyKey, out uint32 lpdwFilterType, char16* lpszName, out uint32 lpcchName, uint32 dwMilliseconds);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterNotifyPort(ref _HCHANGE hChange);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSENUM* ClusterOpenEnum(ref _HCLUSTER hCluster, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGetEnumCount(ref _HCLUSENUM hEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterEnum(ref _HCLUSENUM hEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterCloseEnum(ref _HCLUSENUM hEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSENUMEX* ClusterOpenEnumEx(ref _HCLUSTER hCluster, uint32 dwType, void* pOptions);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGetEnumCountEx(ref _HCLUSENUMEX hClusterEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterEnumEx(ref _HCLUSENUMEX hClusterEnum, uint32 dwIndex, out CLUSTER_ENUM_ITEM pItem, out uint32 cbItem);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterCloseEnumEx(ref _HCLUSENUMEX hClusterEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPSET* CreateClusterGroupSet(ref _HCLUSTER hCluster, PWSTR groupSetName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPSET* OpenClusterGroupSet(ref _HCLUSTER hCluster, PWSTR lpszGroupSetName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterGroupSet(ref _HGROUPSET hGroupSet);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DeleteClusterGroupSet(ref _HGROUPSET hGroupSet);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterAddGroupToGroupSet(ref _HGROUPSET hGroupSet, ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterAddGroupToGroupSetWithDomains(ref _HGROUPSET hGroupSet, ref _HGROUP hGroup, uint32 faultDomain, uint32 updateDomain);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRemoveGroupFromGroupSet(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupSetControl(ref _HGROUPSET hGroupSet, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterGroupDependency(ref _HGROUP hDependentGroup, ref _HGROUP hProviderGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetGroupDependencyExpression(ref _HGROUP hGroup, PWSTR lpszDependencyExpression);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterGroupDependency(ref _HGROUP hGroup, ref _HGROUP hDependsOn);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterGroupSetDependency(ref _HGROUPSET hDependentGroupSet, ref _HGROUPSET hProviderGroupSet);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterGroupSetDependencyExpression(ref _HGROUPSET hGroupSet, PWSTR lpszDependencyExprssion);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterGroupSetDependency(ref _HGROUPSET hGroupSet, ref _HGROUPSET hDependsOn);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterGroupToGroupSetDependency(ref _HGROUP hDependentGroup, ref _HGROUPSET hProviderGroupSet);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterGroupToGroupSetDependency(ref _HGROUP hGroup, ref _HGROUPSET hDependsOn);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPSETENUM* ClusterGroupSetOpenEnum(out _HCLUSTER hCluster);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupSetGetEnumCount(out _HGROUPSETENUM hGroupSetEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupSetEnum(ref _HGROUPSETENUM hGroupSetEnum, uint32 dwIndex, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupSetCloseEnum(out _HGROUPSETENUM hGroupSetEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddCrossClusterGroupSetDependency(ref _HGROUPSET hDependentGroupSet, PWSTR lpRemoteClusterName, PWSTR lpRemoteGroupSetName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveCrossClusterGroupSetDependency(ref _HGROUPSET hDependentGroupSet, PWSTR lpRemoteClusterName, PWSTR lpRemoteGroupSetName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPSET* CreateClusterAvailabilitySet(ref _HCLUSTER hCluster, PWSTR lpAvailabilitySetName, ref CLUSTER_AVAILABILITY_SET_CONFIG pAvailabilitySetConfig);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeReplacement(ref _HCLUSTER hCluster, PWSTR lpszNodeNameCurrent, PWSTR lpszNodeNameNew);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterCreateAffinityRule(ref _HCLUSTER hCluster, PWSTR ruleName, CLUS_AFFINITY_RULE_TYPE ruleType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRemoveAffinityRule(ref _HCLUSTER hCluster, PWSTR ruleName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterAddGroupToAffinityRule(ref _HCLUSTER hCluster, PWSTR ruleName, ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRemoveGroupFromAffinityRule(ref _HCLUSTER hCluster, PWSTR ruleName, ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterAffinityRuleControl(ref _HCLUSTER hCluster, PWSTR affinityRuleName, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODE* OpenClusterNode(ref _HCLUSTER hCluster, PWSTR lpszNodeName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODE* OpenClusterNodeEx(ref _HCLUSTER hCluster, PWSTR lpszNodeName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODE* OpenClusterNodeById(ref _HCLUSTER hCluster, uint32 nodeId);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterNode(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_NODE_STATE GetClusterNodeState(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterNodeId(_HNODE* hNode, char16* lpszNodeId, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* GetClusterFromNode(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 PauseClusterNode(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResumeClusterNode(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 EvictClusterNode(ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETINTERFACEENUM* ClusterNetInterfaceOpenEnum(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PWSTR lpszNetworkName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetInterfaceEnum(ref _HNETINTERFACEENUM hNetInterfaceEnum, uint32 dwIndex, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetInterfaceCloseEnum(ref _HNETINTERFACEENUM hNetInterfaceEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODEENUM* ClusterNodeOpenEnum(ref _HNODE hNode, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODEENUMEX* ClusterNodeOpenEnumEx(ref _HNODE hNode, uint32 dwType, void* pOptions);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeGetEnumCountEx(ref _HNODEENUMEX hNodeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeEnumEx(ref _HNODEENUMEX hNodeEnum, uint32 dwIndex, out CLUSTER_ENUM_ITEM pItem, out uint32 cbItem);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeCloseEnumEx(ref _HNODEENUMEX hNodeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeGetEnumCount(ref _HNODEENUM hNodeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeCloseEnum(ref _HNODEENUM hNodeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeEnum(ref _HNODEENUM hNodeEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 EvictClusterNodeEx(ref _HNODE hNode, uint32 dwTimeOut, out HRESULT phrCleanupStatus);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterResourceTypeKey(ref _HCLUSTER hCluster, PWSTR lpszTypeName, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUP* CreateClusterGroup(ref _HCLUSTER hCluster, PWSTR lpszGroupName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUP* OpenClusterGroup(ref _HCLUSTER hCluster, PWSTR lpszGroupName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUP* OpenClusterGroupEx(ref _HCLUSTER hCluster, PWSTR lpszGroupName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 PauseClusterNodeEx(ref _HNODE hNode, BOOL bDrainNode, uint32 dwPauseFlags, _HNODE* hNodeDrainTarget);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResumeClusterNodeEx(ref _HNODE hNode, CLUSTER_NODE_RESUME_FAILBACK_TYPE eResumeFailbackType, uint32 dwResumeFlagsReserved);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUP* CreateClusterGroupEx(ref _HCLUSTER hCluster, PWSTR lpszGroupName, CLUSTER_CREATE_GROUP_INFO* pGroupInfo);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPENUMEX* ClusterGroupOpenEnumEx(ref _HCLUSTER hCluster, PWSTR lpszProperties, uint32 cbProperties, PWSTR lpszRoProperties, uint32 cbRoProperties, uint32 dwFlags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupGetEnumCountEx(ref _HGROUPENUMEX hGroupEnumEx);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupEnumEx(ref _HGROUPENUMEX hGroupEnumEx, uint32 dwIndex, out CLUSTER_GROUP_ENUM_ITEM pItem, out uint32 cbItem);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupCloseEnumEx(ref _HGROUPENUMEX hGroupEnumEx);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESENUMEX* ClusterResourceOpenEnumEx(ref _HCLUSTER hCluster, PWSTR lpszProperties, uint32 cbProperties, PWSTR lpszRoProperties, uint32 cbRoProperties, uint32 dwFlags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceGetEnumCountEx(ref _HRESENUMEX hResourceEnumEx);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceEnumEx(ref _HRESENUMEX hResourceEnumEx, uint32 dwIndex, out CLUSTER_RESOURCE_ENUM_ITEM pItem, out uint32 cbItem);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceCloseEnumEx(ref _HRESENUMEX hResourceEnumEx);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OnlineClusterGroupEx(ref _HGROUP hGroup, _HNODE* hDestinationNode, uint32 dwOnlineFlags, uint8* lpInBuffer, uint32 cbInBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OfflineClusterGroupEx(ref _HGROUP hGroup, uint32 dwOfflineFlags, uint8* lpInBuffer, uint32 cbInBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OnlineClusterResourceEx(ref _HRESOURCE hResource, uint32 dwOnlineFlags, uint8* lpInBuffer, uint32 cbInBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OfflineClusterResourceEx(ref _HRESOURCE hResource, uint32 dwOfflineFlags, uint8* lpInBuffer, uint32 cbInBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 MoveClusterGroupEx(ref _HGROUP hGroup, _HNODE* hDestinationNode, uint32 dwMoveFlags, uint8* lpInBuffer, uint32 cbInBufferSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CancelClusterGroupOperation(ref _HGROUP hGroup, uint32 dwCancelFlags_RESERVED);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RestartClusterResource(ref _HRESOURCE hResource, uint32 dwFlags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterGroup(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* GetClusterFromGroup(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_GROUP_STATE GetClusterGroupState(ref _HGROUP hGroup, char16* lpszNodeName, uint32* lpcchNodeName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterGroupName(ref _HGROUP hGroup, PWSTR lpszGroupName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterGroupNodeList(ref _HGROUP hGroup, uint32 NodeCount, _HNODE** NodeList);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OnlineClusterGroup(ref _HGROUP hGroup, _HNODE* hDestinationNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 MoveClusterGroup(ref _HGROUP hGroup, _HNODE* hDestinationNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OfflineClusterGroup(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DeleteClusterGroup(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DestroyClusterGroup(ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUPENUM* ClusterGroupOpenEnum(ref _HGROUP hGroup, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupGetEnumCount(ref _HGROUPENUM hGroupEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupEnum(ref _HGROUPENUM hGroupEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszResourceName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupCloseEnum(ref _HGROUPENUM hGroupEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* CreateClusterResource(ref _HGROUP hGroup, PWSTR lpszResourceName, PWSTR lpszResourceType, uint32 dwFlags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* OpenClusterResource(ref _HCLUSTER hCluster, PWSTR lpszResourceName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* OpenClusterResourceEx(ref _HCLUSTER hCluster, PWSTR lpszResourceName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* GetClusterFromResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DeleteClusterResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_RESOURCE_STATE GetClusterResourceState(ref _HRESOURCE hResource, char16* lpszNodeName, uint32* lpcchNodeName, char16* lpszGroupName, uint32* lpcchGroupName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterResourceName(ref _HRESOURCE hResource, PWSTR lpszResourceName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 FailClusterResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OnlineClusterResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 OfflineClusterResource(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ChangeClusterResourceGroup(ref _HRESOURCE hResource, ref _HGROUP hGroup);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ChangeClusterResourceGroupEx(ref _HRESOURCE hResource, ref _HGROUP hGroup, uint64 Flags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterResourceNode(ref _HRESOURCE hResource, ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterResourceNode(ref _HRESOURCE hResource, ref _HNODE hNode);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterResourceDependency(ref _HRESOURCE hResource, ref _HRESOURCE hDependsOn);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterResourceDependency(ref _HRESOURCE hResource, ref _HRESOURCE hDependsOn);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterResourceDependencyExpression(ref _HRESOURCE hResource, PWSTR lpszDependencyExpression);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterResourceDependencyExpression(ref _HRESOURCE hResource, char16* lpszDependencyExpression, out uint32 lpcchDependencyExpression);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddResourceToClusterSharedVolumes(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveResourceFromClusterSharedVolumes(ref _HRESOURCE hResource);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 IsFileOnClusterSharedVolume(PWSTR lpszPathName, out BOOL pbFileIsOnSharedVolume);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterSharedVolumeSetSnapshotState(Guid guidSnapshotSet, PWSTR lpszVolumeName, CLUSTER_SHARED_VOLUME_SNAPSHOT_STATE state);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CanResourceBeDependent(ref _HRESOURCE hResource, ref _HRESOURCE hResourceDependent);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceControl(ref _HRESOURCE hResource, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceControlAsUser(ref _HRESOURCE hResource, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 cbInBufferSize, void* lpOutBuffer, uint32 cbOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceTypeControl(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceTypeControlAsUser(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterGroupControl(ref _HGROUP hGroup, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNodeControl(ref _HNODE hNode, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetClusterResourceNetworkName(ref _HRESOURCE hResource, char16* lpBuffer, out uint32 nSize);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESENUM* ClusterResourceOpenEnum(ref _HRESOURCE hResource, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceGetEnumCount(ref _HRESENUM hResEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceEnum(ref _HRESENUM hResEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceCloseEnum(ref _HRESENUM hResEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CreateClusterResourceType(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, PWSTR lpszDisplayName, PWSTR lpszResourceTypeDll, uint32 dwLooksAlivePollInterval, uint32 dwIsAlivePollInterval);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DeleteClusterResourceType(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESTYPEENUM* ClusterResourceTypeOpenEnum(ref _HCLUSTER hCluster, PWSTR lpszResourceTypeName, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceTypeGetEnumCount(ref _HRESTYPEENUM hResTypeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceTypeEnum(ref _HRESTYPEENUM hResTypeEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterResourceTypeCloseEnum(ref _HRESTYPEENUM hResTypeEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETWORK* OpenClusterNetwork(ref _HCLUSTER hCluster, PWSTR lpszNetworkName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETWORK* OpenClusterNetworkEx(ref _HCLUSTER hCluster, PWSTR lpszNetworkName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterNetwork(ref _HNETWORK hNetwork);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* GetClusterFromNetwork(ref _HNETWORK hNetwork);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETWORKENUM* ClusterNetworkOpenEnum(ref _HNETWORK hNetwork, uint32 dwType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetworkGetEnumCount(ref _HNETWORKENUM hNetworkEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetworkEnum(ref _HNETWORKENUM hNetworkEnum, uint32 dwIndex, out uint32 lpdwType, char16* lpszName, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetworkCloseEnum(ref _HNETWORKENUM hNetworkEnum);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_NETWORK_STATE GetClusterNetworkState(ref _HNETWORK hNetwork);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetClusterNetworkName(ref _HNETWORK hNetwork, PWSTR lpszName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterNetworkId(ref _HNETWORK hNetwork, char16* lpszNetworkId, out uint32 lpcchName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetworkControl(ref _HNETWORK hNetwork, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETINTERFACE* OpenClusterNetInterface(ref _HCLUSTER hCluster, PWSTR lpszInterfaceName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNETINTERFACE* OpenClusterNetInterfaceEx(ref _HCLUSTER hCluster, PWSTR lpszInterfaceName, uint32 dwDesiredAccess, uint32* lpdwGrantedAccess);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetClusterNetInterface(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PWSTR lpszNetworkName, char16* lpszInterfaceName, out uint32 lpcchInterfaceName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL CloseClusterNetInterface(ref _HNETINTERFACE hNetInterface);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* GetClusterFromNetInterface(ref _HNETINTERFACE hNetInterface);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_NETINTERFACE_STATE GetClusterNetInterfaceState(ref _HNETINTERFACE hNetInterface);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterNetInterfaceControl(ref _HNETINTERFACE hNetInterface, _HNODE* hHostNode, uint32 dwControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterKey(ref _HCLUSTER hCluster, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterGroupKey(ref _HGROUP hGroup, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterResourceKey(ref _HRESOURCE hResource, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterNodeKey(ref _HNODE hNode, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterNetworkKey(ref _HNETWORK hNetwork, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HKEY GetClusterNetInterfaceKey(ref _HNETINTERFACE hNetInterface, uint32 samDesired);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCreateKey(HKEY hKey, PWSTR lpszSubKey, uint32 dwOptions, uint32 samDesired, SECURITY_ATTRIBUTES* lpSecurityAttributes, out HKEY phkResult, uint32* lpdwDisposition);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegOpenKey(HKEY hKey, PWSTR lpszSubKey, uint32 samDesired, out HKEY phkResult);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegDeleteKey(HKEY hKey, PWSTR lpszSubKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseKey(HKEY hKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegEnumKey(HKEY hKey, uint32 dwIndex, char16* lpszName, out uint32 lpcchName, FILETIME* lpftLastWriteTime);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRegSetValue(HKEY hKey, PWSTR lpszValueName, uint32 dwType, in uint8 lpData, uint32 cbData);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRegDeleteValue(HKEY hKey, PWSTR lpszValueName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegQueryValue(HKEY hKey, PWSTR lpszValueName, uint32* lpdwValueType, uint8* lpData, uint32* lpcbData);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterRegEnumValue(HKEY hKey, uint32 dwIndex, char16* lpszValueName, out uint32 lpcchValueName, uint32* lpdwType, uint8* lpData, uint32* lpcbData);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegQueryInfoKey(HKEY hKey, ref uint32 lpcSubKeys, ref uint32 lpcchMaxSubKeyLen, ref uint32 lpcValues, ref uint32 lpcchMaxValueNameLen, ref uint32 lpcbMaxValueLen, ref uint32 lpcbSecurityDescriptor, ref FILETIME lpftLastWriteTime);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegGetKeySecurity(HKEY hKey, uint32 RequestedInformation, PSECURITY_DESCRIPTOR pSecurityDescriptor, out uint32 lpcbSecurityDescriptor);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegSetKeySecurity(HKEY hKey, uint32 SecurityInformation, PSECURITY_DESCRIPTOR pSecurityDescriptor);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegSyncDatabase(ref _HCLUSTER hCluster, uint32 flags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCreateBatch(HKEY hKey, out _HREGBATCH* pHREGBATCH);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegBatchAddCommand(ref _HREGBATCH hRegBatch, CLUSTER_REG_COMMAND dwCommand, PWSTR wzName, uint32 dwOptions, void* lpData, uint32 cbData);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseBatch(ref _HREGBATCH hRegBatch, BOOL bCommit, int32* failedCommandNumber);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseBatchEx(ref _HREGBATCH hRegBatch, uint32 flags, int32* failedCommandNumber);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegBatchReadCommand(ref _HREGBATCHNOTIFICATION hBatchNotification, out CLUSTER_BATCH_COMMAND pBatchCommand);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegBatchCloseNotification(ref _HREGBATCHNOTIFICATION hBatchNotification);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCreateBatchNotifyPort(HKEY hKey, out _HREGBATCHPORT* phBatchNotifyPort);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseBatchNotifyPort(ref _HREGBATCHPORT hBatchNotifyPort);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegGetBatchNotification(ref _HREGBATCHPORT hBatchNotify, out _HREGBATCHNOTIFICATION* phBatchNotification);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCreateReadBatch(HKEY hKey, out _HREGREADBATCH* phRegReadBatch);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegReadBatchAddCommand(ref _HREGREADBATCH hRegReadBatch, PWSTR wzSubkeyName, PWSTR wzValueName);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseReadBatch(ref _HREGREADBATCH hRegReadBatch, out _HREGREADBATCHREPLY* phRegReadBatchReply);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseReadBatchEx(ref _HREGREADBATCH hRegReadBatch, uint32 flags, out _HREGREADBATCHREPLY* phRegReadBatchReply);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegReadBatchReplyNextCommand(ref _HREGREADBATCHREPLY hRegReadBatchReply, out CLUSTER_READ_BATCH_COMMAND pBatchCommand);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 ClusterRegCloseReadBatchReply(ref _HREGREADBATCHREPLY hRegReadBatchReply);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterSetAccountAccess(ref _HCLUSTER hCluster, PWSTR szAccountSID, uint32 dwAccess, uint32 dwControlType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSTER* CreateCluster(ref CREATE_CLUSTER_CONFIG pConfig, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CreateClusterNameAccount(ref _HCLUSTER hCluster, ref CREATE_CLUSTER_NAME_ACCOUNT pConfig, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterNameAccount(ref _HCLUSTER hCluster, BOOL bDeleteComputerObjects);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DetermineCNOResTypeFromNodelist(uint32 cNodes, ref PWSTR ppszNodeNames, out CLUSTER_MGMT_POINT_RESTYPE pCNOResType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DetermineCNOResTypeFromCluster(ref _HCLUSTER hCluster, out CLUSTER_MGMT_POINT_RESTYPE pCNOResType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DetermineClusterCloudTypeFromNodelist(uint32 cNodes, ref PWSTR ppszNodeNames, out CLUSTER_CLOUD_TYPE pCloudType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DetermineClusterCloudTypeFromCluster(ref _HCLUSTER hCluster, out CLUSTER_CLOUD_TYPE pCloudType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetNodeCloudTypeDW(PWSTR ppszNodeName, out uint32 NodeCloudType);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterClusterResourceTypeNotifyV2(ref _HCHANGE hChange, ref _HCLUSTER hCluster, int64 Flags, PWSTR resTypeName, uint dwNotifyKey);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODE* AddClusterNode(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 AddClusterStorageNode(ref _HCLUSTER hCluster, PWSTR lpszNodeName, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg, PWSTR lpszClusterStorageNodeDescription, PWSTR lpszClusterStorageNodeLocation);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HNODE* AddClusterNodeEx(ref _HCLUSTER hCluster, PWSTR lpszNodeName, uint32 dwFlags, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RemoveClusterStorageNode(ref _HCLUSTER hCluster, PWSTR lpszClusterStorageEnclosureName, uint32 dwTimeout, uint32 dwFlags);
	[Import("clusapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DestroyCluster(ref _HCLUSTER hCluster, PCLUSTER_SETUP_PROGRESS_CALLBACK pfnProgressCallback, void* pvCallbackArg, BOOL fdeleteVirtualComputerObjects);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 InitializeClusterHealthFault(out CLUSTER_HEALTH_FAULT clusterHealthFault);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 InitializeClusterHealthFaultArray(out CLUSTER_HEALTH_FAULT_ARRAY clusterHealthFaultArray);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 FreeClusterHealthFault(out CLUSTER_HEALTH_FAULT clusterHealthFault);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 FreeClusterHealthFaultArray(out CLUSTER_HEALTH_FAULT_ARRAY clusterHealthFaultArray);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusGetClusterHealthFaults(ref _HCLUSTER hCluster, out CLUSTER_HEALTH_FAULT_ARRAY objects, uint32 flags);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusRemoveClusterHealthFault(ref _HCLUSTER hCluster, PWSTR id, uint32 flags);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusAddClusterHealthFault(ref _HCLUSTER hCluster, ref CLUSTER_HEALTH_FAULT failure, uint32 param2);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilStartResourceService(PWSTR pszServiceName, out int phServiceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilVerifyResourceService(PWSTR pszServiceName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilStopResourceService(PWSTR pszServiceName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilVerifyService(SC_HANDLE hServiceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilStopService(SC_HANDLE hServiceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilCreateDirectoryTree(PWSTR pszPath);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilIsPathValid(PWSTR pszPath);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumProperties(in RESUTIL_PROPERTY_ITEM pPropertyTable, PWSTR pszOutProperties, uint32 cbOutPropertiesSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumPrivateProperties(HKEY hkeyClusterKey, PWSTR pszOutProperties, uint32 cbOutPropertiesSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetProperties(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetAllProperties(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetPrivateProperties(HKEY hkeyClusterKey, void* pOutPropertyList, uint32 cbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetPropertySize(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTableItem, out uint32 pcbOutPropertyListSize, out uint32 pnPropertyCount);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetProperty(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTableItem, void** pOutPropertyItem, out uint32 pcbOutPropertyItemSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilVerifyPropertyTable(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, uint8* pOutParams);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetPropertyTable(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, uint8* pOutParams);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetPropertyTableEx(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, BOOL bAllowUnknownProperties, void* pInPropertyList, uint32 cbInPropertyListSize, BOOL bForceWrite, out uint8 pOutParams);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetPropertyParameterBlock(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, in uint8 pInParams, void* pInPropertyList, uint32 cbInPropertyListSize, out uint8 pOutParams);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetPropertyParameterBlockEx(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* Reserved, in uint8 pInParams, void* pInPropertyList, uint32 cbInPropertyListSize, BOOL bForceWrite, out uint8 pOutParams);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetUnknownProperties(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pInPropertyList, uint32 cbInPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetPropertiesToParameterBlock(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, out uint8 pOutParams, BOOL bCheckForRequiredProperties, PWSTR* pszNameOfPropInError);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilPropertyListFromParameterBlock(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, out uint32 pcbOutPropertyListSize, in uint8 pInParams, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilDupParameterBlock(out uint8 pOutParams, in uint8 pInParams, in RESUTIL_PROPERTY_ITEM pPropertyTable);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ResUtilFreeParameterBlock(out uint8 pOutParams, in uint8 pInParams, in RESUTIL_PROPERTY_ITEM pPropertyTable);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilAddUnknownProperties(HKEY hkeyClusterKey, in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyList, uint32 pcbOutPropertyListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetPrivatePropertyList(HKEY hkeyClusterKey, void* pInPropertyList, uint32 cbInPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilVerifyPrivatePropertyList(void* pInPropertyList, uint32 cbInPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR ResUtilDupString(PWSTR pszInString);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetBinaryValue(HKEY hkeyClusterKey, PWSTR pszValueName, uint8** ppbOutValue, out uint32 pcbOutValueSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR ResUtilGetSzValue(HKEY hkeyClusterKey, PWSTR pszValueName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetDwordValue(HKEY hkeyClusterKey, PWSTR pszValueName, out uint32 pdwOutValue, uint32 dwDefaultValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetQwordValue(HKEY hkeyClusterKey, PWSTR pszValueName, out uint64 pqwOutValue, uint64 qwDefaultValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetBinaryValue(HKEY hkeyClusterKey, PWSTR pszValueName, in uint8 pbNewValue, uint32 cbNewValueSize, uint8** ppbOutValue, out uint32 pcbOutValueSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetSzValue(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, PWSTR* ppszOutString);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetExpandSzValue(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, PWSTR* ppszOutString);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetMultiSzValue(HKEY hkeyClusterKey, PWSTR pszValueName, PWSTR pszNewValue, uint32 cbNewValueSize, PWSTR* ppszOutValue, uint32* pcbOutValueSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetDwordValue(HKEY hkeyClusterKey, PWSTR pszValueName, uint32 dwNewValue, out uint32 pdwOutValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetQwordValue(HKEY hkeyClusterKey, PWSTR pszValueName, uint64 qwNewValue, uint64* pqwOutValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetValueEx(HKEY hkeyClusterKey, PWSTR valueName, uint32 valueType, in uint8 valueData, uint32 valueSize, uint32 flags);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetBinaryProperty(out uint8* ppbOutValue, out uint32 pcbOutValueSize, in CLUSPROP_BINARY pValueStruct, uint8* pbOldValue, uint32 cbOldValueSize, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetSzProperty(out PWSTR ppszOutValue, in CLUSPROP_SZ pValueStruct, PWSTR pszOldValue, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetMultiSzProperty(out PWSTR ppszOutValue, out uint32 pcbOutValueSize, in CLUSPROP_SZ pValueStruct, PWSTR pszOldValue, uint32 cbOldValueSize, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetDwordProperty(out uint32 pdwOutValue, in CLUSPROP_DWORD pValueStruct, uint32 dwOldValue, uint32 dwMinimum, uint32 dwMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetLongProperty(out int32 plOutValue, in CLUSPROP_LONG pValueStruct, int32 lOldValue, int32 lMinimum, int32 lMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetFileTimeProperty(out FILETIME pftOutValue, in CLUSPROP_FILETIME pValueStruct, FILETIME ftOldValue, FILETIME ftMinimum, FILETIME ftMaximum, out uint8* ppPropertyList, out uint32 pcbPropertyListSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void* ResUtilGetEnvironmentWithNetName(ref _HRESOURCE hResource);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFreeEnvironment(void* lpEnvironment);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR ResUtilExpandEnvironmentStrings(PWSTR pszSrc);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetResourceServiceEnvironment(PWSTR pszServiceName, out _HRESOURCE hResource, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilRemoveResourceServiceEnvironment(PWSTR pszServiceName, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetResourceServiceStartParameters(PWSTR pszServiceName, SC_HANDLE schSCMHandle, out int phService, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindSzProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindExpandSzProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindExpandedSzProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, PWSTR* pszPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindDwordProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out uint32 pdwPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindBinaryProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, uint8** pbPropertyValue, uint32* pcbPropertyValueSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindMultiSzProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out PWSTR pszPropertyValue, out uint32 pcbPropertyValueSize);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindLongProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out int32 plPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindULargeIntegerProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out uint64 plPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindFileTimeProperty(void* pPropertyList, uint32 cbPropertyListSize, PWSTR pszPropertyName, out FILETIME pftPropertyValue);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusWorkerCreate(out CLUS_WORKER lpWorker, PWORKER_START_ROUTINE lpStartAddress, void* lpParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ClusWorkerCheckTerminate(out CLUS_WORKER lpWorker);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ClusWorkerTerminate(ref CLUS_WORKER lpWorker);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusWorkerTerminateEx(out CLUS_WORKER ClusWorker, uint32 TimeoutInMilliseconds, BOOL WaitOnly);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusWorkersTerminate(CLUS_WORKER** ClusWorkers, uint ClusWorkersCount, uint32 TimeoutInMilliseconds, BOOL WaitOnly);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilResourcesEqual(out _HRESOURCE hSelf, out _HRESOURCE hResource);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilResourceTypesEqual(PWSTR lpszResourceTypeName, out _HRESOURCE hResource);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilIsResourceClassEqual(out CLUS_RESOURCE_CLASS_INFO prci, out _HRESOURCE hResource);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumResources(out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK pResCallBack, void* pParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumResourcesEx(out _HCLUSTER hCluster, out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK_EX pResCallBack, void* pParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependency(HANDLE hSelf, PWSTR lpszResourceType);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependencyByName(out _HCLUSTER hCluster, HANDLE hSelf, PWSTR lpszResourceType, BOOL bRecurse);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependencyByClass(out _HCLUSTER hCluster, HANDLE hSelf, out CLUS_RESOURCE_CLASS_INFO prci, BOOL bRecurse);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceNameDependency(PWSTR lpszResourceName, PWSTR lpszResourceType);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetResourceDependentIPAddressProps(ref _HRESOURCE hResource, char16* pszAddress, out uint32 pcchAddress, char16* pszSubnetMask, out uint32 pcchSubnetMask, char16* pszNetwork, out uint32 pcchNetwork);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilFindDependentDiskResourceDriveLetter(ref _HCLUSTER hCluster, ref _HRESOURCE hResource, char16* pszDriveLetter, out uint32 pcchDriveLetter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilTerminateServiceProcessFromResDll(uint32 dwServicePid, BOOL bOffline, out uint32 pdwResourceState, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetPropertyFormats(in RESUTIL_PROPERTY_ITEM pPropertyTable, void* pOutPropertyFormatList, uint32 cbPropertyFormatListSize, out uint32 pcbBytesReturned, out uint32 pcbRequired);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetCoreClusterResources(ref _HCLUSTER hCluster, out _HRESOURCE* phClusterNameResource, out _HRESOURCE* phClusterIPAddressResource, out _HRESOURCE* phClusterQuorumResource);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetResourceName(ref _HRESOURCE hResource, char16* pszResourceName, out uint32 pcchResourceNameInOut);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern CLUSTER_ROLE_STATE ResUtilGetClusterRoleState(ref _HCLUSTER hCluster, CLUSTER_ROLE eClusterRole);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ClusterIsPathOnSharedVolume(PWSTR lpszPathName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ClusterGetVolumePathName(PWSTR lpszFileName, PWSTR lpszVolumePathName, uint32 cchBufferLength);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ClusterGetVolumeNameForVolumeMountPoint(PWSTR lpszVolumeMountPoint, PWSTR lpszVolumeName, uint32 cchBufferLength);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterPrepareSharedVolumeForBackup(PWSTR lpszFileName, PWSTR lpszVolumePathName, out uint32 lpcchVolumePathName, PWSTR lpszVolumeName, out uint32 lpcchVolumeName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterClearBackupStateForSharedVolume(PWSTR lpszVolumePathName);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilSetResourceServiceStartParametersEx(PWSTR pszServiceName, SC_HANDLE schSCMHandle, out int phService, uint32 dwDesiredAccess, PLOG_EVENT_ROUTINE pfnLogEvent, int hResourceHandle);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumResourcesEx2(out _HCLUSTER hCluster, out _HRESOURCE hSelf, PWSTR lpszResTypeName, LPRESOURCE_CALLBACK_EX pResCallBack, void* pParameter, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependencyEx(HANDLE hSelf, PWSTR lpszResourceType, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependencyByNameEx(out _HCLUSTER hCluster, HANDLE hSelf, PWSTR lpszResourceType, BOOL bRecurse, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceDependencyByClassEx(out _HCLUSTER hCluster, HANDLE hSelf, out CLUS_RESOURCE_CLASS_INFO prci, BOOL bRecurse, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HRESOURCE* ResUtilGetResourceNameDependencyEx(PWSTR lpszResourceName, PWSTR lpszResourceType, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetCoreClusterResourcesEx(ref _HCLUSTER hClusterIn, _HRESOURCE** phClusterNameResourceOut, _HRESOURCE** phClusterQuorumResourceOut, uint32 dwDesiredAccess);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSCRYPTPROVIDER* OpenClusterCryptProvider(PWSTR lpszResource, ref int8 lpszProvider, uint32 dwType, uint32 dwFlags);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HCLUSCRYPTPROVIDER* OpenClusterCryptProviderEx(PWSTR lpszResource, PWSTR lpszKeyname, ref int8 lpszProvider, uint32 dwType, uint32 dwFlags);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 CloseClusterCryptProvider(ref _HCLUSCRYPTPROVIDER hClusCryptProvider);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterEncrypt(ref _HCLUSCRYPTPROVIDER hClusCryptProvider, uint8* pData, uint32 cbData, out uint8* ppData, out uint32 pcbData);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ClusterDecrypt(ref _HCLUSCRYPTPROVIDER hClusCryptProvider, ref uint8 pCryptInput, uint32 cbCryptInput, out uint8* ppCryptOutput, out uint32 pcbCryptOutput);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 FreeClusterCrypt(void* pCryptInfo);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilVerifyShutdownSafe(uint32 flags, uint32 reason, out uint32 pResult);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilPaxosComparer(in PaxosTagCStruct left, in PaxosTagCStruct right);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ResUtilLeftPaxosIsLessThanRight(in PaxosTagCStruct left, in PaxosTagCStruct right);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilsDeleteKeyTree(HKEY key, PWSTR keyName, BOOL treatNoKeyAsError);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGroupsEqual(out _HGROUP hSelf, out _HGROUP hGroup, out BOOL pEqual);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumGroups(out _HCLUSTER hCluster, out _HGROUP hSelf, LPGROUP_CALLBACK_EX pResCallBack, void* pParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilEnumGroupsEx(out _HCLUSTER hCluster, out _HGROUP hSelf, CLUSGROUP_TYPE groupType, LPGROUP_CALLBACK_EX pResCallBack, void* pParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilDupGroup(out _HGROUP group, out _HGROUP* copy);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetClusterGroupType(out _HGROUP hGroup, out CLUSGROUP_TYPE groupType);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern _HGROUP* ResUtilGetCoreGroup(out _HCLUSTER hCluster);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilResourceDepEnum(out _HRESOURCE hSelf, uint32 enumType, LPRESOURCE_CALLBACK_EX pResCallBack, void* pParameter);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilDupResource(out _HRESOURCE group, out _HRESOURCE* copy);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilGetClusterId(out _HCLUSTER hCluster, out Guid guid);
	[Import("resutils.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResUtilNodeEnum(out _HCLUSTER hCluster, LPNODE_CALLBACK pNodeCallBack, void* pParameter);
	[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterAppInstance(HANDLE ProcessHandle, ref Guid AppInstanceId, BOOL ChildrenInheritAppInstance);
	[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterAppInstanceVersion(ref Guid AppInstanceId, uint64 InstanceVersionHigh, uint64 InstanceVersionLow);
	[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 QueryAppInstanceVersion(ref Guid AppInstanceId, out uint64 InstanceVersionHigh, out uint64 InstanceVersionLow, out NTSTATUS VersionStatus);
	[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ResetAllAppInstanceVersions();
	[Import("ntlanman.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SetAppInstanceCsvFlags(HANDLE ProcessHandle, uint32 Mask, uint32 Flags);
	#endregion
}
