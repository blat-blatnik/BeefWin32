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
		
		[CRepr]
		public struct IPhotoAcquireItem : IUnknown
		{
			public const new Guid IID = .(0x00f21c97, 0x28bf, 0x4c02, 0xb8, 0x42, 0x5e, 0x4e, 0x90, 0x13, 0x9a, 0x30);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireItem *self, BSTR* pbstrItemName) GetItemName;
				public function HRESULT(IPhotoAcquireItem *self, SIZE sizeThumbnail, HBITMAP* phbmpThumbnail) GetThumbnail;
				public function HRESULT(IPhotoAcquireItem *self, PROPERTYKEY* key, PROPVARIANT* pv) GetProperty;
				public function HRESULT(IPhotoAcquireItem *self, PROPERTYKEY* key, PROPVARIANT* pv) SetProperty;
				public function HRESULT(IPhotoAcquireItem *self, IStream** ppStream) GetStream;
				public function HRESULT(IPhotoAcquireItem *self, BOOL* pfCanDelete) CanDelete;
				public function HRESULT(IPhotoAcquireItem *self) Delete;
				public function HRESULT(IPhotoAcquireItem *self, uint32* pnCount) GetSubItemCount;
				public function HRESULT(IPhotoAcquireItem *self, uint32 nItemIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetSubItemAt;
			}
		}
		[CRepr]
		public struct IUserInputString : IUnknown
		{
			public const new Guid IID = .(0x00f243a1, 0x205b, 0x45ba, 0xae, 0x26, 0xab, 0xbc, 0x53, 0xaa, 0x7a, 0x6f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUserInputString *self, BSTR* pbstrSubmitButtonText) GetSubmitButtonText;
				public function HRESULT(IUserInputString *self, BSTR* pbstrPromptTitle) GetPrompt;
				public function HRESULT(IUserInputString *self, BSTR* pbstrStringId) GetStringId;
				public function HRESULT(IUserInputString *self, USER_INPUT_STRING_TYPE* pnStringType) GetStringType;
				public function HRESULT(IUserInputString *self, BSTR* pbstrTooltipText) GetTooltipText;
				public function HRESULT(IUserInputString *self, uint32* pcchMaxLength) GetMaxLength;
				public function HRESULT(IUserInputString *self, BSTR* pbstrDefault) GetDefault;
				public function HRESULT(IUserInputString *self, uint32* pnMruCount) GetMruCount;
				public function HRESULT(IUserInputString *self, uint32 nIndex, BSTR* pbstrMruEntry) GetMruEntryAt;
				public function HRESULT(IUserInputString *self, uint32 nSize, HBITMAP* phBitmap, HICON* phIcon) GetImage;
			}
		}
		[CRepr]
		public struct IPhotoAcquireProgressCB : IUnknown
		{
			public const new Guid IID = .(0x00f2ce1e, 0x935e, 0x4248, 0x89, 0x2c, 0x13, 0x0f, 0x32, 0xc4, 0x5c, 0xb4);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireProgressCB *self, BOOL* pfCancelled) Cancelled;
				public function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartEnumeration;
				public function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireItem* pPhotoAcquireItem) FoundItem;
				public function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndEnumeration;
				public function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartTransfer;
				public function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemTransfer;
				public function HRESULT(IPhotoAcquireProgressCB *self, PWSTR pszDirectory) DirectoryCreated;
				public function HRESULT(IPhotoAcquireProgressCB *self, BOOL fOverall, uint32 nPercent) UpdateTransferPercent;
				public function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemTransfer;
				public function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndTransfer;
				public function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartDelete;
				public function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemDelete;
				public function HRESULT(IPhotoAcquireProgressCB *self, uint32 nPercent) UpdateDeletePercent;
				public function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemDelete;
				public function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndDelete;
				public function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndSession;
				public function HRESULT(IPhotoAcquireProgressCB *self, BOOL* pfDeleteAfterAcquire) GetDeleteAfterAcquire;
				public function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr, PWSTR pszErrorMessage, ERROR_ADVISE_MESSAGE_TYPE nMessageType, ERROR_ADVISE_RESULT* pnErrorAdviseResult) ErrorAdvise;
				public function HRESULT(IPhotoAcquireProgressCB *self, Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoProgressActionCB : IUnknown
		{
			public const new Guid IID = .(0x00f242d0, 0xb206, 0x4e7d, 0xb4, 0xc1, 0x47, 0x55, 0xbc, 0xbb, 0x9c, 0x9f);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoProgressActionCB *self, HWND hWndParent) DoAction;
			}
		}
		[CRepr]
		public struct IPhotoProgressDialog : IUnknown
		{
			public const new Guid IID = .(0x00f246f9, 0x0750, 0x4f08, 0x93, 0x81, 0x2c, 0xd8, 0xe9, 0x06, 0xa4, 0xae);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoProgressDialog *self, HWND hwndParent) Create;
				public function HRESULT(IPhotoProgressDialog *self, HWND* phwndProgressDialog) GetWindow;
				public function HRESULT(IPhotoProgressDialog *self) Destroy;
				public function HRESULT(IPhotoProgressDialog *self, PWSTR pszTitle) SetTitle;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fShow) ShowCheckbox;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxText) SetCheckboxText;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fChecked) SetCheckboxCheck;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxTooltipText) SetCheckboxTooltip;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL* pfChecked) IsCheckboxChecked;
				public function HRESULT(IPhotoProgressDialog *self, PWSTR pszTitle) SetCaption;
				public function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_IMAGE_TYPE nImageType, HICON hIcon, HBITMAP hBitmap) SetImage;
				public function HRESULT(IPhotoProgressDialog *self, int32 nPercent) SetPercentComplete;
				public function HRESULT(IPhotoProgressDialog *self, PWSTR pszProgressText) SetProgressText;
				public function HRESULT(IPhotoProgressDialog *self, IPhotoProgressActionCB* pPhotoProgressActionCB) SetActionLinkCallback;
				public function HRESULT(IPhotoProgressDialog *self, PWSTR pszCaption) SetActionLinkText;
				public function HRESULT(IPhotoProgressDialog *self, BOOL fShow) ShowActionLink;
				public function HRESULT(IPhotoProgressDialog *self, BOOL* pfCancelled) IsCancelled;
				public function HRESULT(IPhotoProgressDialog *self, Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSource : IUnknown
		{
			public const new Guid IID = .(0x00f2c703, 0x8613, 0x4282, 0xa5, 0x3b, 0x6e, 0xc5, 0x9c, 0x58, 0x83, 0xac);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireSource *self, BSTR* pbstrFriendlyName) GetFriendlyName;
				public function HRESULT(IPhotoAcquireSource *self, uint32 nSize, HICON* phLargeIcon, HICON* phSmallIcon) GetDeviceIcons;
				public function HRESULT(IPhotoAcquireSource *self, BOOL fForceEnumeration, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB, uint32* pnItemCount) InitializeItemList;
				public function HRESULT(IPhotoAcquireSource *self, uint32* pnItemCount) GetItemCount;
				public function HRESULT(IPhotoAcquireSource *self, uint32 nIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetItemAt;
				public function HRESULT(IPhotoAcquireSource *self, IPhotoAcquireSettings** ppPhotoAcquireSettings) GetPhotoAcquireSettings;
				public function HRESULT(IPhotoAcquireSource *self, BSTR* pbstrDeviceId) GetDeviceId;
				public function HRESULT(IPhotoAcquireSource *self, Guid* riid, void** ppv) BindToObject;
			}
		}
		[CRepr]
		public struct IPhotoAcquire : IUnknown
		{
			public const new Guid IID = .(0x00f23353, 0xe31b, 0x4955, 0xa8, 0xad, 0xca, 0x5e, 0xbf, 0x31, 0xe2, 0xce);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquire *self, PWSTR pszDevice, IPhotoAcquireSource** ppPhotoAcquireSource) CreatePhotoSource;
				public function HRESULT(IPhotoAcquire *self, IPhotoAcquireSource* pPhotoAcquireSource, BOOL fShowProgress, HWND hWndParent, PWSTR pszApplicationName, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Acquire;
				public function HRESULT(IPhotoAcquire *self, IEnumString** ppEnumFilePaths) EnumResults;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSettings : IUnknown
		{
			public const new Guid IID = .(0x00f2b868, 0xdd67, 0x487c, 0x95, 0x53, 0x04, 0x92, 0x40, 0x76, 0x7e, 0x91);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireSettings *self, PWSTR pszRegistryKey) InitializeFromRegistry;
				public function HRESULT(IPhotoAcquireSettings *self, uint32 dwPhotoAcquireFlags) SetFlags;
				public function HRESULT(IPhotoAcquireSettings *self, PWSTR pszTemplate) SetOutputFilenameTemplate;
				public function HRESULT(IPhotoAcquireSettings *self, uint32 dwWidth) SetSequencePaddingWidth;
				public function HRESULT(IPhotoAcquireSettings *self, BOOL fZeroPad) SetSequenceZeroPadding;
				public function HRESULT(IPhotoAcquireSettings *self, PWSTR pszGroupTag) SetGroupTag;
				public function HRESULT(IPhotoAcquireSettings *self, FILETIME* pftAcquisitionTime) SetAcquisitionTime;
				public function HRESULT(IPhotoAcquireSettings *self, uint32* pdwPhotoAcquireFlags) GetFlags;
				public function HRESULT(IPhotoAcquireSettings *self, BSTR* pbstrTemplate) GetOutputFilenameTemplate;
				public function HRESULT(IPhotoAcquireSettings *self, uint32* pdwWidth) GetSequencePaddingWidth;
				public function HRESULT(IPhotoAcquireSettings *self, BOOL* pfZeroPad) GetSequenceZeroPadding;
				public function HRESULT(IPhotoAcquireSettings *self, BSTR* pbstrGroupTag) GetGroupTag;
				public function HRESULT(IPhotoAcquireSettings *self, FILETIME* pftAcquisitionTime) GetAcquisitionTime;
			}
		}
		[CRepr]
		public struct IPhotoAcquireOptionsDialog : IUnknown
		{
			public const new Guid IID = .(0x00f2b3ee, 0xbf64, 0x47ee, 0x89, 0xf4, 0x4d, 0xed, 0xd7, 0x96, 0x43, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireOptionsDialog *self, PWSTR pszRegistryRoot) Initialize;
				public function HRESULT(IPhotoAcquireOptionsDialog *self, HWND hWndParent, HWND* phWndDialog) Create;
				public function HRESULT(IPhotoAcquireOptionsDialog *self) Destroy;
				public function HRESULT(IPhotoAcquireOptionsDialog *self, HWND hWndParent, int* ppnReturnCode) DoModal;
				public function HRESULT(IPhotoAcquireOptionsDialog *self) SaveData;
			}
		}
		[CRepr]
		public struct IPhotoAcquireDeviceSelectionDialog : IUnknown
		{
			public const new Guid IID = .(0x00f28837, 0x55dd, 0x4f37, 0xaa, 0xf5, 0x68, 0x55, 0xa9, 0x64, 0x04, 0x67);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, PWSTR pszTitle) SetTitle;
				public function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, PWSTR pszSubmitButtonText) SetSubmitButtonText;
				public function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, HWND hWndParent, uint32 dwDeviceFlags, BSTR* pbstrDeviceId, DEVICE_SELECTION_DEVICE_TYPE* pnDeviceType) DoModal;
			}
		}
		[CRepr]
		public struct IPhotoAcquirePlugin : IUnknown
		{
			public const new Guid IID = .(0x00f2dceb, 0xecb8, 0x4f77, 0x8e, 0x47, 0xe7, 0xa9, 0x87, 0xc8, 0x3d, 0xd0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IPhotoAcquirePlugin *self, IPhotoAcquireSource* pPhotoAcquireSource, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Initialize;
				public function HRESULT(IPhotoAcquirePlugin *self, uint32 dwAcquireStage, IPhotoAcquireItem* pPhotoAcquireItem, IStream* pOriginalItemStream, PWSTR pszFinalFilename, IPropertyStore* pPropertyStore) ProcessItem;
				public function HRESULT(IPhotoAcquirePlugin *self, HRESULT hr) TransferComplete;
				public function HRESULT(IPhotoAcquirePlugin *self, HWND hWndParent) DisplayConfigureDialog;
			}
		}
		
	}
}
