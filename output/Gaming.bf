using System;

// namespace Gaming
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum GAME_INSTALL_SCOPE : int32
		{
			NOT_INSTALLED = 1,
			CURRENT_USER = 2,
			ALL_USERS = 3,
		}
		public enum GAMESTATS_OPEN_TYPE : int32
		{
			OPENORCREATE = 0,
			OPENONLY = 1,
		}
		public enum GAMESTATS_OPEN_RESULT : int32
		{
			CREATED = 0,
			OPENED = 1,
		}
		public enum GAMING_DEVICE_VENDOR_ID : int32
		{
			NONE = 0,
			MICROSOFT = -1024700366,
		}
		public enum GAMING_DEVICE_DEVICE_ID : int32
		{
			NONE = 0,
			XBOX_ONE = 1988865574,
			XBOX_ONE_S = 712204761,
			XBOX_ONE_X = 1523980231,
			XBOX_ONE_X_DEVKIT = 284675555,
		}
		public enum KnownGamingPrivileges : int32
		{
			BROADCAST = 190,
			VIEW_FRIENDS_LIST = 197,
			GAME_DVR = 198,
			SHARE_KINECT_CONTENT = 199,
			MULTIPLAYER_PARTIES = 203,
			COMMUNICATION_VOICE_INGAME = 205,
			COMMUNICATION_VOICE_SKYPE = 206,
			CLOUD_GAMING_MANAGE_SESSION = 207,
			CLOUD_GAMING_JOIN_SESSION = 208,
			CLOUD_SAVED_GAMES = 209,
			SHARE_CONTENT = 211,
			PREMIUM_CONTENT = 214,
			SUBSCRIPTION_CONTENT = 219,
			SOCIAL_NETWORK_SHARING = 220,
			PREMIUM_VIDEO = 224,
			VIDEO_COMMUNICATIONS = 235,
			PURCHASE_CONTENT = 245,
			USER_CREATED_CONTENT = 247,
			PROFILE_VIEWING = 249,
			COMMUNICATIONS = 252,
			MULTIPLAYER_SESSIONS = 254,
			ADD_FRIEND = 255,
		}
		public enum XBL_IDP_AUTH_TOKEN_STATUS : int32
		{
			SUCCESS = 0,
			OFFLINE_SUCCESS = 1,
			NO_ACCOUNT_SET = 2,
			LOAD_MSA_ACCOUNT_FAILED = 3,
			XBOX_VETO = 4,
			MSA_INTERRUPT = 5,
			OFFLINE_NO_CONSENT = 6,
			VIEW_NOT_SET = 7,
			UNKNOWN = -1,
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
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddGame(BSTR bstrGDFBinaryPath, BSTR bstrGameInstallDirectory, GAME_INSTALL_SCOPE installScope, out Guid pguidInstanceID) mut => VT.AddGame(ref this, bstrGDFBinaryPath, bstrGameInstallDirectory, installScope, out pguidInstanceID);
			public HRESULT RemoveGame(Guid guidInstanceID) mut => VT.RemoveGame(ref this, guidInstanceID);
			public HRESULT UpdateGame(Guid guidInstanceID) mut => VT.UpdateGame(ref this, guidInstanceID);
			public HRESULT VerifyAccess(BSTR bstrGDFBinaryPath, out BOOL pfHasAccess) mut => VT.VerifyAccess(ref this, bstrGDFBinaryPath, out pfHasAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer self, BSTR bstrGDFBinaryPath, BSTR bstrGameInstallDirectory, GAME_INSTALL_SCOPE installScope, out Guid pguidInstanceID) AddGame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer self, Guid guidInstanceID) RemoveGame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer self, Guid guidInstanceID) UpdateGame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer self, BSTR bstrGDFBinaryPath, out BOOL pfHasAccess) VerifyAccess;
			}
		}
		[CRepr]
		public struct IGameStatistics : IUnknown
		{
			public const new Guid IID = .(0x3887c9ca, 0x04a0, 0x42ae, 0xbc, 0x4c, 0x5f, 0xa6, 0xc7, 0x72, 0x11, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMaxCategoryLength(out uint32 cch) mut => VT.GetMaxCategoryLength(ref this, out cch);
			public HRESULT GetMaxNameLength(out uint32 cch) mut => VT.GetMaxNameLength(ref this, out cch);
			public HRESULT GetMaxValueLength(out uint32 cch) mut => VT.GetMaxValueLength(ref this, out cch);
			public HRESULT GetMaxCategories(out uint16 pMax) mut => VT.GetMaxCategories(ref this, out pMax);
			public HRESULT GetMaxStatsPerCategory(out uint16 pMax) mut => VT.GetMaxStatsPerCategory(ref this, out pMax);
			public HRESULT SetCategoryTitle(uint16 categoryIndex, PWSTR title) mut => VT.SetCategoryTitle(ref this, categoryIndex, title);
			public HRESULT GetCategoryTitle(uint16 categoryIndex, PWSTR* pTitle) mut => VT.GetCategoryTitle(ref this, categoryIndex, pTitle);
			public HRESULT GetStatistic(uint16 categoryIndex, uint16 statIndex, PWSTR* pName, PWSTR* pValue) mut => VT.GetStatistic(ref this, categoryIndex, statIndex, pName, pValue);
			public HRESULT SetStatistic(uint16 categoryIndex, uint16 statIndex, PWSTR name, PWSTR value) mut => VT.SetStatistic(ref this, categoryIndex, statIndex, name, value);
			public HRESULT Save(BOOL trackChanges) mut => VT.Save(ref this, trackChanges);
			public HRESULT SetLastPlayedCategory(uint32 categoryIndex) mut => VT.SetLastPlayedCategory(ref this, categoryIndex);
			public HRESULT GetLastPlayedCategory(out uint32 pCategoryIndex) mut => VT.GetLastPlayedCategory(ref this, out pCategoryIndex);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint32 cch) GetMaxCategoryLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint32 cch) GetMaxNameLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint32 cch) GetMaxValueLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint16 pMax) GetMaxCategories;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint16 pMax) GetMaxStatsPerCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, uint16 categoryIndex, PWSTR title) SetCategoryTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, uint16 categoryIndex, PWSTR* pTitle) GetCategoryTitle;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, uint16 categoryIndex, uint16 statIndex, PWSTR* pName, PWSTR* pValue) GetStatistic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, uint16 categoryIndex, uint16 statIndex, PWSTR name, PWSTR value) SetStatistic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, BOOL trackChanges) Save;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, uint32 categoryIndex) SetLastPlayedCategory;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatistics self, out uint32 pCategoryIndex) GetLastPlayedCategory;
			}
		}
		[CRepr]
		public struct IGameStatisticsMgr : IUnknown
		{
			public const new Guid IID = .(0xaff3ea11, 0xe70e, 0x407d, 0x95, 0xdd, 0x35, 0xe6, 0x12, 0xc4, 0x1c, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetGameStatistics(PWSTR GDFBinaryPath, GAMESTATS_OPEN_TYPE openType, out GAMESTATS_OPEN_RESULT pOpenResult, IGameStatistics** ppiStats) mut => VT.GetGameStatistics(ref this, GDFBinaryPath, openType, out pOpenResult, ppiStats);
			public HRESULT RemoveGameStatistics(PWSTR GDFBinaryPath) mut => VT.RemoveGameStatistics(ref this, GDFBinaryPath);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatisticsMgr self, PWSTR GDFBinaryPath, GAMESTATS_OPEN_TYPE openType, out GAMESTATS_OPEN_RESULT pOpenResult, IGameStatistics** ppiStats) GetGameStatistics;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameStatisticsMgr self, PWSTR GDFBinaryPath) RemoveGameStatistics;
			}
		}
		[CRepr]
		public struct IGameExplorer2 : IUnknown
		{
			public const new Guid IID = .(0x86874aa7, 0xa1ed, 0x450d, 0xa7, 0xeb, 0xb8, 0x9e, 0x20, 0xb2, 0xff, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InstallGame(PWSTR binaryGDFPath, PWSTR installDirectory, GAME_INSTALL_SCOPE installScope) mut => VT.InstallGame(ref this, binaryGDFPath, installDirectory, installScope);
			public HRESULT UninstallGame(PWSTR binaryGDFPath) mut => VT.UninstallGame(ref this, binaryGDFPath);
			public HRESULT CheckAccess(PWSTR binaryGDFPath, out BOOL pHasAccess) mut => VT.CheckAccess(ref this, binaryGDFPath, out pHasAccess);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer2 self, PWSTR binaryGDFPath, PWSTR installDirectory, GAME_INSTALL_SCOPE installScope) InstallGame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer2 self, PWSTR binaryGDFPath) UninstallGame;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IGameExplorer2 self, PWSTR binaryGDFPath, out BOOL pHasAccess) CheckAccess;
			}
		}
		[CRepr]
		public struct IXblIdpAuthManager : IUnknown
		{
			public const new Guid IID = .(0xeb5ddb08, 0x8bbf, 0x449b, 0xac, 0x21, 0xb0, 0x2d, 0xde, 0xb3, 0xb1, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGamerAccount(PWSTR msaAccountId, PWSTR xuid) mut => VT.SetGamerAccount(ref this, msaAccountId, xuid);
			public HRESULT GetGamerAccount(out PWSTR msaAccountId, out PWSTR xuid) mut => VT.GetGamerAccount(ref this, out msaAccountId, out xuid);
			public HRESULT SetAppViewInitialized(PWSTR appSid, PWSTR msaAccountId) mut => VT.SetAppViewInitialized(ref this, appSid, msaAccountId);
			public HRESULT GetEnvironment(out PWSTR environment) mut => VT.GetEnvironment(ref this, out environment);
			public HRESULT GetSandbox(out PWSTR sandbox) mut => VT.GetSandbox(ref this, out sandbox);
			public HRESULT GetTokenAndSignatureWithTokenResult(PWSTR msaAccountId, PWSTR appSid, PWSTR msaTarget, PWSTR msaPolicy, PWSTR httpMethod, PWSTR uri, PWSTR headers, uint8* body, uint32 bodySize, BOOL forceRefresh, out IXblIdpAuthTokenResult* result) mut => VT.GetTokenAndSignatureWithTokenResult(ref this, msaAccountId, appSid, msaTarget, msaPolicy, httpMethod, uri, headers, body, bodySize, forceRefresh, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, PWSTR msaAccountId, PWSTR xuid) SetGamerAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, out PWSTR msaAccountId, out PWSTR xuid) GetGamerAccount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, PWSTR appSid, PWSTR msaAccountId) SetAppViewInitialized;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, out PWSTR environment) GetEnvironment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, out PWSTR sandbox) GetSandbox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthManager self, PWSTR msaAccountId, PWSTR appSid, PWSTR msaTarget, PWSTR msaPolicy, PWSTR httpMethod, PWSTR uri, PWSTR headers, uint8* body, uint32 bodySize, BOOL forceRefresh, out IXblIdpAuthTokenResult* result) GetTokenAndSignatureWithTokenResult;
			}
		}
		[CRepr]
		public struct IXblIdpAuthTokenResult : IUnknown
		{
			public const new Guid IID = .(0x46ce0225, 0xf267, 0x4d68, 0xb2, 0x99, 0xb2, 0x76, 0x25, 0x52, 0xde, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetStatus(out XBL_IDP_AUTH_TOKEN_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT GetErrorCode(out HRESULT errorCode) mut => VT.GetErrorCode(ref this, out errorCode);
			public HRESULT GetToken(out PWSTR token) mut => VT.GetToken(ref this, out token);
			public HRESULT GetSignature(out PWSTR signature) mut => VT.GetSignature(ref this, out signature);
			public HRESULT GetSandbox(out PWSTR sandbox) mut => VT.GetSandbox(ref this, out sandbox);
			public HRESULT GetEnvironment(out PWSTR environment) mut => VT.GetEnvironment(ref this, out environment);
			public HRESULT GetMsaAccountId(out PWSTR msaAccountId) mut => VT.GetMsaAccountId(ref this, out msaAccountId);
			public HRESULT GetXuid(out PWSTR xuid) mut => VT.GetXuid(ref this, out xuid);
			public HRESULT GetGamertag(out PWSTR gamertag) mut => VT.GetGamertag(ref this, out gamertag);
			public HRESULT GetAgeGroup(out PWSTR ageGroup) mut => VT.GetAgeGroup(ref this, out ageGroup);
			public HRESULT GetPrivileges(out PWSTR privileges) mut => VT.GetPrivileges(ref this, out privileges);
			public HRESULT GetMsaTarget(out PWSTR msaTarget) mut => VT.GetMsaTarget(ref this, out msaTarget);
			public HRESULT GetMsaPolicy(out PWSTR msaPolicy) mut => VT.GetMsaPolicy(ref this, out msaPolicy);
			public HRESULT GetMsaAppId(out PWSTR msaAppId) mut => VT.GetMsaAppId(ref this, out msaAppId);
			public HRESULT GetRedirect(out PWSTR redirect) mut => VT.GetRedirect(ref this, out redirect);
			public HRESULT GetMessage(out PWSTR message) mut => VT.GetMessage(ref this, out message);
			public HRESULT GetHelpId(out PWSTR helpId) mut => VT.GetHelpId(ref this, out helpId);
			public HRESULT GetEnforcementBans(out PWSTR enforcementBans) mut => VT.GetEnforcementBans(ref this, out enforcementBans);
			public HRESULT GetRestrictions(out PWSTR restrictions) mut => VT.GetRestrictions(ref this, out restrictions);
			public HRESULT GetTitleRestrictions(out PWSTR titleRestrictions) mut => VT.GetTitleRestrictions(ref this, out titleRestrictions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out XBL_IDP_AUTH_TOKEN_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out HRESULT errorCode) GetErrorCode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR token) GetToken;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR signature) GetSignature;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR sandbox) GetSandbox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR environment) GetEnvironment;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR msaAccountId) GetMsaAccountId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR xuid) GetXuid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR gamertag) GetGamertag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR ageGroup) GetAgeGroup;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR privileges) GetPrivileges;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR msaTarget) GetMsaTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR msaPolicy) GetMsaPolicy;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR msaAppId) GetMsaAppId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR redirect) GetRedirect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR message) GetMessage;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR helpId) GetHelpId;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR enforcementBans) GetEnforcementBans;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR restrictions) GetRestrictions;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult self, out PWSTR titleRestrictions) GetTitleRestrictions;
			}
		}
		[CRepr]
		public struct IXblIdpAuthTokenResult2 : IUnknown
		{
			public const new Guid IID = .(0x75d760b0, 0x60b9, 0x412d, 0x99, 0x4f, 0x26, 0xb2, 0xcd, 0x5f, 0x78, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetModernGamertag(out PWSTR value) mut => VT.GetModernGamertag(ref this, out value);
			public HRESULT GetModernGamertagSuffix(out PWSTR value) mut => VT.GetModernGamertagSuffix(ref this, out value);
			public HRESULT GetUniqueModernGamertag(out PWSTR value) mut => VT.GetUniqueModernGamertag(ref this, out value);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult2 self, out PWSTR value) GetModernGamertag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult2 self, out PWSTR value) GetModernGamertagSuffix;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IXblIdpAuthTokenResult2 self, out PWSTR value) GetUniqueModernGamertag;
			}
		}
		
		// --- Functions ---
		
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HasExpandedResources(out BOOL hasExpandedResources);
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetExpandedResourceExclusiveCpuCount(out uint32 exclusiveCpuCount);
		[Import("api-ms-win-gaming-expandedresources-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ReleaseExclusiveCpuSets();
		[Import("api-ms-win-gaming-deviceinformation-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetGamingDeviceModelInformation(out GAMING_DEVICE_MODEL_INFORMATION information);
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
		public static extern HRESULT CheckGamingPrivilegeSilently(uint32 privilegeId, HSTRING @scope, HSTRING policy, out BOOL hasPrivilege);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIForUser(ref IInspectable user, HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowPlayerPickerUIForUser(ref IInspectable user, HSTRING promptDisplayText, HSTRING* xuids, uint xuidsCount, HSTRING* preSelectedXuids, uint preSelectedXuidsCount, uint minSelectionCount, uint maxSelectionCount, PlayerPickerUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowProfileCardUIForUser(ref IInspectable user, HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowChangeFriendRelationshipUIForUser(ref IInspectable user, HSTRING targetUserXuid, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowTitleAchievementsUIForUser(ref IInspectable user, uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeWithUIForUser(ref IInspectable user, uint32 privilegeId, HSTRING @scope, HSTRING policy, HSTRING friendlyMessage, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CheckGamingPrivilegeSilentlyForUser(ref IInspectable user, uint32 privilegeId, HSTRING @scope, HSTRING policy, out BOOL hasPrivilege);
		[Import("api-ms-win-gaming-tcui-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIWithContext(HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, HSTRING customActivationContext, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-3.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInviteUIWithContextForUser(ref IInspectable user, HSTRING serviceConfigurationId, HSTRING sessionTemplateName, HSTRING sessionId, HSTRING invitationDisplayText, HSTRING customActivationContext, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInfoUI(uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowGameInfoUIForUser(ref IInspectable user, uint32 titleId, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowFindFriendsUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowFindFriendsUIForUser(ref IInspectable user, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowCustomizeUserProfileUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowCustomizeUserProfileUIForUser(ref IInspectable user, GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowUserSettingsUI(GameUICompletionRoutine completionRoutine, void* context);
		[Import("api-ms-win-gaming-tcui-l1-1-4.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ShowUserSettingsUIForUser(ref IInspectable user, GameUICompletionRoutine completionRoutine, void* context);
	}
}
