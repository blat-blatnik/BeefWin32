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
		
		public enum USER_INPUT_STRING_TYPE : int32
		{
			DEFAULT = 0,
			PATH_ELEMENT = 1,
		}
		public enum ERROR_ADVISE_MESSAGE_TYPE : int32
		{
			SKIPRETRYCANCEL = 0,
			RETRYCANCEL = 1,
			YESNO = 2,
			OK = 3,
		}
		public enum ERROR_ADVISE_RESULT : int32
		{
			YES = 0,
			NO = 1,
			OK = 2,
			SKIP = 3,
			SKIP_ALL = 4,
			RETRY = 5,
			ABORT = 6,
		}
		public enum PROGRESS_DIALOG_IMAGE_TYPE : int32
		{
			ICON_SMALL = 0,
			ICON_LARGE = 1,
			ICON_THUMBNAIL = 2,
			BITMAP_THUMBNAIL = 3,
		}
		public enum PROGRESS_DIALOG_CHECKBOX_ID : int32
		{
			ID_DEFAULT = 0,
		}
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
			
			public HRESULT GetItemName(BSTR* pbstrItemName) mut => VT.GetItemName(ref this, pbstrItemName);
			public HRESULT GetThumbnail(SIZE sizeThumbnail, HBITMAP* phbmpThumbnail) mut => VT.GetThumbnail(ref this, sizeThumbnail, phbmpThumbnail);
			public HRESULT GetProperty(in PROPERTYKEY key, out PROPVARIANT pv) mut => VT.GetProperty(ref this, key, out pv);
			public HRESULT SetProperty(in PROPERTYKEY key, in PROPVARIANT pv) mut => VT.SetProperty(ref this, key, pv);
			public HRESULT GetStream(IStream** ppStream) mut => VT.GetStream(ref this, ppStream);
			public HRESULT CanDelete(out BOOL pfCanDelete) mut => VT.CanDelete(ref this, out pfCanDelete);
			public HRESULT Delete() mut => VT.Delete(ref this);
			public HRESULT GetSubItemCount(out uint32 pnCount) mut => VT.GetSubItemCount(ref this, out pnCount);
			public HRESULT GetSubItemAt(uint32 nItemIndex, IPhotoAcquireItem** ppPhotoAcquireItem) mut => VT.GetSubItemAt(ref this, nItemIndex, ppPhotoAcquireItem);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, BSTR* pbstrItemName) GetItemName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, SIZE sizeThumbnail, HBITMAP* phbmpThumbnail) GetThumbnail;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, in PROPERTYKEY key, out PROPVARIANT pv) GetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, in PROPERTYKEY key, in PROPVARIANT pv) SetProperty;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, IStream** ppStream) GetStream;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, out BOOL pfCanDelete) CanDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self) Delete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, out uint32 pnCount) GetSubItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireItem self, uint32 nItemIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetSubItemAt;
			}
		}
		[CRepr]
		public struct IUserInputString : IUnknown
		{
			public const new Guid IID = .(0x00f243a1, 0x205b, 0x45ba, 0xae, 0x26, 0xab, 0xbc, 0x53, 0xaa, 0x7a, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSubmitButtonText(BSTR* pbstrSubmitButtonText) mut => VT.GetSubmitButtonText(ref this, pbstrSubmitButtonText);
			public HRESULT GetPrompt(BSTR* pbstrPromptTitle) mut => VT.GetPrompt(ref this, pbstrPromptTitle);
			public HRESULT GetStringId(BSTR* pbstrStringId) mut => VT.GetStringId(ref this, pbstrStringId);
			public HRESULT GetStringType(out USER_INPUT_STRING_TYPE pnStringType) mut => VT.GetStringType(ref this, out pnStringType);
			public HRESULT GetTooltipText(BSTR* pbstrTooltipText) mut => VT.GetTooltipText(ref this, pbstrTooltipText);
			public HRESULT GetMaxLength(out uint32 pcchMaxLength) mut => VT.GetMaxLength(ref this, out pcchMaxLength);
			public HRESULT GetDefault(BSTR* pbstrDefault) mut => VT.GetDefault(ref this, pbstrDefault);
			public HRESULT GetMruCount(out uint32 pnMruCount) mut => VT.GetMruCount(ref this, out pnMruCount);
			public HRESULT GetMruEntryAt(uint32 nIndex, BSTR* pbstrMruEntry) mut => VT.GetMruEntryAt(ref this, nIndex, pbstrMruEntry);
			public HRESULT GetImage(uint32 nSize, HBITMAP* phBitmap, HICON* phIcon) mut => VT.GetImage(ref this, nSize, phBitmap, phIcon);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, BSTR* pbstrSubmitButtonText) GetSubmitButtonText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, BSTR* pbstrPromptTitle) GetPrompt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, BSTR* pbstrStringId) GetStringId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, out USER_INPUT_STRING_TYPE pnStringType) GetStringType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, BSTR* pbstrTooltipText) GetTooltipText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, out uint32 pcchMaxLength) GetMaxLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, BSTR* pbstrDefault) GetDefault;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, out uint32 pnMruCount) GetMruCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, uint32 nIndex, BSTR* pbstrMruEntry) GetMruEntryAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserInputString self, uint32 nSize, HBITMAP* phBitmap, HICON* phIcon) GetImage;
			}
		}
		[CRepr]
		public struct IPhotoAcquireProgressCB : IUnknown
		{
			public const new Guid IID = .(0x00f2ce1e, 0x935e, 0x4248, 0x89, 0x2c, 0x13, 0x0f, 0x32, 0xc4, 0x5c, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Cancelled(out BOOL pfCancelled) mut => VT.Cancelled(ref this, out pfCancelled);
			public HRESULT StartEnumeration(IPhotoAcquireSource* pPhotoAcquireSource) mut => VT.StartEnumeration(ref this, pPhotoAcquireSource);
			public HRESULT FoundItem(IPhotoAcquireItem* pPhotoAcquireItem) mut => VT.FoundItem(ref this, pPhotoAcquireItem);
			public HRESULT EndEnumeration(HRESULT hr) mut => VT.EndEnumeration(ref this, hr);
			public HRESULT StartTransfer(IPhotoAcquireSource* pPhotoAcquireSource) mut => VT.StartTransfer(ref this, pPhotoAcquireSource);
			public HRESULT StartItemTransfer(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) mut => VT.StartItemTransfer(ref this, nItemIndex, pPhotoAcquireItem);
			public HRESULT DirectoryCreated(PWSTR pszDirectory) mut => VT.DirectoryCreated(ref this, pszDirectory);
			public HRESULT UpdateTransferPercent(BOOL fOverall, uint32 nPercent) mut => VT.UpdateTransferPercent(ref this, fOverall, nPercent);
			public HRESULT EndItemTransfer(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) mut => VT.EndItemTransfer(ref this, nItemIndex, pPhotoAcquireItem, hr);
			public HRESULT EndTransfer(HRESULT hr) mut => VT.EndTransfer(ref this, hr);
			public HRESULT StartDelete(IPhotoAcquireSource* pPhotoAcquireSource) mut => VT.StartDelete(ref this, pPhotoAcquireSource);
			public HRESULT StartItemDelete(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) mut => VT.StartItemDelete(ref this, nItemIndex, pPhotoAcquireItem);
			public HRESULT UpdateDeletePercent(uint32 nPercent) mut => VT.UpdateDeletePercent(ref this, nPercent);
			public HRESULT EndItemDelete(uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) mut => VT.EndItemDelete(ref this, nItemIndex, pPhotoAcquireItem, hr);
			public HRESULT EndDelete(HRESULT hr) mut => VT.EndDelete(ref this, hr);
			public HRESULT EndSession(HRESULT hr) mut => VT.EndSession(ref this, hr);
			public HRESULT GetDeleteAfterAcquire(out BOOL pfDeleteAfterAcquire) mut => VT.GetDeleteAfterAcquire(ref this, out pfDeleteAfterAcquire);
			public HRESULT ErrorAdvise(HRESULT hr, PWSTR pszErrorMessage, ERROR_ADVISE_MESSAGE_TYPE nMessageType, out ERROR_ADVISE_RESULT pnErrorAdviseResult) mut => VT.ErrorAdvise(ref this, hr, pszErrorMessage, nMessageType, out pnErrorAdviseResult);
			public HRESULT GetUserInput(in Guid riidType, IUnknown* pUnknown, out PROPVARIANT pPropVarResult, PROPVARIANT* pPropVarDefault) mut => VT.GetUserInput(ref this, riidType, pUnknown, out pPropVarResult, pPropVarDefault);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, out BOOL pfCancelled) Cancelled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, IPhotoAcquireSource* pPhotoAcquireSource) StartEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, IPhotoAcquireItem* pPhotoAcquireItem) FoundItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, HRESULT hr) EndEnumeration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, IPhotoAcquireSource* pPhotoAcquireSource) StartTransfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemTransfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, PWSTR pszDirectory) DirectoryCreated;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, BOOL fOverall, uint32 nPercent) UpdateTransferPercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemTransfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, HRESULT hr) EndTransfer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, IPhotoAcquireSource* pPhotoAcquireSource) StartDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem) StartItemDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, uint32 nPercent) UpdateDeletePercent;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, uint32 nItemIndex, IPhotoAcquireItem* pPhotoAcquireItem, HRESULT hr) EndItemDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, HRESULT hr) EndDelete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, HRESULT hr) EndSession;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, out BOOL pfDeleteAfterAcquire) GetDeleteAfterAcquire;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, HRESULT hr, PWSTR pszErrorMessage, ERROR_ADVISE_MESSAGE_TYPE nMessageType, out ERROR_ADVISE_RESULT pnErrorAdviseResult) ErrorAdvise;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireProgressCB self, in Guid riidType, IUnknown* pUnknown, out PROPVARIANT pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoProgressActionCB : IUnknown
		{
			public const new Guid IID = .(0x00f242d0, 0xb206, 0x4e7d, 0xb4, 0xc1, 0x47, 0x55, 0xbc, 0xbb, 0x9c, 0x9f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoAction(HWND hWndParent) mut => VT.DoAction(ref this, hWndParent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressActionCB self, HWND hWndParent) DoAction;
			}
		}
		[CRepr]
		public struct IPhotoProgressDialog : IUnknown
		{
			public const new Guid IID = .(0x00f246f9, 0x0750, 0x4f08, 0x93, 0x81, 0x2c, 0xd8, 0xe9, 0x06, 0xa4, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Create(HWND hwndParent) mut => VT.Create(ref this, hwndParent);
			public HRESULT GetWindow(HWND* phwndProgressDialog) mut => VT.GetWindow(ref this, phwndProgressDialog);
			public HRESULT Destroy() mut => VT.Destroy(ref this);
			public HRESULT SetTitle(PWSTR pszTitle) mut => VT.SetTitle(ref this, pszTitle);
			public HRESULT ShowCheckbox(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fShow) mut => VT.ShowCheckbox(ref this, nCheckboxId, fShow);
			public HRESULT SetCheckboxText(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxText) mut => VT.SetCheckboxText(ref this, nCheckboxId, pszCheckboxText);
			public HRESULT SetCheckboxCheck(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fChecked) mut => VT.SetCheckboxCheck(ref this, nCheckboxId, fChecked);
			public HRESULT SetCheckboxTooltip(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxTooltipText) mut => VT.SetCheckboxTooltip(ref this, nCheckboxId, pszCheckboxTooltipText);
			public HRESULT IsCheckboxChecked(PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, out BOOL pfChecked) mut => VT.IsCheckboxChecked(ref this, nCheckboxId, out pfChecked);
			public HRESULT SetCaption(PWSTR pszTitle) mut => VT.SetCaption(ref this, pszTitle);
			public HRESULT SetImage(PROGRESS_DIALOG_IMAGE_TYPE nImageType, HICON hIcon, HBITMAP hBitmap) mut => VT.SetImage(ref this, nImageType, hIcon, hBitmap);
			public HRESULT SetPercentComplete(int32 nPercent) mut => VT.SetPercentComplete(ref this, nPercent);
			public HRESULT SetProgressText(PWSTR pszProgressText) mut => VT.SetProgressText(ref this, pszProgressText);
			public HRESULT SetActionLinkCallback(IPhotoProgressActionCB* pPhotoProgressActionCB) mut => VT.SetActionLinkCallback(ref this, pPhotoProgressActionCB);
			public HRESULT SetActionLinkText(PWSTR pszCaption) mut => VT.SetActionLinkText(ref this, pszCaption);
			public HRESULT ShowActionLink(BOOL fShow) mut => VT.ShowActionLink(ref this, fShow);
			public HRESULT IsCancelled(out BOOL pfCancelled) mut => VT.IsCancelled(ref this, out pfCancelled);
			public HRESULT GetUserInput(in Guid riidType, IUnknown* pUnknown, out PROPVARIANT pPropVarResult, PROPVARIANT* pPropVarDefault) mut => VT.GetUserInput(ref this, riidType, pUnknown, out pPropVarResult, pPropVarDefault);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, HWND hwndParent) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, HWND* phwndProgressDialog) GetWindow;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PWSTR pszTitle) SetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fShow) ShowCheckbox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxText) SetCheckboxText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, BOOL fChecked) SetCheckboxCheck;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, PWSTR pszCheckboxTooltipText) SetCheckboxTooltip;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_CHECKBOX_ID nCheckboxId, out BOOL pfChecked) IsCheckboxChecked;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PWSTR pszTitle) SetCaption;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PROGRESS_DIALOG_IMAGE_TYPE nImageType, HICON hIcon, HBITMAP hBitmap) SetImage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, int32 nPercent) SetPercentComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PWSTR pszProgressText) SetProgressText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, IPhotoProgressActionCB* pPhotoProgressActionCB) SetActionLinkCallback;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, PWSTR pszCaption) SetActionLinkText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, BOOL fShow) ShowActionLink;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, out BOOL pfCancelled) IsCancelled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoProgressDialog self, in Guid riidType, IUnknown* pUnknown, out PROPVARIANT pPropVarResult, PROPVARIANT* pPropVarDefault) GetUserInput;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSource : IUnknown
		{
			public const new Guid IID = .(0x00f2c703, 0x8613, 0x4282, 0xa5, 0x3b, 0x6e, 0xc5, 0x9c, 0x58, 0x83, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFriendlyName(BSTR* pbstrFriendlyName) mut => VT.GetFriendlyName(ref this, pbstrFriendlyName);
			public HRESULT GetDeviceIcons(uint32 nSize, HICON* phLargeIcon, HICON* phSmallIcon) mut => VT.GetDeviceIcons(ref this, nSize, phLargeIcon, phSmallIcon);
			public HRESULT InitializeItemList(BOOL fForceEnumeration, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB, uint32* pnItemCount) mut => VT.InitializeItemList(ref this, fForceEnumeration, pPhotoAcquireProgressCB, pnItemCount);
			public HRESULT GetItemCount(out uint32 pnItemCount) mut => VT.GetItemCount(ref this, out pnItemCount);
			public HRESULT GetItemAt(uint32 nIndex, IPhotoAcquireItem** ppPhotoAcquireItem) mut => VT.GetItemAt(ref this, nIndex, ppPhotoAcquireItem);
			public HRESULT GetPhotoAcquireSettings(IPhotoAcquireSettings** ppPhotoAcquireSettings) mut => VT.GetPhotoAcquireSettings(ref this, ppPhotoAcquireSettings);
			public HRESULT GetDeviceId(BSTR* pbstrDeviceId) mut => VT.GetDeviceId(ref this, pbstrDeviceId);
			public HRESULT BindToObject(in Guid riid, void** ppv) mut => VT.BindToObject(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, BSTR* pbstrFriendlyName) GetFriendlyName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, uint32 nSize, HICON* phLargeIcon, HICON* phSmallIcon) GetDeviceIcons;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, BOOL fForceEnumeration, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB, uint32* pnItemCount) InitializeItemList;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, out uint32 pnItemCount) GetItemCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, uint32 nIndex, IPhotoAcquireItem** ppPhotoAcquireItem) GetItemAt;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, IPhotoAcquireSettings** ppPhotoAcquireSettings) GetPhotoAcquireSettings;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, BSTR* pbstrDeviceId) GetDeviceId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSource self, in Guid riid, void** ppv) BindToObject;
			}
		}
		[CRepr]
		public struct IPhotoAcquire : IUnknown
		{
			public const new Guid IID = .(0x00f23353, 0xe31b, 0x4955, 0xa8, 0xad, 0xca, 0x5e, 0xbf, 0x31, 0xe2, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreatePhotoSource(PWSTR pszDevice, IPhotoAcquireSource** ppPhotoAcquireSource) mut => VT.CreatePhotoSource(ref this, pszDevice, ppPhotoAcquireSource);
			public HRESULT Acquire(IPhotoAcquireSource* pPhotoAcquireSource, BOOL fShowProgress, HWND hWndParent, PWSTR pszApplicationName, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) mut => VT.Acquire(ref this, pPhotoAcquireSource, fShowProgress, hWndParent, pszApplicationName, pPhotoAcquireProgressCB);
			public HRESULT EnumResults(IEnumString** ppEnumFilePaths) mut => VT.EnumResults(ref this, ppEnumFilePaths);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquire self, PWSTR pszDevice, IPhotoAcquireSource** ppPhotoAcquireSource) CreatePhotoSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquire self, IPhotoAcquireSource* pPhotoAcquireSource, BOOL fShowProgress, HWND hWndParent, PWSTR pszApplicationName, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Acquire;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquire self, IEnumString** ppEnumFilePaths) EnumResults;
			}
		}
		[CRepr]
		public struct IPhotoAcquireSettings : IUnknown
		{
			public const new Guid IID = .(0x00f2b868, 0xdd67, 0x487c, 0x95, 0x53, 0x04, 0x92, 0x40, 0x76, 0x7e, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromRegistry(PWSTR pszRegistryKey) mut => VT.InitializeFromRegistry(ref this, pszRegistryKey);
			public HRESULT SetFlags(uint32 dwPhotoAcquireFlags) mut => VT.SetFlags(ref this, dwPhotoAcquireFlags);
			public HRESULT SetOutputFilenameTemplate(PWSTR pszTemplate) mut => VT.SetOutputFilenameTemplate(ref this, pszTemplate);
			public HRESULT SetSequencePaddingWidth(uint32 dwWidth) mut => VT.SetSequencePaddingWidth(ref this, dwWidth);
			public HRESULT SetSequenceZeroPadding(BOOL fZeroPad) mut => VT.SetSequenceZeroPadding(ref this, fZeroPad);
			public HRESULT SetGroupTag(PWSTR pszGroupTag) mut => VT.SetGroupTag(ref this, pszGroupTag);
			public HRESULT SetAcquisitionTime(in FILETIME pftAcquisitionTime) mut => VT.SetAcquisitionTime(ref this, pftAcquisitionTime);
			public HRESULT ComGetFlags(out uint32 pdwPhotoAcquireFlags) mut => VT.ComGetFlags(ref this, out pdwPhotoAcquireFlags);
			public HRESULT GetOutputFilenameTemplate(BSTR* pbstrTemplate) mut => VT.GetOutputFilenameTemplate(ref this, pbstrTemplate);
			public HRESULT GetSequencePaddingWidth(out uint32 pdwWidth) mut => VT.GetSequencePaddingWidth(ref this, out pdwWidth);
			public HRESULT GetSequenceZeroPadding(out BOOL pfZeroPad) mut => VT.GetSequenceZeroPadding(ref this, out pfZeroPad);
			public HRESULT GetGroupTag(BSTR* pbstrGroupTag) mut => VT.GetGroupTag(ref this, pbstrGroupTag);
			public HRESULT GetAcquisitionTime(out FILETIME pftAcquisitionTime) mut => VT.GetAcquisitionTime(ref this, out pftAcquisitionTime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, PWSTR pszRegistryKey) InitializeFromRegistry;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, uint32 dwPhotoAcquireFlags) SetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, PWSTR pszTemplate) SetOutputFilenameTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, uint32 dwWidth) SetSequencePaddingWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, BOOL fZeroPad) SetSequenceZeroPadding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, PWSTR pszGroupTag) SetGroupTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, in FILETIME pftAcquisitionTime) SetAcquisitionTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, out uint32 pdwPhotoAcquireFlags) ComGetFlags;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, BSTR* pbstrTemplate) GetOutputFilenameTemplate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, out uint32 pdwWidth) GetSequencePaddingWidth;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, out BOOL pfZeroPad) GetSequenceZeroPadding;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, BSTR* pbstrGroupTag) GetGroupTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireSettings self, out FILETIME pftAcquisitionTime) GetAcquisitionTime;
			}
		}
		[CRepr]
		public struct IPhotoAcquireOptionsDialog : IUnknown
		{
			public const new Guid IID = .(0x00f2b3ee, 0xbf64, 0x47ee, 0x89, 0xf4, 0x4d, 0xed, 0xd7, 0x96, 0x43, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszRegistryRoot) mut => VT.Initialize(ref this, pszRegistryRoot);
			public HRESULT Create(HWND hWndParent, HWND* phWndDialog) mut => VT.Create(ref this, hWndParent, phWndDialog);
			public HRESULT Destroy() mut => VT.Destroy(ref this);
			public HRESULT DoModal(HWND hWndParent, int* ppnReturnCode) mut => VT.DoModal(ref this, hWndParent, ppnReturnCode);
			public HRESULT SaveData() mut => VT.SaveData(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireOptionsDialog self, PWSTR pszRegistryRoot) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireOptionsDialog self, HWND hWndParent, HWND* phWndDialog) Create;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireOptionsDialog self) Destroy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireOptionsDialog self, HWND hWndParent, int* ppnReturnCode) DoModal;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireOptionsDialog self) SaveData;
			}
		}
		[CRepr]
		public struct IPhotoAcquireDeviceSelectionDialog : IUnknown
		{
			public const new Guid IID = .(0x00f28837, 0x55dd, 0x4f37, 0xaa, 0xf5, 0x68, 0x55, 0xa9, 0x64, 0x04, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTitle(PWSTR pszTitle) mut => VT.SetTitle(ref this, pszTitle);
			public HRESULT SetSubmitButtonText(PWSTR pszSubmitButtonText) mut => VT.SetSubmitButtonText(ref this, pszSubmitButtonText);
			public HRESULT DoModal(HWND hWndParent, uint32 dwDeviceFlags, BSTR* pbstrDeviceId, DEVICE_SELECTION_DEVICE_TYPE* pnDeviceType) mut => VT.DoModal(ref this, hWndParent, dwDeviceFlags, pbstrDeviceId, pnDeviceType);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireDeviceSelectionDialog self, PWSTR pszTitle) SetTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireDeviceSelectionDialog self, PWSTR pszSubmitButtonText) SetSubmitButtonText;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquireDeviceSelectionDialog self, HWND hWndParent, uint32 dwDeviceFlags, BSTR* pbstrDeviceId, DEVICE_SELECTION_DEVICE_TYPE* pnDeviceType) DoModal;
			}
		}
		[CRepr]
		public struct IPhotoAcquirePlugin : IUnknown
		{
			public const new Guid IID = .(0x00f2dceb, 0xecb8, 0x4f77, 0x8e, 0x47, 0xe7, 0xa9, 0x87, 0xc8, 0x3d, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IPhotoAcquireSource* pPhotoAcquireSource, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) mut => VT.Initialize(ref this, pPhotoAcquireSource, pPhotoAcquireProgressCB);
			public HRESULT ProcessItem(uint32 dwAcquireStage, IPhotoAcquireItem* pPhotoAcquireItem, IStream* pOriginalItemStream, PWSTR pszFinalFilename, IPropertyStore* pPropertyStore) mut => VT.ProcessItem(ref this, dwAcquireStage, pPhotoAcquireItem, pOriginalItemStream, pszFinalFilename, pPropertyStore);
			public HRESULT TransferComplete(HRESULT hr) mut => VT.TransferComplete(ref this, hr);
			public HRESULT DisplayConfigureDialog(HWND hWndParent) mut => VT.DisplayConfigureDialog(ref this, hWndParent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquirePlugin self, IPhotoAcquireSource* pPhotoAcquireSource, IPhotoAcquireProgressCB* pPhotoAcquireProgressCB) Initialize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquirePlugin self, uint32 dwAcquireStage, IPhotoAcquireItem* pPhotoAcquireItem, IStream* pOriginalItemStream, PWSTR pszFinalFilename, IPropertyStore* pPropertyStore) ProcessItem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquirePlugin self, HRESULT hr) TransferComplete;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IPhotoAcquirePlugin self, HWND hWndParent) DisplayConfigureDialog;
			}
		}
		
	}
}
