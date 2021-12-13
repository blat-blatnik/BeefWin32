using System;

// namespace Media.PictureAcquisition
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 PROGRESS_INDETERMINATE = -1;
		public const HRESULT PHOTOACQ_ERROR_RESTART_REQUIRED = -2147180543;
		public const uint32 PHOTOACQ_RUN_DEFAULT = 0;
		public const uint32 PHOTOACQ_NO_GALLERY_LAUNCH = 1;
		public const uint32 PHOTOACQ_DISABLE_AUTO_ROTATE = 2;
		public const uint32 PHOTOACQ_DISABLE_PLUGINS = 4;
		public const uint32 PHOTOACQ_DISABLE_GROUP_TAG_PROMPT = 8;
		public const uint32 PHOTOACQ_DISABLE_DB_INTEGRATION = 16;
		public const uint32 PHOTOACQ_DELETE_AFTER_ACQUIRE = 32;
		public const uint32 PHOTOACQ_DISABLE_DUPLICATE_DETECTION = 64;
		public const uint32 PHOTOACQ_ENABLE_THUMBNAIL_CACHING = 128;
		public const uint32 PHOTOACQ_DISABLE_METADATA_WRITE = 256;
		public const uint32 PHOTOACQ_DISABLE_THUMBNAIL_PROGRESS = 512;
		public const uint32 PHOTOACQ_DISABLE_SETTINGS_LINK = 1024;
		public const uint32 PHOTOACQ_ABORT_ON_SETTINGS_UPDATE = 2048;
		public const uint32 PHOTOACQ_IMPORT_VIDEO_AS_MULTIPLE_FILES = 4096;
		public const uint32 DSF_WPD_DEVICES = 1;
		public const uint32 DSF_WIA_CAMERAS = 2;
		public const uint32 DSF_WIA_SCANNERS = 4;
		public const uint32 DSF_STI_DEVICES = 8;
		public const uint32 DSF_TWAIN_DEVICES = 16;
		public const uint32 DSF_FS_DEVICES = 32;
		public const uint32 DSF_DV_DEVICES = 64;
		public const uint32 DSF_ALL_DEVICES = 65535;
		public const uint32 DSF_CPL_MODE = 65536;
		public const uint32 DSF_SHOW_OFFLINE = 131072;
		public const uint32 PAPS_PRESAVE = 0;
		public const uint32 PAPS_POSTSAVE = 1;
		public const uint32 PAPS_CLEANUP = 2;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum USER_INPUT_STRING_TYPE : int32
		{
			USER_INPUT_DEFAULT = 0,
			USER_INPUT_PATH_ELEMENT = 1,
		}
		[AllowDuplicates]
		public enum ERROR_ADVISE_MESSAGE_TYPE : int32
		{
			PHOTOACQUIRE_ERROR_SKIPRETRYCANCEL = 0,
			PHOTOACQUIRE_ERROR_RETRYCANCEL = 1,
			PHOTOACQUIRE_ERROR_YESNO = 2,
			PHOTOACQUIRE_ERROR_OK = 3,
		}
		[AllowDuplicates]
		public enum ERROR_ADVISE_RESULT : int32
		{
			PHOTOACQUIRE_RESULT_YES = 0,
			PHOTOACQUIRE_RESULT_NO = 1,
			PHOTOACQUIRE_RESULT_OK = 2,
			PHOTOACQUIRE_RESULT_SKIP = 3,
			PHOTOACQUIRE_RESULT_SKIP_ALL = 4,
			PHOTOACQUIRE_RESULT_RETRY = 5,
			PHOTOACQUIRE_RESULT_ABORT = 6,
		}
		[AllowDuplicates]
		public enum PROGRESS_DIALOG_IMAGE_TYPE : int32
		{
			PROGRESS_DIALOG_ICON_SMALL = 0,
			PROGRESS_DIALOG_ICON_LARGE = 1,
			PROGRESS_DIALOG_ICON_THUMBNAIL = 2,
			PROGRESS_DIALOG_BITMAP_THUMBNAIL = 3,
		}
		[AllowDuplicates]
		public enum PROGRESS_DIALOG_CHECKBOX_ID : int32
		{
			PROGRESS_DIALOG_CHECKBOX_ID_DEFAULT = 0,
		}
		[AllowDuplicates]
		public enum DEVICE_SELECTION_DEVICE_TYPE : int32
		{
			DST_UNKNOWN_DEVICE = 0,
			DST_WPD_DEVICE = 1,
			DST_WIA_DEVICE = 2,
			DST_STI_DEVICE = 3,
			DSF_TWAIN_DEVICE = 4,
			DST_FS_DEVICE = 5,
			DST_DV_DEVICE = 6,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_PhotoAcquire = .(0x00f26e02, 0xe9f2, 0x4a9f, 0x9f, 0xdd, 0x5a, 0x96, 0x2f, 0xb2, 0x6a, 0x98);
		public const Guid CLSID_PhotoAcquireAutoPlayDropTarget = .(0x00f20eb5, 0x8fd6, 0x4d9d, 0xb7, 0x5e, 0x36, 0x80, 0x17, 0x66, 0xc8, 0xf1);
		public const Guid CLSID_PhotoAcquireAutoPlayHWEventHandler = .(0x00f2b433, 0x44e4, 0x4d88, 0xb2, 0xb0, 0x26, 0x98, 0xa0, 0xa9, 0x1d, 0xba);
		public const Guid CLSID_PhotoAcquireOptionsDialog = .(0x00f210a1, 0x62f0, 0x438b, 0x9f, 0x7e, 0x96, 0x18, 0xd7, 0x2a, 0x18, 0x31);
		public const Guid CLSID_PhotoProgressDialog = .(0x00f24ca0, 0x748f, 0x4e8a, 0x89, 0x4f, 0x0e, 0x03, 0x57, 0xc6, 0x79, 0x9f);
		public const Guid CLSID_PhotoAcquireDeviceSelectionDialog = .(0x00f29a34, 0xb8a1, 0x482c, 0xbc, 0xf8, 0x3a, 0xc7, 0xb0, 0xfe, 0x8f, 0x62);
		
		// --- COM Interfaces ---
		
		public struct IPhotoAcquireItem {}
		public struct IUserInputString {}
		public struct IPhotoAcquireProgressCB {}
		public struct IPhotoProgressActionCB {}
		public struct IPhotoProgressDialog {}
		public struct IPhotoAcquireSource {}
		public struct IPhotoAcquire {}
		public struct IPhotoAcquireSettings {}
		public struct IPhotoAcquireOptionsDialog {}
		public struct IPhotoAcquireDeviceSelectionDialog {}
		public struct IPhotoAcquirePlugin {}
		
	}
}
