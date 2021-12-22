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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemName(BSTR* pbstrItemName) mut
			{
				return VT.GetItemName(&this, pbstrItemName);
			}
			public HRESULT GetThumbnail(SIZE sizeThumbnail, HBITMAP* phbmpThumbnail) mut
			{
				return VT.GetThumbnail(&this, sizeThumbnail, phbmpThumbnail);
			}
			public HRESULT GetProperty(PROPERTYKEY* key, PROPVARIANT* pv) mut
			{
				return VT.GetProperty(&this, key, pv);
			}
			public HRESULT SetProperty(PROPERTYKEY* key, PROPVARIANT* pv) mut
			{
				return VT.SetProperty(&this, key, pv);
			}
			public HRESULT GetStream(IStream** ppStream) mut
			{
				return VT.GetStream(&this, ppStream);
			}
			public HRESULT CanDelete(BOOL* pfCanDelete) mut
			{
				return VT.CanDelete(&this, pfCanDelete);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			public HRESULT GetSubItemCount(uint32* pnCount) mut
			{
				return VT.GetSubItemCount(&this, pnCount);
			}
			public HRESULT GetSubItemAt(uint32 nItemIndex, IPhotoAcquireItem** ppPhotoAcquireItem) mut
			{
				return VT.GetSubItemAt(&this, nItemIndex, ppPhotoAcquireItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireItem *self, BSTR* pbstrItemName) GetItemName;
				public new function HRESULT(IPhotoAcquireItem *self, SIZE sizeThumbnail, HBITMAP* phbmpThumbnail) GetThumbnail;
				public new function HRESULT(IPhotoAcquireItem *self, PROPERTYKEY* key, PROPVARIANT* pv) GetProperty;
				public new function HRESULT(IPhotoAcquireItem *self, PROPERTYKEY* key, PROPVARIANT* pv) SetProperty;
				public new function HRESULT(IPhotoAcquireItem *self, IStream** ppStream) GetStream;
				public new function HRESULT(IPhotoAcquireItem *self, BOOL* pfCanDelete) CanDelete;
				public new function HRESULT(IPhotoAcquireItem *self) Delete;
				public new function HRESULT(IPhotoAcquireItem *self, uint32* pnCount) GetSubItemCount;
				public new function HRESULT(IPhotoAcquireItem *self, uint32 nItemIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetSubItemAt;
			}
		}
		[CRepr]
		public struct IUserInputString : IUnknown
		{
			public const new Guid IID = .(0x00f243a1, 0x205b, 0x45ba, 0xae, 0x26, 0xab, 0xbc, 0x53, 0xaa, 0x7a, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubmitButtonText(BSTR* pbstrSubmitButtonText) mut
			{
				return VT.GetSubmitButtonText(&this, pbstrSubmitButtonText);
			}
			public HRESULT GetPrompt(BSTR* pbstrPromptTitle) mut
			{
				return VT.GetPrompt(&this, pbstrPromptTitle);
			}
			public HRESULT GetStringId(BSTR* pbstrStringId) mut
			{
				return VT.GetStringId(&this, pbstrStringId);
			}
			public HRESULT GetStringType(USER_INPUT_STRING_TYPE* pnStringType) mut
			{
				return VT.GetStringType(&this, pnStringType);
			}
			public HRESULT GetTooltipText(BSTR* pbstrTooltipText) mut
			{
				return VT.GetTooltipText(&this, pbstrTooltipText);
			}
			public HRESULT GetMaxLength(uint32* pcchMaxLength) mut
			{
				return VT.GetMaxLength(&this, pcchMaxLength);
			}
			public HRESULT GetDefault(BSTR* pbstrDefault) mut
			{
				return VT.GetDefault(&this, pbstrDefault);
			}
			public HRESULT GetMruCount(uint32* pnMruCount) mut
			{
				return VT.GetMruCount(&this, pnMruCount);
			}
			public HRESULT GetMruEntryAt(uint32 nIndex, BSTR* pbstrMruEntry) mut
			{
				return VT.GetMruEntryAt(&this, nIndex, pbstrMruEntry);
			}
			public HRESULT GetImage(uint32 nSize, HBITMAP* phBitmap, HICON* phIcon) mut
			{
				return VT.GetImage(&this, nSize, phBitmap, phIcon);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUserInputString *self, BSTR* pbstrSubmitButtonText) GetSubmitButtonText;
				public new function HRESULT(IUserInputString *self, BSTR* pbstrPromptTitle) GetPrompt;
				public new function HRESULT(IUserInputString *self, BSTR* pbstrStringId) GetStringId;
				public new function HRESULT(IUserInputString *self, USER_INPUT_STRING_TYPE* pnStringType) GetStringType;
				public new function HRESULT(IUserInputString *self, BSTR* pbstrTooltipText) GetTooltipText;
				public new function HRESULT(IUserInputString *self, uint32* pcchMaxLength) GetMaxLength;
				public new function HRESULT(IUserInputString *self, BSTR* pbstrDefault) GetDefault;
				public new function HRESULT(IUserInputString *self, uint32* pnMruCount) GetMruCount;
				public new function HRESULT(IUserInputString *self, uint32 nIndex, BSTR* pbstrMruEntry) GetMruEntryAt;
				public new function HRESULT(IUserInputString *self, uint32 nSize, HBITMAP* phBitmap, HICON* phIcon) GetImage;
			}
		}
		[CRepr]
		public struct IPhotoAcquireProgressCB : IUnknown
		{
			public const new Guid IID = .(0x00f2ce1e, 0x935e, 0x4248, 0x89, 0x2c, 0x13, 0x0f, 0x32, 0xc4, 0x5c, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancelled(BOOL* pfCancelled) mut
			{
				return VT.Cancelled(&this, pfCancelled);
			}
			public HRESULT StartEnumeration(IPhotoAcquireSource* pPhotoAcquireSource) mut
			{
				return VT.StartEnumeration(&this, pPhotoAcquireSource);
			}
			public HRESULT FoundItem(IPhotoAcquireItem* pPhotoAcquireItem) mut
			{
				return VT.FoundItem(&this, pPhotoAcquireItem);
			}
			public HRESULT EndEnumeration(HRESULT hr) mut
			{
				return VT.EndEnumeration(&this, hr);
			}
			public HRESULT StartTransfer(IPhotoAcquireSource* pPhotoAcquireSource) mut
			{
				return VT.StartTransfer(&this, pPhotoAcquireSource);
			}
			public HRESULT StartItemTransfer(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) mut
			{
				return VT.StartItemTransfer(&this, nItemIndex, pPhotoAcquireItem);
			}
			public HRESULT DirectoryCreated(PWSTR pszDirectory) mut
			{
				return VT.DirectoryCreated(&this, pszDirectory);
			}
			public HRESULT UpdateTransferPercent(BOOL fOverall, uint32 nPercent) mut
			{
				return VT.UpdateTransferPercent(&this, fOverall, nPercent);
			}
			public HRESULT EndItemTransfer(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) mut
			{
				return VT.EndItemTransfer(&this, nItemIndex, pPhotoAcquireItem, hr);
			}
			public HRESULT EndTransfer(HRESULT hr) mut
			{
				return VT.EndTransfer(&this, hr);
			}
			public HRESULT StartDelete(IPhotoAcquireSource* pPhotoAcquireSource) mut
			{
				return VT.StartDelete(&this, pPhotoAcquireSource);
			}
			public HRESULT StartItemDelete(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) mut
			{
				return VT.StartItemDelete(&this, nItemIndex, pPhotoAcquireItem);
			}
			public HRESULT UpdateDeletePercent(uint32 nPercent) mut
			{
				return VT.UpdateDeletePercent(&this, nPercent);
			}
			public HRESULT EndItemDelete(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) mut
			{
				return VT.EndItemDelete(&this, nItemIndex, pPhotoAcquireItem, hr);
			}
			public HRESULT EndDelete(HRESULT hr) mut
			{
				return VT.EndDelete(&this, hr);
			}
			public HRESULT EndSession(HRESULT hr) mut
			{
				return VT.EndSession(&this, hr);
			}
			public HRESULT GetDeleteAfterAcquire(BOOL* pfDeleteAfterAcquire) mut
			{
				return VT.GetDeleteAfterAcquire(&this, pfDeleteAfterAcquire);
			}
			public HRESULT ErrorAdvise(HRESULT hr, PWSTR pszErrorMessage, ERROR_ADVISE_MESSAGE_TYPE nMessageType, ERROR_ADVISE_RESULT* pnErrorAdviseResult) mut
			{
				return VT.ErrorAdvise(&this, hr, pszErrorMessage, nMessageType, pnErrorAdviseResult);
			}
			public HRESULT GetUserInput(Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) mut
			{
				return VT.GetUserInput(&this, riidType, pUnknown, pPropVarResult, pPropVarDefault);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireProgressCB *self, BOOL* pfCancelled) Cancelled;
				public new function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartEnumeration;
				public new function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireItem* pPhotoAcquireItem) FoundItem;
				public new function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndEnumeration;
				public new function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartTransfer;
				public new function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemTransfer;
				public new function HRESULT(IPhotoAcquireProgressCB *self, PWSTR pszDirectory) DirectoryCreated;
				public new function HRESULT(IPhotoAcquireProgressCB *self, BOOL fOverall, uint32 nPercent) UpdateTransferPercent;
				public new function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemTransfer;
				public new function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndTransfer;
				public new function HRESULT(IPhotoAcquireProgressCB *self, IPhotoAcquireSource* pPhotoAcquireSource) StartDelete;
				public new function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemDelete;
				public new function HRESULT(IPhotoAcquireProgressCB *self, uint32 nPercent) UpdateDeletePercent;
				public new function HRESULT(IPhotoAcquireProgressCB *self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemDelete;
				public new function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndDelete;
				public new function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr) EndSession;
				public new function HRESULT(IPhotoAcquireProgressCB *self, BOOL* pfDeleteAfterAcquire) GetDeleteAfterAcquire;
				public new function HRESULT(IPhotoAcquireProgressCB *self, HRESULT hr, PWSTR pszErrorMessage, ERROR_ADVISE_MESSAGE_TYPE nMessageType, ERROR_ADVISE_RESULT* pnErrorAdviseResult) ErrorAdvise;
				public new function HRESULT(IPhotoAcquireProgressCB *self, Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoProgressActionCB : IUnknown
		{
			public const new Guid IID = .(0x00f242d0, 0xb206, 0x4e7d, 0xb4, 0xc1, 0x47, 0x55, 0xbc, 0xbb, 0x9c, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoAction(HWND hWndParent) mut
			{
				return VT.DoAction(&this, hWndParent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoProgressActionCB *self, HWND hWndParent) DoAction;
			}
		}
		[CRepr]
		public struct IPhotoProgressDialog : IUnknown
		{
			public const new Guid IID = .(0x00f246f9, 0x0750, 0x4f08, 0x93, 0x81, 0x2c, 0xd8, 0xe9, 0x06, 0xa4, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(HWND hwndParent) mut
			{
				return VT.Create(&this, hwndParent);
			}
			public HRESULT GetWindow(HWND* phwndProgressDialog) mut
			{
				return VT.GetWindow(&this, phwndProgressDialog);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT SetTitle(PWSTR pszTitle) mut
			{
				return VT.SetTitle(&this, pszTitle);
			}
			public HRESULT ShowCheckbox(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fShow) mut
			{
				return VT.ShowCheckbox(&this, nCheckboxId, fShow);
			}
			public HRESULT SetCheckboxText(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxText) mut
			{
				return VT.SetCheckboxText(&this, nCheckboxId, pszCheckboxText);
			}
			public HRESULT SetCheckboxCheck(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fChecked) mut
			{
				return VT.SetCheckboxCheck(&this, nCheckboxId, fChecked);
			}
			public HRESULT SetCheckboxTooltip(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxTooltipText) mut
			{
				return VT.SetCheckboxTooltip(&this, nCheckboxId, pszCheckboxTooltipText);
			}
			public HRESULT IsCheckboxChecked(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL* pfChecked) mut
			{
				return VT.IsCheckboxChecked(&this, nCheckboxId, pfChecked);
			}
			public HRESULT SetCaption(PWSTR pszTitle) mut
			{
				return VT.SetCaption(&this, pszTitle);
			}
			public HRESULT SetImage(PROGRESS_DIALOG_IMAGE_TYPE nImageType, HICON hIcon, HBITMAP hBitmap) mut
			{
				return VT.SetImage(&this, nImageType, hIcon, hBitmap);
			}
			public HRESULT SetPercentComplete(int32 nPercent) mut
			{
				return VT.SetPercentComplete(&this, nPercent);
			}
			public HRESULT SetProgressText(PWSTR pszProgressText) mut
			{
				return VT.SetProgressText(&this, pszProgressText);
			}
			public HRESULT SetActionLinkCallback(IPhotoProgressActionCB* pPhotoProgressActionCB) mut
			{
				return VT.SetActionLinkCallback(&this, pPhotoProgressActionCB);
			}
			public HRESULT SetActionLinkText(PWSTR pszCaption) mut
			{
				return VT.SetActionLinkText(&this, pszCaption);
			}
			public HRESULT ShowActionLink(BOOL fShow) mut
			{
				return VT.ShowActionLink(&this, fShow);
			}
			public HRESULT IsCancelled(BOOL* pfCancelled) mut
			{
				return VT.IsCancelled(&this, pfCancelled);
			}
			public HRESULT GetUserInput(Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) mut
			{
				return VT.GetUserInput(&this, riidType, pUnknown, pPropVarResult, pPropVarDefault);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoProgressDialog *self, HWND hwndParent) Create;
				public new function HRESULT(IPhotoProgressDialog *self, HWND* phwndProgressDialog) GetWindow;
				public new function HRESULT(IPhotoProgressDialog *self) Destroy;
				public new function HRESULT(IPhotoProgressDialog *self, PWSTR pszTitle) SetTitle;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fShow) ShowCheckbox;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxText) SetCheckboxText;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fChecked) SetCheckboxCheck;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxTooltipText) SetCheckboxTooltip;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL* pfChecked) IsCheckboxChecked;
				public new function HRESULT(IPhotoProgressDialog *self, PWSTR pszTitle) SetCaption;
				public new function HRESULT(IPhotoProgressDialog *self, PROGRESS_DIALOG_IMAGE_TYPE nImageType, HICON hIcon, HBITMAP hBitmap) SetImage;
				public new function HRESULT(IPhotoProgressDialog *self, int32 nPercent) SetPercentComplete;
				public new function HRESULT(IPhotoProgressDialog *self, PWSTR pszProgressText) SetProgressText;
				public new function HRESULT(IPhotoProgressDialog *self, IPhotoProgressActionCB* pPhotoProgressActionCB) SetActionLinkCallback;
				public new function HRESULT(IPhotoProgressDialog *self, PWSTR pszCaption) SetActionLinkText;
				public new function HRESULT(IPhotoProgressDialog *self, BOOL fShow) ShowActionLink;
				public new function HRESULT(IPhotoProgressDialog *self, BOOL* pfCancelled) IsCancelled;
				public new function HRESULT(IPhotoProgressDialog *self, Guid* riidType, IUnknown* pUnknown, PROPVARIANT* pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSource : IUnknown
		{
			public const new Guid IID = .(0x00f2c703, 0x8613, 0x4282, 0xa5, 0x3b, 0x6e, 0xc5, 0x9c, 0x58, 0x83, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFriendlyName(BSTR* pbstrFriendlyName) mut
			{
				return VT.GetFriendlyName(&this, pbstrFriendlyName);
			}
			public HRESULT GetDeviceIcons(uint32 nSize, HICON* phLargeIcon, HICON* phSmallIcon) mut
			{
				return VT.GetDeviceIcons(&this, nSize, phLargeIcon, phSmallIcon);
			}
			public HRESULT InitializeItemList(BOOL fForceEnumeration, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB, uint32* pnItemCount) mut
			{
				return VT.InitializeItemList(&this, fForceEnumeration, pPhotoAcquireProgressCB, pnItemCount);
			}
			public HRESULT GetItemCount(uint32* pnItemCount) mut
			{
				return VT.GetItemCount(&this, pnItemCount);
			}
			public HRESULT GetItemAt(uint32 nIndex, IPhotoAcquireItem** ppPhotoAcquireItem) mut
			{
				return VT.GetItemAt(&this, nIndex, ppPhotoAcquireItem);
			}
			public HRESULT GetPhotoAcquireSettings(IPhotoAcquireSettings** ppPhotoAcquireSettings) mut
			{
				return VT.GetPhotoAcquireSettings(&this, ppPhotoAcquireSettings);
			}
			public HRESULT GetDeviceId(BSTR* pbstrDeviceId) mut
			{
				return VT.GetDeviceId(&this, pbstrDeviceId);
			}
			public HRESULT BindToObject(Guid* riid, void** ppv) mut
			{
				return VT.BindToObject(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireSource *self, BSTR* pbstrFriendlyName) GetFriendlyName;
				public new function HRESULT(IPhotoAcquireSource *self, uint32 nSize, HICON* phLargeIcon, HICON* phSmallIcon) GetDeviceIcons;
				public new function HRESULT(IPhotoAcquireSource *self, BOOL fForceEnumeration, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB, uint32* pnItemCount) InitializeItemList;
				public new function HRESULT(IPhotoAcquireSource *self, uint32* pnItemCount) GetItemCount;
				public new function HRESULT(IPhotoAcquireSource *self, uint32 nIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetItemAt;
				public new function HRESULT(IPhotoAcquireSource *self, IPhotoAcquireSettings** ppPhotoAcquireSettings) GetPhotoAcquireSettings;
				public new function HRESULT(IPhotoAcquireSource *self, BSTR* pbstrDeviceId) GetDeviceId;
				public new function HRESULT(IPhotoAcquireSource *self, Guid* riid, void** ppv) BindToObject;
			}
		}
		[CRepr]
		public struct IPhotoAcquire : IUnknown
		{
			public const new Guid IID = .(0x00f23353, 0xe31b, 0x4955, 0xa8, 0xad, 0xca, 0x5e, 0xbf, 0x31, 0xe2, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePhotoSource(PWSTR pszDevice, IPhotoAcquireSource** ppPhotoAcquireSource) mut
			{
				return VT.CreatePhotoSource(&this, pszDevice, ppPhotoAcquireSource);
			}
			public HRESULT Acquire(IPhotoAcquireSource* pPhotoAcquireSource, BOOL fShowProgress, HWND hWndParent, PWSTR pszApplicationName, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) mut
			{
				return VT.Acquire(&this, pPhotoAcquireSource, fShowProgress, hWndParent, pszApplicationName, pPhotoAcquireProgressCB);
			}
			public HRESULT EnumResults(IEnumString** ppEnumFilePaths) mut
			{
				return VT.EnumResults(&this, ppEnumFilePaths);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquire *self, PWSTR pszDevice, IPhotoAcquireSource** ppPhotoAcquireSource) CreatePhotoSource;
				public new function HRESULT(IPhotoAcquire *self, IPhotoAcquireSource* pPhotoAcquireSource, BOOL fShowProgress, HWND hWndParent, PWSTR pszApplicationName, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Acquire;
				public new function HRESULT(IPhotoAcquire *self, IEnumString** ppEnumFilePaths) EnumResults;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSettings : IUnknown
		{
			public const new Guid IID = .(0x00f2b868, 0xdd67, 0x487c, 0x95, 0x53, 0x04, 0x92, 0x40, 0x76, 0x7e, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromRegistry(PWSTR pszRegistryKey) mut
			{
				return VT.InitializeFromRegistry(&this, pszRegistryKey);
			}
			public HRESULT SetFlags(uint32 dwPhotoAcquireFlags) mut
			{
				return VT.SetFlags(&this, dwPhotoAcquireFlags);
			}
			public HRESULT SetOutputFilenameTemplate(PWSTR pszTemplate) mut
			{
				return VT.SetOutputFilenameTemplate(&this, pszTemplate);
			}
			public HRESULT SetSequencePaddingWidth(uint32 dwWidth) mut
			{
				return VT.SetSequencePaddingWidth(&this, dwWidth);
			}
			public HRESULT SetSequenceZeroPadding(BOOL fZeroPad) mut
			{
				return VT.SetSequenceZeroPadding(&this, fZeroPad);
			}
			public HRESULT SetGroupTag(PWSTR pszGroupTag) mut
			{
				return VT.SetGroupTag(&this, pszGroupTag);
			}
			public HRESULT SetAcquisitionTime(FILETIME* pftAcquisitionTime) mut
			{
				return VT.SetAcquisitionTime(&this, pftAcquisitionTime);
			}
			public HRESULT ComGetFlags(uint32* pdwPhotoAcquireFlags) mut
			{
				return VT.ComGetFlags(&this, pdwPhotoAcquireFlags);
			}
			public HRESULT GetOutputFilenameTemplate(BSTR* pbstrTemplate) mut
			{
				return VT.GetOutputFilenameTemplate(&this, pbstrTemplate);
			}
			public HRESULT GetSequencePaddingWidth(uint32* pdwWidth) mut
			{
				return VT.GetSequencePaddingWidth(&this, pdwWidth);
			}
			public HRESULT GetSequenceZeroPadding(BOOL* pfZeroPad) mut
			{
				return VT.GetSequenceZeroPadding(&this, pfZeroPad);
			}
			public HRESULT GetGroupTag(BSTR* pbstrGroupTag) mut
			{
				return VT.GetGroupTag(&this, pbstrGroupTag);
			}
			public HRESULT GetAcquisitionTime(FILETIME* pftAcquisitionTime) mut
			{
				return VT.GetAcquisitionTime(&this, pftAcquisitionTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireSettings *self, PWSTR pszRegistryKey) InitializeFromRegistry;
				public new function HRESULT(IPhotoAcquireSettings *self, uint32 dwPhotoAcquireFlags) SetFlags;
				public new function HRESULT(IPhotoAcquireSettings *self, PWSTR pszTemplate) SetOutputFilenameTemplate;
				public new function HRESULT(IPhotoAcquireSettings *self, uint32 dwWidth) SetSequencePaddingWidth;
				public new function HRESULT(IPhotoAcquireSettings *self, BOOL fZeroPad) SetSequenceZeroPadding;
				public new function HRESULT(IPhotoAcquireSettings *self, PWSTR pszGroupTag) SetGroupTag;
				public new function HRESULT(IPhotoAcquireSettings *self, FILETIME* pftAcquisitionTime) SetAcquisitionTime;
				public new function HRESULT(IPhotoAcquireSettings *self, uint32* pdwPhotoAcquireFlags) ComGetFlags;
				public new function HRESULT(IPhotoAcquireSettings *self, BSTR* pbstrTemplate) GetOutputFilenameTemplate;
				public new function HRESULT(IPhotoAcquireSettings *self, uint32* pdwWidth) GetSequencePaddingWidth;
				public new function HRESULT(IPhotoAcquireSettings *self, BOOL* pfZeroPad) GetSequenceZeroPadding;
				public new function HRESULT(IPhotoAcquireSettings *self, BSTR* pbstrGroupTag) GetGroupTag;
				public new function HRESULT(IPhotoAcquireSettings *self, FILETIME* pftAcquisitionTime) GetAcquisitionTime;
			}
		}
		[CRepr]
		public struct IPhotoAcquireOptionsDialog : IUnknown
		{
			public const new Guid IID = .(0x00f2b3ee, 0xbf64, 0x47ee, 0x89, 0xf4, 0x4d, 0xed, 0xd7, 0x96, 0x43, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszRegistryRoot) mut
			{
				return VT.Initialize(&this, pszRegistryRoot);
			}
			public HRESULT Create(HWND hWndParent, HWND* phWndDialog) mut
			{
				return VT.Create(&this, hWndParent, phWndDialog);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT DoModal(HWND hWndParent, int* ppnReturnCode) mut
			{
				return VT.DoModal(&this, hWndParent, ppnReturnCode);
			}
			public HRESULT SaveData() mut
			{
				return VT.SaveData(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireOptionsDialog *self, PWSTR pszRegistryRoot) Initialize;
				public new function HRESULT(IPhotoAcquireOptionsDialog *self, HWND hWndParent, HWND* phWndDialog) Create;
				public new function HRESULT(IPhotoAcquireOptionsDialog *self) Destroy;
				public new function HRESULT(IPhotoAcquireOptionsDialog *self, HWND hWndParent, int* ppnReturnCode) DoModal;
				public new function HRESULT(IPhotoAcquireOptionsDialog *self) SaveData;
			}
		}
		[CRepr]
		public struct IPhotoAcquireDeviceSelectionDialog : IUnknown
		{
			public const new Guid IID = .(0x00f28837, 0x55dd, 0x4f37, 0xaa, 0xf5, 0x68, 0x55, 0xa9, 0x64, 0x04, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTitle(PWSTR pszTitle) mut
			{
				return VT.SetTitle(&this, pszTitle);
			}
			public HRESULT SetSubmitButtonText(PWSTR pszSubmitButtonText) mut
			{
				return VT.SetSubmitButtonText(&this, pszSubmitButtonText);
			}
			public HRESULT DoModal(HWND hWndParent, uint32 dwDeviceFlags, BSTR* pbstrDeviceId, DEVICE_SELECTION_DEVICE_TYPE* pnDeviceType) mut
			{
				return VT.DoModal(&this, hWndParent, dwDeviceFlags, pbstrDeviceId, pnDeviceType);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, PWSTR pszTitle) SetTitle;
				public new function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, PWSTR pszSubmitButtonText) SetSubmitButtonText;
				public new function HRESULT(IPhotoAcquireDeviceSelectionDialog *self, HWND hWndParent, uint32 dwDeviceFlags, BSTR* pbstrDeviceId, DEVICE_SELECTION_DEVICE_TYPE* pnDeviceType) DoModal;
			}
		}
		[CRepr]
		public struct IPhotoAcquirePlugin : IUnknown
		{
			public const new Guid IID = .(0x00f2dceb, 0xecb8, 0x4f77, 0x8e, 0x47, 0xe7, 0xa9, 0x87, 0xc8, 0x3d, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IPhotoAcquireSource* pPhotoAcquireSource, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) mut
			{
				return VT.Initialize(&this, pPhotoAcquireSource, pPhotoAcquireProgressCB);
			}
			public HRESULT ProcessItem(uint32 dwAcquireStage, IPhotoAcquireItem* pPhotoAcquireItem, IStream* pOriginalItemStream, PWSTR pszFinalFilename, IPropertyStore* pPropertyStore) mut
			{
				return VT.ProcessItem(&this, dwAcquireStage, pPhotoAcquireItem, pOriginalItemStream, pszFinalFilename, pPropertyStore);
			}
			public HRESULT TransferComplete(HRESULT hr) mut
			{
				return VT.TransferComplete(&this, hr);
			}
			public HRESULT DisplayConfigureDialog(HWND hWndParent) mut
			{
				return VT.DisplayConfigureDialog(&this, hWndParent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPhotoAcquirePlugin *self, IPhotoAcquireSource* pPhotoAcquireSource, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Initialize;
				public new function HRESULT(IPhotoAcquirePlugin *self, uint32 dwAcquireStage, IPhotoAcquireItem* pPhotoAcquireItem, IStream* pOriginalItemStream, PWSTR pszFinalFilename, IPropertyStore* pPropertyStore) ProcessItem;
				public new function HRESULT(IPhotoAcquirePlugin *self, HRESULT hr) TransferComplete;
				public new function HRESULT(IPhotoAcquirePlugin *self, HWND hWndParent) DisplayConfigureDialog;
			}
		}
		
	}
}
