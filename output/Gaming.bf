using System;

// namespace Gaming
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum GAME_INSTALL_SCOPE : int32
		{
			GIS_NOT_INSTALLED = 1,
			GIS_CURRENT_USER = 2,
			GIS_ALL_USERS = 3,
		}
		[AllowDuplicates]
		public enum GAMESTATS_OPEN_TYPE : int32
		{
			GAMESTATS_OPEN_OPENORCREATE = 0,
			GAMESTATS_OPEN_OPENONLY = 1,
		}
		[AllowDuplicates]
		public enum GAMESTATS_OPEN_RESULT : int32
		{
			GAMESTATS_OPEN_CREATED = 0,
			GAMESTATS_OPEN_OPENED = 1,
		}
		[AllowDuplicates]
		public enum GAMING_DEVICE_VENDOR_ID : int32
		{
			GAMING_DEVICE_VENDOR_ID_NONE = 0,
			GAMING_DEVICE_VENDOR_ID_MICROSOFT = -1024700366,
		}
		[AllowDuplicates]
		public enum GAMING_DEVICE_DEVICE_ID : int32
		{
			GAMING_DEVICE_DEVICE_ID_NONE = 0,
			GAMING_DEVICE_DEVICE_ID_XBOX_ONE = 1988865574,
			GAMING_DEVICE_DEVICE_ID_XBOX_ONE_S = 712204761,
			GAMING_DEVICE_DEVICE_ID_XBOX_ONE_X = 1523980231,
			GAMING_DEVICE_DEVICE_ID_XBOX_ONE_X_DEVKIT = 284675555,
		}
		[AllowDuplicates]
		public enum KnownGamingPrivileges : int32
		{
			XPRIVILEGE_BROADCAST = 190,
			XPRIVILEGE_VIEW_FRIENDS_LIST = 197,
			XPRIVILEGE_GAME_DVR = 198,
			XPRIVILEGE_SHARE_KINECT_CONTENT = 199,
			XPRIVILEGE_MULTIPLAYER_PARTIES = 203,
			XPRIVILEGE_COMMUNICATION_VOICE_INGAME = 205,
			XPRIVILEGE_COMMUNICATION_VOICE_SKYPE = 206,
			XPRIVILEGE_CLOUD_GAMING_MANAGE_SESSION = 207,
			XPRIVILEGE_CLOUD_GAMING_JOIN_SESSION = 208,
			XPRIVILEGE_CLOUD_SAVED_GAMES = 209,
			XPRIVILEGE_SHARE_CONTENT = 211,
			XPRIVILEGE_PREMIUM_CONTENT = 214,
			XPRIVILEGE_SUBSCRIPTION_CONTENT = 219,
			XPRIVILEGE_SOCIAL_NETWORK_SHARING = 220,
			XPRIVILEGE_PREMIUM_VIDEO = 224,
			XPRIVILEGE_VIDEO_COMMUNICATIONS = 235,
			XPRIVILEGE_PURCHASE_CONTENT = 245,
			XPRIVILEGE_USER_CREATED_CONTENT = 247,
			XPRIVILEGE_PROFILE_VIEWING = 249,
			XPRIVILEGE_COMMUNICATIONS = 252,
			XPRIVILEGE_MULTIPLAYER_SESSIONS = 254,
			XPRIVILEGE_ADD_FRIEND = 255,
		}
		[AllowDuplicates]
		public enum XBL_IDP_AUTH_TOKEN_STATUS : int32
		{
			XBL_IDP_AUTH_TOKEN_STATUS_SUCCESS = 0,
			XBL_IDP_AUTH_TOKEN_STATUS_OFFLINE_SUCCESS = 1,
			XBL_IDP_AUTH_TOKEN_STATUS_NO_ACCOUNT_SET = 2,
			XBL_IDP_AUTH_TOKEN_STATUS_LOAD_MSA_ACCOUNT_FAILED = 3,
			XBL_IDP_AUTH_TOKEN_STATUS_XBOX_VETO = 4,
			XBL_IDP_AUTH_TOKEN_STATUS_MSA_INTERRUPT = 5,
			XBL_IDP_AUTH_TOKEN_STATUS_OFFLINE_NO_CONSENT = 6,
			XBL_IDP_AUTH_TOKEN_STATUS_VIEW_NOT_SET = 7,
			XBL_IDP_AUTH_TOKEN_STATUS_UNKNOWN = -1,
		}
		
		// --- Function Pointers ---
		
		public function void GameUICompletionRoutine(HRESULT returnCode, void* context);
		public function void PlayerPickerUICompletionRoutine(HRESULT returnCode, void* context, HSTRING* selectedXuids, uint selectedXuidsCount);
		
		// --- Structs ---
		
		[CRepr]
		public struct GAMING_DEVICE_MODEL_INFORMATION
		{
			public GAMING_DEVICE_VENDOR_ID vendorId;
			public GAMING_DEVICE_DEVICE_ID deviceId;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_GameExplorer = .(0x9a5ea990, 0x3034, 0x4d6f, 0x91, 0x28, 0x01, 0xf3, 0xc6, 0x10, 0x22, 0xbc);
		public const Guid CLSID_GameStatistics = .(0xdbc85a2c, 0xc0dc, 0x4961, 0xb6, 0xe2, 0xd2, 0x8b, 0x62, 0xc1, 0x1a, 0xd4);
		public const Guid CLSID_XblIdpAuthManager = .(0xce23534b, 0x56d8, 0x4978, 0x86, 0xa2, 0x7e, 0xe5, 0x70, 0x64, 0x04, 0x68);
		public const Guid CLSID_XblIdpAuthTokenResult = .(0x9f493441, 0x744a, 0x410c, 0xae, 0x2b, 0x9a, 0x22, 0xf7, 0xc7, 0x73, 0x1f);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IGameExplorer : IUnknown
		{
			public const new Guid IID = .(0xe7b2fb72, 0xd728, 0x49b3, 0xa5, 0xf2, 0x18, 0xeb, 0xf5, 0xf1, 0x34, 0x9e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGameExplorer *self, BSTR bstrGDFBinaryPath, BSTR bstrGameInstallDirectory, GAME_INSTALL_SCOPE installScope, Guid* pguidInstanceID) AddGame;
				public function HRESULT(IGameExplorer *self, Guid guidInstanceID) RemoveGame;
				public function HRESULT(IGameExplorer *self, Guid guidInstanceID) UpdateGame;
				public function HRESULT(IGameExplorer *self, BSTR bstrGDFBinaryPath, BOOL* pfHasAccess) VerifyAccess;
			}
		}
		[CRepr]
		public struct IGameStatistics : IUnknown
		{
			public const new Guid IID = .(0x3887c9ca, 0x04a0, 0x42ae, 0xbc, 0x4c, 0x5f, 0xa6, 0xc7, 0x72, 0x11, 0x45);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGameStatistics *self, uint32* cch) GetMaxCategoryLength;
				public function HRESULT(IGameStatistics *self, uint32* cch) GetMaxNameLength;
				public function HRESULT(IGameStatistics *self, uint32* cch) GetMaxValueLength;
				public function HRESULT(IGameStatistics *self, uint16* pMax) GetMaxCategories;
				public function HRESULT(IGameStatistics *self, uint16* pMax) GetMaxStatsPerCategory;
				public function HRESULT(IGameStatistics *self, uint16 categoryIndex, PWSTR title) SetCategoryTitle;
				public function HRESULT(IGameStatistics *self, uint16 categoryIndex, PWSTR* pTitle) GetCategoryTitle;
				public function HRESULT(IGameStatistics *self, uint16 categoryIndex, uint16 statIndex, PWSTR* pName, PWSTR* pValue) GetStatistic;
				public function HRESULT(IGameStatistics *self, uint16 categoryIndex, uint16 statIndex, PWSTR name, PWSTR value) SetStatistic;
				public function HRESULT(IGameStatistics *self, BOOL trackChanges) Save;
				public function HRESULT(IGameStatistics *self, uint32 categoryIndex) SetLastPlayedCategory;
				public function HRESULT(IGameStatistics *self, uint32* pCategoryIndex) GetLastPlayedCategory;
			}
		}
		[CRepr]
		public struct IGameStatisticsMgr : IUnknown
		{
			public const new Guid IID = .(0xaff3ea11, 0xe70e, 0x407d, 0x95, 0xdd, 0x35, 0xe6, 0x12, 0xc4, 0x1c, 0xe2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGameStatisticsMgr *self, PWSTR GDFBinaryPath, GAMESTATS_OPEN_TYPE openType, GAMESTATS_OPEN_RESULT* pOpenResult, IGameStatistics** ppiStats) GetGameStatistics;
				public function HRESULT(IGameStatisticsMgr *self, PWSTR GDFBinaryPath) RemoveGameStatistics;
			}
		}
		[CRepr]
		public struct IGameExplorer2 : IUnknown
		{
			public const new Guid IID = .(0x86874aa7, 0xa1ed, 0x450d, 0xa7, 0xeb, 0xb8, 0x9e, 0x20, 0xb2, 0xff, 0xf3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IGameExplorer2 *self, PWSTR binaryGDFPath, PWSTR installDirectory, GAME_INSTALL_SCOPE installScope) InstallGame;
				public function HRESULT(IGameExplorer2 *self, PWSTR binaryGDFPath) UninstallGame;
				public function HRESULT(IGameExplorer2 *self, PWSTR binaryGDFPath, BOOL* pHasAccess) CheckAccess;
			}
		}
		[CRepr]
		public struct IXblIdpAuthManager : IUnknown
		{
			public const new Guid IID = .(0xeb5ddb08, 0x8bbf, 0x449b, 0xac, 0x21, 0xb0, 0x2d, 0xde, 0xb3, 0xb1, 0x36);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXblIdpAuthManager *self, PWSTR msaAccountId, PWSTR xuid) SetGamerAccount;
				public function HRESULT(IXblIdpAuthManager *self, PWSTR* msaAccountId, PWSTR* xuid) GetGamerAccount;
				public function HRESULT(IXblIdpAuthManager *self, PWSTR appSid, PWSTR msaAccountId) SetAppViewInitialized;
				public function HRESULT(IXblIdpAuthManager *self, PWSTR* environment) GetEnvironment;
				public function HRESULT(IXblIdpAuthManager *self, PWSTR* sandbox) GetSandbox;
				public function HRESULT(IXblIdpAuthManager *self, PWSTR msaAccountId, PWSTR appSid, PWSTR msaTarget, PWSTR msaPolicy, PWSTR httpMethod, PWSTR uri, PWSTR headers, uint8* body, uint32 bodySize, BOOL forceRefresh, IXblIdpAuthTokenResult** result) GetTokenAndSignatureWithTokenResult;
			}
		}
		[CRepr]
		public struct IXblIdpAuthTokenResult : IUnknown
		{
			public const new Guid IID = .(0x46ce0225, 0xf267, 0x4d68, 0xb2, 0x99, 0xb2, 0x76, 0x25, 0x52, 0xde, 0xc1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXblIdpAuthTokenResult *self, XBL_IDP_AUTH_TOKEN_STATUS* status) GetStatus;
				public function HRESULT(IXblIdpAuthTokenResult *self, HRESULT* errorCode) GetErrorCode;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* token) GetToken;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* signature) GetSignature;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* sandbox) GetSandbox;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* environment) GetEnvironment;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* msaAccountId) GetMsaAccountId;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* xuid) GetXuid;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* gamertag) GetGamertag;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* ageGroup) GetAgeGroup;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* privileges) GetPrivileges;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* msaTarget) GetMsaTarget;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* msaPolicy) GetMsaPolicy;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* msaAppId) GetMsaAppId;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* redirect) GetRedirect;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* message) GetMessage;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* helpId) GetHelpId;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* enforcementBans) GetEnforcementBans;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* restrictions) GetRestrictions;
				public function HRESULT(IXblIdpAuthTokenResult *self, PWSTR* titleRestrictions) GetTitleRestrictions;
			}
		}
		[CRepr]
		public struct IXblIdpAuthTokenResult2 : IUnknown
		{
			public const new Guid IID = .(0x75d760b0, 0x60b9, 0x412d, 0x99, 0x4f, 0x26, 0xb2, 0xcd, 0x5f, 0x78, 0x12);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXblIdpAuthTokenResult2 *self, PWSTR* value) GetModernGamertag;
				public function HRESULT(IXblIdpAuthTokenResult2 *self, PWSTR* value) GetModernGamertagSuffix;
				public function HRESULT(IXblIdpAuthTokenResult2 *self, PWSTR* value) GetUniqueModernGamertag;
			}
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HasExpandedResources(BOOL* hasExpandedResources);
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetExpandedResourceExclusiveCpuCount(uint32* exclusiveCpuCount);
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReleaseExclusiveCpuSets();
		[Import("api-ms-win-gaming-deviceinformation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGamingDeviceModelInformation(GAMING_DEVICE_MODEL_INFORMATION* information);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUI(HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowPlayerPickerUI(HSTRING promptDisplayText, HSTRING* xuids, uint xuidsCount, HSTRING* preSelectedXuids, uint preSelectedXuidsCount, uint minSelectionCount, uint maxSelectionCount, PlayerPickerUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowProfileCardUI(HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowChangeFriendRelationshipUI(HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowTitleAchievementsUI(uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProcessPendingGameUI(BOOL waitForCompletion);
		[Import("api-ms-win-gaming-tcui-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TryCancelPendingGameUI();
		[Import("api-ms-win-gaming-tcui-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeWithUI(uint32 privilegeId, HSTRING @scope, HSTRING policy, HSTRING friendlyMessage, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeSilently(uint32 privilegeId, HSTRING @scope, HSTRING policy, BOOL* hasPrivilege);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIForUser(IInspectable* user, HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowPlayerPickerUIForUser(IInspectable* user, HSTRING promptDisplayText, HSTRING* xuids, uint xuidsCount, HSTRING* preSelectedXuids, uint preSelectedXuidsCount, uint minSelectionCount, uint maxSelectionCount, PlayerPickerUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowProfileCardUIForUser(IInspectable* user, HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowChangeFriendRelationshipUIForUser(IInspectable* user, HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowTitleAchievementsUIForUser(IInspectable* user, uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeWithUIForUser(IInspectable* user, uint32 privilegeId, HSTRING @scope, HSTRING policy, HSTRING friendlyMessage, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeSilentlyForUser(IInspectable* user, uint32 privilegeId, HSTRING @scope, HSTRING policy, BOOL* hasPrivilege);
		[Import("api-ms-win-gaming-tcui-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIWithContext(HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, HSTRING customActivationContext, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIWithContextForUser(IInspectable* user, HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, HSTRING customActivationContext, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInfoUI(uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInfoUIForUser(IInspectable* user, uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowFindFriendsUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowFindFriendsUIForUser(IInspectable* user, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowCustomizeUserProfileUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowCustomizeUserProfileUIForUser(IInspectable* user, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowUserSettingsUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowUserSettingsUIForUser(IInspectable* user, GameUICompletionRoutine completionRoutine, void* context);
		
	}
}
