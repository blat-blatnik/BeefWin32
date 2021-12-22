using System;

// namespace UI.Shell
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT HLINK_E_FIRST = -2147221248;
		public const HRESULT HLINK_S_FIRST = 262400;
		public const uint32 WM_CPL_LAUNCH = 2024;
		public const uint32 WM_CPL_LAUNCHED = 2025;
		public const uint32 CPL_DYNAMIC_RES = 0;
		public const uint32 CPL_INIT = 1;
		public const uint32 CPL_GETCOUNT = 2;
		public const uint32 CPL_INQUIRE = 3;
		public const uint32 CPL_SELECT = 4;
		public const uint32 CPL_DBLCLK = 5;
		public const uint32 CPL_STOP = 6;
		public const uint32 CPL_EXIT = 7;
		public const uint32 CPL_NEWINQUIRE = 8;
		public const uint32 CPL_STARTWPARMSA = 9;
		public const uint32 CPL_STARTWPARMSW = 10;
		public const uint32 CPL_STARTWPARMS = 10;
		public const uint32 CPL_SETUP = 200;
		public const int32 HLINK_S_DONTHIDE = 262400;
		public const Guid FOLDERID_NetworkFolder = .(0xd20beec4, 0x5ca8, 0x4905, 0xae, 0x3b, 0xbf, 0x25, 0x1e, 0xa0, 0x9b, 0x53);
		public const Guid FOLDERID_ComputerFolder = .(0x0ac0837c, 0xbbf8, 0x452a, 0x85, 0x0d, 0x79, 0xd0, 0x8e, 0x66, 0x7c, 0xa7);
		public const Guid FOLDERID_InternetFolder = .(0x4d9f7874, 0x4e0c, 0x4904, 0x96, 0x7b, 0x40, 0xb0, 0xd2, 0x0c, 0x3e, 0x4b);
		public const Guid FOLDERID_ControlPanelFolder = .(0x82a74aeb, 0xaeb4, 0x465c, 0xa0, 0x14, 0xd0, 0x97, 0xee, 0x34, 0x6d, 0x63);
		public const Guid FOLDERID_PrintersFolder = .(0x76fc4e2d, 0xd6ad, 0x4519, 0xa6, 0x63, 0x37, 0xbd, 0x56, 0x06, 0x81, 0x85);
		public const Guid FOLDERID_SyncManagerFolder = .(0x43668bf8, 0xc14e, 0x49b2, 0x97, 0xc9, 0x74, 0x77, 0x84, 0xd7, 0x84, 0xb7);
		public const Guid FOLDERID_SyncSetupFolder = .(0x0f214138, 0xb1d3, 0x4a90, 0xbb, 0xa9, 0x27, 0xcb, 0xc0, 0xc5, 0x38, 0x9a);
		public const Guid FOLDERID_ConflictFolder = .(0x4bfefb45, 0x347d, 0x4006, 0xa5, 0xbe, 0xac, 0x0c, 0xb0, 0x56, 0x71, 0x92);
		public const Guid FOLDERID_SyncResultsFolder = .(0x289a9a43, 0xbe44, 0x4057, 0xa4, 0x1b, 0x58, 0x7a, 0x76, 0xd7, 0xe7, 0xf9);
		public const Guid FOLDERID_RecycleBinFolder = .(0xb7534046, 0x3ecb, 0x4c18, 0xbe, 0x4e, 0x64, 0xcd, 0x4c, 0xb7, 0xd6, 0xac);
		public const Guid FOLDERID_ConnectionsFolder = .(0x6f0cd92b, 0x2e97, 0x45d1, 0x88, 0xff, 0xb0, 0xd1, 0x86, 0xb8, 0xde, 0xdd);
		public const Guid FOLDERID_Fonts = .(0xfd228cb7, 0xae11, 0x4ae3, 0x86, 0x4c, 0x16, 0xf3, 0x91, 0x0a, 0xb8, 0xfe);
		public const Guid FOLDERID_Desktop = .(0xb4bfcc3a, 0xdb2c, 0x424c, 0xb0, 0x29, 0x7f, 0xe9, 0x9a, 0x87, 0xc6, 0x41);
		public const Guid FOLDERID_Startup = .(0xb97d20bb, 0xf46a, 0x4c97, 0xba, 0x10, 0x5e, 0x36, 0x08, 0x43, 0x08, 0x54);
		public const Guid FOLDERID_Programs = .(0xa77f5d77, 0x2e2b, 0x44c3, 0xa6, 0xa2, 0xab, 0xa6, 0x01, 0x05, 0x4a, 0x51);
		public const Guid FOLDERID_StartMenu = .(0x625b53c3, 0xab48, 0x4ec1, 0xba, 0x1f, 0xa1, 0xef, 0x41, 0x46, 0xfc, 0x19);
		public const Guid FOLDERID_Recent = .(0xae50c081, 0xebd2, 0x438a, 0x86, 0x55, 0x8a, 0x09, 0x2e, 0x34, 0x98, 0x7a);
		public const Guid FOLDERID_SendTo = .(0x8983036c, 0x27c0, 0x404b, 0x8f, 0x08, 0x10, 0x2d, 0x10, 0xdc, 0xfd, 0x74);
		public const Guid FOLDERID_Documents = .(0xfdd39ad0, 0x238f, 0x46af, 0xad, 0xb4, 0x6c, 0x85, 0x48, 0x03, 0x69, 0xc7);
		public const Guid FOLDERID_Favorites = .(0x1777f761, 0x68ad, 0x4d8a, 0x87, 0xbd, 0x30, 0xb7, 0x59, 0xfa, 0x33, 0xdd);
		public const Guid FOLDERID_NetHood = .(0xc5abbf53, 0xe17f, 0x4121, 0x89, 0x00, 0x86, 0x62, 0x6f, 0xc2, 0xc9, 0x73);
		public const Guid FOLDERID_PrintHood = .(0x9274bd8d, 0xcfd1, 0x41c3, 0xb3, 0x5e, 0xb1, 0x3f, 0x55, 0xa7, 0x58, 0xf4);
		public const Guid FOLDERID_Templates = .(0xa63293e8, 0x664e, 0x48db, 0xa0, 0x79, 0xdf, 0x75, 0x9e, 0x05, 0x09, 0xf7);
		public const Guid FOLDERID_CommonStartup = .(0x82a5ea35, 0xd9cd, 0x47c5, 0x96, 0x29, 0xe1, 0x5d, 0x2f, 0x71, 0x4e, 0x6e);
		public const Guid FOLDERID_CommonPrograms = .(0x0139d44e, 0x6afe, 0x49f2, 0x86, 0x90, 0x3d, 0xaf, 0xca, 0xe6, 0xff, 0xb8);
		public const Guid FOLDERID_CommonStartMenu = .(0xa4115719, 0xd62e, 0x491d, 0xaa, 0x7c, 0xe7, 0x4b, 0x8b, 0xe3, 0xb0, 0x67);
		public const Guid FOLDERID_PublicDesktop = .(0xc4aa340d, 0xf20f, 0x4863, 0xaf, 0xef, 0xf8, 0x7e, 0xf2, 0xe6, 0xba, 0x25);
		public const Guid FOLDERID_ProgramData = .(0x62ab5d82, 0xfdc1, 0x4dc3, 0xa9, 0xdd, 0x07, 0x0d, 0x1d, 0x49, 0x5d, 0x97);
		public const Guid FOLDERID_CommonTemplates = .(0xb94237e7, 0x57ac, 0x4347, 0x91, 0x51, 0xb0, 0x8c, 0x6c, 0x32, 0xd1, 0xf7);
		public const Guid FOLDERID_PublicDocuments = .(0xed4824af, 0xdce4, 0x45a8, 0x81, 0xe2, 0xfc, 0x79, 0x65, 0x08, 0x36, 0x34);
		public const Guid FOLDERID_RoamingAppData = .(0x3eb685db, 0x65f9, 0x4cf6, 0xa0, 0x3a, 0xe3, 0xef, 0x65, 0x72, 0x9f, 0x3d);
		public const Guid FOLDERID_LocalAppData = .(0xf1b32785, 0x6fba, 0x4fcf, 0x9d, 0x55, 0x7b, 0x8e, 0x7f, 0x15, 0x70, 0x91);
		public const Guid FOLDERID_LocalAppDataLow = .(0xa520a1a4, 0x1780, 0x4ff6, 0xbd, 0x18, 0x16, 0x73, 0x43, 0xc5, 0xaf, 0x16);
		public const Guid FOLDERID_InternetCache = .(0x352481e8, 0x33be, 0x4251, 0xba, 0x85, 0x60, 0x07, 0xca, 0xed, 0xcf, 0x9d);
		public const Guid FOLDERID_Cookies = .(0x2b0f765d, 0xc0e9, 0x4171, 0x90, 0x8e, 0x08, 0xa6, 0x11, 0xb8, 0x4f, 0xf6);
		public const Guid FOLDERID_History = .(0xd9dc8a3b, 0xb784, 0x432e, 0xa7, 0x81, 0x5a, 0x11, 0x30, 0xa7, 0x59, 0x63);
		public const Guid FOLDERID_System = .(0x1ac14e77, 0x02e7, 0x4e5d, 0xb7, 0x44, 0x2e, 0xb1, 0xae, 0x51, 0x98, 0xb7);
		public const Guid FOLDERID_SystemX86 = .(0xd65231b0, 0xb2f1, 0x4857, 0xa4, 0xce, 0xa8, 0xe7, 0xc6, 0xea, 0x7d, 0x27);
		public const Guid FOLDERID_Windows = .(0xf38bf404, 0x1d43, 0x42f2, 0x93, 0x05, 0x67, 0xde, 0x0b, 0x28, 0xfc, 0x23);
		public const Guid FOLDERID_Profile = .(0x5e6c858f, 0x0e22, 0x4760, 0x9a, 0xfe, 0xea, 0x33, 0x17, 0xb6, 0x71, 0x73);
		public const Guid FOLDERID_Pictures = .(0x33e28130, 0x4e1e, 0x4676, 0x83, 0x5a, 0x98, 0x39, 0x5c, 0x3b, 0xc3, 0xbb);
		public const Guid FOLDERID_ProgramFilesX86 = .(0x7c5a40ef, 0xa0fb, 0x4bfc, 0x87, 0x4a, 0xc0, 0xf2, 0xe0, 0xb9, 0xfa, 0x8e);
		public const Guid FOLDERID_ProgramFilesCommonX86 = .(0xde974d24, 0xd9c6, 0x4d3e, 0xbf, 0x91, 0xf4, 0x45, 0x51, 0x20, 0xb9, 0x17);
		public const Guid FOLDERID_ProgramFilesX64 = .(0x6d809377, 0x6af0, 0x444b, 0x89, 0x57, 0xa3, 0x77, 0x3f, 0x02, 0x20, 0x0e);
		public const Guid FOLDERID_ProgramFilesCommonX64 = .(0x6365d5a7, 0x0f0d, 0x45e5, 0x87, 0xf6, 0x0d, 0xa5, 0x6b, 0x6a, 0x4f, 0x7d);
		public const Guid FOLDERID_ProgramFiles = .(0x905e63b6, 0xc1bf, 0x494e, 0xb2, 0x9c, 0x65, 0xb7, 0x32, 0xd3, 0xd2, 0x1a);
		public const Guid FOLDERID_ProgramFilesCommon = .(0xf7f1ed05, 0x9f6d, 0x47a2, 0xaa, 0xae, 0x29, 0xd3, 0x17, 0xc6, 0xf0, 0x66);
		public const Guid FOLDERID_UserProgramFiles = .(0x5cd7aee2, 0x2219, 0x4a67, 0xb8, 0x5d, 0x6c, 0x9c, 0xe1, 0x56, 0x60, 0xcb);
		public const Guid FOLDERID_UserProgramFilesCommon = .(0xbcbd3057, 0xca5c, 0x4622, 0xb4, 0x2d, 0xbc, 0x56, 0xdb, 0x0a, 0xe5, 0x16);
		public const Guid FOLDERID_AdminTools = .(0x724ef170, 0xa42d, 0x4fef, 0x9f, 0x26, 0xb6, 0x0e, 0x84, 0x6f, 0xba, 0x4f);
		public const Guid FOLDERID_CommonAdminTools = .(0xd0384e7d, 0xbac3, 0x4797, 0x8f, 0x14, 0xcb, 0xa2, 0x29, 0xb3, 0x92, 0xb5);
		public const Guid FOLDERID_Music = .(0x4bd8d571, 0x6d19, 0x48d3, 0xbe, 0x97, 0x42, 0x22, 0x20, 0x08, 0x0e, 0x43);
		public const Guid FOLDERID_Videos = .(0x18989b1d, 0x99b5, 0x455b, 0x84, 0x1c, 0xab, 0x7c, 0x74, 0xe4, 0xdd, 0xfc);
		public const Guid FOLDERID_Ringtones = .(0xc870044b, 0xf49e, 0x4126, 0xa9, 0xc3, 0xb5, 0x2a, 0x1f, 0xf4, 0x11, 0xe8);
		public const Guid FOLDERID_PublicPictures = .(0xb6ebfb86, 0x6907, 0x413c, 0x9a, 0xf7, 0x4f, 0xc2, 0xab, 0xf0, 0x7c, 0xc5);
		public const Guid FOLDERID_PublicMusic = .(0x3214fab5, 0x9757, 0x4298, 0xbb, 0x61, 0x92, 0xa9, 0xde, 0xaa, 0x44, 0xff);
		public const Guid FOLDERID_PublicVideos = .(0x2400183a, 0x6185, 0x49fb, 0xa2, 0xd8, 0x4a, 0x39, 0x2a, 0x60, 0x2b, 0xa3);
		public const Guid FOLDERID_PublicRingtones = .(0xe555ab60, 0x153b, 0x4d17, 0x9f, 0x04, 0xa5, 0xfe, 0x99, 0xfc, 0x15, 0xec);
		public const Guid FOLDERID_ResourceDir = .(0x8ad10c31, 0x2adb, 0x4296, 0xa8, 0xf7, 0xe4, 0x70, 0x12, 0x32, 0xc9, 0x72);
		public const Guid FOLDERID_LocalizedResourcesDir = .(0x2a00375e, 0x224c, 0x49de, 0xb8, 0xd1, 0x44, 0x0d, 0xf7, 0xef, 0x3d, 0xdc);
		public const Guid FOLDERID_CommonOEMLinks = .(0xc1bae2d0, 0x10df, 0x4334, 0xbe, 0xdd, 0x7a, 0xa2, 0x0b, 0x22, 0x7a, 0x9d);
		public const Guid FOLDERID_CDBurning = .(0x9e52ab10, 0xf80d, 0x49df, 0xac, 0xb8, 0x43, 0x30, 0xf5, 0x68, 0x78, 0x55);
		public const Guid FOLDERID_UserProfiles = .(0x0762d272, 0xc50a, 0x4bb0, 0xa3, 0x82, 0x69, 0x7d, 0xcd, 0x72, 0x9b, 0x80);
		public const Guid FOLDERID_Playlists = .(0xde92c1c7, 0x837f, 0x4f69, 0xa3, 0xbb, 0x86, 0xe6, 0x31, 0x20, 0x4a, 0x23);
		public const Guid FOLDERID_SamplePlaylists = .(0x15ca69b3, 0x30ee, 0x49c1, 0xac, 0xe1, 0x6b, 0x5e, 0xc3, 0x72, 0xaf, 0xb5);
		public const Guid FOLDERID_SampleMusic = .(0xb250c668, 0xf57d, 0x4ee1, 0xa6, 0x3c, 0x29, 0x0e, 0xe7, 0xd1, 0xaa, 0x1f);
		public const Guid FOLDERID_SamplePictures = .(0xc4900540, 0x2379, 0x4c75, 0x84, 0x4b, 0x64, 0xe6, 0xfa, 0xf8, 0x71, 0x6b);
		public const Guid FOLDERID_SampleVideos = .(0x859ead94, 0x2e85, 0x48ad, 0xa7, 0x1a, 0x09, 0x69, 0xcb, 0x56, 0xa6, 0xcd);
		public const Guid FOLDERID_PhotoAlbums = .(0x69d2cf90, 0xfc33, 0x4fb7, 0x9a, 0x0c, 0xeb, 0xb0, 0xf0, 0xfc, 0xb4, 0x3c);
		public const Guid FOLDERID_Public = .(0xdfdf76a2, 0xc82a, 0x4d63, 0x90, 0x6a, 0x56, 0x44, 0xac, 0x45, 0x73, 0x85);
		public const Guid FOLDERID_ChangeRemovePrograms = .(0xdf7266ac, 0x9274, 0x4867, 0x8d, 0x55, 0x3b, 0xd6, 0x61, 0xde, 0x87, 0x2d);
		public const Guid FOLDERID_AppUpdates = .(0xa305ce99, 0xf527, 0x492b, 0x8b, 0x1a, 0x7e, 0x76, 0xfa, 0x98, 0xd6, 0xe4);
		public const Guid FOLDERID_AddNewPrograms = .(0xde61d971, 0x5ebc, 0x4f02, 0xa3, 0xa9, 0x6c, 0x82, 0x89, 0x5e, 0x5c, 0x04);
		public const Guid FOLDERID_Downloads = .(0x374de290, 0x123f, 0x4565, 0x91, 0x64, 0x39, 0xc4, 0x92, 0x5e, 0x46, 0x7b);
		public const Guid FOLDERID_PublicDownloads = .(0x3d644c9b, 0x1fb8, 0x4f30, 0x9b, 0x45, 0xf6, 0x70, 0x23, 0x5f, 0x79, 0xc0);
		public const Guid FOLDERID_SavedSearches = .(0x7d1d3a04, 0xdebb, 0x4115, 0x95, 0xcf, 0x2f, 0x29, 0xda, 0x29, 0x20, 0xda);
		public const Guid FOLDERID_QuickLaunch = .(0x52a4f021, 0x7b75, 0x48a9, 0x9f, 0x6b, 0x4b, 0x87, 0xa2, 0x10, 0xbc, 0x8f);
		public const Guid FOLDERID_Contacts = .(0x56784854, 0xc6cb, 0x462b, 0x81, 0x69, 0x88, 0xe3, 0x50, 0xac, 0xb8, 0x82);
		public const Guid FOLDERID_SidebarParts = .(0xa75d362e, 0x50fc, 0x4fb7, 0xac, 0x2c, 0xa8, 0xbe, 0xaa, 0x31, 0x44, 0x93);
		public const Guid FOLDERID_SidebarDefaultParts = .(0x7b396e54, 0x9ec5, 0x4300, 0xbe, 0x0a, 0x24, 0x82, 0xeb, 0xae, 0x1a, 0x26);
		public const Guid FOLDERID_PublicGameTasks = .(0xdebf2536, 0xe1a8, 0x4c59, 0xb6, 0xa2, 0x41, 0x45, 0x86, 0x47, 0x6a, 0xea);
		public const Guid FOLDERID_GameTasks = .(0x054fae61, 0x4dd8, 0x4787, 0x80, 0xb6, 0x09, 0x02, 0x20, 0xc4, 0xb7, 0x00);
		public const Guid FOLDERID_SavedGames = .(0x4c5c32ff, 0xbb9d, 0x43b0, 0xb5, 0xb4, 0x2d, 0x72, 0xe5, 0x4e, 0xaa, 0xa4);
		public const Guid FOLDERID_Games = .(0xcac52c1a, 0xb53d, 0x4edc, 0x92, 0xd7, 0x6b, 0x2e, 0x8a, 0xc1, 0x94, 0x34);
		public const Guid FOLDERID_SEARCH_MAPI = .(0x98ec0e18, 0x2098, 0x4d44, 0x86, 0x44, 0x66, 0x97, 0x93, 0x15, 0xa2, 0x81);
		public const Guid FOLDERID_SEARCH_CSC = .(0xee32e446, 0x31ca, 0x4aba, 0x81, 0x4f, 0xa5, 0xeb, 0xd2, 0xfd, 0x6d, 0x5e);
		public const Guid FOLDERID_Links = .(0xbfb9d5e0, 0xc6a9, 0x404c, 0xb2, 0xb2, 0xae, 0x6d, 0xb6, 0xaf, 0x49, 0x68);
		public const Guid FOLDERID_UsersFiles = .(0xf3ce0f7c, 0x4901, 0x4acc, 0x86, 0x48, 0xd5, 0xd4, 0x4b, 0x04, 0xef, 0x8f);
		public const Guid FOLDERID_UsersLibraries = .(0xa302545d, 0xdeff, 0x464b, 0xab, 0xe8, 0x61, 0xc8, 0x64, 0x8d, 0x93, 0x9b);
		public const Guid FOLDERID_SearchHome = .(0x190337d1, 0xb8ca, 0x4121, 0xa6, 0x39, 0x6d, 0x47, 0x2d, 0x16, 0x97, 0x2a);
		public const Guid FOLDERID_OriginalImages = .(0x2c36c0aa, 0x5812, 0x4b87, 0xbf, 0xd0, 0x4c, 0xd0, 0xdf, 0xb1, 0x9b, 0x39);
		public const Guid FOLDERID_DocumentsLibrary = .(0x7b0db17d, 0x9cd2, 0x4a93, 0x97, 0x33, 0x46, 0xcc, 0x89, 0x02, 0x2e, 0x7c);
		public const Guid FOLDERID_MusicLibrary = .(0x2112ab0a, 0xc86a, 0x4ffe, 0xa3, 0x68, 0x0d, 0xe9, 0x6e, 0x47, 0x01, 0x2e);
		public const Guid FOLDERID_PicturesLibrary = .(0xa990ae9f, 0xa03b, 0x4e80, 0x94, 0xbc, 0x99, 0x12, 0xd7, 0x50, 0x41, 0x04);
		public const Guid FOLDERID_VideosLibrary = .(0x491e922f, 0x5643, 0x4af4, 0xa7, 0xeb, 0x4e, 0x7a, 0x13, 0x8d, 0x81, 0x74);
		public const Guid FOLDERID_RecordedTVLibrary = .(0x1a6fdba2, 0xf42d, 0x4358, 0xa7, 0x98, 0xb7, 0x4d, 0x74, 0x59, 0x26, 0xc5);
		public const Guid FOLDERID_HomeGroup = .(0x52528a6b, 0xb9e3, 0x4add, 0xb6, 0x0d, 0x58, 0x8c, 0x2d, 0xba, 0x84, 0x2d);
		public const Guid FOLDERID_HomeGroupCurrentUser = .(0x9b74b6a3, 0x0dfd, 0x4f11, 0x9e, 0x78, 0x5f, 0x78, 0x00, 0xf2, 0xe7, 0x72);
		public const Guid FOLDERID_DeviceMetadataStore = .(0x5ce4a5e9, 0xe4eb, 0x479d, 0xb8, 0x9f, 0x13, 0x0c, 0x02, 0x88, 0x61, 0x55);
		public const Guid FOLDERID_Libraries = .(0x1b3ea5dc, 0xb587, 0x4786, 0xb4, 0xef, 0xbd, 0x1d, 0xc3, 0x32, 0xae, 0xae);
		public const Guid FOLDERID_PublicLibraries = .(0x48daf80b, 0xe6cf, 0x4f4e, 0xb8, 0x00, 0x0e, 0x69, 0xd8, 0x4e, 0xe3, 0x84);
		public const Guid FOLDERID_UserPinned = .(0x9e3995ab, 0x1f9c, 0x4f13, 0xb8, 0x27, 0x48, 0xb2, 0x4b, 0x6c, 0x71, 0x74);
		public const Guid FOLDERID_ImplicitAppShortcuts = .(0xbcb5256f, 0x79f6, 0x4cee, 0xb7, 0x25, 0xdc, 0x34, 0xe4, 0x02, 0xfd, 0x46);
		public const Guid FOLDERID_AccountPictures = .(0x008ca0b1, 0x55b4, 0x4c56, 0xb8, 0xa8, 0x4d, 0xe4, 0xb2, 0x99, 0xd3, 0xbe);
		public const Guid FOLDERID_PublicUserTiles = .(0x0482af6c, 0x08f1, 0x4c34, 0x8c, 0x90, 0xe1, 0x7e, 0xc9, 0x8b, 0x1e, 0x17);
		public const Guid FOLDERID_AppsFolder = .(0x1e87508d, 0x89c2, 0x42f0, 0x8a, 0x7e, 0x64, 0x5a, 0x0f, 0x50, 0xca, 0x58);
		public const Guid FOLDERID_StartMenuAllPrograms = .(0xf26305ef, 0x6948, 0x40b9, 0xb2, 0x55, 0x81, 0x45, 0x3d, 0x09, 0xc7, 0x85);
		public const Guid FOLDERID_CommonStartMenuPlaces = .(0xa440879f, 0x87a0, 0x4f7d, 0xb7, 0x00, 0x02, 0x07, 0xb9, 0x66, 0x19, 0x4a);
		public const Guid FOLDERID_ApplicationShortcuts = .(0xa3918781, 0xe5f2, 0x4890, 0xb3, 0xd9, 0xa7, 0xe5, 0x43, 0x32, 0x32, 0x8c);
		public const Guid FOLDERID_RoamingTiles = .(0x00bcfc5a, 0xed94, 0x4e48, 0x96, 0xa1, 0x3f, 0x62, 0x17, 0xf2, 0x19, 0x90);
		public const Guid FOLDERID_RoamedTileImages = .(0xaaa8d5a5, 0xf1d6, 0x4259, 0xba, 0xa8, 0x78, 0xe7, 0xef, 0x60, 0x83, 0x5e);
		public const Guid FOLDERID_Screenshots = .(0xb7bede81, 0xdf94, 0x4682, 0xa7, 0xd8, 0x57, 0xa5, 0x26, 0x20, 0xb8, 0x6f);
		public const Guid FOLDERID_CameraRoll = .(0xab5fb87b, 0x7ce2, 0x4f83, 0x91, 0x5d, 0x55, 0x08, 0x46, 0xc9, 0x53, 0x7b);
		public const Guid FOLDERID_SkyDrive = .(0xa52bba46, 0xe9e1, 0x435f, 0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6);
		public const Guid FOLDERID_OneDrive = .(0xa52bba46, 0xe9e1, 0x435f, 0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6);
		public const Guid FOLDERID_SkyDriveDocuments = .(0x24d89e24, 0x2f19, 0x4534, 0x9d, 0xde, 0x6a, 0x66, 0x71, 0xfb, 0xb8, 0xfe);
		public const Guid FOLDERID_SkyDrivePictures = .(0x339719b5, 0x8c47, 0x4894, 0x94, 0xc2, 0xd8, 0xf7, 0x7a, 0xdd, 0x44, 0xa6);
		public const Guid FOLDERID_SkyDriveMusic = .(0xc3f2459e, 0x80d6, 0x45dc, 0xbf, 0xef, 0x1f, 0x76, 0x9f, 0x2b, 0xe7, 0x30);
		public const Guid FOLDERID_SkyDriveCameraRoll = .(0x767e6811, 0x49cb, 0x4273, 0x87, 0xc2, 0x20, 0xf3, 0x55, 0xe1, 0x08, 0x5b);
		public const Guid FOLDERID_SearchHistory = .(0x0d4c3db6, 0x03a3, 0x462f, 0xa0, 0xe6, 0x08, 0x92, 0x4c, 0x41, 0xb5, 0xd4);
		public const Guid FOLDERID_SearchTemplates = .(0x7e636bfe, 0xdfa9, 0x4d5e, 0xb4, 0x56, 0xd7, 0xb3, 0x98, 0x51, 0xd8, 0xa9);
		public const Guid FOLDERID_CameraRollLibrary = .(0x2b20df75, 0x1eda, 0x4039, 0x80, 0x97, 0x38, 0x79, 0x82, 0x27, 0xd5, 0xb7);
		public const Guid FOLDERID_SavedPictures = .(0x3b193882, 0xd3ad, 0x4eab, 0x96, 0x5a, 0x69, 0x82, 0x9d, 0x1f, 0xb5, 0x9f);
		public const Guid FOLDERID_SavedPicturesLibrary = .(0xe25b5812, 0xbe88, 0x4bd9, 0x94, 0xb0, 0x29, 0x23, 0x34, 0x77, 0xb6, 0xc3);
		public const Guid FOLDERID_RetailDemo = .(0x12d4c69e, 0x24ad, 0x4923, 0xbe, 0x19, 0x31, 0x32, 0x1c, 0x43, 0xa7, 0x67);
		public const Guid FOLDERID_Device = .(0x1c2ac1dc, 0x4358, 0x4b6c, 0x97, 0x33, 0xaf, 0x21, 0x15, 0x65, 0x76, 0xf0);
		public const Guid FOLDERID_DevelopmentFiles = .(0xdbe8e08e, 0x3053, 0x4bbc, 0xb1, 0x83, 0x2a, 0x7b, 0x2b, 0x19, 0x1e, 0x59);
		public const Guid FOLDERID_Objects3D = .(0x31c0dd25, 0x9439, 0x4f12, 0xbf, 0x41, 0x7f, 0xf4, 0xed, 0xa3, 0x87, 0x22);
		public const Guid FOLDERID_AppCaptures = .(0xedc0fe71, 0x98d8, 0x4f4a, 0xb9, 0x20, 0xc8, 0xdc, 0x13, 0x3c, 0xb1, 0x65);
		public const Guid FOLDERID_LocalDocuments = .(0xf42ee2d3, 0x909f, 0x4907, 0x88, 0x71, 0x4c, 0x22, 0xfc, 0x0b, 0xf7, 0x56);
		public const Guid FOLDERID_LocalPictures = .(0x0ddd015d, 0xb06c, 0x45d5, 0x8c, 0x4c, 0xf5, 0x97, 0x13, 0x85, 0x46, 0x39);
		public const Guid FOLDERID_LocalVideos = .(0x35286a68, 0x3c57, 0x41a1, 0xbb, 0xb1, 0x0e, 0xae, 0x73, 0xd7, 0x6c, 0x95);
		public const Guid FOLDERID_LocalMusic = .(0xa0c69a99, 0x21c8, 0x4671, 0x87, 0x03, 0x79, 0x34, 0x16, 0x2f, 0xcf, 0x1d);
		public const Guid FOLDERID_LocalDownloads = .(0x7d83ee9b, 0x2244, 0x4e70, 0xb1, 0xf5, 0x53, 0x93, 0x04, 0x2a, 0xf1, 0xe4);
		public const Guid FOLDERID_RecordedCalls = .(0x2f8b40c2, 0x83ed, 0x48ee, 0xb3, 0x83, 0xa1, 0xf1, 0x57, 0xec, 0x6f, 0x9a);
		public const Guid FOLDERID_AllAppMods = .(0x7ad67899, 0x66af, 0x43ba, 0x91, 0x56, 0x6a, 0xad, 0x42, 0xe6, 0xc5, 0x96);
		public const Guid FOLDERID_CurrentAppMods = .(0x3db40b20, 0x2a30, 0x4dbe, 0x91, 0x7e, 0x77, 0x1d, 0xd2, 0x1d, 0xd0, 0x99);
		public const Guid FOLDERID_AppDataDesktop = .(0xb2c5e279, 0x7add, 0x439f, 0xb2, 0x8c, 0xc4, 0x1f, 0xe1, 0xbb, 0xf6, 0x72);
		public const Guid FOLDERID_AppDataDocuments = .(0x7be16610, 0x1f7f, 0x44ac, 0xbf, 0xf0, 0x83, 0xe1, 0x5f, 0x2f, 0xfc, 0xa1);
		public const Guid FOLDERID_AppDataFavorites = .(0x7cfbefbc, 0xde1f, 0x45aa, 0xb8, 0x43, 0xa5, 0x42, 0xac, 0x53, 0x6c, 0xc9);
		public const Guid FOLDERID_AppDataProgramData = .(0x559d40a3, 0xa036, 0x40fa, 0xaf, 0x61, 0x84, 0xcb, 0x43, 0x0a, 0x4d, 0x34);
		public const Guid FOLDERID_LocalStorage = .(0xb3eb08d3, 0xa1f3, 0x496b, 0x86, 0x5a, 0x42, 0xb5, 0x36, 0xcd, 0xa0, 0xec);
		public const Guid CLSID_InternetShortcut = .(0xfbf23b40, 0xe3f0, 0x101b, 0x84, 0x88, 0x00, 0xaa, 0x00, 0x3e, 0x56, 0xf8);
		public const Guid CLSID_NetworkDomain = .(0x46e06680, 0x4bf0, 0x11d1, 0x83, 0xee, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0x49);
		public const Guid CLSID_NetworkServer = .(0xc0542a90, 0x4bf0, 0x11d1, 0x83, 0xee, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0x49);
		public const Guid CLSID_NetworkShare = .(0x54a754c0, 0x4bf0, 0x11d1, 0x83, 0xee, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0x49);
		public const Guid CLSID_MyComputer = .(0x20d04fe0, 0x3aea, 0x1069, 0xa2, 0xd8, 0x08, 0x00, 0x2b, 0x30, 0x30, 0x9d);
		public const Guid CLSID_Internet = .(0x871c5380, 0x42a0, 0x1069, 0xa2, 0xea, 0x08, 0x00, 0x2b, 0x30, 0x30, 0x9d);
		public const Guid CLSID_RecycleBin = .(0x645ff040, 0x5081, 0x101b, 0x9f, 0x08, 0x00, 0xaa, 0x00, 0x2f, 0x95, 0x4e);
		public const Guid CLSID_ControlPanel = .(0x21ec2020, 0x3aea, 0x1069, 0xa2, 0xdd, 0x08, 0x00, 0x2b, 0x30, 0x30, 0x9d);
		public const Guid CLSID_Printers = .(0x2227a280, 0x3aea, 0x1069, 0xa2, 0xde, 0x08, 0x00, 0x2b, 0x30, 0x30, 0x9d);
		public const Guid CLSID_MyDocuments = .(0x450d8fba, 0xad25, 0x11d0, 0x98, 0xa8, 0x08, 0x00, 0x36, 0x1b, 0x11, 0x03);
		public const Guid CATID_BrowsableShellExt = .(0x00021490, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CATID_BrowseInPlace = .(0x00021491, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CATID_DeskBand = .(0x00021492, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CATID_InfoBand = .(0x00021493, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CATID_CommBand = .(0x00021494, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid FMTID_Intshcut = .(0x000214a0, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid FMTID_InternetSite = .(0x000214a1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CGID_Explorer = .(0x000214d0, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CGID_ShellDocView = .(0x000214d1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CGID_ShellServiceObject = .(0x000214d2, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CGID_ExplorerBarDoc = .(0x000214d3, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CLSID_FolderShortcut = .(0x0afaced1, 0xe828, 0x11d1, 0x91, 0x87, 0xb5, 0x32, 0xf1, 0xe9, 0x57, 0x5d);
		public const Guid CLSID_CFSIconOverlayManager = .(0x63b51f81, 0xc868, 0x11d0, 0x99, 0x9c, 0x00, 0xc0, 0x4f, 0xd6, 0x55, 0xe1);
		public const Guid CLSID_ShellThumbnailDiskCache = .(0x1ebdcf80, 0xa200, 0x11d0, 0xa3, 0xa4, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
		public const Guid SID_DefView = .(0x6d12fe80, 0x7911, 0x11cf, 0x95, 0x34, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
		public const Guid CGID_DefView = .(0x4af07f10, 0xd231, 0x11d0, 0xb9, 0x42, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xe1);
		public const Guid CLSID_MenuBand = .(0x5b4dae26, 0xb807, 0x11d0, 0x98, 0x15, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
		public const Guid VID_LargeIcons = .(0x0057d0e0, 0x3573, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		public const Guid VID_SmallIcons = .(0x089000c0, 0x3573, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		public const Guid VID_List = .(0x0e1fa5e0, 0x3573, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		public const Guid VID_Details = .(0x137e7700, 0x3573, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		public const Guid VID_Tile = .(0x65f125e5, 0x7be1, 0x4810, 0xba, 0x9d, 0xd2, 0x71, 0xc8, 0x43, 0x2c, 0xe3);
		public const Guid VID_Content = .(0x30c2c434, 0x0889, 0x4c8d, 0x98, 0x5d, 0xa9, 0xf7, 0x18, 0x30, 0xb0, 0xa9);
		public const Guid VID_Thumbnails = .(0x8bebb290, 0x52d0, 0x11d0, 0xb7, 0xf4, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
		public const Guid VID_ThumbStrip = .(0x8eefa624, 0xd1e9, 0x445b, 0x94, 0xb7, 0x74, 0xfb, 0xce, 0x2e, 0xa1, 0x1a);
		public const Guid SID_SInPlaceBrowser = .(0x1d2ae02b, 0x3655, 0x46cc, 0xb6, 0x3a, 0x28, 0x59, 0x88, 0x15, 0x3b, 0xca);
		public const Guid SID_SSearchBoxInfo = .(0x142daa61, 0x516b, 0x4713, 0xb4, 0x9c, 0xfb, 0x98, 0x5e, 0xf8, 0x29, 0x98);
		public const Guid SID_CommandsPropertyBag = .(0x6e043250, 0x4416, 0x485c, 0xb1, 0x43, 0xe6, 0x2a, 0x76, 0x0d, 0x9f, 0xe5);
		public const Guid CLSID_CUrlHistory = .(0x3c374a40, 0xbae4, 0x11cf, 0xbf, 0x7d, 0x00, 0xaa, 0x00, 0x69, 0x46, 0xee);
		public const Guid CLSID_CURLSearchHook = .(0xcfbfae00, 0x17a6, 0x11d0, 0x99, 0xcb, 0x00, 0xc0, 0x4f, 0xd6, 0x44, 0x97);
		public const Guid CLSID_AutoComplete = .(0x00bb2763, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		public const Guid CLSID_ACLHistory = .(0x00bb2764, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		public const Guid CLSID_ACListISF = .(0x03c036f1, 0xa186, 0x11d0, 0x82, 0x4a, 0x00, 0xaa, 0x00, 0x5b, 0x43, 0x83);
		public const Guid CLSID_ACLMRU = .(0x6756a641, 0xde71, 0x11d0, 0x83, 0x1b, 0x00, 0xaa, 0x00, 0x5b, 0x43, 0x83);
		public const Guid CLSID_ACLMulti = .(0x00bb2765, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		public const Guid CLSID_ACLCustomMRU = .(0x6935db93, 0x21e8, 0x4ccc, 0xbe, 0xb9, 0x9f, 0xe3, 0xc7, 0x7a, 0x29, 0x7a);
		public const Guid CLSID_ProgressDialog = .(0xf8383852, 0xfcd3, 0x11d1, 0xa6, 0xb9, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		public const Guid SID_STopLevelBrowser = .(0x4c96be40, 0x915c, 0x11cf, 0x99, 0xd3, 0x00, 0xaa, 0x00, 0x4a, 0xe8, 0x37);
		public const Guid CLSID_FileTypes = .(0xb091e540, 0x83e3, 0x11cf, 0xa7, 0x13, 0x00, 0x20, 0xaf, 0xd7, 0x97, 0x62);
		public const Guid CLSID_ActiveDesktop = .(0x75048700, 0xef1f, 0x11d0, 0x98, 0x88, 0x00, 0x60, 0x97, 0xde, 0xac, 0xf9);
		public const Guid CLSID_QueryAssociations = .(0xa07034fd, 0x6caa, 0x4954, 0xac, 0x3f, 0x97, 0xa2, 0x72, 0x16, 0xf9, 0x8a);
		public const Guid CLSID_LinkColumnProvider = .(0x24f14f02, 0x7b1c, 0x11d1, 0x83, 0x8f, 0x00, 0x00, 0xf8, 0x04, 0x61, 0xcf);
		public const Guid CGID_ShortCut = .(0x93a68750, 0x951a, 0x11d1, 0x94, 0x6f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		public const Guid CLSID_InternetButtons = .(0x1e796980, 0x9cc5, 0x11d1, 0xa8, 0x3f, 0x00, 0xc0, 0x4f, 0xc9, 0x9d, 0x61);
		public const Guid CLSID_MSOButtons = .(0x178f34b8, 0xa282, 0x11d2, 0x86, 0xc5, 0x00, 0xc0, 0x4f, 0x8e, 0xea, 0x99);
		public const Guid CLSID_ToolbarExtButtons = .(0x2ce4b5d8, 0xa28f, 0x11d2, 0x86, 0xc5, 0x00, 0xc0, 0x4f, 0x8e, 0xea, 0x99);
		public const Guid CLSID_DarwinAppPublisher = .(0xcfccc7a0, 0xa282, 0x11d1, 0x90, 0x82, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		public const Guid CLSID_DocHostUIHandler = .(0x7057e952, 0xbd1b, 0x11d1, 0x89, 0x19, 0x00, 0xc0, 0x4f, 0xc2, 0xc8, 0x36);
		public const Guid FMTID_ShellDetails = .(0x28636aa6, 0x953d, 0x11d2, 0xb5, 0xd6, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const uint32 PID_FINDDATA = 0;
		public const uint32 PID_NETRESOURCE = 1;
		public const uint32 PID_DESCRIPTIONID = 2;
		public const uint32 PID_WHICHFOLDER = 3;
		public const uint32 PID_NETWORKLOCATION = 4;
		public const uint32 PID_COMPUTERNAME = 5;
		public const Guid FMTID_Storage = .(0xb725f130, 0x47ef, 0x101a, 0xa5, 0xf1, 0x02, 0x60, 0x8c, 0x9e, 0xeb, 0xac);
		public const Guid FMTID_ImageProperties = .(0x14b81da1, 0x0135, 0x4d31, 0x96, 0xd9, 0x6c, 0xbf, 0xc9, 0x67, 0x1a, 0x99);
		public const Guid FMTID_CustomImageProperties = .(0x7ecd8b0e, 0xc136, 0x4a9b, 0x94, 0x11, 0x4e, 0xbd, 0x66, 0x73, 0xcc, 0xc3);
		public const Guid FMTID_LibraryProperties = .(0x5d76b67f, 0x9b3d, 0x44bb, 0xb6, 0xae, 0x25, 0xda, 0x4f, 0x63, 0x8a, 0x67);
		public const Guid FMTID_Displaced = .(0x9b174b33, 0x40ff, 0x11d2, 0xa2, 0x7e, 0x00, 0xc0, 0x4f, 0xc3, 0x08, 0x71);
		public const uint32 PID_DISPLACED_FROM = 2;
		public const uint32 PID_DISPLACED_DATE = 3;
		public const Guid FMTID_Briefcase = .(0x328d8b21, 0x7729, 0x4bfc, 0x95, 0x4c, 0x90, 0x2b, 0x32, 0x9d, 0x56, 0xb0);
		public const uint32 PID_SYNC_COPY_IN = 2;
		public const Guid FMTID_Misc = .(0x9b174b34, 0x40ff, 0x11d2, 0xa2, 0x7e, 0x00, 0xc0, 0x4f, 0xc3, 0x08, 0x71);
		public const uint32 PID_MISC_STATUS = 2;
		public const uint32 PID_MISC_ACCESSCOUNT = 3;
		public const uint32 PID_MISC_OWNER = 4;
		public const uint32 PID_HTMLINFOTIPFILE = 5;
		public const uint32 PID_MISC_PICS = 6;
		public const Guid FMTID_WebView = .(0xf2275480, 0xf782, 0x4291, 0xbd, 0x94, 0xf1, 0x36, 0x93, 0x51, 0x3a, 0xec);
		public const uint32 PID_DISPLAY_PROPERTIES = 0;
		public const uint32 PID_INTROTEXT = 1;
		public const Guid FMTID_MUSIC = .(0x56a3372e, 0xce9c, 0x11d2, 0x9f, 0x0e, 0x00, 0x60, 0x97, 0xc6, 0x86, 0xf6);
		public const uint32 PIDSI_ARTIST = 2;
		public const uint32 PIDSI_SONGTITLE = 3;
		public const uint32 PIDSI_ALBUM = 4;
		public const uint32 PIDSI_YEAR = 5;
		public const uint32 PIDSI_COMMENT = 6;
		public const uint32 PIDSI_TRACK = 7;
		public const uint32 PIDSI_GENRE = 11;
		public const uint32 PIDSI_LYRICS = 12;
		public const Guid FMTID_DRM = .(0xaeac19e4, 0x89ae, 0x4508, 0xb9, 0xb7, 0xbb, 0x86, 0x7a, 0xbe, 0xe2, 0xed);
		public const uint32 PIDDRSI_PROTECTED = 2;
		public const uint32 PIDDRSI_DESCRIPTION = 3;
		public const uint32 PIDDRSI_PLAYCOUNT = 4;
		public const uint32 PIDDRSI_PLAYSTARTS = 5;
		public const uint32 PIDDRSI_PLAYEXPIRES = 6;
		public const uint32 PIDVSI_STREAM_NAME = 2;
		public const uint32 PIDVSI_FRAME_WIDTH = 3;
		public const uint32 PIDVSI_FRAME_HEIGHT = 4;
		public const uint32 PIDVSI_TIMELENGTH = 7;
		public const uint32 PIDVSI_FRAME_COUNT = 5;
		public const uint32 PIDVSI_FRAME_RATE = 6;
		public const uint32 PIDVSI_DATA_RATE = 8;
		public const uint32 PIDVSI_SAMPLE_SIZE = 9;
		public const uint32 PIDVSI_COMPRESSION = 10;
		public const uint32 PIDVSI_STREAM_NUMBER = 11;
		public const uint32 PIDASI_FORMAT = 2;
		public const uint32 PIDASI_TIMELENGTH = 3;
		public const uint32 PIDASI_AVG_DATA_RATE = 4;
		public const uint32 PIDASI_SAMPLE_RATE = 5;
		public const uint32 PIDASI_SAMPLE_SIZE = 6;
		public const uint32 PIDASI_CHANNEL_COUNT = 7;
		public const uint32 PIDASI_STREAM_NUMBER = 8;
		public const uint32 PIDASI_STREAM_NAME = 9;
		public const uint32 PIDASI_COMPRESSION = 10;
		public const uint32 PID_CONTROLPANEL_CATEGORY = 2;
		public const Guid FMTID_Volume = .(0x9b174b35, 0x40ff, 0x11d2, 0xa2, 0x7e, 0x00, 0xc0, 0x4f, 0xc3, 0x08, 0x71);
		public const uint32 PID_VOLUME_FREE = 2;
		public const uint32 PID_VOLUME_CAPACITY = 3;
		public const uint32 PID_VOLUME_FILESYSTEM = 4;
		public const uint32 PID_SHARE_CSC_STATUS = 2;
		public const uint32 PID_LINK_TARGET = 2;
		public const uint32 PID_LINK_TARGET_TYPE = 3;
		public const Guid FMTID_Query = .(0x49691c90, 0x7e17, 0x101a, 0xa9, 0x1c, 0x08, 0x00, 0x2b, 0x2e, 0xcd, 0xa9);
		public const uint32 PID_QUERY_RANK = 2;
		public const Guid CLSID_HWShellExecute = .(0xffb8655f, 0x81b9, 0x4fce, 0xb8, 0x9c, 0x9a, 0x6b, 0xa7, 0x6d, 0x13, 0xe7);
		public const Guid CLSID_DragDropHelper = .(0x4657278a, 0x411b, 0x11d2, 0x83, 0x9a, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const Guid CLSID_CAnchorBrowsePropertyPage = .(0x3050f3bb, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CImageBrowsePropertyPage = .(0x3050f3b3, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid CLSID_CDocBrowsePropertyPage = .(0x3050f3b4, 0x98b5, 0x11cf, 0xbb, 0x82, 0x00, 0xaa, 0x00, 0xbd, 0xce, 0x0b);
		public const Guid SID_STopWindow = .(0x49e1b500, 0x4636, 0x11d3, 0x97, 0xf7, 0x00, 0xc0, 0x4f, 0x45, 0xd0, 0xb3);
		public const Guid SID_SGetViewFromViewDual = .(0x889a935d, 0x971e, 0x4b12, 0xb9, 0x0c, 0x24, 0xdf, 0xc9, 0xe1, 0xe5, 0xe8);
		public const Guid CLSID_FolderItemsMultiLevel = .(0x53c74826, 0xab99, 0x4d33, 0xac, 0xa4, 0x31, 0x17, 0xf5, 0x1d, 0x37, 0x88);
		public const Guid CLSID_NewMenu = .(0xd969a300, 0xe7ff, 0x11d0, 0xa9, 0x3b, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
		public const Guid BHID_SFObject = .(0x3981e224, 0xf559, 0x11d3, 0x8e, 0x3a, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		public const Guid BHID_SFUIObject = .(0x3981e225, 0xf559, 0x11d3, 0x8e, 0x3a, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		public const Guid BHID_SFViewObject = .(0x3981e226, 0xf559, 0x11d3, 0x8e, 0x3a, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		public const Guid BHID_Storage = .(0x3981e227, 0xf559, 0x11d3, 0x8e, 0x3a, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		public const Guid BHID_Stream = .(0x1cebb3ab, 0x7c10, 0x499a, 0xa4, 0x17, 0x92, 0xca, 0x16, 0xc4, 0xcb, 0x83);
		public const Guid BHID_RandomAccessStream = .(0xf16fc93b, 0x77ae, 0x4cfe, 0xbd, 0xa7, 0xa8, 0x66, 0xee, 0xa6, 0x87, 0x8d);
		public const Guid BHID_LinkTargetItem = .(0x3981e228, 0xf559, 0x11d3, 0x8e, 0x3a, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		public const Guid BHID_StorageEnum = .(0x4621a4e3, 0xf0d6, 0x4773, 0x8a, 0x9c, 0x46, 0xe7, 0x7b, 0x17, 0x48, 0x40);
		public const Guid BHID_Transfer = .(0xd5e346a1, 0xf753, 0x4932, 0xb4, 0x03, 0x45, 0x74, 0x80, 0x0e, 0x24, 0x98);
		public const Guid BHID_PropertyStore = .(0x0384e1a4, 0x1523, 0x439c, 0xa4, 0xc8, 0xab, 0x91, 0x10, 0x52, 0xf5, 0x86);
		public const Guid BHID_ThumbnailHandler = .(0x7b2e650a, 0x8e20, 0x4f4a, 0xb0, 0x9e, 0x65, 0x97, 0xaf, 0xc7, 0x2f, 0xb0);
		public const Guid BHID_EnumItems = .(0x94f60519, 0x2850, 0x4924, 0xaa, 0x5a, 0xd1, 0x5e, 0x84, 0x86, 0x80, 0x39);
		public const Guid BHID_DataObject = .(0xb8c0bd9f, 0xed24, 0x455c, 0x83, 0xe6, 0xd5, 0x39, 0x0c, 0x4f, 0xe8, 0xc4);
		public const Guid BHID_AssociationArray = .(0xbea9ef17, 0x82f1, 0x4f60, 0x92, 0x84, 0x4f, 0x8d, 0xb7, 0x5c, 0x3b, 0xe9);
		public const Guid BHID_Filter = .(0x38d08778, 0xf557, 0x4690, 0x9e, 0xbf, 0xba, 0x54, 0x70, 0x6a, 0xd8, 0xf7);
		public const Guid BHID_EnumAssocHandlers = .(0xb8ab0b9c, 0xc2ec, 0x4f7a, 0x91, 0x8d, 0x31, 0x49, 0x00, 0xe6, 0x28, 0x0a);
		public const Guid BHID_StorageItem = .(0x404e2109, 0x77d2, 0x4699, 0xa5, 0xa0, 0x4f, 0xdf, 0x10, 0xdb, 0x98, 0x37);
		public const Guid BHID_FilePlaceholder = .(0x8677dceb, 0xaae0, 0x4005, 0x8d, 0x3d, 0x54, 0x7f, 0xa8, 0x52, 0xf8, 0x25);
		public const Guid CATID_FilePlaceholderMergeHandler = .(0x3e9c9a51, 0xd4aa, 0x4870, 0xb4, 0x7c, 0x74, 0x24, 0xb4, 0x91, 0xf1, 0xcc);
		public const Guid SID_CtxQueryAssociations = .(0xfaadfc40, 0xb777, 0x4b69, 0xaa, 0x81, 0x77, 0x03, 0x5e, 0xf0, 0xe6, 0xe8);
		public const Guid CLSID_QuickLinks = .(0x0e5cbf21, 0xd15f, 0x11d0, 0x83, 0x01, 0x00, 0xaa, 0x00, 0x5b, 0x43, 0x83);
		public const Guid CLSID_ISFBand = .(0xd82be2b0, 0x5764, 0x11d0, 0xa9, 0x6e, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
		public const Guid CLSID_ShellFldSetExt = .(0x6d5313c0, 0x8c62, 0x11d1, 0xb2, 0xcd, 0x00, 0x60, 0x97, 0xdf, 0x8c, 0x11);
		public const Guid SID_SMenuBandChild = .(0xed9cc020, 0x08b9, 0x11d1, 0x98, 0x23, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
		public const Guid SID_SMenuBandParent = .(0x8c278eec, 0x3eab, 0x11d1, 0x8c, 0xb0, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const Guid SID_SMenuPopup = .(0xd1e7afeb, 0x6a2e, 0x11d0, 0x8c, 0x78, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xb4);
		public const Guid SID_SMenuBandBottomSelected = .(0x165ebaf4, 0x6d51, 0x11d2, 0x83, 0xad, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const Guid SID_SMenuBandBottom = .(0x743ca664, 0x0deb, 0x11d1, 0x98, 0x25, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
		public const Guid SID_MenuShellFolder = .(0xa6c17eb4, 0x2d65, 0x11d2, 0x83, 0x8f, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const Guid SID_SMenuBandContextMenuModifier = .(0x39545874, 0x7162, 0x465e, 0xb7, 0x83, 0x2a, 0xa1, 0x87, 0x4f, 0xef, 0x81);
		public const Guid SID_SMenuBandBKContextMenu = .(0x164bbd86, 0x1d0d, 0x4de0, 0x9a, 0x3b, 0xd9, 0x72, 0x96, 0x47, 0xc2, 0xb8);
		public const Guid CGID_MENUDESKBAR = .(0x5c9f0a12, 0x959e, 0x11d0, 0xa3, 0xa4, 0x00, 0xa0, 0xc9, 0x08, 0x26, 0x36);
		public const Guid SID_SMenuBandTop = .(0x9493a810, 0xec38, 0x11d0, 0xbc, 0x46, 0x00, 0xaa, 0x00, 0x6c, 0xe2, 0xf5);
		public const Guid CLSID_MenuToolbarBase = .(0x40b96610, 0xb522, 0x11d1, 0xb3, 0xb4, 0x00, 0xaa, 0x00, 0x6e, 0xfd, 0xe7);
		public const Guid CLSID_MenuBandSite = .(0xe13ef4e4, 0xd2f2, 0x11d0, 0x98, 0x16, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
		public const Guid SID_SCommDlgBrowser = .(0x80f30233, 0xb7df, 0x11d2, 0xa3, 0x3b, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		public const Guid CPFG_LOGON_USERNAME = .(0xda15bbe8, 0x954d, 0x4fd3, 0xb0, 0xf4, 0x1f, 0xb5, 0xb9, 0x0b, 0x17, 0x4b);
		public const Guid CPFG_LOGON_PASSWORD = .(0x60624cfa, 0xa477, 0x47b1, 0x8a, 0x8e, 0x3a, 0x4a, 0x19, 0x98, 0x18, 0x27);
		public const Guid CPFG_SMARTCARD_USERNAME = .(0x3e1ecf69, 0x568c, 0x4d96, 0x9d, 0x59, 0x46, 0x44, 0x41, 0x74, 0xe2, 0xd6);
		public const Guid CPFG_SMARTCARD_PIN = .(0x4fe5263b, 0x9181, 0x46c1, 0xb0, 0xa4, 0x9d, 0xed, 0xd4, 0xdb, 0x7d, 0xea);
		public const Guid CPFG_CREDENTIAL_PROVIDER_LOGO = .(0x2d837775, 0xf6cd, 0x464e, 0xa7, 0x45, 0x48, 0x2f, 0xd0, 0xb4, 0x74, 0x93);
		public const Guid CPFG_CREDENTIAL_PROVIDER_LABEL = .(0x286bbff3, 0xbad4, 0x438f, 0xb0, 0x07, 0x79, 0xb7, 0x26, 0x7c, 0x3d, 0x48);
		public const Guid CPFG_STANDALONE_SUBMIT_BUTTON = .(0x0b7b0ad8, 0xcc36, 0x4d59, 0x80, 0x2b, 0x82, 0xf7, 0x14, 0xfa, 0x70, 0x22);
		public const Guid CPFG_STYLE_LINK_AS_BUTTON = .(0x088fa508, 0x94a6, 0x4430, 0xa4, 0xcb, 0x6f, 0xc6, 0xe3, 0xc0, 0xb9, 0xe2);
		public const Guid FOLDERTYPEID_Invalid = .(0x57807898, 0x8c4f, 0x4462, 0xbb, 0x63, 0x71, 0x04, 0x23, 0x80, 0xb1, 0x09);
		public const Guid FOLDERTYPEID_Generic = .(0x5c4f28b5, 0xf869, 0x4e84, 0x8e, 0x60, 0xf1, 0x1d, 0xb9, 0x7c, 0x5c, 0xc7);
		public const Guid FOLDERTYPEID_GenericSearchResults = .(0x7fde1a1e, 0x8b31, 0x49a5, 0x93, 0xb8, 0x6b, 0xe1, 0x4c, 0xfa, 0x49, 0x43);
		public const Guid FOLDERTYPEID_GenericLibrary = .(0x5f4eab9a, 0x6833, 0x4f61, 0x89, 0x9d, 0x31, 0xcf, 0x46, 0x97, 0x9d, 0x49);
		public const Guid FOLDERTYPEID_Documents = .(0x7d49d726, 0x3c21, 0x4f05, 0x99, 0xaa, 0xfd, 0xc2, 0xc9, 0x47, 0x46, 0x56);
		public const Guid FOLDERTYPEID_Pictures = .(0xb3690e58, 0xe961, 0x423b, 0xb6, 0x87, 0x38, 0x6e, 0xbf, 0xd8, 0x32, 0x39);
		public const Guid FOLDERTYPEID_Music = .(0x94d6ddcc, 0x4a68, 0x4175, 0xa3, 0x74, 0xbd, 0x58, 0x4a, 0x51, 0x0b, 0x78);
		public const Guid FOLDERTYPEID_Videos = .(0x5fa96407, 0x7e77, 0x483c, 0xac, 0x93, 0x69, 0x1d, 0x05, 0x85, 0x0d, 0xe8);
		public const Guid FOLDERTYPEID_Downloads = .(0x885a186e, 0xa440, 0x4ada, 0x81, 0x2b, 0xdb, 0x87, 0x1b, 0x94, 0x22, 0x59);
		public const Guid FOLDERTYPEID_UserFiles = .(0xcd0fc69b, 0x71e2, 0x46e5, 0x96, 0x90, 0x5b, 0xcd, 0x9f, 0x57, 0xaa, 0xb3);
		public const Guid FOLDERTYPEID_UsersLibraries = .(0xc4d98f09, 0x6124, 0x4fe0, 0x99, 0x42, 0x82, 0x64, 0x16, 0x08, 0x2d, 0xa9);
		public const Guid FOLDERTYPEID_OtherUsers = .(0xb337fd00, 0x9dd5, 0x4635, 0xa6, 0xd4, 0xda, 0x33, 0xfd, 0x10, 0x2b, 0x7a);
		public const Guid FOLDERTYPEID_PublishedItems = .(0x7f2f5b96, 0xff74, 0x41da, 0xaf, 0xd8, 0x1c, 0x78, 0xa5, 0xf3, 0xae, 0xa2);
		public const Guid FOLDERTYPEID_Communications = .(0x91475fe5, 0x586b, 0x4eba, 0x8d, 0x75, 0xd1, 0x74, 0x34, 0xb8, 0xcd, 0xf6);
		public const Guid FOLDERTYPEID_Contacts = .(0xde2b70ec, 0x9bf7, 0x4a93, 0xbd, 0x3d, 0x24, 0x3f, 0x78, 0x81, 0xd4, 0x92);
		public const Guid FOLDERTYPEID_StartMenu = .(0xef87b4cb, 0xf2ce, 0x4785, 0x86, 0x58, 0x4c, 0xa6, 0xc6, 0x3e, 0x38, 0xc6);
		public const Guid FOLDERTYPEID_RecordedTV = .(0x5557a28f, 0x5da6, 0x4f83, 0x88, 0x09, 0xc2, 0xc9, 0x8a, 0x11, 0xa6, 0xfa);
		public const Guid FOLDERTYPEID_SavedGames = .(0xd0363307, 0x28cb, 0x4106, 0x9f, 0x23, 0x29, 0x56, 0xe3, 0xe5, 0xe0, 0xe7);
		public const Guid FOLDERTYPEID_OpenSearch = .(0x8faf9629, 0x1980, 0x46ff, 0x80, 0x23, 0x9d, 0xce, 0xab, 0x9c, 0x3e, 0xe3);
		public const Guid FOLDERTYPEID_SearchConnector = .(0x982725ee, 0x6f47, 0x479e, 0xb4, 0x47, 0x81, 0x2b, 0xfa, 0x7d, 0x2e, 0x8f);
		public const Guid FOLDERTYPEID_AccountPictures = .(0xdb2a5d8f, 0x06e6, 0x4007, 0xab, 0xa6, 0xaf, 0x87, 0x7d, 0x52, 0x6e, 0xa6);
		public const Guid FOLDERTYPEID_Games = .(0xb689b0d0, 0x76d3, 0x4cbb, 0x87, 0xf7, 0x58, 0x5d, 0x0e, 0x0c, 0xe0, 0x70);
		public const Guid FOLDERTYPEID_ControlPanelCategory = .(0xde4f0660, 0xfa10, 0x4b8f, 0xa4, 0x94, 0x06, 0x8b, 0x20, 0xb2, 0x23, 0x07);
		public const Guid FOLDERTYPEID_ControlPanelClassic = .(0x0c3794f3, 0xb545, 0x43aa, 0xa3, 0x29, 0xc3, 0x74, 0x30, 0xc5, 0x8d, 0x2a);
		public const Guid FOLDERTYPEID_Printers = .(0x2c7bbec6, 0xc844, 0x4a0a, 0x91, 0xfa, 0xce, 0xf6, 0xf5, 0x9c, 0xfd, 0xa1);
		public const Guid FOLDERTYPEID_RecycleBin = .(0xd6d9e004, 0xcd87, 0x442b, 0x9d, 0x57, 0x5e, 0x0a, 0xeb, 0x4f, 0x6f, 0x72);
		public const Guid FOLDERTYPEID_SoftwareExplorer = .(0xd674391b, 0x52d9, 0x4e07, 0x83, 0x4e, 0x67, 0xc9, 0x86, 0x10, 0xf3, 0x9d);
		public const Guid FOLDERTYPEID_CompressedFolder = .(0x80213e82, 0xbcfd, 0x4c4f, 0x88, 0x17, 0xbb, 0x27, 0x60, 0x12, 0x67, 0xa9);
		public const Guid FOLDERTYPEID_NetworkExplorer = .(0x25cc242b, 0x9a7c, 0x4f51, 0x80, 0xe0, 0x7a, 0x29, 0x28, 0xfe, 0xbe, 0x42);
		public const Guid FOLDERTYPEID_Searches = .(0x0b0ba2e3, 0x405f, 0x415e, 0xa6, 0xee, 0xca, 0xd6, 0x25, 0x20, 0x78, 0x53);
		public const Guid FOLDERTYPEID_SearchHome = .(0x834d8a44, 0x0974, 0x4ed6, 0x86, 0x6e, 0xf2, 0x03, 0xd8, 0x0b, 0x38, 0x10);
		public const Guid FOLDERTYPEID_StorageProviderGeneric = .(0x4f01ebc5, 0x2385, 0x41f2, 0xa2, 0x8e, 0x2c, 0x5c, 0x91, 0xfb, 0x56, 0xe0);
		public const Guid FOLDERTYPEID_StorageProviderDocuments = .(0xdd61bd66, 0x70e8, 0x48dd, 0x96, 0x55, 0x65, 0xc5, 0xe1, 0xaa, 0xc2, 0xd1);
		public const Guid FOLDERTYPEID_StorageProviderPictures = .(0x71d642a9, 0xf2b1, 0x42cd, 0xad, 0x92, 0xeb, 0x93, 0x00, 0xc7, 0xcc, 0x0a);
		public const Guid FOLDERTYPEID_StorageProviderMusic = .(0x672ecd7e, 0xaf04, 0x4399, 0x87, 0x5c, 0x02, 0x90, 0x84, 0x5b, 0x62, 0x47);
		public const Guid FOLDERTYPEID_StorageProviderVideos = .(0x51294da1, 0xd7b1, 0x485b, 0x9e, 0x9a, 0x17, 0xcf, 0xfe, 0x33, 0xe1, 0x87);
		public const Guid SYNCMGR_OBJECTID_Icon = .(0x6dbc85c3, 0x5d07, 0x4c72, 0xa7, 0x77, 0x7f, 0xec, 0x78, 0x07, 0x2c, 0x06);
		public const Guid SYNCMGR_OBJECTID_EventStore = .(0x4bef34b9, 0xa786, 0x4075, 0xba, 0x88, 0x0c, 0x2b, 0x9d, 0x89, 0xa9, 0x8f);
		public const Guid SYNCMGR_OBJECTID_ConflictStore = .(0xd78181f4, 0x2389, 0x47e4, 0xa9, 0x60, 0x60, 0xbc, 0xc2, 0xed, 0x93, 0x0b);
		public const Guid SYNCMGR_OBJECTID_BrowseContent = .(0x57cbb584, 0xe9b4, 0x47ae, 0xa1, 0x20, 0xc4, 0xdf, 0x33, 0x35, 0xde, 0xe2);
		public const Guid SYNCMGR_OBJECTID_ShowSchedule = .(0xedc6f3e3, 0x8441, 0x4109, 0xad, 0xf3, 0x6c, 0x1c, 0xa0, 0xb7, 0xde, 0x47);
		public const Guid SYNCMGR_OBJECTID_QueryBeforeActivate = .(0xd882d80b, 0xe7aa, 0x49ed, 0x86, 0xb7, 0xe6, 0xe1, 0xf7, 0x14, 0xcd, 0xfe);
		public const Guid SYNCMGR_OBJECTID_QueryBeforeDeactivate = .(0xa0efc282, 0x60e0, 0x460e, 0x93, 0x74, 0xea, 0x88, 0x51, 0x3c, 0xfc, 0x80);
		public const Guid SYNCMGR_OBJECTID_QueryBeforeEnable = .(0x04cbf7f0, 0x5beb, 0x4de1, 0xbc, 0x90, 0x90, 0x83, 0x45, 0xc4, 0x80, 0xf6);
		public const Guid SYNCMGR_OBJECTID_QueryBeforeDisable = .(0xbb5f64aa, 0xf004, 0x4eb5, 0x8e, 0x4d, 0x26, 0x75, 0x19, 0x66, 0x34, 0x4c);
		public const Guid SYNCMGR_OBJECTID_QueryBeforeDelete = .(0xf76c3397, 0xafb3, 0x45d7, 0xa5, 0x9f, 0x5a, 0x49, 0xe9, 0x05, 0x43, 0x7e);
		public const Guid SYNCMGR_OBJECTID_EventLinkClick = .(0x2203bdc1, 0x1af1, 0x4082, 0x8c, 0x30, 0x28, 0x39, 0x9f, 0x41, 0x38, 0x4c);
		public const Guid EP_NavPane = .(0xcb316b22, 0x25f7, 0x42b8, 0x8a, 0x09, 0x54, 0x0d, 0x23, 0xa4, 0x3c, 0x2f);
		public const Guid EP_Commands = .(0xd9745868, 0xca5f, 0x4a76, 0x91, 0xcd, 0xf5, 0xa1, 0x29, 0xfb, 0xb0, 0x76);
		public const Guid EP_Commands_Organize = .(0x72e81700, 0xe3ec, 0x4660, 0xbf, 0x24, 0x3c, 0x3b, 0x7b, 0x64, 0x88, 0x06);
		public const Guid EP_Commands_View = .(0x21f7c32d, 0xeeaa, 0x439b, 0xbb, 0x51, 0x37, 0xb9, 0x6f, 0xd6, 0xa9, 0x43);
		public const Guid EP_DetailsPane = .(0x43abf98b, 0x89b8, 0x472d, 0xb9, 0xce, 0xe6, 0x9b, 0x82, 0x29, 0xf0, 0x19);
		public const Guid EP_PreviewPane = .(0x893c63d1, 0x45c8, 0x4d17, 0xbe, 0x19, 0x22, 0x3b, 0xe7, 0x1b, 0xe3, 0x65);
		public const Guid EP_QueryPane = .(0x65bcde4f, 0x4f07, 0x4f27, 0x83, 0xa7, 0x1a, 0xfc, 0xa4, 0xdf, 0x7d, 0xdd);
		public const Guid EP_AdvQueryPane = .(0xb4e9db8b, 0x34ba, 0x4c39, 0xb5, 0xcc, 0x16, 0xa1, 0xbd, 0x2c, 0x41, 0x1c);
		public const Guid EP_StatusBar = .(0x65fe56ce, 0x5cfe, 0x4bc4, 0xad, 0x8a, 0x7a, 0xe3, 0xfe, 0x7e, 0x8f, 0x7c);
		public const Guid EP_Ribbon = .(0xd27524a8, 0xc9f2, 0x4834, 0xa1, 0x06, 0xdf, 0x88, 0x89, 0xfd, 0x4f, 0x37);
		public const Guid CATID_LocationFactory = .(0x965c4d51, 0x8b76, 0x4e57, 0x80, 0xb7, 0x56, 0x4d, 0x2e, 0xa4, 0xb5, 0x5e);
		public const Guid CATID_LocationProvider = .(0x1b3ca474, 0x2614, 0x414b, 0xb8, 0x13, 0x1a, 0xce, 0xca, 0x3e, 0x3d, 0xd8);
		public const Guid ItemCount_Property_GUID = .(0xabbf5c45, 0x5ccc, 0x47b7, 0xbb, 0x4e, 0x87, 0xcb, 0x87, 0xbb, 0xd1, 0x62);
		public const Guid SelectedItemCount_Property_GUID = .(0x8fe316d2, 0x0e52, 0x460a, 0x9c, 0x1e, 0x48, 0xf2, 0x73, 0xd4, 0x70, 0xa3);
		public const Guid ItemIndex_Property_GUID = .(0x92a053da, 0x2969, 0x4021, 0xbf, 0x27, 0x51, 0x4c, 0xfc, 0x2e, 0x4a, 0x69);
		public const Guid CATID_SearchableApplication = .(0x366c292a, 0xd9b3, 0x4dbf, 0xbb, 0x70, 0xe6, 0x2e, 0xc3, 0xd0, 0xbb, 0xbf);
		public const uint32 IDD_WIZEXTN_FIRST = 20480;
		public const uint32 IDD_WIZEXTN_LAST = 20736;
		public const uint32 SHPWHF_NORECOMPRESS = 1;
		public const uint32 SHPWHF_NONETPLACECREATE = 2;
		public const uint32 SHPWHF_NOFILESELECTOR = 4;
		public const uint32 SHPWHF_USEMRU = 8;
		public const uint32 SHPWHF_ANYLOCATION = 256;
		public const uint32 SHPWHF_VALIDATEVIAWEBFOLDERS = 65536;
		public const uint32 ACDD_VISIBLE = 1;
		public const Guid SID_SCommandBarState = .(0xb99eaa5c, 0x3850, 0x4400, 0xbc, 0x33, 0x2c, 0xe5, 0x34, 0x04, 0x8b, 0xf8);
		public const int32 NSTCDHPOS_ONTOP = -1;
		public const uint32 FVSIF_RECT = 1;
		public const uint32 FVSIF_PINNED = 2;
		public const uint32 FVSIF_NEWFAILED = 134217728;
		public const uint32 FVSIF_NEWFILE = 2147483648;
		public const uint32 FVSIF_CANVIEWIT = 1073741824;
		public const uint32 FCIDM_TOOLBAR = 40960;
		public const uint32 FCIDM_STATUS = 40961;
		public const uint32 IDC_OFFLINE_HAND = 103;
		public const uint32 IDC_PANTOOL_HAND_OPEN = 104;
		public const uint32 IDC_PANTOOL_HAND_CLOSED = 105;
		public const uint32 PANE_NONE = 4294967295;
		public const uint32 PANE_ZONE = 1;
		public const uint32 PANE_OFFLINE = 2;
		public const uint32 PANE_PRINTER = 3;
		public const uint32 PANE_SSL = 4;
		public const uint32 PANE_NAVIGATION = 5;
		public const uint32 PANE_PROGRESS = 6;
		public const uint32 PANE_PRIVACY = 7;
		public const uint32 DWFRF_NORMAL = 0;
		public const uint32 DWFRF_DELETECONFIGDATA = 1;
		public const uint32 DWFAF_HIDDEN = 1;
		public const uint32 DWFAF_GROUP1 = 2;
		public const uint32 DWFAF_GROUP2 = 4;
		public const uint32 DWFAF_AUTOHIDE = 16;
		public const uint32 SHIMSTCAPFLAG_LOCKABLE = 1;
		public const uint32 SHIMSTCAPFLAG_PURGEABLE = 2;
		public const uint32 ISFB_MASK_STATE = 1;
		public const uint32 ISFB_MASK_BKCOLOR = 2;
		public const uint32 ISFB_MASK_VIEWMODE = 4;
		public const uint32 ISFB_MASK_SHELLFOLDER = 8;
		public const uint32 ISFB_MASK_IDLIST = 16;
		public const uint32 ISFB_MASK_COLORS = 32;
		public const uint32 ISFB_STATE_DEFAULT = 0;
		public const uint32 ISFB_STATE_DEBOSSED = 1;
		public const uint32 ISFB_STATE_ALLOWRENAME = 2;
		public const uint32 ISFB_STATE_NOSHOWTEXT = 4;
		public const uint32 ISFB_STATE_CHANNELBAR = 16;
		public const uint32 ISFB_STATE_QLINKSMODE = 32;
		public const uint32 ISFB_STATE_FULLOPEN = 64;
		public const uint32 ISFB_STATE_NONAMESORT = 128;
		public const uint32 ISFB_STATE_BTNMINSIZE = 256;
		public const uint32 ISFBVIEWMODE_SMALLICONS = 1;
		public const uint32 ISFBVIEWMODE_LARGEICONS = 2;
		public const uint32 ISFBVIEWMODE_LOGOS = 3;
		public const uint32 DBC_GS_IDEAL = 0;
		public const uint32 DBC_GS_SIZEDOWN = 1;
		public const uint32 DBC_HIDE = 0;
		public const uint32 DBC_SHOW = 1;
		public const uint32 DBC_SHOWOBSCURE = 2;
		public const uint32 SSM_CLEAR = 0;
		public const uint32 SSM_SET = 1;
		public const uint32 SSM_REFRESH = 2;
		public const uint32 SSM_UPDATE = 4;
		public const uint32 SCHEME_DISPLAY = 1;
		public const uint32 SCHEME_EDIT = 2;
		public const uint32 SCHEME_LOCAL = 4;
		public const uint32 SCHEME_GLOBAL = 8;
		public const uint32 SCHEME_REFRESH = 16;
		public const uint32 SCHEME_UPDATE = 32;
		public const uint32 SCHEME_DONOTUSE = 64;
		public const uint32 SCHEME_CREATE = 128;
		public const uint32 GADOF_DIRTY = 1;
		public const uint32 SHCDF_UPDATEITEM = 1;
		public const uint32 PPCF_ADDQUOTES = 1;
		public const uint32 PPCF_ADDARGUMENTS = 3;
		public const uint32 PPCF_NODIRECTORIES = 16;
		public const uint32 PPCF_FORCEQUALIFY = 64;
		public const uint32 PPCF_LONGESTPOSSIBLE = 128;
		public const uint32 OPENPROPS_NONE = 0;
		public const uint32 OPENPROPS_INHIBITPIF = 32768;
		public const uint32 GETPROPS_NONE = 0;
		public const uint32 SETPROPS_NONE = 0;
		public const uint32 CLOSEPROPS_NONE = 0;
		public const uint32 CLOSEPROPS_DISCARD = 1;
		public const uint32 TBIF_APPEND = 0;
		public const uint32 TBIF_PREPEND = 1;
		public const uint32 TBIF_REPLACE = 2;
		public const uint32 TBIF_DEFAULT = 0;
		public const uint32 TBIF_INTERNETBAR = 65536;
		public const uint32 TBIF_STANDARDTOOLBAR = 131072;
		public const uint32 TBIF_NOTOOLBAR = 196608;
		public const uint32 SFVM_REARRANGE = 1;
		public const uint32 SFVM_ADDOBJECT = 3;
		public const uint32 SFVM_REMOVEOBJECT = 6;
		public const uint32 SFVM_UPDATEOBJECT = 7;
		public const uint32 SFVM_GETSELECTEDOBJECTS = 9;
		public const uint32 SFVM_SETITEMPOS = 14;
		public const uint32 SFVM_SETCLIPBOARD = 16;
		public const uint32 SFVM_SETPOINTS = 23;
		public const uint32 GIL_OPENICON = 1;
		public const uint32 GIL_FORSHELL = 2;
		public const uint32 GIL_ASYNC = 32;
		public const uint32 GIL_DEFAULTICON = 64;
		public const uint32 GIL_FORSHORTCUT = 128;
		public const uint32 GIL_CHECKSHIELD = 512;
		public const uint32 GIL_SIMULATEDOC = 1;
		public const uint32 GIL_PERINSTANCE = 2;
		public const uint32 GIL_PERCLASS = 4;
		public const uint32 GIL_NOTFILENAME = 8;
		public const uint32 GIL_DONTCACHE = 16;
		public const uint32 GIL_SHIELD = 512;
		public const uint32 GIL_FORCENOSHIELD = 1024;
		public const uint32 SIOM_OVERLAYINDEX = 1;
		public const uint32 SIOM_ICONINDEX = 2;
		public const uint32 SIOM_RESERVED_SHARED = 0;
		public const uint32 SIOM_RESERVED_LINK = 1;
		public const uint32 SIOM_RESERVED_SLOWFILE = 2;
		public const uint32 SIOM_RESERVED_DEFAULT = 3;
		public const uint32 OI_DEFAULT = 0;
		public const uint32 OI_ASYNC = 4294962926;
		public const uint32 IDO_SHGIOI_SHARE = 268435455;
		public const uint32 IDO_SHGIOI_LINK = 268435454;
		public const uint64 IDO_SHGIOI_SLOWFILE = 4294967293uL;
		public const uint64 IDO_SHGIOI_DEFAULT = 4294967292uL;
		public const uint32 NT_CONSOLE_PROPS_SIG = 2684354562;
		public const uint32 NT_FE_CONSOLE_PROPS_SIG = 2684354564;
		public const uint32 EXP_DARWIN_ID_SIG = 2684354566;
		public const uint32 EXP_SPECIAL_FOLDER_SIG = 2684354565;
		public const uint32 EXP_SZ_LINK_SIG = 2684354561;
		public const uint32 EXP_SZ_ICON_SIG = 2684354567;
		public const uint32 EXP_PROPERTYSTORAGE_SIG = 2684354569;
		public const uint32 FCIDM_SHVIEWFIRST = 0;
		public const uint32 FCIDM_SHVIEWLAST = 32767;
		public const uint32 FCIDM_BROWSERFIRST = 40960;
		public const uint32 FCIDM_BROWSERLAST = 48896;
		public const uint32 FCIDM_GLOBALFIRST = 32768;
		public const uint32 FCIDM_GLOBALLAST = 40959;
		public const uint32 FCIDM_MENU_FILE = 32768;
		public const uint32 FCIDM_MENU_EDIT = 32832;
		public const uint32 FCIDM_MENU_VIEW = 32896;
		public const uint32 FCIDM_MENU_VIEW_SEP_OPTIONS = 32897;
		public const uint32 FCIDM_MENU_TOOLS = 32960;
		public const uint32 FCIDM_MENU_TOOLS_SEP_GOTO = 32961;
		public const uint32 FCIDM_MENU_HELP = 33024;
		public const uint32 FCIDM_MENU_FIND = 33088;
		public const uint32 FCIDM_MENU_EXPLORE = 33104;
		public const uint32 FCIDM_MENU_FAVORITES = 33136;
		public const uint32 OFASI_EDIT = 1;
		public const uint32 OFASI_OPENDESKTOP = 2;
		public const uint32 CSIDL_DESKTOP = 0;
		public const uint32 CSIDL_INTERNET = 1;
		public const uint32 CSIDL_PROGRAMS = 2;
		public const uint32 CSIDL_CONTROLS = 3;
		public const uint32 CSIDL_PRINTERS = 4;
		public const uint32 CSIDL_PERSONAL = 5;
		public const uint32 CSIDL_FAVORITES = 6;
		public const uint32 CSIDL_STARTUP = 7;
		public const uint32 CSIDL_RECENT = 8;
		public const uint32 CSIDL_SENDTO = 9;
		public const uint32 CSIDL_BITBUCKET = 10;
		public const uint32 CSIDL_STARTMENU = 11;
		public const uint32 CSIDL_MYDOCUMENTS = 5;
		public const uint32 CSIDL_MYMUSIC = 13;
		public const uint32 CSIDL_MYVIDEO = 14;
		public const uint32 CSIDL_DESKTOPDIRECTORY = 16;
		public const uint32 CSIDL_DRIVES = 17;
		public const uint32 CSIDL_NETWORK = 18;
		public const uint32 CSIDL_NETHOOD = 19;
		public const uint32 CSIDL_FONTS = 20;
		public const uint32 CSIDL_TEMPLATES = 21;
		public const uint32 CSIDL_COMMON_STARTMENU = 22;
		public const uint32 CSIDL_COMMON_PROGRAMS = 23;
		public const uint32 CSIDL_COMMON_STARTUP = 24;
		public const uint32 CSIDL_COMMON_DESKTOPDIRECTORY = 25;
		public const uint32 CSIDL_APPDATA = 26;
		public const uint32 CSIDL_PRINTHOOD = 27;
		public const uint32 CSIDL_LOCAL_APPDATA = 28;
		public const uint32 CSIDL_ALTSTARTUP = 29;
		public const uint32 CSIDL_COMMON_ALTSTARTUP = 30;
		public const uint32 CSIDL_COMMON_FAVORITES = 31;
		public const uint32 CSIDL_INTERNET_CACHE = 32;
		public const uint32 CSIDL_COOKIES = 33;
		public const uint32 CSIDL_HISTORY = 34;
		public const uint32 CSIDL_COMMON_APPDATA = 35;
		public const uint32 CSIDL_WINDOWS = 36;
		public const uint32 CSIDL_SYSTEM = 37;
		public const uint32 CSIDL_PROGRAM_FILES = 38;
		public const uint32 CSIDL_MYPICTURES = 39;
		public const uint32 CSIDL_PROFILE = 40;
		public const uint32 CSIDL_SYSTEMX86 = 41;
		public const uint32 CSIDL_PROGRAM_FILESX86 = 42;
		public const uint32 CSIDL_PROGRAM_FILES_COMMON = 43;
		public const uint32 CSIDL_PROGRAM_FILES_COMMONX86 = 44;
		public const uint32 CSIDL_COMMON_TEMPLATES = 45;
		public const uint32 CSIDL_COMMON_DOCUMENTS = 46;
		public const uint32 CSIDL_COMMON_ADMINTOOLS = 47;
		public const uint32 CSIDL_ADMINTOOLS = 48;
		public const uint32 CSIDL_CONNECTIONS = 49;
		public const uint32 CSIDL_COMMON_MUSIC = 53;
		public const uint32 CSIDL_COMMON_PICTURES = 54;
		public const uint32 CSIDL_COMMON_VIDEO = 55;
		public const uint32 CSIDL_RESOURCES = 56;
		public const uint32 CSIDL_RESOURCES_LOCALIZED = 57;
		public const uint32 CSIDL_COMMON_OEM_LINKS = 58;
		public const uint32 CSIDL_CDBURN_AREA = 59;
		public const uint32 CSIDL_COMPUTERSNEARME = 61;
		public const uint32 CSIDL_FLAG_CREATE = 32768;
		public const uint32 CSIDL_FLAG_DONT_VERIFY = 16384;
		public const uint32 CSIDL_FLAG_DONT_UNEXPAND = 8192;
		public const uint32 CSIDL_FLAG_NO_ALIAS = 4096;
		public const uint32 CSIDL_FLAG_PER_USER_INIT = 2048;
		public const uint32 CSIDL_FLAG_MASK = 65280;
		public const uint32 FCS_READ = 1;
		public const uint32 FCS_FORCEWRITE = 2;
		public const uint32 FCS_FLAG_DRAGDROP = 2;
		public const uint32 FCSM_VIEWID = 1;
		public const uint32 FCSM_WEBVIEWTEMPLATE = 2;
		public const uint32 FCSM_INFOTIP = 4;
		public const uint32 FCSM_CLSID = 8;
		public const uint32 FCSM_ICONFILE = 16;
		public const uint32 FCSM_LOGO = 32;
		public const uint32 FCSM_FLAGS = 64;
		public const uint32 BIF_RETURNONLYFSDIRS = 1;
		public const uint32 BIF_DONTGOBELOWDOMAIN = 2;
		public const uint32 BIF_STATUSTEXT = 4;
		public const uint32 BIF_RETURNFSANCESTORS = 8;
		public const uint32 BIF_EDITBOX = 16;
		public const uint32 BIF_VALIDATE = 32;
		public const uint32 BIF_NEWDIALOGSTYLE = 64;
		public const uint32 BIF_BROWSEINCLUDEURLS = 128;
		public const uint32 BIF_UAHINT = 256;
		public const uint32 BIF_NONEWFOLDERBUTTON = 512;
		public const uint32 BIF_NOTRANSLATETARGETS = 1024;
		public const uint32 BIF_BROWSEFORCOMPUTER = 4096;
		public const uint32 BIF_BROWSEFORPRINTER = 8192;
		public const uint32 BIF_BROWSEINCLUDEFILES = 16384;
		public const uint32 BIF_SHAREABLE = 32768;
		public const uint32 BIF_BROWSEFILEJUNCTIONS = 65536;
		public const uint32 BFFM_INITIALIZED = 1;
		public const uint32 BFFM_SELCHANGED = 2;
		public const uint32 BFFM_VALIDATEFAILEDA = 3;
		public const uint32 BFFM_VALIDATEFAILEDW = 4;
		public const uint32 BFFM_IUNKNOWN = 5;
		public const uint32 BFFM_SETSTATUSTEXTA = 1124;
		public const uint32 BFFM_ENABLEOK = 1125;
		public const uint32 BFFM_SETSELECTIONA = 1126;
		public const uint32 BFFM_SETSELECTIONW = 1127;
		public const uint32 BFFM_SETSTATUSTEXTW = 1128;
		public const uint32 BFFM_SETOKTEXT = 1129;
		public const uint32 BFFM_SETEXPANDED = 1130;
		public const uint32 BFFM_SETSTATUSTEXT = 1128;
		public const uint32 BFFM_SETSELECTION = 1127;
		public const uint32 BFFM_VALIDATEFAILED = 4;
		public const int32 CMDID_INTSHORTCUTCREATE = 1;
		public const uint32 PROGDLG_NORMAL = 0;
		public const uint32 PROGDLG_MODAL = 1;
		public const uint32 PROGDLG_AUTOTIME = 2;
		public const uint32 PROGDLG_NOTIME = 4;
		public const uint32 PROGDLG_NOMINIMIZE = 8;
		public const uint32 PROGDLG_NOPROGRESSBAR = 16;
		public const uint32 PROGDLG_MARQUEEPROGRESS = 32;
		public const uint32 PROGDLG_NOCANCEL = 64;
		public const uint32 PDTIMER_RESET = 1;
		public const uint32 PDTIMER_PAUSE = 2;
		public const uint32 PDTIMER_RESUME = 3;
		public const uint32 COMPONENT_TOP = 1073741823;
		public const uint32 COMP_TYPE_HTMLDOC = 0;
		public const uint32 COMP_TYPE_PICTURE = 1;
		public const uint32 COMP_TYPE_WEBSITE = 2;
		public const uint32 COMP_TYPE_CONTROL = 3;
		public const uint32 COMP_TYPE_CFHTML = 4;
		public const uint32 COMP_TYPE_MAX = 4;
		public const uint32 IS_NORMAL = 1;
		public const uint32 IS_FULLSCREEN = 2;
		public const uint32 IS_SPLIT = 4;
		public const uint32 AD_APPLY_SAVE = 1;
		public const uint32 AD_APPLY_HTMLGEN = 2;
		public const uint32 AD_APPLY_REFRESH = 4;
		public const uint32 AD_APPLY_FORCE = 8;
		public const uint32 AD_APPLY_BUFFERED_REFRESH = 16;
		public const uint32 AD_APPLY_DYNAMICREFRESH = 32;
		public const uint32 AD_GETWP_BMP = 0;
		public const uint32 AD_GETWP_IMAGE = 1;
		public const uint32 AD_GETWP_LAST_APPLIED = 2;
		public const uint32 WPSTYLE_CENTER = 0;
		public const uint32 WPSTYLE_TILE = 1;
		public const uint32 WPSTYLE_STRETCH = 2;
		public const uint32 WPSTYLE_KEEPASPECT = 3;
		public const uint32 WPSTYLE_CROPTOFIT = 4;
		public const uint32 WPSTYLE_SPAN = 5;
		public const uint32 WPSTYLE_MAX = 6;
		public const uint32 COMP_ELEM_TYPE = 1;
		public const uint32 COMP_ELEM_CHECKED = 2;
		public const uint32 COMP_ELEM_DIRTY = 4;
		public const uint32 COMP_ELEM_NOSCROLL = 8;
		public const uint32 COMP_ELEM_POS_LEFT = 16;
		public const uint32 COMP_ELEM_POS_TOP = 32;
		public const uint32 COMP_ELEM_SIZE_WIDTH = 64;
		public const uint32 COMP_ELEM_SIZE_HEIGHT = 128;
		public const uint32 COMP_ELEM_POS_ZINDEX = 256;
		public const uint32 COMP_ELEM_SOURCE = 512;
		public const uint32 COMP_ELEM_FRIENDLYNAME = 1024;
		public const uint32 COMP_ELEM_SUBSCRIBEDURL = 2048;
		public const uint32 COMP_ELEM_ORIGINAL_CSI = 4096;
		public const uint32 COMP_ELEM_RESTORED_CSI = 8192;
		public const uint32 COMP_ELEM_CURITEMSTATE = 16384;
		public const uint32 ADDURL_SILENT = 1;
		public const uint32 COMPONENT_DEFAULT_LEFT = 65535;
		public const uint32 COMPONENT_DEFAULT_TOP = 65535;
		public const uint32 MAX_COLUMN_NAME_LEN = 80;
		public const uint32 MAX_COLUMN_DESC_LEN = 128;
		public const uint32 DVASPECT_SHORTNAME = 2;
		public const uint32 DVASPECT_COPY = 3;
		public const uint32 DVASPECT_LINK = 4;
		public const int32 SHCNEE_ORDERCHANGED = 2;
		public const int32 SHCNEE_MSI_CHANGE = 4;
		public const int32 SHCNEE_MSI_UNINSTALL = 5;
		public const uint32 NUM_POINTS = 3;
		public const uint32 CABINETSTATE_VERSION = 2;
		public const uint32 PIFNAMESIZE = 30;
		public const uint32 PIFSTARTLOCSIZE = 63;
		public const uint32 PIFDEFPATHSIZE = 64;
		public const uint32 PIFPARAMSSIZE = 64;
		public const uint32 PIFSHPROGSIZE = 64;
		public const uint32 PIFSHDATASIZE = 64;
		public const uint32 PIFDEFFILESIZE = 80;
		public const uint32 PIFMAXFILEPATH = 260;
		public const uint32 QCMINFO_PLACE_BEFORE = 0;
		public const uint32 QCMINFO_PLACE_AFTER = 1;
		public const uint32 SFVSOC_INVALIDATE_ALL = 1;
		public const uint32 SFVSOC_NOSCROLL = 2;
		public const uint32 SHELLSTATEVERSION_IE4 = 9;
		public const uint32 SHELLSTATEVERSION_WIN2K = 10;
		public const uint32 SHPPFW_NONE = 0;
		public const uint32 SHPPFW_DIRCREATE = 1;
		public const uint32 SHPPFW_ASKDIRCREATE = 2;
		public const uint32 SHPPFW_IGNOREFILENAME = 4;
		public const uint32 SHPPFW_NOWRITECHECK = 8;
		public const uint32 SHPPFW_MEDIACHECKONLY = 16;
		public const uint32 CMF_NORMAL = 0;
		public const uint32 CMF_DEFAULTONLY = 1;
		public const uint32 CMF_VERBSONLY = 2;
		public const uint32 CMF_EXPLORE = 4;
		public const uint32 CMF_NOVERBS = 8;
		public const uint32 CMF_CANRENAME = 16;
		public const uint32 CMF_NODEFAULT = 32;
		public const uint32 CMF_INCLUDESTATIC = 64;
		public const uint32 CMF_ITEMMENU = 128;
		public const uint32 CMF_EXTENDEDVERBS = 256;
		public const uint32 CMF_DISABLEDVERBS = 512;
		public const uint32 CMF_ASYNCVERBSTATE = 1024;
		public const uint32 CMF_OPTIMIZEFORINVOKE = 2048;
		public const uint32 CMF_SYNCCASCADEMENU = 4096;
		public const uint32 CMF_DONOTPICKDEFAULT = 8192;
		public const uint32 CMF_RESERVED = 4294901760;
		public const uint32 GCS_VERBA = 0;
		public const uint32 GCS_HELPTEXTA = 1;
		public const uint32 GCS_VALIDATEA = 2;
		public const uint32 GCS_VERBW = 4;
		public const uint32 GCS_HELPTEXTW = 5;
		public const uint32 GCS_VALIDATEW = 6;
		public const uint32 GCS_VERBICONW = 20;
		public const uint32 GCS_UNICODE = 4;
		public const uint32 GCS_VERB = 4;
		public const uint32 GCS_HELPTEXT = 5;
		public const uint32 GCS_VALIDATE = 6;
		public const uint32 CMIC_MASK_SHIFT_DOWN = 268435456;
		public const uint32 CMIC_MASK_CONTROL_DOWN = 1073741824;
		public const uint32 CMIC_MASK_PTINVOKE = 536870912;
		public const uint32 IRTIR_TASK_NOT_RUNNING = 0;
		public const uint32 IRTIR_TASK_RUNNING = 1;
		public const uint32 IRTIR_TASK_SUSPENDED = 2;
		public const uint32 IRTIR_TASK_PENDING = 3;
		public const uint32 IRTIR_TASK_FINISHED = 4;
		public const uint32 ITSAT_DEFAULT_PRIORITY = 268435456;
		public const uint32 ITSAT_MAX_PRIORITY = 2147483647;
		public const uint32 ITSAT_MIN_PRIORITY = 0;
		public const uint32 ITSSFLAG_COMPLETE_ON_DESTROY = 0;
		public const uint32 ITSSFLAG_KILL_ON_DESTROY = 1;
		public const uint32 ITSSFLAG_FLAGS_MASK = 3;
		public const uint32 CSIDL_FLAG_PFTI_TRACKTARGET = 16384;
		public const int32 SHCIDS_ALLFIELDS = -2147483648;
		public const int32 SHCIDS_CANONICALONLY = 268435456;
		public const int32 SHCIDS_BITMASK = -65536;
		public const int32 SHCIDS_COLUMNMASK = 65535;
		public const uint32 SFGAO_CANCOPY = 1;
		public const uint32 SFGAO_CANMOVE = 2;
		public const uint32 SFGAO_CANLINK = 4;
		public const int32 SFGAO_STORAGE = 8;
		public const int32 SFGAO_CANRENAME = 16;
		public const int32 SFGAO_CANDELETE = 32;
		public const int32 SFGAO_HASPROPSHEET = 64;
		public const int32 SFGAO_DROPTARGET = 256;
		public const int32 SFGAO_CAPABILITYMASK = 375;
		public const int32 SFGAO_PLACEHOLDER = 2048;
		public const int32 SFGAO_SYSTEM = 4096;
		public const int32 SFGAO_ENCRYPTED = 8192;
		public const int32 SFGAO_ISSLOW = 16384;
		public const int32 SFGAO_GHOSTED = 32768;
		public const int32 SFGAO_LINK = 65536;
		public const int32 SFGAO_SHARE = 131072;
		public const int32 SFGAO_READONLY = 262144;
		public const int32 SFGAO_HIDDEN = 524288;
		public const int32 SFGAO_DISPLAYATTRMASK = 1032192;
		public const int32 SFGAO_FILESYSANCESTOR = 268435456;
		public const int32 SFGAO_FOLDER = 536870912;
		public const int32 SFGAO_FILESYSTEM = 1073741824;
		public const int32 SFGAO_HASSUBFOLDER = -2147483648;
		public const int32 SFGAO_CONTENTSMASK = -2147483648;
		public const int32 SFGAO_VALIDATE = 16777216;
		public const int32 SFGAO_REMOVABLE = 33554432;
		public const int32 SFGAO_COMPRESSED = 67108864;
		public const int32 SFGAO_BROWSABLE = 134217728;
		public const int32 SFGAO_NONENUMERATED = 1048576;
		public const int32 SFGAO_NEWCONTENT = 2097152;
		public const int32 SFGAO_CANMONIKER = 4194304;
		public const int32 SFGAO_HASSTORAGE = 4194304;
		public const int32 SFGAO_STREAM = 4194304;
		public const int32 SFGAO_STORAGEANCESTOR = 8388608;
		public const int32 SFGAO_STORAGECAPMASK = 1891958792;
		public const int32 SFGAO_PKEYSFGAOMASK = -2130427904;
		public const uint32 BIND_INTERRUPTABLE = 4294967295;
		public const uint32 CDBOSC_SETFOCUS = 0;
		public const uint32 CDBOSC_KILLFOCUS = 1;
		public const uint32 CDBOSC_SELCHANGE = 2;
		public const uint32 CDBOSC_RENAME = 3;
		public const uint32 CDBOSC_STATECHANGE = 4;
		public const uint32 CDB2N_CONTEXTMENU_DONE = 1;
		public const uint32 CDB2N_CONTEXTMENU_START = 2;
		public const uint32 CDB2GVF_SHOWALLFILES = 1;
		public const uint32 CDB2GVF_ISFILESAVE = 2;
		public const uint32 CDB2GVF_ALLOWPREVIEWPANE = 4;
		public const uint32 CDB2GVF_NOSELECTVERB = 8;
		public const uint32 CDB2GVF_NOINCLUDEITEM = 16;
		public const uint32 CDB2GVF_ISFOLDERPICKER = 32;
		public const uint32 CDB2GVF_ADDSHIELD = 64;
		public const uint32 SBSP_DEFBROWSER = 0;
		public const uint32 SBSP_SAMEBROWSER = 1;
		public const uint32 SBSP_NEWBROWSER = 2;
		public const uint32 SBSP_DEFMODE = 0;
		public const uint32 SBSP_OPENMODE = 16;
		public const uint32 SBSP_EXPLOREMODE = 32;
		public const uint32 SBSP_HELPMODE = 64;
		public const uint32 SBSP_NOTRANSFERHIST = 128;
		public const uint32 SBSP_ABSOLUTE = 0;
		public const uint32 SBSP_RELATIVE = 4096;
		public const uint32 SBSP_PARENT = 8192;
		public const uint32 SBSP_NAVIGATEBACK = 16384;
		public const uint32 SBSP_NAVIGATEFORWARD = 32768;
		public const uint32 SBSP_ALLOW_AUTONAVIGATE = 65536;
		public const uint32 SBSP_KEEPSAMETEMPLATE = 131072;
		public const uint32 SBSP_KEEPWORDWHEELTEXT = 262144;
		public const uint32 SBSP_ACTIVATE_NOFOCUS = 524288;
		public const uint32 SBSP_CREATENOHISTORY = 1048576;
		public const uint32 SBSP_PLAYNOSOUND = 2097152;
		public const uint32 SBSP_CALLERUNTRUSTED = 8388608;
		public const uint32 SBSP_TRUSTFIRSTDOWNLOAD = 16777216;
		public const uint32 SBSP_UNTRUSTEDFORDOWNLOAD = 33554432;
		public const uint32 SBSP_NOAUTOSELECT = 67108864;
		public const uint32 SBSP_WRITENOHISTORY = 134217728;
		public const uint32 SBSP_TRUSTEDFORACTIVEX = 268435456;
		public const uint32 SBSP_FEEDNAVIGATION = 536870912;
		public const uint32 SBSP_REDIRECT = 1073741824;
		public const uint32 SBSP_INITIATEDBYHLINKFRAME = 2147483648;
		public const uint32 FCW_STATUS = 1;
		public const uint32 FCW_TOOLBAR = 2;
		public const uint32 FCW_TREE = 3;
		public const uint32 FCW_INTERNETBAR = 6;
		public const uint32 FCW_PROGRESS = 8;
		public const uint32 FCT_MERGE = 1;
		public const uint32 FCT_CONFIGABLE = 2;
		public const uint32 FCT_ADDTOEND = 4;
		public const uint32 ARCONTENT_AUTORUNINF = 2;
		public const uint32 ARCONTENT_AUDIOCD = 4;
		public const uint32 ARCONTENT_DVDMOVIE = 8;
		public const uint32 ARCONTENT_BLANKCD = 16;
		public const uint32 ARCONTENT_BLANKDVD = 32;
		public const uint32 ARCONTENT_UNKNOWNCONTENT = 64;
		public const uint32 ARCONTENT_AUTOPLAYPIX = 128;
		public const uint32 ARCONTENT_AUTOPLAYMUSIC = 256;
		public const uint32 ARCONTENT_AUTOPLAYVIDEO = 512;
		public const uint32 ARCONTENT_VCD = 1024;
		public const uint32 ARCONTENT_SVCD = 2048;
		public const uint32 ARCONTENT_DVDAUDIO = 4096;
		public const uint32 ARCONTENT_BLANKBD = 8192;
		public const uint32 ARCONTENT_BLURAY = 16384;
		public const uint32 ARCONTENT_CAMERASTORAGE = 32768;
		public const uint32 ARCONTENT_CUSTOMEVENT = 65536;
		public const uint32 ARCONTENT_NONE = 0;
		public const uint32 ARCONTENT_MASK = 131070;
		public const uint32 ARCONTENT_PHASE_UNKNOWN = 0;
		public const uint32 ARCONTENT_PHASE_PRESNIFF = 268435456;
		public const uint32 ARCONTENT_PHASE_SNIFFING = 536870912;
		public const uint32 ARCONTENT_PHASE_FINAL = 1073741824;
		public const uint32 ARCONTENT_PHASE_MASK = 1879048192;
		public const uint32 IEI_PRIORITY_MAX = 2147483647;
		public const uint32 IEI_PRIORITY_MIN = 0;
		public const uint32 IEIT_PRIORITY_NORMAL = 268435456;
		public const uint32 IEIFLAG_ASYNC = 1;
		public const uint32 IEIFLAG_CACHE = 2;
		public const uint32 IEIFLAG_ASPECT = 4;
		public const uint32 IEIFLAG_OFFLINE = 8;
		public const uint32 IEIFLAG_GLEAM = 16;
		public const uint32 IEIFLAG_SCREEN = 32;
		public const uint32 IEIFLAG_ORIGSIZE = 64;
		public const uint32 IEIFLAG_NOSTAMP = 128;
		public const uint32 IEIFLAG_NOBORDER = 256;
		public const uint32 IEIFLAG_QUALITY = 512;
		public const uint32 IEIFLAG_REFRESH = 1024;
		public const uint32 DBIM_MINSIZE = 1;
		public const uint32 DBIM_MAXSIZE = 2;
		public const uint32 DBIM_INTEGRAL = 4;
		public const uint32 DBIM_ACTUAL = 8;
		public const uint32 DBIM_TITLE = 16;
		public const uint32 DBIM_MODEFLAGS = 32;
		public const uint32 DBIM_BKCOLOR = 64;
		public const uint32 DBIMF_NORMAL = 0;
		public const uint32 DBIMF_FIXED = 1;
		public const uint32 DBIMF_FIXEDBMP = 4;
		public const uint32 DBIMF_VARIABLEHEIGHT = 8;
		public const uint32 DBIMF_UNDELETEABLE = 16;
		public const uint32 DBIMF_DEBOSSED = 32;
		public const uint32 DBIMF_BKCOLOR = 64;
		public const uint32 DBIMF_USECHEVRON = 128;
		public const uint32 DBIMF_BREAK = 256;
		public const uint32 DBIMF_ADDTOFRONT = 512;
		public const uint32 DBIMF_TOPALIGN = 1024;
		public const uint32 DBIMF_NOGRIPPER = 2048;
		public const uint32 DBIMF_ALWAYSGRIPPER = 4096;
		public const uint32 DBIMF_NOMARGINS = 8192;
		public const uint32 DBIF_VIEWMODE_NORMAL = 0;
		public const uint32 DBIF_VIEWMODE_VERTICAL = 1;
		public const uint32 DBIF_VIEWMODE_FLOATING = 2;
		public const uint32 DBIF_VIEWMODE_TRANSPARENT = 4;
		public const uint32 DBPC_SELECTFIRST = 4294967295;
		public const uint32 THBN_CLICKED = 6144;
		public const uint32 FOFX_NOSKIPJUNCTIONS = 65536;
		public const uint32 FOFX_PREFERHARDLINK = 131072;
		public const uint32 FOFX_SHOWELEVATIONPROMPT = 262144;
		public const uint32 FOFX_RECYCLEONDELETE = 524288;
		public const uint32 FOFX_EARLYFAILURE = 1048576;
		public const uint32 FOFX_PRESERVEFILEEXTENSIONS = 2097152;
		public const uint32 FOFX_KEEPNEWERFILE = 4194304;
		public const uint32 FOFX_NOCOPYHOOKS = 8388608;
		public const uint32 FOFX_NOMINIMIZEBOX = 16777216;
		public const uint32 FOFX_MOVEACLSACROSSVOLUMES = 33554432;
		public const uint32 FOFX_DONTDISPLAYSOURCEPATH = 67108864;
		public const uint32 FOFX_DONTDISPLAYDESTPATH = 134217728;
		public const uint32 FOFX_REQUIREELEVATION = 268435456;
		public const uint32 FOFX_ADDUNDORECORD = 536870912;
		public const uint32 FOFX_COPYASDOWNLOAD = 1073741824;
		public const uint32 FOFX_DONTDISPLAYLOCATIONS = 2147483648;
		public const uint32 BSIM_STATE = 1;
		public const uint32 BSIM_STYLE = 2;
		public const uint32 BSSF_VISIBLE = 1;
		public const uint32 BSSF_NOTITLE = 2;
		public const uint32 BSSF_UNDELETEABLE = 4096;
		public const uint32 BSIS_AUTOGRIPPER = 0;
		public const uint32 BSIS_NOGRIPPER = 1;
		public const uint32 BSIS_ALWAYSGRIPPER = 2;
		public const uint32 BSIS_LEFTALIGN = 4;
		public const uint32 BSIS_SINGLECLICK = 8;
		public const uint32 BSIS_NOCONTEXTMENU = 16;
		public const uint32 BSIS_NODROPTARGET = 32;
		public const uint32 BSIS_NOCAPTION = 64;
		public const uint32 BSIS_PREFERNOLINEBREAK = 128;
		public const uint32 BSIS_LOCKED = 256;
		public const uint32 BSIS_PRESERVEORDERDURINGLAYOUT = 512;
		public const uint32 BSIS_FIXEDORDER = 1024;
		public const uint32 OF_CAP_CANSWITCHTO = 1;
		public const uint32 OF_CAP_CANCLOSE = 2;
		public const uint32 SMDM_SHELLFOLDER = 1;
		public const uint32 SMDM_HMENU = 2;
		public const uint32 SMDM_TOOLBAR = 4;
		public const uint32 SMC_INITMENU = 1;
		public const uint32 SMC_CREATE = 2;
		public const uint32 SMC_EXITMENU = 3;
		public const uint32 SMC_GETINFO = 5;
		public const uint32 SMC_GETSFINFO = 6;
		public const uint32 SMC_GETOBJECT = 7;
		public const uint32 SMC_GETSFOBJECT = 8;
		public const uint32 SMC_SFEXEC = 9;
		public const uint32 SMC_SFSELECTITEM = 10;
		public const uint32 SMC_REFRESH = 16;
		public const uint32 SMC_DEMOTE = 17;
		public const uint32 SMC_PROMOTE = 18;
		public const uint32 SMC_DEFAULTICON = 22;
		public const uint32 SMC_NEWITEM = 23;
		public const uint32 SMC_CHEVRONEXPAND = 25;
		public const uint32 SMC_DISPLAYCHEVRONTIP = 42;
		public const uint32 SMC_SETSFOBJECT = 45;
		public const uint32 SMC_SHCHANGENOTIFY = 46;
		public const uint32 SMC_CHEVRONGETTIP = 47;
		public const uint32 SMC_SFDDRESTRICTED = 48;
		public const uint32 SMC_SFEXEC_MIDDLE = 49;
		public const uint32 SMC_GETAUTOEXPANDSTATE = 65;
		public const uint32 SMC_AUTOEXPANDCHANGE = 66;
		public const uint32 SMC_GETCONTEXTMENUMODIFIER = 67;
		public const uint32 SMC_GETBKCONTEXTMENU = 68;
		public const uint32 SMC_OPEN = 69;
		public const uint32 SMAE_EXPANDED = 1;
		public const uint32 SMAE_CONTRACTED = 2;
		public const uint32 SMAE_USER = 4;
		public const uint32 SMAE_VALID = 7;
		public const uint32 SMINIT_DEFAULT = 0;
		public const uint32 SMINIT_RESTRICT_DRAGDROP = 2;
		public const uint32 SMINIT_TOPLEVEL = 4;
		public const uint32 SMINIT_CACHED = 16;
		public const uint32 SMINIT_AUTOEXPAND = 256;
		public const uint32 SMINIT_AUTOTOOLTIP = 512;
		public const uint32 SMINIT_DROPONCONTAINER = 1024;
		public const uint32 SMINIT_VERTICAL = 268435456;
		public const uint32 SMINIT_HORIZONTAL = 536870912;
		public const uint32 SMSET_TOP = 268435456;
		public const uint32 SMSET_BOTTOM = 536870912;
		public const uint32 SMSET_DONTOWN = 1;
		public const uint32 SMINV_REFRESH = 1;
		public const uint32 SMINV_ID = 8;
		public const HRESULT E_PREVIEWHANDLER_DRM_FAIL = -2042494975;
		public const HRESULT E_PREVIEWHANDLER_NOAUTH = -2042494974;
		public const HRESULT E_PREVIEWHANDLER_NOTFOUND = -2042494973;
		public const HRESULT E_PREVIEWHANDLER_CORRUPT = -2042494972;
		public const Guid SID_URLExecutionContext = .(0xfb5f8ebc, 0xbbb6, 0x4d10, 0xa4, 0x61, 0x77, 0x72, 0x91, 0xa0, 0x90, 0x30);
		public const Guid SID_LaunchSourceViewSizePreference = .(0x80605492, 0x67d9, 0x414f, 0xaf, 0x89, 0xa1, 0xcd, 0xf1, 0x24, 0x2b, 0xc1);
		public const Guid SID_LaunchTargetViewSizePreference = .(0x26db2472, 0xb7b7, 0x406b, 0x97, 0x02, 0x73, 0x0a, 0x4e, 0x20, 0xd3, 0xbf);
		public const Guid SID_LaunchSourceAppUserModelId = .(0x2ce78010, 0x74db, 0x48bc, 0x9c, 0x6a, 0x10, 0xf3, 0x72, 0x49, 0x57, 0x23);
		public const Guid SID_ShellExecuteNamedPropertyStore = .(0xeb84ada2, 0x00ff, 0x4992, 0x83, 0x24, 0xed, 0x5c, 0xe0, 0x61, 0xcb, 0x29);
		public const uint32 ISIOI_ICONFILE = 1;
		public const uint32 ISIOI_ICONINDEX = 2;
		public const uint32 ABM_NEW = 0;
		public const uint32 ABM_REMOVE = 1;
		public const uint32 ABM_QUERYPOS = 2;
		public const uint32 ABM_SETPOS = 3;
		public const uint32 ABM_GETSTATE = 4;
		public const uint32 ABM_GETTASKBARPOS = 5;
		public const uint32 ABM_ACTIVATE = 6;
		public const uint32 ABM_GETAUTOHIDEBAR = 7;
		public const uint32 ABM_SETAUTOHIDEBAR = 8;
		public const uint32 ABM_WINDOWPOSCHANGED = 9;
		public const uint32 ABM_SETSTATE = 10;
		public const uint32 ABM_GETAUTOHIDEBAREX = 11;
		public const uint32 ABM_SETAUTOHIDEBAREX = 12;
		public const uint32 ABN_STATECHANGE = 0;
		public const uint32 ABN_POSCHANGED = 1;
		public const uint32 ABN_FULLSCREENAPP = 2;
		public const uint32 ABN_WINDOWARRANGE = 3;
		public const uint32 ABS_AUTOHIDE = 1;
		public const uint32 ABS_ALWAYSONTOP = 2;
		public const uint32 ABE_LEFT = 0;
		public const uint32 ABE_TOP = 1;
		public const uint32 ABE_RIGHT = 2;
		public const uint32 ABE_BOTTOM = 3;
		public const uint32 FO_MOVE = 1;
		public const uint32 FO_COPY = 2;
		public const uint32 FO_DELETE = 3;
		public const uint32 FO_RENAME = 4;
		public const uint32 FOF_MULTIDESTFILES = 1;
		public const uint32 FOF_CONFIRMMOUSE = 2;
		public const uint32 FOF_SILENT = 4;
		public const uint32 FOF_RENAMEONCOLLISION = 8;
		public const uint32 FOF_NOCONFIRMATION = 16;
		public const uint32 FOF_WANTMAPPINGHANDLE = 32;
		public const uint32 FOF_ALLOWUNDO = 64;
		public const uint32 FOF_FILESONLY = 128;
		public const uint32 FOF_SIMPLEPROGRESS = 256;
		public const uint32 FOF_NOCONFIRMMKDIR = 512;
		public const uint32 FOF_NOERRORUI = 1024;
		public const uint32 FOF_NOCOPYSECURITYATTRIBS = 2048;
		public const uint32 FOF_NORECURSION = 4096;
		public const uint32 FOF_NO_CONNECTED_ELEMENTS = 8192;
		public const uint32 FOF_WANTNUKEWARNING = 16384;
		public const uint32 FOF_NORECURSEREPARSE = 32768;
		public const uint32 PO_DELETE = 19;
		public const uint32 PO_RENAME = 20;
		public const uint32 PO_PORTCHANGE = 32;
		public const uint32 PO_REN_PORT = 52;
		public const uint32 SE_ERR_FNF = 2;
		public const uint32 SE_ERR_PNF = 3;
		public const uint32 SE_ERR_ACCESSDENIED = 5;
		public const uint32 SE_ERR_OOM = 8;
		public const uint32 SE_ERR_DLLNOTFOUND = 32;
		public const uint32 SE_ERR_SHARE = 26;
		public const uint32 SE_ERR_ASSOCINCOMPLETE = 27;
		public const uint32 SE_ERR_DDETIMEOUT = 28;
		public const uint32 SE_ERR_DDEFAIL = 29;
		public const uint32 SE_ERR_DDEBUSY = 30;
		public const uint32 SE_ERR_NOASSOC = 31;
		public const uint32 SEE_MASK_DEFAULT = 0;
		public const uint32 SEE_MASK_CLASSNAME = 1;
		public const uint32 SEE_MASK_CLASSKEY = 3;
		public const uint32 SEE_MASK_IDLIST = 4;
		public const uint32 SEE_MASK_INVOKEIDLIST = 12;
		public const uint32 SEE_MASK_ICON = 16;
		public const uint32 SEE_MASK_HOTKEY = 32;
		public const uint32 SEE_MASK_NOCLOSEPROCESS = 64;
		public const uint32 SEE_MASK_CONNECTNETDRV = 128;
		public const uint32 SEE_MASK_NOASYNC = 256;
		public const uint32 SEE_MASK_FLAG_DDEWAIT = 256;
		public const uint32 SEE_MASK_DOENVSUBST = 512;
		public const uint32 SEE_MASK_FLAG_NO_UI = 1024;
		public const uint32 SEE_MASK_UNICODE = 16384;
		public const uint32 SEE_MASK_NO_CONSOLE = 32768;
		public const uint32 SEE_MASK_ASYNCOK = 1048576;
		public const uint32 SEE_MASK_HMONITOR = 2097152;
		public const uint32 SEE_MASK_NOZONECHECKS = 8388608;
		public const uint32 SEE_MASK_NOQUERYCLASSSTORE = 16777216;
		public const uint32 SEE_MASK_WAITFORINPUTIDLE = 33554432;
		public const uint32 SEE_MASK_FLAG_LOG_USAGE = 67108864;
		public const uint32 SEE_MASK_FLAG_HINST_IS_SITE = 134217728;
		public const uint32 SHERB_NOCONFIRMATION = 1;
		public const uint32 SHERB_NOPROGRESSUI = 2;
		public const uint32 SHERB_NOSOUND = 4;
		public const uint32 NIN_SELECT = 1024;
		public const uint32 NINF_KEY = 1;
		public const uint32 NIN_BALLOONSHOW = 1026;
		public const uint32 NIN_BALLOONHIDE = 1027;
		public const uint32 NIN_BALLOONTIMEOUT = 1028;
		public const uint32 NIN_BALLOONUSERCLICK = 1029;
		public const uint32 NIN_POPUPOPEN = 1030;
		public const uint32 NIN_POPUPCLOSE = 1031;
		public const uint32 NOTIFYICON_VERSION = 3;
		public const uint32 NOTIFYICON_VERSION_4 = 4;
		public const uint32 NIS_HIDDEN = 1;
		public const uint32 NIS_SHAREDICON = 2;
		public const uint32 NIIF_NONE = 0;
		public const uint32 NIIF_INFO = 1;
		public const uint32 NIIF_WARNING = 2;
		public const uint32 NIIF_ERROR = 3;
		public const uint32 NIIF_USER = 4;
		public const uint32 NIIF_ICON_MASK = 15;
		public const uint32 NIIF_NOSOUND = 16;
		public const uint32 NIIF_LARGE_ICON = 32;
		public const uint32 NIIF_RESPECT_QUIET_TIME = 128;
		public const uint32 SHGSI_ICONLOCATION = 0;
		public const uint64 SHGNLI_PIDL = 1uL;
		public const uint64 SHGNLI_PREFIXNAME = 2uL;
		public const uint64 SHGNLI_NOUNIQUE = 4uL;
		public const uint64 SHGNLI_NOLNK = 8uL;
		public const uint64 SHGNLI_NOLOCNAME = 16uL;
		public const uint64 SHGNLI_USEURLEXT = 32uL;
		public const uint32 PRINTACTION_OPEN = 0;
		public const uint32 PRINTACTION_PROPERTIES = 1;
		public const uint32 PRINTACTION_NETINSTALL = 2;
		public const uint32 PRINTACTION_NETINSTALLLINK = 3;
		public const uint32 PRINTACTION_TESTPAGE = 4;
		public const uint32 PRINTACTION_OPENNETPRN = 5;
		public const uint32 PRINTACTION_DOCUMENTDEFAULTS = 6;
		public const uint32 PRINTACTION_SERVERPROPERTIES = 7;
		public const uint32 PRINT_PROP_FORCE_NAME = 1;
		public const uint32 OFFLINE_STATUS_LOCAL = 1;
		public const uint32 OFFLINE_STATUS_REMOTE = 2;
		public const uint32 OFFLINE_STATUS_INCOMPLETE = 4;
		public const uint32 SHIL_LARGE = 0;
		public const uint32 SHIL_SMALL = 1;
		public const uint32 SHIL_EXTRALARGE = 2;
		public const uint32 SHIL_SYSSMALL = 3;
		public const uint32 SHIL_JUMBO = 4;
		public const uint32 SHIL_LAST = 4;
		public const uint32 NCM_GETADDRESS = 1025;
		public const uint32 NCM_SETALLOWTYPE = 1026;
		public const uint32 NCM_GETALLOWTYPE = 1027;
		public const uint32 NCM_DISPLAYERRORTIP = 1028;
		public const uint32 CREDENTIAL_PROVIDER_NO_DEFAULT = 4294967295;
		public const Guid Identity_LocalUserProvider = .(0xa198529b, 0x730f, 0x4089, 0xb6, 0x46, 0xa1, 0x25, 0x57, 0xf5, 0x66, 0x5e);
		public const uint32 MAX_SYNCMGR_ID = 64;
		public const uint32 MAX_SYNCMGR_PROGRESSTEXT = 260;
		public const uint32 MAX_SYNCMGR_NAME = 128;
		public const int32 STIF_DEFAULT = 0;
		public const int32 STIF_SUPPORT_HEX = 1;
		public const uint32 GCT_INVALID = 0;
		public const uint32 GCT_LFNCHAR = 1;
		public const uint32 GCT_SHORTCHAR = 2;
		public const uint32 GCT_WILD = 4;
		public const uint32 GCT_SEPARATOR = 8;
		public const uint32 PMSF_NORMAL = 0;
		public const uint32 PMSF_MULTIPLE = 1;
		public const uint32 PMSF_DONT_STRIP_SPACES = 65536;
		public const uint32 URL_UNESCAPE = 268435456;
		public const uint32 URL_ESCAPE_UNSAFE = 536870912;
		public const uint32 URL_PLUGGABLE_PROTOCOL = 1073741824;
		public const uint32 URL_WININET_COMPATIBILITY = 2147483648;
		public const uint32 URL_DONT_ESCAPE_EXTRA_INFO = 33554432;
		public const uint32 URL_DONT_UNESCAPE_EXTRA_INFO = 33554432;
		public const uint32 URL_BROWSER_MODE = 33554432;
		public const uint32 URL_ESCAPE_SPACES_ONLY = 67108864;
		public const uint32 URL_DONT_SIMPLIFY = 134217728;
		public const uint32 URL_NO_META = 134217728;
		public const uint32 URL_UNESCAPE_INPLACE = 1048576;
		public const uint32 URL_CONVERT_IF_DOSPATH = 2097152;
		public const uint32 URL_UNESCAPE_HIGH_ANSI_ONLY = 4194304;
		public const uint32 URL_INTERNAL_PATH = 8388608;
		public const uint32 URL_FILE_USE_PATHURL = 65536;
		public const uint32 URL_DONT_UNESCAPE = 131072;
		public const uint32 URL_ESCAPE_AS_UTF8 = 262144;
		public const uint32 URL_UNESCAPE_AS_UTF8 = 262144;
		public const uint32 URL_ESCAPE_ASCII_URI_COMPONENT = 524288;
		public const uint32 URL_UNESCAPE_URI_COMPONENT = 262144;
		public const uint32 URL_ESCAPE_PERCENT = 4096;
		public const uint32 URL_ESCAPE_SEGMENT_ONLY = 8192;
		public const uint32 URL_PARTFLAG_KEEPSCHEME = 1;
		public const uint32 URL_APPLY_DEFAULT = 1;
		public const uint32 URL_APPLY_GUESSSCHEME = 2;
		public const uint32 URL_APPLY_GUESSFILE = 4;
		public const uint32 URL_APPLY_FORCEAPPLY = 8;
		public const uint32 SRRF_RT_REG_NONE = 1;
		public const uint32 SRRF_RT_REG_SZ = 2;
		public const uint32 SRRF_RT_REG_EXPAND_SZ = 4;
		public const uint32 SRRF_RT_REG_BINARY = 8;
		public const uint32 SRRF_RT_REG_DWORD = 16;
		public const uint32 SRRF_RT_REG_MULTI_SZ = 32;
		public const uint32 SRRF_RT_REG_QWORD = 64;
		public const uint32 SRRF_RT_ANY = 65535;
		public const uint32 SRRF_RM_ANY = 0;
		public const uint32 SRRF_RM_NORMAL = 65536;
		public const uint32 SRRF_RM_SAFE = 131072;
		public const uint32 SRRF_RM_SAFENETWORK = 262144;
		public const uint32 SRRF_NOEXPAND = 268435456;
		public const uint32 SRRF_ZEROONFAILURE = 536870912;
		public const uint32 SRRF_NOVIRT = 1073741824;
		public const uint32 SHREGSET_HKCU = 1;
		public const uint32 SHREGSET_FORCE_HKCU = 2;
		public const uint32 SHREGSET_HKLM = 4;
		public const uint32 SHREGSET_FORCE_HKLM = 8;
		public const uint32 SPMODE_SHELL = 1;
		public const uint32 SPMODE_DEBUGOUT = 2;
		public const uint32 SPMODE_TEST = 4;
		public const uint32 SPMODE_BROWSER = 8;
		public const uint32 SPMODE_FLUSH = 16;
		public const uint32 SPMODE_EVENT = 32;
		public const uint32 SPMODE_MSVM = 64;
		public const uint32 SPMODE_FORMATTEXT = 128;
		public const uint32 SPMODE_PROFILE = 256;
		public const uint32 SPMODE_DEBUGBREAK = 512;
		public const uint32 SPMODE_MSGTRACE = 1024;
		public const uint32 SPMODE_PERFTAGS = 2048;
		public const uint32 SPMODE_MEMWATCH = 4096;
		public const uint32 SPMODE_DBMON = 8192;
		public const uint32 SPMODE_MULTISTOP = 16384;
		public const uint32 SPMODE_EVENTTRACE = 32768;
		public const uint32 SHGVSPB_PERUSER = 1;
		public const uint32 SHGVSPB_ALLUSERS = 2;
		public const uint32 SHGVSPB_PERFOLDER = 4;
		public const uint32 SHGVSPB_ALLFOLDERS = 8;
		public const uint32 SHGVSPB_INHERIT = 16;
		public const uint32 SHGVSPB_ROAM = 32;
		public const uint32 SHGVSPB_NOAUTODEFAULTS = 2147483648;
		public const uint32 FDTF_SHORTTIME = 1;
		public const uint32 FDTF_SHORTDATE = 2;
		public const uint32 FDTF_LONGDATE = 4;
		public const uint32 FDTF_LONGTIME = 8;
		public const uint32 FDTF_RELATIVE = 16;
		public const uint32 FDTF_LTRDATE = 256;
		public const uint32 FDTF_RTLDATE = 512;
		public const uint32 FDTF_NOAUTOREADINGORDER = 1024;
		public const uint32 PLATFORM_UNKNOWN = 0;
		public const uint32 PLATFORM_IE3 = 1;
		public const uint32 PLATFORM_BROWSERONLY = 1;
		public const uint32 PLATFORM_INTEGRATED = 2;
		public const uint32 ILMM_IE4 = 0;
		public const uint32 SHACF_DEFAULT = 0;
		public const uint32 SHACF_FILESYSTEM = 1;
		public const uint32 SHACF_URLHISTORY = 2;
		public const uint32 SHACF_URLMRU = 4;
		public const uint32 SHACF_USETAB = 8;
		public const uint32 SHACF_FILESYS_ONLY = 16;
		public const uint32 SHACF_FILESYS_DIRS = 32;
		public const uint32 SHACF_VIRTUAL_NAMESPACE = 64;
		public const uint32 SHACF_AUTOSUGGEST_FORCE_ON = 268435456;
		public const uint32 SHACF_AUTOSUGGEST_FORCE_OFF = 536870912;
		public const uint32 SHACF_AUTOAPPEND_FORCE_ON = 1073741824;
		public const uint32 SHACF_AUTOAPPEND_FORCE_OFF = 2147483648;
		public const uint32 DLLVER_PLATFORM_WINDOWS = 1;
		public const uint32 DLLVER_PLATFORM_NT = 2;
		public const uint64 DLLVER_MAJOR_MASK = 18446462598732840960uL;
		public const uint64 DLLVER_MINOR_MASK = 281470681743360uL;
		public const uint64 DLLVER_BUILD_MASK = 4294901760uL;
		public const uint64 DLLVER_QFE_MASK = 65535uL;
		public const HRESULT WTS_E_FAILEDEXTRACTION = -2147175936;
		public const HRESULT WTS_E_EXTRACTIONTIMEDOUT = -2147175935;
		public const HRESULT WTS_E_SURROGATEUNAVAILABLE = -2147175934;
		public const HRESULT WTS_E_FASTEXTRACTIONNOTSUPPORTED = -2147175933;
		public const HRESULT WTS_E_DATAFILEUNAVAILABLE = -2147175932;
		public const HRESULT WTS_E_EXTRACTIONPENDING = -2147175931;
		public const HRESULT WTS_E_EXTRACTIONBLOCKED = -2147175930;
		public const HRESULT WTS_E_NOSTORAGEPROVIDERTHUMBNAILHANDLER = -2147175929;
		public const uint32 SHIMGDEC_DEFAULT = 0;
		public const uint32 SHIMGDEC_THUMBNAIL = 1;
		public const uint32 SHIMGDEC_LOADFULL = 2;
		public const HRESULT E_NOTVALIDFORANIMATEDIMAGE = -2147221503;
		public const HRESULT S_SYNCMGR_MISSINGITEMS = 262657;
		public const HRESULT S_SYNCMGR_RETRYSYNC = 262658;
		public const HRESULT S_SYNCMGR_CANCELITEM = 262659;
		public const HRESULT S_SYNCMGR_CANCELALL = 262660;
		public const HRESULT S_SYNCMGR_ITEMDELETED = 262672;
		public const HRESULT S_SYNCMGR_ENUMITEMS = 262673;
		public const uint32 SYNCMGRPROGRESSITEM_STATUSTEXT = 1;
		public const uint32 SYNCMGRPROGRESSITEM_STATUSTYPE = 2;
		public const uint32 SYNCMGRPROGRESSITEM_PROGVALUE = 4;
		public const uint32 SYNCMGRPROGRESSITEM_MAXVALUE = 8;
		public const uint32 SYNCMGRLOGERROR_ERRORFLAGS = 1;
		public const uint32 SYNCMGRLOGERROR_ERRORID = 2;
		public const uint32 SYNCMGRLOGERROR_ITEMID = 4;
		public const uint32 SYNCMGRITEM_ITEMFLAGMASK = 127;
		public const uint32 MAX_SYNCMGRITEMNAME = 128;
		public const uint32 SYNCMGRHANDLERFLAG_MASK = 15;
		public const uint32 MAX_SYNCMGRHANDLERNAME = 32;
		public const uint32 SYNCMGRREGISTERFLAGS_MASK = 7;
		public const int32 TLOG_BACK = -1;
		public const uint32 TLOG_CURRENT = 0;
		public const uint32 TLOG_FORE = 1;
		public const uint32 TLMENUF_INCLUDECURRENT = 1;
		public const uint32 TLMENUF_BACK = 16;
		public const uint32 TLMENUF_FORE = 32;
		public const uint32 BSF_REGISTERASDROPTARGET = 1;
		public const uint32 BSF_THEATERMODE = 2;
		public const uint32 BSF_NOLOCALFILEWARNING = 16;
		public const uint32 BSF_UISETBYAUTOMATION = 256;
		public const uint32 BSF_RESIZABLE = 512;
		public const uint32 BSF_CANMAXIMIZE = 1024;
		public const uint32 BSF_TOPBROWSER = 2048;
		public const uint32 BSF_NAVNOHISTORY = 4096;
		public const uint32 BSF_HTMLNAVCANCELED = 8192;
		public const uint32 BSF_DONTSHOWNAVCANCELPAGE = 16384;
		public const uint32 BSF_SETNAVIGATABLECODEPAGE = 32768;
		public const uint32 BSF_DELEGATEDNAVIGATION = 65536;
		public const uint32 BSF_TRUSTEDFORACTIVEX = 131072;
		public const uint32 BSF_MERGEDMENUS = 262144;
		public const uint32 BSF_FEEDNAVIGATION = 524288;
		public const uint32 BSF_FEEDSUBSCRIBED = 1048576;
		public const uint32 HLNF_CALLERUNTRUSTED = 2097152;
		public const uint32 HLNF_TRUSTEDFORACTIVEX = 4194304;
		public const uint32 HLNF_DISABLEWINDOWRESTRICTIONS = 8388608;
		public const uint32 HLNF_TRUSTFIRSTDOWNLOAD = 16777216;
		public const uint32 HLNF_UNTRUSTEDFORDOWNLOAD = 33554432;
		public const uint32 SHHLNF_NOAUTOSELECT = 67108864;
		public const uint32 SHHLNF_WRITENOHISTORY = 134217728;
		public const uint32 HLNF_EXTERNALNAVIGATE = 268435456;
		public const uint32 HLNF_ALLOW_AUTONAVIGATE = 536870912;
		public const uint32 HLNF_NEWWINDOWSMANAGED = 2147483648;
		public const uint32 INTERNET_MAX_PATH_LENGTH = 2048;
		public const uint32 INTERNET_MAX_SCHEME_LENGTH = 32;
		public const uint32 VIEW_PRIORITY_RESTRICTED = 112;
		public const uint32 VIEW_PRIORITY_CACHEHIT = 80;
		public const uint32 VIEW_PRIORITY_STALECACHEHIT = 69;
		public const uint32 VIEW_PRIORITY_USEASDEFAULT = 67;
		public const uint32 VIEW_PRIORITY_SHELLEXT = 64;
		public const uint32 VIEW_PRIORITY_CACHEMISS = 48;
		public const uint32 VIEW_PRIORITY_INHERIT = 32;
		public const uint32 VIEW_PRIORITY_SHELLEXT_ASBACKUP = 21;
		public const uint32 VIEW_PRIORITY_DESPERATE = 16;
		public const uint32 VIEW_PRIORITY_NONE = 0;
		public const uint32 PATHCCH_MAX_CCH = 32768;
		public const uint32 IDS_DESCRIPTION = 1;
		public const uint32 ID_APP = 100;
		public const uint32 DLG_SCRNSAVECONFIGURE = 2003;
		public const uint32 MAXFILELEN = 13;
		public const uint32 TITLEBARNAMELEN = 40;
		public const uint32 APPNAMEBUFFERLEN = 40;
		public const uint32 BUFFLEN = 255;
		public const uint32 SCRM_VERIFYPW = 32768;
		public const HRESULT E_FLAGS = -2147217408;
		public const HRESULT IS_E_EXEC_FAILED = -2147213310;
		public const HRESULT URL_E_INVALID_SYNTAX = -2147217407;
		public const HRESULT URL_E_UNREGISTERED_PROTOCOL = -2147217406;
		public const uint32 CPLPAGE_MOUSE_BUTTONS = 1;
		public const uint32 CPLPAGE_MOUSE_PTRMOTION = 2;
		public const uint32 CPLPAGE_MOUSE_WHEEL = 3;
		public const uint32 CPLPAGE_KEYBOARD_SPEED = 1;
		public const uint32 CPLPAGE_DISPLAY_BACKGROUND = 1;
		public const uint32 DISPID_SELECTIONCHANGED = 200;
		public const uint32 DISPID_FILELISTENUMDONE = 201;
		public const uint32 DISPID_VERBINVOKED = 202;
		public const uint32 DISPID_DEFAULTVERBINVOKED = 203;
		public const uint32 DISPID_BEGINDRAG = 204;
		public const uint32 DISPID_VIEWMODECHANGED = 205;
		public const uint32 DISPID_NOITEMSTATE_CHANGED = 206;
		public const uint32 DISPID_CONTENTSCHANGED = 207;
		public const uint32 DISPID_FOCUSCHANGED = 208;
		public const uint32 DISPID_CHECKSTATECHANGED = 209;
		public const uint32 DISPID_ORDERCHANGED = 210;
		public const uint32 DISPID_VIEWPAINTDONE = 211;
		public const uint32 DISPID_COLUMNSCHANGED = 212;
		public const uint32 DISPID_CTRLMOUSEWHEEL = 213;
		public const uint32 DISPID_SORTDONE = 214;
		public const uint32 DISPID_ICONSIZECHANGED = 215;
		public const uint32 DISPID_FOLDERCHANGED = 217;
		public const uint32 DISPID_FILTERINVOKED = 218;
		public const uint32 DISPID_WORDWHEELEDITED = 219;
		public const uint32 DISPID_SELECTEDITEMCHANGED = 220;
		public const uint32 DISPID_EXPLORERWINDOWREADY = 221;
		public const uint32 DISPID_UPDATEIMAGE = 222;
		public const uint32 DISPID_INITIALENUMERATIONDONE = 223;
		public const uint32 DISPID_ENTERPRISEIDCHANGED = 224;
		public const uint32 DISPID_ENTERPRESSED = 200;
		public const uint32 DISPID_SEARCHCOMMAND_START = 1;
		public const uint32 DISPID_SEARCHCOMMAND_COMPLETE = 2;
		public const uint32 DISPID_SEARCHCOMMAND_ABORT = 3;
		public const uint32 DISPID_SEARCHCOMMAND_UPDATE = 4;
		public const uint32 DISPID_SEARCHCOMMAND_PROGRESSTEXT = 5;
		public const uint32 DISPID_SEARCHCOMMAND_ERROR = 6;
		public const uint32 DISPID_SEARCHCOMMAND_RESTORE = 7;
		public const uint32 DISPID_IADCCTL_DIRTY = 256;
		public const uint32 DISPID_IADCCTL_PUBCAT = 257;
		public const uint32 DISPID_IADCCTL_SORT = 258;
		public const uint32 DISPID_IADCCTL_FORCEX86 = 259;
		public const uint32 DISPID_IADCCTL_SHOWPOSTSETUP = 260;
		public const uint32 DISPID_IADCCTL_ONDOMAIN = 261;
		public const uint32 DISPID_IADCCTL_DEFAULTCAT = 262;
		public const HRESULT COPYENGINE_S_YES = 2555905;
		public const HRESULT COPYENGINE_S_NOT_HANDLED = 2555907;
		public const HRESULT COPYENGINE_S_USER_RETRY = 2555908;
		public const HRESULT COPYENGINE_S_USER_IGNORED = 2555909;
		public const HRESULT COPYENGINE_S_MERGE = 2555910;
		public const HRESULT COPYENGINE_S_DONT_PROCESS_CHILDREN = 2555912;
		public const HRESULT COPYENGINE_S_ALREADY_DONE = 2555914;
		public const HRESULT COPYENGINE_S_PENDING = 2555915;
		public const HRESULT COPYENGINE_S_KEEP_BOTH = 2555916;
		public const HRESULT COPYENGINE_S_CLOSE_PROGRAM = 2555917;
		public const HRESULT COPYENGINE_S_COLLISIONRESOLVED = 2555918;
		public const HRESULT COPYENGINE_S_PROGRESS_PAUSE = 2555919;
		public const HRESULT COPYENGINE_E_USER_CANCELLED = -2144927744;
		public const HRESULT COPYENGINE_E_CANCELLED = -2144927743;
		public const HRESULT COPYENGINE_E_REQUIRES_ELEVATION = -2144927742;
		public const HRESULT COPYENGINE_E_SAME_FILE = -2144927741;
		public const HRESULT COPYENGINE_E_DIFF_DIR = -2144927740;
		public const HRESULT COPYENGINE_E_MANY_SRC_1_DEST = -2144927739;
		public const HRESULT COPYENGINE_E_DEST_SUBTREE = -2144927735;
		public const HRESULT COPYENGINE_E_DEST_SAME_TREE = -2144927734;
		public const HRESULT COPYENGINE_E_FLD_IS_FILE_DEST = -2144927733;
		public const HRESULT COPYENGINE_E_FILE_IS_FLD_DEST = -2144927732;
		public const HRESULT COPYENGINE_E_FILE_TOO_LARGE = -2144927731;
		public const HRESULT COPYENGINE_E_REMOVABLE_FULL = -2144927730;
		public const HRESULT COPYENGINE_E_DEST_IS_RO_CD = -2144927729;
		public const HRESULT COPYENGINE_E_DEST_IS_RW_CD = -2144927728;
		public const HRESULT COPYENGINE_E_DEST_IS_R_CD = -2144927727;
		public const HRESULT COPYENGINE_E_DEST_IS_RO_DVD = -2144927726;
		public const HRESULT COPYENGINE_E_DEST_IS_RW_DVD = -2144927725;
		public const HRESULT COPYENGINE_E_DEST_IS_R_DVD = -2144927724;
		public const HRESULT COPYENGINE_E_SRC_IS_RO_CD = -2144927723;
		public const HRESULT COPYENGINE_E_SRC_IS_RW_CD = -2144927722;
		public const HRESULT COPYENGINE_E_SRC_IS_R_CD = -2144927721;
		public const HRESULT COPYENGINE_E_SRC_IS_RO_DVD = -2144927720;
		public const HRESULT COPYENGINE_E_SRC_IS_RW_DVD = -2144927719;
		public const HRESULT COPYENGINE_E_SRC_IS_R_DVD = -2144927718;
		public const HRESULT COPYENGINE_E_INVALID_FILES_SRC = -2144927717;
		public const HRESULT COPYENGINE_E_INVALID_FILES_DEST = -2144927716;
		public const HRESULT COPYENGINE_E_PATH_TOO_DEEP_SRC = -2144927715;
		public const HRESULT COPYENGINE_E_PATH_TOO_DEEP_DEST = -2144927714;
		public const HRESULT COPYENGINE_E_ROOT_DIR_SRC = -2144927713;
		public const HRESULT COPYENGINE_E_ROOT_DIR_DEST = -2144927712;
		public const HRESULT COPYENGINE_E_ACCESS_DENIED_SRC = -2144927711;
		public const HRESULT COPYENGINE_E_ACCESS_DENIED_DEST = -2144927710;
		public const HRESULT COPYENGINE_E_PATH_NOT_FOUND_SRC = -2144927709;
		public const HRESULT COPYENGINE_E_PATH_NOT_FOUND_DEST = -2144927708;
		public const HRESULT COPYENGINE_E_NET_DISCONNECT_SRC = -2144927707;
		public const HRESULT COPYENGINE_E_NET_DISCONNECT_DEST = -2144927706;
		public const HRESULT COPYENGINE_E_SHARING_VIOLATION_SRC = -2144927705;
		public const HRESULT COPYENGINE_E_SHARING_VIOLATION_DEST = -2144927704;
		public const HRESULT COPYENGINE_E_ALREADY_EXISTS_NORMAL = -2144927703;
		public const HRESULT COPYENGINE_E_ALREADY_EXISTS_READONLY = -2144927702;
		public const HRESULT COPYENGINE_E_ALREADY_EXISTS_SYSTEM = -2144927701;
		public const HRESULT COPYENGINE_E_ALREADY_EXISTS_FOLDER = -2144927700;
		public const HRESULT COPYENGINE_E_STREAM_LOSS = -2144927699;
		public const HRESULT COPYENGINE_E_EA_LOSS = -2144927698;
		public const HRESULT COPYENGINE_E_PROPERTY_LOSS = -2144927697;
		public const HRESULT COPYENGINE_E_PROPERTIES_LOSS = -2144927696;
		public const HRESULT COPYENGINE_E_ENCRYPTION_LOSS = -2144927695;
		public const HRESULT COPYENGINE_E_DISK_FULL = -2144927694;
		public const HRESULT COPYENGINE_E_DISK_FULL_CLEAN = -2144927693;
		public const HRESULT COPYENGINE_E_EA_NOT_SUPPORTED = -2144927692;
		public const HRESULT COPYENGINE_E_CANT_REACH_SOURCE = -2144927691;
		public const HRESULT COPYENGINE_E_RECYCLE_UNKNOWN_ERROR = -2144927691;
		public const HRESULT COPYENGINE_E_RECYCLE_FORCE_NUKE = -2144927690;
		public const HRESULT COPYENGINE_E_RECYCLE_SIZE_TOO_BIG = -2144927689;
		public const HRESULT COPYENGINE_E_RECYCLE_PATH_TOO_LONG = -2144927688;
		public const HRESULT COPYENGINE_E_RECYCLE_BIN_NOT_FOUND = -2144927686;
		public const HRESULT COPYENGINE_E_NEWFILE_NAME_TOO_LONG = -2144927685;
		public const HRESULT COPYENGINE_E_NEWFOLDER_NAME_TOO_LONG = -2144927684;
		public const HRESULT COPYENGINE_E_DIR_NOT_EMPTY = -2144927683;
		public const HRESULT COPYENGINE_E_FAT_MAX_IN_ROOT = -2144927682;
		public const HRESULT COPYENGINE_E_ACCESSDENIED_READONLY = -2144927681;
		public const HRESULT COPYENGINE_E_REDIRECTED_TO_WEBPAGE = -2144927680;
		public const HRESULT COPYENGINE_E_SERVER_BAD_FILE_TYPE = -2144927679;
		public const HRESULT COPYENGINE_E_INTERNET_ITEM_UNAVAILABLE = -2144927678;
		public const HRESULT COPYENGINE_E_CANNOT_MOVE_FROM_RECYCLE_BIN = -2144927677;
		public const HRESULT COPYENGINE_E_CANNOT_MOVE_SHARED_FOLDER = -2144927676;
		public const HRESULT COPYENGINE_E_INTERNET_ITEM_STORAGE_PROVIDER_ERROR = -2144927675;
		public const HRESULT COPYENGINE_E_INTERNET_ITEM_STORAGE_PROVIDER_PAUSED = -2144927674;
		public const HRESULT COPYENGINE_E_REQUIRES_EDP_CONSENT = -2144927673;
		public const HRESULT COPYENGINE_E_BLOCKED_BY_EDP_POLICY = -2144927672;
		public const HRESULT COPYENGINE_E_REQUIRES_EDP_CONSENT_FOR_REMOVABLE_DRIVE = -2144927671;
		public const HRESULT COPYENGINE_E_BLOCKED_BY_EDP_FOR_REMOVABLE_DRIVE = -2144927670;
		public const HRESULT COPYENGINE_E_RMS_REQUIRES_EDP_CONSENT_FOR_REMOVABLE_DRIVE = -2144927669;
		public const HRESULT COPYENGINE_E_RMS_BLOCKED_BY_EDP_FOR_REMOVABLE_DRIVE = -2144927668;
		public const HRESULT COPYENGINE_E_WARNED_BY_DLP_POLICY = -2144927667;
		public const HRESULT COPYENGINE_E_BLOCKED_BY_DLP_POLICY = -2144927666;
		public const HRESULT COPYENGINE_E_SILENT_FAIL_BY_DLP_POLICY = -2144927665;
		public const HRESULT NETCACHE_E_NEGATIVE_CACHE = -2144927488;
		public const HRESULT EXECUTE_E_LAUNCH_APPLICATION = -2144927487;
		public const HRESULT SHELL_E_WRONG_BITDEPTH = -2144927486;
		public const HRESULT LINK_E_DELETE = -2144927485;
		public const HRESULT STORE_E_NEWER_VERSION_AVAILABLE = -2144927484;
		public const HRESULT E_FILE_PLACEHOLDER_NOT_INITIALIZED = -2144927472;
		public const HRESULT E_FILE_PLACEHOLDER_VERSION_MISMATCH = -2144927471;
		public const HRESULT E_FILE_PLACEHOLDER_SERVER_TIMED_OUT = -2144927470;
		public const HRESULT E_FILE_PLACEHOLDER_STORAGEPROVIDER_NOT_FOUND = -2144927469;
		public const HRESULT CAMERAROLL_E_NO_DOWNSAMPLING_REQUIRED = -2144927456;
		public const HRESULT E_ACTIVATIONDENIED_USERCLOSE = -2144927440;
		public const HRESULT E_ACTIVATIONDENIED_SHELLERROR = -2144927439;
		public const HRESULT E_ACTIVATIONDENIED_SHELLRESTART = -2144927438;
		public const HRESULT E_ACTIVATIONDENIED_UNEXPECTED = -2144927437;
		public const HRESULT E_ACTIVATIONDENIED_SHELLNOTREADY = -2144927436;
		public const HRESULT LIBRARY_E_NO_SAVE_LOCATION = -2144927232;
		public const HRESULT LIBRARY_E_NO_ACCESSIBLE_LOCATION = -2144927231;
		public const HRESULT E_USERTILE_UNSUPPORTEDFILETYPE = -2144927216;
		public const HRESULT E_USERTILE_CHANGEDISABLED = -2144927215;
		public const HRESULT E_USERTILE_LARGEORDYNAMIC = -2144927214;
		public const HRESULT E_USERTILE_VIDEOFRAMESIZE = -2144927213;
		public const HRESULT E_USERTILE_FILESIZE = -2144927212;
		public const HRESULT IMM_ACC_DOCKING_E_INSUFFICIENTHEIGHT = -2144927184;
		public const HRESULT IMM_ACC_DOCKING_E_DOCKOCCUPIED = -2144927183;
		public const HRESULT IMSC_E_SHELL_COMPONENT_STARTUP_FAILURE = -2144927181;
		public const HRESULT SHC_E_SHELL_COMPONENT_STARTUP_FAILURE = -2144927180;
		public const HRESULT E_TILE_NOTIFICATIONS_PLATFORM_FAILURE = -2144927159;
		public const HRESULT E_SHELL_EXTENSION_BLOCKED = -2144926975;
		public const HRESULT E_IMAGEFEED_CHANGEDISABLED = -2144926960;
		public const int32 GPFIDL_DEFAULT = 0;
		public const int32 GPFIDL_ALTNAME = 1;
		public const int32 GPFIDL_UNCPRINTER = 2;
		public const int32 ISHCUTCMDID_DOWNLOADICON = 0;
		public const int32 ISHCUTCMDID_INTSHORTCUTCREATE = 1;
		public const int32 ISHCUTCMDID_COMMITHISTORY = 2;
		public const int32 ISHCUTCMDID_SETUSERAWURL = 3;
		public const int32 SFBID_PIDLCHANGED = 0;
		public const int32 DBCID_EMPTY = 0;
		public const int32 DBCID_ONDRAG = 1;
		public const int32 DBCID_CLSIDOFBAR = 2;
		public const int32 DBCID_RESIZE = 3;
		public const int32 DBCID_GETBAR = 4;
		public const int32 DBCID_UPDATESIZE = 5;
		public const int32 BMICON_LARGE = 0;
		public const int32 BMICON_SMALL = 1;
		public const int32 ASSOCF_NONE = 0;
		public const int32 ASSOCF_INIT_NOREMAPCLSID = 1;
		public const int32 ASSOCF_INIT_BYEXENAME = 2;
		public const int32 ASSOCF_OPEN_BYEXENAME = 2;
		public const int32 ASSOCF_INIT_DEFAULTTOSTAR = 4;
		public const int32 ASSOCF_INIT_DEFAULTTOFOLDER = 8;
		public const int32 ASSOCF_NOUSERSETTINGS = 16;
		public const int32 ASSOCF_NOTRUNCATE = 32;
		public const int32 ASSOCF_VERIFY = 64;
		public const int32 ASSOCF_REMAPRUNDLL = 128;
		public const int32 ASSOCF_NOFIXUPS = 256;
		public const int32 ASSOCF_IGNOREBASECLASS = 512;
		public const int32 ASSOCF_INIT_IGNOREUNKNOWN = 1024;
		public const int32 ASSOCF_INIT_FIXED_PROGID = 2048;
		public const int32 ASSOCF_IS_PROTOCOL = 4096;
		public const int32 ASSOCF_INIT_FOR_FILE = 8192;
		public const int32 ASSOCF_IS_FULL_URI = 16384;
		public const int32 ASSOCF_PER_MACHINE_ONLY = 32768;
		public const int32 ASSOCF_APP_TO_APP = 65536;
		public const int32 CTF_INSIST = 1;
		public const int32 CTF_THREAD_REF = 2;
		public const int32 CTF_PROCESS_REF = 4;
		public const int32 CTF_COINIT_STA = 8;
		public const int32 CTF_COINIT = 8;
		public const int32 CTF_FREELIBANDEXIT = 16;
		public const int32 CTF_REF_COUNTED = 32;
		public const int32 CTF_WAIT_ALLOWCOM = 64;
		public const int32 CTF_UNUSED = 128;
		public const int32 CTF_INHERITWOW64 = 256;
		public const int32 CTF_WAIT_NO_REENTRANCY = 512;
		public const int32 CTF_KEYBOARD_LOCALE = 1024;
		public const int32 CTF_OLEINITIALIZE = 2048;
		public const int32 CTF_COINIT_MTA = 4096;
		public const int32 CTF_NOADDREFLIB = 8192;
		
		// --- Typedefs ---
		
		public typealias ShFindChangeNotificationHandle = int;
		public typealias HDROP = int;
		public typealias HPSXA = int;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum SHGFI_FLAGS : int32
		{
			ADDOVERLAYS = 32,
			ATTR_SPECIFIED = 131072,
			ATTRIBUTES = 2048,
			DISPLAYNAME = 512,
			EXETYPE = 8192,
			ICON = 256,
			ICONLOCATION = 4096,
			LARGEICON = 0,
			LINKOVERLAY = 32768,
			OPENICON = 2,
			OVERLAYINDEX = 64,
			PIDL = 8,
			SELECTED = 65536,
			SHELLICONSIZE = 4,
			SMALLICON = 1,
			SYSICONINDEX = 16384,
			TYPENAME = 1024,
			USEFILEATTRIBUTES = 16,
		}
		[AllowDuplicates]
		public enum SHCNE_ID : uint32
		{
			RENAMEITEM = 1,
			CREATE = 2,
			DELETE = 4,
			MKDIR = 8,
			RMDIR = 16,
			MEDIAINSERTED = 32,
			MEDIAREMOVED = 64,
			DRIVEREMOVED = 128,
			DRIVEADD = 256,
			NETSHARE = 512,
			NETUNSHARE = 1024,
			ATTRIBUTES = 2048,
			UPDATEDIR = 4096,
			UPDATEITEM = 8192,
			SERVERDISCONNECT = 16384,
			UPDATEIMAGE = 32768,
			DRIVEADDGUI = 65536,
			RENAMEFOLDER = 131072,
			FREESPACE = 262144,
			EXTENDED_EVENT = 67108864,
			ASSOCCHANGED = 134217728,
			DISKEVENTS = 145439,
			GLOBALEVENTS = 201687520,
			ALLEVENTS = 2147483647,
			INTERRUPT = 2147483648,
		}
		[AllowDuplicates]
		public enum SHCNRF_SOURCE : int32
		{
			InterruptLevel = 1,
			ShellLevel = 2,
			RecursiveInterrupt = 4096,
			NewDelivery = 32768,
		}
		[AllowDuplicates]
		public enum SHCNF_FLAGS : uint32
		{
			IDLIST = 0,
			PATHA = 1,
			PRINTERA = 2,
			DWORD = 3,
			PATHW = 5,
			PRINTERW = 6,
			TYPE = 255,
			FLUSH = 4096,
			FLUSHNOWAIT = 12288,
			NOTIFYRECURSIVE = 65536,
			PATH = 5,
			PRINTER = 6,
		}
		[AllowDuplicates]
		public enum QITIPF_FLAGS : int32
		{
			TIPF_DEFAULT = 0,
			TIPF_USENAME = 1,
			TIPF_LINKNOTARGET = 2,
			TIPF_LINKUSETARGET = 4,
			TIPF_USESLOWTIP = 8,
			TIPF_SINGLELINE = 16,
			F_CACHED = 1,
			F_DONTEXPANDFOLDER = 2,
		}
		[AllowDuplicates]
		public enum SHDID_ID : int32
		{
			ROOT_REGITEM = 1,
			FS_FILE = 2,
			FS_DIRECTORY = 3,
			FS_OTHER = 4,
			COMPUTER_DRIVE35 = 5,
			COMPUTER_DRIVE525 = 6,
			COMPUTER_REMOVABLE = 7,
			COMPUTER_FIXED = 8,
			COMPUTER_NETDRIVE = 9,
			COMPUTER_CDROM = 10,
			COMPUTER_RAMDISK = 11,
			COMPUTER_OTHER = 12,
			NET_DOMAIN = 13,
			NET_SERVER = 14,
			NET_SHARE = 15,
			NET_RESTOFNET = 16,
			NET_OTHER = 17,
			COMPUTER_IMAGING = 18,
			COMPUTER_AUDIO = 19,
			COMPUTER_SHAREDDOCS = 20,
			MOBILE_DEVICE = 21,
			REMOTE_DESKTOP_DRIVE = 22,
		}
		[AllowDuplicates]
		public enum SHGDFIL_FORMAT : int32
		{
			FINDDATA = 1,
			NETRESOURCE = 2,
			DESCRIPTIONID = 3,
		}
		[AllowDuplicates]
		public enum PRF_FLAGS : int32
		{
			VERIFYEXISTS = 1,
			TRYPROGRAMEXTENSIONS = 3,
			FIRSTDIRDEF = 4,
			DONTFINDLNK = 8,
			REQUIREABSOLUTE = 16,
		}
		[AllowDuplicates]
		public enum PCS_RET : uint32
		{
			FATAL = 2147483648,
			REPLACEDCHAR = 1,
			REMOVEDCHAR = 2,
			TRUNCATED = 4,
			PATHTOOLONG = 8,
		}
		[AllowDuplicates]
		public enum MM_FLAGS : uint32
		{
			ADDSEPARATOR = 1,
			SUBMENUSHAVEIDS = 2,
			DONTREMOVESEPS = 4,
		}
		[AllowDuplicates]
		public enum SHOP_TYPE : int32
		{
			PRINTERNAME = 1,
			FILEPATH = 2,
			VOLUMEGUID = 4,
		}
		[AllowDuplicates]
		public enum SHFMT_ID : uint32
		{
			SHFMT_ID_DEFAULT = 65535,
		}
		[AllowDuplicates]
		public enum SHFMT_OPT : int32
		{
			NONE = 0,
			FULL = 1,
			SYSONLY = 2,
		}
		[AllowDuplicates]
		public enum SHFMT_RET : uint32
		{
			ERROR = 4294967295,
			CANCEL = 4294967294,
			NOFORMAT = 4294967293,
		}
		[AllowDuplicates]
		public enum VALIDATEUNC_OPTION : int32
		{
			CONNECT = 1,
			NOUI = 2,
			PRINT = 4,
			PERSIST = 8,
			VALID = 15,
		}
		[AllowDuplicates]
		public enum SFVM_MESSAGE_ID : int32
		{
			MERGEMENU = 1,
			INVOKECOMMAND = 2,
			GETHELPTEXT = 3,
			GETTOOLTIPTEXT = 4,
			GETBUTTONINFO = 5,
			GETBUTTONS = 6,
			INITMENUPOPUP = 7,
			FSNOTIFY = 14,
			WINDOWCREATED = 15,
			GETDETAILSOF = 23,
			COLUMNCLICK = 24,
			QUERYFSNOTIFY = 25,
			DEFITEMCOUNT = 26,
			DEFVIEWMODE = 27,
			UNMERGEMENU = 28,
			UPDATESTATUSBAR = 31,
			BACKGROUNDENUM = 32,
			DIDDRAGDROP = 36,
			SETISFV = 39,
			THISIDLIST = 41,
			ADDPROPERTYPAGES = 47,
			BACKGROUNDENUMDONE = 48,
			GETNOTIFY = 49,
			GETSORTDEFAULTS = 53,
			SIZE = 57,
			GETZONE = 58,
			GETPANE = 59,
			GETHELPTOPIC = 63,
			GETANIMATION = 68,
		}
		[AllowDuplicates]
		public enum SFVS_SELECT : int32
		{
			NONE = 0,
			ALLITEMS = 1,
			INVERT = 2,
		}
		[AllowDuplicates]
		public enum DFM_MESSAGE_ID : int32
		{
			MERGECONTEXTMENU = 1,
			INVOKECOMMAND = 2,
			GETHELPTEXT = 5,
			WM_MEASUREITEM = 6,
			WM_DRAWITEM = 7,
			WM_INITMENUPOPUP = 8,
			VALIDATECMD = 9,
			MERGECONTEXTMENU_TOP = 10,
			GETHELPTEXTW = 11,
			INVOKECOMMANDEX = 12,
			MAPCOMMANDNAME = 13,
			GETDEFSTATICID = 14,
			GETVERBW = 15,
			GETVERBA = 16,
			MERGECONTEXTMENU_BOTTOM = 17,
			MODIFYQCMFLAGS = 18,
		}
		[AllowDuplicates]
		public enum DFM_CMD : int32
		{
			DELETE = -1,
			MOVE = -2,
			COPY = -3,
			LINK = -4,
			PROPERTIES = -5,
			NEWFOLDER = -6,
			PASTE = -7,
			VIEWLIST = -8,
			VIEWDETAILS = -9,
			PASTELINK = -10,
			PASTESPECIAL = -11,
			MODALPROP = -12,
			RENAME = -13,
		}
		[AllowDuplicates]
		public enum PID_IS : int32
		{
			URL = 2,
			NAME = 4,
			WORKINGDIR = 5,
			HOTKEY = 6,
			SHOWCMD = 7,
			ICONINDEX = 8,
			ICONFILE = 9,
			WHATSNEW = 10,
			AUTHOR = 11,
			DESCRIPTION = 12,
			COMMENT = 13,
			ROAMED = 15,
		}
		[AllowDuplicates]
		public enum PID_INTSITE : int32
		{
			WHATSNEW = 2,
			AUTHOR = 3,
			LASTVISIT = 4,
			LASTMOD = 5,
			VISITCOUNT = 6,
			DESCRIPTION = 7,
			COMMENT = 8,
			FLAGS = 9,
			CONTENTLEN = 10,
			CONTENTCODE = 11,
			RECURSE = 12,
			WATCH = 13,
			SUBSCRIPTION = 14,
			URL = 15,
			TITLE = 16,
			CODEPAGE = 18,
			TRACKING = 19,
			ICONINDEX = 20,
			ICONFILE = 21,
			ROAMED = 34,
		}
		[AllowDuplicates]
		public enum PIDISF_FLAGS : int32
		{
			RECENTLYCHANGED = 1,
			CACHEDSTICKY = 2,
			CACHEIMAGES = 16,
			FOLLOWALLLINKS = 32,
		}
		[AllowDuplicates]
		public enum PIDISM_OPTIONS : int32
		{
			GLOBAL = 0,
			WATCH = 1,
			DONTWATCH = 2,
		}
		[AllowDuplicates]
		public enum PIDISR_INFO : int32
		{
			UP_TO_DATE = 0,
			NEEDS_ADD = 1,
			NEEDS_UPDATE = 2,
			NEEDS_DELETE = 3,
		}
		[AllowDuplicates]
		public enum SSF_MASK : uint32
		{
			SHOWALLOBJECTS = 1,
			SHOWEXTENSIONS = 2,
			HIDDENFILEEXTS = 4,
			SERVERADMINUI = 4,
			SHOWCOMPCOLOR = 8,
			SORTCOLUMNS = 16,
			SHOWSYSFILES = 32,
			DOUBLECLICKINWEBVIEW = 128,
			SHOWATTRIBCOL = 256,
			DESKTOPHTML = 512,
			WIN95CLASSIC = 1024,
			DONTPRETTYPATH = 2048,
			SHOWINFOTIP = 8192,
			MAPNETDRVBUTTON = 4096,
			NOCONFIRMRECYCLE = 32768,
			HIDEICONS = 16384,
			FILTER = 65536,
			WEBVIEW = 131072,
			SHOWSUPERHIDDEN = 262144,
			SEPPROCESS = 524288,
			NONETCRAWLING = 1048576,
			STARTPANELON = 2097152,
			SHOWSTARTPAGE = 4194304,
			AUTOCHECKSELECT = 8388608,
			ICONSONLY = 16777216,
			SHOWTYPEOVERLAY = 33554432,
			SHOWSTATUSBAR = 67108864,
		}
		[AllowDuplicates]
		public enum NOTIFY_ICON_MESSAGE : uint32
		{
			ADD = 0,
			MODIFY = 1,
			DELETE = 2,
			SETFOCUS = 3,
			SETVERSION = 4,
		}
		[AllowDuplicates]
		public enum NOTIFY_ICON_DATA_FLAGS : uint32
		{
			MESSAGE = 1,
			ICON = 2,
			TIP = 4,
			STATE = 8,
			INFO = 16,
			GUID = 32,
			REALTIME = 64,
			SHOWTIP = 128,
		}
		[AllowDuplicates]
		public enum OS : uint32
		{
			WINDOWS = 0,
			NT = 1,
			WIN95ORGREATER = 2,
			NT4ORGREATER = 3,
			WIN98ORGREATER = 5,
			WIN98_GOLD = 6,
			WIN2000ORGREATER = 7,
			WIN2000PRO = 8,
			WIN2000SERVER = 9,
			WIN2000ADVSERVER = 10,
			WIN2000DATACENTER = 11,
			WIN2000TERMINAL = 12,
			EMBEDDED = 13,
			TERMINALCLIENT = 14,
			TERMINALREMOTEADMIN = 15,
			WIN95_GOLD = 16,
			MEORGREATER = 17,
			XPORGREATER = 18,
			HOME = 19,
			PROFESSIONAL = 20,
			DATACENTER = 21,
			ADVSERVER = 22,
			SERVER = 23,
			TERMINALSERVER = 24,
			PERSONALTERMINALSERVER = 25,
			FASTUSERSWITCHING = 26,
			WELCOMELOGONUI = 27,
			DOMAINMEMBER = 28,
			ANYSERVER = 29,
			WOW6432 = 30,
			WEBSERVER = 31,
			SMALLBUSINESSSERVER = 32,
			TABLETPC = 33,
			SERVERADMINUI = 34,
			MEDIACENTER = 35,
			APPLIANCE = 36,
		}
		[AllowDuplicates]
		public enum _SHGDNF : int32
		{
			NORMAL = 0,
			INFOLDER = 1,
			FOREDITING = 4096,
			FORADDRESSBAR = 16384,
			FORPARSING = 32768,
		}
		[AllowDuplicates]
		public enum _SHCONTF : int32
		{
			CHECKING_FOR_CHILDREN = 16,
			FOLDERS = 32,
			NONFOLDERS = 64,
			INCLUDEHIDDEN = 128,
			INIT_ON_FIRST_NEXT = 256,
			NETPRINTERSRCH = 512,
			SHAREABLE = 1024,
			STORAGE = 2048,
			NAVIGATION_ENUM = 4096,
			FASTITEMS = 8192,
			FLATLIST = 16384,
			ENABLE_ASYNC = 32768,
			INCLUDESUPERHIDDEN = 65536,
		}
		[AllowDuplicates]
		public enum STORAGE_PROVIDER_FILE_FLAGS : int32
		{
			NONE = 0,
			DOWNLOAD_BY_DEFAULT = 1,
			CREATED_ON_THIS_DEVICE = 2,
		}
		[AllowDuplicates]
		public enum MERGE_UPDATE_STATUS : int32
		{
			COMPLETE = 0,
			USERINPUTNEEDED = 1,
			FAILED = 2,
		}
		[AllowDuplicates]
		public enum FOLDER_ENUM_MODE : int32
		{
			VIEWRESULT = 0,
			NAVIGATION = 1,
		}
		[AllowDuplicates]
		public enum FOLDERFLAGS : int32
		{
			NONE = 0,
			AUTOARRANGE = 1,
			ABBREVIATEDNAMES = 2,
			SNAPTOGRID = 4,
			OWNERDATA = 8,
			BESTFITWINDOW = 16,
			DESKTOP = 32,
			SINGLESEL = 64,
			NOSUBFOLDERS = 128,
			TRANSPARENT = 256,
			NOCLIENTEDGE = 512,
			NOSCROLL = 1024,
			ALIGNLEFT = 2048,
			NOICONS = 4096,
			SHOWSELALWAYS = 8192,
			NOVISIBLE = 16384,
			SINGLECLICKACTIVATE = 32768,
			NOWEBVIEW = 65536,
			HIDEFILENAMES = 131072,
			CHECKSELECT = 262144,
			NOENUMREFRESH = 524288,
			NOGROUPING = 1048576,
			FULLROWSELECT = 2097152,
			NOFILTERS = 4194304,
			NOCOLUMNHEADER = 8388608,
			NOHEADERINALLVIEWS = 16777216,
			EXTENDEDTILES = 33554432,
			TRICHECKSELECT = 67108864,
			AUTOCHECKSELECT = 134217728,
			NOBROWSERVIEWSTATE = 268435456,
			SUBSETGROUPS = 536870912,
			USESEARCHFOLDER = 1073741824,
			ALLOWRTLREADING = -2147483648,
		}
		[AllowDuplicates]
		public enum FOLDERVIEWMODE : int32
		{
			AUTO = -1,
			FIRST = 1,
			ICON = 1,
			SMALLICON = 2,
			LIST = 3,
			DETAILS = 4,
			THUMBNAIL = 5,
			TILE = 6,
			THUMBSTRIP = 7,
			CONTENT = 8,
			LAST = 8,
		}
		[AllowDuplicates]
		public enum FOLDERLOGICALVIEWMODE : int32
		{
			UNSPECIFIED = -1,
			FIRST = 1,
			DETAILS = 1,
			TILES = 2,
			ICONS = 3,
			LIST = 4,
			CONTENT = 5,
			LAST = 5,
		}
		[AllowDuplicates]
		public enum _SVSIF : int32
		{
			DESELECT = 0,
			SELECT = 1,
			EDIT = 3,
			DESELECTOTHERS = 4,
			ENSUREVISIBLE = 8,
			FOCUSED = 16,
			TRANSLATEPT = 32,
			SELECTIONMARK = 64,
			POSITIONITEM = 128,
			CHECK = 256,
			CHECK2 = 512,
			KEYBOARDSELECT = 1025,
			NOTAKEFOCUS = 1073741824,
		}
		[AllowDuplicates]
		public enum _SVGIO : int32
		{
			BACKGROUND = 0,
			SELECTION = 1,
			ALLVIEW = 2,
			CHECKED = 3,
			TYPE_MASK = 15,
			FLAG_VIEWORDER = -2147483648,
		}
		[AllowDuplicates]
		public enum SVUIA_STATUS : int32
		{
			DEACTIVATE = 0,
			ACTIVATE_NOFOCUS = 1,
			ACTIVATE_FOCUS = 2,
			INPLACEACTIVATE = 3,
		}
		[AllowDuplicates]
		public enum SORTDIRECTION : int32
		{
			DESCENDING = -1,
			ASCENDING = 1,
		}
		[AllowDuplicates]
		public enum FVTEXTTYPE : int32
		{
			FVST_EMPTYTEXT = 0,
		}
		[AllowDuplicates]
		public enum CM_MASK : int32
		{
			WIDTH = 1,
			DEFAULTWIDTH = 2,
			IDEALWIDTH = 4,
			NAME = 8,
			STATE = 16,
		}
		[AllowDuplicates]
		public enum CM_STATE : int32
		{
			NONE = 0,
			VISIBLE = 1,
			FIXEDWIDTH = 2,
			NOSORTBYFOLDERNESS = 4,
			ALWAYSVISIBLE = 8,
		}
		[AllowDuplicates]
		public enum CM_ENUM_FLAGS : int32
		{
			ALL = 1,
			VISIBLE = 2,
		}
		[AllowDuplicates]
		public enum CM_SET_WIDTH_VALUE : int32
		{
			USEDEFAULT = -1,
			AUTOSIZE = -2,
		}
		[AllowDuplicates]
		public enum SIGDN : int32
		{
			NORMALDISPLAY = 0,
			PARENTRELATIVEPARSING = -2147385343,
			DESKTOPABSOLUTEPARSING = -2147319808,
			PARENTRELATIVEEDITING = -2147282943,
			DESKTOPABSOLUTEEDITING = -2147172352,
			FILESYSPATH = -2147123200,
			URL = -2147057664,
			PARENTRELATIVEFORADDRESSBAR = -2146975743,
			PARENTRELATIVE = -2146959359,
			PARENTRELATIVEFORUI = -2146877439,
		}
		[AllowDuplicates]
		public enum _SICHINTF : int32
		{
			DISPLAY = 0,
			ALLFIELDS = -2147483648,
			CANONICAL = 268435456,
			TEST_FILESYSPATH_IF_NOT_EQUAL = 536870912,
		}
		[AllowDuplicates]
		public enum DATAOBJ_GET_ITEM_FLAGS : int32
		{
			DEFAULT = 0,
			TRAVERSE_LINK = 1,
			NO_HDROP = 2,
			NO_URL = 4,
			ONLY_IF_ONE = 8,
		}
		[AllowDuplicates]
		public enum SIIGBF : int32
		{
			RESIZETOFIT = 0,
			BIGGERSIZEOK = 1,
			MEMORYONLY = 2,
			ICONONLY = 4,
			THUMBNAILONLY = 8,
			INCACHEONLY = 16,
			CROPTOSQUARE = 32,
			WIDETHUMBNAILS = 64,
			ICONBACKGROUND = 128,
			SCALEUP = 256,
		}
		[AllowDuplicates]
		public enum STGOP : int32
		{
			MOVE = 1,
			COPY = 2,
			SYNC = 3,
			REMOVE = 5,
			RENAME = 6,
			APPLYPROPERTIES = 8,
			NEW = 10,
		}
		[AllowDuplicates]
		public enum _TRANSFER_SOURCE_FLAGS : int32
		{
			NORMAL = 0,
			FAIL_EXIST = 0,
			RENAME_EXIST = 1,
			OVERWRITE_EXIST = 2,
			ALLOW_DECRYPTION = 4,
			NO_SECURITY = 8,
			COPY_CREATION_TIME = 16,
			COPY_WRITE_TIME = 32,
			USE_FULL_ACCESS = 64,
			DELETE_RECYCLE_IF_POSSIBLE = 128,
			COPY_HARD_LINK = 256,
			COPY_LOCALIZED_NAME = 512,
			MOVE_AS_COPY_DELETE = 1024,
			SUSPEND_SHELLEVENTS = 2048,
		}
		[AllowDuplicates]
		public enum _TRANSFER_ADVISE_STATE : int32
		{
			NONE = 0,
			PERFORMING = 1,
			PREPARING = 2,
			INDETERMINATE = 4,
		}
		[AllowDuplicates]
		public enum SIATTRIBFLAGS : int32
		{
			AND = 1,
			OR = 2,
			APPCOMPAT = 3,
			MASK = 3,
			ALLITEMS = 16384,
		}
		[AllowDuplicates]
		public enum CATEGORYINFO_FLAGS : int32
		{
			NORMAL = 0,
			COLLAPSED = 1,
			HIDDEN = 2,
			EXPANDED = 4,
			NOHEADER = 8,
			NOTCOLLAPSIBLE = 16,
			NOHEADERCOUNT = 32,
			SUBSETTED = 64,
			SEPARATE_IMAGES = 128,
			SHOWEMPTY = 256,
		}
		[AllowDuplicates]
		public enum CATSORT_FLAGS : int32
		{
			DEFAULT = 0,
			NAME = 1,
		}
		[AllowDuplicates]
		public enum SLR_FLAGS : int32
		{
			NONE = 0,
			NO_UI = 1,
			ANY_MATCH = 2,
			UPDATE = 4,
			NOUPDATE = 8,
			NOSEARCH = 16,
			NOTRACK = 32,
			NOLINKINFO = 64,
			INVOKE_MSI = 128,
			NO_UI_WITH_MSG_PUMP = 257,
			OFFER_DELETE_WITHOUT_FILE = 512,
			KNOWNFOLDER = 1024,
			MACHINE_IN_LOCAL_TARGET = 2048,
			UPDATE_MACHINE_AND_SID = 4096,
			NO_OBJECT_ID = 8192,
		}
		[AllowDuplicates]
		public enum SLGP_FLAGS : int32
		{
			SHORTPATH = 1,
			UNCPRIORITY = 2,
			RAWPATH = 4,
			RELATIVEPRIORITY = 8,
		}
		[AllowDuplicates]
		public enum _SPINITF : int32
		{
			NORMAL = 0,
			MODAL = 1,
			NOMINIMIZE = 8,
		}
		[AllowDuplicates]
		public enum _SPBEGINF : int32
		{
			NORMAL = 0,
			AUTOTIME = 2,
			NOPROGRESSBAR = 16,
			MARQUEEPROGRESS = 32,
			NOCANCELBUTTON = 64,
		}
		[AllowDuplicates]
		public enum SPACTION : int32
		{
			NONE = 0,
			MOVING = 1,
			COPYING = 2,
			RECYCLING = 3,
			APPLYINGATTRIBS = 4,
			DOWNLOADING = 5,
			SEARCHING_INTERNET = 6,
			CALCULATING = 7,
			UPLOADING = 8,
			SEARCHING_FILES = 9,
			DELETING = 10,
			RENAMING = 11,
			FORMATTING = 12,
			COPY_MOVING = 13,
		}
		[AllowDuplicates]
		public enum SPTEXT : int32
		{
			SCRIPTION = 1,
			TAIL = 2,
		}
		[AllowDuplicates]
		public enum _EXPPS : int32
		{
			EXPPS_FILETYPES = 1,
		}
		[AllowDuplicates]
		public enum DESKBANDCID : int32
		{
			BANDINFOCHANGED = 0,
			SHOWONLY = 1,
			MAXIMIZEBAND = 2,
			PUSHCHEVRON = 3,
			DELAYINIT = 4,
			FINISHINIT = 5,
			SETWINDOWTHEME = 6,
			PERMITAUTOHIDE = 7,
		}
		[AllowDuplicates]
		public enum THUMBBUTTONFLAGS : int32
		{
			ENABLED = 0,
			DISABLED = 1,
			DISMISSONCLICK = 2,
			NOBACKGROUND = 4,
			HIDDEN = 8,
			NONINTERACTIVE = 16,
		}
		[AllowDuplicates]
		public enum THUMBBUTTONMASK : int32
		{
			BITMAP = 1,
			ICON = 2,
			TOOLTIP = 4,
			FLAGS = 8,
		}
		[AllowDuplicates]
		public enum TBPFLAG : int32
		{
			NOPROGRESS = 0,
			INDETERMINATE = 1,
			NORMAL = 2,
			ERROR = 4,
			PAUSED = 8,
		}
		[AllowDuplicates]
		public enum STPFLAG : int32
		{
			NONE = 0,
			USEAPPTHUMBNAILALWAYS = 1,
			USEAPPTHUMBNAILWHENACTIVE = 2,
			USEAPPPEEKALWAYS = 4,
			USEAPPPEEKWHENACTIVE = 8,
		}
		[AllowDuplicates]
		public enum EXPLORER_BROWSER_OPTIONS : int32
		{
			NONE = 0,
			NAVIGATEONCE = 1,
			SHOWFRAMES = 2,
			ALWAYSNAVIGATE = 4,
			NOTRAVELLOG = 8,
			NOWRAPPERWINDOW = 16,
			HTMLSHAREPOINTVIEW = 32,
			NOBORDER = 64,
			NOPERSISTVIEWSTATE = 128,
		}
		[AllowDuplicates]
		public enum EXPLORER_BROWSER_FILL_FLAGS : int32
		{
			NONE = 0,
			SELECTFROMDATAOBJECT = 256,
			NODROPTARGET = 512,
		}
		[AllowDuplicates]
		public enum _OPPROGDLGF : int32
		{
			DEFAULT = 0,
			ENABLEPAUSE = 128,
			ALLOWUNDO = 256,
			DONTDISPLAYSOURCEPATH = 512,
			DONTDISPLAYDESTPATH = 1024,
			NOMULTIDAYESTIMATES = 2048,
			DONTDISPLAYLOCATIONS = 4096,
		}
		[AllowDuplicates]
		public enum _PDMODE : int32
		{
			DEFAULT = 0,
			RUN = 1,
			PREFLIGHT = 2,
			UNDOING = 4,
			ERRORSBLOCKING = 8,
			INDETERMINATE = 16,
		}
		[AllowDuplicates]
		public enum FILE_OPERATION_FLAGS2 : int32
		{
			NONE = 0,
			MERGEFOLDERSONCOLLISION = 1,
		}
		[AllowDuplicates]
		public enum NAMESPACEWALKFLAG : int32
		{
			DEFAULT = 0,
			NONE_IMPLIES_ALL = 1,
			ONE_IMPLIES_ALL = 2,
			DONT_TRAVERSE_LINKS = 4,
			DONT_ACCUMULATE_RESULT = 8,
			TRAVERSE_STREAM_JUNCTIONS = 16,
			FILESYSTEM_ONLY = 32,
			SHOW_PROGRESS = 64,
			FLAG_VIEWORDER = 128,
			IGNORE_AUTOPLAY_HIDA = 256,
			ASYNC = 512,
			DONT_RESOLVE_LINKS = 1024,
			ACCUMULATE_FOLDERS = 2048,
			DONT_SORT = 4096,
			USE_TRANSFER_MEDIUM = 8192,
			DONT_TRAVERSE_STREAM_JUNCTIONS = 16384,
			ANY_IMPLIES_ALL = 32768,
		}
		[AllowDuplicates]
		public enum BANDSITECID : int32
		{
			ADDED = 0,
			REMOVED = 1,
		}
		[AllowDuplicates]
		public enum MENUBANDHANDLERCID : int32
		{
			MBHANDCID_PIDLSELECT = 0,
		}
		[AllowDuplicates]
		public enum MENUPOPUPSELECT : int32
		{
			EXECUTE = 0,
			FULLCANCEL = 1,
			CANCELLEVEL = 2,
			SELECTLEFT = 3,
			SELECTRIGHT = 4,
			CHILDTRACKING = 5,
		}
		[AllowDuplicates]
		public enum MENUPOPUPPOPUPFLAGS : int32
		{
			SETFOCUS = 1,
			INITIALSELECT = 2,
			NOANIMATE = 4,
			KEYBOARD = 16,
			REPOSITION = 32,
			FORCEZORDER = 64,
			FINALSELECT = 128,
			TOP = 536870912,
			LEFT = 1073741824,
			RIGHT = 1610612736,
			BOTTOM = -2147483648,
			POS_MASK = -536870912,
			ALIGN_LEFT = 33554432,
			ALIGN_RIGHT = 67108864,
		}
		[AllowDuplicates]
		public enum FILE_USAGE_TYPE : int32
		{
			PLAYING = 0,
			EDITING = 1,
			GENERIC = 2,
		}
		[AllowDuplicates]
		public enum FDE_OVERWRITE_RESPONSE : int32
		{
			DEFAULT = 0,
			ACCEPT = 1,
			REFUSE = 2,
		}
		[AllowDuplicates]
		public enum FDE_SHAREVIOLATION_RESPONSE : int32
		{
			DEFAULT = 0,
			ACCEPT = 1,
			REFUSE = 2,
		}
		[AllowDuplicates]
		public enum FDAP : int32
		{
			BOTTOM = 0,
			TOP = 1,
		}
		[AllowDuplicates]
		public enum _FILEOPENDIALOGOPTIONS : int32
		{
			OVERWRITEPROMPT = 2,
			STRICTFILETYPES = 4,
			NOCHANGEDIR = 8,
			PICKFOLDERS = 32,
			FORCEFILESYSTEM = 64,
			ALLNONSTORAGEITEMS = 128,
			NOVALIDATE = 256,
			ALLOWMULTISELECT = 512,
			PATHMUSTEXIST = 2048,
			FILEMUSTEXIST = 4096,
			CREATEPROMPT = 8192,
			SHAREAWARE = 16384,
			NOREADONLYRETURN = 32768,
			NOTESTFILECREATE = 65536,
			HIDEMRUPLACES = 131072,
			HIDEPINNEDPLACES = 262144,
			NODEREFERENCELINKS = 1048576,
			OKBUTTONNEEDSINTERACTION = 2097152,
			DONTADDTORECENT = 33554432,
			FORCESHOWHIDDEN = 268435456,
			DEFAULTNOMINIMODE = 536870912,
			FORCEPREVIEWPANEON = 1073741824,
			SUPPORTSTREAMABLEITEMS = -2147483648,
		}
		[AllowDuplicates]
		public enum CDCONTROLSTATEF : int32
		{
			INACTIVE = 0,
			ENABLED = 1,
			VISIBLE = 2,
			ENABLEDVISIBLE = 3,
		}
		[AllowDuplicates]
		public enum ASSOCIATIONLEVEL : int32
		{
			MACHINE = 0,
			EFFECTIVE = 1,
			USER = 2,
		}
		[AllowDuplicates]
		public enum ASSOCIATIONTYPE : int32
		{
			FILEEXTENSION = 0,
			URLPROTOCOL = 1,
			STARTMENUCLIENT = 2,
			MIMETYPE = 3,
		}
		[AllowDuplicates]
		public enum _BROWSERFRAMEOPTIONS : int32
		{
			FO_NONE = 0,
			FO_BROWSER_PERSIST_SETTINGS = 1,
			FO_RENAME_FOLDER_OPTIONS_TOINTERNET = 2,
			FO_BOTH_OPTIONS = 4,
			IF_PREFER_INTERNET_SHORTCUT = 8,
			FO_BROWSE_NO_IN_NEW_PROCESS = 16,
			FO_ENABLE_HYPERLINK_TRACKING = 32,
			FO_USE_IE_OFFLINE_SUPPORT = 64,
			FO_SUBSTITUE_INTERNET_START_PAGE = 128,
			FO_USE_IE_LOGOBANDING = 256,
			FO_ADD_IE_TOCAPTIONBAR = 512,
			FO_USE_DIALUP_REF = 1024,
			FO_USE_IE_TOOLBAR = 2048,
			FO_NO_PARENT_FOLDER_SUPPORT = 4096,
			FO_NO_REOPEN_NEXT_RESTART = 8192,
			FO_GO_HOME_PAGE = 16384,
			FO_PREFER_IEPROCESS = 32768,
			FO_SHOW_NAVIGATION_CANCELLED = 65536,
			FO_USE_IE_STATUSBAR = 131072,
			FO_QUERY_ALL = -1,
		}
		[AllowDuplicates]
		public enum NWMF : int32
		{
			UNLOADING = 1,
			USERINITED = 2,
			FIRST = 4,
			OVERRIDEKEY = 8,
			SHOWHELP = 16,
			HTMLDIALOG = 32,
			FROMDIALOGCHILD = 64,
			USERREQUESTED = 128,
			USERALLOWED = 256,
			FORCEWINDOW = 65536,
			FORCETAB = 131072,
			SUGGESTWINDOW = 262144,
			SUGGESTTAB = 524288,
			INACTIVETAB = 1048576,
		}
		[AllowDuplicates]
		public enum ATTACHMENT_PROMPT : int32
		{
			NONE = 0,
			SAVE = 1,
			EXEC = 2,
			EXEC_OR_SAVE = 3,
		}
		[AllowDuplicates]
		public enum ATTACHMENT_ACTION : int32
		{
			CANCEL = 0,
			SAVE = 1,
			EXEC = 2,
		}
		[AllowDuplicates]
		public enum SMINFOMASK : int32
		{
			TYPE = 1,
			FLAGS = 2,
			ICON = 4,
		}
		[AllowDuplicates]
		public enum SMINFOTYPE : int32
		{
			EPARATOR = 1,
			TRING = 2,
		}
		[AllowDuplicates]
		public enum SMINFOFLAGS : int32
		{
			ICON = 1,
			ACCELERATOR = 2,
			DROPTARGET = 4,
			SUBMENU = 8,
			CHECKED = 32,
			DROPCASCADE = 64,
			HIDDEN = 128,
			DISABLED = 256,
			TRACKPOPUP = 512,
			DEMOTED = 1024,
			ALTSTATE = 2048,
			DRAGNDROP = 4096,
			NEW = 8192,
		}
		[AllowDuplicates]
		public enum KF_CATEGORY : int32
		{
			VIRTUAL = 1,
			FIXED = 2,
			COMMON = 3,
			PERUSER = 4,
		}
		[AllowDuplicates]
		public enum _KF_DEFINITION_FLAGS : int32
		{
			LOCAL_REDIRECT_ONLY = 2,
			ROAMABLE = 4,
			PRECREATE = 8,
			STREAM = 16,
			PUBLISHEXPANDEDPATH = 32,
			NO_REDIRECT_UI = 64,
		}
		[AllowDuplicates]
		public enum _KF_REDIRECT_FLAGS : int32
		{
			USER_EXCLUSIVE = 1,
			COPY_SOURCE_DACL = 2,
			OWNER_USER = 4,
			SET_OWNER_EXPLICIT = 8,
			CHECK_ONLY = 16,
			WITH_UI = 32,
			UNPIN = 64,
			PIN = 128,
			COPY_CONTENTS = 512,
			DEL_SOURCE_CONTENTS = 1024,
			EXCLUDE_ALL_KNOWN_SUBFOLDERS = 2048,
		}
		[AllowDuplicates]
		public enum _KF_REDIRECTION_CAPABILITIES : int32
		{
			ALLOW_ALL = 255,
			REDIRECTABLE = 1,
			DENY_ALL = 1048320,
			DENY_POLICY_REDIRECTED = 256,
			DENY_POLICY = 512,
			DENY_PERMISSIONS = 1024,
		}
		[AllowDuplicates]
		public enum FFFP_MODE : int32
		{
			EXACTMATCH = 0,
			NEARESTPARENTMATCH = 1,
		}
		[AllowDuplicates]
		public enum SHARE_ROLE : int32
		{
			INVALID = -1,
			READER = 0,
			CONTRIBUTOR = 1,
			CO_OWNER = 2,
			OWNER = 3,
			CUSTOM = 4,
			MIXED = 5,
		}
		[AllowDuplicates]
		public enum DEF_SHARE_ID : int32
		{
			USERS = 1,
			PUBLIC = 2,
		}
		[AllowDuplicates]
		public enum _NMCII_FLAGS : int32
		{
			NONE = 0,
			ITEMS = 1,
			FOLDERS = 2,
		}
		[AllowDuplicates]
		public enum _NMCSAEI_FLAGS : int32
		{
			SELECT = 0,
			EDIT = 1,
		}
		[AllowDuplicates]
		public enum _NSTCSTYLE : int32
		{
			HASEXPANDOS = 1,
			HASLINES = 2,
			SINGLECLICKEXPAND = 4,
			FULLROWSELECT = 8,
			SPRINGEXPAND = 16,
			HORIZONTALSCROLL = 32,
			ROOTHASEXPANDO = 64,
			SHOWSELECTIONALWAYS = 128,
			NOINFOTIP = 512,
			EVENHEIGHT = 1024,
			NOREPLACEOPEN = 2048,
			DISABLEDRAGDROP = 4096,
			NOORDERSTREAM = 8192,
			RICHTOOLTIP = 16384,
			BORDER = 32768,
			NOEDITLABELS = 65536,
			TABSTOP = 131072,
			FAVORITESMODE = 524288,
			AUTOHSCROLL = 1048576,
			FADEINOUTEXPANDOS = 2097152,
			EMPTYTEXT = 4194304,
			CHECKBOXES = 8388608,
			PARTIALCHECKBOXES = 16777216,
			EXCLUSIONCHECKBOXES = 33554432,
			DIMMEDCHECKBOXES = 67108864,
			NOINDENTCHECKS = 134217728,
			ALLOWJUNCTIONS = 268435456,
			SHOWTABSBUTTON = 536870912,
			SHOWDELETEBUTTON = 1073741824,
			SHOWREFRESHBUTTON = -2147483648,
		}
		[AllowDuplicates]
		public enum _NSTCROOTSTYLE : int32
		{
			VISIBLE = 0,
			HIDDEN = 1,
			EXPANDED = 2,
		}
		[AllowDuplicates]
		public enum _NSTCITEMSTATE : int32
		{
			NONE = 0,
			SELECTED = 1,
			EXPANDED = 2,
			BOLD = 4,
			DISABLED = 8,
			SELECTEDNOEXPAND = 16,
		}
		[AllowDuplicates]
		public enum NSTCGNI : int32
		{
			NEXT = 0,
			NEXTVISIBLE = 1,
			PREV = 2,
			PREVVISIBLE = 3,
			PARENT = 4,
			CHILD = 5,
			FIRSTVISIBLE = 6,
			LASTVISIBLE = 7,
		}
		[AllowDuplicates]
		public enum NSTCFOLDERCAPABILITIES : int32
		{
			NONE = 0,
			PINNEDITEMFILTERING = 1,
			DELAY_REGISTER_NOTIFY = 2,
		}
		[AllowDuplicates]
		public enum _EXPLORERPANESTATE : int32
		{
			DONTCARE = 0,
			DEFAULT_ON = 1,
			DEFAULT_OFF = 2,
			STATEMASK = 65535,
			INITIALSTATE = 65536,
			FORCE = 131072,
		}
		[AllowDuplicates]
		public enum _EXPCMDSTATE : int32
		{
			ENABLED = 0,
			DISABLED = 1,
			HIDDEN = 2,
			CHECKBOX = 4,
			CHECKED = 8,
			RADIOCHECK = 16,
		}
		[AllowDuplicates]
		public enum _EXPCMDFLAGS : int32
		{
			DEFAULT = 0,
			HASSUBCOMMANDS = 1,
			HASSPLITBUTTON = 2,
			HIDELABEL = 4,
			ISSEPARATOR = 8,
			HASLUASHIELD = 16,
			SEPARATORBEFORE = 32,
			SEPARATORAFTER = 64,
			ISDROPDOWN = 128,
			TOGGLEABLE = 256,
			AUTOMENUICONS = 512,
		}
		[AllowDuplicates]
		public enum CPVIEW : int32
		{
			CLASSIC = 0,
			ALLITEMS = 0,
			CATEGORY = 1,
			HOME = 1,
		}
		[AllowDuplicates]
		public enum KNOWNDESTCATEGORY : int32
		{
			FREQUENT = 1,
			RECENT = 2,
		}
		[AllowDuplicates]
		public enum APPDOCLISTTYPE : int32
		{
			RECENT = 0,
			FREQUENT = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_OPTIONS : int32
		{
			DSO_SHUFFLEIMAGES = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_STATE : int32
		{
			ENABLED = 1,
			SLIDESHOW = 2,
			DISABLED_BY_REMOTE_SESSION = 4,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_DIRECTION : int32
		{
			FORWARD = 0,
			BACKWARD = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_WALLPAPER_POSITION : int32
		{
			CENTER = 0,
			TILE = 1,
			STRETCH = 2,
			FIT = 3,
			FILL = 4,
			SPAN = 5,
		}
		[AllowDuplicates]
		public enum HOMEGROUPSHARINGCHOICES : int32
		{
			NONE = 0,
			MUSICLIBRARY = 1,
			PICTURESLIBRARY = 2,
			VIDEOSLIBRARY = 4,
			DOCUMENTSLIBRARY = 8,
			PRINTERS = 16,
		}
		[AllowDuplicates]
		public enum LIBRARYFOLDERFILTER : int32
		{
			FORCEFILESYSTEM = 1,
			STORAGEITEMS = 2,
			ALLITEMS = 3,
		}
		[AllowDuplicates]
		public enum LIBRARYOPTIONFLAGS : int32
		{
			DEFAULT = 0,
			PINNEDTONAVPANE = 1,
			MASK_ALL = 1,
		}
		[AllowDuplicates]
		public enum DEFAULTSAVEFOLDERTYPE : int32
		{
			DETECT = 1,
			PRIVATE = 2,
			PUBLIC = 3,
		}
		[AllowDuplicates]
		public enum LIBRARYSAVEFLAGS : int32
		{
			FAILIFTHERE = 0,
			OVERRIDEEXISTING = 1,
			MAKEUNIQUENAME = 2,
		}
		[AllowDuplicates]
		public enum DEFAULT_FOLDER_MENU_RESTRICTIONS : int32
		{
			DEFAULT = 0,
			NO_STATIC_VERBS = 8,
			STATIC_VERBS_ONLY = 16,
			NO_RESOURCE_VERBS = 32,
			OPTIN_HANDLERS_ONLY = 64,
			RESOURCE_AND_FOLDER_VERBS_ONLY = 128,
			USE_SPECIFIED_HANDLERS = 256,
			USE_SPECIFIED_VERBS = 512,
			NO_ASYNC_VERBS = 1024,
			NO_NATIVECPU_VERBS = 2048,
			NO_NONWOW_VERBS = 4096,
		}
		[AllowDuplicates]
		public enum ACTIVATEOPTIONS : int32
		{
			NONE = 0,
			DESIGNMODE = 1,
			NOERRORUI = 2,
			NOSPLASHSCREEN = 4,
			PRELAUNCH = 33554432,
		}
		[AllowDuplicates]
		public enum LIBRARYMANAGEDIALOGOPTIONS : int32
		{
			DEFAULT = 0,
			ALLOWUNINDEXABLENETWORKLOCATIONS = 1,
		}
		[AllowDuplicates]
		public enum AHTYPE : int32
		{
			UNDEFINED = 0,
			USER_APPLICATION = 8,
			ANY_APPLICATION = 16,
			MACHINEDEFAULT = 32,
			PROGID = 64,
			APPLICATION = 128,
			CLASS_APPLICATION = 256,
			ANY_PROGID = 512,
		}
		[AllowDuplicates]
		public enum ASSOC_FILTER : int32
		{
			NONE = 0,
			RECOMMENDED = 1,
		}
		[AllowDuplicates]
		public enum MONITOR_APP_VISIBILITY : int32
		{
			UNKNOWN = 0,
			NO_APP_VISIBLE = 1,
			APP_VISIBLE = 2,
		}
		[AllowDuplicates]
		public enum PACKAGE_EXECUTION_STATE : int32
		{
			UNKNOWN = 0,
			RUNNING = 1,
			SUSPENDING = 2,
			SUSPENDED = 3,
			TERMINATED = 4,
		}
		[AllowDuplicates]
		public enum AHE_TYPE : int32
		{
			DESKTOP = 0,
			IMMERSIVE = 1,
		}
		[AllowDuplicates]
		public enum EC_HOST_UI_MODE : int32
		{
			DESKTOP = 0,
			IMMERSIVE = 1,
			SYSTEM_LAUNCHER = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_STATE : int32
		{
			FULLSCREEN_LANDSCAPE = 0,
			FILLED = 1,
			SNAPPED = 2,
			FULLSCREEN_PORTRAIT = 3,
		}
		[AllowDuplicates]
		public enum EDGE_GESTURE_KIND : int32
		{
			TOUCH = 0,
			KEYBOARD = 1,
			MOUSE = 2,
		}
		[AllowDuplicates]
		public enum NATIVE_DISPLAY_ORIENTATION : int32
		{
			LANDSCAPE = 0,
			PORTRAIT = 1,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_ORIENTATION : int32
		{
			LANDSCAPE = 0,
			PORTRAIT = 1,
		}
		[AllowDuplicates]
		public enum ADJACENT_DISPLAY_EDGES : int32
		{
			NONE = 0,
			LEFT = 1,
			RIGHT = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_MIN_WIDTH : int32
		{
			DEFAULT = 0,
			_320 = 1,
			_500 = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_SIZE_PREFERENCE : int32
		{
			DEFAULT = 0,
			USE_LESS = 1,
			USE_HALF = 2,
			USE_MORE = 3,
			USE_MINIMUM = 4,
			USE_NONE = 5,
			CUSTOM = 6,
		}
		[AllowDuplicates]
		public enum FLYOUT_PLACEMENT : int32
		{
			DEFAULT = 0,
			ABOVE = 1,
			BELOW = 2,
			LEFT = 3,
			RIGHT = 4,
		}
		[AllowDuplicates]
		public enum BANNER_NOTIFICATION_EVENT : int32
		{
			Rendered = 0,
			Hovered = 1,
			Closed = 2,
			Dismissed = 3,
			Button1Clicked = 4,
			Button2Clicked = 5,
		}
		[AllowDuplicates]
		public enum SORT_ORDER_TYPE : int32
		{
			DEFAULT = 0,
			IGNORE_FOLDERNESS = 1,
		}
		[AllowDuplicates]
		public enum FOLDERVIEWOPTIONS : int32
		{
			DEFAULT = 0,
			VISTALAYOUT = 1,
			CUSTOMPOSITION = 2,
			CUSTOMORDERING = 4,
			SUPPORTHYPERLINKS = 8,
			NOANIMATIONS = 16,
			NOSCROLLTIPS = 32,
		}
		[AllowDuplicates]
		public enum _SV3CVW3_FLAGS : int32
		{
			DEFAULT = 0,
			NONINTERACTIVE = 1,
			FORCEVIEWMODE = 2,
			FORCEFOLDERFLAGS = 4,
		}
		[AllowDuplicates]
		public enum VPWATERMARKFLAGS : int32
		{
			DEFAULT = 0,
			ALPHABLEND = 1,
		}
		[AllowDuplicates]
		public enum VPCOLORFLAGS : int32
		{
			TEXT = 1,
			BACKGROUND = 2,
			SORTCOLUMN = 3,
			SUBTEXT = 4,
			TEXTBACKGROUND = 5,
		}
		[AllowDuplicates]
		public enum DSH_FLAGS : int32
		{
			DSH_ALLOWDROPDESCRIPTIONTEXT = 1,
		}
		[AllowDuplicates]
		public enum CDBURNINGEXTENSIONRET : int32
		{
			DEFAULT = 0,
			DONTRUNOTHEREXTS = 1,
			STOPWIZARD = 2,
		}
		[AllowDuplicates]
		public enum _CDBE_ACTIONS : int32
		{
			MUSIC = 1,
			DATA = 2,
			ALL = -1,
		}
		[AllowDuplicates]
		public enum NSTCSTYLE2 : int32
		{
			STCS2_DEFAULT = 0,
			STCS2_INTERRUPTNOTIFICATIONS = 1,
			STCS2_SHOWNULLSPACEMENU = 2,
			STCS2_DISPLAYPADDING = 4,
			STCS2_DISPLAYPINNEDONLY = 8,
			TSCS2_NOSINGLETONAUTOEXPAND = 16,
			TSCS2_NEVERINSERTNONENUMERATED = 32,
		}
		[AllowDuplicates]
		public enum _NSTCEHITTEST : int32
		{
			NOWHERE = 1,
			ONITEMICON = 2,
			ONITEMLABEL = 4,
			ONITEMINDENT = 8,
			ONITEMBUTTON = 16,
			ONITEMRIGHT = 32,
			ONITEMSTATEICON = 64,
			ONITEM = 70,
			ONITEMTABBUTTON = 4096,
		}
		[AllowDuplicates]
		public enum _NSTCECLICKTYPE : int32
		{
			LBUTTON = 1,
			MBUTTON = 2,
			RBUTTON = 3,
			BUTTON = 3,
			DBLCLICK = 4,
		}
		[AllowDuplicates]
		public enum UNDOCK_REASON : int32
		{
			RESOLUTION_CHANGE = 0,
			MONITOR_DISCONNECT = 1,
		}
		[AllowDuplicates]
		public enum CommandStateChangeConstants : int32
		{
			UPDATECOMMANDS = -1,
			NAVIGATEFORWARD = 1,
			NAVIGATEBACK = 2,
		}
		[AllowDuplicates]
		public enum SecureLockIconConstants : int32
		{
			Unsecure = 0,
			Mixed = 1,
			SecureUnknownBits = 2,
			Secure40Bit = 3,
			Secure56Bit = 4,
			SecureFortezza = 5,
			Secure128Bit = 6,
		}
		[AllowDuplicates]
		public enum NewProcessCauseConstants : int32
		{
			ProtectedModeRedirect = 1,
		}
		[AllowDuplicates]
		public enum ShellWindowTypeConstants : int32
		{
			EXPLORER = 0,
			BROWSER = 1,
			_3RDPARTY = 2,
			CALLBACK = 4,
			DESKTOP = 8,
		}
		[AllowDuplicates]
		public enum ShellWindowFindWindowOptions : int32
		{
			NEEDDISPATCH = 1,
			INCLUDEPENDING = 2,
			COOKIEPASSED = 4,
		}
		[AllowDuplicates]
		public enum BrowserNavConstants : int32
		{
			OpenInNewWindow = 1,
			NoHistory = 2,
			NoReadFromCache = 4,
			NoWriteToCache = 8,
			AllowAutosearch = 16,
			BrowserBar = 32,
			Hyperlink = 64,
			EnforceRestricted = 128,
			NewWindowsManaged = 256,
			UntrustedForDownload = 512,
			TrustedForActiveX = 1024,
			OpenInNewTab = 2048,
			OpenInBackgroundTab = 4096,
			KeepWordWheelText = 8192,
			VirtualTab = 16384,
			BlockRedirectsXDomain = 32768,
			OpenNewForegroundTab = 65536,
			TravelLogScreenshot = 131072,
			DeferUnload = 262144,
			Speculative = 524288,
			SuggestNewWindow = 1048576,
			SuggestNewTab = 2097152,
			Reserved1 = 4194304,
			HomepageNavigate = 8388608,
			Refresh = 16777216,
			HostNavigation = 33554432,
			Reserved2 = 67108864,
			Reserved3 = 134217728,
			Reserved4 = 268435456,
			Reserved5 = 536870912,
			Reserved6 = 1073741824,
			Reserved7 = -2147483648,
		}
		[AllowDuplicates]
		public enum RefreshConstants : int32
		{
			NORMAL = 0,
			IFEXPIRED = 1,
			COMPLETELY = 3,
		}
		[AllowDuplicates]
		public enum OfflineFolderStatus : int32
		{
			INACTIVE = -1,
			ONLINE = 0,
			OFFLINE = 1,
			SERVERBACK = 2,
			DIRTYCACHE = 3,
		}
		[AllowDuplicates]
		public enum ShellFolderViewOptions : int32
		{
			SHOWALLOBJECTS = 1,
			SHOWEXTENSIONS = 2,
			SHOWCOMPCOLOR = 8,
			SHOWSYSFILES = 32,
			WIN95CLASSIC = 64,
			DOUBLECLICKINWEBVIEW = 128,
			DESKTOPHTML = 512,
		}
		[AllowDuplicates]
		public enum ShellSpecialFolderConstants : int32
		{
			DESKTOP = 0,
			PROGRAMS = 2,
			CONTROLS = 3,
			PRINTERS = 4,
			PERSONAL = 5,
			FAVORITES = 6,
			STARTUP = 7,
			RECENT = 8,
			SENDTO = 9,
			BITBUCKET = 10,
			STARTMENU = 11,
			DESKTOPDIRECTORY = 16,
			DRIVES = 17,
			NETWORK = 18,
			NETHOOD = 19,
			FONTS = 20,
			TEMPLATES = 21,
			COMMONSTARTMENU = 22,
			COMMONPROGRAMS = 23,
			COMMONSTARTUP = 24,
			COMMONDESKTOPDIR = 25,
			APPDATA = 26,
			PRINTHOOD = 27,
			LOCALAPPDATA = 28,
			ALTSTARTUP = 29,
			COMMONALTSTARTUP = 30,
			COMMONFAVORITES = 31,
			INTERNETCACHE = 32,
			COOKIES = 33,
			HISTORY = 34,
			COMMONAPPDATA = 35,
			WINDOWS = 36,
			SYSTEM = 37,
			PROGRAMFILES = 38,
			MYPICTURES = 39,
			PROFILE = 40,
			SYSTEMx86 = 41,
			PROGRAMFILESx86 = 48,
		}
		[AllowDuplicates]
		public enum AUTOCOMPLETEOPTIONS : int32
		{
			NONE = 0,
			AUTOSUGGEST = 1,
			AUTOAPPEND = 2,
			SEARCH = 4,
			FILTERPREFIXES = 8,
			USETAB = 16,
			UPDOWNKEYDROPSLIST = 32,
			RTLREADING = 64,
			WORD_FILTER = 128,
			NOPREFIXFILTERING = 256,
		}
		[AllowDuplicates]
		public enum ACENUMOPTION : int32
		{
			NONE = 0,
			MOSTRECENTFIRST = 1,
			FIRSTUNUSED = 65536,
		}
		[AllowDuplicates]
		public enum SHELL_LINK_DATA_FLAGS : int32
		{
			DEFAULT = 0,
			HAS_ID_LIST = 1,
			HAS_LINK_INFO = 2,
			HAS_NAME = 4,
			HAS_RELPATH = 8,
			HAS_WORKINGDIR = 16,
			HAS_ARGS = 32,
			HAS_ICONLOCATION = 64,
			UNICODE = 128,
			FORCE_NO_LINKINFO = 256,
			HAS_EXP_SZ = 512,
			RUN_IN_SEPARATE = 1024,
			HAS_DARWINID = 4096,
			RUNAS_USER = 8192,
			HAS_EXP_ICON_SZ = 16384,
			NO_PIDL_ALIAS = 32768,
			FORCE_UNCNAME = 65536,
			RUN_WITH_SHIMLAYER = 131072,
			FORCE_NO_LINKTRACK = 262144,
			ENABLE_TARGET_METADATA = 524288,
			DISABLE_LINK_PATH_TRACKING = 1048576,
			DISABLE_KNOWNFOLDER_RELATIVE_TRACKING = 2097152,
			NO_KF_ALIAS = 4194304,
			ALLOW_LINK_TO_LINK = 8388608,
			UNALIAS_ON_SAVE = 16777216,
			PREFER_ENVIRONMENT_PATH = 33554432,
			KEEP_LOCAL_IDLIST_FOR_UNC_TARGET = 67108864,
			PERSIST_VOLUME_ID_RELATIVE = 134217728,
			VALID = 268433407,
			RESERVED = -2147483648,
		}
		[AllowDuplicates]
		public enum SHGFP_TYPE : int32
		{
			CURRENT = 0,
			DEFAULT = 1,
		}
		[AllowDuplicates]
		public enum KNOWN_FOLDER_FLAG : int32
		{
			DEFAULT = 0,
			FORCE_APP_DATA_REDIRECTION = 524288,
			RETURN_FILTER_REDIRECTION_TARGET = 262144,
			FORCE_PACKAGE_REDIRECTION = 131072,
			NO_PACKAGE_REDIRECTION = 65536,
			FORCE_APPCONTAINER_REDIRECTION = 131072,
			NO_APPCONTAINER_REDIRECTION = 65536,
			CREATE = 32768,
			DONT_VERIFY = 16384,
			DONT_UNEXPAND = 8192,
			NO_ALIAS = 4096,
			INIT = 2048,
			DEFAULT_PATH = 1024,
			NOT_PARENT_RELATIVE = 512,
			SIMPLE_IDLIST = 256,
			ALIAS_ONLY = -2147483648,
		}
		[AllowDuplicates]
		public enum AUTOCOMPLETELISTOPTIONS : int32
		{
			NONE = 0,
			CURRENTDIR = 1,
			MYCOMPUTER = 2,
			DESKTOP = 4,
			FAVORITES = 8,
			FILESYSONLY = 16,
			FILESYSDIRS = 32,
			VIRTUALNAMESPACE = 64,
		}
		[AllowDuplicates]
		public enum FD_FLAGS : int32
		{
			CLSID = 1,
			SIZEPOINT = 2,
			ATTRIBUTES = 4,
			CREATETIME = 8,
			ACCESSTIME = 16,
			WRITESTIME = 32,
			FILESIZE = 64,
			PROGRESSUI = 16384,
			LINKUI = 32768,
			UNICODE = -2147483648,
		}
		[AllowDuplicates]
		public enum DROPIMAGETYPE : int32
		{
			INVALID = -1,
			NONE = 0,
			COPY = 1,
			MOVE = 2,
			LINK = 4,
			LABEL = 6,
			WARNING = 7,
			NOIMAGE = 8,
		}
		[AllowDuplicates]
		public enum SHARD : int32
		{
			PIDL = 1,
			PATHA = 2,
			PATHW = 3,
			APPIDINFO = 4,
			APPIDINFOIDLIST = 5,
			LINK = 6,
			APPIDINFOLINK = 7,
			SHELLITEM = 8,
		}
		[AllowDuplicates]
		public enum SCNRT_STATUS : int32
		{
			ENABLE = 0,
			DISABLE = 1,
		}
		[AllowDuplicates]
		public enum RESTRICTIONS : int32
		{
			NONE = 0,
			NORUN = 1,
			NOCLOSE = 2,
			NOSAVESET = 4,
			NOFILEMENU = 8,
			NOSETFOLDERS = 16,
			NOSETTASKBAR = 32,
			NODESKTOP = 64,
			NOFIND = 128,
			NODRIVES = 256,
			NODRIVEAUTORUN = 512,
			NODRIVETYPEAUTORUN = 1024,
			NONETHOOD = 2048,
			STARTBANNER = 4096,
			RESTRICTRUN = 8192,
			NOPRINTERTABS = 16384,
			NOPRINTERDELETE = 32768,
			NOPRINTERADD = 65536,
			NOSTARTMENUSUBFOLDERS = 131072,
			MYDOCSONNET = 262144,
			NOEXITTODOS = 524288,
			ENFORCESHELLEXTSECURITY = 1048576,
			LINKRESOLVEIGNORELINKINFO = 2097152,
			NOCOMMONGROUPS = 4194304,
			SEPARATEDESKTOPPROCESS = 8388608,
			NOWEB = 16777216,
			NOTRAYCONTEXTMENU = 33554432,
			NOVIEWCONTEXTMENU = 67108864,
			NONETCONNECTDISCONNECT = 134217728,
			STARTMENULOGOFF = 268435456,
			NOSETTINGSASSIST = 536870912,
			NOINTERNETICON = 1073741825,
			NORECENTDOCSHISTORY = 1073741826,
			NORECENTDOCSMENU = 1073741827,
			NOACTIVEDESKTOP = 1073741828,
			NOACTIVEDESKTOPCHANGES = 1073741829,
			NOFAVORITESMENU = 1073741830,
			CLEARRECENTDOCSONEXIT = 1073741831,
			CLASSICSHELL = 1073741832,
			NOCUSTOMIZEWEBVIEW = 1073741833,
			NOHTMLWALLPAPER = 1073741840,
			NOCHANGINGWALLPAPER = 1073741841,
			NODESKCOMP = 1073741842,
			NOADDDESKCOMP = 1073741843,
			NODELDESKCOMP = 1073741844,
			NOCLOSEDESKCOMP = 1073741845,
			NOCLOSE_DRAGDROPBAND = 1073741846,
			NOMOVINGBAND = 1073741847,
			NOEDITDESKCOMP = 1073741848,
			NORESOLVESEARCH = 1073741849,
			NORESOLVETRACK = 1073741850,
			FORCECOPYACLWITHFILE = 1073741851,
			NOFORGETSOFTWAREUPDATE = 1073741853,
			NOSETACTIVEDESKTOP = 1073741854,
			NOUPDATEWINDOWS = 1073741855,
			NOCHANGESTARMENU = 1073741856,
			NOFOLDEROPTIONS = 1073741857,
			HASFINDCOMPUTERS = 1073741858,
			INTELLIMENUS = 1073741859,
			RUNDLGMEMCHECKBOX = 1073741860,
			ARP_ShowPostSetup = 1073741861,
			NOCSC = 1073741862,
			NOCONTROLPANEL = 1073741863,
			ENUMWORKGROUP = 1073741864,
			ARP_NOARP = 1073741865,
			ARP_NOREMOVEPAGE = 1073741866,
			ARP_NOADDPAGE = 1073741867,
			ARP_NOWINSETUPPAGE = 1073741868,
			GREYMSIADS = 1073741869,
			NOCHANGEMAPPEDDRIVELABEL = 1073741870,
			NOCHANGEMAPPEDDRIVECOMMENT = 1073741871,
			MaxRecentDocs = 1073741872,
			NONETWORKCONNECTIONS = 1073741873,
			FORCESTARTMENULOGOFF = 1073741874,
			NOWEBVIEW = 1073741875,
			NOCUSTOMIZETHISFOLDER = 1073741876,
			NOENCRYPTION = 1073741877,
			DONTSHOWSUPERHIDDEN = 1073741879,
			NOSHELLSEARCHBUTTON = 1073741880,
			NOHARDWARETAB = 1073741881,
			NORUNASINSTALLPROMPT = 1073741882,
			PROMPTRUNASINSTALLNETPATH = 1073741883,
			NOMANAGEMYCOMPUTERVERB = 1073741884,
			DISALLOWRUN = 1073741886,
			NOWELCOMESCREEN = 1073741887,
			RESTRICTCPL = 1073741888,
			DISALLOWCPL = 1073741889,
			NOSMBALLOONTIP = 1073741890,
			NOSMHELP = 1073741891,
			NOWINKEYS = 1073741892,
			NOENCRYPTONMOVE = 1073741893,
			NOLOCALMACHINERUN = 1073741894,
			NOCURRENTUSERRUN = 1073741895,
			NOLOCALMACHINERUNONCE = 1073741896,
			NOCURRENTUSERRUNONCE = 1073741897,
			FORCEACTIVEDESKTOPON = 1073741898,
			NOVIEWONDRIVE = 1073741900,
			NONETCRAWL = 1073741901,
			NOSHAREDDOCUMENTS = 1073741902,
			NOSMMYDOCS = 1073741903,
			NOSMMYPICS = 1073741904,
			ALLOWBITBUCKDRIVES = 1073741905,
			NONLEGACYSHELLMODE = 1073741906,
			NOCONTROLPANELBARRICADE = 1073741907,
			NOSTARTPAGE = 1073741908,
			NOAUTOTRAYNOTIFY = 1073741909,
			NOTASKGROUPING = 1073741910,
			NOCDBURNING = 1073741911,
			MYCOMPNOPROP = 1073741912,
			MYDOCSNOPROP = 1073741913,
			NOSTARTPANEL = 1073741914,
			NODISPLAYAPPEARANCEPAGE = 1073741915,
			NOTHEMESTAB = 1073741916,
			NOVISUALSTYLECHOICE = 1073741917,
			NOSIZECHOICE = 1073741918,
			NOCOLORCHOICE = 1073741919,
			SETVISUALSTYLE = 1073741920,
			STARTRUNNOHOMEPATH = 1073741921,
			NOUSERNAMEINSTARTPANEL = 1073741922,
			NOMYCOMPUTERICON = 1073741923,
			NOSMNETWORKPLACES = 1073741924,
			NOSMPINNEDLIST = 1073741925,
			NOSMMYMUSIC = 1073741926,
			NOSMEJECTPC = 1073741927,
			NOSMMOREPROGRAMS = 1073741928,
			NOSMMFUPROGRAMS = 1073741929,
			NOTRAYITEMSDISPLAY = 1073741930,
			NOTOOLBARSONTASKBAR = 1073741931,
			NOSMCONFIGUREPROGRAMS = 1073741935,
			HIDECLOCK = 1073741936,
			NOLOWDISKSPACECHECKS = 1073741937,
			NOENTIRENETWORK = 1073741938,
			NODESKTOPCLEANUP = 1073741939,
			BITBUCKNUKEONDELETE = 1073741940,
			BITBUCKCONFIRMDELETE = 1073741941,
			BITBUCKNOPROP = 1073741942,
			NODISPBACKGROUND = 1073741943,
			NODISPSCREENSAVEPG = 1073741944,
			NODISPSETTINGSPG = 1073741945,
			NODISPSCREENSAVEPREVIEW = 1073741946,
			NODISPLAYCPL = 1073741947,
			HIDERUNASVERB = 1073741948,
			NOTHUMBNAILCACHE = 1073741949,
			NOSTRCMPLOGICAL = 1073741950,
			NOPUBLISHWIZARD = 1073741951,
			NOONLINEPRINTSWIZARD = 1073741952,
			NOWEBSERVICES = 1073741953,
			ALLOWUNHASHEDWEBVIEW = 1073741954,
			ALLOWLEGACYWEBVIEW = 1073741955,
			REVERTWEBVIEWSECURITY = 1073741956,
			INHERITCONSOLEHANDLES = 1073741958,
			NOREMOTERECURSIVEEVENTS = 1073741961,
			NOREMOTECHANGENOTIFY = 1073741969,
			NOENUMENTIRENETWORK = 1073741971,
			NOINTERNETOPENWITH = 1073741973,
			DONTRETRYBADNETNAME = 1073741979,
			ALLOWFILECLSIDJUNCTIONS = 1073741980,
			NOUPNPINSTALL = 1073741981,
			ARP_DONTGROUPPATCHES = 1073741996,
			ARP_NOCHOOSEPROGRAMSPAGE = 1073741997,
			NODISCONNECT = 1090519041,
			NOSECURITY = 1090519042,
			NOFILEASSOCIATE = 1090519043,
			ALLOWCOMMENTTOGGLE = 1090519044,
		}
		[AllowDuplicates]
		public enum OPEN_AS_INFO_FLAGS : uint32
		{
			ALLOW_REGISTRATION = 1,
			REGISTER_EXT = 2,
			EXEC = 4,
			FORCE_REGISTRATION = 8,
			HIDE_REGISTRATION = 32,
			URL_PROTOCOL = 64,
			FILE_IS_URI = 128,
		}
		[AllowDuplicates]
		public enum IESHORTCUTFLAGS : int32
		{
			NEWBROWSER = 1,
			OPENNEWTAB = 2,
			FORCENAVIGATE = 4,
			BACKGROUNDTAB = 8,
		}
		[AllowDuplicates]
		public enum DISPLAY_DEVICE_TYPE : int32
		{
			PRIMARY = 0,
			IMMERSIVE = 1,
		}
		[AllowDuplicates]
		public enum SCALE_CHANGE_FLAGS : uint32
		{
			VALUE_NONE = 0,
			SCALE = 1,
			PHYSICAL = 2,
		}
		[AllowDuplicates]
		public enum SHELL_UI_COMPONENT : int32
		{
			TASKBARS = 0,
			NOTIFICATIONAREA = 1,
			DESKBAND = 2,
		}
		[AllowDuplicates]
		public enum ASSOCCLASS : int32
		{
			SHELL_KEY = 0,
			PROGID_KEY = 1,
			PROGID_STR = 2,
			CLSID_KEY = 3,
			CLSID_STR = 4,
			APP_KEY = 5,
			APP_STR = 6,
			SYSTEM_STR = 7,
			FOLDER = 8,
			STAR = 9,
			FIXED_PROGID_STR = 10,
			PROTOCOL_STR = 11,
		}
		[AllowDuplicates]
		public enum QUERY_USER_NOTIFICATION_STATE : int32
		{
			NOT_PRESENT = 1,
			BUSY = 2,
			RUNNING_D3D_FULL_SCREEN = 3,
			PRESENTATION_MODE = 4,
			ACCEPTS_NOTIFICATIONS = 5,
			QUIET_TIME = 6,
			APP = 7,
		}
		[AllowDuplicates]
		public enum SHSTOCKICONID : int32
		{
			DOCNOASSOC = 0,
			DOCASSOC = 1,
			APPLICATION = 2,
			FOLDER = 3,
			FOLDEROPEN = 4,
			DRIVE525 = 5,
			DRIVE35 = 6,
			DRIVEREMOVE = 7,
			DRIVEFIXED = 8,
			DRIVENET = 9,
			DRIVENETDISABLED = 10,
			DRIVECD = 11,
			DRIVERAM = 12,
			WORLD = 13,
			SERVER = 15,
			PRINTER = 16,
			MYNETWORK = 17,
			FIND = 22,
			HELP = 23,
			SHARE = 28,
			LINK = 29,
			SLOWFILE = 30,
			RECYCLER = 31,
			RECYCLERFULL = 32,
			MEDIACDAUDIO = 40,
			LOCK = 47,
			AUTOLIST = 49,
			PRINTERNET = 50,
			SERVERSHARE = 51,
			PRINTERFAX = 52,
			PRINTERFAXNET = 53,
			PRINTERFILE = 54,
			STACK = 55,
			MEDIASVCD = 56,
			STUFFEDFOLDER = 57,
			DRIVEUNKNOWN = 58,
			DRIVEDVD = 59,
			MEDIADVD = 60,
			MEDIADVDRAM = 61,
			MEDIADVDRW = 62,
			MEDIADVDR = 63,
			MEDIADVDROM = 64,
			MEDIACDAUDIOPLUS = 65,
			MEDIACDRW = 66,
			MEDIACDR = 67,
			MEDIACDBURN = 68,
			MEDIABLANKCD = 69,
			MEDIACDROM = 70,
			AUDIOFILES = 71,
			IMAGEFILES = 72,
			VIDEOFILES = 73,
			MIXEDFILES = 74,
			FOLDERBACK = 75,
			FOLDERFRONT = 76,
			SHIELD = 77,
			WARNING = 78,
			INFO = 79,
			ERROR = 80,
			KEY = 81,
			SOFTWARE = 82,
			RENAME = 83,
			DELETE = 84,
			MEDIAAUDIODVD = 85,
			MEDIAMOVIEDVD = 86,
			MEDIAENHANCEDCD = 87,
			MEDIAENHANCEDDVD = 88,
			MEDIAHDDVD = 89,
			MEDIABLURAY = 90,
			MEDIAVCD = 91,
			MEDIADVDPLUSR = 92,
			MEDIADVDPLUSRW = 93,
			DESKTOPPC = 94,
			MOBILEPC = 95,
			USERS = 96,
			MEDIASMARTMEDIA = 97,
			MEDIACOMPACTFLASH = 98,
			DEVICECELLPHONE = 99,
			DEVICECAMERA = 100,
			DEVICEVIDEOCAMERA = 101,
			DEVICEAUDIOPLAYER = 102,
			NETWORKCONNECT = 103,
			INTERNET = 104,
			ZIPFILE = 105,
			SETTINGS = 106,
			DRIVEHDDVD = 132,
			DRIVEBD = 133,
			MEDIAHDDVDROM = 134,
			MEDIAHDDVDR = 135,
			MEDIAHDDVDRAM = 136,
			MEDIABDROM = 137,
			MEDIABDR = 138,
			MEDIABDRE = 139,
			CLUSTEREDDRIVE = 140,
			MAX_ICONS = 181,
		}
		[AllowDuplicates]
		public enum SFBS_FLAGS : int32
		{
			ROUND_TO_NEAREST_DISPLAYED_DIGIT = 1,
			TRUNCATE_UNDISPLAYED_DECIMAL_DIGITS = 2,
		}
		[AllowDuplicates]
		public enum URL_SCHEME : int32
		{
			INVALID = -1,
			UNKNOWN = 0,
			FTP = 1,
			HTTP = 2,
			GOPHER = 3,
			MAILTO = 4,
			NEWS = 5,
			NNTP = 6,
			TELNET = 7,
			WAIS = 8,
			FILE = 9,
			MK = 10,
			HTTPS = 11,
			SHELL = 12,
			SNEWS = 13,
			LOCAL = 14,
			JAVASCRIPT = 15,
			VBSCRIPT = 16,
			ABOUT = 17,
			RES = 18,
			MSSHELLROOTED = 19,
			MSSHELLIDLIST = 20,
			MSHELP = 21,
			MSSHELLDEVICE = 22,
			WILDCARD = 23,
			SEARCH_MS = 24,
			SEARCH = 25,
			KNOWNFOLDER = 26,
			MAXVALUE = 27,
		}
		[AllowDuplicates]
		public enum URL_PART : int32
		{
			NONE = 0,
			SCHEME = 1,
			HOSTNAME = 2,
			USERNAME = 3,
			PASSWORD = 4,
			PORT = 5,
			QUERY = 6,
		}
		[AllowDuplicates]
		public enum URLIS : int32
		{
			URL = 0,
			OPAQUE = 1,
			NOHISTORY = 2,
			FILEURL = 3,
			APPLIABLE = 4,
			DIRECTORY = 5,
			HASQUERY = 6,
		}
		[AllowDuplicates]
		public enum SHREGDEL_FLAGS : int32
		{
			DEFAULT = 0,
			HKCU = 1,
			HKLM = 16,
			BOTH = 17,
		}
		[AllowDuplicates]
		public enum SHREGENUM_FLAGS : int32
		{
			DEFAULT = 0,
			HKCU = 1,
			HKLM = 16,
			BOTH = 17,
		}
		[AllowDuplicates]
		public enum ASSOCSTR : int32
		{
			COMMAND = 1,
			EXECUTABLE = 2,
			FRIENDLYDOCNAME = 3,
			FRIENDLYAPPNAME = 4,
			NOOPEN = 5,
			SHELLNEWVALUE = 6,
			DDECOMMAND = 7,
			DDEIFEXEC = 8,
			DDEAPPLICATION = 9,
			DDETOPIC = 10,
			INFOTIP = 11,
			QUICKTIP = 12,
			TILEINFO = 13,
			CONTENTTYPE = 14,
			DEFAULTICON = 15,
			SHELLEXTENSION = 16,
			DROPTARGET = 17,
			DELEGATEEXECUTE = 18,
			SUPPORTED_URI_PROTOCOLS = 19,
			PROGID = 20,
			APPID = 21,
			APPPUBLISHER = 22,
			APPICONREFERENCE = 23,
			MAX = 24,
		}
		[AllowDuplicates]
		public enum ASSOCKEY : int32
		{
			SHELLEXECCLASS = 1,
			APP = 2,
			CLASS = 3,
			BASECLASS = 4,
			MAX = 5,
		}
		[AllowDuplicates]
		public enum ASSOCDATA : int32
		{
			MSIDESCRIPTOR = 1,
			NOACTIVATEHANDLER = 2,
			UNUSED1 = 3,
			HASPERUSERASSOC = 4,
			EDITFLAGS = 5,
			VALUE = 6,
			MAX = 7,
		}
		[AllowDuplicates]
		public enum ASSOCENUM : int32
		{
			ASSOCENUM_NONE = 0,
		}
		[AllowDuplicates]
		public enum FILETYPEATTRIBUTEFLAGS : int32
		{
			None = 0,
			Exclude = 1,
			Show = 2,
			HasExtension = 4,
			NoEdit = 8,
			NoRemove = 16,
			NoNewVerb = 32,
			NoEditVerb = 64,
			NoRemoveVerb = 128,
			NoEditDesc = 256,
			NoEditIcon = 512,
			NoEditDflt = 1024,
			NoEditVerbCmd = 2048,
			NoEditVerbExe = 4096,
			NoDDE = 8192,
			NoEditMIME = 32768,
			OpenIsSafe = 65536,
			AlwaysUnsafe = 131072,
			NoRecentDocs = 1048576,
			SafeForElevation = 2097152,
			AlwaysUseDirectInvoke = 4194304,
		}
		[AllowDuplicates]
		public enum SHGLOBALCOUNTER : int32
		{
			GLOBALCOUNTER_SEARCHMANAGER = 0,
			GLOBALCOUNTER_SEARCHOPTIONS = 1,
			GLOBALCOUNTER_FOLDERSETTINGSCHANGE = 2,
			GLOBALCOUNTER_RATINGS = 3,
			GLOBALCOUNTER_APPROVEDSITES = 4,
			GLOBALCOUNTER_RESTRICTIONS = 5,
			GLOBALCOUNTER_SHELLSETTINGSCHANGED = 6,
			GLOBALCOUNTER_SYSTEMPIDLCHANGE = 7,
			GLOBALCOUNTER_OVERLAYMANAGER = 8,
			GLOBALCOUNTER_QUERYASSOCIATIONS = 9,
			GLOBALCOUNTER_IESESSIONS = 10,
			GLOBALCOUNTER_IEONLY_SESSIONS = 11,
			GLOBALCOUNTER_APPLICATION_DESTINATIONS = 12,
			__UNUSED_RECYCLE_WAS_GLOBALCOUNTER_CSCSYNCINPROGRESS = 13,
			GLOBALCOUNTER_BITBUCKETNUMDELETERS = 14,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_SHARES = 15,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_A = 16,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_B = 17,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_C = 18,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_D = 19,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_E = 20,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_F = 21,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_G = 22,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_H = 23,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_I = 24,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_J = 25,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_K = 26,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_L = 27,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_M = 28,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_N = 29,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_O = 30,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_P = 31,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Q = 32,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_R = 33,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_S = 34,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_T = 35,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_U = 36,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_V = 37,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_W = 38,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_X = 39,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Y = 40,
			GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Z = 41,
			__UNUSED_RECYCLE_WAS_GLOBALCOUNTER_RECYCLEDIRTYCOUNT_SERVERDRIVE = 42,
			__UNUSED_RECYCLE_WAS_GLOBALCOUNTER_RECYCLEGLOBALDIRTYCOUNT = 43,
			GLOBALCOUNTER_RECYCLEBINENUM = 44,
			GLOBALCOUNTER_RECYCLEBINCORRUPTED = 45,
			GLOBALCOUNTER_RATINGS_STATECOUNTER = 46,
			GLOBALCOUNTER_PRIVATE_PROFILE_CACHE = 47,
			GLOBALCOUNTER_INTERNETTOOLBAR_LAYOUT = 48,
			GLOBALCOUNTER_FOLDERDEFINITION_CACHE = 49,
			GLOBALCOUNTER_COMMONPLACES_LIST_CACHE = 50,
			GLOBALCOUNTER_PRIVATE_PROFILE_CACHE_MACHINEWIDE = 51,
			GLOBALCOUNTER_ASSOCCHANGED = 52,
			GLOBALCOUNTER_APP_ITEMS_STATE_STORE_CACHE = 53,
			GLOBALCOUNTER_SETTINGSYNC_ENABLED = 54,
			GLOBALCOUNTER_APPSFOLDER_FILETYPEASSOCIATION_COUNTER = 55,
			GLOBALCOUNTER_USERINFOCHANGED = 56,
			GLOBALCOUNTER_SYNC_ENGINE_INFORMATION_CACHE_MACHINEWIDE = 57,
			GLOBALCOUNTER_BANNERS_DATAMODEL_CACHE_MACHINEWIDE = 58,
			GLOBALCOUNTER_MAXIMUMVALUE = 59,
		}
		[AllowDuplicates]
		public enum APPINFODATAFLAGS : int32
		{
			DISPLAYNAME = 1,
			VERSION = 2,
			PUBLISHER = 4,
			PRODUCTID = 8,
			REGISTEREDOWNER = 16,
			REGISTEREDCOMPANY = 32,
			LANGUAGE = 64,
			SUPPORTURL = 128,
			SUPPORTTELEPHONE = 256,
			HELPLINK = 512,
			INSTALLLOCATION = 1024,
			INSTALLSOURCE = 2048,
			INSTALLDATE = 4096,
			CONTACT = 16384,
			COMMENTS = 32768,
			IMAGE = 131072,
			READMEURL = 262144,
			UPDATEINFOURL = 524288,
		}
		[AllowDuplicates]
		public enum APPACTIONFLAGS : int32
		{
			INSTALL = 1,
			UNINSTALL = 2,
			MODIFY = 4,
			REPAIR = 8,
			UPGRADE = 16,
			CANGETSIZE = 32,
			MODIFYREMOVE = 128,
			ADDLATER = 256,
			UNSCHEDULE = 512,
		}
		[AllowDuplicates]
		public enum PUBAPPINFOFLAGS : int32
		{
			SOURCE = 1,
			ASSIGNEDTIME = 2,
			PUBLISHEDTIME = 4,
			SCHEDULEDTIME = 8,
			EXPIRETIME = 16,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_USAGE_SCENARIO : int32
		{
			INVALID = 0,
			LOGON = 1,
			UNLOCK_WORKSTATION = 2,
			CHANGE_PASSWORD = 3,
			CREDUI = 4,
			PLAP = 5,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_TYPE : int32
		{
			INVALID = 0,
			LARGE_TEXT = 1,
			SMALL_TEXT = 2,
			COMMAND_LINK = 3,
			EDIT_TEXT = 4,
			PASSWORD_TEXT = 5,
			TILE_IMAGE = 6,
			CHECKBOX = 7,
			COMBOBOX = 8,
			SUBMIT_BUTTON = 9,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_STATE : int32
		{
			HIDDEN = 0,
			DISPLAY_IN_SELECTED_TILE = 1,
			DISPLAY_IN_DESELECTED_TILE = 2,
			DISPLAY_IN_BOTH = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE : int32
		{
			NONE = 0,
			READONLY = 1,
			DISABLED = 2,
			FOCUSED = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE : int32
		{
			NO_CREDENTIAL_NOT_FINISHED = 0,
			NO_CREDENTIAL_FINISHED = 1,
			RETURN_CREDENTIAL_FINISHED = 2,
			RETURN_NO_CREDENTIAL_FINISHED = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_STATUS_ICON : int32
		{
			NONE = 0,
			ERROR = 1,
			WARNING = 2,
			SUCCESS = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS : int32
		{
			NONE = 0,
			EMPTY_LOCAL = 1,
			EMPTY_CONNECTED = 2,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS : int32
		{
			NONE = 0,
			ENABLE_PASSWORD_REVEAL = 1,
			IS_EMAIL_ADDRESS = 2,
			ENABLE_TOUCH_KEYBOARD_AUTO_INVOKE = 4,
			NUMBERS_ONLY = 8,
			SHOW_ENGLISH_KEYBOARD = 16,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_CAPABILITIES : int32
		{
			NONE = 0,
			PROVIDES_ICON = 1,
			EVENT_STORE = 2,
			CONFLICT_STORE = 4,
			SUPPORTS_CONCURRENT_SESSIONS = 16,
			CAN_BROWSE_CONTENT = 65536,
			CAN_SHOW_SCHEDULE = 131072,
			QUERY_BEFORE_ACTIVATE = 1048576,
			QUERY_BEFORE_DEACTIVATE = 2097152,
			QUERY_BEFORE_ENABLE = 4194304,
			QUERY_BEFORE_DISABLE = 8388608,
			VALID_MASK = 15925271,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_POLICIES : int32
		{
			NONE = 0,
			PREVENT_ACTIVATE = 1,
			PREVENT_DEACTIVATE = 2,
			PREVENT_ENABLE = 4,
			PREVENT_DISABLE = 8,
			PREVENT_START_SYNC = 16,
			PREVENT_STOP_SYNC = 32,
			DISABLE_ENABLE = 256,
			DISABLE_DISABLE = 512,
			DISABLE_START_SYNC = 1024,
			DISABLE_STOP_SYNC = 2048,
			DISABLE_BROWSE = 4096,
			DISABLE_SCHEDULE = 8192,
			HIDDEN_BY_DEFAULT = 65536,
			BACKGROUND_SYNC_ONLY = 48,
			VALID_MASK = 77631,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_TYPE : int32
		{
			UNSPECIFIED = 0,
			APPLICATION = 1,
			DEVICE = 2,
			FOLDER = 3,
			SERVICE = 4,
			COMPUTER = 5,
			MIN = 0,
			MAX = 5,
		}
		[AllowDuplicates]
		public enum SYNCMGR_ITEM_CAPABILITIES : int32
		{
			NONE = 0,
			PROVIDES_ICON = 1,
			EVENT_STORE = 2,
			CONFLICT_STORE = 4,
			CAN_DELETE = 16,
			CAN_BROWSE_CONTENT = 65536,
			QUERY_BEFORE_ENABLE = 1048576,
			QUERY_BEFORE_DISABLE = 2097152,
			QUERY_BEFORE_DELETE = 4194304,
			VALID_MASK = 7405591,
		}
		[AllowDuplicates]
		public enum SYNCMGR_ITEM_POLICIES : int32
		{
			NONE = 0,
			PREVENT_ENABLE = 1,
			PREVENT_DISABLE = 2,
			PREVENT_START_SYNC = 4,
			PREVENT_STOP_SYNC = 8,
			DISABLE_ENABLE = 16,
			DISABLE_DISABLE = 32,
			DISABLE_START_SYNC = 64,
			DISABLE_STOP_SYNC = 128,
			DISABLE_BROWSE = 256,
			DISABLE_DELETE = 512,
			HIDDEN_BY_DEFAULT = 65536,
			VALID_MASK = 66303,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PROGRESS_STATUS : int32
		{
			UPDATING = 1,
			UPDATING_INDETERMINATE = 2,
			SUCCEEDED = 3,
			FAILED = 4,
			CANCELED = 5,
			DISCONNECTED = 6,
			MAX = 6,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CANCEL_REQUEST : int32
		{
			NONE = 0,
			CANCEL_ITEM = 1,
			CANCEL_ALL = 2,
			MAX = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_EVENT_LEVEL : int32
		{
			INFORMATION = 1,
			WARNING = 2,
			ERROR = 3,
			MAX = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGR_EVENT_FLAGS : int32
		{
			NONE = 0,
			VALID = 0,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CONTROL_FLAGS : int32
		{
			NONE = 0,
			NOWAIT = 0,
			WAIT = 1,
			NOUI = 2,
			VALID = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGR_SYNC_CONTROL_FLAGS : int32
		{
			NONE = 0,
			IGNORE_IF_ALREADY_SYNCING = 1,
			VALID = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGR_UPDATE_REASON : int32
		{
			ADDED = 0,
			CHANGED = 1,
			REMOVED = 2,
			MAX = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CONFLICT_ITEM_TYPE : int32
		{
			UPDATED = 1,
			DELETED = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_RESOLUTION_ABILITIES : int32
		{
			KEEPOTHER = 1,
			KEEPRECENT = 2,
			REMOVEFROMSYNCSET = 4,
			KEEP_SINGLE = 8,
			KEEP_MULTIPLE = 16,
			VALID = 31,
		}
		[AllowDuplicates]
		public enum SYNCMGR_RESOLUTION_FEEDBACK : int32
		{
			CONTINUE = 0,
			REFRESH = 1,
			CANCEL = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PRESENTER_NEXT_STEP : int32
		{
			CONTINUE = 0,
			DEFAULT = 1,
			CANCEL = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PRESENTER_CHOICE : int32
		{
			NO_CHOICE = 0,
			KEEP_ONE = 1,
			KEEP_MULTIPLE = 2,
			KEEP_RECENT = 3,
			REMOVE_FROM_SYNC_SET = 4,
			SKIP = 5,
		}
		[AllowDuplicates]
		public enum WTS_FLAGS : int32
		{
			NONE = 0,
			EXTRACT = 0,
			INCACHEONLY = 1,
			FASTEXTRACT = 2,
			FORCEEXTRACTION = 4,
			SLOWRECLAIM = 8,
			EXTRACTDONOTCACHE = 32,
			SCALETOREQUESTEDSIZE = 64,
			SKIPFASTEXTRACT = 128,
			EXTRACTINPROC = 256,
			CROPTOSQUARE = 512,
			INSTANCESURROGATE = 1024,
			REQUIRESURROGATE = 2048,
			APPSTYLE = 8192,
			WIDETHUMBNAILS = 16384,
			IDEALCACHESIZEONLY = 32768,
			SCALEUP = 65536,
		}
		[AllowDuplicates]
		public enum WTS_CACHEFLAGS : int32
		{
			DEFAULT = 0,
			LOWQUALITY = 1,
			CACHED = 2,
		}
		[AllowDuplicates]
		public enum WTS_CONTEXTFLAGS : int32
		{
			DEFAULT = 0,
			APPSTYLE = 1,
			SQUARE = 2,
			WIDE = 4,
			FAST = 8,
		}
		[AllowDuplicates]
		public enum WTS_ALPHATYPE : int32
		{
			UNKNOWN = 0,
			RGB = 1,
			ARGB = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGRSTATUS : int32
		{
			STOPPED = 0,
			SKIPPED = 1,
			PENDING = 2,
			UPDATING = 3,
			SUCCEEDED = 4,
			FAILED = 5,
			PAUSED = 6,
			RESUMING = 7,
			UPDATING_INDETERMINATE = 8,
			DELETED = 256,
		}
		[AllowDuplicates]
		public enum SYNCMGRLOGLEVEL : int32
		{
			INFORMATION = 1,
			WARNING = 2,
			ERROR = 3,
			LOGLEVELMAX = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGRERRORFLAGS : int32
		{
			SYNCMGRERRORFLAG_ENABLEJUMPTEXT = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGRITEMFLAGS : int32
		{
			HASPROPERTIES = 1,
			TEMPORARY = 2,
			ROAMINGUSER = 4,
			LASTUPDATETIME = 8,
			MAYDELETEITEM = 16,
			HIDDEN = 32,
		}
		[AllowDuplicates]
		public enum SYNCMGRFLAG : int32
		{
			CONNECT = 1,
			PENDINGDISCONNECT = 2,
			MANUAL = 3,
			IDLE = 4,
			INVOKE = 5,
			SCHEDULED = 6,
			EVENTMASK = 255,
			SETTINGS = 256,
			MAYBOTHERUSER = 512,
		}
		[AllowDuplicates]
		public enum SYNCMGRHANDLERFLAGS : int32
		{
			HASPROPERTIES = 1,
			MAYESTABLISHCONNECTION = 2,
			ALWAYSLISTHANDLER = 4,
			HIDDEN = 8,
		}
		[AllowDuplicates]
		public enum SYNCMGRITEMSTATE : int32
		{
			UNCHECKED = 0,
			CHECKED = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGRINVOKEFLAGS : int32
		{
			STARTSYNC = 2,
			MINIMIZED = 4,
		}
		[AllowDuplicates]
		public enum SYNCMGRREGISTERFLAGS : int32
		{
			CONNECT = 1,
			PENDINGDISCONNECT = 2,
			IDLE = 4,
		}
		[AllowDuplicates]
		public enum ThumbnailStreamCacheOptions : int32
		{
			ExtractIfNotCached = 0,
			ReturnOnlyIfCached = 1,
			ResizeThumbnail = 2,
			AllowSmallerSize = 4,
		}
		[AllowDuplicates]
		public enum TLENUMF : int32
		{
			RELATIVE_INCLUDE_CURRENT = 1,
			RELATIVE_BACK = 16,
			RELATIVE_FORE = 32,
			INCLUDE_UNINVOKEABLE = 64,
			ABSOLUTE = 49,
			EXCLUDE_SUBFRAME_ENTRIES = 128,
			EXCLUDE_ABOUT_PAGES = 256,
		}
		[AllowDuplicates]
		public enum _HLSR_NOREDEF10 : int32
		{
			HOME = 0,
			SEARCHPAGE = 1,
			HISTORYFOLDER = 2,
		}
		[AllowDuplicates]
		public enum _HLSHORTCUTF__NOREDEF10 : int32
		{
			DEFAULT = 0,
			DONTACTUALLYCREATE = 1,
			USEFILENAMEFROMFRIENDLYNAME = 2,
			USEUNIQUEFILENAME = 4,
			MAYUSEEXISTINGSHORTCUT = 8,
		}
		[AllowDuplicates]
		public enum _HLTRANSLATEF_NOREDEF10 : int32
		{
			EFAULT = 0,
			ONTAPPLYDEFAULTPREFIX = 1,
		}
		[AllowDuplicates]
		public enum HLNF : uint32
		{
			INTERNALJUMP = 1,
			OPENINNEWWINDOW = 2,
			NAVIGATINGBACK = 4,
			NAVIGATINGFORWARD = 8,
			NAVIGATINGTOSTACKITEM = 16,
			CREATENOHISTORY = 32,
		}
		[AllowDuplicates]
		public enum HLINKGETREF : int32
		{
			DEFAULT = 0,
			ABSOLUTE = 1,
			RELATIVE = 2,
		}
		[AllowDuplicates]
		public enum HLFNAMEF : uint32
		{
			DEFAULT = 0,
			TRYCACHE = 1,
			TRYPRETTYTARGET = 2,
			TRYFULLTARGET = 4,
			TRYWIN95SHORTCUT = 8,
		}
		[AllowDuplicates]
		public enum HLINKMISC : int32
		{
			HLINKMISC_RELATIVE = 1,
		}
		[AllowDuplicates]
		public enum HLINKSETF : int32
		{
			TARGET = 1,
			LOCATION = 2,
		}
		[AllowDuplicates]
		public enum HLINKWHICHMK : int32
		{
			CONTAINER = 1,
			BASE = 2,
		}
		[AllowDuplicates]
		public enum HLTB_INFO : int32
		{
			DOCKEDLEFT = 0,
			DOCKEDTOP = 1,
			DOCKEDRIGHT = 2,
			DOCKEDBOTTOM = 3,
			FLOATING = 4,
		}
		[AllowDuplicates]
		public enum HLBWIF_FLAGS : uint32
		{
			HASFRAMEWNDINFO = 1,
			HASDOCWNDINFO = 2,
			FRAMEWNDMAXIMIZED = 4,
			DOCWNDMAXIMIZED = 8,
			HASWEBTOOLBARINFO = 16,
			WEBTOOLBARHIDDEN = 32,
		}
		[AllowDuplicates]
		public enum HLID_INFO : uint32
		{
			INVALID = 0,
			PREVIOUS = 4294967295,
			NEXT = 4294967294,
			CURRENT = 4294967293,
			STACKBOTTOM = 4294967292,
			STACKTOP = 4294967291,
		}
		[AllowDuplicates]
		public enum HLQF_INFO : int32
		{
			VALID = 1,
			CURRENT = 2,
		}
		[AllowDuplicates]
		public enum BNSTATE : int32
		{
			NORMAL = 0,
			BEGIN_NAVIGATE = 1,
			NAVIGATE = 2,
		}
		[AllowDuplicates]
		public enum SHELLBROWSERSHOWCONTROL : int32
		{
			HIDE = 0,
			SHOW = 1,
			TOGGLE = 2,
			QUERY = 3,
		}
		[AllowDuplicates]
		public enum SECURELOCKCODE : int32
		{
			NOCHANGE = -1,
			SET_UNSECURE = 0,
			SET_MIXED = 1,
			SET_SECUREUNKNOWNBIT = 2,
			SET_SECURE40BIT = 3,
			SET_SECURE56BIT = 4,
			SET_FORTEZZA = 5,
			SET_SECURE128BIT = 6,
			FIRSTSUGGEST = 7,
			SUGGEST_UNSECURE = 7,
			SUGGEST_MIXED = 8,
			SUGGEST_SECUREUNKNOWNBIT = 9,
			SUGGEST_SECURE40BIT = 10,
			SUGGEST_SECURE56BIT = 11,
			SUGGEST_FORTEZZA = 12,
			SUGGEST_SECURE128BIT = 13,
		}
		[AllowDuplicates]
		public enum IEPDNFLAGS : int32
		{
			IEPDN_BINDINGUI = 1,
		}
		[AllowDuplicates]
		public enum TI_FLAGS : int32
		{
			BITMAP = 1,
			JPEG = 2,
		}
		[AllowDuplicates]
		public enum PATHCCH_OPTIONS : int32
		{
			NONE = 0,
			ALLOW_LONG_PATHS = 1,
			FORCE_ENABLE_LONG_NAME_PROCESS = 2,
			FORCE_DISABLE_LONG_NAME_PROCESS = 4,
			DO_NOT_NORMALIZE_SEGMENTS = 8,
			ENSURE_IS_EXTENDED_LENGTH_PATH = 16,
			ENSURE_TRAILING_SLASH = 32,
			CANONICALIZE_SLASHES = 64,
		}
		[AllowDuplicates]
		public enum iurl_seturl_flags : int32
		{
			GUESS_PROTOCOL = 1,
			USE_DEFAULT_PROTOCOL = 2,
		}
		[AllowDuplicates]
		public enum iurl_invokecommand_flags : int32
		{
			ALLOW_UI = 1,
			USE_DEFAULT_VERB = 2,
			DDEWAIT = 4,
			ASYNCOK = 8,
			LOG_USAGE = 16,
		}
		[AllowDuplicates]
		public enum translateurl_in_flags : int32
		{
			GUESS_PROTOCOL = 1,
			USE_DEFAULT_PROTOCOL = 2,
		}
		[AllowDuplicates]
		public enum urlassociationdialog_in_flags : int32
		{
			USE_DEFAULT_NAME = 1,
			REGISTER_ASSOC = 2,
		}
		[AllowDuplicates]
		public enum mimeassociationdialog_in_flags : int32
		{
			MIMEASSOCDLG_FL_REGISTER_ASSOC = 1,
		}
		
		// --- Function Pointers ---
		
		public function LRESULT SUBCLASSPROC(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, uint uIdSubclass, uint dwRefData);
		public function int32 BFFCALLBACK(HWND hwnd, uint32 uMsg, LPARAM lParam, LPARAM lpData);
		public function HRESULT LPFNDFMCALLBACK(IShellFolder* psf, HWND hwnd, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function HRESULT LPFNVIEWCALLBACK(IShellView* psvOuter, IShellFolder* psf, HWND hwndMain, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function HRESULT PFNCANSHAREFOLDERW(PWSTR pszPath);
		public function HRESULT PFNSHOWSHAREFOLDERUIW(HWND hwndParent, PWSTR pszPath);
		public function HRESULT DLLGETVERSIONPROC(DLLVERSIONINFO* param0);
		public function int32 APPLET_PROC(HWND hwndCpl, uint32 msg, LPARAM lParam1, LPARAM lParam2);
		public function void PAPPSTATE_CHANGE_ROUTINE(BOOLEAN Quiesced, void* Context);
		public function void PAPPCONSTRAIN_CHANGE_ROUTINE(BOOLEAN Constrained, void* Context);
		
		// --- Structs ---
		
		[CRepr]
		public struct _APPSTATE_REGISTRATION
		{
		}
		[CRepr]
		public struct _APPCONSTRAIN_REGISTRATION
		{
		}
		[CRepr]
		public struct APPCATEGORYINFO
		{
			public uint32 Locale;
			public PWSTR pszDescription;
			public Guid AppCategoryId;
		}
		[CRepr]
		public struct APPCATEGORYINFOLIST
		{
			public uint32 cCategory;
			public APPCATEGORYINFO* pCategoryInfo;
		}
		[CRepr]
		public struct HELPINFO
		{
			public uint32 cbSize;
			public int32 iContextType;
			public int32 iCtrlId;
			public HANDLE hItemHandle;
			public uint dwContextId;
			public POINT MousePos;
		}
		[CRepr]
		public struct MULTIKEYHELPA
		{
			public uint32 mkSize;
			public CHAR mkKeylist;
			public CHAR[] szKeyphrase;
		}
		[CRepr]
		public struct MULTIKEYHELPW
		{
			public uint32 mkSize;
			public char16 mkKeylist;
			public char16[] szKeyphrase;
		}
		[CRepr]
		public struct HELPWININFOA
		{
			public int32 wStructSize;
			public int32 x;
			public int32 y;
			public int32 dx;
			public int32 dy;
			public int32 wMax;
			public CHAR[2] rgchMember;
		}
		[CRepr]
		public struct HELPWININFOW
		{
			public int32 wStructSize;
			public int32 x;
			public int32 y;
			public int32 dx;
			public int32 dy;
			public int32 wMax;
			public char16[2] rgchMember;
		}
		[CRepr]
		public struct CMINVOKECOMMANDINFO
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PSTR lpVerb;
			public PSTR lpParameters;
			public PSTR lpDirectory;
			public int32 nShow;
			public uint32 dwHotKey;
			public HANDLE hIcon;
		}
		[CRepr]
		public struct CMINVOKECOMMANDINFOEX
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PSTR lpVerb;
			public PSTR lpParameters;
			public PSTR lpDirectory;
			public int32 nShow;
			public uint32 dwHotKey;
			public HANDLE hIcon;
			public PSTR lpTitle;
			public PWSTR lpVerbW;
			public PWSTR lpParametersW;
			public PWSTR lpDirectoryW;
			public PWSTR lpTitleW;
			public POINT ptInvoke;
		}
		[CRepr]
		public struct CMINVOKECOMMANDINFOEX_REMOTE
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PSTR lpVerbString;
			public PSTR lpParameters;
			public PSTR lpDirectory;
			public int32 nShow;
			public uint32 dwHotKey;
			public PSTR lpTitle;
			public PWSTR lpVerbWString;
			public PWSTR lpParametersW;
			public PWSTR lpDirectoryW;
			public PWSTR lpTitleW;
			public POINT ptInvoke;
			public uint32 lpVerbInt;
			public uint32 lpVerbWInt;
		}
		[CRepr]
		public struct PERSIST_FOLDER_TARGET_INFO
		{
			public ITEMIDLIST* pidlTargetFolder;
			public char16[260] szTargetParsingName;
			public char16[260] szNetworkProvider;
			public uint32 dwAttributes;
			public int32 csidl;
		}
		[CRepr]
		public struct EXTRASEARCH
		{
			public Guid guidSearch;
			public char16[80] wszFriendlyName;
			public char16[2084] wszUrl;
		}
		[CRepr]
		public struct FOLDERSETTINGS
		{
			public uint32 ViewMode;
			public uint32 fFlags;
		}
		[CRepr]
		public struct SV2CVW2_PARAMS
		{
			public uint32 cbSize;
			public IShellView* psvPrev;
			public FOLDERSETTINGS* pfs;
			public IShellBrowser* psbOwner;
			public RECT* prcView;
			public Guid* pvid;
			public HWND hwndView;
		}
		[CRepr]
		public struct SORTCOLUMN
		{
			public PROPERTYKEY propkey;
			public SORTDIRECTION direction;
		}
		[CRepr]
		public struct CM_COLUMNINFO
		{
			public uint32 cbSize;
			public uint32 dwMask;
			public uint32 dwState;
			public uint32 uWidth;
			public uint32 uDefaultWidth;
			public uint32 uIdealWidth;
			public char16[80] wszName;
		}
		[CRepr]
		public struct SHELL_ITEM_RESOURCE
		{
			public Guid guidType;
			public char16[260] szName;
		}
		[CRepr]
		public struct CATEGORY_INFO
		{
			public CATEGORYINFO_FLAGS cif;
			public char16[260] wszName;
		}
		[CRepr]
		public struct SHDRAGIMAGE
		{
			public SIZE sizeDragImage;
			public POINT ptOffset;
			public HBITMAP hbmpDragImage;
			public uint32 crColorKey;
		}
		[CRepr]
		public struct DESKBANDINFO
		{
			public uint32 dwMask;
			public POINTL ptMinSize;
			public POINTL ptMaxSize;
			public POINTL ptIntegral;
			public POINTL ptActual;
			public char16[256] wszTitle;
			public uint32 dwModeFlags;
			public uint32 crBkgnd;
		}
		[CRepr]
		public struct THUMBBUTTON
		{
			public THUMBBUTTONMASK dwMask;
			public uint32 iId;
			public uint32 iBitmap;
			public HICON hIcon;
			public char16[260] szTip;
			public THUMBBUTTONFLAGS dwFlags;
		}
		[CRepr]
		public struct BANDSITEINFO
		{
			public uint32 dwMask;
			public uint32 dwState;
			public uint32 dwStyle;
		}
		[CRepr]
		public struct DELEGATEITEMID
		{
			public uint16 cbSize;
			public uint16 wOuter;
			public uint16 cbInner;
			public uint8[] rgb;
		}
		[CRepr]
		public struct SMDATA
		{
			public uint32 dwMask;
			public uint32 dwFlags;
			public HMENU hmenu;
			public HWND hwnd;
			public uint32 uId;
			public uint32 uIdParent;
			public uint32 uIdAncestor;
			public IUnknown* punk;
			public ITEMIDLIST* pidlFolder;
			public ITEMIDLIST* pidlItem;
			public IShellFolder* psf;
			public void* pvUserData;
		}
		[CRepr]
		public struct SMINFO
		{
			public uint32 dwMask;
			public uint32 dwType;
			public uint32 dwFlags;
			public int32 iIcon;
		}
		[CRepr]
		public struct SMCSHCHANGENOTIFYSTRUCT
		{
			public int32 lEvent;
			public ITEMIDLIST* pidl1;
			public ITEMIDLIST* pidl2;
		}
		[CRepr]
		public struct KNOWNFOLDER_DEFINITION
		{
			public KF_CATEGORY category;
			public PWSTR pszName;
			public PWSTR pszDescription;
			public Guid fidParent;
			public PWSTR pszRelativePath;
			public PWSTR pszParsingName;
			public PWSTR pszTooltip;
			public PWSTR pszLocalizedName;
			public PWSTR pszIcon;
			public PWSTR pszSecurity;
			public uint32 dwAttributes;
			public uint32 kfdFlags;
			public Guid ftidType;
		}
		[CRepr]
		public struct PREVIEWHANDLERFRAMEINFO
		{
			public HACCEL haccel;
			public uint32 cAccelEntries;
		}
		[CRepr]
		public struct BANNER_NOTIFICATION
		{
			public BANNER_NOTIFICATION_EVENT event;
			public PWSTR providerIdentity;
			public PWSTR contentId;
		}
		[CRepr]
		public struct NSTCCUSTOMDRAW
		{
			public IShellItem* psi;
			public uint32 uItemState;
			public uint32 nstcis;
			public PWSTR pszText;
			public int32 iImage;
			public HIMAGELIST himl;
			public int32 iLevel;
			public int32 iIndent;
		}
		[CRepr]
		public struct DATABLOCK_HEADER
		{
			public uint32 cbSize;
			public uint32 dwSignature;
		}
		[CRepr]
		public struct NT_CONSOLE_PROPS
		{
			public DATABLOCK_HEADER dbh;
			public uint16 wFillAttribute;
			public uint16 wPopupFillAttribute;
			public COORD dwScreenBufferSize;
			public COORD dwWindowSize;
			public COORD dwWindowOrigin;
			public uint32 nFont;
			public uint32 nInputBufferSize;
			public COORD dwFontSize;
			public uint32 uFontFamily;
			public uint32 uFontWeight;
			public char16[32] FaceName;
			public uint32 uCursorSize;
			public BOOL bFullScreen;
			public BOOL bQuickEdit;
			public BOOL bInsertMode;
			public BOOL bAutoPosition;
			public uint32 uHistoryBufferSize;
			public uint32 uNumberOfHistoryBuffers;
			public BOOL bHistoryNoDup;
			public uint32[16] ColorTable;
		}
		[CRepr]
		public struct NT_FE_CONSOLE_PROPS
		{
			public DATABLOCK_HEADER dbh;
			public uint32 uCodePage;
		}
		[CRepr]
		public struct EXP_DARWIN_LINK
		{
			public DATABLOCK_HEADER dbh;
			public CHAR[260] szDarwinID;
			public char16[260] szwDarwinID;
		}
		[CRepr]
		public struct EXP_SPECIAL_FOLDER
		{
			public uint32 cbSize;
			public uint32 dwSignature;
			public uint32 idSpecialFolder;
			public uint32 cbOffset;
		}
		[CRepr]
		public struct EXP_SZ_LINK
		{
			public uint32 cbSize;
			public uint32 dwSignature;
			public CHAR[260] szTarget;
			public char16[260] swzTarget;
		}
		[CRepr]
		public struct EXP_PROPERTYSTORAGE
		{
			public uint32 cbSize;
			public uint32 dwSignature;
			public uint8[] abPropertyStorage;
		}
		[CRepr]
		public struct SHFOLDERCUSTOMSETTINGS
		{
			public uint32 dwSize;
			public uint32 dwMask;
			public Guid* pvid;
			public PWSTR pszWebViewTemplate;
			public uint32 cchWebViewTemplate;
			public PWSTR pszWebViewTemplateVersion;
			public PWSTR pszInfoTip;
			public uint32 cchInfoTip;
			public Guid* pclsid;
			public uint32 dwFlags;
			public PWSTR pszIconFile;
			public uint32 cchIconFile;
			public int32 iIconIndex;
			public PWSTR pszLogo;
			public uint32 cchLogo;
		}
		[CRepr]
		public struct BROWSEINFOA
		{
			public HWND hwndOwner;
			public ITEMIDLIST* pidlRoot;
			public PSTR pszDisplayName;
			public PSTR lpszTitle;
			public uint32 ulFlags;
			public BFFCALLBACK lpfn;
			public LPARAM lParam;
			public int32 iImage;
		}
		[CRepr]
		public struct BROWSEINFOW
		{
			public HWND hwndOwner;
			public ITEMIDLIST* pidlRoot;
			public PWSTR pszDisplayName;
			public PWSTR lpszTitle;
			public uint32 ulFlags;
			public BFFCALLBACK lpfn;
			public LPARAM lParam;
			public int32 iImage;
		}
		[CRepr]
		public struct NRESARRAY
		{
			public uint32 cItems;
			public NETRESOURCEA[] nr;
		}
		[CRepr]
		public struct CIDA
		{
			public uint32 cidl;
			public uint32[] aoffset;
		}
		[CRepr]
		public struct FILEDESCRIPTORA
		{
			public uint32 dwFlags;
			public Guid clsid;
			public SIZE sizel;
			public POINTL pointl;
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
			public CHAR[260] cFileName;
		}
		[CRepr]
		public struct FILEDESCRIPTORW
		{
			public uint32 dwFlags;
			public Guid clsid;
			public SIZE sizel;
			public POINTL pointl;
			public uint32 dwFileAttributes;
			public FILETIME ftCreationTime;
			public FILETIME ftLastAccessTime;
			public FILETIME ftLastWriteTime;
			public uint32 nFileSizeHigh;
			public uint32 nFileSizeLow;
			public char16[260] cFileName;
		}
		[CRepr]
		public struct FILEGROUPDESCRIPTORA
		{
			public uint32 cItems;
			public FILEDESCRIPTORA[] fgd;
		}
		[CRepr]
		public struct FILEGROUPDESCRIPTORW
		{
			public uint32 cItems;
			public FILEDESCRIPTORW[] fgd;
		}
		[CRepr]
		public struct DROPFILES
		{
			public uint32 pFiles;
			public POINT pt;
			public BOOL fNC;
			public BOOL fWide;
		}
		[CRepr]
		public struct FILE_ATTRIBUTES_ARRAY
		{
			public uint32 cItems;
			public uint32 dwSumFileAttributes;
			public uint32 dwProductFileAttributes;
			public uint32[] rgdwFileAttributes;
		}
		[CRepr]
		public struct DROPDESCRIPTION
		{
			public DROPIMAGETYPE type;
			public char16[260] szMessage;
			public char16[260] szInsert;
		}
		[CRepr]
		public struct SHChangeNotifyEntry
		{
			public ITEMIDLIST* pidl;
			public BOOL fRecursive;
		}
		[CRepr]
		public struct SHARDAPPIDINFO
		{
			public IShellItem* psi;
			public PWSTR pszAppID;
		}
		[CRepr]
		public struct SHARDAPPIDINFOIDLIST
		{
			public ITEMIDLIST* pidl;
			public PWSTR pszAppID;
		}
		[CRepr]
		public struct SHARDAPPIDINFOLINK
		{
			public IShellLinkA* psl;
			public PWSTR pszAppID;
		}
		[CRepr]
		public struct SHChangeDWORDAsIDList
		{
			public uint16 cb;
			public uint32 dwItem1;
			public uint32 dwItem2;
			public uint16 cbZero;
		}
		[CRepr]
		public struct SHChangeUpdateImageIDList
		{
			public uint16 cb;
			public int32 iIconIndex;
			public int32 iCurIndex;
			public uint32 uFlags;
			public uint32 dwProcessID;
			public char16[260] szName;
			public uint16 cbZero;
		}
		[CRepr]
		public struct SHDESCRIPTIONID
		{
			public SHDID_ID dwDescriptionId;
			public Guid clsid;
		}
		[CRepr]
		public struct AUTO_SCROLL_DATA
		{
			public int32 iNextSample;
			public uint32 dwLastScroll;
			public BOOL bFull;
			public POINT[3] pts;
			public uint32[3] dwTimes;
		}
		[CRepr]
		public struct CABINETSTATE
		{
			public uint16 cLength;
			public uint16 nVersion;
			public int32 _bitfield;
			public uint32 fMenuEnumFilter;
		}
		[CRepr]
		public struct OPENASINFO
		{
			public PWSTR pcszFile;
			public PWSTR pcszClass;
			public OPEN_AS_INFO_FLAGS oaifInFlags;
		}
		[CRepr]
		public struct QCMINFO_IDMAP_PLACEMENT
		{
			public uint32 id;
			public uint32 fFlags;
		}
		[CRepr]
		public struct QCMINFO_IDMAP
		{
			public uint32 nMaxIds;
			public QCMINFO_IDMAP_PLACEMENT[] pIdList;
		}
		[CRepr]
		public struct QCMINFO
		{
			public HMENU hmenu;
			public uint32 indexMenu;
			public uint32 idCmdFirst;
			public uint32 idCmdLast;
			public QCMINFO_IDMAP* pIdMap;
		}
		[CRepr]
		public struct DETAILSINFO
		{
			public ITEMIDLIST* pidl;
			public int32 fmt;
			public int32 cxChar;
			public STRRET str;
			public int32 iImage;
		}
		[CRepr]
		public struct SFVM_PROPPAGE_DATA
		{
			public uint32 dwReserved;
			public LPFNSVADDPROPSHEETPAGE pfn;
			public LPARAM lParam;
		}
		[CRepr]
		public struct SFVM_HELPTOPIC_DATA
		{
			public char16[260] wszHelpFile;
			public char16[260] wszHelpTopic;
		}
		[CRepr]
		public struct ITEMSPACING
		{
			public int32 cxSmall;
			public int32 cySmall;
			public int32 cxLarge;
			public int32 cyLarge;
		}
		[CRepr]
		public struct SFV_CREATE
		{
			public uint32 cbSize;
			public IShellFolder* pshf;
			public IShellView* psvOuter;
			public IShellFolderViewCB* psfvcb;
		}
		[CRepr]
		public struct DEFCONTEXTMENU
		{
			public HWND hwnd;
			public IContextMenuCB* pcmcb;
			public ITEMIDLIST* pidlFolder;
			public IShellFolder* psf;
			public uint32 cidl;
			public ITEMIDLIST** apidl;
			public IUnknown* punkAssociationInfo;
			public uint32 cKeys;
			public HKEY* aKeys;
		}
		[CRepr]
		public struct DFMICS
		{
			public uint32 cbSize;
			public uint32 fMask;
			public LPARAM lParam;
			public uint32 idCmdFirst;
			public uint32 idDefMax;
			public CMINVOKECOMMANDINFO* pici;
			public IUnknown* punkSite;
		}
		[CRepr]
		public struct CSFV
		{
			public uint32 cbSize;
			public IShellFolder* pshf;
			public IShellView* psvOuter;
			public ITEMIDLIST* pidl;
			public int32 lEvents;
			public LPFNVIEWCALLBACK pfnCallback;
			public FOLDERVIEWMODE fvm;
		}
		[CRepr]
		public struct SHELLSTATEA
		{
			public int32 _bitfield1;
			public uint32 dwWin95Unused;
			public uint32 uWin95Unused;
			public int32 lParamSort;
			public int32 iSortDirection;
			public uint32 version;
			public uint32 uNotUsed;
			public int32 _bitfield2;
		}
		[CRepr]
		public struct SHELLSTATEW
		{
			public int32 _bitfield1;
			public uint32 dwWin95Unused;
			public uint32 uWin95Unused;
			public int32 lParamSort;
			public int32 iSortDirection;
			public uint32 version;
			public uint32 uNotUsed;
			public int32 _bitfield2;
		}
		[CRepr]
		public struct SHELLFLAGSTATE
		{
			public int32 _bitfield;
		}
		[CRepr]
		public struct BANDINFOSFB
		{
			public uint32 dwMask;
			public uint32 dwStateMask;
			public uint32 dwState;
			public uint32 crBkgnd;
			public uint32 crBtnLt;
			public uint32 crBtnDk;
			public uint16 wViewMode;
			public uint16 wAlign;
			public IShellFolder* psf;
			public ITEMIDLIST* pidl;
		}
		[CRepr]
		public struct SHCOLUMNINFO
		{
			public PROPERTYKEY scid;
			public uint16 vt;
			public uint32 fmt;
			public uint32 cChars;
			public uint32 csFlags;
			public char16[80] wszTitle;
			public char16[128] wszDescription;
		}
		[CRepr]
		public struct SHCOLUMNINIT
		{
			public uint32 dwFlags;
			public uint32 dwReserved;
			public char16[260] wszFolder;
		}
		[CRepr]
		public struct SHCOLUMNDATA
		{
			public uint32 dwFlags;
			public uint32 dwFileAttributes;
			public uint32 dwReserved;
			public PWSTR pwszExt;
			public char16[260] wszFile;
		}
		[CRepr]
		public struct SHChangeProductKeyAsIDList
		{
			public uint16 cb;
			public char16[39] wszProductKey;
			public uint16 cbZero;
		}
		[CRepr]
		public struct TBINFO
		{
			public uint32 cbuttons;
			public uint32 uFlags;
		}
		[CRepr]
		public struct SFV_SETITEMPOS
		{
			public ITEMIDLIST* pidl;
			public POINT pt;
		}
		[CRepr]
		public struct AASHELLMENUFILENAME
		{
			public int16 cbTotal;
			public uint8[12] rgbReserved;
			public char16[] szFileName;
		}
		[CRepr]
		public struct AASHELLMENUITEM
		{
			public void* lpReserved1;
			public int32 iReserved;
			public uint32 uiReserved;
			public AASHELLMENUFILENAME* lpName;
			public PWSTR psz;
		}
		[CRepr]
		public struct DRAGINFOA
		{
			public uint32 uSize;
			public POINT pt;
			public BOOL fNC;
			public PSTR lpFileList;
			public uint32 grfKeyState;
		}
		[CRepr]
		public struct DRAGINFOW
		{
			public uint32 uSize;
			public POINT pt;
			public BOOL fNC;
			public PWSTR lpFileList;
			public uint32 grfKeyState;
		}
		[CRepr]
		public struct APPBARDATA
		{
			public uint32 cbSize;
			public HWND hWnd;
			public uint32 uCallbackMessage;
			public uint32 uEdge;
			public RECT rc;
			public LPARAM lParam;
		}
		[CRepr]
		public struct SHFILEOPSTRUCTA
		{
			public HWND hwnd;
			public uint32 wFunc;
			public int8* pFrom;
			public int8* pTo;
			public uint16 fFlags;
			public BOOL fAnyOperationsAborted;
			public void* hNameMappings;
			public PSTR lpszProgressTitle;
		}
		[CRepr]
		public struct SHFILEOPSTRUCTW
		{
			public HWND hwnd;
			public uint32 wFunc;
			public PWSTR pFrom;
			public PWSTR pTo;
			public uint16 fFlags;
			public BOOL fAnyOperationsAborted;
			public void* hNameMappings;
			public PWSTR lpszProgressTitle;
		}
		[CRepr]
		public struct SHNAMEMAPPINGA
		{
			public PSTR pszOldPath;
			public PSTR pszNewPath;
			public int32 cchOldPath;
			public int32 cchNewPath;
		}
		[CRepr]
		public struct SHNAMEMAPPINGW
		{
			public PWSTR pszOldPath;
			public PWSTR pszNewPath;
			public int32 cchOldPath;
			public int32 cchNewPath;
		}
		[CRepr]
		public struct SHELLEXECUTEINFOA
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PSTR lpVerb;
			public PSTR lpFile;
			public PSTR lpParameters;
			public PSTR lpDirectory;
			public int32 nShow;
			public HINSTANCE hInstApp;
			public void* lpIDList;
			public PSTR lpClass;
			public HKEY hkeyClass;
			public uint32 dwHotKey;
			public _Anonymous_e__Union Anonymous;
			public HANDLE hProcess;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HANDLE hIcon;
				public HANDLE hMonitor;
			}
		}
		[CRepr]
		public struct SHELLEXECUTEINFOW
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PWSTR lpVerb;
			public PWSTR lpFile;
			public PWSTR lpParameters;
			public PWSTR lpDirectory;
			public int32 nShow;
			public HINSTANCE hInstApp;
			public void* lpIDList;
			public PWSTR lpClass;
			public HKEY hkeyClass;
			public uint32 dwHotKey;
			public _Anonymous_e__Union Anonymous;
			public HANDLE hProcess;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public HANDLE hIcon;
				public HANDLE hMonitor;
			}
		}
		[CRepr]
		public struct SHCREATEPROCESSINFOW
		{
			public uint32 cbSize;
			public uint32 fMask;
			public HWND hwnd;
			public PWSTR pszFile;
			public PWSTR pszParameters;
			public PWSTR pszCurrentDirectory;
			public HANDLE hUserToken;
			public SECURITY_ATTRIBUTES* lpProcessAttributes;
			public SECURITY_ATTRIBUTES* lpThreadAttributes;
			public BOOL bInheritHandles;
			public uint32 dwCreationFlags;
			public STARTUPINFOW* lpStartupInfo;
			public PROCESS_INFORMATION* lpProcessInformation;
		}
		[CRepr]
		public struct ASSOCIATIONELEMENT
		{
			public ASSOCCLASS ac;
			public HKEY hkClass;
			public PWSTR pszClass;
		}
		[CRepr]
		public struct SHQUERYRBINFO
		{
			public uint32 cbSize;
			public int64 i64Size;
			public int64 i64NumItems;
		}
		[CRepr]
		public struct NOTIFYICONDATAA
		{
			public uint32 cbSize;
			public HWND hWnd;
			public uint32 uID;
			public NOTIFY_ICON_DATA_FLAGS uFlags;
			public uint32 uCallbackMessage;
			public HICON hIcon;
			public CHAR[128] szTip;
			public uint32 dwState;
			public uint32 dwStateMask;
			public CHAR[256] szInfo;
			public _Anonymous_e__Union Anonymous;
			public CHAR[64] szInfoTitle;
			public uint32 dwInfoFlags;
			public Guid guidItem;
			public HICON hBalloonIcon;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 uTimeout;
				public uint32 uVersion;
			}
		}
		[CRepr]
		public struct NOTIFYICONDATAW
		{
			public uint32 cbSize;
			public HWND hWnd;
			public uint32 uID;
			public NOTIFY_ICON_DATA_FLAGS uFlags;
			public uint32 uCallbackMessage;
			public HICON hIcon;
			public char16[128] szTip;
			public uint32 dwState;
			public uint32 dwStateMask;
			public char16[256] szInfo;
			public _Anonymous_e__Union Anonymous;
			public char16[64] szInfoTitle;
			public uint32 dwInfoFlags;
			public Guid guidItem;
			public HICON hBalloonIcon;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint32 uTimeout;
				public uint32 uVersion;
			}
		}
		[CRepr]
		public struct NOTIFYICONIDENTIFIER
		{
			public uint32 cbSize;
			public HWND hWnd;
			public uint32 uID;
			public Guid guidItem;
		}
		[CRepr]
		public struct SHFILEINFOA
		{
			public HICON hIcon;
			public int32 iIcon;
			public uint32 dwAttributes;
			public CHAR[260] szDisplayName;
			public CHAR[80] szTypeName;
		}
		[CRepr]
		public struct SHFILEINFOW
		{
			public HICON hIcon;
			public int32 iIcon;
			public uint32 dwAttributes;
			public char16[260] szDisplayName;
			public char16[80] szTypeName;
		}
		[CRepr]
		public struct SHSTOCKICONINFO
		{
			public uint32 cbSize;
			public HICON hIcon;
			public int32 iSysImageIndex;
			public int32 iIcon;
			public char16[260] szPath;
		}
		[CRepr]
		public struct OPEN_PRINTER_PROPS_INFOA
		{
			public uint32 dwSize;
			public PSTR pszSheetName;
			public uint32 uSheetIndex;
			public uint32 dwFlags;
			public BOOL bModal;
		}
		[CRepr]
		public struct OPEN_PRINTER_PROPS_INFOW
		{
			public uint32 dwSize;
			public PWSTR pszSheetName;
			public uint32 uSheetIndex;
			public uint32 dwFlags;
			public BOOL bModal;
		}
		[CRepr]
		public struct NC_ADDRESS
		{
			public NET_ADDRESS_INFO* pAddrInfo;
			public uint16 PortNumber;
			public uint8 PrefixLength;
			
			[CRepr]
			public struct NET_ADDRESS_INFO
			{
			}
		}
		[CRepr]
		public struct PARSEDURLA
		{
			public uint32 cbSize;
			public PSTR pszProtocol;
			public uint32 cchProtocol;
			public PSTR pszSuffix;
			public uint32 cchSuffix;
			public uint32 nScheme;
		}
		[CRepr]
		public struct PARSEDURLW
		{
			public uint32 cbSize;
			public PWSTR pszProtocol;
			public uint32 cchProtocol;
			public PWSTR pszSuffix;
			public uint32 cchSuffix;
			public uint32 nScheme;
		}
		[CRepr]
		public struct QITAB
		{
			public Guid* piid;
			public uint32 dwOffset;
		}
		[CRepr]
		public struct DLLVERSIONINFO
		{
			public uint32 cbSize;
			public uint32 dwMajorVersion;
			public uint32 dwMinorVersion;
			public uint32 dwBuildNumber;
			public uint32 dwPlatformID;
		}
		[CRepr]
		public struct DLLVERSIONINFO2
		{
			public DLLVERSIONINFO info1;
			public uint32 dwFlags;
			public uint64 ullVersion;
		}
		[CRepr]
		public struct APPINFODATA
		{
			public uint32 cbSize;
			public uint32 dwMask;
			public PWSTR pszDisplayName;
			public PWSTR pszVersion;
			public PWSTR pszPublisher;
			public PWSTR pszProductID;
			public PWSTR pszRegisteredOwner;
			public PWSTR pszRegisteredCompany;
			public PWSTR pszLanguage;
			public PWSTR pszSupportUrl;
			public PWSTR pszSupportTelephone;
			public PWSTR pszHelpLink;
			public PWSTR pszInstallLocation;
			public PWSTR pszInstallSource;
			public PWSTR pszInstallDate;
			public PWSTR pszContact;
			public PWSTR pszComments;
			public PWSTR pszImage;
			public PWSTR pszReadmeUrl;
			public PWSTR pszUpdateInfoUrl;
		}
		[CRepr]
		public struct SLOWAPPINFO
		{
			public uint64 ullSize;
			public FILETIME ftLastUsed;
			public int32 iTimesUsed;
			public PWSTR pszImage;
		}
		[CRepr]
		public struct PUBAPPINFO
		{
			public uint32 cbSize;
			public uint32 dwMask;
			public PWSTR pszSource;
			public SYSTEMTIME stAssigned;
			public SYSTEMTIME stPublished;
			public SYSTEMTIME stScheduled;
			public SYSTEMTIME stExpire;
		}
		[CRepr]
		public struct CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR
		{
			public uint32 dwFieldID;
			public CREDENTIAL_PROVIDER_FIELD_TYPE cpft;
			public PWSTR pszLabel;
			public Guid guidFieldType;
		}
		[CRepr]
		public struct CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION
		{
			public uint32 ulAuthenticationPackage;
			public Guid clsidCredentialProvider;
			public uint32 cbSerialization;
			public uint8* rgbSerialization;
		}
		[CRepr]
		public struct SYNCMGR_CONFLICT_ID_INFO
		{
			public BYTE_BLOB* pblobID;
			public BYTE_BLOB* pblobExtra;
		}
		[CRepr]
		public struct CONFIRM_CONFLICT_ITEM
		{
			public IShellItem2* pShellItem;
			public PWSTR pszOriginalName;
			public PWSTR pszAlternateName;
			public PWSTR pszLocationShort;
			public PWSTR pszLocationFull;
			public SYNCMGR_CONFLICT_ITEM_TYPE nType;
		}
		[CRepr]
		public struct CONFIRM_CONFLICT_RESULT_INFO
		{
			public PWSTR pszNewName;
			public uint32 iItemIndex;
		}
		[CRepr]
		public struct WTS_THUMBNAILID
		{
			public uint8[16] rgbKey;
		}
		[CRepr]
		public struct SYNCMGRPROGRESSITEM
		{
			public uint32 cbSize;
			public uint32 mask;
			public PWSTR lpcStatusText;
			public uint32 dwStatusType;
			public int32 iProgValue;
			public int32 iMaxValue;
		}
		[CRepr]
		public struct SYNCMGRLOGERRORINFO
		{
			public uint32 cbSize;
			public uint32 mask;
			public uint32 dwSyncMgrErrorFlags;
			public Guid ErrorID;
			public Guid ItemID;
		}
		[CRepr]
		public struct SYNCMGRITEM
		{
			public uint32 cbSize;
			public uint32 dwFlags;
			public Guid ItemID;
			public uint32 dwItemState;
			public HICON hIcon;
			public char16[128] wszItemName;
			public FILETIME ftLastUpdate;
		}
		[CRepr]
		public struct SYNCMGRHANDLERINFO
		{
			public uint32 cbSize;
			public HICON hIcon;
			public uint32 SyncMgrHandlerFlags;
			public char16[32] wszHandlerName;
		}
		[CRepr]
		public struct WINDOWDATA
		{
			public uint32 dwWindowID;
			public uint32 uiCP;
			public ITEMIDLIST* pidl;
			public PWSTR lpszUrl;
			public PWSTR lpszUrlLocation;
			public PWSTR lpszTitle;
		}
		[CRepr]
		public struct HLITEM
		{
			public uint32 uHLID;
			public PWSTR pwzFriendlyName;
		}
		[CRepr]
		public struct HLTBINFO
		{
			public uint32 uDockType;
			public RECT rcTbPos;
		}
		[CRepr]
		public struct HLBWINFO
		{
			public uint32 cbSize;
			public uint32 grfHLBWIF;
			public RECT rcFramePos;
			public RECT rcDocPos;
			public HLTBINFO hltbinfo;
		}
		[CRepr]
		public struct BASEBROWSERDATAXP
		{
			public HWND _hwnd;
			public ITravelLog* _ptl;
			public IHlinkFrame* _phlf;
			public IWebBrowser2* _pautoWB2;
			public IExpDispSupportXP* _pautoEDS;
			public IShellService* _pautoSS;
			public int32 _eSecureLockIcon;
			public uint32 _bitfield;
			public uint32 _uActivateState;
			public ITEMIDLIST* _pidlViewState;
			public IOleCommandTarget* _pctView;
			public ITEMIDLIST* _pidlCur;
			public IShellView* _psv;
			public IShellFolder* _psf;
			public HWND _hwndView;
			public PWSTR _pszTitleCur;
			public ITEMIDLIST* _pidlPending;
			public IShellView* _psvPending;
			public IShellFolder* _psfPending;
			public HWND _hwndViewPending;
			public PWSTR _pszTitlePending;
			public BOOL _fIsViewMSHTML;
			public BOOL _fPrivacyImpacted;
			public Guid _clsidView;
			public Guid _clsidViewPending;
			public HWND _hwndFrame;
		}
		[CRepr]
		public struct BASEBROWSERDATALH
		{
			public HWND _hwnd;
			public ITravelLog* _ptl;
			public IHlinkFrame* _phlf;
			public IWebBrowser2* _pautoWB2;
			public IExpDispSupport* _pautoEDS;
			public IShellService* _pautoSS;
			public int32 _eSecureLockIcon;
			public uint32 _bitfield;
			public uint32 _uActivateState;
			public ITEMIDLIST* _pidlViewState;
			public IOleCommandTarget* _pctView;
			public ITEMIDLIST* _pidlCur;
			public IShellView* _psv;
			public IShellFolder* _psf;
			public HWND _hwndView;
			public PWSTR _pszTitleCur;
			public ITEMIDLIST* _pidlPending;
			public IShellView* _psvPending;
			public IShellFolder* _psfPending;
			public HWND _hwndViewPending;
			public PWSTR _pszTitlePending;
			public BOOL _fIsViewMSHTML;
			public BOOL _fPrivacyImpacted;
			public Guid _clsidView;
			public Guid _clsidViewPending;
			public HWND _hwndFrame;
			public int32 _lPhishingFilterStatus;
		}
		[CRepr]
		public struct FOLDERSETDATA
		{
			public FOLDERSETTINGS _fs;
			public Guid _vidRestore;
			public uint32 _dwViewPriority;
		}
		[CRepr]
		public struct TOOLBARITEM
		{
			public IDockingWindow* ptbar;
			public RECT rcBorderTool;
			public PWSTR pwszItem;
			public BOOL fShow;
			public HMONITOR hMon;
		}
		[CRepr]
		public struct CPLINFO
		{
			public int32 idIcon;
			public int32 idName;
			public int32 idInfo;
			public int lData;
		}
		[CRepr]
		public struct NEWCPLINFOA
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwHelpContext;
			public int lData;
			public HICON hIcon;
			public CHAR[32] szName;
			public CHAR[64] szInfo;
			public CHAR[128] szHelpFile;
		}
		[CRepr]
		public struct NEWCPLINFOW
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public uint32 dwHelpContext;
			public int lData;
			public HICON hIcon;
			public char16[32] szName;
			public char16[64] szInfo;
			public char16[128] szHelpFile;
		}
		[CRepr]
		public struct PROFILEINFOA
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public PSTR lpUserName;
			public PSTR lpProfilePath;
			public PSTR lpDefaultPath;
			public PSTR lpServerName;
			public PSTR lpPolicyPath;
			public HANDLE hProfile;
		}
		[CRepr]
		public struct PROFILEINFOW
		{
			public uint32 dwSize;
			public uint32 dwFlags;
			public PWSTR lpUserName;
			public PWSTR lpProfilePath;
			public PWSTR lpDefaultPath;
			public PWSTR lpServerName;
			public PWSTR lpPolicyPath;
			public HANDLE hProfile;
		}
		[CRepr]
		public struct urlinvokecommandinfoA
		{
			public uint32 dwcbSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public PSTR pcszVerb;
		}
		[CRepr]
		public struct urlinvokecommandinfoW
		{
			public uint32 dwcbSize;
			public uint32 dwFlags;
			public HWND hwndParent;
			public PWSTR pcszVerb;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_QueryCancelAutoPlay = .(0x331f1768, 0x05a9, 0x4ddd, 0xb8, 0x6e, 0xda, 0xe3, 0x4d, 0xdc, 0x99, 0x8a);
		public const Guid CLSID_TimeCategorizer = .(0x3bb4118f, 0xddfd, 0x4d30, 0xa3, 0x48, 0x9f, 0xb5, 0xd6, 0xbf, 0x1a, 0xfe);
		public const Guid CLSID_AlphabeticalCategorizer = .(0x3c2654c6, 0x7372, 0x4f6b, 0xb3, 0x10, 0x55, 0xd6, 0x12, 0x8f, 0x49, 0xd2);
		public const Guid CLSID_MergedCategorizer = .(0x8e827c11, 0x33e7, 0x4bc1, 0xb2, 0x42, 0x8c, 0xd9, 0xa1, 0xc2, 0xb3, 0x04);
		public const Guid CLSID_ImageProperties = .(0x7ab770c7, 0x0e23, 0x4d7a, 0x8a, 0xa2, 0x19, 0xbf, 0xad, 0x47, 0x98, 0x29);
		public const Guid CLSID_CDBurn = .(0xfbeb8a05, 0xbeee, 0x4442, 0x80, 0x4e, 0x40, 0x9d, 0x6c, 0x45, 0x15, 0xe9);
		public const Guid CLSID_StartMenuPin = .(0xa2a9545d, 0xa0c2, 0x42b4, 0x97, 0x08, 0xa0, 0xb2, 0xba, 0xdd, 0x77, 0xc8);
		public const Guid CLSID_WebWizardHost = .(0xc827f149, 0x55c1, 0x4d28, 0x93, 0x5e, 0x57, 0xe4, 0x7c, 0xae, 0xd9, 0x73);
		public const Guid CLSID_PublishDropTarget = .(0xcc6eeffb, 0x43f6, 0x46c5, 0x96, 0x19, 0x51, 0xd5, 0x71, 0x96, 0x7f, 0x7d);
		public const Guid CLSID_PublishingWizard = .(0x6b33163c, 0x76a5, 0x4b6c, 0xbf, 0x21, 0x45, 0xde, 0x9c, 0xd5, 0x03, 0xa1);
		public const Guid CLSID_InternetPrintOrdering = .(0xadd36aa8, 0x751a, 0x4579, 0xa2, 0x66, 0xd6, 0x6f, 0x52, 0x02, 0xcc, 0xbb);
		public const Guid CLSID_FolderViewHost = .(0x20b1cb23, 0x6968, 0x4eb9, 0xb7, 0xd4, 0xa6, 0x6d, 0x00, 0xd0, 0x7c, 0xee);
		public const Guid CLSID_ExplorerBrowser = .(0x71f96385, 0xddd6, 0x48d3, 0xa0, 0xc1, 0xae, 0x06, 0xe8, 0xb0, 0x55, 0xfb);
		public const Guid CLSID_ImageRecompress = .(0x6e33091c, 0xd2f8, 0x4740, 0xb5, 0x5e, 0x2e, 0x11, 0xd1, 0x47, 0x7a, 0x2c);
		public const Guid CLSID_TrayBandSiteService = .(0xf60ad0a0, 0xe5e1, 0x45cb, 0xb5, 0x1a, 0xe1, 0x5b, 0x9f, 0x8b, 0x29, 0x34);
		public const Guid CLSID_TrayDeskBand = .(0xe6442437, 0x6c68, 0x4f52, 0x94, 0xdd, 0x2c, 0xfe, 0xd2, 0x67, 0xef, 0xb9);
		public const Guid CLSID_AttachmentServices = .(0x4125dd96, 0xe03a, 0x4103, 0x8f, 0x70, 0xe0, 0x59, 0x7d, 0x80, 0x3b, 0x9c);
		public const Guid CLSID_DocPropShellExtension = .(0x883373c3, 0xbf89, 0x11d1, 0xbe, 0x35, 0x08, 0x00, 0x36, 0xb1, 0x1a, 0x03);
		public const Guid CLSID_FSCopyHandler = .(0xd197380a, 0x0a79, 0x4dc8, 0xa0, 0x33, 0xed, 0x88, 0x2c, 0x2f, 0xa1, 0x4b);
		public const Guid CLSID_PreviousVersions = .(0x596ab062, 0xb4d2, 0x4215, 0x9f, 0x74, 0xe9, 0x10, 0x9b, 0x0a, 0x81, 0x53);
		public const Guid CLSID_NamespaceTreeControl = .(0xae054212, 0x3535, 0x4430, 0x83, 0xed, 0xd5, 0x01, 0xaa, 0x66, 0x80, 0xe6);
		public const Guid CLSID_IENamespaceTreeControl = .(0xace52d03, 0xe5cd, 0x4b20, 0x82, 0xff, 0xe7, 0x1b, 0x11, 0xbe, 0xae, 0x1d);
		public const Guid CLSID_ApplicationAssociationRegistrationUI = .(0x1968106d, 0xf3b5, 0x44cf, 0x89, 0x0e, 0x11, 0x6f, 0xcb, 0x9e, 0xce, 0xf1);
		public const Guid CLSID_DesktopGadget = .(0x924ccc1b, 0x6562, 0x4c85, 0x86, 0x57, 0xd1, 0x77, 0x92, 0x52, 0x22, 0xb6);
		public const Guid CLSID_AccessibilityDockingService = .(0x29ce1d46, 0xb481, 0x4aa0, 0xa0, 0x8a, 0xd3, 0xeb, 0xc8, 0xac, 0xa4, 0x02);
		public const Guid CLSID_ExecuteFolder = .(0x11dbb47c, 0xa525, 0x400b, 0x9e, 0x80, 0xa5, 0x46, 0x15, 0xa0, 0x90, 0xc0);
		public const Guid CLSID_VirtualDesktopManager = .(0xaa509086, 0x5ca9, 0x4c25, 0x8f, 0x95, 0x58, 0x9d, 0x3c, 0x07, 0xb4, 0x8a);
		public const Guid CLSID_StorageProviderBanners = .(0x7ccdf9f4, 0xe576, 0x455a, 0x8b, 0xc7, 0xf6, 0xec, 0x68, 0xd6, 0xf0, 0x63);
		public const Guid CLSID_DesktopWallpaper = .(0xc2cf3110, 0x460e, 0x4fc1, 0xb9, 0xd0, 0x8a, 0x1c, 0x0c, 0x9c, 0xc4, 0xbd);
		public const Guid CLSID_ShellDesktop = .(0x00021400, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CLSID_ShellFSFolder = .(0xf3364ba0, 0x65b9, 0x11ce, 0xa9, 0xba, 0x00, 0xaa, 0x00, 0x4a, 0xe8, 0x37);
		public const Guid CLSID_NetworkPlaces = .(0x208d2c60, 0x3aea, 0x1069, 0xa2, 0xd7, 0x08, 0x00, 0x2b, 0x30, 0x30, 0x9d);
		public const Guid CLSID_ShellLink = .(0x00021401, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CLSID_DriveSizeCategorizer = .(0x94357b53, 0xca29, 0x4b78, 0x83, 0xae, 0xe8, 0xfe, 0x74, 0x09, 0x13, 0x4f);
		public const Guid CLSID_DriveTypeCategorizer = .(0xb0a8f3cf, 0x4333, 0x4bab, 0x88, 0x73, 0x1c, 0xcb, 0x1c, 0xad, 0xa4, 0x8b);
		public const Guid CLSID_FreeSpaceCategorizer = .(0xb5607793, 0x24ac, 0x44c7, 0x82, 0xe2, 0x83, 0x17, 0x26, 0xaa, 0x6c, 0xb7);
		public const Guid CLSID_SizeCategorizer = .(0x55d7b852, 0xf6d1, 0x42f2, 0xaa, 0x75, 0x87, 0x28, 0xa1, 0xb2, 0xd2, 0x64);
		public const Guid CLSID_PropertiesUI = .(0xd912f8cf, 0x0396, 0x4915, 0x88, 0x4e, 0xfb, 0x42, 0x5d, 0x32, 0x94, 0x3b);
		public const Guid CLSID_UserNotification = .(0x0010890e, 0x8789, 0x413c, 0xad, 0xbc, 0x48, 0xf5, 0xb5, 0x11, 0xb3, 0xaf);
		public const Guid CLSID_TaskbarList = .(0x56fdf344, 0xfd6d, 0x11d0, 0x95, 0x8a, 0x00, 0x60, 0x97, 0xc9, 0xa0, 0x90);
		public const Guid CLSID_ShellItem = .(0x9ac9fbe1, 0xe0a2, 0x4ad6, 0xb4, 0xee, 0xe2, 0x12, 0x01, 0x3e, 0xa9, 0x17);
		public const Guid CLSID_NamespaceWalker = .(0x72eb61e0, 0x8672, 0x4303, 0x91, 0x75, 0xf2, 0xe4, 0xc6, 0x8b, 0x2e, 0x7c);
		public const Guid CLSID_FileOperation = .(0x3ad05575, 0x8857, 0x4850, 0x92, 0x77, 0x11, 0xb8, 0x5b, 0xdb, 0x8e, 0x09);
		public const Guid CLSID_FileOpenDialog = .(0xdc1c5a9c, 0xe88a, 0x4dde, 0xa5, 0xa1, 0x60, 0xf8, 0x2a, 0x20, 0xae, 0xf7);
		public const Guid CLSID_FileSaveDialog = .(0xc0b4e2f3, 0xba21, 0x4773, 0x8d, 0xba, 0x33, 0x5e, 0xc9, 0x46, 0xeb, 0x8b);
		public const Guid CLSID_KnownFolderManager = .(0x4df0c730, 0xdf9d, 0x4ae3, 0x91, 0x53, 0xaa, 0x6b, 0x82, 0xe9, 0x79, 0x5a);
		public const Guid CLSID_SharingConfigurationManager = .(0x49f371e1, 0x8c5c, 0x4d9c, 0x9a, 0x3b, 0x54, 0xa6, 0x82, 0x7f, 0x51, 0x3c);
		public const Guid CLSID_NetworkConnections = .(0x7007acc7, 0x3202, 0x11d1, 0xaa, 0xd2, 0x00, 0x80, 0x5f, 0xc1, 0x27, 0x0e);
		public const Guid CLSID_ScheduledTasks = .(0xd6277990, 0x4c6a, 0x11cf, 0x8d, 0x87, 0x00, 0xaa, 0x00, 0x60, 0xf5, 0xbf);
		public const Guid CLSID_ApplicationAssociationRegistration = .(0x591209c7, 0x767b, 0x42b2, 0x9f, 0xba, 0x44, 0xee, 0x46, 0x15, 0xf2, 0xc7);
		public const Guid CLSID_SearchFolderItemFactory = .(0x14010e02, 0xbbbd, 0x41f0, 0x88, 0xe3, 0xed, 0xa3, 0x71, 0x21, 0x65, 0x84);
		public const Guid CLSID_OpenControlPanel = .(0x06622d85, 0x6856, 0x4460, 0x8d, 0xe1, 0xa8, 0x19, 0x21, 0xb4, 0x1c, 0x4b);
		public const Guid CLSID_MailRecipient = .(0x9e56be60, 0xc50f, 0x11cf, 0x9a, 0x2c, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xce);
		public const Guid CLSID_NetworkExplorerFolder = .(0xf02c1a0d, 0xbe21, 0x4350, 0x88, 0xb0, 0x73, 0x67, 0xfc, 0x96, 0xef, 0x3c);
		public const Guid CLSID_DestinationList = .(0x77f10cf0, 0x3db5, 0x4966, 0xb5, 0x20, 0xb7, 0xc5, 0x4f, 0xd3, 0x5e, 0xd6);
		public const Guid CLSID_ApplicationDestinations = .(0x86c14003, 0x4d6b, 0x4ef3, 0xa7, 0xb4, 0x05, 0x06, 0x66, 0x3b, 0x2e, 0x68);
		public const Guid CLSID_ApplicationDocumentLists = .(0x86bec222, 0x30f2, 0x47e0, 0x9f, 0x25, 0x60, 0xd1, 0x1c, 0xd7, 0x5c, 0x28);
		public const Guid CLSID_HomeGroup = .(0xde77ba04, 0x3c92, 0x4d11, 0xa1, 0xa5, 0x42, 0x35, 0x2a, 0x53, 0xe0, 0xe3);
		public const Guid CLSID_ShellLibrary = .(0xd9b3211d, 0xe57f, 0x4426, 0xaa, 0xef, 0x30, 0xa8, 0x06, 0xad, 0xd3, 0x97);
		public const Guid CLSID_AppStartupLink = .(0x273eb5e7, 0x88b0, 0x4843, 0xbf, 0xef, 0xe2, 0xc8, 0x1d, 0x43, 0xaa, 0xe5);
		public const Guid CLSID_EnumerableObjectCollection = .(0x2d3468c1, 0x36a7, 0x43b6, 0xac, 0x24, 0xd3, 0xf0, 0x2f, 0xd9, 0x60, 0x7a);
		public const Guid CLSID_FrameworkInputPane = .(0xd5120aa3, 0x46ba, 0x44c5, 0x82, 0x2d, 0xca, 0x80, 0x92, 0xc1, 0xfc, 0x72);
		public const Guid CLSID_DefFolderMenu = .(0xc63382be, 0x7933, 0x48d0, 0x9a, 0xc8, 0x85, 0xfb, 0x46, 0xbe, 0x2f, 0xdd);
		public const Guid CLSID_AppVisibility = .(0x7e5fe3d9, 0x985f, 0x4908, 0x91, 0xf9, 0xee, 0x19, 0xf9, 0xfd, 0x15, 0x14);
		public const Guid CLSID_AppShellVerbHandler = .(0x4ed3a719, 0xcea8, 0x4bd9, 0x91, 0x0d, 0xe2, 0x52, 0xf9, 0x97, 0xaf, 0xc2);
		public const Guid CLSID_ExecuteUnknown = .(0xe44e9428, 0xbdbc, 0x4987, 0xa0, 0x99, 0x40, 0xdc, 0x8f, 0xd2, 0x55, 0xe7);
		public const Guid CLSID_PackageDebugSettings = .(0xb1aec16f, 0x2383, 0x4852, 0xb0, 0xe9, 0x8f, 0x0b, 0x1d, 0xc6, 0x6b, 0x4d);
		public const Guid CLSID_SuspensionDependencyManager = .(0x6b273fc5, 0x61fd, 0x4918, 0x95, 0xa2, 0xc3, 0xb5, 0xe9, 0xd7, 0xf5, 0x81);
		public const Guid CLSID_ApplicationActivationManager = .(0x45ba127d, 0x10a8, 0x46ea, 0x8a, 0xb7, 0x56, 0xea, 0x90, 0x78, 0x94, 0x3c);
		public const Guid CLSID_ApplicationDesignModeSettings = .(0x958a6fb5, 0xdcb2, 0x4faf, 0xaa, 0xfd, 0x7f, 0xb0, 0x54, 0xad, 0x1a, 0x3b);
		public const Guid CLSID_WebBrowser_V1 = .(0xeab22ac3, 0x30c1, 0x11cf, 0xa7, 0xeb, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
		public const Guid CLSID_WebBrowser = .(0x8856f961, 0x340a, 0x11d0, 0xa9, 0x6b, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
		public const Guid CLSID_InternetExplorer = .(0x0002df01, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		public const Guid CLSID_InternetExplorerMedium = .(0xd5e8041d, 0x920f, 0x45e9, 0xb8, 0xfb, 0xb1, 0xde, 0xb8, 0x2c, 0x6e, 0x5e);
		public const Guid CLSID_ShellBrowserWindow = .(0xc08afd90, 0xf2a1, 0x11d1, 0x84, 0x55, 0x00, 0xa0, 0xc9, 0x1f, 0x38, 0x80);
		public const Guid CLSID_ShellWindows = .(0x9ba05972, 0xf6a8, 0x11cf, 0xa4, 0x42, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
		public const Guid CLSID_ShellUIHelper = .(0x64ab4bb7, 0x111e, 0x11d1, 0x8f, 0x79, 0x00, 0xc0, 0x4f, 0xc2, 0xfb, 0xe1);
		public const Guid CLSID_ShellNameSpace = .(0x55136805, 0xb2de, 0x11d1, 0xb9, 0xf2, 0x00, 0xa0, 0xc9, 0x8b, 0xc5, 0x47);
		public const Guid CLSID_CScriptErrorList = .(0xefd01300, 0x160f, 0x11d2, 0xbb, 0x2e, 0x00, 0x80, 0x5f, 0xf7, 0xef, 0xca);
		public const Guid CLSID_ShellFolderViewOC = .(0x9ba05971, 0xf6a8, 0x11cf, 0xa4, 0x42, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
		public const Guid CLSID_ShellFolderItem = .(0x2fe352ea, 0xfd1f, 0x11d2, 0xb1, 0xf4, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
		public const Guid CLSID_ShellLinkObject = .(0x11219420, 0x1768, 0x11d1, 0x95, 0xbe, 0x00, 0x60, 0x97, 0x97, 0xea, 0x4f);
		public const Guid CLSID_ShellFolderView = .(0x62112aa1, 0xebe4, 0x11cf, 0xa5, 0xfb, 0x00, 0x20, 0xaf, 0xe7, 0x29, 0x2d);
		public const Guid CLSID_Shell = .(0x13709620, 0xc279, 0x11ce, 0xa4, 0x9e, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public const Guid CLSID_ShellDispatchInproc = .(0x0a89a860, 0xd7b1, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		public const Guid CLSID_FileSearchBand = .(0xc4ee31f3, 0x4768, 0x11d2, 0xbe, 0x5c, 0x00, 0xa0, 0xc9, 0xa8, 0x3d, 0xa1);
		public const Guid CLSID_PasswordCredentialProvider = .(0x60b78e88, 0xead8, 0x445c, 0x9c, 0xfd, 0x0b, 0x87, 0xf7, 0x4e, 0xa6, 0xcd);
		public const Guid CLSID_V1PasswordCredentialProvider = .(0x6f45dc1e, 0x5384, 0x457a, 0xbc, 0x13, 0x2c, 0xd8, 0x1b, 0x0d, 0x28, 0xed);
		public const Guid CLSID_PINLogonCredentialProvider = .(0xcb82ea12, 0x9f71, 0x446d, 0x89, 0xe1, 0x8d, 0x09, 0x24, 0xe1, 0x25, 0x6e);
		public const Guid CLSID_NPCredentialProvider = .(0x3dd6bec0, 0x8193, 0x4ffe, 0xae, 0x25, 0xe0, 0x8e, 0x39, 0xea, 0x40, 0x63);
		public const Guid CLSID_SmartcardCredentialProvider = .(0x8fd7e19c, 0x3bf7, 0x489b, 0xa7, 0x2c, 0x84, 0x6a, 0xb3, 0x67, 0x8c, 0x96);
		public const Guid CLSID_V1SmartcardCredentialProvider = .(0x8bf9a910, 0xa8ff, 0x457f, 0x99, 0x9f, 0xa5, 0xca, 0x10, 0xb4, 0xa8, 0x85);
		public const Guid CLSID_SmartcardPinProvider = .(0x94596c7e, 0x3744, 0x41ce, 0x89, 0x3e, 0xbb, 0xf0, 0x91, 0x22, 0xf7, 0x6a);
		public const Guid CLSID_SmartcardReaderSelectionProvider = .(0x1b283861, 0x754f, 0x4022, 0xad, 0x47, 0xa5, 0xea, 0xaa, 0x61, 0x88, 0x94);
		public const Guid CLSID_SmartcardWinRTProvider = .(0x1ee7337f, 0x85ac, 0x45e2, 0xa2, 0x3c, 0x37, 0xc7, 0x53, 0x20, 0x97, 0x69);
		public const Guid CLSID_GenericCredentialProvider = .(0x25cbb996, 0x92ed, 0x457e, 0xb2, 0x8c, 0x47, 0x74, 0x08, 0x4b, 0xd5, 0x62);
		public const Guid CLSID_RASProvider = .(0x5537e283, 0xb1e7, 0x4ef8, 0x9c, 0x6e, 0x7a, 0xb0, 0xaf, 0xe5, 0x05, 0x6d);
		public const Guid CLSID_OnexCredentialProvider = .(0x07aa0886, 0xcc8d, 0x4e19, 0xa4, 0x10, 0x1c, 0x75, 0xaf, 0x68, 0x6e, 0x62);
		public const Guid CLSID_OnexPlapSmartcardCredentialProvider = .(0x33c86cd6, 0x705f, 0x4ba1, 0x9a, 0xdb, 0x67, 0x07, 0x0b, 0x83, 0x77, 0x75);
		public const Guid CLSID_VaultProvider = .(0x503739d0, 0x4c5e, 0x4cfd, 0xb3, 0xba, 0xd8, 0x81, 0x33, 0x4f, 0x0d, 0xf2);
		public const Guid CLSID_WinBioCredentialProvider = .(0xbec09223, 0xb018, 0x416d, 0xa0, 0xac, 0x52, 0x39, 0x71, 0xb6, 0x39, 0xf5);
		public const Guid CLSID_V1WinBioCredentialProvider = .(0xac3ac249, 0xe820, 0x4343, 0xa6, 0x5b, 0x37, 0x7a, 0xc6, 0x34, 0xdc, 0x09);
		public const Guid CLSID_SyncMgrClient = .(0x1202db60, 0x1dac, 0x42c5, 0xae, 0xd5, 0x1a, 0xbd, 0xd4, 0x32, 0x24, 0x8e);
		public const Guid CLSID_SyncMgrControl = .(0x1a1f4206, 0x0688, 0x4e7f, 0xbe, 0x03, 0xd8, 0x2e, 0xc6, 0x9d, 0xf9, 0xa5);
		public const Guid CLSID_SyncMgrScheduleWizard = .(0x8d8b8e30, 0xc451, 0x421b, 0x85, 0x53, 0xd2, 0x97, 0x6a, 0xfa, 0x64, 0x8c);
		public const Guid CLSID_SyncMgrFolder = .(0x9c73f5e5, 0x7ae7, 0x4e32, 0xa8, 0xe8, 0x8d, 0x23, 0xb8, 0x52, 0x55, 0xbf);
		public const Guid CLSID_SyncSetupFolder = .(0x2e9e59c0, 0xb437, 0x4981, 0xa6, 0x47, 0x9c, 0x34, 0xb9, 0xb9, 0x08, 0x91);
		public const Guid CLSID_ConflictFolder = .(0x289978ac, 0xa101, 0x4341, 0xa8, 0x17, 0x21, 0xeb, 0xa7, 0xfd, 0x04, 0x6d);
		public const Guid CLSID_SyncResultsFolder = .(0x71d99464, 0x3b6b, 0x475c, 0xb2, 0x41, 0xe1, 0x58, 0x83, 0x20, 0x75, 0x29);
		public const Guid CLSID_SimpleConflictPresenter = .(0x7a0f6ab7, 0xed84, 0x46b6, 0xb4, 0x7e, 0x02, 0xaa, 0x15, 0x9a, 0x15, 0x2b);
		public const Guid CLSID_InputPanelConfiguration = .(0x2853add3, 0xf096, 0x4c63, 0xa7, 0x8f, 0x7f, 0xa3, 0xea, 0x83, 0x7f, 0xb7);
		public const Guid CLSID_LocalThumbnailCache = .(0x50ef4544, 0xac9f, 0x4a8e, 0xb2, 0x1b, 0x8a, 0x26, 0x18, 0x0d, 0xb1, 0x3f);
		public const Guid CLSID_SharedBitmap = .(0x4db26476, 0x6787, 0x4046, 0xb8, 0x36, 0xe8, 0x41, 0x2a, 0x9e, 0x8a, 0x27);
		public const Guid CLSID_ShellImageDataFactory = .(0x66e4e4fb, 0xf385, 0x4dd0, 0x8d, 0x74, 0xa2, 0xef, 0xd1, 0xbc, 0x61, 0x78);
		public const Guid CLSID_SyncMgr = .(0x6295df27, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		public const Guid CLSID_ThumbnailStreamCache = .(0xcbe0fed3, 0x4b91, 0x4e90, 0x83, 0x54, 0x8a, 0x8c, 0x84, 0xec, 0x68, 0x72);
		public const Guid CLSID_TrackShellMenu = .(0x8278f931, 0x2a3e, 0x11d2, 0x83, 0x8f, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		public const Guid CLSID_ImageTranscode = .(0x17b75166, 0x928f, 0x417d, 0x96, 0x85, 0x64, 0xaa, 0x13, 0x55, 0x65, 0xc1);
		public const Guid CLSID_ShowInputPaneAnimationCoordinator = .(0x1f046abf, 0x3202, 0x4dc1, 0x8c, 0xb5, 0x3c, 0x67, 0x61, 0x7c, 0xe1, 0xfa);
		public const Guid CLSID_HideInputPaneAnimationCoordinator = .(0x384742b1, 0x2a77, 0x4cb3, 0x8c, 0xf8, 0x11, 0x36, 0xf5, 0xe1, 0x7e, 0x59);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct INotifyReplica : IUnknown
		{
			public const new Guid IID = .(0x99180163, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT YouAreAReplica(uint32 ulcOtherReplicas, IMoniker** rgpmkOtherReplicas) mut
			{
				return VT.YouAreAReplica(&this, ulcOtherReplicas, rgpmkOtherReplicas);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INotifyReplica *self, uint32 ulcOtherReplicas, IMoniker** rgpmkOtherReplicas) YouAreAReplica;
			}
		}
		[CRepr]
		public struct IContextMenu : IUnknown
		{
			public const new Guid IID = .(0x000214e4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryContextMenu(HMENU hmenu, uint32 indexMenu, uint32 idCmdFirst, uint32 idCmdLast, uint32 uFlags) mut
			{
				return VT.QueryContextMenu(&this, hmenu, indexMenu, idCmdFirst, idCmdLast, uFlags);
			}
			public HRESULT InvokeCommand(CMINVOKECOMMANDINFO* pici) mut
			{
				return VT.InvokeCommand(&this, pici);
			}
			public HRESULT GetCommandString(uint idCmd, uint32 uType, uint32* pReserved, PSTR pszName, uint32 cchMax) mut
			{
				return VT.GetCommandString(&this, idCmd, uType, pReserved, pszName, cchMax);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextMenu *self, HMENU hmenu, uint32 indexMenu, uint32 idCmdFirst, uint32 idCmdLast, uint32 uFlags) QueryContextMenu;
				public new function HRESULT(IContextMenu *self, CMINVOKECOMMANDINFO* pici) InvokeCommand;
				public new function HRESULT(IContextMenu *self, uint idCmd, uint32 uType, uint32* pReserved, PSTR pszName, uint32 cchMax) GetCommandString;
			}
		}
		[CRepr]
		public struct IContextMenu2 : IContextMenu
		{
			public const new Guid IID = .(0x000214f4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleMenuMsg(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.HandleMenuMsg(&this, uMsg, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IContextMenu.VTable
			{
				public new function HRESULT(IContextMenu2 *self, uint32 uMsg, WPARAM wParam, LPARAM lParam) HandleMenuMsg;
			}
		}
		[CRepr]
		public struct IContextMenu3 : IContextMenu2
		{
			public const new Guid IID = .(0xbcfce0a0, 0xec17, 0x11d0, 0x8d, 0x10, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleMenuMsg2(uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut
			{
				return VT.HandleMenuMsg2(&this, uMsg, wParam, lParam, plResult);
			}
			[CRepr]
			public struct VTable : IContextMenu2.VTable
			{
				public new function HRESULT(IContextMenu3 *self, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) HandleMenuMsg2;
			}
		}
		[CRepr]
		public struct IExecuteCommand : IUnknown
		{
			public const new Guid IID = .(0x7f9185b0, 0xcb92, 0x43c5, 0x80, 0xa9, 0x92, 0x27, 0x7a, 0x4f, 0x7b, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetKeyState(uint32 grfKeyState) mut
			{
				return VT.SetKeyState(&this, grfKeyState);
			}
			public HRESULT SetParameters(PWSTR pszParameters) mut
			{
				return VT.SetParameters(&this, pszParameters);
			}
			public HRESULT SetPosition(POINT pt) mut
			{
				return VT.SetPosition(&this, pt);
			}
			public HRESULT SetShowWindow(int32 nShow) mut
			{
				return VT.SetShowWindow(&this, nShow);
			}
			public HRESULT SetNoShowUI(BOOL fNoShowUI) mut
			{
				return VT.SetNoShowUI(&this, fNoShowUI);
			}
			public HRESULT SetDirectory(PWSTR pszDirectory) mut
			{
				return VT.SetDirectory(&this, pszDirectory);
			}
			public HRESULT Execute() mut
			{
				return VT.Execute(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExecuteCommand *self, uint32 grfKeyState) SetKeyState;
				public new function HRESULT(IExecuteCommand *self, PWSTR pszParameters) SetParameters;
				public new function HRESULT(IExecuteCommand *self, POINT pt) SetPosition;
				public new function HRESULT(IExecuteCommand *self, int32 nShow) SetShowWindow;
				public new function HRESULT(IExecuteCommand *self, BOOL fNoShowUI) SetNoShowUI;
				public new function HRESULT(IExecuteCommand *self, PWSTR pszDirectory) SetDirectory;
				public new function HRESULT(IExecuteCommand *self) Execute;
			}
		}
		[CRepr]
		public struct IPersistFolder : IPersist
		{
			public const new Guid IID = .(0x000214ea, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ITEMIDLIST* pidl) mut
			{
				return VT.Initialize(&this, pidl);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistFolder *self, ITEMIDLIST* pidl) Initialize;
			}
		}
		[CRepr]
		public struct IRunnableTask : IUnknown
		{
			public const new Guid IID = .(0x85788d00, 0x6807, 0x11d0, 0xb8, 0x10, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Run() mut
			{
				return VT.Run(&this);
			}
			public HRESULT Kill(BOOL bWait) mut
			{
				return VT.Kill(&this, bWait);
			}
			public HRESULT Suspend() mut
			{
				return VT.Suspend(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public uint32 IsRunning() mut
			{
				return VT.IsRunning(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRunnableTask *self) Run;
				public new function HRESULT(IRunnableTask *self, BOOL bWait) Kill;
				public new function HRESULT(IRunnableTask *self) Suspend;
				public new function HRESULT(IRunnableTask *self) Resume;
				public new function uint32(IRunnableTask *self) IsRunning;
			}
		}
		[CRepr]
		public struct IShellTaskScheduler : IUnknown
		{
			public const new Guid IID = .(0x6ccb7be0, 0x6807, 0x11d0, 0xb8, 0x10, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTask(IRunnableTask* prt, Guid* rtoid, uint lParam, uint32 dwPriority) mut
			{
				return VT.AddTask(&this, prt, rtoid, lParam, dwPriority);
			}
			public HRESULT RemoveTasks(Guid* rtoid, uint lParam, BOOL bWaitIfRunning) mut
			{
				return VT.RemoveTasks(&this, rtoid, lParam, bWaitIfRunning);
			}
			public uint32 CountTasks(Guid* rtoid) mut
			{
				return VT.CountTasks(&this, rtoid);
			}
			public HRESULT Status(uint32 dwReleaseStatus, uint32 dwThreadTimeout) mut
			{
				return VT.Status(&this, dwReleaseStatus, dwThreadTimeout);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellTaskScheduler *self, IRunnableTask* prt, Guid* rtoid, uint lParam, uint32 dwPriority) AddTask;
				public new function HRESULT(IShellTaskScheduler *self, Guid* rtoid, uint lParam, BOOL bWaitIfRunning) RemoveTasks;
				public new function uint32(IShellTaskScheduler *self, Guid* rtoid) CountTasks;
				public new function HRESULT(IShellTaskScheduler *self, uint32 dwReleaseStatus, uint32 dwThreadTimeout) Status;
			}
		}
		[CRepr]
		public struct IPersistFolder2 : IPersistFolder
		{
			public const new Guid IID = .(0x1ac3d9f0, 0x175c, 0x11d1, 0x95, 0xbe, 0x00, 0x60, 0x97, 0x97, 0xea, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurFolder(ITEMIDLIST** ppidl) mut
			{
				return VT.GetCurFolder(&this, ppidl);
			}
			[CRepr]
			public struct VTable : IPersistFolder.VTable
			{
				public new function HRESULT(IPersistFolder2 *self, ITEMIDLIST** ppidl) GetCurFolder;
			}
		}
		[CRepr]
		public struct IPersistFolder3 : IPersistFolder2
		{
			public const new Guid IID = .(0xcef04fdf, 0xfe72, 0x11d2, 0x87, 0xa5, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeEx(IBindCtx* pbc, ITEMIDLIST* pidlRoot, PERSIST_FOLDER_TARGET_INFO* ppfti) mut
			{
				return VT.InitializeEx(&this, pbc, pidlRoot, ppfti);
			}
			public HRESULT GetFolderTargetInfo(PERSIST_FOLDER_TARGET_INFO* ppfti) mut
			{
				return VT.GetFolderTargetInfo(&this, ppfti);
			}
			[CRepr]
			public struct VTable : IPersistFolder2.VTable
			{
				public new function HRESULT(IPersistFolder3 *self, IBindCtx* pbc, ITEMIDLIST* pidlRoot, PERSIST_FOLDER_TARGET_INFO* ppfti) InitializeEx;
				public new function HRESULT(IPersistFolder3 *self, PERSIST_FOLDER_TARGET_INFO* ppfti) GetFolderTargetInfo;
			}
		}
		[CRepr]
		public struct IPersistIDList : IPersist
		{
			public const new Guid IID = .(0x1079acfc, 0x29bd, 0x11d3, 0x8e, 0x0d, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIDList(ITEMIDLIST* pidl) mut
			{
				return VT.SetIDList(&this, pidl);
			}
			public HRESULT GetIDList(ITEMIDLIST** ppidl) mut
			{
				return VT.GetIDList(&this, ppidl);
			}
			[CRepr]
			public struct VTable : IPersist.VTable
			{
				public new function HRESULT(IPersistIDList *self, ITEMIDLIST* pidl) SetIDList;
				public new function HRESULT(IPersistIDList *self, ITEMIDLIST** ppidl) GetIDList;
			}
		}
		[CRepr]
		public struct IEnumIDList : IUnknown
		{
			public const new Guid IID = .(0x000214f2, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumIDList** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumIDList *self, uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumIDList *self, uint32 celt) Skip;
				public new function HRESULT(IEnumIDList *self) Reset;
				public new function HRESULT(IEnumIDList *self, IEnumIDList** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IEnumFullIDList : IUnknown
		{
			public const new Guid IID = .(0xd0191542, 0x7954, 0x4908, 0xbc, 0x06, 0xb2, 0x36, 0x0b, 0xbe, 0x45, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumFullIDList** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumFullIDList *self, uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumFullIDList *self, uint32 celt) Skip;
				public new function HRESULT(IEnumFullIDList *self) Reset;
				public new function HRESULT(IEnumFullIDList *self, IEnumFullIDList** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IFileSyncMergeHandler : IUnknown
		{
			public const new Guid IID = .(0xd97b5aac, 0xc792, 0x433c, 0x97, 0x5d, 0x35, 0xc4, 0xea, 0xdc, 0x7a, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Merge(PWSTR localFilePath, PWSTR serverFilePath, MERGE_UPDATE_STATUS* updateStatus) mut
			{
				return VT.Merge(&this, localFilePath, serverFilePath, updateStatus);
			}
			public HRESULT ShowResolveConflictUIAsync(PWSTR localFilePath, HMONITOR monitorToDisplayOn) mut
			{
				return VT.ShowResolveConflictUIAsync(&this, localFilePath, monitorToDisplayOn);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileSyncMergeHandler *self, PWSTR localFilePath, PWSTR serverFilePath, MERGE_UPDATE_STATUS* updateStatus) Merge;
				public new function HRESULT(IFileSyncMergeHandler *self, PWSTR localFilePath, HMONITOR monitorToDisplayOn) ShowResolveConflictUIAsync;
			}
		}
		[CRepr]
		public struct IObjectWithFolderEnumMode : IUnknown
		{
			public const new Guid IID = .(0x6a9d9026, 0x0e6e, 0x464c, 0xb0, 0x00, 0x42, 0xec, 0xc0, 0x7d, 0xe6, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetMode(FOLDER_ENUM_MODE feMode) mut
			{
				return VT.SetMode(&this, feMode);
			}
			public HRESULT GetMode(FOLDER_ENUM_MODE* pfeMode) mut
			{
				return VT.GetMode(&this, pfeMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithFolderEnumMode *self, FOLDER_ENUM_MODE feMode) SetMode;
				public new function HRESULT(IObjectWithFolderEnumMode *self, FOLDER_ENUM_MODE* pfeMode) GetMode;
			}
		}
		[CRepr]
		public struct IParseAndCreateItem : IUnknown
		{
			public const new Guid IID = .(0x67efed0e, 0xe827, 0x4408, 0xb4, 0x93, 0x78, 0xf3, 0x98, 0x2b, 0x68, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetItem(IShellItem* psi) mut
			{
				return VT.SetItem(&this, psi);
			}
			public HRESULT GetItem(Guid* riid, void** ppv) mut
			{
				return VT.GetItem(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IParseAndCreateItem *self, IShellItem* psi) SetItem;
				public new function HRESULT(IParseAndCreateItem *self, Guid* riid, void** ppv) GetItem;
			}
		}
		[CRepr]
		public struct IShellFolder : IUnknown
		{
			public const new Guid IID = .(0x000214e6, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ParseDisplayName(HWND hwnd, IBindCtx* pbc, PWSTR pszDisplayName, uint32* pchEaten, ITEMIDLIST** ppidl, uint32* pdwAttributes) mut
			{
				return VT.ParseDisplayName(&this, hwnd, pbc, pszDisplayName, pchEaten, ppidl, pdwAttributes);
			}
			public HRESULT EnumObjects(HWND hwnd, uint32 grfFlags, IEnumIDList** ppenumIDList) mut
			{
				return VT.EnumObjects(&this, hwnd, grfFlags, ppenumIDList);
			}
			public HRESULT BindToObject(ITEMIDLIST* pidl, IBindCtx* pbc, Guid* riid, void** ppv) mut
			{
				return VT.BindToObject(&this, pidl, pbc, riid, ppv);
			}
			public HRESULT BindToStorage(ITEMIDLIST* pidl, IBindCtx* pbc, Guid* riid, void** ppv) mut
			{
				return VT.BindToStorage(&this, pidl, pbc, riid, ppv);
			}
			public HRESULT CompareIDs(LPARAM lParam, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) mut
			{
				return VT.CompareIDs(&this, lParam, pidl1, pidl2);
			}
			public HRESULT CreateViewObject(HWND hwndOwner, Guid* riid, void** ppv) mut
			{
				return VT.CreateViewObject(&this, hwndOwner, riid, ppv);
			}
			public HRESULT GetAttributesOf(uint32 cidl, ITEMIDLIST** apidl, uint32* rgfInOut) mut
			{
				return VT.GetAttributesOf(&this, cidl, apidl, rgfInOut);
			}
			public HRESULT GetUIObjectOf(HWND hwndOwner, uint32 cidl, ITEMIDLIST** apidl, Guid* riid, uint32* rgfReserved, void** ppv) mut
			{
				return VT.GetUIObjectOf(&this, hwndOwner, cidl, apidl, riid, rgfReserved, ppv);
			}
			public HRESULT GetDisplayNameOf(ITEMIDLIST* pidl, uint32 uFlags, STRRET* pName) mut
			{
				return VT.GetDisplayNameOf(&this, pidl, uFlags, pName);
			}
			public HRESULT SetNameOf(HWND hwnd, ITEMIDLIST* pidl, PWSTR pszName, uint32 uFlags, ITEMIDLIST** ppidlOut) mut
			{
				return VT.SetNameOf(&this, hwnd, pidl, pszName, uFlags, ppidlOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellFolder *self, HWND hwnd, IBindCtx* pbc, PWSTR pszDisplayName, uint32* pchEaten, ITEMIDLIST** ppidl, uint32* pdwAttributes) ParseDisplayName;
				public new function HRESULT(IShellFolder *self, HWND hwnd, uint32 grfFlags, IEnumIDList** ppenumIDList) EnumObjects;
				public new function HRESULT(IShellFolder *self, ITEMIDLIST* pidl, IBindCtx* pbc, Guid* riid, void** ppv) BindToObject;
				public new function HRESULT(IShellFolder *self, ITEMIDLIST* pidl, IBindCtx* pbc, Guid* riid, void** ppv) BindToStorage;
				public new function HRESULT(IShellFolder *self, LPARAM lParam, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) CompareIDs;
				public new function HRESULT(IShellFolder *self, HWND hwndOwner, Guid* riid, void** ppv) CreateViewObject;
				public new function HRESULT(IShellFolder *self, uint32 cidl, ITEMIDLIST** apidl, uint32* rgfInOut) GetAttributesOf;
				public new function HRESULT(IShellFolder *self, HWND hwndOwner, uint32 cidl, ITEMIDLIST** apidl, Guid* riid, uint32* rgfReserved, void** ppv) GetUIObjectOf;
				public new function HRESULT(IShellFolder *self, ITEMIDLIST* pidl, uint32 uFlags, STRRET* pName) GetDisplayNameOf;
				public new function HRESULT(IShellFolder *self, HWND hwnd, ITEMIDLIST* pidl, PWSTR pszName, uint32 uFlags, ITEMIDLIST** ppidlOut) SetNameOf;
			}
		}
		[CRepr]
		public struct IEnumExtraSearch : IUnknown
		{
			public const new Guid IID = .(0x0e700be1, 0x9db6, 0x11d1, 0xa1, 0xce, 0x00, 0xc0, 0x4f, 0xd7, 0x5d, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, EXTRASEARCH* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumExtraSearch** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumExtraSearch *self, uint32 celt, EXTRASEARCH* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumExtraSearch *self, uint32 celt) Skip;
				public new function HRESULT(IEnumExtraSearch *self) Reset;
				public new function HRESULT(IEnumExtraSearch *self, IEnumExtraSearch** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IShellFolder2 : IShellFolder
		{
			public const new Guid IID = .(0x93f2f68c, 0x1d1b, 0x11d3, 0xa3, 0x0e, 0x00, 0xc0, 0x4f, 0x79, 0xab, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDefaultSearchGUID(Guid* pguid) mut
			{
				return VT.GetDefaultSearchGUID(&this, pguid);
			}
			public HRESULT EnumSearches(IEnumExtraSearch** ppenum) mut
			{
				return VT.EnumSearches(&this, ppenum);
			}
			public HRESULT GetDefaultColumn(uint32 dwRes, uint32* pSort, uint32* pDisplay) mut
			{
				return VT.GetDefaultColumn(&this, dwRes, pSort, pDisplay);
			}
			public HRESULT GetDefaultColumnState(uint32 iColumn, uint32* pcsFlags) mut
			{
				return VT.GetDefaultColumnState(&this, iColumn, pcsFlags);
			}
			public HRESULT GetDetailsEx(ITEMIDLIST* pidl, PROPERTYKEY* pscid, VARIANT* pv) mut
			{
				return VT.GetDetailsEx(&this, pidl, pscid, pv);
			}
			public HRESULT GetDetailsOf(ITEMIDLIST* pidl, uint32 iColumn, SHELLDETAILS* psd) mut
			{
				return VT.GetDetailsOf(&this, pidl, iColumn, psd);
			}
			public HRESULT MapColumnToSCID(uint32 iColumn, PROPERTYKEY* pscid) mut
			{
				return VT.MapColumnToSCID(&this, iColumn, pscid);
			}
			[CRepr]
			public struct VTable : IShellFolder.VTable
			{
				public new function HRESULT(IShellFolder2 *self, Guid* pguid) GetDefaultSearchGUID;
				public new function HRESULT(IShellFolder2 *self, IEnumExtraSearch** ppenum) EnumSearches;
				public new function HRESULT(IShellFolder2 *self, uint32 dwRes, uint32* pSort, uint32* pDisplay) GetDefaultColumn;
				public new function HRESULT(IShellFolder2 *self, uint32 iColumn, uint32* pcsFlags) GetDefaultColumnState;
				public new function HRESULT(IShellFolder2 *self, ITEMIDLIST* pidl, PROPERTYKEY* pscid, VARIANT* pv) GetDetailsEx;
				public new function HRESULT(IShellFolder2 *self, ITEMIDLIST* pidl, uint32 iColumn, SHELLDETAILS* psd) GetDetailsOf;
				public new function HRESULT(IShellFolder2 *self, uint32 iColumn, PROPERTYKEY* pscid) MapColumnToSCID;
			}
		}
		[CRepr]
		public struct IShellView : IOleWindow
		{
			public const new Guid IID = .(0x000214e3, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranslateAccelerator(MSG* pmsg) mut
			{
				return VT.TranslateAccelerator(&this, pmsg);
			}
			public HRESULT EnableModeless(BOOL fEnable) mut
			{
				return VT.EnableModeless(&this, fEnable);
			}
			public HRESULT UIActivate(uint32 uState) mut
			{
				return VT.UIActivate(&this, uState);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT CreateViewWindow(IShellView* psvPrevious, FOLDERSETTINGS* pfs, IShellBrowser* psb, RECT* prcView, HWND* phWnd) mut
			{
				return VT.CreateViewWindow(&this, psvPrevious, pfs, psb, prcView, phWnd);
			}
			public HRESULT DestroyViewWindow() mut
			{
				return VT.DestroyViewWindow(&this);
			}
			public HRESULT GetCurrentInfo(FOLDERSETTINGS* pfs) mut
			{
				return VT.GetCurrentInfo(&this, pfs);
			}
			public HRESULT AddPropertySheetPages(uint32 dwReserved, LPFNSVADDPROPSHEETPAGE pfn, LPARAM lparam) mut
			{
				return VT.AddPropertySheetPages(&this, dwReserved, pfn, lparam);
			}
			public HRESULT SaveViewState() mut
			{
				return VT.SaveViewState(&this);
			}
			public HRESULT SelectItem(ITEMIDLIST* pidlItem, uint32 uFlags) mut
			{
				return VT.SelectItem(&this, pidlItem, uFlags);
			}
			public HRESULT GetItemObject(uint32 uItem, Guid* riid, void** ppv) mut
			{
				return VT.GetItemObject(&this, uItem, riid, ppv);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IShellView *self, MSG* pmsg) TranslateAccelerator;
				public new function HRESULT(IShellView *self, BOOL fEnable) EnableModeless;
				public new function HRESULT(IShellView *self, uint32 uState) UIActivate;
				public new function HRESULT(IShellView *self) Refresh;
				public new function HRESULT(IShellView *self, IShellView* psvPrevious, FOLDERSETTINGS* pfs, IShellBrowser* psb, RECT* prcView, HWND* phWnd) CreateViewWindow;
				public new function HRESULT(IShellView *self) DestroyViewWindow;
				public new function HRESULT(IShellView *self, FOLDERSETTINGS* pfs) GetCurrentInfo;
				public new function HRESULT(IShellView *self, uint32 dwReserved, LPFNSVADDPROPSHEETPAGE pfn, LPARAM lparam) AddPropertySheetPages;
				public new function HRESULT(IShellView *self) SaveViewState;
				public new function HRESULT(IShellView *self, ITEMIDLIST* pidlItem, uint32 uFlags) SelectItem;
				public new function HRESULT(IShellView *self, uint32 uItem, Guid* riid, void** ppv) GetItemObject;
			}
		}
		[CRepr]
		public struct IShellView2 : IShellView
		{
			public const new Guid IID = .(0x88e39e80, 0x3578, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetView(Guid* pvid, uint32 uView) mut
			{
				return VT.GetView(&this, pvid, uView);
			}
			public HRESULT CreateViewWindow2(SV2CVW2_PARAMS* lpParams) mut
			{
				return VT.CreateViewWindow2(&this, lpParams);
			}
			public HRESULT HandleRename(ITEMIDLIST* pidlNew) mut
			{
				return VT.HandleRename(&this, pidlNew);
			}
			public HRESULT SelectAndPositionItem(ITEMIDLIST* pidlItem, uint32 uFlags, POINT* ppt) mut
			{
				return VT.SelectAndPositionItem(&this, pidlItem, uFlags, ppt);
			}
			[CRepr]
			public struct VTable : IShellView.VTable
			{
				public new function HRESULT(IShellView2 *self, Guid* pvid, uint32 uView) GetView;
				public new function HRESULT(IShellView2 *self, SV2CVW2_PARAMS* lpParams) CreateViewWindow2;
				public new function HRESULT(IShellView2 *self, ITEMIDLIST* pidlNew) HandleRename;
				public new function HRESULT(IShellView2 *self, ITEMIDLIST* pidlItem, uint32 uFlags, POINT* ppt) SelectAndPositionItem;
			}
		}
		[CRepr]
		public struct IFolderView : IUnknown
		{
			public const new Guid IID = .(0xcde725b0, 0xccc9, 0x4519, 0x91, 0x7e, 0x32, 0x5d, 0x72, 0xfa, 0xb4, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCurrentViewMode(uint32* pViewMode) mut
			{
				return VT.GetCurrentViewMode(&this, pViewMode);
			}
			public HRESULT SetCurrentViewMode(uint32 ViewMode) mut
			{
				return VT.SetCurrentViewMode(&this, ViewMode);
			}
			public HRESULT GetFolder(Guid* riid, void** ppv) mut
			{
				return VT.GetFolder(&this, riid, ppv);
			}
			public HRESULT Item(int32 iItemIndex, ITEMIDLIST** ppidl) mut
			{
				return VT.Item(&this, iItemIndex, ppidl);
			}
			public HRESULT ItemCount(uint32 uFlags, int32* pcItems) mut
			{
				return VT.ItemCount(&this, uFlags, pcItems);
			}
			public HRESULT Items(uint32 uFlags, Guid* riid, void** ppv) mut
			{
				return VT.Items(&this, uFlags, riid, ppv);
			}
			public HRESULT GetSelectionMarkedItem(int32* piItem) mut
			{
				return VT.GetSelectionMarkedItem(&this, piItem);
			}
			public HRESULT GetFocusedItem(int32* piItem) mut
			{
				return VT.GetFocusedItem(&this, piItem);
			}
			public HRESULT GetItemPosition(ITEMIDLIST* pidl, POINT* ppt) mut
			{
				return VT.GetItemPosition(&this, pidl, ppt);
			}
			public HRESULT GetSpacing(POINT* ppt) mut
			{
				return VT.GetSpacing(&this, ppt);
			}
			public HRESULT GetDefaultSpacing(POINT* ppt) mut
			{
				return VT.GetDefaultSpacing(&this, ppt);
			}
			public HRESULT GetAutoArrange() mut
			{
				return VT.GetAutoArrange(&this);
			}
			public HRESULT SelectItem(int32 iItem, uint32 dwFlags) mut
			{
				return VT.SelectItem(&this, iItem, dwFlags);
			}
			public HRESULT SelectAndPositionItems(uint32 cidl, ITEMIDLIST** apidl, POINT* apt, uint32 dwFlags) mut
			{
				return VT.SelectAndPositionItems(&this, cidl, apidl, apt, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderView *self, uint32* pViewMode) GetCurrentViewMode;
				public new function HRESULT(IFolderView *self, uint32 ViewMode) SetCurrentViewMode;
				public new function HRESULT(IFolderView *self, Guid* riid, void** ppv) GetFolder;
				public new function HRESULT(IFolderView *self, int32 iItemIndex, ITEMIDLIST** ppidl) Item;
				public new function HRESULT(IFolderView *self, uint32 uFlags, int32* pcItems) ItemCount;
				public new function HRESULT(IFolderView *self, uint32 uFlags, Guid* riid, void** ppv) Items;
				public new function HRESULT(IFolderView *self, int32* piItem) GetSelectionMarkedItem;
				public new function HRESULT(IFolderView *self, int32* piItem) GetFocusedItem;
				public new function HRESULT(IFolderView *self, ITEMIDLIST* pidl, POINT* ppt) GetItemPosition;
				public new function HRESULT(IFolderView *self, POINT* ppt) GetSpacing;
				public new function HRESULT(IFolderView *self, POINT* ppt) GetDefaultSpacing;
				public new function HRESULT(IFolderView *self) GetAutoArrange;
				public new function HRESULT(IFolderView *self, int32 iItem, uint32 dwFlags) SelectItem;
				public new function HRESULT(IFolderView *self, uint32 cidl, ITEMIDLIST** apidl, POINT* apt, uint32 dwFlags) SelectAndPositionItems;
			}
		}
		[CRepr]
		public struct IFolderView2 : IFolderView
		{
			public const new Guid IID = .(0x1af3a467, 0x214f, 0x4298, 0x90, 0x8e, 0x06, 0xb0, 0x3e, 0x0b, 0x39, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetGroupBy(PROPERTYKEY* key, BOOL fAscending) mut
			{
				return VT.SetGroupBy(&this, key, fAscending);
			}
			public HRESULT GetGroupBy(PROPERTYKEY* pkey, BOOL* pfAscending) mut
			{
				return VT.GetGroupBy(&this, pkey, pfAscending);
			}
			public HRESULT SetViewProperty(ITEMIDLIST* pidl, PROPERTYKEY* propkey, PROPVARIANT* propvar) mut
			{
				return VT.SetViewProperty(&this, pidl, propkey, propvar);
			}
			public HRESULT GetViewProperty(ITEMIDLIST* pidl, PROPERTYKEY* propkey, PROPVARIANT* ppropvar) mut
			{
				return VT.GetViewProperty(&this, pidl, propkey, ppropvar);
			}
			public HRESULT SetTileViewProperties(ITEMIDLIST* pidl, PWSTR pszPropList) mut
			{
				return VT.SetTileViewProperties(&this, pidl, pszPropList);
			}
			public HRESULT SetExtendedTileViewProperties(ITEMIDLIST* pidl, PWSTR pszPropList) mut
			{
				return VT.SetExtendedTileViewProperties(&this, pidl, pszPropList);
			}
			public HRESULT SetText(FVTEXTTYPE iType, PWSTR pwszText) mut
			{
				return VT.SetText(&this, iType, pwszText);
			}
			public HRESULT SetCurrentFolderFlags(uint32 dwMask, uint32 dwFlags) mut
			{
				return VT.SetCurrentFolderFlags(&this, dwMask, dwFlags);
			}
			public HRESULT GetCurrentFolderFlags(uint32* pdwFlags) mut
			{
				return VT.GetCurrentFolderFlags(&this, pdwFlags);
			}
			public HRESULT GetSortColumnCount(int32* pcColumns) mut
			{
				return VT.GetSortColumnCount(&this, pcColumns);
			}
			public HRESULT SetSortColumns(SORTCOLUMN* rgSortColumns, int32 cColumns) mut
			{
				return VT.SetSortColumns(&this, rgSortColumns, cColumns);
			}
			public HRESULT GetSortColumns(SORTCOLUMN* rgSortColumns, int32 cColumns) mut
			{
				return VT.GetSortColumns(&this, rgSortColumns, cColumns);
			}
			public HRESULT GetItem(int32 iItem, Guid* riid, void** ppv) mut
			{
				return VT.GetItem(&this, iItem, riid, ppv);
			}
			public HRESULT GetVisibleItem(int32 iStart, BOOL fPrevious, int32* piItem) mut
			{
				return VT.GetVisibleItem(&this, iStart, fPrevious, piItem);
			}
			public HRESULT GetSelectedItem(int32 iStart, int32* piItem) mut
			{
				return VT.GetSelectedItem(&this, iStart, piItem);
			}
			public HRESULT GetSelection(BOOL fNoneImpliesFolder, IShellItemArray** ppsia) mut
			{
				return VT.GetSelection(&this, fNoneImpliesFolder, ppsia);
			}
			public HRESULT GetSelectionState(ITEMIDLIST* pidl, uint32* pdwFlags) mut
			{
				return VT.GetSelectionState(&this, pidl, pdwFlags);
			}
			public HRESULT InvokeVerbOnSelection(PSTR pszVerb) mut
			{
				return VT.InvokeVerbOnSelection(&this, pszVerb);
			}
			public HRESULT SetViewModeAndIconSize(FOLDERVIEWMODE uViewMode, int32 iImageSize) mut
			{
				return VT.SetViewModeAndIconSize(&this, uViewMode, iImageSize);
			}
			public HRESULT GetViewModeAndIconSize(FOLDERVIEWMODE* puViewMode, int32* piImageSize) mut
			{
				return VT.GetViewModeAndIconSize(&this, puViewMode, piImageSize);
			}
			public HRESULT SetGroupSubsetCount(uint32 cVisibleRows) mut
			{
				return VT.SetGroupSubsetCount(&this, cVisibleRows);
			}
			public HRESULT GetGroupSubsetCount(uint32* pcVisibleRows) mut
			{
				return VT.GetGroupSubsetCount(&this, pcVisibleRows);
			}
			public HRESULT SetRedraw(BOOL fRedrawOn) mut
			{
				return VT.SetRedraw(&this, fRedrawOn);
			}
			public HRESULT IsMoveInSameFolder() mut
			{
				return VT.IsMoveInSameFolder(&this);
			}
			public HRESULT DoRename() mut
			{
				return VT.DoRename(&this);
			}
			[CRepr]
			public struct VTable : IFolderView.VTable
			{
				public new function HRESULT(IFolderView2 *self, PROPERTYKEY* key, BOOL fAscending) SetGroupBy;
				public new function HRESULT(IFolderView2 *self, PROPERTYKEY* pkey, BOOL* pfAscending) GetGroupBy;
				public new function HRESULT(IFolderView2 *self, ITEMIDLIST* pidl, PROPERTYKEY* propkey, PROPVARIANT* propvar) SetViewProperty;
				public new function HRESULT(IFolderView2 *self, ITEMIDLIST* pidl, PROPERTYKEY* propkey, PROPVARIANT* ppropvar) GetViewProperty;
				public new function HRESULT(IFolderView2 *self, ITEMIDLIST* pidl, PWSTR pszPropList) SetTileViewProperties;
				public new function HRESULT(IFolderView2 *self, ITEMIDLIST* pidl, PWSTR pszPropList) SetExtendedTileViewProperties;
				public new function HRESULT(IFolderView2 *self, FVTEXTTYPE iType, PWSTR pwszText) SetText;
				public new function HRESULT(IFolderView2 *self, uint32 dwMask, uint32 dwFlags) SetCurrentFolderFlags;
				public new function HRESULT(IFolderView2 *self, uint32* pdwFlags) GetCurrentFolderFlags;
				public new function HRESULT(IFolderView2 *self, int32* pcColumns) GetSortColumnCount;
				public new function HRESULT(IFolderView2 *self, SORTCOLUMN* rgSortColumns, int32 cColumns) SetSortColumns;
				public new function HRESULT(IFolderView2 *self, SORTCOLUMN* rgSortColumns, int32 cColumns) GetSortColumns;
				public new function HRESULT(IFolderView2 *self, int32 iItem, Guid* riid, void** ppv) GetItem;
				public new function HRESULT(IFolderView2 *self, int32 iStart, BOOL fPrevious, int32* piItem) GetVisibleItem;
				public new function HRESULT(IFolderView2 *self, int32 iStart, int32* piItem) GetSelectedItem;
				public new function HRESULT(IFolderView2 *self, BOOL fNoneImpliesFolder, IShellItemArray** ppsia) GetSelection;
				public new function HRESULT(IFolderView2 *self, ITEMIDLIST* pidl, uint32* pdwFlags) GetSelectionState;
				public new function HRESULT(IFolderView2 *self, PSTR pszVerb) InvokeVerbOnSelection;
				public new function HRESULT(IFolderView2 *self, FOLDERVIEWMODE uViewMode, int32 iImageSize) SetViewModeAndIconSize;
				public new function HRESULT(IFolderView2 *self, FOLDERVIEWMODE* puViewMode, int32* piImageSize) GetViewModeAndIconSize;
				public new function HRESULT(IFolderView2 *self, uint32 cVisibleRows) SetGroupSubsetCount;
				public new function HRESULT(IFolderView2 *self, uint32* pcVisibleRows) GetGroupSubsetCount;
				public new function HRESULT(IFolderView2 *self, BOOL fRedrawOn) SetRedraw;
				public new function HRESULT(IFolderView2 *self) IsMoveInSameFolder;
				public new function HRESULT(IFolderView2 *self) DoRename;
			}
		}
		[CRepr]
		public struct IFolderViewSettings : IUnknown
		{
			public const new Guid IID = .(0xae8c987d, 0x8797, 0x4ed3, 0xbe, 0x72, 0x2a, 0x47, 0xdd, 0x93, 0x8d, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetColumnPropertyList(Guid* riid, void** ppv) mut
			{
				return VT.GetColumnPropertyList(&this, riid, ppv);
			}
			public HRESULT GetGroupByProperty(PROPERTYKEY* pkey, BOOL* pfGroupAscending) mut
			{
				return VT.GetGroupByProperty(&this, pkey, pfGroupAscending);
			}
			public HRESULT GetViewMode(FOLDERLOGICALVIEWMODE* plvm) mut
			{
				return VT.GetViewMode(&this, plvm);
			}
			public HRESULT GetIconSize(uint32* puIconSize) mut
			{
				return VT.GetIconSize(&this, puIconSize);
			}
			public HRESULT GetFolderFlags(FOLDERFLAGS* pfolderMask, FOLDERFLAGS* pfolderFlags) mut
			{
				return VT.GetFolderFlags(&this, pfolderMask, pfolderFlags);
			}
			public HRESULT GetSortColumns(SORTCOLUMN* rgSortColumns, uint32 cColumnsIn, uint32* pcColumnsOut) mut
			{
				return VT.GetSortColumns(&this, rgSortColumns, cColumnsIn, pcColumnsOut);
			}
			public HRESULT GetGroupSubsetCount(uint32* pcVisibleRows) mut
			{
				return VT.GetGroupSubsetCount(&this, pcVisibleRows);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderViewSettings *self, Guid* riid, void** ppv) GetColumnPropertyList;
				public new function HRESULT(IFolderViewSettings *self, PROPERTYKEY* pkey, BOOL* pfGroupAscending) GetGroupByProperty;
				public new function HRESULT(IFolderViewSettings *self, FOLDERLOGICALVIEWMODE* plvm) GetViewMode;
				public new function HRESULT(IFolderViewSettings *self, uint32* puIconSize) GetIconSize;
				public new function HRESULT(IFolderViewSettings *self, FOLDERFLAGS* pfolderMask, FOLDERFLAGS* pfolderFlags) GetFolderFlags;
				public new function HRESULT(IFolderViewSettings *self, SORTCOLUMN* rgSortColumns, uint32 cColumnsIn, uint32* pcColumnsOut) GetSortColumns;
				public new function HRESULT(IFolderViewSettings *self, uint32* pcVisibleRows) GetGroupSubsetCount;
			}
		}
		[CRepr]
		public struct IInitializeNetworkFolder : IUnknown
		{
			public const new Guid IID = .(0x6e0f9881, 0x42a8, 0x4f2a, 0x97, 0xf8, 0x8a, 0xf4, 0xe0, 0x26, 0xd9, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ITEMIDLIST* pidl, ITEMIDLIST* pidlTarget, uint32 uDisplayType, PWSTR pszResName, PWSTR pszProvider) mut
			{
				return VT.Initialize(&this, pidl, pidlTarget, uDisplayType, pszResName, pszProvider);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeNetworkFolder *self, ITEMIDLIST* pidl, ITEMIDLIST* pidlTarget, uint32 uDisplayType, PWSTR pszResName, PWSTR pszProvider) Initialize;
			}
		}
		[CRepr]
		public struct INetworkFolderInternal : IUnknown
		{
			public const new Guid IID = .(0xceb38218, 0xc971, 0x47bb, 0xa7, 0x03, 0xf0, 0xbc, 0x99, 0xcc, 0xdb, 0x81);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResourceDisplayType(uint32* displayType) mut
			{
				return VT.GetResourceDisplayType(&this, displayType);
			}
			public HRESULT GetIDList(ITEMIDLIST** idList) mut
			{
				return VT.GetIDList(&this, idList);
			}
			public HRESULT GetProvider(uint32 itemIdCount, ITEMIDLIST** itemIds, uint32 providerMaxLength, char16* provider) mut
			{
				return VT.GetProvider(&this, itemIdCount, itemIds, providerMaxLength, provider);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INetworkFolderInternal *self, uint32* displayType) GetResourceDisplayType;
				public new function HRESULT(INetworkFolderInternal *self, ITEMIDLIST** idList) GetIDList;
				public new function HRESULT(INetworkFolderInternal *self, uint32 itemIdCount, ITEMIDLIST** itemIds, uint32 providerMaxLength, char16* provider) GetProvider;
			}
		}
		[CRepr]
		public struct IPreviewHandlerVisuals : IUnknown
		{
			public const new Guid IID = .(0x196bf9a5, 0xb346, 0x4ef0, 0xaa, 0x1e, 0x5d, 0xcd, 0xb7, 0x67, 0x68, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBackgroundColor(uint32 color) mut
			{
				return VT.SetBackgroundColor(&this, color);
			}
			public HRESULT SetFont(LOGFONTW* plf) mut
			{
				return VT.SetFont(&this, plf);
			}
			public HRESULT SetTextColor(uint32 color) mut
			{
				return VT.SetTextColor(&this, color);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPreviewHandlerVisuals *self, uint32 color) SetBackgroundColor;
				public new function HRESULT(IPreviewHandlerVisuals *self, LOGFONTW* plf) SetFont;
				public new function HRESULT(IPreviewHandlerVisuals *self, uint32 color) SetTextColor;
			}
		}
		[CRepr]
		public struct ICommDlgBrowser : IUnknown
		{
			public const new Guid IID = .(0x000214f1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDefaultCommand(IShellView* ppshv) mut
			{
				return VT.OnDefaultCommand(&this, ppshv);
			}
			public HRESULT OnStateChange(IShellView* ppshv, uint32 uChange) mut
			{
				return VT.OnStateChange(&this, ppshv, uChange);
			}
			public HRESULT IncludeObject(IShellView* ppshv, ITEMIDLIST* pidl) mut
			{
				return VT.IncludeObject(&this, ppshv, pidl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICommDlgBrowser *self, IShellView* ppshv) OnDefaultCommand;
				public new function HRESULT(ICommDlgBrowser *self, IShellView* ppshv, uint32 uChange) OnStateChange;
				public new function HRESULT(ICommDlgBrowser *self, IShellView* ppshv, ITEMIDLIST* pidl) IncludeObject;
			}
		}
		[CRepr]
		public struct ICommDlgBrowser2 : ICommDlgBrowser
		{
			public const new Guid IID = .(0x10339516, 0x2894, 0x11d2, 0x90, 0x39, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Notify(IShellView* ppshv, uint32 dwNotifyType) mut
			{
				return VT.Notify(&this, ppshv, dwNotifyType);
			}
			public HRESULT GetDefaultMenuText(IShellView* ppshv, char16* pszText, int32 cchMax) mut
			{
				return VT.GetDefaultMenuText(&this, ppshv, pszText, cchMax);
			}
			public HRESULT GetViewFlags(uint32* pdwFlags) mut
			{
				return VT.GetViewFlags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : ICommDlgBrowser.VTable
			{
				public new function HRESULT(ICommDlgBrowser2 *self, IShellView* ppshv, uint32 dwNotifyType) Notify;
				public new function HRESULT(ICommDlgBrowser2 *self, IShellView* ppshv, char16* pszText, int32 cchMax) GetDefaultMenuText;
				public new function HRESULT(ICommDlgBrowser2 *self, uint32* pdwFlags) GetViewFlags;
			}
		}
		[CRepr]
		public struct IColumnManager : IUnknown
		{
			public const new Guid IID = .(0xd8ec27bb, 0x3f3b, 0x4042, 0xb1, 0x0a, 0x4a, 0xcf, 0xd9, 0x24, 0xd4, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetColumnInfo(PROPERTYKEY* propkey, CM_COLUMNINFO* pcmci) mut
			{
				return VT.SetColumnInfo(&this, propkey, pcmci);
			}
			public HRESULT GetColumnInfo(PROPERTYKEY* propkey, CM_COLUMNINFO* pcmci) mut
			{
				return VT.GetColumnInfo(&this, propkey, pcmci);
			}
			public HRESULT GetColumnCount(CM_ENUM_FLAGS dwFlags, uint32* puCount) mut
			{
				return VT.GetColumnCount(&this, dwFlags, puCount);
			}
			public HRESULT GetColumns(CM_ENUM_FLAGS dwFlags, PROPERTYKEY* rgkeyOrder, uint32 cColumns) mut
			{
				return VT.GetColumns(&this, dwFlags, rgkeyOrder, cColumns);
			}
			public HRESULT SetColumns(PROPERTYKEY* rgkeyOrder, uint32 cVisible) mut
			{
				return VT.SetColumns(&this, rgkeyOrder, cVisible);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IColumnManager *self, PROPERTYKEY* propkey, CM_COLUMNINFO* pcmci) SetColumnInfo;
				public new function HRESULT(IColumnManager *self, PROPERTYKEY* propkey, CM_COLUMNINFO* pcmci) GetColumnInfo;
				public new function HRESULT(IColumnManager *self, CM_ENUM_FLAGS dwFlags, uint32* puCount) GetColumnCount;
				public new function HRESULT(IColumnManager *self, CM_ENUM_FLAGS dwFlags, PROPERTYKEY* rgkeyOrder, uint32 cColumns) GetColumns;
				public new function HRESULT(IColumnManager *self, PROPERTYKEY* rgkeyOrder, uint32 cVisible) SetColumns;
			}
		}
		[CRepr]
		public struct IFolderFilterSite : IUnknown
		{
			public const new Guid IID = .(0xc0a651f5, 0xb48b, 0x11d2, 0xb5, 0xed, 0x00, 0x60, 0x97, 0xc6, 0x86, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFilter(IUnknown* punk) mut
			{
				return VT.SetFilter(&this, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderFilterSite *self, IUnknown* punk) SetFilter;
			}
		}
		[CRepr]
		public struct IFolderFilter : IUnknown
		{
			public const new Guid IID = .(0x9cc22886, 0xdc8e, 0x11d2, 0xb1, 0xd0, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShouldShow(IShellFolder* psf, ITEMIDLIST* pidlFolder, ITEMIDLIST* pidlItem) mut
			{
				return VT.ShouldShow(&this, psf, pidlFolder, pidlItem);
			}
			public HRESULT GetEnumFlags(IShellFolder* psf, ITEMIDLIST* pidlFolder, HWND* phwnd, uint32* pgrfFlags) mut
			{
				return VT.GetEnumFlags(&this, psf, pidlFolder, phwnd, pgrfFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderFilter *self, IShellFolder* psf, ITEMIDLIST* pidlFolder, ITEMIDLIST* pidlItem) ShouldShow;
				public new function HRESULT(IFolderFilter *self, IShellFolder* psf, ITEMIDLIST* pidlFolder, HWND* phwnd, uint32* pgrfFlags) GetEnumFlags;
			}
		}
		[CRepr]
		public struct IInputObjectSite : IUnknown
		{
			public const new Guid IID = .(0xf1db8392, 0x7331, 0x11d0, 0x8c, 0x99, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnFocusChangeIS(IUnknown* punkObj, BOOL fSetFocus) mut
			{
				return VT.OnFocusChangeIS(&this, punkObj, fSetFocus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputObjectSite *self, IUnknown* punkObj, BOOL fSetFocus) OnFocusChangeIS;
			}
		}
		[CRepr]
		public struct IInputObject : IUnknown
		{
			public const new Guid IID = .(0x68284faa, 0x6a48, 0x11d0, 0x8c, 0x78, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UIActivateIO(BOOL fActivate, MSG* pMsg) mut
			{
				return VT.UIActivateIO(&this, fActivate, pMsg);
			}
			public HRESULT HasFocusIO() mut
			{
				return VT.HasFocusIO(&this);
			}
			public HRESULT TranslateAcceleratorIO(MSG* pMsg) mut
			{
				return VT.TranslateAcceleratorIO(&this, pMsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputObject *self, BOOL fActivate, MSG* pMsg) UIActivateIO;
				public new function HRESULT(IInputObject *self) HasFocusIO;
				public new function HRESULT(IInputObject *self, MSG* pMsg) TranslateAcceleratorIO;
			}
		}
		[CRepr]
		public struct IInputObject2 : IInputObject
		{
			public const new Guid IID = .(0x6915c085, 0x510b, 0x44cd, 0x94, 0xaf, 0x28, 0xdf, 0xa5, 0x6c, 0xf9, 0x2b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranslateAcceleratorGlobal(MSG* pMsg) mut
			{
				return VT.TranslateAcceleratorGlobal(&this, pMsg);
			}
			[CRepr]
			public struct VTable : IInputObject.VTable
			{
				public new function HRESULT(IInputObject2 *self, MSG* pMsg) TranslateAcceleratorGlobal;
			}
		}
		[CRepr]
		public struct IShellIcon : IUnknown
		{
			public const new Guid IID = .(0x000214e5, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIconOf(ITEMIDLIST* pidl, uint32 flags, int32* pIconIndex) mut
			{
				return VT.GetIconOf(&this, pidl, flags, pIconIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellIcon *self, ITEMIDLIST* pidl, uint32 flags, int32* pIconIndex) GetIconOf;
			}
		}
		[CRepr]
		public struct IShellBrowser : IOleWindow
		{
			public const new Guid IID = .(0x000214e2, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertMenusSB(HMENU hmenuShared, OleMenuGroupWidths* lpMenuWidths) mut
			{
				return VT.InsertMenusSB(&this, hmenuShared, lpMenuWidths);
			}
			public HRESULT SetMenuSB(HMENU hmenuShared, int holemenuRes, HWND hwndActiveObject) mut
			{
				return VT.SetMenuSB(&this, hmenuShared, holemenuRes, hwndActiveObject);
			}
			public HRESULT RemoveMenusSB(HMENU hmenuShared) mut
			{
				return VT.RemoveMenusSB(&this, hmenuShared);
			}
			public HRESULT SetStatusTextSB(PWSTR pszStatusText) mut
			{
				return VT.SetStatusTextSB(&this, pszStatusText);
			}
			public HRESULT EnableModelessSB(BOOL fEnable) mut
			{
				return VT.EnableModelessSB(&this, fEnable);
			}
			public HRESULT TranslateAcceleratorSB(MSG* pmsg, uint16 wID) mut
			{
				return VT.TranslateAcceleratorSB(&this, pmsg, wID);
			}
			public HRESULT BrowseObject(ITEMIDLIST* pidl, uint32 wFlags) mut
			{
				return VT.BrowseObject(&this, pidl, wFlags);
			}
			public HRESULT GetViewStateStream(uint32 grfMode, IStream** ppStrm) mut
			{
				return VT.GetViewStateStream(&this, grfMode, ppStrm);
			}
			public HRESULT GetControlWindow(uint32 id, HWND* phwnd) mut
			{
				return VT.GetControlWindow(&this, id, phwnd);
			}
			public HRESULT SendControlMsg(uint32 id, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* pret) mut
			{
				return VT.SendControlMsg(&this, id, uMsg, wParam, lParam, pret);
			}
			public HRESULT QueryActiveShellView(IShellView** ppshv) mut
			{
				return VT.QueryActiveShellView(&this, ppshv);
			}
			public HRESULT OnViewWindowActive(IShellView* pshv) mut
			{
				return VT.OnViewWindowActive(&this, pshv);
			}
			public HRESULT SetToolbarItems(TBBUTTON* lpButtons, uint32 nButtons, uint32 uFlags) mut
			{
				return VT.SetToolbarItems(&this, lpButtons, nButtons, uFlags);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IShellBrowser *self, HMENU hmenuShared, OleMenuGroupWidths* lpMenuWidths) InsertMenusSB;
				public new function HRESULT(IShellBrowser *self, HMENU hmenuShared, int holemenuRes, HWND hwndActiveObject) SetMenuSB;
				public new function HRESULT(IShellBrowser *self, HMENU hmenuShared) RemoveMenusSB;
				public new function HRESULT(IShellBrowser *self, PWSTR pszStatusText) SetStatusTextSB;
				public new function HRESULT(IShellBrowser *self, BOOL fEnable) EnableModelessSB;
				public new function HRESULT(IShellBrowser *self, MSG* pmsg, uint16 wID) TranslateAcceleratorSB;
				public new function HRESULT(IShellBrowser *self, ITEMIDLIST* pidl, uint32 wFlags) BrowseObject;
				public new function HRESULT(IShellBrowser *self, uint32 grfMode, IStream** ppStrm) GetViewStateStream;
				public new function HRESULT(IShellBrowser *self, uint32 id, HWND* phwnd) GetControlWindow;
				public new function HRESULT(IShellBrowser *self, uint32 id, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* pret) SendControlMsg;
				public new function HRESULT(IShellBrowser *self, IShellView** ppshv) QueryActiveShellView;
				public new function HRESULT(IShellBrowser *self, IShellView* pshv) OnViewWindowActive;
				public new function HRESULT(IShellBrowser *self, TBBUTTON* lpButtons, uint32 nButtons, uint32 uFlags) SetToolbarItems;
			}
		}
		[CRepr]
		public struct IProfferService : IUnknown
		{
			public const new Guid IID = .(0xcb728b20, 0xf786, 0x11ce, 0x92, 0xad, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ProfferService(Guid* serviceId, IServiceProvider* serviceProvider, uint32* cookie) mut
			{
				return VT.ProfferService(&this, serviceId, serviceProvider, cookie);
			}
			public HRESULT RevokeService(uint32 cookie) mut
			{
				return VT.RevokeService(&this, cookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProfferService *self, Guid* serviceId, IServiceProvider* serviceProvider, uint32* cookie) ProfferService;
				public new function HRESULT(IProfferService *self, uint32 cookie) RevokeService;
			}
		}
		[CRepr]
		public struct IGetServiceIds : IUnknown
		{
			public const new Guid IID = .(0x4a073526, 0x6103, 0x4e21, 0xb7, 0xbc, 0xf5, 0x19, 0xd1, 0x52, 0x4e, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetServiceIds(uint32* serviceIdCount, Guid** serviceIds) mut
			{
				return VT.GetServiceIds(&this, serviceIdCount, serviceIds);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IGetServiceIds *self, uint32* serviceIdCount, Guid** serviceIds) GetServiceIds;
			}
		}
		[CRepr]
		public struct IShellItem : IUnknown
		{
			public const new Guid IID = .(0x43826d1e, 0xe718, 0x42ee, 0xbc, 0x55, 0xa1, 0xe2, 0x61, 0xc3, 0x7b, 0xfe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindToHandler(IBindCtx* pbc, Guid* bhid, Guid* riid, void** ppv) mut
			{
				return VT.BindToHandler(&this, pbc, bhid, riid, ppv);
			}
			public HRESULT GetParent(IShellItem** ppsi) mut
			{
				return VT.GetParent(&this, ppsi);
			}
			public HRESULT GetDisplayName(SIGDN sigdnName, PWSTR* ppszName) mut
			{
				return VT.GetDisplayName(&this, sigdnName, ppszName);
			}
			public HRESULT GetAttributes(uint32 sfgaoMask, uint32* psfgaoAttribs) mut
			{
				return VT.GetAttributes(&this, sfgaoMask, psfgaoAttribs);
			}
			public HRESULT Compare(IShellItem* psi, uint32 hint, int32* piOrder) mut
			{
				return VT.Compare(&this, psi, hint, piOrder);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellItem *self, IBindCtx* pbc, Guid* bhid, Guid* riid, void** ppv) BindToHandler;
				public new function HRESULT(IShellItem *self, IShellItem** ppsi) GetParent;
				public new function HRESULT(IShellItem *self, SIGDN sigdnName, PWSTR* ppszName) GetDisplayName;
				public new function HRESULT(IShellItem *self, uint32 sfgaoMask, uint32* psfgaoAttribs) GetAttributes;
				public new function HRESULT(IShellItem *self, IShellItem* psi, uint32 hint, int32* piOrder) Compare;
			}
		}
		[CRepr]
		public struct IShellItem2 : IShellItem
		{
			public const new Guid IID = .(0x7e9fb0d3, 0x919f, 0x4307, 0xab, 0x2e, 0x9b, 0x18, 0x60, 0x31, 0x0c, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStore(&this, flags, riid, ppv);
			}
			public HRESULT GetPropertyStoreWithCreateObject(GETPROPERTYSTOREFLAGS flags, IUnknown* punkCreateObject, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStoreWithCreateObject(&this, flags, punkCreateObject, riid, ppv);
			}
			public HRESULT GetPropertyStoreForKeys(PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStoreForKeys(&this, rgKeys, cKeys, flags, riid, ppv);
			}
			public HRESULT GetPropertyDescriptionList(PROPERTYKEY* keyType, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyDescriptionList(&this, keyType, riid, ppv);
			}
			public HRESULT Update(IBindCtx* pbc) mut
			{
				return VT.Update(&this, pbc);
			}
			public HRESULT GetProperty(PROPERTYKEY* key, PROPVARIANT* ppropvar) mut
			{
				return VT.GetProperty(&this, key, ppropvar);
			}
			public HRESULT GetCLSID(PROPERTYKEY* key, Guid* pclsid) mut
			{
				return VT.GetCLSID(&this, key, pclsid);
			}
			public HRESULT GetFileTime(PROPERTYKEY* key, FILETIME* pft) mut
			{
				return VT.GetFileTime(&this, key, pft);
			}
			public HRESULT GetInt32(PROPERTYKEY* key, int32* pi) mut
			{
				return VT.GetInt32(&this, key, pi);
			}
			public HRESULT GetString(PROPERTYKEY* key, PWSTR* ppsz) mut
			{
				return VT.GetString(&this, key, ppsz);
			}
			public HRESULT GetUInt32(PROPERTYKEY* key, uint32* pui) mut
			{
				return VT.GetUInt32(&this, key, pui);
			}
			public HRESULT GetUInt64(PROPERTYKEY* key, uint64* pull) mut
			{
				return VT.GetUInt64(&this, key, pull);
			}
			public HRESULT GetBool(PROPERTYKEY* key, BOOL* pf) mut
			{
				return VT.GetBool(&this, key, pf);
			}
			[CRepr]
			public struct VTable : IShellItem.VTable
			{
				public new function HRESULT(IShellItem2 *self, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) GetPropertyStore;
				public new function HRESULT(IShellItem2 *self, GETPROPERTYSTOREFLAGS flags, IUnknown* punkCreateObject, Guid* riid, void** ppv) GetPropertyStoreWithCreateObject;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) GetPropertyStoreForKeys;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* keyType, Guid* riid, void** ppv) GetPropertyDescriptionList;
				public new function HRESULT(IShellItem2 *self, IBindCtx* pbc) Update;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, PROPVARIANT* ppropvar) GetProperty;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, Guid* pclsid) GetCLSID;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, FILETIME* pft) GetFileTime;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, int32* pi) GetInt32;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, PWSTR* ppsz) GetString;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, uint32* pui) GetUInt32;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, uint64* pull) GetUInt64;
				public new function HRESULT(IShellItem2 *self, PROPERTYKEY* key, BOOL* pf) GetBool;
			}
		}
		[CRepr]
		public struct IShellItemImageFactory : IUnknown
		{
			public const new Guid IID = .(0xbcc18b79, 0xba16, 0x442f, 0x80, 0xc4, 0x8a, 0x59, 0xc3, 0x0c, 0x46, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetImage(SIZE size, SIIGBF flags, HBITMAP* phbm) mut
			{
				return VT.GetImage(&this, size, flags, phbm);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellItemImageFactory *self, SIZE size, SIIGBF flags, HBITMAP* phbm) GetImage;
			}
		}
		[CRepr]
		public struct IEnumShellItems : IUnknown
		{
			public const new Guid IID = .(0x70629033, 0xe363, 0x4a28, 0xa5, 0x67, 0x0d, 0xb7, 0x80, 0x06, 0xe6, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IShellItem** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumShellItems** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumShellItems *self, uint32 celt, IShellItem** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumShellItems *self, uint32 celt) Skip;
				public new function HRESULT(IEnumShellItems *self) Reset;
				public new function HRESULT(IEnumShellItems *self, IEnumShellItems** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ITransferAdviseSink : IUnknown
		{
			public const new Guid IID = .(0xd594d0d8, 0x8da7, 0x457b, 0xb3, 0xb4, 0xce, 0x5d, 0xba, 0xac, 0x0b, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateProgress(uint64 ullSizeCurrent, uint64 ullSizeTotal, int32 nFilesCurrent, int32 nFilesTotal, int32 nFoldersCurrent, int32 nFoldersTotal) mut
			{
				return VT.UpdateProgress(&this, ullSizeCurrent, ullSizeTotal, nFilesCurrent, nFilesTotal, nFoldersCurrent, nFoldersTotal);
			}
			public HRESULT UpdateTransferState(uint32 ts) mut
			{
				return VT.UpdateTransferState(&this, ts);
			}
			public HRESULT ConfirmOverwrite(IShellItem* psiSource, IShellItem* psiDestParent, PWSTR pszName) mut
			{
				return VT.ConfirmOverwrite(&this, psiSource, psiDestParent, pszName);
			}
			public HRESULT ConfirmEncryptionLoss(IShellItem* psiSource) mut
			{
				return VT.ConfirmEncryptionLoss(&this, psiSource);
			}
			public HRESULT FileFailure(IShellItem* psi, PWSTR pszItem, HRESULT hrError, char16* pszRename, uint32 cchRename) mut
			{
				return VT.FileFailure(&this, psi, pszItem, hrError, pszRename, cchRename);
			}
			public HRESULT SubStreamFailure(IShellItem* psi, PWSTR pszStreamName, HRESULT hrError) mut
			{
				return VT.SubStreamFailure(&this, psi, pszStreamName, hrError);
			}
			public HRESULT PropertyFailure(IShellItem* psi, PROPERTYKEY* pkey, HRESULT hrError) mut
			{
				return VT.PropertyFailure(&this, psi, pkey, hrError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransferAdviseSink *self, uint64 ullSizeCurrent, uint64 ullSizeTotal, int32 nFilesCurrent, int32 nFilesTotal, int32 nFoldersCurrent, int32 nFoldersTotal) UpdateProgress;
				public new function HRESULT(ITransferAdviseSink *self, uint32 ts) UpdateTransferState;
				public new function HRESULT(ITransferAdviseSink *self, IShellItem* psiSource, IShellItem* psiDestParent, PWSTR pszName) ConfirmOverwrite;
				public new function HRESULT(ITransferAdviseSink *self, IShellItem* psiSource) ConfirmEncryptionLoss;
				public new function HRESULT(ITransferAdviseSink *self, IShellItem* psi, PWSTR pszItem, HRESULT hrError, char16* pszRename, uint32 cchRename) FileFailure;
				public new function HRESULT(ITransferAdviseSink *self, IShellItem* psi, PWSTR pszStreamName, HRESULT hrError) SubStreamFailure;
				public new function HRESULT(ITransferAdviseSink *self, IShellItem* psi, PROPERTYKEY* pkey, HRESULT hrError) PropertyFailure;
			}
		}
		[CRepr]
		public struct ITransferSource : IUnknown
		{
			public const new Guid IID = .(0x00adb003, 0xbde9, 0x45c6, 0x8e, 0x29, 0xd0, 0x9f, 0x93, 0x53, 0xe1, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(ITransferAdviseSink* psink, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, psink, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT SetProperties(IPropertyChangeArray* pproparray) mut
			{
				return VT.SetProperties(&this, pproparray);
			}
			public HRESULT OpenItem(IShellItem* psi, uint32 flags, Guid* riid, void** ppv) mut
			{
				return VT.OpenItem(&this, psi, flags, riid, ppv);
			}
			public HRESULT MoveItem(IShellItem* psi, IShellItem* psiParentDst, PWSTR pszNameDst, uint32 flags, IShellItem** ppsiNew) mut
			{
				return VT.MoveItem(&this, psi, psiParentDst, pszNameDst, flags, ppsiNew);
			}
			public HRESULT RecycleItem(IShellItem* psiSource, IShellItem* psiParentDest, uint32 flags, IShellItem** ppsiNewDest) mut
			{
				return VT.RecycleItem(&this, psiSource, psiParentDest, flags, ppsiNewDest);
			}
			public HRESULT RemoveItem(IShellItem* psiSource, uint32 flags) mut
			{
				return VT.RemoveItem(&this, psiSource, flags);
			}
			public HRESULT RenameItem(IShellItem* psiSource, PWSTR pszNewName, uint32 flags, IShellItem** ppsiNewDest) mut
			{
				return VT.RenameItem(&this, psiSource, pszNewName, flags, ppsiNewDest);
			}
			public HRESULT LinkItem(IShellItem* psiSource, IShellItem* psiParentDest, PWSTR pszNewName, uint32 flags, IShellItem** ppsiNewDest) mut
			{
				return VT.LinkItem(&this, psiSource, psiParentDest, pszNewName, flags, ppsiNewDest);
			}
			public HRESULT ApplyPropertiesToItem(IShellItem* psiSource, IShellItem** ppsiNew) mut
			{
				return VT.ApplyPropertiesToItem(&this, psiSource, ppsiNew);
			}
			public HRESULT GetDefaultDestinationName(IShellItem* psiSource, IShellItem* psiParentDest, PWSTR* ppszDestinationName) mut
			{
				return VT.GetDefaultDestinationName(&this, psiSource, psiParentDest, ppszDestinationName);
			}
			public HRESULT EnterFolder(IShellItem* psiChildFolderDest) mut
			{
				return VT.EnterFolder(&this, psiChildFolderDest);
			}
			public HRESULT LeaveFolder(IShellItem* psiChildFolderDest) mut
			{
				return VT.LeaveFolder(&this, psiChildFolderDest);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransferSource *self, ITransferAdviseSink* psink, uint32* pdwCookie) Advise;
				public new function HRESULT(ITransferSource *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(ITransferSource *self, IPropertyChangeArray* pproparray) SetProperties;
				public new function HRESULT(ITransferSource *self, IShellItem* psi, uint32 flags, Guid* riid, void** ppv) OpenItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psi, IShellItem* psiParentDst, PWSTR pszNameDst, uint32 flags, IShellItem** ppsiNew) MoveItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, IShellItem* psiParentDest, uint32 flags, IShellItem** ppsiNewDest) RecycleItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, uint32 flags) RemoveItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, PWSTR pszNewName, uint32 flags, IShellItem** ppsiNewDest) RenameItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, IShellItem* psiParentDest, PWSTR pszNewName, uint32 flags, IShellItem** ppsiNewDest) LinkItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, IShellItem** ppsiNew) ApplyPropertiesToItem;
				public new function HRESULT(ITransferSource *self, IShellItem* psiSource, IShellItem* psiParentDest, PWSTR* ppszDestinationName) GetDefaultDestinationName;
				public new function HRESULT(ITransferSource *self, IShellItem* psiChildFolderDest) EnterFolder;
				public new function HRESULT(ITransferSource *self, IShellItem* psiChildFolderDest) LeaveFolder;
			}
		}
		[CRepr]
		public struct IEnumResources : IUnknown
		{
			public const new Guid IID = .(0x2dd81fe3, 0xa83c, 0x4da9, 0xa3, 0x30, 0x47, 0x24, 0x9d, 0x34, 0x5b, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, SHELL_ITEM_RESOURCE* psir, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, psir, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumResources** ppenumr) mut
			{
				return VT.Clone(&this, ppenumr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumResources *self, uint32 celt, SHELL_ITEM_RESOURCE* psir, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumResources *self, uint32 celt) Skip;
				public new function HRESULT(IEnumResources *self) Reset;
				public new function HRESULT(IEnumResources *self, IEnumResources** ppenumr) Clone;
			}
		}
		[CRepr]
		public struct IShellItemResources : IUnknown
		{
			public const new Guid IID = .(0xff5693be, 0x2ce0, 0x4d48, 0xb5, 0xc5, 0x40, 0x81, 0x7d, 0x1a, 0xcd, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributes(uint32* pdwAttributes) mut
			{
				return VT.GetAttributes(&this, pdwAttributes);
			}
			public HRESULT GetSize(uint64* pullSize) mut
			{
				return VT.GetSize(&this, pullSize);
			}
			public HRESULT GetTimes(FILETIME* pftCreation, FILETIME* pftWrite, FILETIME* pftAccess) mut
			{
				return VT.GetTimes(&this, pftCreation, pftWrite, pftAccess);
			}
			public HRESULT SetTimes(FILETIME* pftCreation, FILETIME* pftWrite, FILETIME* pftAccess) mut
			{
				return VT.SetTimes(&this, pftCreation, pftWrite, pftAccess);
			}
			public HRESULT GetResourceDescription(SHELL_ITEM_RESOURCE* pcsir, PWSTR* ppszDescription) mut
			{
				return VT.GetResourceDescription(&this, pcsir, ppszDescription);
			}
			public HRESULT EnumResources(IEnumResources** ppenumr) mut
			{
				return VT.EnumResources(&this, ppenumr);
			}
			public HRESULT SupportsResource(SHELL_ITEM_RESOURCE* pcsir) mut
			{
				return VT.SupportsResource(&this, pcsir);
			}
			public HRESULT OpenResource(SHELL_ITEM_RESOURCE* pcsir, Guid* riid, void** ppv) mut
			{
				return VT.OpenResource(&this, pcsir, riid, ppv);
			}
			public HRESULT CreateResource(SHELL_ITEM_RESOURCE* pcsir, Guid* riid, void** ppv) mut
			{
				return VT.CreateResource(&this, pcsir, riid, ppv);
			}
			public HRESULT MarkForDelete() mut
			{
				return VT.MarkForDelete(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellItemResources *self, uint32* pdwAttributes) GetAttributes;
				public new function HRESULT(IShellItemResources *self, uint64* pullSize) GetSize;
				public new function HRESULT(IShellItemResources *self, FILETIME* pftCreation, FILETIME* pftWrite, FILETIME* pftAccess) GetTimes;
				public new function HRESULT(IShellItemResources *self, FILETIME* pftCreation, FILETIME* pftWrite, FILETIME* pftAccess) SetTimes;
				public new function HRESULT(IShellItemResources *self, SHELL_ITEM_RESOURCE* pcsir, PWSTR* ppszDescription) GetResourceDescription;
				public new function HRESULT(IShellItemResources *self, IEnumResources** ppenumr) EnumResources;
				public new function HRESULT(IShellItemResources *self, SHELL_ITEM_RESOURCE* pcsir) SupportsResource;
				public new function HRESULT(IShellItemResources *self, SHELL_ITEM_RESOURCE* pcsir, Guid* riid, void** ppv) OpenResource;
				public new function HRESULT(IShellItemResources *self, SHELL_ITEM_RESOURCE* pcsir, Guid* riid, void** ppv) CreateResource;
				public new function HRESULT(IShellItemResources *self) MarkForDelete;
			}
		}
		[CRepr]
		public struct ITransferDestination : IUnknown
		{
			public const new Guid IID = .(0x48addd32, 0x3ca5, 0x4124, 0xab, 0xe3, 0xb5, 0xa7, 0x25, 0x31, 0xb2, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(ITransferAdviseSink* psink, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, psink, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT CreateItem(PWSTR pszName, uint32 dwAttributes, uint64 ullSize, uint32 flags, Guid* riidItem, void** ppvItem, Guid* riidResources, void** ppvResources) mut
			{
				return VT.CreateItem(&this, pszName, dwAttributes, ullSize, flags, riidItem, ppvItem, riidResources, ppvResources);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITransferDestination *self, ITransferAdviseSink* psink, uint32* pdwCookie) Advise;
				public new function HRESULT(ITransferDestination *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(ITransferDestination *self, PWSTR pszName, uint32 dwAttributes, uint64 ullSize, uint32 flags, Guid* riidItem, void** ppvItem, Guid* riidResources, void** ppvResources) CreateItem;
			}
		}
		[CRepr]
		public struct IFileOperationProgressSink : IUnknown
		{
			public const new Guid IID = .(0x04b0f1a7, 0x9490, 0x44bc, 0x96, 0xe1, 0x42, 0x96, 0xa3, 0x12, 0x52, 0xe2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartOperations() mut
			{
				return VT.StartOperations(&this);
			}
			public HRESULT FinishOperations(HRESULT hrResult) mut
			{
				return VT.FinishOperations(&this, hrResult);
			}
			public HRESULT PreRenameItem(uint32 dwFlags, IShellItem* psiItem, PWSTR pszNewName) mut
			{
				return VT.PreRenameItem(&this, dwFlags, psiItem, pszNewName);
			}
			public HRESULT PostRenameItem(uint32 dwFlags, IShellItem* psiItem, PWSTR pszNewName, HRESULT hrRename, IShellItem* psiNewlyCreated) mut
			{
				return VT.PostRenameItem(&this, dwFlags, psiItem, pszNewName, hrRename, psiNewlyCreated);
			}
			public HRESULT PreMoveItem(uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName) mut
			{
				return VT.PreMoveItem(&this, dwFlags, psiItem, psiDestinationFolder, pszNewName);
			}
			public HRESULT PostMoveItem(uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, HRESULT hrMove, IShellItem* psiNewlyCreated) mut
			{
				return VT.PostMoveItem(&this, dwFlags, psiItem, psiDestinationFolder, pszNewName, hrMove, psiNewlyCreated);
			}
			public HRESULT PreCopyItem(uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName) mut
			{
				return VT.PreCopyItem(&this, dwFlags, psiItem, psiDestinationFolder, pszNewName);
			}
			public HRESULT PostCopyItem(uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, HRESULT hrCopy, IShellItem* psiNewlyCreated) mut
			{
				return VT.PostCopyItem(&this, dwFlags, psiItem, psiDestinationFolder, pszNewName, hrCopy, psiNewlyCreated);
			}
			public HRESULT PreDeleteItem(uint32 dwFlags, IShellItem* psiItem) mut
			{
				return VT.PreDeleteItem(&this, dwFlags, psiItem);
			}
			public HRESULT PostDeleteItem(uint32 dwFlags, IShellItem* psiItem, HRESULT hrDelete, IShellItem* psiNewlyCreated) mut
			{
				return VT.PostDeleteItem(&this, dwFlags, psiItem, hrDelete, psiNewlyCreated);
			}
			public HRESULT PreNewItem(uint32 dwFlags, IShellItem* psiDestinationFolder, PWSTR pszNewName) mut
			{
				return VT.PreNewItem(&this, dwFlags, psiDestinationFolder, pszNewName);
			}
			public HRESULT PostNewItem(uint32 dwFlags, IShellItem* psiDestinationFolder, PWSTR pszNewName, PWSTR pszTemplateName, uint32 dwFileAttributes, HRESULT hrNew, IShellItem* psiNewItem) mut
			{
				return VT.PostNewItem(&this, dwFlags, psiDestinationFolder, pszNewName, pszTemplateName, dwFileAttributes, hrNew, psiNewItem);
			}
			public HRESULT UpdateProgress(uint32 iWorkTotal, uint32 iWorkSoFar) mut
			{
				return VT.UpdateProgress(&this, iWorkTotal, iWorkSoFar);
			}
			public HRESULT ResetTimer() mut
			{
				return VT.ResetTimer(&this);
			}
			public HRESULT PauseTimer() mut
			{
				return VT.PauseTimer(&this);
			}
			public HRESULT ResumeTimer() mut
			{
				return VT.ResumeTimer(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileOperationProgressSink *self) StartOperations;
				public new function HRESULT(IFileOperationProgressSink *self, HRESULT hrResult) FinishOperations;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, PWSTR pszNewName) PreRenameItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, PWSTR pszNewName, HRESULT hrRename, IShellItem* psiNewlyCreated) PostRenameItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName) PreMoveItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, HRESULT hrMove, IShellItem* psiNewlyCreated) PostMoveItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName) PreCopyItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, HRESULT hrCopy, IShellItem* psiNewlyCreated) PostCopyItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem) PreDeleteItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiItem, HRESULT hrDelete, IShellItem* psiNewlyCreated) PostDeleteItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiDestinationFolder, PWSTR pszNewName) PreNewItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 dwFlags, IShellItem* psiDestinationFolder, PWSTR pszNewName, PWSTR pszTemplateName, uint32 dwFileAttributes, HRESULT hrNew, IShellItem* psiNewItem) PostNewItem;
				public new function HRESULT(IFileOperationProgressSink *self, uint32 iWorkTotal, uint32 iWorkSoFar) UpdateProgress;
				public new function HRESULT(IFileOperationProgressSink *self) ResetTimer;
				public new function HRESULT(IFileOperationProgressSink *self) PauseTimer;
				public new function HRESULT(IFileOperationProgressSink *self) ResumeTimer;
			}
		}
		[CRepr]
		public struct IShellItemArray : IUnknown
		{
			public const new Guid IID = .(0xb63ea76d, 0x1f85, 0x456f, 0xa1, 0x9c, 0x48, 0x15, 0x9e, 0xfa, 0x85, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindToHandler(IBindCtx* pbc, Guid* bhid, Guid* riid, void** ppvOut) mut
			{
				return VT.BindToHandler(&this, pbc, bhid, riid, ppvOut);
			}
			public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyStore(&this, flags, riid, ppv);
			}
			public HRESULT GetPropertyDescriptionList(PROPERTYKEY* keyType, Guid* riid, void** ppv) mut
			{
				return VT.GetPropertyDescriptionList(&this, keyType, riid, ppv);
			}
			public HRESULT GetAttributes(SIATTRIBFLAGS AttribFlags, uint32 sfgaoMask, uint32* psfgaoAttribs) mut
			{
				return VT.GetAttributes(&this, AttribFlags, sfgaoMask, psfgaoAttribs);
			}
			public HRESULT GetCount(uint32* pdwNumItems) mut
			{
				return VT.GetCount(&this, pdwNumItems);
			}
			public HRESULT GetItemAt(uint32 dwIndex, IShellItem** ppsi) mut
			{
				return VT.GetItemAt(&this, dwIndex, ppsi);
			}
			public HRESULT EnumItems(IEnumShellItems** ppenumShellItems) mut
			{
				return VT.EnumItems(&this, ppenumShellItems);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellItemArray *self, IBindCtx* pbc, Guid* bhid, Guid* riid, void** ppvOut) BindToHandler;
				public new function HRESULT(IShellItemArray *self, GETPROPERTYSTOREFLAGS flags, Guid* riid, void** ppv) GetPropertyStore;
				public new function HRESULT(IShellItemArray *self, PROPERTYKEY* keyType, Guid* riid, void** ppv) GetPropertyDescriptionList;
				public new function HRESULT(IShellItemArray *self, SIATTRIBFLAGS AttribFlags, uint32 sfgaoMask, uint32* psfgaoAttribs) GetAttributes;
				public new function HRESULT(IShellItemArray *self, uint32* pdwNumItems) GetCount;
				public new function HRESULT(IShellItemArray *self, uint32 dwIndex, IShellItem** ppsi) GetItemAt;
				public new function HRESULT(IShellItemArray *self, IEnumShellItems** ppenumShellItems) EnumItems;
			}
		}
		[CRepr]
		public struct IInitializeWithItem : IUnknown
		{
			public const new Guid IID = .(0x7f73be3f, 0xfb79, 0x493c, 0xa6, 0xc7, 0x7e, 0xe1, 0x4e, 0x24, 0x58, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IShellItem* psi, uint32 grfMode) mut
			{
				return VT.Initialize(&this, psi, grfMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithItem *self, IShellItem* psi, uint32 grfMode) Initialize;
			}
		}
		[CRepr]
		public struct IObjectWithSelection : IUnknown
		{
			public const new Guid IID = .(0x1c9cd5bb, 0x98e9, 0x4491, 0xa6, 0x0f, 0x31, 0xaa, 0xcc, 0x72, 0xb8, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSelection(IShellItemArray* psia) mut
			{
				return VT.SetSelection(&this, psia);
			}
			public HRESULT GetSelection(Guid* riid, void** ppv) mut
			{
				return VT.GetSelection(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithSelection *self, IShellItemArray* psia) SetSelection;
				public new function HRESULT(IObjectWithSelection *self, Guid* riid, void** ppv) GetSelection;
			}
		}
		[CRepr]
		public struct IObjectWithBackReferences : IUnknown
		{
			public const new Guid IID = .(0x321a6a6a, 0xd61f, 0x4bf3, 0x97, 0xae, 0x14, 0xbe, 0x29, 0x86, 0xbb, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RemoveBackReferences() mut
			{
				return VT.RemoveBackReferences(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithBackReferences *self) RemoveBackReferences;
			}
		}
		[CRepr]
		public struct ICategoryProvider : IUnknown
		{
			public const new Guid IID = .(0x9af64809, 0x5864, 0x4c26, 0xa7, 0x20, 0xc1, 0xf7, 0x8c, 0x08, 0x6e, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanCategorizeOnSCID(PROPERTYKEY* pscid) mut
			{
				return VT.CanCategorizeOnSCID(&this, pscid);
			}
			public HRESULT GetDefaultCategory(Guid* pguid, PROPERTYKEY* pscid) mut
			{
				return VT.GetDefaultCategory(&this, pguid, pscid);
			}
			public HRESULT GetCategoryForSCID(PROPERTYKEY* pscid, Guid* pguid) mut
			{
				return VT.GetCategoryForSCID(&this, pscid, pguid);
			}
			public HRESULT EnumCategories(IEnumGUID** penum) mut
			{
				return VT.EnumCategories(&this, penum);
			}
			public HRESULT GetCategoryName(Guid* pguid, char16* pszName, uint32 cch) mut
			{
				return VT.GetCategoryName(&this, pguid, pszName, cch);
			}
			public HRESULT CreateCategory(Guid* pguid, Guid* riid, void** ppv) mut
			{
				return VT.CreateCategory(&this, pguid, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICategoryProvider *self, PROPERTYKEY* pscid) CanCategorizeOnSCID;
				public new function HRESULT(ICategoryProvider *self, Guid* pguid, PROPERTYKEY* pscid) GetDefaultCategory;
				public new function HRESULT(ICategoryProvider *self, PROPERTYKEY* pscid, Guid* pguid) GetCategoryForSCID;
				public new function HRESULT(ICategoryProvider *self, IEnumGUID** penum) EnumCategories;
				public new function HRESULT(ICategoryProvider *self, Guid* pguid, char16* pszName, uint32 cch) GetCategoryName;
				public new function HRESULT(ICategoryProvider *self, Guid* pguid, Guid* riid, void** ppv) CreateCategory;
			}
		}
		[CRepr]
		public struct ICategorizer : IUnknown
		{
			public const new Guid IID = .(0xa3b14589, 0x9174, 0x49a8, 0x89, 0xa3, 0x06, 0xa1, 0xae, 0x2b, 0x9b, 0xa7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(char16* pszDesc, uint32 cch) mut
			{
				return VT.GetDescription(&this, pszDesc, cch);
			}
			public HRESULT GetCategory(uint32 cidl, ITEMIDLIST** apidl, uint32* rgCategoryIds) mut
			{
				return VT.GetCategory(&this, cidl, apidl, rgCategoryIds);
			}
			public HRESULT GetCategoryInfo(uint32 dwCategoryId, CATEGORY_INFO* pci) mut
			{
				return VT.GetCategoryInfo(&this, dwCategoryId, pci);
			}
			public HRESULT CompareCategory(CATSORT_FLAGS csfFlags, uint32 dwCategoryId1, uint32 dwCategoryId2) mut
			{
				return VT.CompareCategory(&this, csfFlags, dwCategoryId1, dwCategoryId2);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICategorizer *self, char16* pszDesc, uint32 cch) GetDescription;
				public new function HRESULT(ICategorizer *self, uint32 cidl, ITEMIDLIST** apidl, uint32* rgCategoryIds) GetCategory;
				public new function HRESULT(ICategorizer *self, uint32 dwCategoryId, CATEGORY_INFO* pci) GetCategoryInfo;
				public new function HRESULT(ICategorizer *self, CATSORT_FLAGS csfFlags, uint32 dwCategoryId1, uint32 dwCategoryId2) CompareCategory;
			}
		}
		[CRepr]
		public struct IDropTargetHelper : IUnknown
		{
			public const new Guid IID = .(0x4657278b, 0x411b, 0x11d2, 0x83, 0x9a, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DragEnter(HWND hwndTarget, IDataObject* pDataObject, POINT* ppt, uint32 dwEffect) mut
			{
				return VT.DragEnter(&this, hwndTarget, pDataObject, ppt, dwEffect);
			}
			public HRESULT DragLeave() mut
			{
				return VT.DragLeave(&this);
			}
			public HRESULT DragOver(POINT* ppt, uint32 dwEffect) mut
			{
				return VT.DragOver(&this, ppt, dwEffect);
			}
			public HRESULT Drop(IDataObject* pDataObject, POINT* ppt, uint32 dwEffect) mut
			{
				return VT.Drop(&this, pDataObject, ppt, dwEffect);
			}
			public HRESULT Show(BOOL fShow) mut
			{
				return VT.Show(&this, fShow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDropTargetHelper *self, HWND hwndTarget, IDataObject* pDataObject, POINT* ppt, uint32 dwEffect) DragEnter;
				public new function HRESULT(IDropTargetHelper *self) DragLeave;
				public new function HRESULT(IDropTargetHelper *self, POINT* ppt, uint32 dwEffect) DragOver;
				public new function HRESULT(IDropTargetHelper *self, IDataObject* pDataObject, POINT* ppt, uint32 dwEffect) Drop;
				public new function HRESULT(IDropTargetHelper *self, BOOL fShow) Show;
			}
		}
		[CRepr]
		public struct IDragSourceHelper : IUnknown
		{
			public const new Guid IID = .(0xde5bf786, 0x477a, 0x11d2, 0x83, 0x9d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeFromBitmap(SHDRAGIMAGE* pshdi, IDataObject* pDataObject) mut
			{
				return VT.InitializeFromBitmap(&this, pshdi, pDataObject);
			}
			public HRESULT InitializeFromWindow(HWND hwnd, POINT* ppt, IDataObject* pDataObject) mut
			{
				return VT.InitializeFromWindow(&this, hwnd, ppt, pDataObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDragSourceHelper *self, SHDRAGIMAGE* pshdi, IDataObject* pDataObject) InitializeFromBitmap;
				public new function HRESULT(IDragSourceHelper *self, HWND hwnd, POINT* ppt, IDataObject* pDataObject) InitializeFromWindow;
			}
		}
		[CRepr]
		public struct IShellLinkA : IUnknown
		{
			public const new Guid IID = .(0x000214ee, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPath(uint8* pszFile, int32 cch, WIN32_FIND_DATAA* pfd, uint32 fFlags) mut
			{
				return VT.GetPath(&this, pszFile, cch, pfd, fFlags);
			}
			public HRESULT GetIDList(ITEMIDLIST** ppidl) mut
			{
				return VT.GetIDList(&this, ppidl);
			}
			public HRESULT SetIDList(ITEMIDLIST* pidl) mut
			{
				return VT.SetIDList(&this, pidl);
			}
			public HRESULT GetDescription(uint8* pszName, int32 cch) mut
			{
				return VT.GetDescription(&this, pszName, cch);
			}
			public HRESULT SetDescription(PSTR pszName) mut
			{
				return VT.SetDescription(&this, pszName);
			}
			public HRESULT GetWorkingDirectory(uint8* pszDir, int32 cch) mut
			{
				return VT.GetWorkingDirectory(&this, pszDir, cch);
			}
			public HRESULT SetWorkingDirectory(PSTR pszDir) mut
			{
				return VT.SetWorkingDirectory(&this, pszDir);
			}
			public HRESULT GetArguments(uint8* pszArgs, int32 cch) mut
			{
				return VT.GetArguments(&this, pszArgs, cch);
			}
			public HRESULT SetArguments(PSTR pszArgs) mut
			{
				return VT.SetArguments(&this, pszArgs);
			}
			public HRESULT GetHotkey(uint16* pwHotkey) mut
			{
				return VT.GetHotkey(&this, pwHotkey);
			}
			public HRESULT SetHotkey(uint16 wHotkey) mut
			{
				return VT.SetHotkey(&this, wHotkey);
			}
			public HRESULT GetShowCmd(int32* piShowCmd) mut
			{
				return VT.GetShowCmd(&this, piShowCmd);
			}
			public HRESULT SetShowCmd(int32 iShowCmd) mut
			{
				return VT.SetShowCmd(&this, iShowCmd);
			}
			public HRESULT GetIconLocation(uint8* pszIconPath, int32 cch, int32* piIcon) mut
			{
				return VT.GetIconLocation(&this, pszIconPath, cch, piIcon);
			}
			public HRESULT SetIconLocation(PSTR pszIconPath, int32 iIcon) mut
			{
				return VT.SetIconLocation(&this, pszIconPath, iIcon);
			}
			public HRESULT SetRelativePath(PSTR pszPathRel, uint32 dwReserved) mut
			{
				return VT.SetRelativePath(&this, pszPathRel, dwReserved);
			}
			public HRESULT Resolve(HWND hwnd, uint32 fFlags) mut
			{
				return VT.Resolve(&this, hwnd, fFlags);
			}
			public HRESULT SetPath(PSTR pszFile) mut
			{
				return VT.SetPath(&this, pszFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellLinkA *self, uint8* pszFile, int32 cch, WIN32_FIND_DATAA* pfd, uint32 fFlags) GetPath;
				public new function HRESULT(IShellLinkA *self, ITEMIDLIST** ppidl) GetIDList;
				public new function HRESULT(IShellLinkA *self, ITEMIDLIST* pidl) SetIDList;
				public new function HRESULT(IShellLinkA *self, uint8* pszName, int32 cch) GetDescription;
				public new function HRESULT(IShellLinkA *self, PSTR pszName) SetDescription;
				public new function HRESULT(IShellLinkA *self, uint8* pszDir, int32 cch) GetWorkingDirectory;
				public new function HRESULT(IShellLinkA *self, PSTR pszDir) SetWorkingDirectory;
				public new function HRESULT(IShellLinkA *self, uint8* pszArgs, int32 cch) GetArguments;
				public new function HRESULT(IShellLinkA *self, PSTR pszArgs) SetArguments;
				public new function HRESULT(IShellLinkA *self, uint16* pwHotkey) GetHotkey;
				public new function HRESULT(IShellLinkA *self, uint16 wHotkey) SetHotkey;
				public new function HRESULT(IShellLinkA *self, int32* piShowCmd) GetShowCmd;
				public new function HRESULT(IShellLinkA *self, int32 iShowCmd) SetShowCmd;
				public new function HRESULT(IShellLinkA *self, uint8* pszIconPath, int32 cch, int32* piIcon) GetIconLocation;
				public new function HRESULT(IShellLinkA *self, PSTR pszIconPath, int32 iIcon) SetIconLocation;
				public new function HRESULT(IShellLinkA *self, PSTR pszPathRel, uint32 dwReserved) SetRelativePath;
				public new function HRESULT(IShellLinkA *self, HWND hwnd, uint32 fFlags) Resolve;
				public new function HRESULT(IShellLinkA *self, PSTR pszFile) SetPath;
			}
		}
		[CRepr]
		public struct IShellLinkW : IUnknown
		{
			public const new Guid IID = .(0x000214f9, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPath(char16* pszFile, int32 cch, WIN32_FIND_DATAW* pfd, uint32 fFlags) mut
			{
				return VT.GetPath(&this, pszFile, cch, pfd, fFlags);
			}
			public HRESULT GetIDList(ITEMIDLIST** ppidl) mut
			{
				return VT.GetIDList(&this, ppidl);
			}
			public HRESULT SetIDList(ITEMIDLIST* pidl) mut
			{
				return VT.SetIDList(&this, pidl);
			}
			public HRESULT GetDescription(char16* pszName, int32 cch) mut
			{
				return VT.GetDescription(&this, pszName, cch);
			}
			public HRESULT SetDescription(PWSTR pszName) mut
			{
				return VT.SetDescription(&this, pszName);
			}
			public HRESULT GetWorkingDirectory(char16* pszDir, int32 cch) mut
			{
				return VT.GetWorkingDirectory(&this, pszDir, cch);
			}
			public HRESULT SetWorkingDirectory(PWSTR pszDir) mut
			{
				return VT.SetWorkingDirectory(&this, pszDir);
			}
			public HRESULT GetArguments(char16* pszArgs, int32 cch) mut
			{
				return VT.GetArguments(&this, pszArgs, cch);
			}
			public HRESULT SetArguments(PWSTR pszArgs) mut
			{
				return VT.SetArguments(&this, pszArgs);
			}
			public HRESULT GetHotkey(uint16* pwHotkey) mut
			{
				return VT.GetHotkey(&this, pwHotkey);
			}
			public HRESULT SetHotkey(uint16 wHotkey) mut
			{
				return VT.SetHotkey(&this, wHotkey);
			}
			public HRESULT GetShowCmd(int32* piShowCmd) mut
			{
				return VT.GetShowCmd(&this, piShowCmd);
			}
			public HRESULT SetShowCmd(int32 iShowCmd) mut
			{
				return VT.SetShowCmd(&this, iShowCmd);
			}
			public HRESULT GetIconLocation(char16* pszIconPath, int32 cch, int32* piIcon) mut
			{
				return VT.GetIconLocation(&this, pszIconPath, cch, piIcon);
			}
			public HRESULT SetIconLocation(PWSTR pszIconPath, int32 iIcon) mut
			{
				return VT.SetIconLocation(&this, pszIconPath, iIcon);
			}
			public HRESULT SetRelativePath(PWSTR pszPathRel, uint32 dwReserved) mut
			{
				return VT.SetRelativePath(&this, pszPathRel, dwReserved);
			}
			public HRESULT Resolve(HWND hwnd, uint32 fFlags) mut
			{
				return VT.Resolve(&this, hwnd, fFlags);
			}
			public HRESULT SetPath(PWSTR pszFile) mut
			{
				return VT.SetPath(&this, pszFile);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellLinkW *self, char16* pszFile, int32 cch, WIN32_FIND_DATAW* pfd, uint32 fFlags) GetPath;
				public new function HRESULT(IShellLinkW *self, ITEMIDLIST** ppidl) GetIDList;
				public new function HRESULT(IShellLinkW *self, ITEMIDLIST* pidl) SetIDList;
				public new function HRESULT(IShellLinkW *self, char16* pszName, int32 cch) GetDescription;
				public new function HRESULT(IShellLinkW *self, PWSTR pszName) SetDescription;
				public new function HRESULT(IShellLinkW *self, char16* pszDir, int32 cch) GetWorkingDirectory;
				public new function HRESULT(IShellLinkW *self, PWSTR pszDir) SetWorkingDirectory;
				public new function HRESULT(IShellLinkW *self, char16* pszArgs, int32 cch) GetArguments;
				public new function HRESULT(IShellLinkW *self, PWSTR pszArgs) SetArguments;
				public new function HRESULT(IShellLinkW *self, uint16* pwHotkey) GetHotkey;
				public new function HRESULT(IShellLinkW *self, uint16 wHotkey) SetHotkey;
				public new function HRESULT(IShellLinkW *self, int32* piShowCmd) GetShowCmd;
				public new function HRESULT(IShellLinkW *self, int32 iShowCmd) SetShowCmd;
				public new function HRESULT(IShellLinkW *self, char16* pszIconPath, int32 cch, int32* piIcon) GetIconLocation;
				public new function HRESULT(IShellLinkW *self, PWSTR pszIconPath, int32 iIcon) SetIconLocation;
				public new function HRESULT(IShellLinkW *self, PWSTR pszPathRel, uint32 dwReserved) SetRelativePath;
				public new function HRESULT(IShellLinkW *self, HWND hwnd, uint32 fFlags) Resolve;
				public new function HRESULT(IShellLinkW *self, PWSTR pszFile) SetPath;
			}
		}
		[CRepr]
		public struct IShellLinkDataList : IUnknown
		{
			public const new Guid IID = .(0x45e2b4ae, 0xb1c3, 0x11d0, 0xb9, 0x2f, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddDataBlock(void* pDataBlock) mut
			{
				return VT.AddDataBlock(&this, pDataBlock);
			}
			public HRESULT CopyDataBlock(uint32 dwSig, void** ppDataBlock) mut
			{
				return VT.CopyDataBlock(&this, dwSig, ppDataBlock);
			}
			public HRESULT RemoveDataBlock(uint32 dwSig) mut
			{
				return VT.RemoveDataBlock(&this, dwSig);
			}
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			public HRESULT SetFlags(uint32 dwFlags) mut
			{
				return VT.SetFlags(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellLinkDataList *self, void* pDataBlock) AddDataBlock;
				public new function HRESULT(IShellLinkDataList *self, uint32 dwSig, void** ppDataBlock) CopyDataBlock;
				public new function HRESULT(IShellLinkDataList *self, uint32 dwSig) RemoveDataBlock;
				public new function HRESULT(IShellLinkDataList *self, uint32* pdwFlags) ComGetFlags;
				public new function HRESULT(IShellLinkDataList *self, uint32 dwFlags) SetFlags;
			}
		}
		[CRepr]
		public struct IResolveShellLink : IUnknown
		{
			public const new Guid IID = .(0x5cd52983, 0x9449, 0x11d2, 0x96, 0x3a, 0x00, 0xc0, 0x4f, 0x79, 0xad, 0xf0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResolveShellLink(IUnknown* punkLink, HWND hwnd, uint32 fFlags) mut
			{
				return VT.ResolveShellLink(&this, punkLink, hwnd, fFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResolveShellLink *self, IUnknown* punkLink, HWND hwnd, uint32 fFlags) ResolveShellLink;
			}
		}
		[CRepr]
		public struct IActionProgressDialog : IUnknown
		{
			public const new Guid IID = .(0x49ff1172, 0xeadc, 0x446d, 0x92, 0x85, 0x15, 0x64, 0x53, 0xa6, 0x43, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint32 flags, PWSTR pszTitle, PWSTR pszCancel) mut
			{
				return VT.Initialize(&this, flags, pszTitle, pszCancel);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActionProgressDialog *self, uint32 flags, PWSTR pszTitle, PWSTR pszCancel) Initialize;
				public new function HRESULT(IActionProgressDialog *self) Stop;
			}
		}
		[CRepr]
		public struct IActionProgress : IUnknown
		{
			public const new Guid IID = .(0x49ff1173, 0xeadc, 0x446d, 0x92, 0x85, 0x15, 0x64, 0x53, 0xa6, 0x43, 0x1c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Begin(SPACTION action, uint32 flags) mut
			{
				return VT.Begin(&this, action, flags);
			}
			public HRESULT UpdateProgress(uint64 ulCompleted, uint64 ulTotal) mut
			{
				return VT.UpdateProgress(&this, ulCompleted, ulTotal);
			}
			public HRESULT UpdateText(SPTEXT sptext, PWSTR pszText, BOOL fMayCompact) mut
			{
				return VT.UpdateText(&this, sptext, pszText, fMayCompact);
			}
			public HRESULT QueryCancel(BOOL* pfCancelled) mut
			{
				return VT.QueryCancel(&this, pfCancelled);
			}
			public HRESULT ResetCancel() mut
			{
				return VT.ResetCancel(&this);
			}
			public HRESULT End() mut
			{
				return VT.End(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IActionProgress *self, SPACTION action, uint32 flags) Begin;
				public new function HRESULT(IActionProgress *self, uint64 ulCompleted, uint64 ulTotal) UpdateProgress;
				public new function HRESULT(IActionProgress *self, SPTEXT sptext, PWSTR pszText, BOOL fMayCompact) UpdateText;
				public new function HRESULT(IActionProgress *self, BOOL* pfCancelled) QueryCancel;
				public new function HRESULT(IActionProgress *self) ResetCancel;
				public new function HRESULT(IActionProgress *self) End;
			}
		}
		[CRepr]
		public struct IShellExtInit : IUnknown
		{
			public const new Guid IID = .(0x000214e8, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(ITEMIDLIST* pidlFolder, IDataObject* pdtobj, HKEY hkeyProgID) mut
			{
				return VT.Initialize(&this, pidlFolder, pdtobj, hkeyProgID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellExtInit *self, ITEMIDLIST* pidlFolder, IDataObject* pdtobj, HKEY hkeyProgID) Initialize;
			}
		}
		[CRepr]
		public struct IShellPropSheetExt : IUnknown
		{
			public const new Guid IID = .(0x000214e9, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPages(LPFNSVADDPROPSHEETPAGE pfnAddPage, LPARAM lParam) mut
			{
				return VT.AddPages(&this, pfnAddPage, lParam);
			}
			public HRESULT ReplacePage(uint32 uPageID, LPFNSVADDPROPSHEETPAGE pfnReplaceWith, LPARAM lParam) mut
			{
				return VT.ReplacePage(&this, uPageID, pfnReplaceWith, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellPropSheetExt *self, LPFNSVADDPROPSHEETPAGE pfnAddPage, LPARAM lParam) AddPages;
				public new function HRESULT(IShellPropSheetExt *self, uint32 uPageID, LPFNSVADDPROPSHEETPAGE pfnReplaceWith, LPARAM lParam) ReplacePage;
			}
		}
		[CRepr]
		public struct IRemoteComputer : IUnknown
		{
			public const new Guid IID = .(0x000214fe, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszMachine, BOOL bEnumerating) mut
			{
				return VT.Initialize(&this, pszMachine, bEnumerating);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRemoteComputer *self, PWSTR pszMachine, BOOL bEnumerating) Initialize;
			}
		}
		[CRepr]
		public struct IQueryContinue : IUnknown
		{
			public const new Guid IID = .(0x7307055c, 0xb24a, 0x486b, 0x9f, 0x25, 0x16, 0x3e, 0x59, 0x7a, 0x28, 0xa9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryContinue() mut
			{
				return VT.QueryContinue(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryContinue *self) QueryContinue;
			}
		}
		[CRepr]
		public struct IObjectWithCancelEvent : IUnknown
		{
			public const new Guid IID = .(0xf279b885, 0x0ae9, 0x4b85, 0xac, 0x06, 0xdd, 0xec, 0xf9, 0x40, 0x89, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCancelEvent(HANDLE* phEvent) mut
			{
				return VT.GetCancelEvent(&this, phEvent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithCancelEvent *self, HANDLE* phEvent) GetCancelEvent;
			}
		}
		[CRepr]
		public struct IUserNotification : IUnknown
		{
			public const new Guid IID = .(0xba9711ba, 0x5893, 0x4787, 0xa7, 0xe1, 0x41, 0x27, 0x71, 0x51, 0x55, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBalloonInfo(PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) mut
			{
				return VT.SetBalloonInfo(&this, pszTitle, pszText, dwInfoFlags);
			}
			public HRESULT SetBalloonRetry(uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) mut
			{
				return VT.SetBalloonRetry(&this, dwShowTime, dwInterval, cRetryCount);
			}
			public HRESULT SetIconInfo(HICON hIcon, PWSTR pszToolTip) mut
			{
				return VT.SetIconInfo(&this, hIcon, pszToolTip);
			}
			public HRESULT Show(IQueryContinue* pqc, uint32 dwContinuePollInterval) mut
			{
				return VT.Show(&this, pqc, dwContinuePollInterval);
			}
			public HRESULT PlaySound(PWSTR pszSoundName) mut
			{
				return VT.PlaySound(&this, pszSoundName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUserNotification *self, PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) SetBalloonInfo;
				public new function HRESULT(IUserNotification *self, uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) SetBalloonRetry;
				public new function HRESULT(IUserNotification *self, HICON hIcon, PWSTR pszToolTip) SetIconInfo;
				public new function HRESULT(IUserNotification *self, IQueryContinue* pqc, uint32 dwContinuePollInterval) Show;
				public new function HRESULT(IUserNotification *self, PWSTR pszSoundName) PlaySound;
			}
		}
		[CRepr]
		public struct IItemNameLimits : IUnknown
		{
			public const new Guid IID = .(0x1df0d7f1, 0xb267, 0x4d28, 0x8b, 0x10, 0x12, 0xe2, 0x32, 0x02, 0xa5, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValidCharacters(PWSTR* ppwszValidChars, PWSTR* ppwszInvalidChars) mut
			{
				return VT.GetValidCharacters(&this, ppwszValidChars, ppwszInvalidChars);
			}
			public HRESULT GetMaxLength(PWSTR pszName, int32* piMaxNameLen) mut
			{
				return VT.GetMaxLength(&this, pszName, piMaxNameLen);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IItemNameLimits *self, PWSTR* ppwszValidChars, PWSTR* ppwszInvalidChars) GetValidCharacters;
				public new function HRESULT(IItemNameLimits *self, PWSTR pszName, int32* piMaxNameLen) GetMaxLength;
			}
		}
		[CRepr]
		public struct ISearchFolderItemFactory : IUnknown
		{
			public const new Guid IID = .(0xa0ffbc28, 0x5482, 0x4366, 0xbe, 0x27, 0x3e, 0x81, 0xe7, 0x8e, 0x06, 0xc2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDisplayName(PWSTR pszDisplayName) mut
			{
				return VT.SetDisplayName(&this, pszDisplayName);
			}
			public HRESULT SetFolderTypeID(Guid ftid) mut
			{
				return VT.SetFolderTypeID(&this, ftid);
			}
			public HRESULT SetFolderLogicalViewMode(FOLDERLOGICALVIEWMODE flvm) mut
			{
				return VT.SetFolderLogicalViewMode(&this, flvm);
			}
			public HRESULT SetIconSize(int32 iIconSize) mut
			{
				return VT.SetIconSize(&this, iIconSize);
			}
			public HRESULT SetVisibleColumns(uint32 cVisibleColumns, PROPERTYKEY* rgKey) mut
			{
				return VT.SetVisibleColumns(&this, cVisibleColumns, rgKey);
			}
			public HRESULT SetSortColumns(uint32 cSortColumns, SORTCOLUMN* rgSortColumns) mut
			{
				return VT.SetSortColumns(&this, cSortColumns, rgSortColumns);
			}
			public HRESULT SetGroupColumn(PROPERTYKEY* keyGroup) mut
			{
				return VT.SetGroupColumn(&this, keyGroup);
			}
			public HRESULT SetStacks(uint32 cStackKeys, PROPERTYKEY* rgStackKeys) mut
			{
				return VT.SetStacks(&this, cStackKeys, rgStackKeys);
			}
			public HRESULT SetScope(IShellItemArray* psiaScope) mut
			{
				return VT.SetScope(&this, psiaScope);
			}
			public HRESULT SetCondition(ICondition* pCondition) mut
			{
				return VT.SetCondition(&this, pCondition);
			}
			public HRESULT GetShellItem(Guid* riid, void** ppv) mut
			{
				return VT.GetShellItem(&this, riid, ppv);
			}
			public HRESULT GetIDList(ITEMIDLIST** ppidl) mut
			{
				return VT.GetIDList(&this, ppidl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISearchFolderItemFactory *self, PWSTR pszDisplayName) SetDisplayName;
				public new function HRESULT(ISearchFolderItemFactory *self, Guid ftid) SetFolderTypeID;
				public new function HRESULT(ISearchFolderItemFactory *self, FOLDERLOGICALVIEWMODE flvm) SetFolderLogicalViewMode;
				public new function HRESULT(ISearchFolderItemFactory *self, int32 iIconSize) SetIconSize;
				public new function HRESULT(ISearchFolderItemFactory *self, uint32 cVisibleColumns, PROPERTYKEY* rgKey) SetVisibleColumns;
				public new function HRESULT(ISearchFolderItemFactory *self, uint32 cSortColumns, SORTCOLUMN* rgSortColumns) SetSortColumns;
				public new function HRESULT(ISearchFolderItemFactory *self, PROPERTYKEY* keyGroup) SetGroupColumn;
				public new function HRESULT(ISearchFolderItemFactory *self, uint32 cStackKeys, PROPERTYKEY* rgStackKeys) SetStacks;
				public new function HRESULT(ISearchFolderItemFactory *self, IShellItemArray* psiaScope) SetScope;
				public new function HRESULT(ISearchFolderItemFactory *self, ICondition* pCondition) SetCondition;
				public new function HRESULT(ISearchFolderItemFactory *self, Guid* riid, void** ppv) GetShellItem;
				public new function HRESULT(ISearchFolderItemFactory *self, ITEMIDLIST** ppidl) GetIDList;
			}
		}
		[CRepr]
		public struct IExtractImage : IUnknown
		{
			public const new Guid IID = .(0xbb2e617c, 0x0920, 0x11d1, 0x9a, 0x0b, 0x00, 0xc0, 0x4f, 0xc2, 0xd6, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLocation(char16* pszPathBuffer, uint32 cch, uint32* pdwPriority, SIZE* prgSize, uint32 dwRecClrDepth, uint32* pdwFlags) mut
			{
				return VT.GetLocation(&this, pszPathBuffer, cch, pdwPriority, prgSize, dwRecClrDepth, pdwFlags);
			}
			public HRESULT Extract(HBITMAP* phBmpThumbnail) mut
			{
				return VT.Extract(&this, phBmpThumbnail);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtractImage *self, char16* pszPathBuffer, uint32 cch, uint32* pdwPriority, SIZE* prgSize, uint32 dwRecClrDepth, uint32* pdwFlags) GetLocation;
				public new function HRESULT(IExtractImage *self, HBITMAP* phBmpThumbnail) Extract;
			}
		}
		[CRepr]
		public struct IExtractImage2 : IExtractImage
		{
			public const new Guid IID = .(0x953bb1ee, 0x93b4, 0x11d1, 0x98, 0xa3, 0x00, 0xc0, 0x4f, 0xb6, 0x87, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDateStamp(FILETIME* pDateStamp) mut
			{
				return VT.GetDateStamp(&this, pDateStamp);
			}
			[CRepr]
			public struct VTable : IExtractImage.VTable
			{
				public new function HRESULT(IExtractImage2 *self, FILETIME* pDateStamp) GetDateStamp;
			}
		}
		[CRepr]
		public struct IThumbnailHandlerFactory : IUnknown
		{
			public const new Guid IID = .(0xe35b4b2e, 0x00da, 0x4bc1, 0x9f, 0x13, 0x38, 0xbc, 0x11, 0xf5, 0xd4, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetThumbnailHandler(ITEMIDLIST* pidlChild, IBindCtx* pbc, Guid* riid, void** ppv) mut
			{
				return VT.GetThumbnailHandler(&this, pidlChild, pbc, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailHandlerFactory *self, ITEMIDLIST* pidlChild, IBindCtx* pbc, Guid* riid, void** ppv) GetThumbnailHandler;
			}
		}
		[CRepr]
		public struct IParentAndItem : IUnknown
		{
			public const new Guid IID = .(0xb3a4b685, 0xb685, 0x4805, 0x99, 0xd9, 0x5d, 0xea, 0xd2, 0x87, 0x32, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetParentAndItem(ITEMIDLIST* pidlParent, IShellFolder* psf, ITEMIDLIST* pidlChild) mut
			{
				return VT.SetParentAndItem(&this, pidlParent, psf, pidlChild);
			}
			public HRESULT GetParentAndItem(ITEMIDLIST** ppidlParent, IShellFolder** ppsf, ITEMIDLIST** ppidlChild) mut
			{
				return VT.GetParentAndItem(&this, ppidlParent, ppsf, ppidlChild);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IParentAndItem *self, ITEMIDLIST* pidlParent, IShellFolder* psf, ITEMIDLIST* pidlChild) SetParentAndItem;
				public new function HRESULT(IParentAndItem *self, ITEMIDLIST** ppidlParent, IShellFolder** ppsf, ITEMIDLIST** ppidlChild) GetParentAndItem;
			}
		}
		[CRepr]
		public struct IDockingWindow : IOleWindow
		{
			public const new Guid IID = .(0x012dd920, 0x7b26, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowDW(BOOL fShow) mut
			{
				return VT.ShowDW(&this, fShow);
			}
			public HRESULT CloseDW(uint32 dwReserved) mut
			{
				return VT.CloseDW(&this, dwReserved);
			}
			public HRESULT ResizeBorderDW(RECT* prcBorder, IUnknown* punkToolbarSite, BOOL fReserved) mut
			{
				return VT.ResizeBorderDW(&this, prcBorder, punkToolbarSite, fReserved);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IDockingWindow *self, BOOL fShow) ShowDW;
				public new function HRESULT(IDockingWindow *self, uint32 dwReserved) CloseDW;
				public new function HRESULT(IDockingWindow *self, RECT* prcBorder, IUnknown* punkToolbarSite, BOOL fReserved) ResizeBorderDW;
			}
		}
		[CRepr]
		public struct IDeskBand : IDockingWindow
		{
			public const new Guid IID = .(0xeb0fe172, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBandInfo(uint32 dwBandID, uint32 dwViewMode, DESKBANDINFO* pdbi) mut
			{
				return VT.GetBandInfo(&this, dwBandID, dwViewMode, pdbi);
			}
			[CRepr]
			public struct VTable : IDockingWindow.VTable
			{
				public new function HRESULT(IDeskBand *self, uint32 dwBandID, uint32 dwViewMode, DESKBANDINFO* pdbi) GetBandInfo;
			}
		}
		[CRepr]
		public struct IDeskBandInfo : IUnknown
		{
			public const new Guid IID = .(0x77e425fc, 0xcbf9, 0x4307, 0xba, 0x6a, 0xbb, 0x57, 0x27, 0x74, 0x56, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDefaultBandWidth(uint32 dwBandID, uint32 dwViewMode, int32* pnWidth) mut
			{
				return VT.GetDefaultBandWidth(&this, dwBandID, dwViewMode, pnWidth);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDeskBandInfo *self, uint32 dwBandID, uint32 dwViewMode, int32* pnWidth) GetDefaultBandWidth;
			}
		}
		[CRepr]
		public struct ITaskbarList : IUnknown
		{
			public const new Guid IID = .(0x56fdf342, 0xfd6d, 0x11d0, 0x95, 0x8a, 0x00, 0x60, 0x97, 0xc9, 0xa0, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HrInit() mut
			{
				return VT.HrInit(&this);
			}
			public HRESULT AddTab(HWND hwnd) mut
			{
				return VT.AddTab(&this, hwnd);
			}
			public HRESULT DeleteTab(HWND hwnd) mut
			{
				return VT.DeleteTab(&this, hwnd);
			}
			public HRESULT ActivateTab(HWND hwnd) mut
			{
				return VT.ActivateTab(&this, hwnd);
			}
			public HRESULT SetActiveAlt(HWND hwnd) mut
			{
				return VT.SetActiveAlt(&this, hwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITaskbarList *self) HrInit;
				public new function HRESULT(ITaskbarList *self, HWND hwnd) AddTab;
				public new function HRESULT(ITaskbarList *self, HWND hwnd) DeleteTab;
				public new function HRESULT(ITaskbarList *self, HWND hwnd) ActivateTab;
				public new function HRESULT(ITaskbarList *self, HWND hwnd) SetActiveAlt;
			}
		}
		[CRepr]
		public struct ITaskbarList2 : ITaskbarList
		{
			public const new Guid IID = .(0x602d4995, 0xb13a, 0x429b, 0xa6, 0x6e, 0x19, 0x35, 0xe4, 0x4f, 0x43, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MarkFullscreenWindow(HWND hwnd, BOOL fFullscreen) mut
			{
				return VT.MarkFullscreenWindow(&this, hwnd, fFullscreen);
			}
			[CRepr]
			public struct VTable : ITaskbarList.VTable
			{
				public new function HRESULT(ITaskbarList2 *self, HWND hwnd, BOOL fFullscreen) MarkFullscreenWindow;
			}
		}
		[CRepr]
		public struct ITaskbarList3 : ITaskbarList2
		{
			public const new Guid IID = .(0xea1afb91, 0x9e28, 0x4b86, 0x90, 0xe9, 0x9e, 0x9f, 0x8a, 0x5e, 0xef, 0xaf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProgressValue(HWND hwnd, uint64 ullCompleted, uint64 ullTotal) mut
			{
				return VT.SetProgressValue(&this, hwnd, ullCompleted, ullTotal);
			}
			public HRESULT SetProgressState(HWND hwnd, TBPFLAG tbpFlags) mut
			{
				return VT.SetProgressState(&this, hwnd, tbpFlags);
			}
			public HRESULT RegisterTab(HWND hwndTab, HWND hwndMDI) mut
			{
				return VT.RegisterTab(&this, hwndTab, hwndMDI);
			}
			public HRESULT UnregisterTab(HWND hwndTab) mut
			{
				return VT.UnregisterTab(&this, hwndTab);
			}
			public HRESULT SetTabOrder(HWND hwndTab, HWND hwndInsertBefore) mut
			{
				return VT.SetTabOrder(&this, hwndTab, hwndInsertBefore);
			}
			public HRESULT SetTabActive(HWND hwndTab, HWND hwndMDI, uint32 dwReserved) mut
			{
				return VT.SetTabActive(&this, hwndTab, hwndMDI, dwReserved);
			}
			public HRESULT ThumbBarAddButtons(HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) mut
			{
				return VT.ThumbBarAddButtons(&this, hwnd, cButtons, pButton);
			}
			public HRESULT ThumbBarUpdateButtons(HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) mut
			{
				return VT.ThumbBarUpdateButtons(&this, hwnd, cButtons, pButton);
			}
			public HRESULT ThumbBarSetImageList(HWND hwnd, HIMAGELIST himl) mut
			{
				return VT.ThumbBarSetImageList(&this, hwnd, himl);
			}
			public HRESULT SetOverlayIcon(HWND hwnd, HICON hIcon, PWSTR pszDescription) mut
			{
				return VT.SetOverlayIcon(&this, hwnd, hIcon, pszDescription);
			}
			public HRESULT SetThumbnailTooltip(HWND hwnd, PWSTR pszTip) mut
			{
				return VT.SetThumbnailTooltip(&this, hwnd, pszTip);
			}
			public HRESULT SetThumbnailClip(HWND hwnd, RECT* prcClip) mut
			{
				return VT.SetThumbnailClip(&this, hwnd, prcClip);
			}
			[CRepr]
			public struct VTable : ITaskbarList2.VTable
			{
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, uint64 ullCompleted, uint64 ullTotal) SetProgressValue;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, TBPFLAG tbpFlags) SetProgressState;
				public new function HRESULT(ITaskbarList3 *self, HWND hwndTab, HWND hwndMDI) RegisterTab;
				public new function HRESULT(ITaskbarList3 *self, HWND hwndTab) UnregisterTab;
				public new function HRESULT(ITaskbarList3 *self, HWND hwndTab, HWND hwndInsertBefore) SetTabOrder;
				public new function HRESULT(ITaskbarList3 *self, HWND hwndTab, HWND hwndMDI, uint32 dwReserved) SetTabActive;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) ThumbBarAddButtons;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) ThumbBarUpdateButtons;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, HIMAGELIST himl) ThumbBarSetImageList;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, HICON hIcon, PWSTR pszDescription) SetOverlayIcon;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, PWSTR pszTip) SetThumbnailTooltip;
				public new function HRESULT(ITaskbarList3 *self, HWND hwnd, RECT* prcClip) SetThumbnailClip;
			}
		}
		[CRepr]
		public struct ITaskbarList4 : ITaskbarList3
		{
			public const new Guid IID = .(0xc43dc798, 0x95d1, 0x4bea, 0x90, 0x30, 0xbb, 0x99, 0xe2, 0x98, 0x3a, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTabProperties(HWND hwndTab, STPFLAG stpFlags) mut
			{
				return VT.SetTabProperties(&this, hwndTab, stpFlags);
			}
			[CRepr]
			public struct VTable : ITaskbarList3.VTable
			{
				public new function HRESULT(ITaskbarList4 *self, HWND hwndTab, STPFLAG stpFlags) SetTabProperties;
			}
		}
		[CRepr]
		public struct IExplorerBrowserEvents : IUnknown
		{
			public const new Guid IID = .(0x361bbdc7, 0xe6ee, 0x4e13, 0xbe, 0x58, 0x58, 0xe2, 0x24, 0x0c, 0x81, 0x0f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnNavigationPending(ITEMIDLIST* pidlFolder) mut
			{
				return VT.OnNavigationPending(&this, pidlFolder);
			}
			public HRESULT OnViewCreated(IShellView* psv) mut
			{
				return VT.OnViewCreated(&this, psv);
			}
			public HRESULT OnNavigationComplete(ITEMIDLIST* pidlFolder) mut
			{
				return VT.OnNavigationComplete(&this, pidlFolder);
			}
			public HRESULT OnNavigationFailed(ITEMIDLIST* pidlFolder) mut
			{
				return VT.OnNavigationFailed(&this, pidlFolder);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerBrowserEvents *self, ITEMIDLIST* pidlFolder) OnNavigationPending;
				public new function HRESULT(IExplorerBrowserEvents *self, IShellView* psv) OnViewCreated;
				public new function HRESULT(IExplorerBrowserEvents *self, ITEMIDLIST* pidlFolder) OnNavigationComplete;
				public new function HRESULT(IExplorerBrowserEvents *self, ITEMIDLIST* pidlFolder) OnNavigationFailed;
			}
		}
		[CRepr]
		public struct IExplorerBrowser : IUnknown
		{
			public const new Guid IID = .(0xdfd3b6b5, 0xc10c, 0x4be9, 0x85, 0xf6, 0xa6, 0x69, 0x69, 0xf4, 0x02, 0xf6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND hwndParent, RECT* prc, FOLDERSETTINGS* pfs) mut
			{
				return VT.Initialize(&this, hwndParent, prc, pfs);
			}
			public HRESULT Destroy() mut
			{
				return VT.Destroy(&this);
			}
			public HRESULT SetRect(int* phdwp, RECT rcBrowser) mut
			{
				return VT.SetRect(&this, phdwp, rcBrowser);
			}
			public HRESULT SetPropertyBag(PWSTR pszPropertyBag) mut
			{
				return VT.SetPropertyBag(&this, pszPropertyBag);
			}
			public HRESULT SetEmptyText(PWSTR pszEmptyText) mut
			{
				return VT.SetEmptyText(&this, pszEmptyText);
			}
			public HRESULT SetFolderSettings(FOLDERSETTINGS* pfs) mut
			{
				return VT.SetFolderSettings(&this, pfs);
			}
			public HRESULT Advise(IExplorerBrowserEvents* psbe, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, psbe, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT SetOptions(EXPLORER_BROWSER_OPTIONS dwFlag) mut
			{
				return VT.SetOptions(&this, dwFlag);
			}
			public HRESULT GetOptions(EXPLORER_BROWSER_OPTIONS* pdwFlag) mut
			{
				return VT.GetOptions(&this, pdwFlag);
			}
			public HRESULT BrowseToIDList(ITEMIDLIST* pidl, uint32 uFlags) mut
			{
				return VT.BrowseToIDList(&this, pidl, uFlags);
			}
			public HRESULT BrowseToObject(IUnknown* punk, uint32 uFlags) mut
			{
				return VT.BrowseToObject(&this, punk, uFlags);
			}
			public HRESULT FillFromObject(IUnknown* punk, EXPLORER_BROWSER_FILL_FLAGS dwFlags) mut
			{
				return VT.FillFromObject(&this, punk, dwFlags);
			}
			public HRESULT RemoveAll() mut
			{
				return VT.RemoveAll(&this);
			}
			public HRESULT GetCurrentView(Guid* riid, void** ppv) mut
			{
				return VT.GetCurrentView(&this, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerBrowser *self, HWND hwndParent, RECT* prc, FOLDERSETTINGS* pfs) Initialize;
				public new function HRESULT(IExplorerBrowser *self) Destroy;
				public new function HRESULT(IExplorerBrowser *self, int* phdwp, RECT rcBrowser) SetRect;
				public new function HRESULT(IExplorerBrowser *self, PWSTR pszPropertyBag) SetPropertyBag;
				public new function HRESULT(IExplorerBrowser *self, PWSTR pszEmptyText) SetEmptyText;
				public new function HRESULT(IExplorerBrowser *self, FOLDERSETTINGS* pfs) SetFolderSettings;
				public new function HRESULT(IExplorerBrowser *self, IExplorerBrowserEvents* psbe, uint32* pdwCookie) Advise;
				public new function HRESULT(IExplorerBrowser *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(IExplorerBrowser *self, EXPLORER_BROWSER_OPTIONS dwFlag) SetOptions;
				public new function HRESULT(IExplorerBrowser *self, EXPLORER_BROWSER_OPTIONS* pdwFlag) GetOptions;
				public new function HRESULT(IExplorerBrowser *self, ITEMIDLIST* pidl, uint32 uFlags) BrowseToIDList;
				public new function HRESULT(IExplorerBrowser *self, IUnknown* punk, uint32 uFlags) BrowseToObject;
				public new function HRESULT(IExplorerBrowser *self, IUnknown* punk, EXPLORER_BROWSER_FILL_FLAGS dwFlags) FillFromObject;
				public new function HRESULT(IExplorerBrowser *self) RemoveAll;
				public new function HRESULT(IExplorerBrowser *self, Guid* riid, void** ppv) GetCurrentView;
			}
		}
		[CRepr]
		public struct IEnumObjects : IUnknown
		{
			public const new Guid IID = .(0x2c1c7e2e, 0x2d0e, 0x4059, 0x83, 0x1e, 0x1e, 0x6f, 0x82, 0x33, 0x5c, 0x2e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, Guid* riid, void** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, riid, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumObjects** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumObjects *self, uint32 celt, Guid* riid, void** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumObjects *self, uint32 celt) Skip;
				public new function HRESULT(IEnumObjects *self) Reset;
				public new function HRESULT(IEnumObjects *self, IEnumObjects** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IOperationsProgressDialog : IUnknown
		{
			public const new Guid IID = .(0x0c9fb851, 0xe5c9, 0x43eb, 0xa3, 0x70, 0xf0, 0x67, 0x7b, 0x13, 0x87, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartProgressDialog(HWND hwndOwner, uint32 flags) mut
			{
				return VT.StartProgressDialog(&this, hwndOwner, flags);
			}
			public HRESULT StopProgressDialog() mut
			{
				return VT.StopProgressDialog(&this);
			}
			public HRESULT SetOperation(SPACTION action) mut
			{
				return VT.SetOperation(&this, action);
			}
			public HRESULT SetMode(uint32 mode) mut
			{
				return VT.SetMode(&this, mode);
			}
			public HRESULT UpdateProgress(uint64 ullPointsCurrent, uint64 ullPointsTotal, uint64 ullSizeCurrent, uint64 ullSizeTotal, uint64 ullItemsCurrent, uint64 ullItemsTotal) mut
			{
				return VT.UpdateProgress(&this, ullPointsCurrent, ullPointsTotal, ullSizeCurrent, ullSizeTotal, ullItemsCurrent, ullItemsTotal);
			}
			public HRESULT UpdateLocations(IShellItem* psiSource, IShellItem* psiTarget, IShellItem* psiItem) mut
			{
				return VT.UpdateLocations(&this, psiSource, psiTarget, psiItem);
			}
			public HRESULT ResetTimer() mut
			{
				return VT.ResetTimer(&this);
			}
			public HRESULT PauseTimer() mut
			{
				return VT.PauseTimer(&this);
			}
			public HRESULT ResumeTimer() mut
			{
				return VT.ResumeTimer(&this);
			}
			public HRESULT GetMilliseconds(uint64* pullElapsed, uint64* pullRemaining) mut
			{
				return VT.GetMilliseconds(&this, pullElapsed, pullRemaining);
			}
			public HRESULT GetOperationStatus(PDOPSTATUS* popstatus) mut
			{
				return VT.GetOperationStatus(&this, popstatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOperationsProgressDialog *self, HWND hwndOwner, uint32 flags) StartProgressDialog;
				public new function HRESULT(IOperationsProgressDialog *self) StopProgressDialog;
				public new function HRESULT(IOperationsProgressDialog *self, SPACTION action) SetOperation;
				public new function HRESULT(IOperationsProgressDialog *self, uint32 mode) SetMode;
				public new function HRESULT(IOperationsProgressDialog *self, uint64 ullPointsCurrent, uint64 ullPointsTotal, uint64 ullSizeCurrent, uint64 ullSizeTotal, uint64 ullItemsCurrent, uint64 ullItemsTotal) UpdateProgress;
				public new function HRESULT(IOperationsProgressDialog *self, IShellItem* psiSource, IShellItem* psiTarget, IShellItem* psiItem) UpdateLocations;
				public new function HRESULT(IOperationsProgressDialog *self) ResetTimer;
				public new function HRESULT(IOperationsProgressDialog *self) PauseTimer;
				public new function HRESULT(IOperationsProgressDialog *self) ResumeTimer;
				public new function HRESULT(IOperationsProgressDialog *self, uint64* pullElapsed, uint64* pullRemaining) GetMilliseconds;
				public new function HRESULT(IOperationsProgressDialog *self, PDOPSTATUS* popstatus) GetOperationStatus;
			}
		}
		[CRepr]
		public struct IIOCancelInformation : IUnknown
		{
			public const new Guid IID = .(0xf5b0bf81, 0x8cb5, 0x4b1b, 0x94, 0x49, 0x1a, 0x15, 0x9e, 0x0c, 0x73, 0x3c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCancelInformation(uint32 dwThreadID, uint32 uMsgCancel) mut
			{
				return VT.SetCancelInformation(&this, dwThreadID, uMsgCancel);
			}
			public HRESULT GetCancelInformation(uint32* pdwThreadID, uint32* puMsgCancel) mut
			{
				return VT.GetCancelInformation(&this, pdwThreadID, puMsgCancel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IIOCancelInformation *self, uint32 dwThreadID, uint32 uMsgCancel) SetCancelInformation;
				public new function HRESULT(IIOCancelInformation *self, uint32* pdwThreadID, uint32* puMsgCancel) GetCancelInformation;
			}
		}
		[CRepr]
		public struct IFileOperation : IUnknown
		{
			public const new Guid IID = .(0x947aab5f, 0x0a5c, 0x4c13, 0xb4, 0xd6, 0x4b, 0xf7, 0x83, 0x6f, 0xc9, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IFileOperationProgressSink* pfops, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pfops, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT SetOperationFlags(uint32 dwOperationFlags) mut
			{
				return VT.SetOperationFlags(&this, dwOperationFlags);
			}
			public HRESULT SetProgressMessage(PWSTR pszMessage) mut
			{
				return VT.SetProgressMessage(&this, pszMessage);
			}
			public HRESULT SetProgressDialog(IOperationsProgressDialog* popd) mut
			{
				return VT.SetProgressDialog(&this, popd);
			}
			public HRESULT SetProperties(IPropertyChangeArray* pproparray) mut
			{
				return VT.SetProperties(&this, pproparray);
			}
			public HRESULT SetOwnerWindow(HWND hwndOwner) mut
			{
				return VT.SetOwnerWindow(&this, hwndOwner);
			}
			public HRESULT ApplyPropertiesToItem(IShellItem* psiItem) mut
			{
				return VT.ApplyPropertiesToItem(&this, psiItem);
			}
			public HRESULT ApplyPropertiesToItems(IUnknown* punkItems) mut
			{
				return VT.ApplyPropertiesToItems(&this, punkItems);
			}
			public HRESULT RenameItem(IShellItem* psiItem, PWSTR pszNewName, IFileOperationProgressSink* pfopsItem) mut
			{
				return VT.RenameItem(&this, psiItem, pszNewName, pfopsItem);
			}
			public HRESULT RenameItems(IUnknown* pUnkItems, PWSTR pszNewName) mut
			{
				return VT.RenameItems(&this, pUnkItems, pszNewName);
			}
			public HRESULT MoveItem(IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, IFileOperationProgressSink* pfopsItem) mut
			{
				return VT.MoveItem(&this, psiItem, psiDestinationFolder, pszNewName, pfopsItem);
			}
			public HRESULT MoveItems(IUnknown* punkItems, IShellItem* psiDestinationFolder) mut
			{
				return VT.MoveItems(&this, punkItems, psiDestinationFolder);
			}
			public HRESULT CopyItem(IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszCopyName, IFileOperationProgressSink* pfopsItem) mut
			{
				return VT.CopyItem(&this, psiItem, psiDestinationFolder, pszCopyName, pfopsItem);
			}
			public HRESULT CopyItems(IUnknown* punkItems, IShellItem* psiDestinationFolder) mut
			{
				return VT.CopyItems(&this, punkItems, psiDestinationFolder);
			}
			public HRESULT DeleteItem(IShellItem* psiItem, IFileOperationProgressSink* pfopsItem) mut
			{
				return VT.DeleteItem(&this, psiItem, pfopsItem);
			}
			public HRESULT DeleteItems(IUnknown* punkItems) mut
			{
				return VT.DeleteItems(&this, punkItems);
			}
			public HRESULT NewItem(IShellItem* psiDestinationFolder, uint32 dwFileAttributes, PWSTR pszName, PWSTR pszTemplateName, IFileOperationProgressSink* pfopsItem) mut
			{
				return VT.NewItem(&this, psiDestinationFolder, dwFileAttributes, pszName, pszTemplateName, pfopsItem);
			}
			public HRESULT PerformOperations() mut
			{
				return VT.PerformOperations(&this);
			}
			public HRESULT GetAnyOperationsAborted(BOOL* pfAnyOperationsAborted) mut
			{
				return VT.GetAnyOperationsAborted(&this, pfAnyOperationsAborted);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileOperation *self, IFileOperationProgressSink* pfops, uint32* pdwCookie) Advise;
				public new function HRESULT(IFileOperation *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(IFileOperation *self, uint32 dwOperationFlags) SetOperationFlags;
				public new function HRESULT(IFileOperation *self, PWSTR pszMessage) SetProgressMessage;
				public new function HRESULT(IFileOperation *self, IOperationsProgressDialog* popd) SetProgressDialog;
				public new function HRESULT(IFileOperation *self, IPropertyChangeArray* pproparray) SetProperties;
				public new function HRESULT(IFileOperation *self, HWND hwndOwner) SetOwnerWindow;
				public new function HRESULT(IFileOperation *self, IShellItem* psiItem) ApplyPropertiesToItem;
				public new function HRESULT(IFileOperation *self, IUnknown* punkItems) ApplyPropertiesToItems;
				public new function HRESULT(IFileOperation *self, IShellItem* psiItem, PWSTR pszNewName, IFileOperationProgressSink* pfopsItem) RenameItem;
				public new function HRESULT(IFileOperation *self, IUnknown* pUnkItems, PWSTR pszNewName) RenameItems;
				public new function HRESULT(IFileOperation *self, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszNewName, IFileOperationProgressSink* pfopsItem) MoveItem;
				public new function HRESULT(IFileOperation *self, IUnknown* punkItems, IShellItem* psiDestinationFolder) MoveItems;
				public new function HRESULT(IFileOperation *self, IShellItem* psiItem, IShellItem* psiDestinationFolder, PWSTR pszCopyName, IFileOperationProgressSink* pfopsItem) CopyItem;
				public new function HRESULT(IFileOperation *self, IUnknown* punkItems, IShellItem* psiDestinationFolder) CopyItems;
				public new function HRESULT(IFileOperation *self, IShellItem* psiItem, IFileOperationProgressSink* pfopsItem) DeleteItem;
				public new function HRESULT(IFileOperation *self, IUnknown* punkItems) DeleteItems;
				public new function HRESULT(IFileOperation *self, IShellItem* psiDestinationFolder, uint32 dwFileAttributes, PWSTR pszName, PWSTR pszTemplateName, IFileOperationProgressSink* pfopsItem) NewItem;
				public new function HRESULT(IFileOperation *self) PerformOperations;
				public new function HRESULT(IFileOperation *self, BOOL* pfAnyOperationsAborted) GetAnyOperationsAborted;
			}
		}
		[CRepr]
		public struct IFileOperation2 : IFileOperation
		{
			public const new Guid IID = .(0xcd8f23c1, 0x8f61, 0x4916, 0x90, 0x9d, 0x55, 0xbd, 0xd0, 0x91, 0x87, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOperationFlags2(FILE_OPERATION_FLAGS2 operationFlags2) mut
			{
				return VT.SetOperationFlags2(&this, operationFlags2);
			}
			[CRepr]
			public struct VTable : IFileOperation.VTable
			{
				public new function HRESULT(IFileOperation2 *self, FILE_OPERATION_FLAGS2 operationFlags2) SetOperationFlags2;
			}
		}
		[CRepr]
		public struct IObjectProvider : IUnknown
		{
			public const new Guid IID = .(0xa6087428, 0x3be3, 0x4d73, 0xb3, 0x08, 0x7c, 0x04, 0xa5, 0x40, 0xbf, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryObject(Guid* guidObject, Guid* riid, void** ppvOut) mut
			{
				return VT.QueryObject(&this, guidObject, riid, ppvOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectProvider *self, Guid* guidObject, Guid* riid, void** ppvOut) QueryObject;
			}
		}
		[CRepr]
		public struct INamespaceWalkCB : IUnknown
		{
			public const new Guid IID = .(0xd92995f8, 0xcf5e, 0x4a76, 0xbf, 0x59, 0xea, 0xd3, 0x9e, 0xa2, 0xb9, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FoundItem(IShellFolder* psf, ITEMIDLIST* pidl) mut
			{
				return VT.FoundItem(&this, psf, pidl);
			}
			public HRESULT EnterFolder(IShellFolder* psf, ITEMIDLIST* pidl) mut
			{
				return VT.EnterFolder(&this, psf, pidl);
			}
			public HRESULT LeaveFolder(IShellFolder* psf, ITEMIDLIST* pidl) mut
			{
				return VT.LeaveFolder(&this, psf, pidl);
			}
			public HRESULT InitializeProgressDialog(PWSTR* ppszTitle, PWSTR* ppszCancel) mut
			{
				return VT.InitializeProgressDialog(&this, ppszTitle, ppszCancel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INamespaceWalkCB *self, IShellFolder* psf, ITEMIDLIST* pidl) FoundItem;
				public new function HRESULT(INamespaceWalkCB *self, IShellFolder* psf, ITEMIDLIST* pidl) EnterFolder;
				public new function HRESULT(INamespaceWalkCB *self, IShellFolder* psf, ITEMIDLIST* pidl) LeaveFolder;
				public new function HRESULT(INamespaceWalkCB *self, PWSTR* ppszTitle, PWSTR* ppszCancel) InitializeProgressDialog;
			}
		}
		[CRepr]
		public struct INamespaceWalkCB2 : INamespaceWalkCB
		{
			public const new Guid IID = .(0x7ac7492b, 0xc38e, 0x438a, 0x87, 0xdb, 0x68, 0x73, 0x78, 0x44, 0xff, 0x70);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WalkComplete(HRESULT hr) mut
			{
				return VT.WalkComplete(&this, hr);
			}
			[CRepr]
			public struct VTable : INamespaceWalkCB.VTable
			{
				public new function HRESULT(INamespaceWalkCB2 *self, HRESULT hr) WalkComplete;
			}
		}
		[CRepr]
		public struct INamespaceWalk : IUnknown
		{
			public const new Guid IID = .(0x57ced8a7, 0x3f4a, 0x432c, 0x93, 0x50, 0x30, 0xf2, 0x44, 0x83, 0xf7, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Walk(IUnknown* punkToWalk, uint32 dwFlags, int32 cDepth, INamespaceWalkCB* pnswcb) mut
			{
				return VT.Walk(&this, punkToWalk, dwFlags, cDepth, pnswcb);
			}
			public HRESULT GetIDArrayResult(uint32* pcItems, ITEMIDLIST*** prgpidl) mut
			{
				return VT.GetIDArrayResult(&this, pcItems, prgpidl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INamespaceWalk *self, IUnknown* punkToWalk, uint32 dwFlags, int32 cDepth, INamespaceWalkCB* pnswcb) Walk;
				public new function HRESULT(INamespaceWalk *self, uint32* pcItems, ITEMIDLIST*** prgpidl) GetIDArrayResult;
			}
		}
		[CRepr]
		public struct IBandSite : IUnknown
		{
			public const new Guid IID = .(0x4cf504b0, 0xde96, 0x11d0, 0x8b, 0x3f, 0x00, 0xa0, 0xc9, 0x11, 0xe8, 0xe5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddBand(IUnknown* punk) mut
			{
				return VT.AddBand(&this, punk);
			}
			public HRESULT EnumBands(uint32 uBand, uint32* pdwBandID) mut
			{
				return VT.EnumBands(&this, uBand, pdwBandID);
			}
			public HRESULT QueryBand(uint32 dwBandID, IDeskBand** ppstb, uint32* pdwState, char16* pszName, int32 cchName) mut
			{
				return VT.QueryBand(&this, dwBandID, ppstb, pdwState, pszName, cchName);
			}
			public HRESULT SetBandState(uint32 dwBandID, uint32 dwMask, uint32 dwState) mut
			{
				return VT.SetBandState(&this, dwBandID, dwMask, dwState);
			}
			public HRESULT RemoveBand(uint32 dwBandID) mut
			{
				return VT.RemoveBand(&this, dwBandID);
			}
			public HRESULT GetBandObject(uint32 dwBandID, Guid* riid, void** ppv) mut
			{
				return VT.GetBandObject(&this, dwBandID, riid, ppv);
			}
			public HRESULT SetBandSiteInfo(BANDSITEINFO* pbsinfo) mut
			{
				return VT.SetBandSiteInfo(&this, pbsinfo);
			}
			public HRESULT GetBandSiteInfo(BANDSITEINFO* pbsinfo) mut
			{
				return VT.GetBandSiteInfo(&this, pbsinfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBandSite *self, IUnknown* punk) AddBand;
				public new function HRESULT(IBandSite *self, uint32 uBand, uint32* pdwBandID) EnumBands;
				public new function HRESULT(IBandSite *self, uint32 dwBandID, IDeskBand** ppstb, uint32* pdwState, char16* pszName, int32 cchName) QueryBand;
				public new function HRESULT(IBandSite *self, uint32 dwBandID, uint32 dwMask, uint32 dwState) SetBandState;
				public new function HRESULT(IBandSite *self, uint32 dwBandID) RemoveBand;
				public new function HRESULT(IBandSite *self, uint32 dwBandID, Guid* riid, void** ppv) GetBandObject;
				public new function HRESULT(IBandSite *self, BANDSITEINFO* pbsinfo) SetBandSiteInfo;
				public new function HRESULT(IBandSite *self, BANDSITEINFO* pbsinfo) GetBandSiteInfo;
			}
		}
		[CRepr]
		public struct IModalWindow : IUnknown
		{
			public const new Guid IID = .(0xb4db1657, 0x70d7, 0x485e, 0x8e, 0x3e, 0x6f, 0xcb, 0x5a, 0x5c, 0x18, 0x02);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Show(HWND hwndOwner) mut
			{
				return VT.Show(&this, hwndOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IModalWindow *self, HWND hwndOwner) Show;
			}
		}
		[CRepr]
		public struct IContextMenuSite : IUnknown
		{
			public const new Guid IID = .(0x0811aebe, 0x0b87, 0x4c54, 0x9e, 0x72, 0x54, 0x8c, 0xf6, 0x49, 0x01, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoContextMenuPopup(IUnknown* punkContextMenu, uint32 fFlags, POINT pt) mut
			{
				return VT.DoContextMenuPopup(&this, punkContextMenu, fFlags, pt);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextMenuSite *self, IUnknown* punkContextMenu, uint32 fFlags, POINT pt) DoContextMenuPopup;
			}
		}
		[CRepr]
		public struct IMenuBand : IUnknown
		{
			public const new Guid IID = .(0x568804cd, 0xcbd7, 0x11d0, 0x98, 0x16, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMenuMessage(MSG* pmsg) mut
			{
				return VT.IsMenuMessage(&this, pmsg);
			}
			public HRESULT TranslateMenuMessage(MSG* pmsg, LRESULT* plRet) mut
			{
				return VT.TranslateMenuMessage(&this, pmsg, plRet);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMenuBand *self, MSG* pmsg) IsMenuMessage;
				public new function HRESULT(IMenuBand *self, MSG* pmsg, LRESULT* plRet) TranslateMenuMessage;
			}
		}
		[CRepr]
		public struct IRegTreeItem : IUnknown
		{
			public const new Guid IID = .(0xa9521922, 0x0812, 0x4d44, 0x9e, 0xc3, 0x7f, 0xd3, 0x8c, 0x72, 0x6f, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCheckState(BOOL* pbCheck) mut
			{
				return VT.GetCheckState(&this, pbCheck);
			}
			public HRESULT SetCheckState(BOOL bCheck) mut
			{
				return VT.SetCheckState(&this, bCheck);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRegTreeItem *self, BOOL* pbCheck) GetCheckState;
				public new function HRESULT(IRegTreeItem *self, BOOL bCheck) SetCheckState;
			}
		}
		[CRepr]
		public struct IDeskBar : IOleWindow
		{
			public const new Guid IID = .(0xeb0fe173, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetClient(IUnknown* punkClient) mut
			{
				return VT.SetClient(&this, punkClient);
			}
			public HRESULT GetClient(IUnknown** ppunkClient) mut
			{
				return VT.GetClient(&this, ppunkClient);
			}
			public HRESULT OnPosRectChangeDB(RECT* prc) mut
			{
				return VT.OnPosRectChangeDB(&this, prc);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IDeskBar *self, IUnknown* punkClient) SetClient;
				public new function HRESULT(IDeskBar *self, IUnknown** ppunkClient) GetClient;
				public new function HRESULT(IDeskBar *self, RECT* prc) OnPosRectChangeDB;
			}
		}
		[CRepr]
		public struct IMenuPopup : IDeskBar
		{
			public const new Guid IID = .(0xd1e7afeb, 0x6a2e, 0x11d0, 0x8c, 0x78, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Popup(POINTL* ppt, RECTL* prcExclude, int32 dwFlags) mut
			{
				return VT.Popup(&this, ppt, prcExclude, dwFlags);
			}
			public HRESULT OnSelect(uint32 dwSelectType) mut
			{
				return VT.OnSelect(&this, dwSelectType);
			}
			public HRESULT SetSubMenu(IMenuPopup* pmp, BOOL fSet) mut
			{
				return VT.SetSubMenu(&this, pmp, fSet);
			}
			[CRepr]
			public struct VTable : IDeskBar.VTable
			{
				public new function HRESULT(IMenuPopup *self, POINTL* ppt, RECTL* prcExclude, int32 dwFlags) Popup;
				public new function HRESULT(IMenuPopup *self, uint32 dwSelectType) OnSelect;
				public new function HRESULT(IMenuPopup *self, IMenuPopup* pmp, BOOL fSet) SetSubMenu;
			}
		}
		[CRepr]
		public struct IFileIsInUse : IUnknown
		{
			public const new Guid IID = .(0x64a1cbf0, 0x3a1a, 0x4461, 0x91, 0x58, 0x37, 0x69, 0x69, 0x69, 0x39, 0x50);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAppName(PWSTR* ppszName) mut
			{
				return VT.GetAppName(&this, ppszName);
			}
			public HRESULT GetUsage(FILE_USAGE_TYPE* pfut) mut
			{
				return VT.GetUsage(&this, pfut);
			}
			public HRESULT GetCapabilities(uint32* pdwCapFlags) mut
			{
				return VT.GetCapabilities(&this, pdwCapFlags);
			}
			public HRESULT GetSwitchToHWND(HWND* phwnd) mut
			{
				return VT.GetSwitchToHWND(&this, phwnd);
			}
			public HRESULT CloseFile() mut
			{
				return VT.CloseFile(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileIsInUse *self, PWSTR* ppszName) GetAppName;
				public new function HRESULT(IFileIsInUse *self, FILE_USAGE_TYPE* pfut) GetUsage;
				public new function HRESULT(IFileIsInUse *self, uint32* pdwCapFlags) GetCapabilities;
				public new function HRESULT(IFileIsInUse *self, HWND* phwnd) GetSwitchToHWND;
				public new function HRESULT(IFileIsInUse *self) CloseFile;
			}
		}
		[CRepr]
		public struct IFileDialogEvents : IUnknown
		{
			public const new Guid IID = .(0x973510db, 0x7d7f, 0x452b, 0x89, 0x75, 0x74, 0xa8, 0x58, 0x28, 0xd3, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnFileOk(IFileDialog* pfd) mut
			{
				return VT.OnFileOk(&this, pfd);
			}
			public HRESULT OnFolderChanging(IFileDialog* pfd, IShellItem* psiFolder) mut
			{
				return VT.OnFolderChanging(&this, pfd, psiFolder);
			}
			public HRESULT OnFolderChange(IFileDialog* pfd) mut
			{
				return VT.OnFolderChange(&this, pfd);
			}
			public HRESULT OnSelectionChange(IFileDialog* pfd) mut
			{
				return VT.OnSelectionChange(&this, pfd);
			}
			public HRESULT OnShareViolation(IFileDialog* pfd, IShellItem* psi, FDE_SHAREVIOLATION_RESPONSE* pResponse) mut
			{
				return VT.OnShareViolation(&this, pfd, psi, pResponse);
			}
			public HRESULT OnTypeChange(IFileDialog* pfd) mut
			{
				return VT.OnTypeChange(&this, pfd);
			}
			public HRESULT OnOverwrite(IFileDialog* pfd, IShellItem* psi, FDE_OVERWRITE_RESPONSE* pResponse) mut
			{
				return VT.OnOverwrite(&this, pfd, psi, pResponse);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd) OnFileOk;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd, IShellItem* psiFolder) OnFolderChanging;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd) OnFolderChange;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd) OnSelectionChange;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd, IShellItem* psi, FDE_SHAREVIOLATION_RESPONSE* pResponse) OnShareViolation;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd) OnTypeChange;
				public new function HRESULT(IFileDialogEvents *self, IFileDialog* pfd, IShellItem* psi, FDE_OVERWRITE_RESPONSE* pResponse) OnOverwrite;
			}
		}
		[CRepr]
		public struct IFileDialog : IModalWindow
		{
			public const new Guid IID = .(0x42f85136, 0xdb7e, 0x439c, 0x85, 0xf1, 0xe4, 0x07, 0x5d, 0x13, 0x5f, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFileTypes(uint32 cFileTypes, COMDLG_FILTERSPEC* rgFilterSpec) mut
			{
				return VT.SetFileTypes(&this, cFileTypes, rgFilterSpec);
			}
			public HRESULT SetFileTypeIndex(uint32 iFileType) mut
			{
				return VT.SetFileTypeIndex(&this, iFileType);
			}
			public HRESULT GetFileTypeIndex(uint32* piFileType) mut
			{
				return VT.GetFileTypeIndex(&this, piFileType);
			}
			public HRESULT Advise(IFileDialogEvents* pfde, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pfde, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT SetOptions(uint32 fos) mut
			{
				return VT.SetOptions(&this, fos);
			}
			public HRESULT GetOptions(uint32* pfos) mut
			{
				return VT.GetOptions(&this, pfos);
			}
			public HRESULT SetDefaultFolder(IShellItem* psi) mut
			{
				return VT.SetDefaultFolder(&this, psi);
			}
			public HRESULT SetFolder(IShellItem* psi) mut
			{
				return VT.SetFolder(&this, psi);
			}
			public HRESULT GetFolder(IShellItem** ppsi) mut
			{
				return VT.GetFolder(&this, ppsi);
			}
			public HRESULT GetCurrentSelection(IShellItem** ppsi) mut
			{
				return VT.GetCurrentSelection(&this, ppsi);
			}
			public HRESULT SetFileName(PWSTR pszName) mut
			{
				return VT.SetFileName(&this, pszName);
			}
			public HRESULT GetFileName(PWSTR* pszName) mut
			{
				return VT.GetFileName(&this, pszName);
			}
			public HRESULT SetTitle(PWSTR pszTitle) mut
			{
				return VT.SetTitle(&this, pszTitle);
			}
			public HRESULT SetOkButtonLabel(PWSTR pszText) mut
			{
				return VT.SetOkButtonLabel(&this, pszText);
			}
			public HRESULT SetFileNameLabel(PWSTR pszLabel) mut
			{
				return VT.SetFileNameLabel(&this, pszLabel);
			}
			public HRESULT GetResult(IShellItem** ppsi) mut
			{
				return VT.GetResult(&this, ppsi);
			}
			public HRESULT AddPlace(IShellItem* psi, FDAP fdap) mut
			{
				return VT.AddPlace(&this, psi, fdap);
			}
			public HRESULT SetDefaultExtension(PWSTR pszDefaultExtension) mut
			{
				return VT.SetDefaultExtension(&this, pszDefaultExtension);
			}
			public HRESULT Close(HRESULT hr) mut
			{
				return VT.Close(&this, hr);
			}
			public HRESULT SetClientGuid(Guid* guid) mut
			{
				return VT.SetClientGuid(&this, guid);
			}
			public HRESULT ClearClientData() mut
			{
				return VT.ClearClientData(&this);
			}
			public HRESULT SetFilter(IShellItemFilter* pFilter) mut
			{
				return VT.SetFilter(&this, pFilter);
			}
			[CRepr]
			public struct VTable : IModalWindow.VTable
			{
				public new function HRESULT(IFileDialog *self, uint32 cFileTypes, COMDLG_FILTERSPEC* rgFilterSpec) SetFileTypes;
				public new function HRESULT(IFileDialog *self, uint32 iFileType) SetFileTypeIndex;
				public new function HRESULT(IFileDialog *self, uint32* piFileType) GetFileTypeIndex;
				public new function HRESULT(IFileDialog *self, IFileDialogEvents* pfde, uint32* pdwCookie) Advise;
				public new function HRESULT(IFileDialog *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(IFileDialog *self, uint32 fos) SetOptions;
				public new function HRESULT(IFileDialog *self, uint32* pfos) GetOptions;
				public new function HRESULT(IFileDialog *self, IShellItem* psi) SetDefaultFolder;
				public new function HRESULT(IFileDialog *self, IShellItem* psi) SetFolder;
				public new function HRESULT(IFileDialog *self, IShellItem** ppsi) GetFolder;
				public new function HRESULT(IFileDialog *self, IShellItem** ppsi) GetCurrentSelection;
				public new function HRESULT(IFileDialog *self, PWSTR pszName) SetFileName;
				public new function HRESULT(IFileDialog *self, PWSTR* pszName) GetFileName;
				public new function HRESULT(IFileDialog *self, PWSTR pszTitle) SetTitle;
				public new function HRESULT(IFileDialog *self, PWSTR pszText) SetOkButtonLabel;
				public new function HRESULT(IFileDialog *self, PWSTR pszLabel) SetFileNameLabel;
				public new function HRESULT(IFileDialog *self, IShellItem** ppsi) GetResult;
				public new function HRESULT(IFileDialog *self, IShellItem* psi, FDAP fdap) AddPlace;
				public new function HRESULT(IFileDialog *self, PWSTR pszDefaultExtension) SetDefaultExtension;
				public new function HRESULT(IFileDialog *self, HRESULT hr) Close;
				public new function HRESULT(IFileDialog *self, Guid* guid) SetClientGuid;
				public new function HRESULT(IFileDialog *self) ClearClientData;
				public new function HRESULT(IFileDialog *self, IShellItemFilter* pFilter) SetFilter;
			}
		}
		[CRepr]
		public struct IFileSaveDialog : IFileDialog
		{
			public const new Guid IID = .(0x84bccd23, 0x5fde, 0x4cdb, 0xae, 0xa4, 0xaf, 0x64, 0xb8, 0x3d, 0x78, 0xab);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetSaveAsItem(IShellItem* psi) mut
			{
				return VT.SetSaveAsItem(&this, psi);
			}
			public HRESULT SetProperties(IPropertyStore* pStore) mut
			{
				return VT.SetProperties(&this, pStore);
			}
			public HRESULT SetCollectedProperties(IPropertyDescriptionList* pList, BOOL fAppendDefault) mut
			{
				return VT.SetCollectedProperties(&this, pList, fAppendDefault);
			}
			public HRESULT GetProperties(IPropertyStore** ppStore) mut
			{
				return VT.GetProperties(&this, ppStore);
			}
			public HRESULT ApplyProperties(IShellItem* psi, IPropertyStore* pStore, HWND hwnd, IFileOperationProgressSink* pSink) mut
			{
				return VT.ApplyProperties(&this, psi, pStore, hwnd, pSink);
			}
			[CRepr]
			public struct VTable : IFileDialog.VTable
			{
				public new function HRESULT(IFileSaveDialog *self, IShellItem* psi) SetSaveAsItem;
				public new function HRESULT(IFileSaveDialog *self, IPropertyStore* pStore) SetProperties;
				public new function HRESULT(IFileSaveDialog *self, IPropertyDescriptionList* pList, BOOL fAppendDefault) SetCollectedProperties;
				public new function HRESULT(IFileSaveDialog *self, IPropertyStore** ppStore) GetProperties;
				public new function HRESULT(IFileSaveDialog *self, IShellItem* psi, IPropertyStore* pStore, HWND hwnd, IFileOperationProgressSink* pSink) ApplyProperties;
			}
		}
		[CRepr]
		public struct IFileOpenDialog : IFileDialog
		{
			public const new Guid IID = .(0xd57c7288, 0xd4ad, 0x4768, 0xbe, 0x02, 0x9d, 0x96, 0x95, 0x32, 0xd9, 0x60);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResults(IShellItemArray** ppenum) mut
			{
				return VT.GetResults(&this, ppenum);
			}
			public HRESULT GetSelectedItems(IShellItemArray** ppsai) mut
			{
				return VT.GetSelectedItems(&this, ppsai);
			}
			[CRepr]
			public struct VTable : IFileDialog.VTable
			{
				public new function HRESULT(IFileOpenDialog *self, IShellItemArray** ppenum) GetResults;
				public new function HRESULT(IFileOpenDialog *self, IShellItemArray** ppsai) GetSelectedItems;
			}
		}
		[CRepr]
		public struct IFileDialogCustomize : IUnknown
		{
			public const new Guid IID = .(0xe6fdd21a, 0x163f, 0x4975, 0x9c, 0x8c, 0xa6, 0x9f, 0x1b, 0xa3, 0x70, 0x34);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableOpenDropDown(uint32 dwIDCtl) mut
			{
				return VT.EnableOpenDropDown(&this, dwIDCtl);
			}
			public HRESULT AddMenu(uint32 dwIDCtl, PWSTR pszLabel) mut
			{
				return VT.AddMenu(&this, dwIDCtl, pszLabel);
			}
			public HRESULT AddPushButton(uint32 dwIDCtl, PWSTR pszLabel) mut
			{
				return VT.AddPushButton(&this, dwIDCtl, pszLabel);
			}
			public HRESULT AddComboBox(uint32 dwIDCtl) mut
			{
				return VT.AddComboBox(&this, dwIDCtl);
			}
			public HRESULT AddRadioButtonList(uint32 dwIDCtl) mut
			{
				return VT.AddRadioButtonList(&this, dwIDCtl);
			}
			public HRESULT AddCheckButton(uint32 dwIDCtl, PWSTR pszLabel, BOOL bChecked) mut
			{
				return VT.AddCheckButton(&this, dwIDCtl, pszLabel, bChecked);
			}
			public HRESULT AddEditBox(uint32 dwIDCtl, PWSTR pszText) mut
			{
				return VT.AddEditBox(&this, dwIDCtl, pszText);
			}
			public HRESULT AddSeparator(uint32 dwIDCtl) mut
			{
				return VT.AddSeparator(&this, dwIDCtl);
			}
			public HRESULT AddText(uint32 dwIDCtl, PWSTR pszText) mut
			{
				return VT.AddText(&this, dwIDCtl, pszText);
			}
			public HRESULT SetControlLabel(uint32 dwIDCtl, PWSTR pszLabel) mut
			{
				return VT.SetControlLabel(&this, dwIDCtl, pszLabel);
			}
			public HRESULT GetControlState(uint32 dwIDCtl, CDCONTROLSTATEF* pdwState) mut
			{
				return VT.GetControlState(&this, dwIDCtl, pdwState);
			}
			public HRESULT SetControlState(uint32 dwIDCtl, CDCONTROLSTATEF dwState) mut
			{
				return VT.SetControlState(&this, dwIDCtl, dwState);
			}
			public HRESULT GetEditBoxText(uint32 dwIDCtl, uint16** ppszText) mut
			{
				return VT.GetEditBoxText(&this, dwIDCtl, ppszText);
			}
			public HRESULT SetEditBoxText(uint32 dwIDCtl, PWSTR pszText) mut
			{
				return VT.SetEditBoxText(&this, dwIDCtl, pszText);
			}
			public HRESULT GetCheckButtonState(uint32 dwIDCtl, BOOL* pbChecked) mut
			{
				return VT.GetCheckButtonState(&this, dwIDCtl, pbChecked);
			}
			public HRESULT SetCheckButtonState(uint32 dwIDCtl, BOOL bChecked) mut
			{
				return VT.SetCheckButtonState(&this, dwIDCtl, bChecked);
			}
			public HRESULT AddControlItem(uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) mut
			{
				return VT.AddControlItem(&this, dwIDCtl, dwIDItem, pszLabel);
			}
			public HRESULT RemoveControlItem(uint32 dwIDCtl, uint32 dwIDItem) mut
			{
				return VT.RemoveControlItem(&this, dwIDCtl, dwIDItem);
			}
			public HRESULT RemoveAllControlItems(uint32 dwIDCtl) mut
			{
				return VT.RemoveAllControlItems(&this, dwIDCtl);
			}
			public HRESULT GetControlItemState(uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF* pdwState) mut
			{
				return VT.GetControlItemState(&this, dwIDCtl, dwIDItem, pdwState);
			}
			public HRESULT SetControlItemState(uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF dwState) mut
			{
				return VT.SetControlItemState(&this, dwIDCtl, dwIDItem, dwState);
			}
			public HRESULT GetSelectedControlItem(uint32 dwIDCtl, uint32* pdwIDItem) mut
			{
				return VT.GetSelectedControlItem(&this, dwIDCtl, pdwIDItem);
			}
			public HRESULT SetSelectedControlItem(uint32 dwIDCtl, uint32 dwIDItem) mut
			{
				return VT.SetSelectedControlItem(&this, dwIDCtl, dwIDItem);
			}
			public HRESULT StartVisualGroup(uint32 dwIDCtl, PWSTR pszLabel) mut
			{
				return VT.StartVisualGroup(&this, dwIDCtl, pszLabel);
			}
			public HRESULT EndVisualGroup() mut
			{
				return VT.EndVisualGroup(&this);
			}
			public HRESULT MakeProminent(uint32 dwIDCtl) mut
			{
				return VT.MakeProminent(&this, dwIDCtl);
			}
			public HRESULT SetControlItemText(uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) mut
			{
				return VT.SetControlItemText(&this, dwIDCtl, dwIDItem, pszLabel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) EnableOpenDropDown;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszLabel) AddMenu;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszLabel) AddPushButton;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) AddComboBox;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) AddRadioButtonList;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszLabel, BOOL bChecked) AddCheckButton;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszText) AddEditBox;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) AddSeparator;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszText) AddText;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszLabel) SetControlLabel;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, CDCONTROLSTATEF* pdwState) GetControlState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, CDCONTROLSTATEF dwState) SetControlState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint16** ppszText) GetEditBoxText;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszText) SetEditBoxText;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, BOOL* pbChecked) GetCheckButtonState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, BOOL bChecked) SetCheckButtonState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) AddControlItem;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem) RemoveControlItem;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) RemoveAllControlItems;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF* pdwState) GetControlItemState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF dwState) SetControlItemState;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32* pdwIDItem) GetSelectedControlItem;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem) SetSelectedControlItem;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, PWSTR pszLabel) StartVisualGroup;
				public new function HRESULT(IFileDialogCustomize *self) EndVisualGroup;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl) MakeProminent;
				public new function HRESULT(IFileDialogCustomize *self, uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) SetControlItemText;
			}
		}
		[CRepr]
		public struct IApplicationAssociationRegistration : IUnknown
		{
			public const new Guid IID = .(0x4e530b0a, 0xe611, 0x4c77, 0xa3, 0xac, 0x90, 0x31, 0xd0, 0x22, 0x28, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryCurrentDefault(PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR* ppszAssociation) mut
			{
				return VT.QueryCurrentDefault(&this, pszQuery, atQueryType, alQueryLevel, ppszAssociation);
			}
			public HRESULT QueryAppIsDefault(PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, BOOL* pfDefault) mut
			{
				return VT.QueryAppIsDefault(&this, pszQuery, atQueryType, alQueryLevel, pszAppRegistryName, pfDefault);
			}
			public HRESULT QueryAppIsDefaultAll(ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, BOOL* pfDefault) mut
			{
				return VT.QueryAppIsDefaultAll(&this, alQueryLevel, pszAppRegistryName, pfDefault);
			}
			public HRESULT SetAppAsDefault(PWSTR pszAppRegistryName, PWSTR pszSet, ASSOCIATIONTYPE atSetType) mut
			{
				return VT.SetAppAsDefault(&this, pszAppRegistryName, pszSet, atSetType);
			}
			public HRESULT SetAppAsDefaultAll(PWSTR pszAppRegistryName) mut
			{
				return VT.SetAppAsDefaultAll(&this, pszAppRegistryName);
			}
			public HRESULT ClearUserAssociations() mut
			{
				return VT.ClearUserAssociations(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationAssociationRegistration *self, PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR* ppszAssociation) QueryCurrentDefault;
				public new function HRESULT(IApplicationAssociationRegistration *self, PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, BOOL* pfDefault) QueryAppIsDefault;
				public new function HRESULT(IApplicationAssociationRegistration *self, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, BOOL* pfDefault) QueryAppIsDefaultAll;
				public new function HRESULT(IApplicationAssociationRegistration *self, PWSTR pszAppRegistryName, PWSTR pszSet, ASSOCIATIONTYPE atSetType) SetAppAsDefault;
				public new function HRESULT(IApplicationAssociationRegistration *self, PWSTR pszAppRegistryName) SetAppAsDefaultAll;
				public new function HRESULT(IApplicationAssociationRegistration *self) ClearUserAssociations;
			}
		}
		[CRepr]
		public struct IDelegateFolder : IUnknown
		{
			public const new Guid IID = .(0xadd8ba80, 0x002b, 0x11d0, 0x8f, 0x0f, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetItemAlloc(IMalloc* pmalloc) mut
			{
				return VT.SetItemAlloc(&this, pmalloc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDelegateFolder *self, IMalloc* pmalloc) SetItemAlloc;
			}
		}
		[CRepr]
		public struct IBrowserFrameOptions : IUnknown
		{
			public const new Guid IID = .(0x10df43c8, 0x1dbe, 0x11d3, 0x8b, 0x34, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFrameOptions(uint32 dwMask, uint32* pdwOptions) mut
			{
				return VT.GetFrameOptions(&this, dwMask, pdwOptions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBrowserFrameOptions *self, uint32 dwMask, uint32* pdwOptions) GetFrameOptions;
			}
		}
		[CRepr]
		public struct INewWindowManager : IUnknown
		{
			public const new Guid IID = .(0xd2bc4c84, 0x3f72, 0x4a52, 0xa6, 0x04, 0x7b, 0xcb, 0xf3, 0x98, 0x2c, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EvaluateNewWindow(PWSTR pszUrl, PWSTR pszName, PWSTR pszUrlContext, PWSTR pszFeatures, BOOL fReplace, uint32 dwFlags, uint32 dwUserActionTime) mut
			{
				return VT.EvaluateNewWindow(&this, pszUrl, pszName, pszUrlContext, pszFeatures, fReplace, dwFlags, dwUserActionTime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INewWindowManager *self, PWSTR pszUrl, PWSTR pszName, PWSTR pszUrlContext, PWSTR pszFeatures, BOOL fReplace, uint32 dwFlags, uint32 dwUserActionTime) EvaluateNewWindow;
			}
		}
		[CRepr]
		public struct IAttachmentExecute : IUnknown
		{
			public const new Guid IID = .(0x73db1241, 0x1e85, 0x4581, 0x8e, 0x4f, 0xa8, 0x1e, 0x1d, 0x0f, 0x8c, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetClientTitle(PWSTR pszTitle) mut
			{
				return VT.SetClientTitle(&this, pszTitle);
			}
			public HRESULT SetClientGuid(Guid* guid) mut
			{
				return VT.SetClientGuid(&this, guid);
			}
			public HRESULT SetLocalPath(PWSTR pszLocalPath) mut
			{
				return VT.SetLocalPath(&this, pszLocalPath);
			}
			public HRESULT SetFileName(PWSTR pszFileName) mut
			{
				return VT.SetFileName(&this, pszFileName);
			}
			public HRESULT SetSource(PWSTR pszSource) mut
			{
				return VT.SetSource(&this, pszSource);
			}
			public HRESULT SetReferrer(PWSTR pszReferrer) mut
			{
				return VT.SetReferrer(&this, pszReferrer);
			}
			public HRESULT CheckPolicy() mut
			{
				return VT.CheckPolicy(&this);
			}
			public HRESULT Prompt(HWND hwnd, ATTACHMENT_PROMPT prompt, ATTACHMENT_ACTION* paction) mut
			{
				return VT.Prompt(&this, hwnd, prompt, paction);
			}
			public HRESULT Save() mut
			{
				return VT.Save(&this);
			}
			public HRESULT Execute(HWND hwnd, PWSTR pszVerb, HANDLE* phProcess) mut
			{
				return VT.Execute(&this, hwnd, pszVerb, phProcess);
			}
			public HRESULT SaveWithUI(HWND hwnd) mut
			{
				return VT.SaveWithUI(&this, hwnd);
			}
			public HRESULT ClearClientState() mut
			{
				return VT.ClearClientState(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAttachmentExecute *self, PWSTR pszTitle) SetClientTitle;
				public new function HRESULT(IAttachmentExecute *self, Guid* guid) SetClientGuid;
				public new function HRESULT(IAttachmentExecute *self, PWSTR pszLocalPath) SetLocalPath;
				public new function HRESULT(IAttachmentExecute *self, PWSTR pszFileName) SetFileName;
				public new function HRESULT(IAttachmentExecute *self, PWSTR pszSource) SetSource;
				public new function HRESULT(IAttachmentExecute *self, PWSTR pszReferrer) SetReferrer;
				public new function HRESULT(IAttachmentExecute *self) CheckPolicy;
				public new function HRESULT(IAttachmentExecute *self, HWND hwnd, ATTACHMENT_PROMPT prompt, ATTACHMENT_ACTION* paction) Prompt;
				public new function HRESULT(IAttachmentExecute *self) Save;
				public new function HRESULT(IAttachmentExecute *self, HWND hwnd, PWSTR pszVerb, HANDLE* phProcess) Execute;
				public new function HRESULT(IAttachmentExecute *self, HWND hwnd) SaveWithUI;
				public new function HRESULT(IAttachmentExecute *self) ClearClientState;
			}
		}
		[CRepr]
		public struct IShellMenuCallback : IUnknown
		{
			public const new Guid IID = .(0x4ca300a1, 0x9b8d, 0x11d1, 0x8b, 0x22, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CallbackSM(SMDATA* psmd, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.CallbackSM(&this, psmd, uMsg, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellMenuCallback *self, SMDATA* psmd, uint32 uMsg, WPARAM wParam, LPARAM lParam) CallbackSM;
			}
		}
		[CRepr]
		public struct IShellMenu : IUnknown
		{
			public const new Guid IID = .(0xee1f7637, 0xe138, 0x11d1, 0x83, 0x79, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IShellMenuCallback* psmc, uint32 uId, uint32 uIdAncestor, uint32 dwFlags) mut
			{
				return VT.Initialize(&this, psmc, uId, uIdAncestor, dwFlags);
			}
			public HRESULT GetMenuInfo(IShellMenuCallback** ppsmc, uint32* puId, uint32* puIdAncestor, uint32* pdwFlags) mut
			{
				return VT.GetMenuInfo(&this, ppsmc, puId, puIdAncestor, pdwFlags);
			}
			public HRESULT SetShellFolder(IShellFolder* psf, ITEMIDLIST* pidlFolder, HKEY hKey, uint32 dwFlags) mut
			{
				return VT.SetShellFolder(&this, psf, pidlFolder, hKey, dwFlags);
			}
			public HRESULT GetShellFolder(uint32* pdwFlags, ITEMIDLIST** ppidl, Guid* riid, void** ppv) mut
			{
				return VT.GetShellFolder(&this, pdwFlags, ppidl, riid, ppv);
			}
			public HRESULT SetMenu(HMENU hmenu, HWND hwnd, uint32 dwFlags) mut
			{
				return VT.SetMenu(&this, hmenu, hwnd, dwFlags);
			}
			public HRESULT GetMenu(HMENU* phmenu, HWND* phwnd, uint32* pdwFlags) mut
			{
				return VT.GetMenu(&this, phmenu, phwnd, pdwFlags);
			}
			public HRESULT InvalidateItem(SMDATA* psmd, uint32 dwFlags) mut
			{
				return VT.InvalidateItem(&this, psmd, dwFlags);
			}
			public HRESULT GetState(SMDATA* psmd) mut
			{
				return VT.GetState(&this, psmd);
			}
			public HRESULT SetMenuToolbar(IUnknown* punk, uint32 dwFlags) mut
			{
				return VT.SetMenuToolbar(&this, punk, dwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellMenu *self, IShellMenuCallback* psmc, uint32 uId, uint32 uIdAncestor, uint32 dwFlags) Initialize;
				public new function HRESULT(IShellMenu *self, IShellMenuCallback** ppsmc, uint32* puId, uint32* puIdAncestor, uint32* pdwFlags) GetMenuInfo;
				public new function HRESULT(IShellMenu *self, IShellFolder* psf, ITEMIDLIST* pidlFolder, HKEY hKey, uint32 dwFlags) SetShellFolder;
				public new function HRESULT(IShellMenu *self, uint32* pdwFlags, ITEMIDLIST** ppidl, Guid* riid, void** ppv) GetShellFolder;
				public new function HRESULT(IShellMenu *self, HMENU hmenu, HWND hwnd, uint32 dwFlags) SetMenu;
				public new function HRESULT(IShellMenu *self, HMENU* phmenu, HWND* phwnd, uint32* pdwFlags) GetMenu;
				public new function HRESULT(IShellMenu *self, SMDATA* psmd, uint32 dwFlags) InvalidateItem;
				public new function HRESULT(IShellMenu *self, SMDATA* psmd) GetState;
				public new function HRESULT(IShellMenu *self, IUnknown* punk, uint32 dwFlags) SetMenuToolbar;
			}
		}
		[CRepr]
		public struct IKnownFolder : IUnknown
		{
			public const new Guid IID = .(0x3aa7af7e, 0x9b36, 0x420c, 0xa8, 0xe3, 0xf7, 0x7d, 0x46, 0x74, 0xa4, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetId(Guid* pkfid) mut
			{
				return VT.GetId(&this, pkfid);
			}
			public HRESULT GetCategory(KF_CATEGORY* pCategory) mut
			{
				return VT.GetCategory(&this, pCategory);
			}
			public HRESULT GetShellItem(uint32 dwFlags, Guid* riid, void** ppv) mut
			{
				return VT.GetShellItem(&this, dwFlags, riid, ppv);
			}
			public HRESULT GetPath(uint32 dwFlags, PWSTR* ppszPath) mut
			{
				return VT.GetPath(&this, dwFlags, ppszPath);
			}
			public HRESULT SetPath(uint32 dwFlags, PWSTR pszPath) mut
			{
				return VT.SetPath(&this, dwFlags, pszPath);
			}
			public HRESULT GetIDList(uint32 dwFlags, ITEMIDLIST** ppidl) mut
			{
				return VT.GetIDList(&this, dwFlags, ppidl);
			}
			public HRESULT GetFolderType(Guid* pftid) mut
			{
				return VT.GetFolderType(&this, pftid);
			}
			public HRESULT GetRedirectionCapabilities(uint32* pCapabilities) mut
			{
				return VT.GetRedirectionCapabilities(&this, pCapabilities);
			}
			public HRESULT GetFolderDefinition(KNOWNFOLDER_DEFINITION* pKFD) mut
			{
				return VT.GetFolderDefinition(&this, pKFD);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IKnownFolder *self, Guid* pkfid) GetId;
				public new function HRESULT(IKnownFolder *self, KF_CATEGORY* pCategory) GetCategory;
				public new function HRESULT(IKnownFolder *self, uint32 dwFlags, Guid* riid, void** ppv) GetShellItem;
				public new function HRESULT(IKnownFolder *self, uint32 dwFlags, PWSTR* ppszPath) GetPath;
				public new function HRESULT(IKnownFolder *self, uint32 dwFlags, PWSTR pszPath) SetPath;
				public new function HRESULT(IKnownFolder *self, uint32 dwFlags, ITEMIDLIST** ppidl) GetIDList;
				public new function HRESULT(IKnownFolder *self, Guid* pftid) GetFolderType;
				public new function HRESULT(IKnownFolder *self, uint32* pCapabilities) GetRedirectionCapabilities;
				public new function HRESULT(IKnownFolder *self, KNOWNFOLDER_DEFINITION* pKFD) GetFolderDefinition;
			}
		}
		[CRepr]
		public struct IKnownFolderManager : IUnknown
		{
			public const new Guid IID = .(0x8be2d872, 0x86aa, 0x4d47, 0xb7, 0x76, 0x32, 0xcc, 0xa4, 0x0c, 0x70, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FolderIdFromCsidl(int32 nCsidl, Guid* pfid) mut
			{
				return VT.FolderIdFromCsidl(&this, nCsidl, pfid);
			}
			public HRESULT FolderIdToCsidl(Guid* rfid, int32* pnCsidl) mut
			{
				return VT.FolderIdToCsidl(&this, rfid, pnCsidl);
			}
			public HRESULT GetFolderIds(Guid** ppKFId, uint32* pCount) mut
			{
				return VT.GetFolderIds(&this, ppKFId, pCount);
			}
			public HRESULT GetFolder(Guid* rfid, IKnownFolder** ppkf) mut
			{
				return VT.GetFolder(&this, rfid, ppkf);
			}
			public HRESULT GetFolderByName(PWSTR pszCanonicalName, IKnownFolder** ppkf) mut
			{
				return VT.GetFolderByName(&this, pszCanonicalName, ppkf);
			}
			public HRESULT RegisterFolder(Guid* rfid, KNOWNFOLDER_DEFINITION* pKFD) mut
			{
				return VT.RegisterFolder(&this, rfid, pKFD);
			}
			public HRESULT UnregisterFolder(Guid* rfid) mut
			{
				return VT.UnregisterFolder(&this, rfid);
			}
			public HRESULT FindFolderFromPath(PWSTR pszPath, FFFP_MODE mode, IKnownFolder** ppkf) mut
			{
				return VT.FindFolderFromPath(&this, pszPath, mode, ppkf);
			}
			public HRESULT FindFolderFromIDList(ITEMIDLIST* pidl, IKnownFolder** ppkf) mut
			{
				return VT.FindFolderFromIDList(&this, pidl, ppkf);
			}
			public HRESULT Redirect(Guid* rfid, HWND hwnd, uint32 flags, PWSTR pszTargetPath, uint32 cFolders, Guid* pExclusion, PWSTR* ppszError) mut
			{
				return VT.Redirect(&this, rfid, hwnd, flags, pszTargetPath, cFolders, pExclusion, ppszError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IKnownFolderManager *self, int32 nCsidl, Guid* pfid) FolderIdFromCsidl;
				public new function HRESULT(IKnownFolderManager *self, Guid* rfid, int32* pnCsidl) FolderIdToCsidl;
				public new function HRESULT(IKnownFolderManager *self, Guid** ppKFId, uint32* pCount) GetFolderIds;
				public new function HRESULT(IKnownFolderManager *self, Guid* rfid, IKnownFolder** ppkf) GetFolder;
				public new function HRESULT(IKnownFolderManager *self, PWSTR pszCanonicalName, IKnownFolder** ppkf) GetFolderByName;
				public new function HRESULT(IKnownFolderManager *self, Guid* rfid, KNOWNFOLDER_DEFINITION* pKFD) RegisterFolder;
				public new function HRESULT(IKnownFolderManager *self, Guid* rfid) UnregisterFolder;
				public new function HRESULT(IKnownFolderManager *self, PWSTR pszPath, FFFP_MODE mode, IKnownFolder** ppkf) FindFolderFromPath;
				public new function HRESULT(IKnownFolderManager *self, ITEMIDLIST* pidl, IKnownFolder** ppkf) FindFolderFromIDList;
				public new function HRESULT(IKnownFolderManager *self, Guid* rfid, HWND hwnd, uint32 flags, PWSTR pszTargetPath, uint32 cFolders, Guid* pExclusion, PWSTR* ppszError) Redirect;
			}
		}
		[CRepr]
		public struct ISharingConfigurationManager : IUnknown
		{
			public const new Guid IID = .(0xb4cd448a, 0x9c86, 0x4466, 0x92, 0x01, 0x2e, 0x62, 0x10, 0x5b, 0x87, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateShare(DEF_SHARE_ID dsid, SHARE_ROLE role) mut
			{
				return VT.CreateShare(&this, dsid, role);
			}
			public HRESULT DeleteShare(DEF_SHARE_ID dsid) mut
			{
				return VT.DeleteShare(&this, dsid);
			}
			public HRESULT ShareExists(DEF_SHARE_ID dsid) mut
			{
				return VT.ShareExists(&this, dsid);
			}
			public HRESULT GetSharePermissions(DEF_SHARE_ID dsid, SHARE_ROLE* pRole) mut
			{
				return VT.GetSharePermissions(&this, dsid, pRole);
			}
			public HRESULT SharePrinters() mut
			{
				return VT.SharePrinters(&this);
			}
			public HRESULT StopSharingPrinters() mut
			{
				return VT.StopSharingPrinters(&this);
			}
			public HRESULT ArePrintersShared() mut
			{
				return VT.ArePrintersShared(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISharingConfigurationManager *self, DEF_SHARE_ID dsid, SHARE_ROLE role) CreateShare;
				public new function HRESULT(ISharingConfigurationManager *self, DEF_SHARE_ID dsid) DeleteShare;
				public new function HRESULT(ISharingConfigurationManager *self, DEF_SHARE_ID dsid) ShareExists;
				public new function HRESULT(ISharingConfigurationManager *self, DEF_SHARE_ID dsid, SHARE_ROLE* pRole) GetSharePermissions;
				public new function HRESULT(ISharingConfigurationManager *self) SharePrinters;
				public new function HRESULT(ISharingConfigurationManager *self) StopSharingPrinters;
				public new function HRESULT(ISharingConfigurationManager *self) ArePrintersShared;
			}
		}
		[CRepr]
		public struct IRelatedItem : IUnknown
		{
			public const new Guid IID = .(0xa73ce67a, 0x8ab1, 0x44f1, 0x8d, 0x43, 0xd2, 0xfc, 0xbf, 0x6b, 0x1c, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemIDList(ITEMIDLIST** ppidl) mut
			{
				return VT.GetItemIDList(&this, ppidl);
			}
			public HRESULT GetItem(IShellItem** ppsi) mut
			{
				return VT.GetItem(&this, ppsi);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IRelatedItem *self, ITEMIDLIST** ppidl) GetItemIDList;
				public new function HRESULT(IRelatedItem *self, IShellItem** ppsi) GetItem;
			}
		}
		[CRepr]
		public struct IIdentityName : IRelatedItem
		{
			public const new Guid IID = .(0x7d903fca, 0xd6f9, 0x4810, 0x83, 0x32, 0x94, 0x6c, 0x01, 0x77, 0xe2, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct IDelegateItem : IRelatedItem
		{
			public const new Guid IID = .(0x3c5a1c94, 0xc951, 0x4cb7, 0xbb, 0x6d, 0x3b, 0x93, 0xf3, 0x0c, 0xce, 0x93);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct ICurrentItem : IRelatedItem
		{
			public const new Guid IID = .(0x240a7174, 0xd653, 0x4a1d, 0xa6, 0xd3, 0xd4, 0x94, 0x3c, 0xfb, 0xfe, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct ITransferMediumItem : IRelatedItem
		{
			public const new Guid IID = .(0x77f295d5, 0x2d6f, 0x4e19, 0xb8, 0xae, 0x32, 0x2f, 0x3e, 0x72, 0x1a, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct IDisplayItem : IRelatedItem
		{
			public const new Guid IID = .(0xc6fd5997, 0x9f6b, 0x4888, 0x87, 0x03, 0x94, 0xe8, 0x0e, 0x8c, 0xde, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct IViewStateIdentityItem : IRelatedItem
		{
			public const new Guid IID = .(0x9d264146, 0xa94f, 0x4195, 0x9f, 0x9f, 0x3b, 0xb1, 0x2c, 0xe0, 0xc9, 0x55);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct IPreviewItem : IRelatedItem
		{
			public const new Guid IID = .(0x36149969, 0x0a8f, 0x49c8, 0x8b, 0x00, 0x4a, 0xec, 0xb2, 0x02, 0x22, 0xfb);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct IDestinationStreamFactory : IUnknown
		{
			public const new Guid IID = .(0x8a87781b, 0x39a7, 0x4a1f, 0xaa, 0xb3, 0xa3, 0x9b, 0x9c, 0x34, 0xa7, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDestinationStream(IStream** ppstm) mut
			{
				return VT.GetDestinationStream(&this, ppstm);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDestinationStreamFactory *self, IStream** ppstm) GetDestinationStream;
			}
		}
		[CRepr]
		public struct ICreateProcessInputs : IUnknown
		{
			public const new Guid IID = .(0xf6ef6140, 0xe26f, 0x4d82, 0xba, 0xc4, 0xe9, 0xba, 0x5f, 0xd2, 0x39, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCreateFlags(uint32* pdwCreationFlags) mut
			{
				return VT.GetCreateFlags(&this, pdwCreationFlags);
			}
			public HRESULT SetCreateFlags(uint32 dwCreationFlags) mut
			{
				return VT.SetCreateFlags(&this, dwCreationFlags);
			}
			public HRESULT AddCreateFlags(uint32 dwCreationFlags) mut
			{
				return VT.AddCreateFlags(&this, dwCreationFlags);
			}
			public HRESULT SetHotKey(uint16 wHotKey) mut
			{
				return VT.SetHotKey(&this, wHotKey);
			}
			public HRESULT AddStartupFlags(uint32 dwStartupInfoFlags) mut
			{
				return VT.AddStartupFlags(&this, dwStartupInfoFlags);
			}
			public HRESULT SetTitle(PWSTR pszTitle) mut
			{
				return VT.SetTitle(&this, pszTitle);
			}
			public HRESULT SetEnvironmentVariable(PWSTR pszName, PWSTR pszValue) mut
			{
				return VT.SetEnvironmentVariable(&this, pszName, pszValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreateProcessInputs *self, uint32* pdwCreationFlags) GetCreateFlags;
				public new function HRESULT(ICreateProcessInputs *self, uint32 dwCreationFlags) SetCreateFlags;
				public new function HRESULT(ICreateProcessInputs *self, uint32 dwCreationFlags) AddCreateFlags;
				public new function HRESULT(ICreateProcessInputs *self, uint16 wHotKey) SetHotKey;
				public new function HRESULT(ICreateProcessInputs *self, uint32 dwStartupInfoFlags) AddStartupFlags;
				public new function HRESULT(ICreateProcessInputs *self, PWSTR pszTitle) SetTitle;
				public new function HRESULT(ICreateProcessInputs *self, PWSTR pszName, PWSTR pszValue) SetEnvironmentVariable;
			}
		}
		[CRepr]
		public struct ICreatingProcess : IUnknown
		{
			public const new Guid IID = .(0xc2b937a9, 0x3110, 0x4398, 0x8a, 0x56, 0xf3, 0x4c, 0x63, 0x42, 0xd2, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCreating(ICreateProcessInputs* pcpi) mut
			{
				return VT.OnCreating(&this, pcpi);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICreatingProcess *self, ICreateProcessInputs* pcpi) OnCreating;
			}
		}
		[CRepr]
		public struct ILaunchUIContext : IUnknown
		{
			public const new Guid IID = .(0x1791e8f6, 0x21c7, 0x4340, 0x88, 0x2a, 0xa6, 0xa9, 0x3e, 0x3f, 0xd7, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAssociatedWindow(HWND value) mut
			{
				return VT.SetAssociatedWindow(&this, value);
			}
			public HRESULT SetTabGroupingPreference(uint32 value) mut
			{
				return VT.SetTabGroupingPreference(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchUIContext *self, HWND value) SetAssociatedWindow;
				public new function HRESULT(ILaunchUIContext *self, uint32 value) SetTabGroupingPreference;
			}
		}
		[CRepr]
		public struct ILaunchUIContextProvider : IUnknown
		{
			public const new Guid IID = .(0x0d12c4c8, 0xa3d9, 0x4e24, 0x94, 0xc1, 0x0e, 0x20, 0xc5, 0xa9, 0x56, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateContext(ILaunchUIContext* context) mut
			{
				return VT.UpdateContext(&this, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchUIContextProvider *self, ILaunchUIContext* context) UpdateContext;
			}
		}
		[CRepr]
		public struct INewMenuClient : IUnknown
		{
			public const new Guid IID = .(0xdcb07fdc, 0x3bb5, 0x451c, 0x90, 0xbe, 0x96, 0x66, 0x44, 0xfe, 0xd7, 0xb0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IncludeItems(int32* pflags) mut
			{
				return VT.IncludeItems(&this, pflags);
			}
			public HRESULT SelectAndEditItem(ITEMIDLIST* pidlItem, int32 flags) mut
			{
				return VT.SelectAndEditItem(&this, pidlItem, flags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INewMenuClient *self, int32* pflags) IncludeItems;
				public new function HRESULT(INewMenuClient *self, ITEMIDLIST* pidlItem, int32 flags) SelectAndEditItem;
			}
		}
		[CRepr]
		public struct IInitializeWithBindCtx : IUnknown
		{
			public const new Guid IID = .(0x71c0d2bc, 0x726d, 0x45cc, 0xa6, 0xc0, 0x2e, 0x31, 0xc1, 0xdb, 0x21, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IBindCtx* pbc) mut
			{
				return VT.Initialize(&this, pbc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithBindCtx *self, IBindCtx* pbc) Initialize;
			}
		}
		[CRepr]
		public struct IShellItemFilter : IUnknown
		{
			public const new Guid IID = .(0x2659b475, 0xeeb8, 0x48b7, 0x8f, 0x07, 0xb3, 0x78, 0x81, 0x0f, 0x48, 0xcf);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IncludeItem(IShellItem* psi) mut
			{
				return VT.IncludeItem(&this, psi);
			}
			public HRESULT GetEnumFlagsForItem(IShellItem* psi, uint32* pgrfFlags) mut
			{
				return VT.GetEnumFlagsForItem(&this, psi, pgrfFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellItemFilter *self, IShellItem* psi) IncludeItem;
				public new function HRESULT(IShellItemFilter *self, IShellItem* psi, uint32* pgrfFlags) GetEnumFlagsForItem;
			}
		}
		[CRepr]
		public struct INameSpaceTreeControl : IUnknown
		{
			public const new Guid IID = .(0x028212a3, 0xb627, 0x47e9, 0x88, 0x56, 0xc1, 0x42, 0x65, 0x55, 0x4e, 0x4f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND hwndParent, RECT* prc, uint32 nsctsFlags) mut
			{
				return VT.Initialize(&this, hwndParent, prc, nsctsFlags);
			}
			public HRESULT TreeAdvise(IUnknown* punk, uint32* pdwCookie) mut
			{
				return VT.TreeAdvise(&this, punk, pdwCookie);
			}
			public HRESULT TreeUnadvise(uint32 dwCookie) mut
			{
				return VT.TreeUnadvise(&this, dwCookie);
			}
			public HRESULT AppendRoot(IShellItem* psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, IShellItemFilter* pif) mut
			{
				return VT.AppendRoot(&this, psiRoot, grfEnumFlags, grfRootStyle, pif);
			}
			public HRESULT InsertRoot(int32 iIndex, IShellItem* psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, IShellItemFilter* pif) mut
			{
				return VT.InsertRoot(&this, iIndex, psiRoot, grfEnumFlags, grfRootStyle, pif);
			}
			public HRESULT RemoveRoot(IShellItem* psiRoot) mut
			{
				return VT.RemoveRoot(&this, psiRoot);
			}
			public HRESULT RemoveAllRoots() mut
			{
				return VT.RemoveAllRoots(&this);
			}
			public HRESULT GetRootItems(IShellItemArray** ppsiaRootItems) mut
			{
				return VT.GetRootItems(&this, ppsiaRootItems);
			}
			public HRESULT SetItemState(IShellItem* psi, uint32 nstcisMask, uint32 nstcisFlags) mut
			{
				return VT.SetItemState(&this, psi, nstcisMask, nstcisFlags);
			}
			public HRESULT GetItemState(IShellItem* psi, uint32 nstcisMask, uint32* pnstcisFlags) mut
			{
				return VT.GetItemState(&this, psi, nstcisMask, pnstcisFlags);
			}
			public HRESULT GetSelectedItems(IShellItemArray** psiaItems) mut
			{
				return VT.GetSelectedItems(&this, psiaItems);
			}
			public HRESULT GetItemCustomState(IShellItem* psi, int32* piStateNumber) mut
			{
				return VT.GetItemCustomState(&this, psi, piStateNumber);
			}
			public HRESULT SetItemCustomState(IShellItem* psi, int32 iStateNumber) mut
			{
				return VT.SetItemCustomState(&this, psi, iStateNumber);
			}
			public HRESULT EnsureItemVisible(IShellItem* psi) mut
			{
				return VT.EnsureItemVisible(&this, psi);
			}
			public HRESULT SetTheme(PWSTR pszTheme) mut
			{
				return VT.SetTheme(&this, pszTheme);
			}
			public HRESULT GetNextItem(IShellItem* psi, NSTCGNI nstcgi, IShellItem** ppsiNext) mut
			{
				return VT.GetNextItem(&this, psi, nstcgi, ppsiNext);
			}
			public HRESULT HitTest(POINT* ppt, IShellItem** ppsiOut) mut
			{
				return VT.HitTest(&this, ppt, ppsiOut);
			}
			public HRESULT GetItemRect(IShellItem* psi, RECT* prect) mut
			{
				return VT.GetItemRect(&this, psi, prect);
			}
			public HRESULT CollapseAll() mut
			{
				return VT.CollapseAll(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeControl *self, HWND hwndParent, RECT* prc, uint32 nsctsFlags) Initialize;
				public new function HRESULT(INameSpaceTreeControl *self, IUnknown* punk, uint32* pdwCookie) TreeAdvise;
				public new function HRESULT(INameSpaceTreeControl *self, uint32 dwCookie) TreeUnadvise;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, IShellItemFilter* pif) AppendRoot;
				public new function HRESULT(INameSpaceTreeControl *self, int32 iIndex, IShellItem* psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, IShellItemFilter* pif) InsertRoot;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psiRoot) RemoveRoot;
				public new function HRESULT(INameSpaceTreeControl *self) RemoveAllRoots;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItemArray** ppsiaRootItems) GetRootItems;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, uint32 nstcisMask, uint32 nstcisFlags) SetItemState;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, uint32 nstcisMask, uint32* pnstcisFlags) GetItemState;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItemArray** psiaItems) GetSelectedItems;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, int32* piStateNumber) GetItemCustomState;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, int32 iStateNumber) SetItemCustomState;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi) EnsureItemVisible;
				public new function HRESULT(INameSpaceTreeControl *self, PWSTR pszTheme) SetTheme;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, NSTCGNI nstcgi, IShellItem** ppsiNext) GetNextItem;
				public new function HRESULT(INameSpaceTreeControl *self, POINT* ppt, IShellItem** ppsiOut) HitTest;
				public new function HRESULT(INameSpaceTreeControl *self, IShellItem* psi, RECT* prect) GetItemRect;
				public new function HRESULT(INameSpaceTreeControl *self) CollapseAll;
			}
		}
		[CRepr]
		public struct INameSpaceTreeControlFolderCapabilities : IUnknown
		{
			public const new Guid IID = .(0xe9701183, 0xe6b3, 0x4ff2, 0x85, 0x68, 0x81, 0x36, 0x15, 0xfe, 0xc7, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFolderCapabilities(NSTCFOLDERCAPABILITIES nfcMask, NSTCFOLDERCAPABILITIES* pnfcValue) mut
			{
				return VT.GetFolderCapabilities(&this, nfcMask, pnfcValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeControlFolderCapabilities *self, NSTCFOLDERCAPABILITIES nfcMask, NSTCFOLDERCAPABILITIES* pnfcValue) GetFolderCapabilities;
			}
		}
		[CRepr]
		public struct IPreviewHandler : IUnknown
		{
			public const new Guid IID = .(0x8895b1c6, 0xb41f, 0x4c1c, 0xa5, 0x62, 0x0d, 0x56, 0x42, 0x50, 0x83, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWindow(HWND hwnd, RECT* prc) mut
			{
				return VT.SetWindow(&this, hwnd, prc);
			}
			public HRESULT SetRect(RECT* prc) mut
			{
				return VT.SetRect(&this, prc);
			}
			public HRESULT DoPreview() mut
			{
				return VT.DoPreview(&this);
			}
			public HRESULT Unload() mut
			{
				return VT.Unload(&this);
			}
			public HRESULT SetFocus() mut
			{
				return VT.SetFocus(&this);
			}
			public HRESULT QueryFocus(HWND* phwnd) mut
			{
				return VT.QueryFocus(&this, phwnd);
			}
			public HRESULT TranslateAccelerator(MSG* pmsg) mut
			{
				return VT.TranslateAccelerator(&this, pmsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPreviewHandler *self, HWND hwnd, RECT* prc) SetWindow;
				public new function HRESULT(IPreviewHandler *self, RECT* prc) SetRect;
				public new function HRESULT(IPreviewHandler *self) DoPreview;
				public new function HRESULT(IPreviewHandler *self) Unload;
				public new function HRESULT(IPreviewHandler *self) SetFocus;
				public new function HRESULT(IPreviewHandler *self, HWND* phwnd) QueryFocus;
				public new function HRESULT(IPreviewHandler *self, MSG* pmsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IPreviewHandlerFrame : IUnknown
		{
			public const new Guid IID = .(0xfec87aaf, 0x35f9, 0x447a, 0xad, 0xb7, 0x20, 0x23, 0x44, 0x91, 0x40, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetWindowContext(PREVIEWHANDLERFRAMEINFO* pinfo) mut
			{
				return VT.GetWindowContext(&this, pinfo);
			}
			public HRESULT TranslateAccelerator(MSG* pmsg) mut
			{
				return VT.TranslateAccelerator(&this, pmsg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPreviewHandlerFrame *self, PREVIEWHANDLERFRAMEINFO* pinfo) GetWindowContext;
				public new function HRESULT(IPreviewHandlerFrame *self, MSG* pmsg) TranslateAccelerator;
			}
		}
		[CRepr]
		public struct IExplorerPaneVisibility : IUnknown
		{
			public const new Guid IID = .(0xe07010ec, 0xbc17, 0x44c0, 0x97, 0xb0, 0x46, 0xc7, 0xc9, 0x5b, 0x9e, 0xdc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPaneState(Guid* ep, uint32* peps) mut
			{
				return VT.GetPaneState(&this, ep, peps);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerPaneVisibility *self, Guid* ep, uint32* peps) GetPaneState;
			}
		}
		[CRepr]
		public struct IContextMenuCB : IUnknown
		{
			public const new Guid IID = .(0x3409e930, 0x5a39, 0x11d1, 0x83, 0xfa, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0x49);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CallBack(IShellFolder* psf, HWND hwndOwner, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.CallBack(&this, psf, hwndOwner, pdtobj, uMsg, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContextMenuCB *self, IShellFolder* psf, HWND hwndOwner, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam) CallBack;
			}
		}
		[CRepr]
		public struct IDefaultExtractIconInit : IUnknown
		{
			public const new Guid IID = .(0x41ded17d, 0xd6b3, 0x4261, 0x99, 0x7d, 0x88, 0xc6, 0x0e, 0x4b, 0x1d, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFlags(uint32 uFlags) mut
			{
				return VT.SetFlags(&this, uFlags);
			}
			public HRESULT SetKey(HKEY hkey) mut
			{
				return VT.SetKey(&this, hkey);
			}
			public HRESULT SetNormalIcon(PWSTR pszFile, int32 iIcon) mut
			{
				return VT.SetNormalIcon(&this, pszFile, iIcon);
			}
			public HRESULT SetOpenIcon(PWSTR pszFile, int32 iIcon) mut
			{
				return VT.SetOpenIcon(&this, pszFile, iIcon);
			}
			public HRESULT SetShortcutIcon(PWSTR pszFile, int32 iIcon) mut
			{
				return VT.SetShortcutIcon(&this, pszFile, iIcon);
			}
			public HRESULT SetDefaultIcon(PWSTR pszFile, int32 iIcon) mut
			{
				return VT.SetDefaultIcon(&this, pszFile, iIcon);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDefaultExtractIconInit *self, uint32 uFlags) SetFlags;
				public new function HRESULT(IDefaultExtractIconInit *self, HKEY hkey) SetKey;
				public new function HRESULT(IDefaultExtractIconInit *self, PWSTR pszFile, int32 iIcon) SetNormalIcon;
				public new function HRESULT(IDefaultExtractIconInit *self, PWSTR pszFile, int32 iIcon) SetOpenIcon;
				public new function HRESULT(IDefaultExtractIconInit *self, PWSTR pszFile, int32 iIcon) SetShortcutIcon;
				public new function HRESULT(IDefaultExtractIconInit *self, PWSTR pszFile, int32 iIcon) SetDefaultIcon;
			}
		}
		[CRepr]
		public struct IExplorerCommand : IUnknown
		{
			public const new Guid IID = .(0xa08ce4d0, 0xfa25, 0x44ab, 0xb5, 0x7c, 0xc7, 0xb1, 0xc3, 0x23, 0xe0, 0xb9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTitle(IShellItemArray* psiItemArray, PWSTR* ppszName) mut
			{
				return VT.GetTitle(&this, psiItemArray, ppszName);
			}
			public HRESULT GetIcon(IShellItemArray* psiItemArray, PWSTR* ppszIcon) mut
			{
				return VT.GetIcon(&this, psiItemArray, ppszIcon);
			}
			public HRESULT GetToolTip(IShellItemArray* psiItemArray, PWSTR* ppszInfotip) mut
			{
				return VT.GetToolTip(&this, psiItemArray, ppszInfotip);
			}
			public HRESULT GetCanonicalName(Guid* pguidCommandName) mut
			{
				return VT.GetCanonicalName(&this, pguidCommandName);
			}
			public HRESULT GetState(IShellItemArray* psiItemArray, BOOL fOkToBeSlow, uint32* pCmdState) mut
			{
				return VT.GetState(&this, psiItemArray, fOkToBeSlow, pCmdState);
			}
			public HRESULT Invoke(IShellItemArray* psiItemArray, IBindCtx* pbc) mut
			{
				return VT.Invoke(&this, psiItemArray, pbc);
			}
			public HRESULT ComGetFlags(uint32* pFlags) mut
			{
				return VT.ComGetFlags(&this, pFlags);
			}
			public HRESULT EnumSubCommands(IEnumExplorerCommand** ppEnum) mut
			{
				return VT.EnumSubCommands(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerCommand *self, IShellItemArray* psiItemArray, PWSTR* ppszName) GetTitle;
				public new function HRESULT(IExplorerCommand *self, IShellItemArray* psiItemArray, PWSTR* ppszIcon) GetIcon;
				public new function HRESULT(IExplorerCommand *self, IShellItemArray* psiItemArray, PWSTR* ppszInfotip) GetToolTip;
				public new function HRESULT(IExplorerCommand *self, Guid* pguidCommandName) GetCanonicalName;
				public new function HRESULT(IExplorerCommand *self, IShellItemArray* psiItemArray, BOOL fOkToBeSlow, uint32* pCmdState) GetState;
				public new function HRESULT(IExplorerCommand *self, IShellItemArray* psiItemArray, IBindCtx* pbc) Invoke;
				public new function HRESULT(IExplorerCommand *self, uint32* pFlags) ComGetFlags;
				public new function HRESULT(IExplorerCommand *self, IEnumExplorerCommand** ppEnum) EnumSubCommands;
			}
		}
		[CRepr]
		public struct IExplorerCommandState : IUnknown
		{
			public const new Guid IID = .(0xbddacb60, 0x7657, 0x47ae, 0x84, 0x45, 0xd2, 0x3e, 0x1a, 0xcf, 0x82, 0xae);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetState(IShellItemArray* psiItemArray, BOOL fOkToBeSlow, uint32* pCmdState) mut
			{
				return VT.GetState(&this, psiItemArray, fOkToBeSlow, pCmdState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerCommandState *self, IShellItemArray* psiItemArray, BOOL fOkToBeSlow, uint32* pCmdState) GetState;
			}
		}
		[CRepr]
		public struct IInitializeCommand : IUnknown
		{
			public const new Guid IID = .(0x85075acf, 0x231f, 0x40ea, 0x96, 0x10, 0xd2, 0x6b, 0x7b, 0x58, 0xf6, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszCommandName, IPropertyBag* ppb) mut
			{
				return VT.Initialize(&this, pszCommandName, ppb);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeCommand *self, PWSTR pszCommandName, IPropertyBag* ppb) Initialize;
			}
		}
		[CRepr]
		public struct IEnumExplorerCommand : IUnknown
		{
			public const new Guid IID = .(0xa88826f8, 0x186f, 0x4987, 0xaa, 0xde, 0xea, 0x0c, 0xef, 0x8f, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IExplorerCommand** pUICommand, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, pUICommand, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumExplorerCommand** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumExplorerCommand *self, uint32 celt, IExplorerCommand** pUICommand, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumExplorerCommand *self, uint32 celt) Skip;
				public new function HRESULT(IEnumExplorerCommand *self) Reset;
				public new function HRESULT(IEnumExplorerCommand *self, IEnumExplorerCommand** ppenum) Clone;
			}
		}
		[CRepr]
		public struct IExplorerCommandProvider : IUnknown
		{
			public const new Guid IID = .(0x64961751, 0x0835, 0x43c0, 0x8f, 0xfe, 0xd5, 0x76, 0x86, 0x53, 0x0e, 0x64);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCommands(IUnknown* punkSite, Guid* riid, void** ppv) mut
			{
				return VT.GetCommands(&this, punkSite, riid, ppv);
			}
			public HRESULT GetCommand(Guid* rguidCommandId, Guid* riid, void** ppv) mut
			{
				return VT.GetCommand(&this, rguidCommandId, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExplorerCommandProvider *self, IUnknown* punkSite, Guid* riid, void** ppv) GetCommands;
				public new function HRESULT(IExplorerCommandProvider *self, Guid* rguidCommandId, Guid* riid, void** ppv) GetCommand;
			}
		}
		[CRepr]
		public struct IOpenControlPanel : IUnknown
		{
			public const new Guid IID = .(0xd11ad862, 0x66de, 0x4df4, 0xbf, 0x6c, 0x1f, 0x56, 0x21, 0x99, 0x6a, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Open(PWSTR pszName, PWSTR pszPage, IUnknown* punkSite) mut
			{
				return VT.Open(&this, pszName, pszPage, punkSite);
			}
			public HRESULT GetPath(PWSTR pszName, char16* pszPath, uint32 cchPath) mut
			{
				return VT.GetPath(&this, pszName, pszPath, cchPath);
			}
			public HRESULT GetCurrentView(CPVIEW* pView) mut
			{
				return VT.GetCurrentView(&this, pView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpenControlPanel *self, PWSTR pszName, PWSTR pszPage, IUnknown* punkSite) Open;
				public new function HRESULT(IOpenControlPanel *self, PWSTR pszName, char16* pszPath, uint32 cchPath) GetPath;
				public new function HRESULT(IOpenControlPanel *self, CPVIEW* pView) GetCurrentView;
			}
		}
		[CRepr]
		public struct IFileSystemBindData : IUnknown
		{
			public const new Guid IID = .(0x01e18d10, 0x4d8b, 0x11d2, 0x85, 0x5d, 0x00, 0x60, 0x08, 0x05, 0x93, 0x67);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFindData(WIN32_FIND_DATAW* pfd) mut
			{
				return VT.SetFindData(&this, pfd);
			}
			public HRESULT GetFindData(WIN32_FIND_DATAW* pfd) mut
			{
				return VT.GetFindData(&this, pfd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileSystemBindData *self, WIN32_FIND_DATAW* pfd) SetFindData;
				public new function HRESULT(IFileSystemBindData *self, WIN32_FIND_DATAW* pfd) GetFindData;
			}
		}
		[CRepr]
		public struct IFileSystemBindData2 : IFileSystemBindData
		{
			public const new Guid IID = .(0x3acf075f, 0x71db, 0x4afa, 0x81, 0xf0, 0x3f, 0xc4, 0xfd, 0xf2, 0xa5, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFileID(LARGE_INTEGER liFileID) mut
			{
				return VT.SetFileID(&this, liFileID);
			}
			public HRESULT GetFileID(LARGE_INTEGER* pliFileID) mut
			{
				return VT.GetFileID(&this, pliFileID);
			}
			public HRESULT SetJunctionCLSID(Guid* clsid) mut
			{
				return VT.SetJunctionCLSID(&this, clsid);
			}
			public HRESULT GetJunctionCLSID(Guid* pclsid) mut
			{
				return VT.GetJunctionCLSID(&this, pclsid);
			}
			[CRepr]
			public struct VTable : IFileSystemBindData.VTable
			{
				public new function HRESULT(IFileSystemBindData2 *self, LARGE_INTEGER liFileID) SetFileID;
				public new function HRESULT(IFileSystemBindData2 *self, LARGE_INTEGER* pliFileID) GetFileID;
				public new function HRESULT(IFileSystemBindData2 *self, Guid* clsid) SetJunctionCLSID;
				public new function HRESULT(IFileSystemBindData2 *self, Guid* pclsid) GetJunctionCLSID;
			}
		}
		[CRepr]
		public struct ICustomDestinationList : IUnknown
		{
			public const new Guid IID = .(0x6332debf, 0x87b5, 0x4670, 0x90, 0xc0, 0x5e, 0x57, 0xb4, 0x08, 0xa4, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAppID(PWSTR pszAppID) mut
			{
				return VT.SetAppID(&this, pszAppID);
			}
			public HRESULT BeginList(uint32* pcMinSlots, Guid* riid, void** ppv) mut
			{
				return VT.BeginList(&this, pcMinSlots, riid, ppv);
			}
			public HRESULT AppendCategory(PWSTR pszCategory, IObjectArray* poa) mut
			{
				return VT.AppendCategory(&this, pszCategory, poa);
			}
			public HRESULT AppendKnownCategory(KNOWNDESTCATEGORY category) mut
			{
				return VT.AppendKnownCategory(&this, category);
			}
			public HRESULT AddUserTasks(IObjectArray* poa) mut
			{
				return VT.AddUserTasks(&this, poa);
			}
			public HRESULT CommitList() mut
			{
				return VT.CommitList(&this);
			}
			public HRESULT GetRemovedDestinations(Guid* riid, void** ppv) mut
			{
				return VT.GetRemovedDestinations(&this, riid, ppv);
			}
			public HRESULT DeleteList(PWSTR pszAppID) mut
			{
				return VT.DeleteList(&this, pszAppID);
			}
			public HRESULT AbortList() mut
			{
				return VT.AbortList(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICustomDestinationList *self, PWSTR pszAppID) SetAppID;
				public new function HRESULT(ICustomDestinationList *self, uint32* pcMinSlots, Guid* riid, void** ppv) BeginList;
				public new function HRESULT(ICustomDestinationList *self, PWSTR pszCategory, IObjectArray* poa) AppendCategory;
				public new function HRESULT(ICustomDestinationList *self, KNOWNDESTCATEGORY category) AppendKnownCategory;
				public new function HRESULT(ICustomDestinationList *self, IObjectArray* poa) AddUserTasks;
				public new function HRESULT(ICustomDestinationList *self) CommitList;
				public new function HRESULT(ICustomDestinationList *self, Guid* riid, void** ppv) GetRemovedDestinations;
				public new function HRESULT(ICustomDestinationList *self, PWSTR pszAppID) DeleteList;
				public new function HRESULT(ICustomDestinationList *self) AbortList;
			}
		}
		[CRepr]
		public struct IApplicationDestinations : IUnknown
		{
			public const new Guid IID = .(0x12337d35, 0x94c6, 0x48a0, 0xbc, 0xe7, 0x6a, 0x9c, 0x69, 0xd4, 0xd6, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAppID(PWSTR pszAppID) mut
			{
				return VT.SetAppID(&this, pszAppID);
			}
			public HRESULT RemoveDestination(IUnknown* punk) mut
			{
				return VT.RemoveDestination(&this, punk);
			}
			public HRESULT RemoveAllDestinations() mut
			{
				return VT.RemoveAllDestinations(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationDestinations *self, PWSTR pszAppID) SetAppID;
				public new function HRESULT(IApplicationDestinations *self, IUnknown* punk) RemoveDestination;
				public new function HRESULT(IApplicationDestinations *self) RemoveAllDestinations;
			}
		}
		[CRepr]
		public struct IApplicationDocumentLists : IUnknown
		{
			public const new Guid IID = .(0x3c594f9f, 0x9f30, 0x47a1, 0x97, 0x9a, 0xc9, 0xe8, 0x3d, 0x3d, 0x0a, 0x06);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAppID(PWSTR pszAppID) mut
			{
				return VT.SetAppID(&this, pszAppID);
			}
			public HRESULT GetList(APPDOCLISTTYPE listtype, uint32 cItemsDesired, Guid* riid, void** ppv) mut
			{
				return VT.GetList(&this, listtype, cItemsDesired, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationDocumentLists *self, PWSTR pszAppID) SetAppID;
				public new function HRESULT(IApplicationDocumentLists *self, APPDOCLISTTYPE listtype, uint32 cItemsDesired, Guid* riid, void** ppv) GetList;
			}
		}
		[CRepr]
		public struct IObjectWithAppUserModelID : IUnknown
		{
			public const new Guid IID = .(0x36db0196, 0x9665, 0x46d1, 0x9b, 0xa7, 0xd3, 0x70, 0x9e, 0xec, 0xf9, 0xed);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAppID(PWSTR pszAppID) mut
			{
				return VT.SetAppID(&this, pszAppID);
			}
			public HRESULT GetAppID(PWSTR* ppszAppID) mut
			{
				return VT.GetAppID(&this, ppszAppID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithAppUserModelID *self, PWSTR pszAppID) SetAppID;
				public new function HRESULT(IObjectWithAppUserModelID *self, PWSTR* ppszAppID) GetAppID;
			}
		}
		[CRepr]
		public struct IObjectWithProgID : IUnknown
		{
			public const new Guid IID = .(0x71e806fb, 0x8dee, 0x46fc, 0xbf, 0x8c, 0x77, 0x48, 0xa8, 0xa1, 0xae, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProgID(PWSTR pszProgID) mut
			{
				return VT.SetProgID(&this, pszProgID);
			}
			public HRESULT GetProgID(PWSTR* ppszProgID) mut
			{
				return VT.GetProgID(&this, ppszProgID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjectWithProgID *self, PWSTR pszProgID) SetProgID;
				public new function HRESULT(IObjectWithProgID *self, PWSTR* ppszProgID) GetProgID;
			}
		}
		[CRepr]
		public struct IUpdateIDList : IUnknown
		{
			public const new Guid IID = .(0x6589b6d2, 0x5f8d, 0x4b9e, 0xb7, 0xe0, 0x23, 0xcd, 0xd9, 0x71, 0x7d, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Update(IBindCtx* pbc, ITEMIDLIST* pidlIn, ITEMIDLIST** ppidlOut) mut
			{
				return VT.Update(&this, pbc, pidlIn, ppidlOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUpdateIDList *self, IBindCtx* pbc, ITEMIDLIST* pidlIn, ITEMIDLIST** ppidlOut) Update;
			}
		}
		[CRepr]
		public struct IDesktopWallpaper : IUnknown
		{
			public const new Guid IID = .(0xb92b56a9, 0x8b55, 0x4e14, 0x9a, 0x89, 0x01, 0x99, 0xbb, 0xb6, 0xf9, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWallpaper(PWSTR monitorID, PWSTR wallpaper) mut
			{
				return VT.SetWallpaper(&this, monitorID, wallpaper);
			}
			public HRESULT GetWallpaper(PWSTR monitorID, PWSTR* wallpaper) mut
			{
				return VT.GetWallpaper(&this, monitorID, wallpaper);
			}
			public HRESULT GetMonitorDevicePathAt(uint32 monitorIndex, PWSTR* monitorID) mut
			{
				return VT.GetMonitorDevicePathAt(&this, monitorIndex, monitorID);
			}
			public HRESULT GetMonitorDevicePathCount(uint32* count) mut
			{
				return VT.GetMonitorDevicePathCount(&this, count);
			}
			public HRESULT GetMonitorRECT(PWSTR monitorID, RECT* displayRect) mut
			{
				return VT.GetMonitorRECT(&this, monitorID, displayRect);
			}
			public HRESULT SetBackgroundColor(uint32 color) mut
			{
				return VT.SetBackgroundColor(&this, color);
			}
			public HRESULT GetBackgroundColor(uint32* color) mut
			{
				return VT.GetBackgroundColor(&this, color);
			}
			public HRESULT SetPosition(DESKTOP_WALLPAPER_POSITION position) mut
			{
				return VT.SetPosition(&this, position);
			}
			public HRESULT GetPosition(DESKTOP_WALLPAPER_POSITION* position) mut
			{
				return VT.GetPosition(&this, position);
			}
			public HRESULT SetSlideshow(IShellItemArray* items) mut
			{
				return VT.SetSlideshow(&this, items);
			}
			public HRESULT GetSlideshow(IShellItemArray** items) mut
			{
				return VT.GetSlideshow(&this, items);
			}
			public HRESULT SetSlideshowOptions(DESKTOP_SLIDESHOW_OPTIONS options, uint32 slideshowTick) mut
			{
				return VT.SetSlideshowOptions(&this, options, slideshowTick);
			}
			public HRESULT GetSlideshowOptions(DESKTOP_SLIDESHOW_OPTIONS* options, uint32* slideshowTick) mut
			{
				return VT.GetSlideshowOptions(&this, options, slideshowTick);
			}
			public HRESULT AdvanceSlideshow(PWSTR monitorID, DESKTOP_SLIDESHOW_DIRECTION direction) mut
			{
				return VT.AdvanceSlideshow(&this, monitorID, direction);
			}
			public HRESULT GetStatus(DESKTOP_SLIDESHOW_STATE* state) mut
			{
				return VT.GetStatus(&this, state);
			}
			public HRESULT Enable(BOOL enable) mut
			{
				return VT.Enable(&this, enable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDesktopWallpaper *self, PWSTR monitorID, PWSTR wallpaper) SetWallpaper;
				public new function HRESULT(IDesktopWallpaper *self, PWSTR monitorID, PWSTR* wallpaper) GetWallpaper;
				public new function HRESULT(IDesktopWallpaper *self, uint32 monitorIndex, PWSTR* monitorID) GetMonitorDevicePathAt;
				public new function HRESULT(IDesktopWallpaper *self, uint32* count) GetMonitorDevicePathCount;
				public new function HRESULT(IDesktopWallpaper *self, PWSTR monitorID, RECT* displayRect) GetMonitorRECT;
				public new function HRESULT(IDesktopWallpaper *self, uint32 color) SetBackgroundColor;
				public new function HRESULT(IDesktopWallpaper *self, uint32* color) GetBackgroundColor;
				public new function HRESULT(IDesktopWallpaper *self, DESKTOP_WALLPAPER_POSITION position) SetPosition;
				public new function HRESULT(IDesktopWallpaper *self, DESKTOP_WALLPAPER_POSITION* position) GetPosition;
				public new function HRESULT(IDesktopWallpaper *self, IShellItemArray* items) SetSlideshow;
				public new function HRESULT(IDesktopWallpaper *self, IShellItemArray** items) GetSlideshow;
				public new function HRESULT(IDesktopWallpaper *self, DESKTOP_SLIDESHOW_OPTIONS options, uint32 slideshowTick) SetSlideshowOptions;
				public new function HRESULT(IDesktopWallpaper *self, DESKTOP_SLIDESHOW_OPTIONS* options, uint32* slideshowTick) GetSlideshowOptions;
				public new function HRESULT(IDesktopWallpaper *self, PWSTR monitorID, DESKTOP_SLIDESHOW_DIRECTION direction) AdvanceSlideshow;
				public new function HRESULT(IDesktopWallpaper *self, DESKTOP_SLIDESHOW_STATE* state) GetStatus;
				public new function HRESULT(IDesktopWallpaper *self, BOOL enable) Enable;
			}
		}
		[CRepr]
		public struct IHomeGroup : IUnknown
		{
			public const new Guid IID = .(0x7a3bd1d9, 0x35a9, 0x4fb3, 0xa4, 0x67, 0xf4, 0x8c, 0xac, 0x35, 0xe2, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMember(BOOL* member) mut
			{
				return VT.IsMember(&this, member);
			}
			public HRESULT ShowSharingWizard(HWND owner, HOMEGROUPSHARINGCHOICES* sharingchoices) mut
			{
				return VT.ShowSharingWizard(&this, owner, sharingchoices);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHomeGroup *self, BOOL* member) IsMember;
				public new function HRESULT(IHomeGroup *self, HWND owner, HOMEGROUPSHARINGCHOICES* sharingchoices) ShowSharingWizard;
			}
		}
		[CRepr]
		public struct IInitializeWithPropertyStore : IUnknown
		{
			public const new Guid IID = .(0xc3e12eb5, 0x7d8d, 0x44f8, 0xb6, 0xdd, 0x0e, 0x77, 0xb3, 0x4d, 0x6d, 0xe4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IPropertyStore* pps) mut
			{
				return VT.Initialize(&this, pps);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithPropertyStore *self, IPropertyStore* pps) Initialize;
			}
		}
		[CRepr]
		public struct IOpenSearchSource : IUnknown
		{
			public const new Guid IID = .(0xf0ee7333, 0xe6fc, 0x479b, 0x9f, 0x25, 0xa8, 0x60, 0xc2, 0x34, 0xa3, 0x8e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetResults(HWND hwnd, PWSTR pszQuery, uint32 dwStartIndex, uint32 dwCount, Guid* riid, void** ppv) mut
			{
				return VT.GetResults(&this, hwnd, pszQuery, dwStartIndex, dwCount, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IOpenSearchSource *self, HWND hwnd, PWSTR pszQuery, uint32 dwStartIndex, uint32 dwCount, Guid* riid, void** ppv) GetResults;
			}
		}
		[CRepr]
		public struct IShellLibrary : IUnknown
		{
			public const new Guid IID = .(0x11a66efa, 0x382e, 0x451a, 0x92, 0x34, 0x1e, 0x0e, 0x12, 0xef, 0x30, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadLibraryFromItem(IShellItem* psiLibrary, uint32 grfMode) mut
			{
				return VT.LoadLibraryFromItem(&this, psiLibrary, grfMode);
			}
			public HRESULT LoadLibraryFromKnownFolder(Guid* kfidLibrary, uint32 grfMode) mut
			{
				return VT.LoadLibraryFromKnownFolder(&this, kfidLibrary, grfMode);
			}
			public HRESULT AddFolder(IShellItem* psiLocation) mut
			{
				return VT.AddFolder(&this, psiLocation);
			}
			public HRESULT RemoveFolder(IShellItem* psiLocation) mut
			{
				return VT.RemoveFolder(&this, psiLocation);
			}
			public HRESULT GetFolders(LIBRARYFOLDERFILTER lff, Guid* riid, void** ppv) mut
			{
				return VT.GetFolders(&this, lff, riid, ppv);
			}
			public HRESULT ResolveFolder(IShellItem* psiFolderToResolve, uint32 dwTimeout, Guid* riid, void** ppv) mut
			{
				return VT.ResolveFolder(&this, psiFolderToResolve, dwTimeout, riid, ppv);
			}
			public HRESULT GetDefaultSaveFolder(DEFAULTSAVEFOLDERTYPE dsft, Guid* riid, void** ppv) mut
			{
				return VT.GetDefaultSaveFolder(&this, dsft, riid, ppv);
			}
			public HRESULT SetDefaultSaveFolder(DEFAULTSAVEFOLDERTYPE dsft, IShellItem* psi) mut
			{
				return VT.SetDefaultSaveFolder(&this, dsft, psi);
			}
			public HRESULT GetOptions(LIBRARYOPTIONFLAGS* plofOptions) mut
			{
				return VT.GetOptions(&this, plofOptions);
			}
			public HRESULT SetOptions(LIBRARYOPTIONFLAGS lofMask, LIBRARYOPTIONFLAGS lofOptions) mut
			{
				return VT.SetOptions(&this, lofMask, lofOptions);
			}
			public HRESULT GetFolderType(Guid* pftid) mut
			{
				return VT.GetFolderType(&this, pftid);
			}
			public HRESULT SetFolderType(Guid* ftid) mut
			{
				return VT.SetFolderType(&this, ftid);
			}
			public HRESULT GetIcon(PWSTR* ppszIcon) mut
			{
				return VT.GetIcon(&this, ppszIcon);
			}
			public HRESULT SetIcon(PWSTR pszIcon) mut
			{
				return VT.SetIcon(&this, pszIcon);
			}
			public HRESULT Commit() mut
			{
				return VT.Commit(&this);
			}
			public HRESULT Save(IShellItem* psiFolderToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, IShellItem** ppsiSavedTo) mut
			{
				return VT.Save(&this, psiFolderToSaveIn, pszLibraryName, lsf, ppsiSavedTo);
			}
			public HRESULT SaveInKnownFolder(Guid* kfidToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, IShellItem** ppsiSavedTo) mut
			{
				return VT.SaveInKnownFolder(&this, kfidToSaveIn, pszLibraryName, lsf, ppsiSavedTo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellLibrary *self, IShellItem* psiLibrary, uint32 grfMode) LoadLibraryFromItem;
				public new function HRESULT(IShellLibrary *self, Guid* kfidLibrary, uint32 grfMode) LoadLibraryFromKnownFolder;
				public new function HRESULT(IShellLibrary *self, IShellItem* psiLocation) AddFolder;
				public new function HRESULT(IShellLibrary *self, IShellItem* psiLocation) RemoveFolder;
				public new function HRESULT(IShellLibrary *self, LIBRARYFOLDERFILTER lff, Guid* riid, void** ppv) GetFolders;
				public new function HRESULT(IShellLibrary *self, IShellItem* psiFolderToResolve, uint32 dwTimeout, Guid* riid, void** ppv) ResolveFolder;
				public new function HRESULT(IShellLibrary *self, DEFAULTSAVEFOLDERTYPE dsft, Guid* riid, void** ppv) GetDefaultSaveFolder;
				public new function HRESULT(IShellLibrary *self, DEFAULTSAVEFOLDERTYPE dsft, IShellItem* psi) SetDefaultSaveFolder;
				public new function HRESULT(IShellLibrary *self, LIBRARYOPTIONFLAGS* plofOptions) GetOptions;
				public new function HRESULT(IShellLibrary *self, LIBRARYOPTIONFLAGS lofMask, LIBRARYOPTIONFLAGS lofOptions) SetOptions;
				public new function HRESULT(IShellLibrary *self, Guid* pftid) GetFolderType;
				public new function HRESULT(IShellLibrary *self, Guid* ftid) SetFolderType;
				public new function HRESULT(IShellLibrary *self, PWSTR* ppszIcon) GetIcon;
				public new function HRESULT(IShellLibrary *self, PWSTR pszIcon) SetIcon;
				public new function HRESULT(IShellLibrary *self) Commit;
				public new function HRESULT(IShellLibrary *self, IShellItem* psiFolderToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, IShellItem** ppsiSavedTo) Save;
				public new function HRESULT(IShellLibrary *self, Guid* kfidToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, IShellItem** ppsiSavedTo) SaveInKnownFolder;
			}
		}
		[CRepr]
		public struct IDefaultFolderMenuInitialize : IUnknown
		{
			public const new Guid IID = .(0x7690aa79, 0xf8fc, 0x4615, 0xa3, 0x27, 0x36, 0xf7, 0xd1, 0x8f, 0x5d, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND hwnd, IContextMenuCB* pcmcb, ITEMIDLIST* pidlFolder, IShellFolder* psf, uint32 cidl, ITEMIDLIST** apidl, IUnknown* punkAssociation, uint32 cKeys, HKEY* aKeys) mut
			{
				return VT.Initialize(&this, hwnd, pcmcb, pidlFolder, psf, cidl, apidl, punkAssociation, cKeys, aKeys);
			}
			public HRESULT SetMenuRestrictions(DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrValues) mut
			{
				return VT.SetMenuRestrictions(&this, dfmrValues);
			}
			public HRESULT GetMenuRestrictions(DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrMask, DEFAULT_FOLDER_MENU_RESTRICTIONS* pdfmrValues) mut
			{
				return VT.GetMenuRestrictions(&this, dfmrMask, pdfmrValues);
			}
			public HRESULT SetHandlerClsid(Guid* rclsid) mut
			{
				return VT.SetHandlerClsid(&this, rclsid);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDefaultFolderMenuInitialize *self, HWND hwnd, IContextMenuCB* pcmcb, ITEMIDLIST* pidlFolder, IShellFolder* psf, uint32 cidl, ITEMIDLIST** apidl, IUnknown* punkAssociation, uint32 cKeys, HKEY* aKeys) Initialize;
				public new function HRESULT(IDefaultFolderMenuInitialize *self, DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrValues) SetMenuRestrictions;
				public new function HRESULT(IDefaultFolderMenuInitialize *self, DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrMask, DEFAULT_FOLDER_MENU_RESTRICTIONS* pdfmrValues) GetMenuRestrictions;
				public new function HRESULT(IDefaultFolderMenuInitialize *self, Guid* rclsid) SetHandlerClsid;
			}
		}
		[CRepr]
		public struct IApplicationActivationManager : IUnknown
		{
			public const new Guid IID = .(0x2e941141, 0x7f97, 0x4756, 0xba, 0x1d, 0x9d, 0xec, 0xde, 0x89, 0x4a, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateApplication(PWSTR appUserModelId, PWSTR arguments, ACTIVATEOPTIONS options, uint32* processId) mut
			{
				return VT.ActivateApplication(&this, appUserModelId, arguments, options, processId);
			}
			public HRESULT ActivateForFile(PWSTR appUserModelId, IShellItemArray* itemArray, PWSTR verb, uint32* processId) mut
			{
				return VT.ActivateForFile(&this, appUserModelId, itemArray, verb, processId);
			}
			public HRESULT ActivateForProtocol(PWSTR appUserModelId, IShellItemArray* itemArray, uint32* processId) mut
			{
				return VT.ActivateForProtocol(&this, appUserModelId, itemArray, processId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationActivationManager *self, PWSTR appUserModelId, PWSTR arguments, ACTIVATEOPTIONS options, uint32* processId) ActivateApplication;
				public new function HRESULT(IApplicationActivationManager *self, PWSTR appUserModelId, IShellItemArray* itemArray, PWSTR verb, uint32* processId) ActivateForFile;
				public new function HRESULT(IApplicationActivationManager *self, PWSTR appUserModelId, IShellItemArray* itemArray, uint32* processId) ActivateForProtocol;
			}
		}
		[CRepr]
		public struct IVirtualDesktopManager : IUnknown
		{
			public const new Guid IID = .(0xa5cd92ff, 0x29be, 0x454c, 0x8d, 0x04, 0xd8, 0x28, 0x79, 0xfb, 0x3f, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsWindowOnCurrentVirtualDesktop(HWND topLevelWindow, BOOL* onCurrentDesktop) mut
			{
				return VT.IsWindowOnCurrentVirtualDesktop(&this, topLevelWindow, onCurrentDesktop);
			}
			public HRESULT GetWindowDesktopId(HWND topLevelWindow, Guid* desktopId) mut
			{
				return VT.GetWindowDesktopId(&this, topLevelWindow, desktopId);
			}
			public HRESULT MoveWindowToDesktop(HWND topLevelWindow, Guid* desktopId) mut
			{
				return VT.MoveWindowToDesktop(&this, topLevelWindow, desktopId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVirtualDesktopManager *self, HWND topLevelWindow, BOOL* onCurrentDesktop) IsWindowOnCurrentVirtualDesktop;
				public new function HRESULT(IVirtualDesktopManager *self, HWND topLevelWindow, Guid* desktopId) GetWindowDesktopId;
				public new function HRESULT(IVirtualDesktopManager *self, HWND topLevelWindow, Guid* desktopId) MoveWindowToDesktop;
			}
		}
		[CRepr]
		public struct IAssocHandlerInvoker : IUnknown
		{
			public const new Guid IID = .(0x92218cab, 0xecaa, 0x4335, 0x81, 0x33, 0x80, 0x7f, 0xd2, 0x34, 0xc2, 0xee);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SupportsSelection() mut
			{
				return VT.SupportsSelection(&this);
			}
			public HRESULT Invoke() mut
			{
				return VT.Invoke(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssocHandlerInvoker *self) SupportsSelection;
				public new function HRESULT(IAssocHandlerInvoker *self) Invoke;
			}
		}
		[CRepr]
		public struct IAssocHandler : IUnknown
		{
			public const new Guid IID = .(0xf04061ac, 0x1659, 0x4a3f, 0xa9, 0x54, 0x77, 0x5a, 0xa5, 0x7f, 0xc0, 0x83);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppsz) mut
			{
				return VT.GetName(&this, ppsz);
			}
			public HRESULT GetUIName(PWSTR* ppsz) mut
			{
				return VT.GetUIName(&this, ppsz);
			}
			public HRESULT GetIconLocation(PWSTR* ppszPath, int32* pIndex) mut
			{
				return VT.GetIconLocation(&this, ppszPath, pIndex);
			}
			public HRESULT IsRecommended() mut
			{
				return VT.IsRecommended(&this);
			}
			public HRESULT MakeDefault(PWSTR pszDescription) mut
			{
				return VT.MakeDefault(&this, pszDescription);
			}
			public HRESULT Invoke(IDataObject* pdo) mut
			{
				return VT.Invoke(&this, pdo);
			}
			public HRESULT CreateInvoker(IDataObject* pdo, IAssocHandlerInvoker** ppInvoker) mut
			{
				return VT.CreateInvoker(&this, pdo, ppInvoker);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAssocHandler *self, PWSTR* ppsz) GetName;
				public new function HRESULT(IAssocHandler *self, PWSTR* ppsz) GetUIName;
				public new function HRESULT(IAssocHandler *self, PWSTR* ppszPath, int32* pIndex) GetIconLocation;
				public new function HRESULT(IAssocHandler *self) IsRecommended;
				public new function HRESULT(IAssocHandler *self, PWSTR pszDescription) MakeDefault;
				public new function HRESULT(IAssocHandler *self, IDataObject* pdo) Invoke;
				public new function HRESULT(IAssocHandler *self, IDataObject* pdo, IAssocHandlerInvoker** ppInvoker) CreateInvoker;
			}
		}
		[CRepr]
		public struct IEnumAssocHandlers : IUnknown
		{
			public const new Guid IID = .(0x973810ae, 0x9599, 0x4b88, 0x9e, 0x4d, 0x6e, 0xe9, 0x8c, 0x95, 0x52, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, IAssocHandler** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumAssocHandlers *self, uint32 celt, IAssocHandler** rgelt, uint32* pceltFetched) Next;
			}
		}
		[CRepr]
		public struct IDataObjectProvider : IUnknown
		{
			public const new Guid IID = .(0x3d25f6d6, 0x4b2a, 0x433c, 0x91, 0x84, 0x7c, 0x33, 0xad, 0x35, 0xd0, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDataObject(IDataObject** dataObject) mut
			{
				return VT.GetDataObject(&this, dataObject);
			}
			public HRESULT SetDataObject(IDataObject* dataObject) mut
			{
				return VT.SetDataObject(&this, dataObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataObjectProvider *self, IDataObject** dataObject) GetDataObject;
				public new function HRESULT(IDataObjectProvider *self, IDataObject* dataObject) SetDataObject;
			}
		}
		[CRepr]
		public struct IDataTransferManagerInterop : IUnknown
		{
			public const new Guid IID = .(0x3a3dcd6c, 0x3eab, 0x43dc, 0xbc, 0xde, 0x45, 0x67, 0x1c, 0xe8, 0x00, 0xc8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetForWindow(HWND appWindow, Guid* riid, void** dataTransferManager) mut
			{
				return VT.GetForWindow(&this, appWindow, riid, dataTransferManager);
			}
			public HRESULT ShowShareUIForWindow(HWND appWindow) mut
			{
				return VT.ShowShareUIForWindow(&this, appWindow);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataTransferManagerInterop *self, HWND appWindow, Guid* riid, void** dataTransferManager) GetForWindow;
				public new function HRESULT(IDataTransferManagerInterop *self, HWND appWindow) ShowShareUIForWindow;
			}
		}
		[CRepr]
		public struct IFrameworkInputPaneHandler : IUnknown
		{
			public const new Guid IID = .(0x226c537b, 0x1e76, 0x4d9e, 0xa7, 0x60, 0x33, 0xdb, 0x29, 0x92, 0x2f, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Showing(RECT* prcInputPaneScreenLocation, BOOL fEnsureFocusedElementInView) mut
			{
				return VT.Showing(&this, prcInputPaneScreenLocation, fEnsureFocusedElementInView);
			}
			public HRESULT Hiding(BOOL fEnsureFocusedElementInView) mut
			{
				return VT.Hiding(&this, fEnsureFocusedElementInView);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFrameworkInputPaneHandler *self, RECT* prcInputPaneScreenLocation, BOOL fEnsureFocusedElementInView) Showing;
				public new function HRESULT(IFrameworkInputPaneHandler *self, BOOL fEnsureFocusedElementInView) Hiding;
			}
		}
		[CRepr]
		public struct IFrameworkInputPane : IUnknown
		{
			public const new Guid IID = .(0x5752238b, 0x24f0, 0x495a, 0x82, 0xf1, 0x2f, 0xd5, 0x93, 0x05, 0x67, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(IUnknown* pWindow, IFrameworkInputPaneHandler* pHandler, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pWindow, pHandler, pdwCookie);
			}
			public HRESULT AdviseWithHWND(HWND hwnd, IFrameworkInputPaneHandler* pHandler, uint32* pdwCookie) mut
			{
				return VT.AdviseWithHWND(&this, hwnd, pHandler, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			public HRESULT Location(RECT* prcInputPaneScreenLocation) mut
			{
				return VT.Location(&this, prcInputPaneScreenLocation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFrameworkInputPane *self, IUnknown* pWindow, IFrameworkInputPaneHandler* pHandler, uint32* pdwCookie) Advise;
				public new function HRESULT(IFrameworkInputPane *self, HWND hwnd, IFrameworkInputPaneHandler* pHandler, uint32* pdwCookie) AdviseWithHWND;
				public new function HRESULT(IFrameworkInputPane *self, uint32 dwCookie) Unadvise;
				public new function HRESULT(IFrameworkInputPane *self, RECT* prcInputPaneScreenLocation) Location;
			}
		}
		[CRepr]
		public struct IAppVisibilityEvents : IUnknown
		{
			public const new Guid IID = .(0x6584ce6b, 0x7d82, 0x49c2, 0x89, 0xc9, 0xc6, 0xbc, 0x02, 0xba, 0x8c, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AppVisibilityOnMonitorChanged(HMONITOR hMonitor, MONITOR_APP_VISIBILITY previousMode, MONITOR_APP_VISIBILITY currentMode) mut
			{
				return VT.AppVisibilityOnMonitorChanged(&this, hMonitor, previousMode, currentMode);
			}
			public HRESULT LauncherVisibilityChange(BOOL currentVisibleState) mut
			{
				return VT.LauncherVisibilityChange(&this, currentVisibleState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppVisibilityEvents *self, HMONITOR hMonitor, MONITOR_APP_VISIBILITY previousMode, MONITOR_APP_VISIBILITY currentMode) AppVisibilityOnMonitorChanged;
				public new function HRESULT(IAppVisibilityEvents *self, BOOL currentVisibleState) LauncherVisibilityChange;
			}
		}
		[CRepr]
		public struct IAppVisibility : IUnknown
		{
			public const new Guid IID = .(0x2246ea2d, 0xcaea, 0x4444, 0xa3, 0xc4, 0x6d, 0xe8, 0x27, 0xe4, 0x43, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAppVisibilityOnMonitor(HMONITOR hMonitor, MONITOR_APP_VISIBILITY* pMode) mut
			{
				return VT.GetAppVisibilityOnMonitor(&this, hMonitor, pMode);
			}
			public HRESULT IsLauncherVisible(BOOL* pfVisible) mut
			{
				return VT.IsLauncherVisible(&this, pfVisible);
			}
			public HRESULT Advise(IAppVisibilityEvents* pCallback, uint32* pdwCookie) mut
			{
				return VT.Advise(&this, pCallback, pdwCookie);
			}
			public HRESULT Unadvise(uint32 dwCookie) mut
			{
				return VT.Unadvise(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppVisibility *self, HMONITOR hMonitor, MONITOR_APP_VISIBILITY* pMode) GetAppVisibilityOnMonitor;
				public new function HRESULT(IAppVisibility *self, BOOL* pfVisible) IsLauncherVisible;
				public new function HRESULT(IAppVisibility *self, IAppVisibilityEvents* pCallback, uint32* pdwCookie) Advise;
				public new function HRESULT(IAppVisibility *self, uint32 dwCookie) Unadvise;
			}
		}
		[CRepr]
		public struct IPackageExecutionStateChangeNotification : IUnknown
		{
			public const new Guid IID = .(0x1bb12a62, 0x2ad8, 0x432b, 0x8c, 0xcf, 0x0c, 0x2c, 0x52, 0xaf, 0xcd, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStateChanged(PWSTR pszPackageFullName, PACKAGE_EXECUTION_STATE pesNewState) mut
			{
				return VT.OnStateChanged(&this, pszPackageFullName, pesNewState);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPackageExecutionStateChangeNotification *self, PWSTR pszPackageFullName, PACKAGE_EXECUTION_STATE pesNewState) OnStateChanged;
			}
		}
		[CRepr]
		public struct IPackageDebugSettings : IUnknown
		{
			public const new Guid IID = .(0xf27c3930, 0x8029, 0x4ad1, 0x94, 0xe3, 0x3d, 0xba, 0x41, 0x78, 0x10, 0xc1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableDebugging(PWSTR packageFullName, PWSTR debuggerCommandLine, PWSTR environment) mut
			{
				return VT.EnableDebugging(&this, packageFullName, debuggerCommandLine, environment);
			}
			public HRESULT DisableDebugging(PWSTR packageFullName) mut
			{
				return VT.DisableDebugging(&this, packageFullName);
			}
			public HRESULT Suspend(PWSTR packageFullName) mut
			{
				return VT.Suspend(&this, packageFullName);
			}
			public HRESULT Resume(PWSTR packageFullName) mut
			{
				return VT.Resume(&this, packageFullName);
			}
			public HRESULT TerminateAllProcesses(PWSTR packageFullName) mut
			{
				return VT.TerminateAllProcesses(&this, packageFullName);
			}
			public HRESULT SetTargetSessionId(uint32 sessionId) mut
			{
				return VT.SetTargetSessionId(&this, sessionId);
			}
			public HRESULT EnumerateBackgroundTasks(PWSTR packageFullName, uint32* taskCount, Guid** taskIds, PWSTR** taskNames) mut
			{
				return VT.EnumerateBackgroundTasks(&this, packageFullName, taskCount, taskIds, taskNames);
			}
			public HRESULT ActivateBackgroundTask(Guid* taskId) mut
			{
				return VT.ActivateBackgroundTask(&this, taskId);
			}
			public HRESULT StartServicing(PWSTR packageFullName) mut
			{
				return VT.StartServicing(&this, packageFullName);
			}
			public HRESULT StopServicing(PWSTR packageFullName) mut
			{
				return VT.StopServicing(&this, packageFullName);
			}
			public HRESULT StartSessionRedirection(PWSTR packageFullName, uint32 sessionId) mut
			{
				return VT.StartSessionRedirection(&this, packageFullName, sessionId);
			}
			public HRESULT StopSessionRedirection(PWSTR packageFullName) mut
			{
				return VT.StopSessionRedirection(&this, packageFullName);
			}
			public HRESULT GetPackageExecutionState(PWSTR packageFullName, PACKAGE_EXECUTION_STATE* packageExecutionState) mut
			{
				return VT.GetPackageExecutionState(&this, packageFullName, packageExecutionState);
			}
			public HRESULT RegisterForPackageStateChanges(PWSTR packageFullName, IPackageExecutionStateChangeNotification* pPackageExecutionStateChangeNotification, uint32* pdwCookie) mut
			{
				return VT.RegisterForPackageStateChanges(&this, packageFullName, pPackageExecutionStateChangeNotification, pdwCookie);
			}
			public HRESULT UnregisterForPackageStateChanges(uint32 dwCookie) mut
			{
				return VT.UnregisterForPackageStateChanges(&this, dwCookie);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName, PWSTR debuggerCommandLine, PWSTR environment) EnableDebugging;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) DisableDebugging;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) Suspend;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) Resume;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) TerminateAllProcesses;
				public new function HRESULT(IPackageDebugSettings *self, uint32 sessionId) SetTargetSessionId;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName, uint32* taskCount, Guid** taskIds, PWSTR** taskNames) EnumerateBackgroundTasks;
				public new function HRESULT(IPackageDebugSettings *self, Guid* taskId) ActivateBackgroundTask;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) StartServicing;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) StopServicing;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName, uint32 sessionId) StartSessionRedirection;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName) StopSessionRedirection;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName, PACKAGE_EXECUTION_STATE* packageExecutionState) GetPackageExecutionState;
				public new function HRESULT(IPackageDebugSettings *self, PWSTR packageFullName, IPackageExecutionStateChangeNotification* pPackageExecutionStateChangeNotification, uint32* pdwCookie) RegisterForPackageStateChanges;
				public new function HRESULT(IPackageDebugSettings *self, uint32 dwCookie) UnregisterForPackageStateChanges;
			}
		}
		[CRepr]
		public struct IPackageDebugSettings2 : IPackageDebugSettings
		{
			public const new Guid IID = .(0x6e3194bb, 0xab82, 0x4d22, 0x93, 0xf5, 0xfa, 0xbd, 0xa4, 0x0e, 0x7b, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumerateApps(PWSTR packageFullName, uint32* appCount, PWSTR** appUserModelIds, PWSTR** appDisplayNames) mut
			{
				return VT.EnumerateApps(&this, packageFullName, appCount, appUserModelIds, appDisplayNames);
			}
			[CRepr]
			public struct VTable : IPackageDebugSettings.VTable
			{
				public new function HRESULT(IPackageDebugSettings2 *self, PWSTR packageFullName, uint32* appCount, PWSTR** appUserModelIds, PWSTR** appDisplayNames) EnumerateApps;
			}
		}
		[CRepr]
		public struct ISuspensionDependencyManager : IUnknown
		{
			public const new Guid IID = .(0x52b83a42, 0x2543, 0x416a, 0x81, 0xd9, 0xc0, 0xde, 0x79, 0x69, 0xc8, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterAsChild(HANDLE processHandle) mut
			{
				return VT.RegisterAsChild(&this, processHandle);
			}
			public HRESULT GroupChildWithParent(HANDLE childProcessHandle) mut
			{
				return VT.GroupChildWithParent(&this, childProcessHandle);
			}
			public HRESULT UngroupChildFromParent(HANDLE childProcessHandle) mut
			{
				return VT.UngroupChildFromParent(&this, childProcessHandle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISuspensionDependencyManager *self, HANDLE processHandle) RegisterAsChild;
				public new function HRESULT(ISuspensionDependencyManager *self, HANDLE childProcessHandle) GroupChildWithParent;
				public new function HRESULT(ISuspensionDependencyManager *self, HANDLE childProcessHandle) UngroupChildFromParent;
			}
		}
		[CRepr]
		public struct IExecuteCommandApplicationHostEnvironment : IUnknown
		{
			public const new Guid IID = .(0x18b21aa9, 0xe184, 0x4ff0, 0x9f, 0x5e, 0xf8, 0x82, 0xd0, 0x37, 0x71, 0xb3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValue(AHE_TYPE* pahe) mut
			{
				return VT.GetValue(&this, pahe);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExecuteCommandApplicationHostEnvironment *self, AHE_TYPE* pahe) GetValue;
			}
		}
		[CRepr]
		public struct IExecuteCommandHost : IUnknown
		{
			public const new Guid IID = .(0x4b6832a2, 0x5f04, 0x4c9d, 0xb8, 0x9d, 0x72, 0x7a, 0x15, 0xd1, 0x03, 0xe7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUIMode(EC_HOST_UI_MODE* pUIMode) mut
			{
				return VT.GetUIMode(&this, pUIMode);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExecuteCommandHost *self, EC_HOST_UI_MODE* pUIMode) GetUIMode;
			}
		}
		[CRepr]
		public struct IApplicationDesignModeSettings : IUnknown
		{
			public const new Guid IID = .(0x2a3dee9a, 0xe31d, 0x46d6, 0x85, 0x08, 0xbc, 0xc5, 0x97, 0xdb, 0x35, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNativeDisplaySize(SIZE nativeDisplaySizePixels) mut
			{
				return VT.SetNativeDisplaySize(&this, nativeDisplaySizePixels);
			}
			public HRESULT SetScaleFactor(DEVICE_SCALE_FACTOR scaleFactor) mut
			{
				return VT.SetScaleFactor(&this, scaleFactor);
			}
			public HRESULT SetApplicationViewState(APPLICATION_VIEW_STATE viewState) mut
			{
				return VT.SetApplicationViewState(&this, viewState);
			}
			public HRESULT ComputeApplicationSize(SIZE* applicationSizePixels) mut
			{
				return VT.ComputeApplicationSize(&this, applicationSizePixels);
			}
			public HRESULT IsApplicationViewStateSupported(APPLICATION_VIEW_STATE viewState, SIZE nativeDisplaySizePixels, DEVICE_SCALE_FACTOR scaleFactor, BOOL* supported) mut
			{
				return VT.IsApplicationViewStateSupported(&this, viewState, nativeDisplaySizePixels, scaleFactor, supported);
			}
			public HRESULT TriggerEdgeGesture(EDGE_GESTURE_KIND edgeGestureKind) mut
			{
				return VT.TriggerEdgeGesture(&this, edgeGestureKind);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationDesignModeSettings *self, SIZE nativeDisplaySizePixels) SetNativeDisplaySize;
				public new function HRESULT(IApplicationDesignModeSettings *self, DEVICE_SCALE_FACTOR scaleFactor) SetScaleFactor;
				public new function HRESULT(IApplicationDesignModeSettings *self, APPLICATION_VIEW_STATE viewState) SetApplicationViewState;
				public new function HRESULT(IApplicationDesignModeSettings *self, SIZE* applicationSizePixels) ComputeApplicationSize;
				public new function HRESULT(IApplicationDesignModeSettings *self, APPLICATION_VIEW_STATE viewState, SIZE nativeDisplaySizePixels, DEVICE_SCALE_FACTOR scaleFactor, BOOL* supported) IsApplicationViewStateSupported;
				public new function HRESULT(IApplicationDesignModeSettings *self, EDGE_GESTURE_KIND edgeGestureKind) TriggerEdgeGesture;
			}
		}
		[CRepr]
		public struct IApplicationDesignModeSettings2 : IApplicationDesignModeSettings
		{
			public const new Guid IID = .(0x490514e1, 0x675a, 0x4d6e, 0xa5, 0x8d, 0xe5, 0x49, 0x01, 0xb4, 0xca, 0x2f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetNativeDisplayOrientation(NATIVE_DISPLAY_ORIENTATION nativeDisplayOrientation) mut
			{
				return VT.SetNativeDisplayOrientation(&this, nativeDisplayOrientation);
			}
			public HRESULT SetApplicationViewOrientation(APPLICATION_VIEW_ORIENTATION viewOrientation) mut
			{
				return VT.SetApplicationViewOrientation(&this, viewOrientation);
			}
			public HRESULT SetAdjacentDisplayEdges(ADJACENT_DISPLAY_EDGES adjacentDisplayEdges) mut
			{
				return VT.SetAdjacentDisplayEdges(&this, adjacentDisplayEdges);
			}
			public HRESULT SetIsOnLockScreen(BOOL isOnLockScreen) mut
			{
				return VT.SetIsOnLockScreen(&this, isOnLockScreen);
			}
			public HRESULT SetApplicationViewMinWidth(APPLICATION_VIEW_MIN_WIDTH viewMinWidth) mut
			{
				return VT.SetApplicationViewMinWidth(&this, viewMinWidth);
			}
			public HRESULT GetApplicationSizeBounds(SIZE* minApplicationSizePixels, SIZE* maxApplicationSizePixels) mut
			{
				return VT.GetApplicationSizeBounds(&this, minApplicationSizePixels, maxApplicationSizePixels);
			}
			public HRESULT GetApplicationViewOrientation(SIZE applicationSizePixels, APPLICATION_VIEW_ORIENTATION* viewOrientation) mut
			{
				return VT.GetApplicationViewOrientation(&this, applicationSizePixels, viewOrientation);
			}
			[CRepr]
			public struct VTable : IApplicationDesignModeSettings.VTable
			{
				public new function HRESULT(IApplicationDesignModeSettings2 *self, NATIVE_DISPLAY_ORIENTATION nativeDisplayOrientation) SetNativeDisplayOrientation;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, APPLICATION_VIEW_ORIENTATION viewOrientation) SetApplicationViewOrientation;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, ADJACENT_DISPLAY_EDGES adjacentDisplayEdges) SetAdjacentDisplayEdges;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, BOOL isOnLockScreen) SetIsOnLockScreen;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, APPLICATION_VIEW_MIN_WIDTH viewMinWidth) SetApplicationViewMinWidth;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, SIZE* minApplicationSizePixels, SIZE* maxApplicationSizePixels) GetApplicationSizeBounds;
				public new function HRESULT(IApplicationDesignModeSettings2 *self, SIZE applicationSizePixels, APPLICATION_VIEW_ORIENTATION* viewOrientation) GetApplicationViewOrientation;
			}
		}
		[CRepr]
		public struct ILaunchTargetMonitor : IUnknown
		{
			public const new Guid IID = .(0x266fbc7e, 0x490d, 0x46ed, 0xa9, 0x6b, 0x22, 0x74, 0xdb, 0x25, 0x20, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMonitor(HMONITOR* monitor) mut
			{
				return VT.GetMonitor(&this, monitor);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchTargetMonitor *self, HMONITOR* monitor) GetMonitor;
			}
		}
		[CRepr]
		public struct ILaunchSourceViewSizePreference : IUnknown
		{
			public const new Guid IID = .(0xe5aa01f7, 0x1fb8, 0x4830, 0x87, 0x20, 0x4e, 0x67, 0x34, 0xcb, 0xd5, 0xf3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSourceViewToPosition(HWND* hwnd) mut
			{
				return VT.GetSourceViewToPosition(&this, hwnd);
			}
			public HRESULT GetSourceViewSizePreference(APPLICATION_VIEW_SIZE_PREFERENCE* sourceSizeAfterLaunch) mut
			{
				return VT.GetSourceViewSizePreference(&this, sourceSizeAfterLaunch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchSourceViewSizePreference *self, HWND* hwnd) GetSourceViewToPosition;
				public new function HRESULT(ILaunchSourceViewSizePreference *self, APPLICATION_VIEW_SIZE_PREFERENCE* sourceSizeAfterLaunch) GetSourceViewSizePreference;
			}
		}
		[CRepr]
		public struct ILaunchTargetViewSizePreference : IUnknown
		{
			public const new Guid IID = .(0x2f0666c6, 0x12f7, 0x4360, 0xb5, 0x11, 0xa3, 0x94, 0xa0, 0x55, 0x37, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTargetViewSizePreference(APPLICATION_VIEW_SIZE_PREFERENCE* targetSizeOnLaunch) mut
			{
				return VT.GetTargetViewSizePreference(&this, targetSizeOnLaunch);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchTargetViewSizePreference *self, APPLICATION_VIEW_SIZE_PREFERENCE* targetSizeOnLaunch) GetTargetViewSizePreference;
			}
		}
		[CRepr]
		public struct ILaunchSourceAppUserModelId : IUnknown
		{
			public const new Guid IID = .(0x989191ac, 0x28ff, 0x4cf0, 0x95, 0x84, 0xe0, 0xd0, 0x78, 0xbc, 0x23, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAppUserModelId(PWSTR* launchingApp) mut
			{
				return VT.GetAppUserModelId(&this, launchingApp);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ILaunchSourceAppUserModelId *self, PWSTR* launchingApp) GetAppUserModelId;
			}
		}
		[CRepr]
		public struct IInitializeWithWindow : IUnknown
		{
			public const new Guid IID = .(0x3e68d4bd, 0x7135, 0x4d10, 0x80, 0x18, 0x9f, 0xb6, 0xd9, 0xf3, 0x3f, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND hwnd) mut
			{
				return VT.Initialize(&this, hwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeWithWindow *self, HWND hwnd) Initialize;
			}
		}
		[CRepr]
		public struct IHandlerInfo : IUnknown
		{
			public const new Guid IID = .(0x997706ef, 0xf880, 0x453b, 0x81, 0x18, 0x39, 0xe1, 0xa2, 0xd2, 0x65, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetApplicationDisplayName(PWSTR* value) mut
			{
				return VT.GetApplicationDisplayName(&this, value);
			}
			public HRESULT GetApplicationPublisher(PWSTR* value) mut
			{
				return VT.GetApplicationPublisher(&this, value);
			}
			public HRESULT GetApplicationIconReference(PWSTR* value) mut
			{
				return VT.GetApplicationIconReference(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHandlerInfo *self, PWSTR* value) GetApplicationDisplayName;
				public new function HRESULT(IHandlerInfo *self, PWSTR* value) GetApplicationPublisher;
				public new function HRESULT(IHandlerInfo *self, PWSTR* value) GetApplicationIconReference;
			}
		}
		[CRepr]
		public struct IHandlerInfo2 : IHandlerInfo
		{
			public const new Guid IID = .(0x31cca04c, 0x04d3, 0x4ea9, 0x90, 0xde, 0x97, 0xb1, 0x5e, 0x87, 0xa5, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetApplicationId(PWSTR* value) mut
			{
				return VT.GetApplicationId(&this, value);
			}
			[CRepr]
			public struct VTable : IHandlerInfo.VTable
			{
				public new function HRESULT(IHandlerInfo2 *self, PWSTR* value) GetApplicationId;
			}
		}
		[CRepr]
		public struct IHandlerActivationHost : IUnknown
		{
			public const new Guid IID = .(0x35094a87, 0x8bb1, 0x4237, 0x96, 0xc6, 0xc4, 0x17, 0xee, 0xbd, 0xb0, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeforeCoCreateInstance(Guid* clsidHandler, IShellItemArray* itemsBeingActivated, IHandlerInfo* handlerInfo) mut
			{
				return VT.BeforeCoCreateInstance(&this, clsidHandler, itemsBeingActivated, handlerInfo);
			}
			public HRESULT BeforeCreateProcess(PWSTR applicationPath, PWSTR commandLine, IHandlerInfo* handlerInfo) mut
			{
				return VT.BeforeCreateProcess(&this, applicationPath, commandLine, handlerInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHandlerActivationHost *self, Guid* clsidHandler, IShellItemArray* itemsBeingActivated, IHandlerInfo* handlerInfo) BeforeCoCreateInstance;
				public new function HRESULT(IHandlerActivationHost *self, PWSTR applicationPath, PWSTR commandLine, IHandlerInfo* handlerInfo) BeforeCreateProcess;
			}
		}
		[CRepr]
		public struct IAppActivationUIInfo : IUnknown
		{
			public const new Guid IID = .(0xabad189d, 0x9fa3, 0x4278, 0xb3, 0xca, 0x8c, 0xa4, 0x48, 0xa8, 0x8d, 0xcb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetMonitor(HMONITOR* value) mut
			{
				return VT.GetMonitor(&this, value);
			}
			public HRESULT GetInvokePoint(POINT* value) mut
			{
				return VT.GetInvokePoint(&this, value);
			}
			public HRESULT GetShowCommand(int32* value) mut
			{
				return VT.GetShowCommand(&this, value);
			}
			public HRESULT GetShowUI(BOOL* value) mut
			{
				return VT.GetShowUI(&this, value);
			}
			public HRESULT GetKeyState(uint32* value) mut
			{
				return VT.GetKeyState(&this, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppActivationUIInfo *self, HMONITOR* value) GetMonitor;
				public new function HRESULT(IAppActivationUIInfo *self, POINT* value) GetInvokePoint;
				public new function HRESULT(IAppActivationUIInfo *self, int32* value) GetShowCommand;
				public new function HRESULT(IAppActivationUIInfo *self, BOOL* value) GetShowUI;
				public new function HRESULT(IAppActivationUIInfo *self, uint32* value) GetKeyState;
			}
		}
		[CRepr]
		public struct IContactManagerInterop : IUnknown
		{
			public const new Guid IID = .(0x99eacba7, 0xe073, 0x43b6, 0xa8, 0x96, 0x55, 0xaf, 0xe4, 0x8a, 0x08, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowContactCardForWindow(HWND appWindow, IUnknown* contact, RECT* selection, FLYOUT_PLACEMENT preferredPlacement) mut
			{
				return VT.ShowContactCardForWindow(&this, appWindow, contact, selection, preferredPlacement);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IContactManagerInterop *self, HWND appWindow, IUnknown* contact, RECT* selection, FLYOUT_PLACEMENT preferredPlacement) ShowContactCardForWindow;
			}
		}
		[CRepr]
		public struct IShellIconOverlayIdentifier : IUnknown
		{
			public const new Guid IID = .(0x0c6c4200, 0xc589, 0x11d0, 0x99, 0x9a, 0x00, 0xc0, 0x4f, 0xd6, 0x55, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsMemberOf(PWSTR pwszPath, uint32 dwAttrib) mut
			{
				return VT.IsMemberOf(&this, pwszPath, dwAttrib);
			}
			public HRESULT GetOverlayInfo(char16* pwszIconFile, int32 cchMax, int32* pIndex, uint32* pdwFlags) mut
			{
				return VT.GetOverlayInfo(&this, pwszIconFile, cchMax, pIndex, pdwFlags);
			}
			public HRESULT GetPriority(int32* pPriority) mut
			{
				return VT.GetPriority(&this, pPriority);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellIconOverlayIdentifier *self, PWSTR pwszPath, uint32 dwAttrib) IsMemberOf;
				public new function HRESULT(IShellIconOverlayIdentifier *self, char16* pwszIconFile, int32 cchMax, int32* pIndex, uint32* pdwFlags) GetOverlayInfo;
				public new function HRESULT(IShellIconOverlayIdentifier *self, int32* pPriority) GetPriority;
			}
		}
		[CRepr]
		public struct IBannerNotificationHandler : IUnknown
		{
			public const new Guid IID = .(0x8d7b2ba7, 0xdb05, 0x46a8, 0x82, 0x3c, 0xd2, 0xb6, 0xde, 0x08, 0xee, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBannerEvent(BANNER_NOTIFICATION* notification) mut
			{
				return VT.OnBannerEvent(&this, notification);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBannerNotificationHandler *self, BANNER_NOTIFICATION* notification) OnBannerEvent;
			}
		}
		[CRepr]
		public struct ISortColumnArray : IUnknown
		{
			public const new Guid IID = .(0x6dfc60fb, 0xf2e9, 0x459b, 0xbe, 0xb5, 0x28, 0x8f, 0x1a, 0x7c, 0x7d, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* columnCount) mut
			{
				return VT.GetCount(&this, columnCount);
			}
			public HRESULT GetAt(uint32 index, SORTCOLUMN* sortcolumn) mut
			{
				return VT.GetAt(&this, index, sortcolumn);
			}
			public HRESULT GetSortType(SORT_ORDER_TYPE* type) mut
			{
				return VT.GetSortType(&this, type);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISortColumnArray *self, uint32* columnCount) GetCount;
				public new function HRESULT(ISortColumnArray *self, uint32 index, SORTCOLUMN* sortcolumn) GetAt;
				public new function HRESULT(ISortColumnArray *self, SORT_ORDER_TYPE* type) GetSortType;
			}
		}
		[CRepr]
		public struct IPropertyKeyStore : IUnknown
		{
			public const new Guid IID = .(0x75bd59aa, 0xf23b, 0x4963, 0xab, 0xa4, 0x0b, 0x35, 0x57, 0x52, 0xa9, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetKeyCount(int32* keyCount) mut
			{
				return VT.GetKeyCount(&this, keyCount);
			}
			public HRESULT GetKeyAt(int32 index, PROPERTYKEY* pkey) mut
			{
				return VT.GetKeyAt(&this, index, pkey);
			}
			public HRESULT AppendKey(PROPERTYKEY* key) mut
			{
				return VT.AppendKey(&this, key);
			}
			public HRESULT DeleteKey(int32 index) mut
			{
				return VT.DeleteKey(&this, index);
			}
			public HRESULT IsKeyInStore(PROPERTYKEY* key) mut
			{
				return VT.IsKeyInStore(&this, key);
			}
			public HRESULT RemoveKey(PROPERTYKEY* key) mut
			{
				return VT.RemoveKey(&this, key);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPropertyKeyStore *self, int32* keyCount) GetKeyCount;
				public new function HRESULT(IPropertyKeyStore *self, int32 index, PROPERTYKEY* pkey) GetKeyAt;
				public new function HRESULT(IPropertyKeyStore *self, PROPERTYKEY* key) AppendKey;
				public new function HRESULT(IPropertyKeyStore *self, int32 index) DeleteKey;
				public new function HRESULT(IPropertyKeyStore *self, PROPERTYKEY* key) IsKeyInStore;
				public new function HRESULT(IPropertyKeyStore *self, PROPERTYKEY* key) RemoveKey;
			}
		}
		[CRepr]
		public struct IQueryCodePage : IUnknown
		{
			public const new Guid IID = .(0xc7b236ce, 0xee80, 0x11d0, 0x98, 0x5f, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCodePage(uint32* puiCodePage) mut
			{
				return VT.GetCodePage(&this, puiCodePage);
			}
			public HRESULT SetCodePage(uint32 uiCodePage) mut
			{
				return VT.SetCodePage(&this, uiCodePage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryCodePage *self, uint32* puiCodePage) GetCodePage;
				public new function HRESULT(IQueryCodePage *self, uint32 uiCodePage) SetCodePage;
			}
		}
		[CRepr]
		public struct IFolderViewOptions : IUnknown
		{
			public const new Guid IID = .(0x3cc974d2, 0xb302, 0x4d36, 0xad, 0x3e, 0x06, 0xd9, 0x3f, 0x69, 0x5d, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFolderViewOptions(FOLDERVIEWOPTIONS fvoMask, FOLDERVIEWOPTIONS fvoFlags) mut
			{
				return VT.SetFolderViewOptions(&this, fvoMask, fvoFlags);
			}
			public HRESULT GetFolderViewOptions(FOLDERVIEWOPTIONS* pfvoFlags) mut
			{
				return VT.GetFolderViewOptions(&this, pfvoFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderViewOptions *self, FOLDERVIEWOPTIONS fvoMask, FOLDERVIEWOPTIONS fvoFlags) SetFolderViewOptions;
				public new function HRESULT(IFolderViewOptions *self, FOLDERVIEWOPTIONS* pfvoFlags) GetFolderViewOptions;
			}
		}
		[CRepr]
		public struct IShellView3 : IShellView2
		{
			public const new Guid IID = .(0xec39fa88, 0xf8af, 0x41c5, 0x84, 0x21, 0x38, 0xbe, 0xd2, 0x8f, 0x46, 0x73);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateViewWindow3(IShellBrowser* psbOwner, IShellView* psvPrev, uint32 dwViewFlags, FOLDERFLAGS dwMask, FOLDERFLAGS dwFlags, FOLDERVIEWMODE fvMode, Guid* pvid, RECT* prcView, HWND* phwndView) mut
			{
				return VT.CreateViewWindow3(&this, psbOwner, psvPrev, dwViewFlags, dwMask, dwFlags, fvMode, pvid, prcView, phwndView);
			}
			[CRepr]
			public struct VTable : IShellView2.VTable
			{
				public new function HRESULT(IShellView3 *self, IShellBrowser* psbOwner, IShellView* psvPrev, uint32 dwViewFlags, FOLDERFLAGS dwMask, FOLDERFLAGS dwFlags, FOLDERVIEWMODE fvMode, Guid* pvid, RECT* prcView, HWND* phwndView) CreateViewWindow3;
			}
		}
		[CRepr]
		public struct ISearchBoxInfo : IUnknown
		{
			public const new Guid IID = .(0x6af6e03f, 0xd664, 0x4ef4, 0x96, 0x26, 0xf7, 0xe0, 0xed, 0x36, 0x75, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCondition(Guid* riid, void** ppv) mut
			{
				return VT.GetCondition(&this, riid, ppv);
			}
			public HRESULT GetText(PWSTR* ppsz) mut
			{
				return VT.GetText(&this, ppsz);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISearchBoxInfo *self, Guid* riid, void** ppv) GetCondition;
				public new function HRESULT(ISearchBoxInfo *self, PWSTR* ppsz) GetText;
			}
		}
		[CRepr]
		public struct IVisualProperties : IUnknown
		{
			public const new Guid IID = .(0xe693cf68, 0xd967, 0x4112, 0x87, 0x63, 0x99, 0x17, 0x2a, 0xee, 0x5e, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetWatermark(HBITMAP hbmp, VPWATERMARKFLAGS vpwf) mut
			{
				return VT.SetWatermark(&this, hbmp, vpwf);
			}
			public HRESULT SetColor(VPCOLORFLAGS vpcf, uint32 cr) mut
			{
				return VT.SetColor(&this, vpcf, cr);
			}
			public HRESULT GetColor(VPCOLORFLAGS vpcf, uint32* pcr) mut
			{
				return VT.GetColor(&this, vpcf, pcr);
			}
			public HRESULT SetItemHeight(int32 cyItemInPixels) mut
			{
				return VT.SetItemHeight(&this, cyItemInPixels);
			}
			public HRESULT GetItemHeight(int32* cyItemInPixels) mut
			{
				return VT.GetItemHeight(&this, cyItemInPixels);
			}
			public HRESULT SetFont(LOGFONTW* plf, BOOL bRedraw) mut
			{
				return VT.SetFont(&this, plf, bRedraw);
			}
			public HRESULT GetFont(LOGFONTW* plf) mut
			{
				return VT.GetFont(&this, plf);
			}
			public HRESULT SetTheme(PWSTR pszSubAppName, PWSTR pszSubIdList) mut
			{
				return VT.SetTheme(&this, pszSubAppName, pszSubIdList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IVisualProperties *self, HBITMAP hbmp, VPWATERMARKFLAGS vpwf) SetWatermark;
				public new function HRESULT(IVisualProperties *self, VPCOLORFLAGS vpcf, uint32 cr) SetColor;
				public new function HRESULT(IVisualProperties *self, VPCOLORFLAGS vpcf, uint32* pcr) GetColor;
				public new function HRESULT(IVisualProperties *self, int32 cyItemInPixels) SetItemHeight;
				public new function HRESULT(IVisualProperties *self, int32* cyItemInPixels) GetItemHeight;
				public new function HRESULT(IVisualProperties *self, LOGFONTW* plf, BOOL bRedraw) SetFont;
				public new function HRESULT(IVisualProperties *self, LOGFONTW* plf) GetFont;
				public new function HRESULT(IVisualProperties *self, PWSTR pszSubAppName, PWSTR pszSubIdList) SetTheme;
			}
		}
		[CRepr]
		public struct ICommDlgBrowser3 : ICommDlgBrowser2
		{
			public const new Guid IID = .(0xc8ad25a1, 0x3294, 0x41ee, 0x81, 0x65, 0x71, 0x17, 0x4b, 0xd0, 0x1c, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnColumnClicked(IShellView* ppshv, int32 iColumn) mut
			{
				return VT.OnColumnClicked(&this, ppshv, iColumn);
			}
			public HRESULT GetCurrentFilter(char16* pszFileSpec, int32 cchFileSpec) mut
			{
				return VT.GetCurrentFilter(&this, pszFileSpec, cchFileSpec);
			}
			public HRESULT OnPreViewCreated(IShellView* ppshv) mut
			{
				return VT.OnPreViewCreated(&this, ppshv);
			}
			[CRepr]
			public struct VTable : ICommDlgBrowser2.VTable
			{
				public new function HRESULT(ICommDlgBrowser3 *self, IShellView* ppshv, int32 iColumn) OnColumnClicked;
				public new function HRESULT(ICommDlgBrowser3 *self, char16* pszFileSpec, int32 cchFileSpec) GetCurrentFilter;
				public new function HRESULT(ICommDlgBrowser3 *self, IShellView* ppshv) OnPreViewCreated;
			}
		}
		[CRepr]
		public struct IUserAccountChangeCallback : IUnknown
		{
			public const new Guid IID = .(0xa561e69a, 0xb4b8, 0x4113, 0x91, 0xa5, 0x64, 0xc6, 0xbc, 0xca, 0x34, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPictureChange(PWSTR pszUserName) mut
			{
				return VT.OnPictureChange(&this, pszUserName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUserAccountChangeCallback *self, PWSTR pszUserName) OnPictureChange;
			}
		}
		[CRepr]
		public struct IStreamAsync : IStream
		{
			public const new Guid IID = .(0xfe0b6665, 0xe0ca, 0x49b9, 0xa1, 0x78, 0x2b, 0x5c, 0xb4, 0x8d, 0x92, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadAsync(void* pv, uint32 cb, uint32* pcbRead, OVERLAPPED* lpOverlapped) mut
			{
				return VT.ReadAsync(&this, pv, cb, pcbRead, lpOverlapped);
			}
			public HRESULT WriteAsync(void* lpBuffer, uint32 cb, uint32* pcbWritten, OVERLAPPED* lpOverlapped) mut
			{
				return VT.WriteAsync(&this, lpBuffer, cb, pcbWritten, lpOverlapped);
			}
			public HRESULT OverlappedResult(OVERLAPPED* lpOverlapped, uint32* lpNumberOfBytesTransferred, BOOL bWait) mut
			{
				return VT.OverlappedResult(&this, lpOverlapped, lpNumberOfBytesTransferred, bWait);
			}
			public HRESULT CancelIo() mut
			{
				return VT.CancelIo(&this);
			}
			[CRepr]
			public struct VTable : IStream.VTable
			{
				public new function HRESULT(IStreamAsync *self, void* pv, uint32 cb, uint32* pcbRead, OVERLAPPED* lpOverlapped) ReadAsync;
				public new function HRESULT(IStreamAsync *self, void* lpBuffer, uint32 cb, uint32* pcbWritten, OVERLAPPED* lpOverlapped) WriteAsync;
				public new function HRESULT(IStreamAsync *self, OVERLAPPED* lpOverlapped, uint32* lpNumberOfBytesTransferred, BOOL bWait) OverlappedResult;
				public new function HRESULT(IStreamAsync *self) CancelIo;
			}
		}
		[CRepr]
		public struct IStreamUnbufferedInfo : IUnknown
		{
			public const new Guid IID = .(0x8a68fdda, 0x1fdc, 0x4c20, 0x8c, 0xeb, 0x41, 0x66, 0x43, 0xb5, 0xa6, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSectorSize(uint32* pcbSectorSize) mut
			{
				return VT.GetSectorSize(&this, pcbSectorSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStreamUnbufferedInfo *self, uint32* pcbSectorSize) GetSectorSize;
			}
		}
		[CRepr]
		public struct IDragSourceHelper2 : IDragSourceHelper
		{
			public const new Guid IID = .(0x83e07d0d, 0x0c5f, 0x4163, 0xbf, 0x1a, 0x60, 0xb2, 0x74, 0x05, 0x1e, 0x40);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFlags(uint32 dwFlags) mut
			{
				return VT.SetFlags(&this, dwFlags);
			}
			[CRepr]
			public struct VTable : IDragSourceHelper.VTable
			{
				public new function HRESULT(IDragSourceHelper2 *self, uint32 dwFlags) SetFlags;
			}
		}
		[CRepr]
		public struct IHWEventHandler : IUnknown
		{
			public const new Guid IID = .(0xc1fb73d0, 0xec3a, 0x4ba2, 0xb5, 0x12, 0x8c, 0xdb, 0x91, 0x87, 0xb6, 0xd1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR pszParams) mut
			{
				return VT.Initialize(&this, pszParams);
			}
			public HRESULT HandleEvent(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType) mut
			{
				return VT.HandleEvent(&this, pszDeviceID, pszAltDeviceID, pszEventType);
			}
			public HRESULT HandleEventWithContent(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, PWSTR pszContentTypeHandler, IDataObject* pdataobject) mut
			{
				return VT.HandleEventWithContent(&this, pszDeviceID, pszAltDeviceID, pszEventType, pszContentTypeHandler, pdataobject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHWEventHandler *self, PWSTR pszParams) Initialize;
				public new function HRESULT(IHWEventHandler *self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType) HandleEvent;
				public new function HRESULT(IHWEventHandler *self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, PWSTR pszContentTypeHandler, IDataObject* pdataobject) HandleEventWithContent;
			}
		}
		[CRepr]
		public struct IHWEventHandler2 : IHWEventHandler
		{
			public const new Guid IID = .(0xcfcc809f, 0x295d, 0x42e8, 0x9f, 0xfc, 0x42, 0x4b, 0x33, 0xc4, 0x87, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HandleEventWithHWND(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, HWND hwndOwner) mut
			{
				return VT.HandleEventWithHWND(&this, pszDeviceID, pszAltDeviceID, pszEventType, hwndOwner);
			}
			[CRepr]
			public struct VTable : IHWEventHandler.VTable
			{
				public new function HRESULT(IHWEventHandler2 *self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, HWND hwndOwner) HandleEventWithHWND;
			}
		}
		[CRepr]
		public struct IQueryCancelAutoPlay : IUnknown
		{
			public const new Guid IID = .(0xddefe873, 0x6997, 0x4e68, 0xbe, 0x26, 0x39, 0xb6, 0x33, 0xad, 0xbe, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AllowAutoPlay(PWSTR pszPath, uint32 dwContentType, PWSTR pszLabel, uint32 dwSerialNumber) mut
			{
				return VT.AllowAutoPlay(&this, pszPath, dwContentType, pszLabel, dwSerialNumber);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryCancelAutoPlay *self, PWSTR pszPath, uint32 dwContentType, PWSTR pszLabel, uint32 dwSerialNumber) AllowAutoPlay;
			}
		}
		[CRepr]
		public struct IDynamicHWHandler : IUnknown
		{
			public const new Guid IID = .(0xdc2601d7, 0x059e, 0x42fc, 0xa0, 0x9d, 0x2a, 0xfd, 0x21, 0xb6, 0xd5, 0xf7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDynamicInfo(PWSTR pszDeviceID, uint32 dwContentType, PWSTR* ppszAction) mut
			{
				return VT.GetDynamicInfo(&this, pszDeviceID, dwContentType, ppszAction);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDynamicHWHandler *self, PWSTR pszDeviceID, uint32 dwContentType, PWSTR* ppszAction) GetDynamicInfo;
			}
		}
		[CRepr]
		public struct IUserNotificationCallback : IUnknown
		{
			public const new Guid IID = .(0x19108294, 0x0441, 0x4aff, 0x80, 0x13, 0xfa, 0x0a, 0x73, 0x0b, 0x0b, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnBalloonUserClick(POINT* pt) mut
			{
				return VT.OnBalloonUserClick(&this, pt);
			}
			public HRESULT OnLeftClick(POINT* pt) mut
			{
				return VT.OnLeftClick(&this, pt);
			}
			public HRESULT OnContextMenu(POINT* pt) mut
			{
				return VT.OnContextMenu(&this, pt);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUserNotificationCallback *self, POINT* pt) OnBalloonUserClick;
				public new function HRESULT(IUserNotificationCallback *self, POINT* pt) OnLeftClick;
				public new function HRESULT(IUserNotificationCallback *self, POINT* pt) OnContextMenu;
			}
		}
		[CRepr]
		public struct IUserNotification2 : IUnknown
		{
			public const new Guid IID = .(0x215913cc, 0x57eb, 0x4fab, 0xab, 0x5a, 0xe5, 0xfa, 0x7b, 0xea, 0x2a, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBalloonInfo(PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) mut
			{
				return VT.SetBalloonInfo(&this, pszTitle, pszText, dwInfoFlags);
			}
			public HRESULT SetBalloonRetry(uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) mut
			{
				return VT.SetBalloonRetry(&this, dwShowTime, dwInterval, cRetryCount);
			}
			public HRESULT SetIconInfo(HICON hIcon, PWSTR pszToolTip) mut
			{
				return VT.SetIconInfo(&this, hIcon, pszToolTip);
			}
			public HRESULT Show(IQueryContinue* pqc, uint32 dwContinuePollInterval, IUserNotificationCallback* pSink) mut
			{
				return VT.Show(&this, pqc, dwContinuePollInterval, pSink);
			}
			public HRESULT PlaySound(PWSTR pszSoundName) mut
			{
				return VT.PlaySound(&this, pszSoundName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUserNotification2 *self, PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) SetBalloonInfo;
				public new function HRESULT(IUserNotification2 *self, uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) SetBalloonRetry;
				public new function HRESULT(IUserNotification2 *self, HICON hIcon, PWSTR pszToolTip) SetIconInfo;
				public new function HRESULT(IUserNotification2 *self, IQueryContinue* pqc, uint32 dwContinuePollInterval, IUserNotificationCallback* pSink) Show;
				public new function HRESULT(IUserNotification2 *self, PWSTR pszSoundName) PlaySound;
			}
		}
		[CRepr]
		public struct IDeskBand2 : IDeskBand
		{
			public const new Guid IID = .(0x79d16de4, 0xabee, 0x4021, 0x8d, 0x9d, 0x91, 0x69, 0xb2, 0x61, 0xd6, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CanRenderComposited(BOOL* pfCanRenderComposited) mut
			{
				return VT.CanRenderComposited(&this, pfCanRenderComposited);
			}
			public HRESULT SetCompositionState(BOOL fCompositionEnabled) mut
			{
				return VT.SetCompositionState(&this, fCompositionEnabled);
			}
			public HRESULT GetCompositionState(BOOL* pfCompositionEnabled) mut
			{
				return VT.GetCompositionState(&this, pfCompositionEnabled);
			}
			[CRepr]
			public struct VTable : IDeskBand.VTable
			{
				public new function HRESULT(IDeskBand2 *self, BOOL* pfCanRenderComposited) CanRenderComposited;
				public new function HRESULT(IDeskBand2 *self, BOOL fCompositionEnabled) SetCompositionState;
				public new function HRESULT(IDeskBand2 *self, BOOL* pfCompositionEnabled) GetCompositionState;
			}
		}
		[CRepr]
		public struct IStartMenuPinnedList : IUnknown
		{
			public const new Guid IID = .(0x4cd19ada, 0x25a5, 0x4a32, 0xb3, 0xb7, 0x34, 0x7b, 0xee, 0x5b, 0xe3, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RemoveFromList(IShellItem* pitem) mut
			{
				return VT.RemoveFromList(&this, pitem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStartMenuPinnedList *self, IShellItem* pitem) RemoveFromList;
			}
		}
		[CRepr]
		public struct ICDBurn : IUnknown
		{
			public const new Guid IID = .(0x3d73a659, 0xe5d0, 0x4d42, 0xaf, 0xc0, 0x51, 0x21, 0xba, 0x42, 0x5c, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetRecorderDriveLetter(char16* pszDrive, uint32 cch) mut
			{
				return VT.GetRecorderDriveLetter(&this, pszDrive, cch);
			}
			public HRESULT Burn(HWND hwnd) mut
			{
				return VT.Burn(&this, hwnd);
			}
			public HRESULT HasRecordableDrive(BOOL* pfHasRecorder) mut
			{
				return VT.HasRecordableDrive(&this, pfHasRecorder);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICDBurn *self, char16* pszDrive, uint32 cch) GetRecorderDriveLetter;
				public new function HRESULT(ICDBurn *self, HWND hwnd) Burn;
				public new function HRESULT(ICDBurn *self, BOOL* pfHasRecorder) HasRecordableDrive;
			}
		}
		[CRepr]
		public struct IWizardSite : IUnknown
		{
			public const new Guid IID = .(0x88960f5b, 0x422f, 0x4e7b, 0x80, 0x13, 0x73, 0x41, 0x53, 0x81, 0xc3, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPreviousPage(HPROPSHEETPAGE* phpage) mut
			{
				return VT.GetPreviousPage(&this, phpage);
			}
			public HRESULT GetNextPage(HPROPSHEETPAGE* phpage) mut
			{
				return VT.GetNextPage(&this, phpage);
			}
			public HRESULT GetCancelledPage(HPROPSHEETPAGE* phpage) mut
			{
				return VT.GetCancelledPage(&this, phpage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWizardSite *self, HPROPSHEETPAGE* phpage) GetPreviousPage;
				public new function HRESULT(IWizardSite *self, HPROPSHEETPAGE* phpage) GetNextPage;
				public new function HRESULT(IWizardSite *self, HPROPSHEETPAGE* phpage) GetCancelledPage;
			}
		}
		[CRepr]
		public struct IWizardExtension : IUnknown
		{
			public const new Guid IID = .(0xc02ea696, 0x86cc, 0x491e, 0x9b, 0x23, 0x74, 0x39, 0x4a, 0x04, 0x44, 0xa8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddPages(HPROPSHEETPAGE* aPages, uint32 cPages, uint32* pnPagesAdded) mut
			{
				return VT.AddPages(&this, aPages, cPages, pnPagesAdded);
			}
			public HRESULT GetFirstPage(HPROPSHEETPAGE* phpage) mut
			{
				return VT.GetFirstPage(&this, phpage);
			}
			public HRESULT GetLastPage(HPROPSHEETPAGE* phpage) mut
			{
				return VT.GetLastPage(&this, phpage);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWizardExtension *self, HPROPSHEETPAGE* aPages, uint32 cPages, uint32* pnPagesAdded) AddPages;
				public new function HRESULT(IWizardExtension *self, HPROPSHEETPAGE* phpage) GetFirstPage;
				public new function HRESULT(IWizardExtension *self, HPROPSHEETPAGE* phpage) GetLastPage;
			}
		}
		[CRepr]
		public struct IWebWizardExtension : IWizardExtension
		{
			public const new Guid IID = .(0x0e6b3f66, 0x98d1, 0x48c0, 0xa2, 0x22, 0xfb, 0xde, 0x74, 0xe2, 0xfb, 0xc5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialURL(PWSTR pszURL) mut
			{
				return VT.SetInitialURL(&this, pszURL);
			}
			public HRESULT SetErrorURL(PWSTR pszErrorURL) mut
			{
				return VT.SetErrorURL(&this, pszErrorURL);
			}
			[CRepr]
			public struct VTable : IWizardExtension.VTable
			{
				public new function HRESULT(IWebWizardExtension *self, PWSTR pszURL) SetInitialURL;
				public new function HRESULT(IWebWizardExtension *self, PWSTR pszErrorURL) SetErrorURL;
			}
		}
		[CRepr]
		public struct IPublishingWizard : IWizardExtension
		{
			public const new Guid IID = .(0xaa9198bb, 0xccec, 0x472d, 0xbe, 0xed, 0x19, 0xa4, 0xf6, 0x73, 0x3f, 0x7a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(IDataObject* pdo, uint32 dwOptions, PWSTR pszServiceScope) mut
			{
				return VT.Initialize(&this, pdo, dwOptions, pszServiceScope);
			}
			public HRESULT GetTransferManifest(HRESULT* phrFromTransfer, IXMLDOMDocument** pdocManifest) mut
			{
				return VT.GetTransferManifest(&this, phrFromTransfer, pdocManifest);
			}
			[CRepr]
			public struct VTable : IWizardExtension.VTable
			{
				public new function HRESULT(IPublishingWizard *self, IDataObject* pdo, uint32 dwOptions, PWSTR pszServiceScope) Initialize;
				public new function HRESULT(IPublishingWizard *self, HRESULT* phrFromTransfer, IXMLDOMDocument** pdocManifest) GetTransferManifest;
			}
		}
		[CRepr]
		public struct IFolderViewHost : IUnknown
		{
			public const new Guid IID = .(0x1ea58f02, 0xd55a, 0x411d, 0xb0, 0x9e, 0x9e, 0x65, 0xac, 0x21, 0x60, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(HWND hwndParent, IDataObject* pdo, RECT* prc) mut
			{
				return VT.Initialize(&this, hwndParent, pdo, prc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderViewHost *self, HWND hwndParent, IDataObject* pdo, RECT* prc) Initialize;
			}
		}
		[CRepr]
		public struct IAccessibleObject : IUnknown
		{
			public const new Guid IID = .(0x95a391c5, 0x9ed4, 0x4c28, 0x84, 0x01, 0xab, 0x9e, 0x06, 0x71, 0x9e, 0x11);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAccessibleName(PWSTR pszName) mut
			{
				return VT.SetAccessibleName(&this, pszName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccessibleObject *self, PWSTR pszName) SetAccessibleName;
			}
		}
		[CRepr]
		public struct IResultsFolder : IUnknown
		{
			public const new Guid IID = .(0x96e5ae6d, 0x6ae1, 0x4b1c, 0x90, 0x0c, 0xc6, 0x48, 0x0e, 0xaa, 0x88, 0x28);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddItem(IShellItem* psi) mut
			{
				return VT.AddItem(&this, psi);
			}
			public HRESULT AddIDList(ITEMIDLIST* pidl, ITEMIDLIST** ppidlAdded) mut
			{
				return VT.AddIDList(&this, pidl, ppidlAdded);
			}
			public HRESULT RemoveItem(IShellItem* psi) mut
			{
				return VT.RemoveItem(&this, psi);
			}
			public HRESULT RemoveIDList(ITEMIDLIST* pidl) mut
			{
				return VT.RemoveIDList(&this, pidl);
			}
			public HRESULT RemoveAll() mut
			{
				return VT.RemoveAll(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IResultsFolder *self, IShellItem* psi) AddItem;
				public new function HRESULT(IResultsFolder *self, ITEMIDLIST* pidl, ITEMIDLIST** ppidlAdded) AddIDList;
				public new function HRESULT(IResultsFolder *self, IShellItem* psi) RemoveItem;
				public new function HRESULT(IResultsFolder *self, ITEMIDLIST* pidl) RemoveIDList;
				public new function HRESULT(IResultsFolder *self) RemoveAll;
			}
		}
		[CRepr]
		public struct IAutoCompleteDropDown : IUnknown
		{
			public const new Guid IID = .(0x3cd141f4, 0x3c6a, 0x11d2, 0xbc, 0xaa, 0x00, 0xc0, 0x4f, 0xd9, 0x29, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDropDownStatus(uint32* pdwFlags, PWSTR* ppwszString) mut
			{
				return VT.GetDropDownStatus(&this, pdwFlags, ppwszString);
			}
			public HRESULT ResetEnumerator() mut
			{
				return VT.ResetEnumerator(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAutoCompleteDropDown *self, uint32* pdwFlags, PWSTR* ppwszString) GetDropDownStatus;
				public new function HRESULT(IAutoCompleteDropDown *self) ResetEnumerator;
			}
		}
		[CRepr]
		public struct ICDBurnExt : IUnknown
		{
			public const new Guid IID = .(0x2271dcca, 0x74fc, 0x4414, 0x8f, 0xb7, 0xc5, 0x6b, 0x05, 0xac, 0xe2, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSupportedActionTypes(uint32* pdwActions) mut
			{
				return VT.GetSupportedActionTypes(&this, pdwActions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICDBurnExt *self, uint32* pdwActions) GetSupportedActionTypes;
			}
		}
		[CRepr]
		public struct IEnumReadyCallback : IUnknown
		{
			public const new Guid IID = .(0x61e00d45, 0x8fff, 0x4e60, 0x92, 0x4e, 0x65, 0x37, 0xb6, 0x16, 0x12, 0xdd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumReady() mut
			{
				return VT.EnumReady(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumReadyCallback *self) EnumReady;
			}
		}
		[CRepr]
		public struct IEnumerableView : IUnknown
		{
			public const new Guid IID = .(0x8c8bf236, 0x1aec, 0x495f, 0x98, 0x94, 0x91, 0xd5, 0x7c, 0x3c, 0x68, 0x6f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetEnumReadyCallback(IEnumReadyCallback* percb) mut
			{
				return VT.SetEnumReadyCallback(&this, percb);
			}
			public HRESULT CreateEnumIDListFromContents(ITEMIDLIST* pidlFolder, uint32 dwEnumFlags, IEnumIDList** ppEnumIDList) mut
			{
				return VT.CreateEnumIDListFromContents(&this, pidlFolder, dwEnumFlags, ppEnumIDList);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumerableView *self, IEnumReadyCallback* percb) SetEnumReadyCallback;
				public new function HRESULT(IEnumerableView *self, ITEMIDLIST* pidlFolder, uint32 dwEnumFlags, IEnumIDList** ppEnumIDList) CreateEnumIDListFromContents;
			}
		}
		[CRepr]
		public struct IInsertItem : IUnknown
		{
			public const new Guid IID = .(0xd2b57227, 0x3d23, 0x4b95, 0x93, 0xc0, 0x49, 0x2b, 0xd4, 0x54, 0xc3, 0x56);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InsertItem(ITEMIDLIST* pidl) mut
			{
				return VT.InsertItem(&this, pidl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInsertItem *self, ITEMIDLIST* pidl) InsertItem;
			}
		}
		[CRepr]
		public struct IFolderBandPriv : IUnknown
		{
			public const new Guid IID = .(0x47c01f95, 0xe185, 0x412c, 0xb5, 0xc5, 0x4f, 0x27, 0xdf, 0x96, 0x5a, 0xea);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCascade(BOOL fCascade) mut
			{
				return VT.SetCascade(&this, fCascade);
			}
			public HRESULT SetAccelerators(BOOL fAccelerators) mut
			{
				return VT.SetAccelerators(&this, fAccelerators);
			}
			public HRESULT SetNoIcons(BOOL fNoIcons) mut
			{
				return VT.SetNoIcons(&this, fNoIcons);
			}
			public HRESULT SetNoText(BOOL fNoText) mut
			{
				return VT.SetNoText(&this, fNoText);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFolderBandPriv *self, BOOL fCascade) SetCascade;
				public new function HRESULT(IFolderBandPriv *self, BOOL fAccelerators) SetAccelerators;
				public new function HRESULT(IFolderBandPriv *self, BOOL fNoIcons) SetNoIcons;
				public new function HRESULT(IFolderBandPriv *self, BOOL fNoText) SetNoText;
			}
		}
		[CRepr]
		public struct IImageRecompress : IUnknown
		{
			public const new Guid IID = .(0x505f1513, 0x6b3e, 0x4892, 0xa2, 0x72, 0x59, 0xf8, 0x88, 0x9a, 0x4d, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RecompressImage(IShellItem* psi, int32 cx, int32 cy, int32 iQuality, IStorage* pstg, IStream** ppstrmOut) mut
			{
				return VT.RecompressImage(&this, psi, cx, cy, iQuality, pstg, ppstrmOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IImageRecompress *self, IShellItem* psi, int32 cx, int32 cy, int32 iQuality, IStorage* pstg, IStream** ppstrmOut) RecompressImage;
			}
		}
		[CRepr]
		public struct IFileDialogControlEvents : IUnknown
		{
			public const new Guid IID = .(0x36116642, 0xd713, 0x4b97, 0x9b, 0x83, 0x74, 0x84, 0xa9, 0xd0, 0x04, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnItemSelected(IFileDialogCustomize* pfdc, uint32 dwIDCtl, uint32 dwIDItem) mut
			{
				return VT.OnItemSelected(&this, pfdc, dwIDCtl, dwIDItem);
			}
			public HRESULT OnButtonClicked(IFileDialogCustomize* pfdc, uint32 dwIDCtl) mut
			{
				return VT.OnButtonClicked(&this, pfdc, dwIDCtl);
			}
			public HRESULT OnCheckButtonToggled(IFileDialogCustomize* pfdc, uint32 dwIDCtl, BOOL bChecked) mut
			{
				return VT.OnCheckButtonToggled(&this, pfdc, dwIDCtl, bChecked);
			}
			public HRESULT OnControlActivating(IFileDialogCustomize* pfdc, uint32 dwIDCtl) mut
			{
				return VT.OnControlActivating(&this, pfdc, dwIDCtl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IFileDialogControlEvents *self, IFileDialogCustomize* pfdc, uint32 dwIDCtl, uint32 dwIDItem) OnItemSelected;
				public new function HRESULT(IFileDialogControlEvents *self, IFileDialogCustomize* pfdc, uint32 dwIDCtl) OnButtonClicked;
				public new function HRESULT(IFileDialogControlEvents *self, IFileDialogCustomize* pfdc, uint32 dwIDCtl, BOOL bChecked) OnCheckButtonToggled;
				public new function HRESULT(IFileDialogControlEvents *self, IFileDialogCustomize* pfdc, uint32 dwIDCtl) OnControlActivating;
			}
		}
		[CRepr]
		public struct IFileDialog2 : IFileDialog
		{
			public const new Guid IID = .(0x61744fc7, 0x85b5, 0x4791, 0xa9, 0xb0, 0x27, 0x22, 0x76, 0x30, 0x9b, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetCancelButtonLabel(PWSTR pszLabel) mut
			{
				return VT.SetCancelButtonLabel(&this, pszLabel);
			}
			public HRESULT SetNavigationRoot(IShellItem* psi) mut
			{
				return VT.SetNavigationRoot(&this, psi);
			}
			[CRepr]
			public struct VTable : IFileDialog.VTable
			{
				public new function HRESULT(IFileDialog2 *self, PWSTR pszLabel) SetCancelButtonLabel;
				public new function HRESULT(IFileDialog2 *self, IShellItem* psi) SetNavigationRoot;
			}
		}
		[CRepr]
		public struct IApplicationAssociationRegistrationUI : IUnknown
		{
			public const new Guid IID = .(0x1f76a169, 0xf994, 0x40ac, 0x8f, 0xc8, 0x09, 0x59, 0xe8, 0x87, 0x47, 0x10);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LaunchAdvancedAssociationUI(PWSTR pszAppRegistryName) mut
			{
				return VT.LaunchAdvancedAssociationUI(&this, pszAppRegistryName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IApplicationAssociationRegistrationUI *self, PWSTR pszAppRegistryName) LaunchAdvancedAssociationUI;
			}
		}
		[CRepr]
		public struct IShellRunDll : IUnknown
		{
			public const new Guid IID = .(0xfce4bde0, 0x4b68, 0x4b80, 0x8e, 0x9c, 0x74, 0x26, 0x31, 0x5a, 0x73, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Run(PWSTR pszArgs) mut
			{
				return VT.Run(&this, pszArgs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellRunDll *self, PWSTR pszArgs) Run;
			}
		}
		[CRepr]
		public struct IPreviousVersionsInfo : IUnknown
		{
			public const new Guid IID = .(0x76e54780, 0xad74, 0x48e3, 0xa6, 0x95, 0x3b, 0xa9, 0xa0, 0xaf, 0xf1, 0x0d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AreSnapshotsAvailable(PWSTR pszPath, BOOL fOkToBeSlow, BOOL* pfAvailable) mut
			{
				return VT.AreSnapshotsAvailable(&this, pszPath, fOkToBeSlow, pfAvailable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IPreviousVersionsInfo *self, PWSTR pszPath, BOOL fOkToBeSlow, BOOL* pfAvailable) AreSnapshotsAvailable;
			}
		}
		[CRepr]
		public struct IUseToBrowseItem : IRelatedItem
		{
			public const new Guid IID = .(0x05edda5c, 0x98a3, 0x4717, 0x8a, 0xdb, 0xc5, 0xe7, 0xda, 0x99, 0x1e, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IRelatedItem.VTable
			{
			}
		}
		[CRepr]
		public struct INameSpaceTreeControl2 : INameSpaceTreeControl
		{
			public const new Guid IID = .(0x7cc7aed8, 0x290e, 0x49bc, 0x89, 0x45, 0xc1, 0x40, 0x1c, 0xc9, 0x30, 0x6c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetControlStyle(uint32 nstcsMask, uint32 nstcsStyle) mut
			{
				return VT.SetControlStyle(&this, nstcsMask, nstcsStyle);
			}
			public HRESULT GetControlStyle(uint32 nstcsMask, uint32* pnstcsStyle) mut
			{
				return VT.GetControlStyle(&this, nstcsMask, pnstcsStyle);
			}
			public HRESULT SetControlStyle2(NSTCSTYLE2 nstcsMask, NSTCSTYLE2 nstcsStyle) mut
			{
				return VT.SetControlStyle2(&this, nstcsMask, nstcsStyle);
			}
			public HRESULT GetControlStyle2(NSTCSTYLE2 nstcsMask, NSTCSTYLE2* pnstcsStyle) mut
			{
				return VT.GetControlStyle2(&this, nstcsMask, pnstcsStyle);
			}
			[CRepr]
			public struct VTable : INameSpaceTreeControl.VTable
			{
				public new function HRESULT(INameSpaceTreeControl2 *self, uint32 nstcsMask, uint32 nstcsStyle) SetControlStyle;
				public new function HRESULT(INameSpaceTreeControl2 *self, uint32 nstcsMask, uint32* pnstcsStyle) GetControlStyle;
				public new function HRESULT(INameSpaceTreeControl2 *self, NSTCSTYLE2 nstcsMask, NSTCSTYLE2 nstcsStyle) SetControlStyle2;
				public new function HRESULT(INameSpaceTreeControl2 *self, NSTCSTYLE2 nstcsMask, NSTCSTYLE2* pnstcsStyle) GetControlStyle2;
			}
		}
		[CRepr]
		public struct INameSpaceTreeControlEvents : IUnknown
		{
			public const new Guid IID = .(0x93d77985, 0xb3d8, 0x4484, 0x83, 0x18, 0x67, 0x2c, 0xdd, 0xa0, 0x02, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnItemClick(IShellItem* psi, uint32 nstceHitTest, uint32 nstceClickType) mut
			{
				return VT.OnItemClick(&this, psi, nstceHitTest, nstceClickType);
			}
			public HRESULT OnPropertyItemCommit(IShellItem* psi) mut
			{
				return VT.OnPropertyItemCommit(&this, psi);
			}
			public HRESULT OnItemStateChanging(IShellItem* psi, uint32 nstcisMask, uint32 nstcisState) mut
			{
				return VT.OnItemStateChanging(&this, psi, nstcisMask, nstcisState);
			}
			public HRESULT OnItemStateChanged(IShellItem* psi, uint32 nstcisMask, uint32 nstcisState) mut
			{
				return VT.OnItemStateChanged(&this, psi, nstcisMask, nstcisState);
			}
			public HRESULT OnSelectionChanged(IShellItemArray* psiaSelection) mut
			{
				return VT.OnSelectionChanged(&this, psiaSelection);
			}
			public HRESULT OnKeyboardInput(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.OnKeyboardInput(&this, uMsg, wParam, lParam);
			}
			public HRESULT OnBeforeExpand(IShellItem* psi) mut
			{
				return VT.OnBeforeExpand(&this, psi);
			}
			public HRESULT OnAfterExpand(IShellItem* psi) mut
			{
				return VT.OnAfterExpand(&this, psi);
			}
			public HRESULT OnBeginLabelEdit(IShellItem* psi) mut
			{
				return VT.OnBeginLabelEdit(&this, psi);
			}
			public HRESULT OnEndLabelEdit(IShellItem* psi) mut
			{
				return VT.OnEndLabelEdit(&this, psi);
			}
			public HRESULT OnGetToolTip(IShellItem* psi, char16* pszTip, int32 cchTip) mut
			{
				return VT.OnGetToolTip(&this, psi, pszTip, cchTip);
			}
			public HRESULT OnBeforeItemDelete(IShellItem* psi) mut
			{
				return VT.OnBeforeItemDelete(&this, psi);
			}
			public HRESULT OnItemAdded(IShellItem* psi, BOOL fIsRoot) mut
			{
				return VT.OnItemAdded(&this, psi, fIsRoot);
			}
			public HRESULT OnItemDeleted(IShellItem* psi, BOOL fIsRoot) mut
			{
				return VT.OnItemDeleted(&this, psi, fIsRoot);
			}
			public HRESULT OnBeforeContextMenu(IShellItem* psi, Guid* riid, void** ppv) mut
			{
				return VT.OnBeforeContextMenu(&this, psi, riid, ppv);
			}
			public HRESULT OnAfterContextMenu(IShellItem* psi, IContextMenu* pcmIn, Guid* riid, void** ppv) mut
			{
				return VT.OnAfterContextMenu(&this, psi, pcmIn, riid, ppv);
			}
			public HRESULT OnBeforeStateImageChange(IShellItem* psi) mut
			{
				return VT.OnBeforeStateImageChange(&this, psi);
			}
			public HRESULT OnGetDefaultIconIndex(IShellItem* psi, int32* piDefaultIcon, int32* piOpenIcon) mut
			{
				return VT.OnGetDefaultIconIndex(&this, psi, piDefaultIcon, piOpenIcon);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, uint32 nstceHitTest, uint32 nstceClickType) OnItemClick;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnPropertyItemCommit;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, uint32 nstcisMask, uint32 nstcisState) OnItemStateChanging;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, uint32 nstcisMask, uint32 nstcisState) OnItemStateChanged;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItemArray* psiaSelection) OnSelectionChanged;
				public new function HRESULT(INameSpaceTreeControlEvents *self, uint32 uMsg, WPARAM wParam, LPARAM lParam) OnKeyboardInput;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnBeforeExpand;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnAfterExpand;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnBeginLabelEdit;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnEndLabelEdit;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, char16* pszTip, int32 cchTip) OnGetToolTip;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnBeforeItemDelete;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, BOOL fIsRoot) OnItemAdded;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, BOOL fIsRoot) OnItemDeleted;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, Guid* riid, void** ppv) OnBeforeContextMenu;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, IContextMenu* pcmIn, Guid* riid, void** ppv) OnAfterContextMenu;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi) OnBeforeStateImageChange;
				public new function HRESULT(INameSpaceTreeControlEvents *self, IShellItem* psi, int32* piDefaultIcon, int32* piOpenIcon) OnGetDefaultIconIndex;
			}
		}
		[CRepr]
		public struct INameSpaceTreeControlDropHandler : IUnknown
		{
			public const new Guid IID = .(0xf9c665d6, 0xc2f2, 0x4c19, 0xbf, 0x33, 0x83, 0x22, 0xd7, 0x35, 0x2f, 0x51);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnDragEnter(IShellItem* psiOver, IShellItemArray* psiaData, BOOL fOutsideSource, uint32 grfKeyState, uint32* pdwEffect) mut
			{
				return VT.OnDragEnter(&this, psiOver, psiaData, fOutsideSource, grfKeyState, pdwEffect);
			}
			public HRESULT OnDragOver(IShellItem* psiOver, IShellItemArray* psiaData, uint32 grfKeyState, uint32* pdwEffect) mut
			{
				return VT.OnDragOver(&this, psiOver, psiaData, grfKeyState, pdwEffect);
			}
			public HRESULT OnDragPosition(IShellItem* psiOver, IShellItemArray* psiaData, int32 iNewPosition, int32 iOldPosition) mut
			{
				return VT.OnDragPosition(&this, psiOver, psiaData, iNewPosition, iOldPosition);
			}
			public HRESULT OnDrop(IShellItem* psiOver, IShellItemArray* psiaData, int32 iPosition, uint32 grfKeyState, uint32* pdwEffect) mut
			{
				return VT.OnDrop(&this, psiOver, psiaData, iPosition, grfKeyState, pdwEffect);
			}
			public HRESULT OnDropPosition(IShellItem* psiOver, IShellItemArray* psiaData, int32 iNewPosition, int32 iOldPosition) mut
			{
				return VT.OnDropPosition(&this, psiOver, psiaData, iNewPosition, iOldPosition);
			}
			public HRESULT OnDragLeave(IShellItem* psiOver) mut
			{
				return VT.OnDragLeave(&this, psiOver);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver, IShellItemArray* psiaData, BOOL fOutsideSource, uint32 grfKeyState, uint32* pdwEffect) OnDragEnter;
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver, IShellItemArray* psiaData, uint32 grfKeyState, uint32* pdwEffect) OnDragOver;
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver, IShellItemArray* psiaData, int32 iNewPosition, int32 iOldPosition) OnDragPosition;
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver, IShellItemArray* psiaData, int32 iPosition, uint32 grfKeyState, uint32* pdwEffect) OnDrop;
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver, IShellItemArray* psiaData, int32 iNewPosition, int32 iOldPosition) OnDropPosition;
				public new function HRESULT(INameSpaceTreeControlDropHandler *self, IShellItem* psiOver) OnDragLeave;
			}
		}
		[CRepr]
		public struct INameSpaceTreeAccessible : IUnknown
		{
			public const new Guid IID = .(0x71f312de, 0x43ed, 0x4190, 0x84, 0x77, 0xe9, 0x53, 0x6b, 0x82, 0x35, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnGetDefaultAccessibilityAction(IShellItem* psi, BSTR* pbstrDefaultAction) mut
			{
				return VT.OnGetDefaultAccessibilityAction(&this, psi, pbstrDefaultAction);
			}
			public HRESULT OnDoDefaultAccessibilityAction(IShellItem* psi) mut
			{
				return VT.OnDoDefaultAccessibilityAction(&this, psi);
			}
			public HRESULT OnGetAccessibilityRole(IShellItem* psi, VARIANT* pvarRole) mut
			{
				return VT.OnGetAccessibilityRole(&this, psi, pvarRole);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeAccessible *self, IShellItem* psi, BSTR* pbstrDefaultAction) OnGetDefaultAccessibilityAction;
				public new function HRESULT(INameSpaceTreeAccessible *self, IShellItem* psi) OnDoDefaultAccessibilityAction;
				public new function HRESULT(INameSpaceTreeAccessible *self, IShellItem* psi, VARIANT* pvarRole) OnGetAccessibilityRole;
			}
		}
		[CRepr]
		public struct INameSpaceTreeControlCustomDraw : IUnknown
		{
			public const new Guid IID = .(0x2d3ba758, 0x33ee, 0x42d5, 0xbb, 0x7b, 0x5f, 0x34, 0x31, 0xd8, 0x6c, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PrePaint(HDC hdc, RECT* prc, LRESULT* plres) mut
			{
				return VT.PrePaint(&this, hdc, prc, plres);
			}
			public HRESULT PostPaint(HDC hdc, RECT* prc) mut
			{
				return VT.PostPaint(&this, hdc, prc);
			}
			public HRESULT ItemPrePaint(HDC hdc, RECT* prc, NSTCCUSTOMDRAW* pnstccdItem, uint32* pclrText, uint32* pclrTextBk, LRESULT* plres) mut
			{
				return VT.ItemPrePaint(&this, hdc, prc, pnstccdItem, pclrText, pclrTextBk, plres);
			}
			public HRESULT ItemPostPaint(HDC hdc, RECT* prc, NSTCCUSTOMDRAW* pnstccdItem) mut
			{
				return VT.ItemPostPaint(&this, hdc, prc, pnstccdItem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INameSpaceTreeControlCustomDraw *self, HDC hdc, RECT* prc, LRESULT* plres) PrePaint;
				public new function HRESULT(INameSpaceTreeControlCustomDraw *self, HDC hdc, RECT* prc) PostPaint;
				public new function HRESULT(INameSpaceTreeControlCustomDraw *self, HDC hdc, RECT* prc, NSTCCUSTOMDRAW* pnstccdItem, uint32* pclrText, uint32* pclrTextBk, LRESULT* plres) ItemPrePaint;
				public new function HRESULT(INameSpaceTreeControlCustomDraw *self, HDC hdc, RECT* prc, NSTCCUSTOMDRAW* pnstccdItem) ItemPostPaint;
			}
		}
		[CRepr]
		public struct ITrayDeskBand : IUnknown
		{
			public const new Guid IID = .(0x6d67e846, 0x5b9c, 0x4db8, 0x9c, 0xbc, 0xdd, 0xe1, 0x2f, 0x42, 0x54, 0xf1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowDeskBand(Guid* clsid) mut
			{
				return VT.ShowDeskBand(&this, clsid);
			}
			public HRESULT HideDeskBand(Guid* clsid) mut
			{
				return VT.HideDeskBand(&this, clsid);
			}
			public HRESULT IsDeskBandShown(Guid* clsid) mut
			{
				return VT.IsDeskBandShown(&this, clsid);
			}
			public HRESULT DeskBandRegistrationChanged() mut
			{
				return VT.DeskBandRegistrationChanged(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITrayDeskBand *self, Guid* clsid) ShowDeskBand;
				public new function HRESULT(ITrayDeskBand *self, Guid* clsid) HideDeskBand;
				public new function HRESULT(ITrayDeskBand *self, Guid* clsid) IsDeskBandShown;
				public new function HRESULT(ITrayDeskBand *self) DeskBandRegistrationChanged;
			}
		}
		[CRepr]
		public struct IBandHost : IUnknown
		{
			public const new Guid IID = .(0xb9075c7c, 0xd48e, 0x403f, 0xab, 0x99, 0xd6, 0xc7, 0x7a, 0x10, 0x84, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateBand(Guid* rclsidBand, BOOL fAvailable, BOOL fVisible, Guid* riid, void** ppv) mut
			{
				return VT.CreateBand(&this, rclsidBand, fAvailable, fVisible, riid, ppv);
			}
			public HRESULT SetBandAvailability(Guid* rclsidBand, BOOL fAvailable) mut
			{
				return VT.SetBandAvailability(&this, rclsidBand, fAvailable);
			}
			public HRESULT DestroyBand(Guid* rclsidBand) mut
			{
				return VT.DestroyBand(&this, rclsidBand);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBandHost *self, Guid* rclsidBand, BOOL fAvailable, BOOL fVisible, Guid* riid, void** ppv) CreateBand;
				public new function HRESULT(IBandHost *self, Guid* rclsidBand, BOOL fAvailable) SetBandAvailability;
				public new function HRESULT(IBandHost *self, Guid* rclsidBand) DestroyBand;
			}
		}
		[CRepr]
		public struct IComputerInfoChangeNotify : IUnknown
		{
			public const new Guid IID = .(0x0df60d92, 0x6818, 0x46d6, 0xb3, 0x58, 0xd6, 0x61, 0x70, 0xdd, 0xe4, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComputerInfoChanged() mut
			{
				return VT.ComputerInfoChanged(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IComputerInfoChangeNotify *self) ComputerInfoChanged;
			}
		}
		[CRepr]
		public struct IDesktopGadget : IUnknown
		{
			public const new Guid IID = .(0xc1646bc4, 0xf298, 0x4f91, 0xa2, 0x04, 0xeb, 0x2d, 0xd1, 0x70, 0x9d, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RunGadget(PWSTR gadgetPath) mut
			{
				return VT.RunGadget(&this, gadgetPath);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDesktopGadget *self, PWSTR gadgetPath) RunGadget;
			}
		}
		[CRepr]
		public struct IAccessibilityDockingServiceCallback : IUnknown
		{
			public const new Guid IID = .(0x157733fd, 0xa592, 0x42e5, 0xb5, 0x94, 0x24, 0x84, 0x68, 0xc5, 0xa8, 0x1b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Undocked(UNDOCK_REASON undockReason) mut
			{
				return VT.Undocked(&this, undockReason);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccessibilityDockingServiceCallback *self, UNDOCK_REASON undockReason) Undocked;
			}
		}
		[CRepr]
		public struct IAccessibilityDockingService : IUnknown
		{
			public const new Guid IID = .(0x8849dc22, 0xcedf, 0x4c95, 0x99, 0x8d, 0x05, 0x14, 0x19, 0xdd, 0x3f, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAvailableSize(HMONITOR hMonitor, uint32* pcxFixed, uint32* pcyMax) mut
			{
				return VT.GetAvailableSize(&this, hMonitor, pcxFixed, pcyMax);
			}
			public HRESULT DockWindow(HWND hwnd, HMONITOR hMonitor, uint32 cyRequested, IAccessibilityDockingServiceCallback* pCallback) mut
			{
				return VT.DockWindow(&this, hwnd, hMonitor, cyRequested, pCallback);
			}
			public HRESULT UndockWindow(HWND hwnd) mut
			{
				return VT.UndockWindow(&this, hwnd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAccessibilityDockingService *self, HMONITOR hMonitor, uint32* pcxFixed, uint32* pcyMax) GetAvailableSize;
				public new function HRESULT(IAccessibilityDockingService *self, HWND hwnd, HMONITOR hMonitor, uint32 cyRequested, IAccessibilityDockingServiceCallback* pCallback) DockWindow;
				public new function HRESULT(IAccessibilityDockingService *self, HWND hwnd) UndockWindow;
			}
		}
		[CRepr]
		public struct IStorageProviderBanners : IUnknown
		{
			public const new Guid IID = .(0x5efb46d7, 0x47c0, 0x4b68, 0xac, 0xda, 0xde, 0xd4, 0x7c, 0x90, 0xec, 0x91);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBanner(PWSTR providerIdentity, PWSTR subscriptionId, PWSTR contentId) mut
			{
				return VT.SetBanner(&this, providerIdentity, subscriptionId, contentId);
			}
			public HRESULT ClearBanner(PWSTR providerIdentity, PWSTR subscriptionId) mut
			{
				return VT.ClearBanner(&this, providerIdentity, subscriptionId);
			}
			public HRESULT ClearAllBanners(PWSTR providerIdentity) mut
			{
				return VT.ClearAllBanners(&this, providerIdentity);
			}
			public HRESULT GetBanner(PWSTR providerIdentity, PWSTR subscriptionId, PWSTR* contentId) mut
			{
				return VT.GetBanner(&this, providerIdentity, subscriptionId, contentId);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStorageProviderBanners *self, PWSTR providerIdentity, PWSTR subscriptionId, PWSTR contentId) SetBanner;
				public new function HRESULT(IStorageProviderBanners *self, PWSTR providerIdentity, PWSTR subscriptionId) ClearBanner;
				public new function HRESULT(IStorageProviderBanners *self, PWSTR providerIdentity) ClearAllBanners;
				public new function HRESULT(IStorageProviderBanners *self, PWSTR providerIdentity, PWSTR subscriptionId, PWSTR* contentId) GetBanner;
			}
		}
		[CRepr]
		public struct IStorageProviderCopyHook : IUnknown
		{
			public const new Guid IID = .(0x7bf992a9, 0xaf7a, 0x4dba, 0xb2, 0xe5, 0x4d, 0x08, 0x0b, 0x1e, 0xcb, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CopyCallback(HWND hwnd, uint32 operation, uint32 flags, PWSTR srcFile, uint32 srcAttribs, PWSTR destFile, uint32 destAttribs, uint32* result) mut
			{
				return VT.CopyCallback(&this, hwnd, operation, flags, srcFile, srcAttribs, destFile, destAttribs, result);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStorageProviderCopyHook *self, HWND hwnd, uint32 operation, uint32 flags, PWSTR srcFile, uint32 srcAttribs, PWSTR destFile, uint32 destAttribs, uint32* result) CopyCallback;
			}
		}
		[CRepr]
		public struct IWebBrowser : IDispatch
		{
			public const new Guid IID = .(0xeab22ac1, 0x30c1, 0x11cf, 0xa7, 0xeb, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GoBack() mut
			{
				return VT.GoBack(&this);
			}
			public HRESULT GoForward() mut
			{
				return VT.GoForward(&this);
			}
			public HRESULT GoHome() mut
			{
				return VT.GoHome(&this);
			}
			public HRESULT GoSearch() mut
			{
				return VT.GoSearch(&this);
			}
			public HRESULT Navigate(BSTR URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) mut
			{
				return VT.Navigate(&this, URL, Flags, TargetFrameName, PostData, Headers);
			}
			public HRESULT Refresh() mut
			{
				return VT.Refresh(&this);
			}
			public HRESULT Refresh2(VARIANT* Level) mut
			{
				return VT.Refresh2(&this, Level);
			}
			public HRESULT Stop() mut
			{
				return VT.Stop(&this);
			}
			public HRESULT get_Application(IDispatch** ppDisp) mut
			{
				return VT.get_Application(&this, ppDisp);
			}
			public HRESULT get_Parent(IDispatch** ppDisp) mut
			{
				return VT.get_Parent(&this, ppDisp);
			}
			public HRESULT get_Container(IDispatch** ppDisp) mut
			{
				return VT.get_Container(&this, ppDisp);
			}
			public HRESULT get_Document(IDispatch** ppDisp) mut
			{
				return VT.get_Document(&this, ppDisp);
			}
			public HRESULT get_TopLevelContainer(int16* pBool) mut
			{
				return VT.get_TopLevelContainer(&this, pBool);
			}
			public HRESULT get_Type(BSTR* Type) mut
			{
				return VT.get_Type(&this, Type);
			}
			public HRESULT get_Left(int32* pl) mut
			{
				return VT.get_Left(&this, pl);
			}
			public HRESULT put_Left(int32 Left) mut
			{
				return VT.put_Left(&this, Left);
			}
			public HRESULT get_Top(int32* pl) mut
			{
				return VT.get_Top(&this, pl);
			}
			public HRESULT put_Top(int32 Top) mut
			{
				return VT.put_Top(&this, Top);
			}
			public HRESULT get_Width(int32* pl) mut
			{
				return VT.get_Width(&this, pl);
			}
			public HRESULT put_Width(int32 Width) mut
			{
				return VT.put_Width(&this, Width);
			}
			public HRESULT get_Height(int32* pl) mut
			{
				return VT.get_Height(&this, pl);
			}
			public HRESULT put_Height(int32 Height) mut
			{
				return VT.put_Height(&this, Height);
			}
			public HRESULT get_LocationName(BSTR* LocationName) mut
			{
				return VT.get_LocationName(&this, LocationName);
			}
			public HRESULT get_LocationURL(BSTR* LocationURL) mut
			{
				return VT.get_LocationURL(&this, LocationURL);
			}
			public HRESULT get_Busy(int16* pBool) mut
			{
				return VT.get_Busy(&this, pBool);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWebBrowser *self) GoBack;
				public new function HRESULT(IWebBrowser *self) GoForward;
				public new function HRESULT(IWebBrowser *self) GoHome;
				public new function HRESULT(IWebBrowser *self) GoSearch;
				public new function HRESULT(IWebBrowser *self, BSTR URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) Navigate;
				public new function HRESULT(IWebBrowser *self) Refresh;
				public new function HRESULT(IWebBrowser *self, VARIANT* Level) Refresh2;
				public new function HRESULT(IWebBrowser *self) Stop;
				public new function HRESULT(IWebBrowser *self, IDispatch** ppDisp) get_Application;
				public new function HRESULT(IWebBrowser *self, IDispatch** ppDisp) get_Parent;
				public new function HRESULT(IWebBrowser *self, IDispatch** ppDisp) get_Container;
				public new function HRESULT(IWebBrowser *self, IDispatch** ppDisp) get_Document;
				public new function HRESULT(IWebBrowser *self, int16* pBool) get_TopLevelContainer;
				public new function HRESULT(IWebBrowser *self, BSTR* Type) get_Type;
				public new function HRESULT(IWebBrowser *self, int32* pl) get_Left;
				public new function HRESULT(IWebBrowser *self, int32 Left) put_Left;
				public new function HRESULT(IWebBrowser *self, int32* pl) get_Top;
				public new function HRESULT(IWebBrowser *self, int32 Top) put_Top;
				public new function HRESULT(IWebBrowser *self, int32* pl) get_Width;
				public new function HRESULT(IWebBrowser *self, int32 Width) put_Width;
				public new function HRESULT(IWebBrowser *self, int32* pl) get_Height;
				public new function HRESULT(IWebBrowser *self, int32 Height) put_Height;
				public new function HRESULT(IWebBrowser *self, BSTR* LocationName) get_LocationName;
				public new function HRESULT(IWebBrowser *self, BSTR* LocationURL) get_LocationURL;
				public new function HRESULT(IWebBrowser *self, int16* pBool) get_Busy;
			}
		}
		[CRepr]
		public struct DWebBrowserEvents : IDispatch
		{
			public const new Guid IID = .(0xeab22ac2, 0x30c1, 0x11cf, 0xa7, 0xeb, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IWebBrowserApp : IWebBrowser
		{
			public const new Guid IID = .(0x0002df05, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Quit() mut
			{
				return VT.Quit(&this);
			}
			public HRESULT ClientToWindow(int32* pcx, int32* pcy) mut
			{
				return VT.ClientToWindow(&this, pcx, pcy);
			}
			public HRESULT PutProperty(BSTR Property, VARIANT vtValue) mut
			{
				return VT.PutProperty(&this, Property, vtValue);
			}
			public HRESULT GetProperty(BSTR Property, VARIANT* pvtValue) mut
			{
				return VT.GetProperty(&this, Property, pvtValue);
			}
			public HRESULT get_Name(BSTR* Name) mut
			{
				return VT.get_Name(&this, Name);
			}
			public HRESULT get_HWND(SHANDLE_PTR* pHWND) mut
			{
				return VT.get_HWND(&this, pHWND);
			}
			public HRESULT get_FullName(BSTR* FullName) mut
			{
				return VT.get_FullName(&this, FullName);
			}
			public HRESULT get_Path(BSTR* Path) mut
			{
				return VT.get_Path(&this, Path);
			}
			public HRESULT get_Visible(int16* pBool) mut
			{
				return VT.get_Visible(&this, pBool);
			}
			public HRESULT put_Visible(int16 Value) mut
			{
				return VT.put_Visible(&this, Value);
			}
			public HRESULT get_StatusBar(int16* pBool) mut
			{
				return VT.get_StatusBar(&this, pBool);
			}
			public HRESULT put_StatusBar(int16 Value) mut
			{
				return VT.put_StatusBar(&this, Value);
			}
			public HRESULT get_StatusText(BSTR* StatusText) mut
			{
				return VT.get_StatusText(&this, StatusText);
			}
			public HRESULT put_StatusText(BSTR StatusText) mut
			{
				return VT.put_StatusText(&this, StatusText);
			}
			public HRESULT get_ToolBar(int32* Value) mut
			{
				return VT.get_ToolBar(&this, Value);
			}
			public HRESULT put_ToolBar(int32 Value) mut
			{
				return VT.put_ToolBar(&this, Value);
			}
			public HRESULT get_MenuBar(int16* Value) mut
			{
				return VT.get_MenuBar(&this, Value);
			}
			public HRESULT put_MenuBar(int16 Value) mut
			{
				return VT.put_MenuBar(&this, Value);
			}
			public HRESULT get_FullScreen(int16* pbFullScreen) mut
			{
				return VT.get_FullScreen(&this, pbFullScreen);
			}
			public HRESULT put_FullScreen(int16 bFullScreen) mut
			{
				return VT.put_FullScreen(&this, bFullScreen);
			}
			[CRepr]
			public struct VTable : IWebBrowser.VTable
			{
				public new function HRESULT(IWebBrowserApp *self) Quit;
				public new function HRESULT(IWebBrowserApp *self, int32* pcx, int32* pcy) ClientToWindow;
				public new function HRESULT(IWebBrowserApp *self, BSTR Property, VARIANT vtValue) PutProperty;
				public new function HRESULT(IWebBrowserApp *self, BSTR Property, VARIANT* pvtValue) GetProperty;
				public new function HRESULT(IWebBrowserApp *self, BSTR* Name) get_Name;
				public new function HRESULT(IWebBrowserApp *self, SHANDLE_PTR* pHWND) get_HWND;
				public new function HRESULT(IWebBrowserApp *self, BSTR* FullName) get_FullName;
				public new function HRESULT(IWebBrowserApp *self, BSTR* Path) get_Path;
				public new function HRESULT(IWebBrowserApp *self, int16* pBool) get_Visible;
				public new function HRESULT(IWebBrowserApp *self, int16 Value) put_Visible;
				public new function HRESULT(IWebBrowserApp *self, int16* pBool) get_StatusBar;
				public new function HRESULT(IWebBrowserApp *self, int16 Value) put_StatusBar;
				public new function HRESULT(IWebBrowserApp *self, BSTR* StatusText) get_StatusText;
				public new function HRESULT(IWebBrowserApp *self, BSTR StatusText) put_StatusText;
				public new function HRESULT(IWebBrowserApp *self, int32* Value) get_ToolBar;
				public new function HRESULT(IWebBrowserApp *self, int32 Value) put_ToolBar;
				public new function HRESULT(IWebBrowserApp *self, int16* Value) get_MenuBar;
				public new function HRESULT(IWebBrowserApp *self, int16 Value) put_MenuBar;
				public new function HRESULT(IWebBrowserApp *self, int16* pbFullScreen) get_FullScreen;
				public new function HRESULT(IWebBrowserApp *self, int16 bFullScreen) put_FullScreen;
			}
		}
		[CRepr]
		public struct IWebBrowser2 : IWebBrowserApp
		{
			public const new Guid IID = .(0xd30c1661, 0xcdaf, 0x11d0, 0x8a, 0x3e, 0x00, 0xc0, 0x4f, 0xc9, 0xe2, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Navigate2(VARIANT* URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) mut
			{
				return VT.Navigate2(&this, URL, Flags, TargetFrameName, PostData, Headers);
			}
			public HRESULT QueryStatusWB(OLECMDID cmdID, OLECMDF* pcmdf) mut
			{
				return VT.QueryStatusWB(&this, cmdID, pcmdf);
			}
			public HRESULT ExecWB(OLECMDID cmdID, OLECMDEXECOPT cmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) mut
			{
				return VT.ExecWB(&this, cmdID, cmdexecopt, pvaIn, pvaOut);
			}
			public HRESULT ShowBrowserBar(VARIANT* pvaClsid, VARIANT* pvarShow, VARIANT* pvarSize) mut
			{
				return VT.ShowBrowserBar(&this, pvaClsid, pvarShow, pvarSize);
			}
			public HRESULT get_ReadyState(READYSTATE* plReadyState) mut
			{
				return VT.get_ReadyState(&this, plReadyState);
			}
			public HRESULT get_Offline(int16* pbOffline) mut
			{
				return VT.get_Offline(&this, pbOffline);
			}
			public HRESULT put_Offline(int16 bOffline) mut
			{
				return VT.put_Offline(&this, bOffline);
			}
			public HRESULT get_Silent(int16* pbSilent) mut
			{
				return VT.get_Silent(&this, pbSilent);
			}
			public HRESULT put_Silent(int16 bSilent) mut
			{
				return VT.put_Silent(&this, bSilent);
			}
			public HRESULT get_RegisterAsBrowser(int16* pbRegister) mut
			{
				return VT.get_RegisterAsBrowser(&this, pbRegister);
			}
			public HRESULT put_RegisterAsBrowser(int16 bRegister) mut
			{
				return VT.put_RegisterAsBrowser(&this, bRegister);
			}
			public HRESULT get_RegisterAsDropTarget(int16* pbRegister) mut
			{
				return VT.get_RegisterAsDropTarget(&this, pbRegister);
			}
			public HRESULT put_RegisterAsDropTarget(int16 bRegister) mut
			{
				return VT.put_RegisterAsDropTarget(&this, bRegister);
			}
			public HRESULT get_TheaterMode(int16* pbRegister) mut
			{
				return VT.get_TheaterMode(&this, pbRegister);
			}
			public HRESULT put_TheaterMode(int16 bRegister) mut
			{
				return VT.put_TheaterMode(&this, bRegister);
			}
			public HRESULT get_AddressBar(int16* Value) mut
			{
				return VT.get_AddressBar(&this, Value);
			}
			public HRESULT put_AddressBar(int16 Value) mut
			{
				return VT.put_AddressBar(&this, Value);
			}
			public HRESULT get_Resizable(int16* Value) mut
			{
				return VT.get_Resizable(&this, Value);
			}
			public HRESULT put_Resizable(int16 Value) mut
			{
				return VT.put_Resizable(&this, Value);
			}
			[CRepr]
			public struct VTable : IWebBrowserApp.VTable
			{
				public new function HRESULT(IWebBrowser2 *self, VARIANT* URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) Navigate2;
				public new function HRESULT(IWebBrowser2 *self, OLECMDID cmdID, OLECMDF* pcmdf) QueryStatusWB;
				public new function HRESULT(IWebBrowser2 *self, OLECMDID cmdID, OLECMDEXECOPT cmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) ExecWB;
				public new function HRESULT(IWebBrowser2 *self, VARIANT* pvaClsid, VARIANT* pvarShow, VARIANT* pvarSize) ShowBrowserBar;
				public new function HRESULT(IWebBrowser2 *self, READYSTATE* plReadyState) get_ReadyState;
				public new function HRESULT(IWebBrowser2 *self, int16* pbOffline) get_Offline;
				public new function HRESULT(IWebBrowser2 *self, int16 bOffline) put_Offline;
				public new function HRESULT(IWebBrowser2 *self, int16* pbSilent) get_Silent;
				public new function HRESULT(IWebBrowser2 *self, int16 bSilent) put_Silent;
				public new function HRESULT(IWebBrowser2 *self, int16* pbRegister) get_RegisterAsBrowser;
				public new function HRESULT(IWebBrowser2 *self, int16 bRegister) put_RegisterAsBrowser;
				public new function HRESULT(IWebBrowser2 *self, int16* pbRegister) get_RegisterAsDropTarget;
				public new function HRESULT(IWebBrowser2 *self, int16 bRegister) put_RegisterAsDropTarget;
				public new function HRESULT(IWebBrowser2 *self, int16* pbRegister) get_TheaterMode;
				public new function HRESULT(IWebBrowser2 *self, int16 bRegister) put_TheaterMode;
				public new function HRESULT(IWebBrowser2 *self, int16* Value) get_AddressBar;
				public new function HRESULT(IWebBrowser2 *self, int16 Value) put_AddressBar;
				public new function HRESULT(IWebBrowser2 *self, int16* Value) get_Resizable;
				public new function HRESULT(IWebBrowser2 *self, int16 Value) put_Resizable;
			}
		}
		[CRepr]
		public struct DWebBrowserEvents2 : IDispatch
		{
			public const new Guid IID = .(0x34a715a0, 0x6587, 0x11d0, 0x92, 0x4a, 0x00, 0x20, 0xaf, 0xc7, 0xac, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct DShellWindowsEvents : IDispatch
		{
			public const new Guid IID = .(0xfe4106e0, 0x399a, 0x11d0, 0xa4, 0x8c, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IShellWindows : IDispatch
		{
			public const new Guid IID = .(0x85cb6900, 0x4d95, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* Count) mut
			{
				return VT.get_Count(&this, Count);
			}
			public HRESULT Item(VARIANT index, IDispatch** Folder) mut
			{
				return VT.Item(&this, index, Folder);
			}
			public HRESULT _NewEnum(IUnknown** ppunk) mut
			{
				return VT._NewEnum(&this, ppunk);
			}
			public HRESULT Register(IDispatch* pid, int32 hwnd, int32 swClass, int32* plCookie) mut
			{
				return VT.Register(&this, pid, hwnd, swClass, plCookie);
			}
			public HRESULT RegisterPending(int32 lThreadId, VARIANT* pvarloc, VARIANT* pvarlocRoot, int32 swClass, int32* plCookie) mut
			{
				return VT.RegisterPending(&this, lThreadId, pvarloc, pvarlocRoot, swClass, plCookie);
			}
			public HRESULT Revoke(int32 lCookie) mut
			{
				return VT.Revoke(&this, lCookie);
			}
			public HRESULT OnNavigate(int32 lCookie, VARIANT* pvarLoc) mut
			{
				return VT.OnNavigate(&this, lCookie, pvarLoc);
			}
			public HRESULT OnActivated(int32 lCookie, int16 fActive) mut
			{
				return VT.OnActivated(&this, lCookie, fActive);
			}
			public HRESULT FindWindowSW(VARIANT* pvarLoc, VARIANT* pvarLocRoot, int32 swClass, int32* phwnd, int32 swfwOptions, IDispatch** ppdispOut) mut
			{
				return VT.FindWindowSW(&this, pvarLoc, pvarLocRoot, swClass, phwnd, swfwOptions, ppdispOut);
			}
			public HRESULT OnCreated(int32 lCookie, IUnknown* punk) mut
			{
				return VT.OnCreated(&this, lCookie, punk);
			}
			public HRESULT ProcessAttachDetach(int16 fAttach) mut
			{
				return VT.ProcessAttachDetach(&this, fAttach);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellWindows *self, int32* Count) get_Count;
				public new function HRESULT(IShellWindows *self, VARIANT index, IDispatch** Folder) Item;
				public new function HRESULT(IShellWindows *self, IUnknown** ppunk) _NewEnum;
				public new function HRESULT(IShellWindows *self, IDispatch* pid, int32 hwnd, int32 swClass, int32* plCookie) Register;
				public new function HRESULT(IShellWindows *self, int32 lThreadId, VARIANT* pvarloc, VARIANT* pvarlocRoot, int32 swClass, int32* plCookie) RegisterPending;
				public new function HRESULT(IShellWindows *self, int32 lCookie) Revoke;
				public new function HRESULT(IShellWindows *self, int32 lCookie, VARIANT* pvarLoc) OnNavigate;
				public new function HRESULT(IShellWindows *self, int32 lCookie, int16 fActive) OnActivated;
				public new function HRESULT(IShellWindows *self, VARIANT* pvarLoc, VARIANT* pvarLocRoot, int32 swClass, int32* phwnd, int32 swfwOptions, IDispatch** ppdispOut) FindWindowSW;
				public new function HRESULT(IShellWindows *self, int32 lCookie, IUnknown* punk) OnCreated;
				public new function HRESULT(IShellWindows *self, int16 fAttach) ProcessAttachDetach;
			}
		}
		[CRepr]
		public struct IShellUIHelper : IDispatch
		{
			public const new Guid IID = .(0x729fe2f8, 0x1ea8, 0x11d1, 0x8f, 0x85, 0x00, 0xc0, 0x4f, 0xc2, 0xfb, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResetFirstBootMode() mut
			{
				return VT.ResetFirstBootMode(&this);
			}
			public HRESULT ResetSafeMode() mut
			{
				return VT.ResetSafeMode(&this);
			}
			public HRESULT RefreshOfflineDesktop() mut
			{
				return VT.RefreshOfflineDesktop(&this);
			}
			public HRESULT AddFavorite(BSTR URL, VARIANT* Title) mut
			{
				return VT.AddFavorite(&this, URL, Title);
			}
			public HRESULT AddChannel(BSTR URL) mut
			{
				return VT.AddChannel(&this, URL);
			}
			public HRESULT AddDesktopComponent(BSTR URL, BSTR Type, VARIANT* Left, VARIANT* Top, VARIANT* Width, VARIANT* Height) mut
			{
				return VT.AddDesktopComponent(&this, URL, Type, Left, Top, Width, Height);
			}
			public HRESULT IsSubscribed(BSTR URL, int16* pBool) mut
			{
				return VT.IsSubscribed(&this, URL, pBool);
			}
			public HRESULT NavigateAndFind(BSTR URL, BSTR strQuery, VARIANT* varTargetFrame) mut
			{
				return VT.NavigateAndFind(&this, URL, strQuery, varTargetFrame);
			}
			public HRESULT ImportExportFavorites(int16 fImport, BSTR strImpExpPath) mut
			{
				return VT.ImportExportFavorites(&this, fImport, strImpExpPath);
			}
			public HRESULT AutoCompleteSaveForm(VARIANT* Form) mut
			{
				return VT.AutoCompleteSaveForm(&this, Form);
			}
			public HRESULT AutoScan(BSTR strSearch, BSTR strFailureUrl, VARIANT* pvarTargetFrame) mut
			{
				return VT.AutoScan(&this, strSearch, strFailureUrl, pvarTargetFrame);
			}
			public HRESULT AutoCompleteAttach(VARIANT* Reserved) mut
			{
				return VT.AutoCompleteAttach(&this, Reserved);
			}
			public HRESULT ShowBrowserUI(BSTR bstrName, VARIANT* pvarIn, VARIANT* pvarOut) mut
			{
				return VT.ShowBrowserUI(&this, bstrName, pvarIn, pvarOut);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellUIHelper *self) ResetFirstBootMode;
				public new function HRESULT(IShellUIHelper *self) ResetSafeMode;
				public new function HRESULT(IShellUIHelper *self) RefreshOfflineDesktop;
				public new function HRESULT(IShellUIHelper *self, BSTR URL, VARIANT* Title) AddFavorite;
				public new function HRESULT(IShellUIHelper *self, BSTR URL) AddChannel;
				public new function HRESULT(IShellUIHelper *self, BSTR URL, BSTR Type, VARIANT* Left, VARIANT* Top, VARIANT* Width, VARIANT* Height) AddDesktopComponent;
				public new function HRESULT(IShellUIHelper *self, BSTR URL, int16* pBool) IsSubscribed;
				public new function HRESULT(IShellUIHelper *self, BSTR URL, BSTR strQuery, VARIANT* varTargetFrame) NavigateAndFind;
				public new function HRESULT(IShellUIHelper *self, int16 fImport, BSTR strImpExpPath) ImportExportFavorites;
				public new function HRESULT(IShellUIHelper *self, VARIANT* Form) AutoCompleteSaveForm;
				public new function HRESULT(IShellUIHelper *self, BSTR strSearch, BSTR strFailureUrl, VARIANT* pvarTargetFrame) AutoScan;
				public new function HRESULT(IShellUIHelper *self, VARIANT* Reserved) AutoCompleteAttach;
				public new function HRESULT(IShellUIHelper *self, BSTR bstrName, VARIANT* pvarIn, VARIANT* pvarOut) ShowBrowserUI;
			}
		}
		[CRepr]
		public struct IShellUIHelper2 : IShellUIHelper
		{
			public const new Guid IID = .(0xa7fe6eda, 0x1932, 0x4281, 0xb8, 0x81, 0x87, 0xb3, 0x1b, 0x8b, 0xc5, 0x2c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddSearchProvider(BSTR URL) mut
			{
				return VT.AddSearchProvider(&this, URL);
			}
			public HRESULT RunOnceShown() mut
			{
				return VT.RunOnceShown(&this);
			}
			public HRESULT SkipRunOnce() mut
			{
				return VT.SkipRunOnce(&this);
			}
			public HRESULT CustomizeSettings(int16 fSQM, int16 fPhishing, BSTR bstrLocale) mut
			{
				return VT.CustomizeSettings(&this, fSQM, fPhishing, bstrLocale);
			}
			public HRESULT SqmEnabled(int16* pfEnabled) mut
			{
				return VT.SqmEnabled(&this, pfEnabled);
			}
			public HRESULT PhishingEnabled(int16* pfEnabled) mut
			{
				return VT.PhishingEnabled(&this, pfEnabled);
			}
			public HRESULT BrandImageUri(BSTR* pbstrUri) mut
			{
				return VT.BrandImageUri(&this, pbstrUri);
			}
			public HRESULT SkipTabsWelcome() mut
			{
				return VT.SkipTabsWelcome(&this);
			}
			public HRESULT DiagnoseConnection() mut
			{
				return VT.DiagnoseConnection(&this);
			}
			public HRESULT CustomizeClearType(int16 fSet) mut
			{
				return VT.CustomizeClearType(&this, fSet);
			}
			public HRESULT IsSearchProviderInstalled(BSTR URL, uint32* pdwResult) mut
			{
				return VT.IsSearchProviderInstalled(&this, URL, pdwResult);
			}
			public HRESULT IsSearchMigrated(int16* pfMigrated) mut
			{
				return VT.IsSearchMigrated(&this, pfMigrated);
			}
			public HRESULT DefaultSearchProvider(BSTR* pbstrName) mut
			{
				return VT.DefaultSearchProvider(&this, pbstrName);
			}
			public HRESULT RunOnceRequiredSettingsComplete(int16 fComplete) mut
			{
				return VT.RunOnceRequiredSettingsComplete(&this, fComplete);
			}
			public HRESULT RunOnceHasShown(int16* pfShown) mut
			{
				return VT.RunOnceHasShown(&this, pfShown);
			}
			public HRESULT SearchGuideUrl(BSTR* pbstrUrl) mut
			{
				return VT.SearchGuideUrl(&this, pbstrUrl);
			}
			[CRepr]
			public struct VTable : IShellUIHelper.VTable
			{
				public new function HRESULT(IShellUIHelper2 *self, BSTR URL) AddSearchProvider;
				public new function HRESULT(IShellUIHelper2 *self) RunOnceShown;
				public new function HRESULT(IShellUIHelper2 *self) SkipRunOnce;
				public new function HRESULT(IShellUIHelper2 *self, int16 fSQM, int16 fPhishing, BSTR bstrLocale) CustomizeSettings;
				public new function HRESULT(IShellUIHelper2 *self, int16* pfEnabled) SqmEnabled;
				public new function HRESULT(IShellUIHelper2 *self, int16* pfEnabled) PhishingEnabled;
				public new function HRESULT(IShellUIHelper2 *self, BSTR* pbstrUri) BrandImageUri;
				public new function HRESULT(IShellUIHelper2 *self) SkipTabsWelcome;
				public new function HRESULT(IShellUIHelper2 *self) DiagnoseConnection;
				public new function HRESULT(IShellUIHelper2 *self, int16 fSet) CustomizeClearType;
				public new function HRESULT(IShellUIHelper2 *self, BSTR URL, uint32* pdwResult) IsSearchProviderInstalled;
				public new function HRESULT(IShellUIHelper2 *self, int16* pfMigrated) IsSearchMigrated;
				public new function HRESULT(IShellUIHelper2 *self, BSTR* pbstrName) DefaultSearchProvider;
				public new function HRESULT(IShellUIHelper2 *self, int16 fComplete) RunOnceRequiredSettingsComplete;
				public new function HRESULT(IShellUIHelper2 *self, int16* pfShown) RunOnceHasShown;
				public new function HRESULT(IShellUIHelper2 *self, BSTR* pbstrUrl) SearchGuideUrl;
			}
		}
		[CRepr]
		public struct IShellUIHelper3 : IShellUIHelper2
		{
			public const new Guid IID = .(0x528df2ec, 0xd419, 0x40bc, 0x9b, 0x6d, 0xdc, 0xdb, 0xf9, 0xc1, 0xb2, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddService(BSTR URL) mut
			{
				return VT.AddService(&this, URL);
			}
			public HRESULT IsServiceInstalled(BSTR URL, BSTR Verb, uint32* pdwResult) mut
			{
				return VT.IsServiceInstalled(&this, URL, Verb, pdwResult);
			}
			public HRESULT InPrivateFilteringEnabled(int16* pfEnabled) mut
			{
				return VT.InPrivateFilteringEnabled(&this, pfEnabled);
			}
			public HRESULT AddToFavoritesBar(BSTR URL, BSTR Title, VARIANT* Type) mut
			{
				return VT.AddToFavoritesBar(&this, URL, Title, Type);
			}
			public HRESULT BuildNewTabPage() mut
			{
				return VT.BuildNewTabPage(&this);
			}
			public HRESULT SetRecentlyClosedVisible(int16 fVisible) mut
			{
				return VT.SetRecentlyClosedVisible(&this, fVisible);
			}
			public HRESULT SetActivitiesVisible(int16 fVisible) mut
			{
				return VT.SetActivitiesVisible(&this, fVisible);
			}
			public HRESULT ContentDiscoveryReset() mut
			{
				return VT.ContentDiscoveryReset(&this);
			}
			public HRESULT IsSuggestedSitesEnabled(int16* pfEnabled) mut
			{
				return VT.IsSuggestedSitesEnabled(&this, pfEnabled);
			}
			public HRESULT EnableSuggestedSites(int16 fEnable) mut
			{
				return VT.EnableSuggestedSites(&this, fEnable);
			}
			public HRESULT NavigateToSuggestedSites(BSTR bstrRelativeUrl) mut
			{
				return VT.NavigateToSuggestedSites(&this, bstrRelativeUrl);
			}
			public HRESULT ShowTabsHelp() mut
			{
				return VT.ShowTabsHelp(&this);
			}
			public HRESULT ShowInPrivateHelp() mut
			{
				return VT.ShowInPrivateHelp(&this);
			}
			[CRepr]
			public struct VTable : IShellUIHelper2.VTable
			{
				public new function HRESULT(IShellUIHelper3 *self, BSTR URL) AddService;
				public new function HRESULT(IShellUIHelper3 *self, BSTR URL, BSTR Verb, uint32* pdwResult) IsServiceInstalled;
				public new function HRESULT(IShellUIHelper3 *self, int16* pfEnabled) InPrivateFilteringEnabled;
				public new function HRESULT(IShellUIHelper3 *self, BSTR URL, BSTR Title, VARIANT* Type) AddToFavoritesBar;
				public new function HRESULT(IShellUIHelper3 *self) BuildNewTabPage;
				public new function HRESULT(IShellUIHelper3 *self, int16 fVisible) SetRecentlyClosedVisible;
				public new function HRESULT(IShellUIHelper3 *self, int16 fVisible) SetActivitiesVisible;
				public new function HRESULT(IShellUIHelper3 *self) ContentDiscoveryReset;
				public new function HRESULT(IShellUIHelper3 *self, int16* pfEnabled) IsSuggestedSitesEnabled;
				public new function HRESULT(IShellUIHelper3 *self, int16 fEnable) EnableSuggestedSites;
				public new function HRESULT(IShellUIHelper3 *self, BSTR bstrRelativeUrl) NavigateToSuggestedSites;
				public new function HRESULT(IShellUIHelper3 *self) ShowTabsHelp;
				public new function HRESULT(IShellUIHelper3 *self) ShowInPrivateHelp;
			}
		}
		[CRepr]
		public struct IShellUIHelper4 : IShellUIHelper3
		{
			public const new Guid IID = .(0xb36e6a53, 0x8073, 0x499e, 0x82, 0x4c, 0xd7, 0x76, 0x33, 0x0a, 0x33, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT msIsSiteMode(int16* pfSiteMode) mut
			{
				return VT.msIsSiteMode(&this, pfSiteMode);
			}
			public HRESULT msSiteModeShowThumbBar() mut
			{
				return VT.msSiteModeShowThumbBar(&this);
			}
			public HRESULT msSiteModeAddThumbBarButton(BSTR bstrIconURL, BSTR bstrTooltip, VARIANT* pvarButtonID) mut
			{
				return VT.msSiteModeAddThumbBarButton(&this, bstrIconURL, bstrTooltip, pvarButtonID);
			}
			public HRESULT msSiteModeUpdateThumbBarButton(VARIANT ButtonID, int16 fEnabled, int16 fVisible) mut
			{
				return VT.msSiteModeUpdateThumbBarButton(&this, ButtonID, fEnabled, fVisible);
			}
			public HRESULT msSiteModeSetIconOverlay(BSTR IconUrl, VARIANT* pvarDescription) mut
			{
				return VT.msSiteModeSetIconOverlay(&this, IconUrl, pvarDescription);
			}
			public HRESULT msSiteModeClearIconOverlay() mut
			{
				return VT.msSiteModeClearIconOverlay(&this);
			}
			public HRESULT msAddSiteMode() mut
			{
				return VT.msAddSiteMode(&this);
			}
			public HRESULT msSiteModeCreateJumpList(BSTR bstrHeader) mut
			{
				return VT.msSiteModeCreateJumpList(&this, bstrHeader);
			}
			public HRESULT msSiteModeAddJumpListItem(BSTR bstrName, BSTR bstrActionUri, BSTR bstrIconUri, VARIANT* pvarWindowType) mut
			{
				return VT.msSiteModeAddJumpListItem(&this, bstrName, bstrActionUri, bstrIconUri, pvarWindowType);
			}
			public HRESULT msSiteModeClearJumpList() mut
			{
				return VT.msSiteModeClearJumpList(&this);
			}
			public HRESULT msSiteModeShowJumpList() mut
			{
				return VT.msSiteModeShowJumpList(&this);
			}
			public HRESULT msSiteModeAddButtonStyle(VARIANT uiButtonID, BSTR bstrIconUrl, BSTR bstrTooltip, VARIANT* pvarStyleID) mut
			{
				return VT.msSiteModeAddButtonStyle(&this, uiButtonID, bstrIconUrl, bstrTooltip, pvarStyleID);
			}
			public HRESULT msSiteModeShowButtonStyle(VARIANT uiButtonID, VARIANT uiStyleID) mut
			{
				return VT.msSiteModeShowButtonStyle(&this, uiButtonID, uiStyleID);
			}
			public HRESULT msSiteModeActivate() mut
			{
				return VT.msSiteModeActivate(&this);
			}
			public HRESULT msIsSiteModeFirstRun(int16 fPreserveState, VARIANT* puiFirstRun) mut
			{
				return VT.msIsSiteModeFirstRun(&this, fPreserveState, puiFirstRun);
			}
			public HRESULT msAddTrackingProtectionList(BSTR URL, BSTR bstrFilterName) mut
			{
				return VT.msAddTrackingProtectionList(&this, URL, bstrFilterName);
			}
			public HRESULT msTrackingProtectionEnabled(int16* pfEnabled) mut
			{
				return VT.msTrackingProtectionEnabled(&this, pfEnabled);
			}
			public HRESULT msActiveXFilteringEnabled(int16* pfEnabled) mut
			{
				return VT.msActiveXFilteringEnabled(&this, pfEnabled);
			}
			[CRepr]
			public struct VTable : IShellUIHelper3.VTable
			{
				public new function HRESULT(IShellUIHelper4 *self, int16* pfSiteMode) msIsSiteMode;
				public new function HRESULT(IShellUIHelper4 *self) msSiteModeShowThumbBar;
				public new function HRESULT(IShellUIHelper4 *self, BSTR bstrIconURL, BSTR bstrTooltip, VARIANT* pvarButtonID) msSiteModeAddThumbBarButton;
				public new function HRESULT(IShellUIHelper4 *self, VARIANT ButtonID, int16 fEnabled, int16 fVisible) msSiteModeUpdateThumbBarButton;
				public new function HRESULT(IShellUIHelper4 *self, BSTR IconUrl, VARIANT* pvarDescription) msSiteModeSetIconOverlay;
				public new function HRESULT(IShellUIHelper4 *self) msSiteModeClearIconOverlay;
				public new function HRESULT(IShellUIHelper4 *self) msAddSiteMode;
				public new function HRESULT(IShellUIHelper4 *self, BSTR bstrHeader) msSiteModeCreateJumpList;
				public new function HRESULT(IShellUIHelper4 *self, BSTR bstrName, BSTR bstrActionUri, BSTR bstrIconUri, VARIANT* pvarWindowType) msSiteModeAddJumpListItem;
				public new function HRESULT(IShellUIHelper4 *self) msSiteModeClearJumpList;
				public new function HRESULT(IShellUIHelper4 *self) msSiteModeShowJumpList;
				public new function HRESULT(IShellUIHelper4 *self, VARIANT uiButtonID, BSTR bstrIconUrl, BSTR bstrTooltip, VARIANT* pvarStyleID) msSiteModeAddButtonStyle;
				public new function HRESULT(IShellUIHelper4 *self, VARIANT uiButtonID, VARIANT uiStyleID) msSiteModeShowButtonStyle;
				public new function HRESULT(IShellUIHelper4 *self) msSiteModeActivate;
				public new function HRESULT(IShellUIHelper4 *self, int16 fPreserveState, VARIANT* puiFirstRun) msIsSiteModeFirstRun;
				public new function HRESULT(IShellUIHelper4 *self, BSTR URL, BSTR bstrFilterName) msAddTrackingProtectionList;
				public new function HRESULT(IShellUIHelper4 *self, int16* pfEnabled) msTrackingProtectionEnabled;
				public new function HRESULT(IShellUIHelper4 *self, int16* pfEnabled) msActiveXFilteringEnabled;
			}
		}
		[CRepr]
		public struct IShellUIHelper5 : IShellUIHelper4
		{
			public const new Guid IID = .(0xa2a08b09, 0x103d, 0x4d3f, 0xb9, 0x1c, 0xea, 0x45, 0x5c, 0xa8, 0x2e, 0xfa);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT msProvisionNetworks(BSTR bstrProvisioningXml, VARIANT* puiResult) mut
			{
				return VT.msProvisionNetworks(&this, bstrProvisioningXml, puiResult);
			}
			public HRESULT msReportSafeUrl() mut
			{
				return VT.msReportSafeUrl(&this);
			}
			public HRESULT msSiteModeRefreshBadge() mut
			{
				return VT.msSiteModeRefreshBadge(&this);
			}
			public HRESULT msSiteModeClearBadge() mut
			{
				return VT.msSiteModeClearBadge(&this);
			}
			public HRESULT msDiagnoseConnectionUILess() mut
			{
				return VT.msDiagnoseConnectionUILess(&this);
			}
			public HRESULT msLaunchNetworkClientHelp() mut
			{
				return VT.msLaunchNetworkClientHelp(&this);
			}
			public HRESULT msChangeDefaultBrowser(int16 fChange) mut
			{
				return VT.msChangeDefaultBrowser(&this, fChange);
			}
			[CRepr]
			public struct VTable : IShellUIHelper4.VTable
			{
				public new function HRESULT(IShellUIHelper5 *self, BSTR bstrProvisioningXml, VARIANT* puiResult) msProvisionNetworks;
				public new function HRESULT(IShellUIHelper5 *self) msReportSafeUrl;
				public new function HRESULT(IShellUIHelper5 *self) msSiteModeRefreshBadge;
				public new function HRESULT(IShellUIHelper5 *self) msSiteModeClearBadge;
				public new function HRESULT(IShellUIHelper5 *self) msDiagnoseConnectionUILess;
				public new function HRESULT(IShellUIHelper5 *self) msLaunchNetworkClientHelp;
				public new function HRESULT(IShellUIHelper5 *self, int16 fChange) msChangeDefaultBrowser;
			}
		}
		[CRepr]
		public struct IShellUIHelper6 : IShellUIHelper5
		{
			public const new Guid IID = .(0x987a573e, 0x46ee, 0x4e89, 0x96, 0xab, 0xdd, 0xf7, 0xf8, 0xfd, 0xc9, 0x8c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT msStopPeriodicTileUpdate() mut
			{
				return VT.msStopPeriodicTileUpdate(&this);
			}
			public HRESULT msStartPeriodicTileUpdate(VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) mut
			{
				return VT.msStartPeriodicTileUpdate(&this, pollingUris, startTime, uiUpdateRecurrence);
			}
			public HRESULT msStartPeriodicTileUpdateBatch(VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) mut
			{
				return VT.msStartPeriodicTileUpdateBatch(&this, pollingUris, startTime, uiUpdateRecurrence);
			}
			public HRESULT msClearTile() mut
			{
				return VT.msClearTile(&this);
			}
			public HRESULT msEnableTileNotificationQueue(int16 fChange) mut
			{
				return VT.msEnableTileNotificationQueue(&this, fChange);
			}
			public HRESULT msPinnedSiteState(VARIANT* pvarSiteState) mut
			{
				return VT.msPinnedSiteState(&this, pvarSiteState);
			}
			public HRESULT msEnableTileNotificationQueueForSquare150x150(int16 fChange) mut
			{
				return VT.msEnableTileNotificationQueueForSquare150x150(&this, fChange);
			}
			public HRESULT msEnableTileNotificationQueueForWide310x150(int16 fChange) mut
			{
				return VT.msEnableTileNotificationQueueForWide310x150(&this, fChange);
			}
			public HRESULT msEnableTileNotificationQueueForSquare310x310(int16 fChange) mut
			{
				return VT.msEnableTileNotificationQueueForSquare310x310(&this, fChange);
			}
			public HRESULT msScheduledTileNotification(BSTR bstrNotificationXml, BSTR bstrNotificationId, BSTR bstrNotificationTag, VARIANT startTime, VARIANT expirationTime) mut
			{
				return VT.msScheduledTileNotification(&this, bstrNotificationXml, bstrNotificationId, bstrNotificationTag, startTime, expirationTime);
			}
			public HRESULT msRemoveScheduledTileNotification(BSTR bstrNotificationId) mut
			{
				return VT.msRemoveScheduledTileNotification(&this, bstrNotificationId);
			}
			public HRESULT msStartPeriodicBadgeUpdate(BSTR pollingUri, VARIANT startTime, VARIANT uiUpdateRecurrence) mut
			{
				return VT.msStartPeriodicBadgeUpdate(&this, pollingUri, startTime, uiUpdateRecurrence);
			}
			public HRESULT msStopPeriodicBadgeUpdate() mut
			{
				return VT.msStopPeriodicBadgeUpdate(&this);
			}
			public HRESULT msLaunchInternetOptions() mut
			{
				return VT.msLaunchInternetOptions(&this);
			}
			[CRepr]
			public struct VTable : IShellUIHelper5.VTable
			{
				public new function HRESULT(IShellUIHelper6 *self) msStopPeriodicTileUpdate;
				public new function HRESULT(IShellUIHelper6 *self, VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicTileUpdate;
				public new function HRESULT(IShellUIHelper6 *self, VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicTileUpdateBatch;
				public new function HRESULT(IShellUIHelper6 *self) msClearTile;
				public new function HRESULT(IShellUIHelper6 *self, int16 fChange) msEnableTileNotificationQueue;
				public new function HRESULT(IShellUIHelper6 *self, VARIANT* pvarSiteState) msPinnedSiteState;
				public new function HRESULT(IShellUIHelper6 *self, int16 fChange) msEnableTileNotificationQueueForSquare150x150;
				public new function HRESULT(IShellUIHelper6 *self, int16 fChange) msEnableTileNotificationQueueForWide310x150;
				public new function HRESULT(IShellUIHelper6 *self, int16 fChange) msEnableTileNotificationQueueForSquare310x310;
				public new function HRESULT(IShellUIHelper6 *self, BSTR bstrNotificationXml, BSTR bstrNotificationId, BSTR bstrNotificationTag, VARIANT startTime, VARIANT expirationTime) msScheduledTileNotification;
				public new function HRESULT(IShellUIHelper6 *self, BSTR bstrNotificationId) msRemoveScheduledTileNotification;
				public new function HRESULT(IShellUIHelper6 *self, BSTR pollingUri, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicBadgeUpdate;
				public new function HRESULT(IShellUIHelper6 *self) msStopPeriodicBadgeUpdate;
				public new function HRESULT(IShellUIHelper6 *self) msLaunchInternetOptions;
			}
		}
		[CRepr]
		public struct IShellUIHelper7 : IShellUIHelper6
		{
			public const new Guid IID = .(0x60e567c8, 0x9573, 0x4ab2, 0xa2, 0x64, 0x63, 0x7c, 0x6c, 0x16, 0x1c, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetExperimentalFlag(BSTR bstrFlagString, int16 vfFlag) mut
			{
				return VT.SetExperimentalFlag(&this, bstrFlagString, vfFlag);
			}
			public HRESULT GetExperimentalFlag(BSTR bstrFlagString, int16* vfFlag) mut
			{
				return VT.GetExperimentalFlag(&this, bstrFlagString, vfFlag);
			}
			public HRESULT SetExperimentalValue(BSTR bstrValueString, uint32 dwValue) mut
			{
				return VT.SetExperimentalValue(&this, bstrValueString, dwValue);
			}
			public HRESULT GetExperimentalValue(BSTR bstrValueString, uint32* pdwValue) mut
			{
				return VT.GetExperimentalValue(&this, bstrValueString, pdwValue);
			}
			public HRESULT ResetAllExperimentalFlagsAndValues() mut
			{
				return VT.ResetAllExperimentalFlagsAndValues(&this);
			}
			public HRESULT GetNeedIEAutoLaunchFlag(BSTR bstrUrl, int16* flag) mut
			{
				return VT.GetNeedIEAutoLaunchFlag(&this, bstrUrl, flag);
			}
			public HRESULT SetNeedIEAutoLaunchFlag(BSTR bstrUrl, int16 flag) mut
			{
				return VT.SetNeedIEAutoLaunchFlag(&this, bstrUrl, flag);
			}
			public HRESULT HasNeedIEAutoLaunchFlag(BSTR bstrUrl, int16* exists) mut
			{
				return VT.HasNeedIEAutoLaunchFlag(&this, bstrUrl, exists);
			}
			public HRESULT LaunchIE(BSTR bstrUrl, int16 automated) mut
			{
				return VT.LaunchIE(&this, bstrUrl, automated);
			}
			[CRepr]
			public struct VTable : IShellUIHelper6.VTable
			{
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrFlagString, int16 vfFlag) SetExperimentalFlag;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrFlagString, int16* vfFlag) GetExperimentalFlag;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrValueString, uint32 dwValue) SetExperimentalValue;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrValueString, uint32* pdwValue) GetExperimentalValue;
				public new function HRESULT(IShellUIHelper7 *self) ResetAllExperimentalFlagsAndValues;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrUrl, int16* flag) GetNeedIEAutoLaunchFlag;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrUrl, int16 flag) SetNeedIEAutoLaunchFlag;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrUrl, int16* exists) HasNeedIEAutoLaunchFlag;
				public new function HRESULT(IShellUIHelper7 *self, BSTR bstrUrl, int16 automated) LaunchIE;
			}
		}
		[CRepr]
		public struct IShellUIHelper8 : IShellUIHelper7
		{
			public const new Guid IID = .(0x66debcf2, 0x05b0, 0x4f07, 0xb4, 0x9b, 0xb9, 0x62, 0x41, 0xa6, 0x5d, 0xb2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCVListData(BSTR* pbstrResult) mut
			{
				return VT.GetCVListData(&this, pbstrResult);
			}
			public HRESULT GetCVListLocalData(BSTR* pbstrResult) mut
			{
				return VT.GetCVListLocalData(&this, pbstrResult);
			}
			public HRESULT GetEMIEListData(BSTR* pbstrResult) mut
			{
				return VT.GetEMIEListData(&this, pbstrResult);
			}
			public HRESULT GetEMIEListLocalData(BSTR* pbstrResult) mut
			{
				return VT.GetEMIEListLocalData(&this, pbstrResult);
			}
			public HRESULT OpenFavoritesPane() mut
			{
				return VT.OpenFavoritesPane(&this);
			}
			public HRESULT OpenFavoritesSettings() mut
			{
				return VT.OpenFavoritesSettings(&this);
			}
			public HRESULT LaunchInHVSI(BSTR bstrUrl) mut
			{
				return VT.LaunchInHVSI(&this, bstrUrl);
			}
			[CRepr]
			public struct VTable : IShellUIHelper7.VTable
			{
				public new function HRESULT(IShellUIHelper8 *self, BSTR* pbstrResult) GetCVListData;
				public new function HRESULT(IShellUIHelper8 *self, BSTR* pbstrResult) GetCVListLocalData;
				public new function HRESULT(IShellUIHelper8 *self, BSTR* pbstrResult) GetEMIEListData;
				public new function HRESULT(IShellUIHelper8 *self, BSTR* pbstrResult) GetEMIEListLocalData;
				public new function HRESULT(IShellUIHelper8 *self) OpenFavoritesPane;
				public new function HRESULT(IShellUIHelper8 *self) OpenFavoritesSettings;
				public new function HRESULT(IShellUIHelper8 *self, BSTR bstrUrl) LaunchInHVSI;
			}
		}
		[CRepr]
		public struct IShellUIHelper9 : IShellUIHelper8
		{
			public const new Guid IID = .(0x6cdf73b0, 0x7f2f, 0x451f, 0xbc, 0x0f, 0x63, 0xe0, 0xf3, 0x28, 0x4e, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOSSku(uint32* pdwResult) mut
			{
				return VT.GetOSSku(&this, pdwResult);
			}
			[CRepr]
			public struct VTable : IShellUIHelper8.VTable
			{
				public new function HRESULT(IShellUIHelper9 *self, uint32* pdwResult) GetOSSku;
			}
		}
		[CRepr]
		public struct DShellNameSpaceEvents : IDispatch
		{
			public const new Guid IID = .(0x55136806, 0xb2de, 0x11d1, 0xb9, 0xf2, 0x00, 0xa0, 0xc9, 0x8b, 0xc5, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct IShellFavoritesNameSpace : IDispatch
		{
			public const new Guid IID = .(0x55136804, 0xb2de, 0x11d1, 0xb9, 0xf2, 0x00, 0xa0, 0xc9, 0x8b, 0xc5, 0x47);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MoveSelectionUp() mut
			{
				return VT.MoveSelectionUp(&this);
			}
			public HRESULT MoveSelectionDown() mut
			{
				return VT.MoveSelectionDown(&this);
			}
			public HRESULT ResetSort() mut
			{
				return VT.ResetSort(&this);
			}
			public HRESULT NewFolder() mut
			{
				return VT.NewFolder(&this);
			}
			public HRESULT Synchronize() mut
			{
				return VT.Synchronize(&this);
			}
			public HRESULT Import() mut
			{
				return VT.Import(&this);
			}
			public HRESULT Export() mut
			{
				return VT.Export(&this);
			}
			public HRESULT InvokeContextMenuCommand(BSTR strCommand) mut
			{
				return VT.InvokeContextMenuCommand(&this, strCommand);
			}
			public HRESULT MoveSelectionTo() mut
			{
				return VT.MoveSelectionTo(&this);
			}
			public HRESULT get_SubscriptionsEnabled(int16* pBool) mut
			{
				return VT.get_SubscriptionsEnabled(&this, pBool);
			}
			public HRESULT CreateSubscriptionForSelection(int16* pBool) mut
			{
				return VT.CreateSubscriptionForSelection(&this, pBool);
			}
			public HRESULT DeleteSubscriptionForSelection(int16* pBool) mut
			{
				return VT.DeleteSubscriptionForSelection(&this, pBool);
			}
			public HRESULT SetRoot(BSTR bstrFullPath) mut
			{
				return VT.SetRoot(&this, bstrFullPath);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellFavoritesNameSpace *self) MoveSelectionUp;
				public new function HRESULT(IShellFavoritesNameSpace *self) MoveSelectionDown;
				public new function HRESULT(IShellFavoritesNameSpace *self) ResetSort;
				public new function HRESULT(IShellFavoritesNameSpace *self) NewFolder;
				public new function HRESULT(IShellFavoritesNameSpace *self) Synchronize;
				public new function HRESULT(IShellFavoritesNameSpace *self) Import;
				public new function HRESULT(IShellFavoritesNameSpace *self) Export;
				public new function HRESULT(IShellFavoritesNameSpace *self, BSTR strCommand) InvokeContextMenuCommand;
				public new function HRESULT(IShellFavoritesNameSpace *self) MoveSelectionTo;
				public new function HRESULT(IShellFavoritesNameSpace *self, int16* pBool) get_SubscriptionsEnabled;
				public new function HRESULT(IShellFavoritesNameSpace *self, int16* pBool) CreateSubscriptionForSelection;
				public new function HRESULT(IShellFavoritesNameSpace *self, int16* pBool) DeleteSubscriptionForSelection;
				public new function HRESULT(IShellFavoritesNameSpace *self, BSTR bstrFullPath) SetRoot;
			}
		}
		[CRepr]
		public struct IShellNameSpace : IShellFavoritesNameSpace
		{
			public const new Guid IID = .(0xe572d3c9, 0x37be, 0x4ae2, 0x82, 0x5d, 0xd5, 0x21, 0x76, 0x3e, 0x31, 0x08);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_EnumOptions(int32* pgrfEnumFlags) mut
			{
				return VT.get_EnumOptions(&this, pgrfEnumFlags);
			}
			public HRESULT put_EnumOptions(int32 lVal) mut
			{
				return VT.put_EnumOptions(&this, lVal);
			}
			public HRESULT get_SelectedItem(IDispatch** pItem) mut
			{
				return VT.get_SelectedItem(&this, pItem);
			}
			public HRESULT put_SelectedItem(IDispatch* pItem) mut
			{
				return VT.put_SelectedItem(&this, pItem);
			}
			public HRESULT get_Root(VARIANT* pvar) mut
			{
				return VT.get_Root(&this, pvar);
			}
			public HRESULT put_Root(VARIANT @var) mut
			{
				return VT.put_Root(&this, @var);
			}
			public HRESULT get_Depth(int32* piDepth) mut
			{
				return VT.get_Depth(&this, piDepth);
			}
			public HRESULT put_Depth(int32 iDepth) mut
			{
				return VT.put_Depth(&this, iDepth);
			}
			public HRESULT get_Mode(uint32* puMode) mut
			{
				return VT.get_Mode(&this, puMode);
			}
			public HRESULT put_Mode(uint32 uMode) mut
			{
				return VT.put_Mode(&this, uMode);
			}
			public HRESULT get_Flags(uint32* pdwFlags) mut
			{
				return VT.get_Flags(&this, pdwFlags);
			}
			public HRESULT put_Flags(uint32 dwFlags) mut
			{
				return VT.put_Flags(&this, dwFlags);
			}
			public HRESULT put_TVFlags(uint32 dwFlags) mut
			{
				return VT.put_TVFlags(&this, dwFlags);
			}
			public HRESULT get_TVFlags(uint32* dwFlags) mut
			{
				return VT.get_TVFlags(&this, dwFlags);
			}
			public HRESULT get_Columns(BSTR* bstrColumns) mut
			{
				return VT.get_Columns(&this, bstrColumns);
			}
			public HRESULT put_Columns(BSTR bstrColumns) mut
			{
				return VT.put_Columns(&this, bstrColumns);
			}
			public HRESULT get_CountViewTypes(int32* piTypes) mut
			{
				return VT.get_CountViewTypes(&this, piTypes);
			}
			public HRESULT SetViewType(int32 iType) mut
			{
				return VT.SetViewType(&this, iType);
			}
			public HRESULT SelectedItems(IDispatch** ppid) mut
			{
				return VT.SelectedItems(&this, ppid);
			}
			public HRESULT Expand(VARIANT @var, int32 iDepth) mut
			{
				return VT.Expand(&this, @var, iDepth);
			}
			public HRESULT UnselectAll() mut
			{
				return VT.UnselectAll(&this);
			}
			[CRepr]
			public struct VTable : IShellFavoritesNameSpace.VTable
			{
				public new function HRESULT(IShellNameSpace *self, int32* pgrfEnumFlags) get_EnumOptions;
				public new function HRESULT(IShellNameSpace *self, int32 lVal) put_EnumOptions;
				public new function HRESULT(IShellNameSpace *self, IDispatch** pItem) get_SelectedItem;
				public new function HRESULT(IShellNameSpace *self, IDispatch* pItem) put_SelectedItem;
				public new function HRESULT(IShellNameSpace *self, VARIANT* pvar) get_Root;
				public new function HRESULT(IShellNameSpace *self, VARIANT @var) put_Root;
				public new function HRESULT(IShellNameSpace *self, int32* piDepth) get_Depth;
				public new function HRESULT(IShellNameSpace *self, int32 iDepth) put_Depth;
				public new function HRESULT(IShellNameSpace *self, uint32* puMode) get_Mode;
				public new function HRESULT(IShellNameSpace *self, uint32 uMode) put_Mode;
				public new function HRESULT(IShellNameSpace *self, uint32* pdwFlags) get_Flags;
				public new function HRESULT(IShellNameSpace *self, uint32 dwFlags) put_Flags;
				public new function HRESULT(IShellNameSpace *self, uint32 dwFlags) put_TVFlags;
				public new function HRESULT(IShellNameSpace *self, uint32* dwFlags) get_TVFlags;
				public new function HRESULT(IShellNameSpace *self, BSTR* bstrColumns) get_Columns;
				public new function HRESULT(IShellNameSpace *self, BSTR bstrColumns) put_Columns;
				public new function HRESULT(IShellNameSpace *self, int32* piTypes) get_CountViewTypes;
				public new function HRESULT(IShellNameSpace *self, int32 iType) SetViewType;
				public new function HRESULT(IShellNameSpace *self, IDispatch** ppid) SelectedItems;
				public new function HRESULT(IShellNameSpace *self, VARIANT @var, int32 iDepth) Expand;
				public new function HRESULT(IShellNameSpace *self) UnselectAll;
			}
		}
		[CRepr]
		public struct IScriptErrorList : IDispatch
		{
			public const new Guid IID = .(0xf3470f24, 0x15fd, 0x11d2, 0xbb, 0x2e, 0x00, 0x80, 0x5f, 0xf7, 0xef, 0xca);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT advanceError() mut
			{
				return VT.advanceError(&this);
			}
			public HRESULT retreatError() mut
			{
				return VT.retreatError(&this);
			}
			public HRESULT canAdvanceError(BOOL* pfCanAdvance) mut
			{
				return VT.canAdvanceError(&this, pfCanAdvance);
			}
			public HRESULT canRetreatError(BOOL* pfCanRetreat) mut
			{
				return VT.canRetreatError(&this, pfCanRetreat);
			}
			public HRESULT getErrorLine(int32* plLine) mut
			{
				return VT.getErrorLine(&this, plLine);
			}
			public HRESULT getErrorChar(int32* plChar) mut
			{
				return VT.getErrorChar(&this, plChar);
			}
			public HRESULT getErrorCode(int32* plCode) mut
			{
				return VT.getErrorCode(&this, plCode);
			}
			public HRESULT getErrorMsg(BSTR* pstr) mut
			{
				return VT.getErrorMsg(&this, pstr);
			}
			public HRESULT getErrorUrl(BSTR* pstr) mut
			{
				return VT.getErrorUrl(&this, pstr);
			}
			public HRESULT getAlwaysShowLockState(BOOL* pfAlwaysShowLocked) mut
			{
				return VT.getAlwaysShowLockState(&this, pfAlwaysShowLocked);
			}
			public HRESULT getDetailsPaneOpen(BOOL* pfDetailsPaneOpen) mut
			{
				return VT.getDetailsPaneOpen(&this, pfDetailsPaneOpen);
			}
			public HRESULT setDetailsPaneOpen(BOOL fDetailsPaneOpen) mut
			{
				return VT.setDetailsPaneOpen(&this, fDetailsPaneOpen);
			}
			public HRESULT getPerErrorDisplay(BOOL* pfPerErrorDisplay) mut
			{
				return VT.getPerErrorDisplay(&this, pfPerErrorDisplay);
			}
			public HRESULT setPerErrorDisplay(BOOL fPerErrorDisplay) mut
			{
				return VT.setPerErrorDisplay(&this, fPerErrorDisplay);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IScriptErrorList *self) advanceError;
				public new function HRESULT(IScriptErrorList *self) retreatError;
				public new function HRESULT(IScriptErrorList *self, BOOL* pfCanAdvance) canAdvanceError;
				public new function HRESULT(IScriptErrorList *self, BOOL* pfCanRetreat) canRetreatError;
				public new function HRESULT(IScriptErrorList *self, int32* plLine) getErrorLine;
				public new function HRESULT(IScriptErrorList *self, int32* plChar) getErrorChar;
				public new function HRESULT(IScriptErrorList *self, int32* plCode) getErrorCode;
				public new function HRESULT(IScriptErrorList *self, BSTR* pstr) getErrorMsg;
				public new function HRESULT(IScriptErrorList *self, BSTR* pstr) getErrorUrl;
				public new function HRESULT(IScriptErrorList *self, BOOL* pfAlwaysShowLocked) getAlwaysShowLockState;
				public new function HRESULT(IScriptErrorList *self, BOOL* pfDetailsPaneOpen) getDetailsPaneOpen;
				public new function HRESULT(IScriptErrorList *self, BOOL fDetailsPaneOpen) setDetailsPaneOpen;
				public new function HRESULT(IScriptErrorList *self, BOOL* pfPerErrorDisplay) getPerErrorDisplay;
				public new function HRESULT(IScriptErrorList *self, BOOL fPerErrorDisplay) setPerErrorDisplay;
			}
		}
		[CRepr]
		public struct IFolderViewOC : IDispatch
		{
			public const new Guid IID = .(0x9ba05970, 0xf6a8, 0x11cf, 0xa4, 0x42, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFolderView(IDispatch* pdisp) mut
			{
				return VT.SetFolderView(&this, pdisp);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFolderViewOC *self, IDispatch* pdisp) SetFolderView;
			}
		}
		[CRepr]
		public struct DShellFolderViewEvents : IDispatch
		{
			public const new Guid IID = .(0x62112aa2, 0xebe4, 0x11cf, 0xa5, 0xfb, 0x00, 0x20, 0xaf, 0xe7, 0x29, 0x2d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
			}
		}
		[CRepr]
		public struct DFConstraint : IDispatch
		{
			public const new Guid IID = .(0x4a3df050, 0x23bd, 0x11d2, 0x93, 0x9f, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xba);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Name(BSTR* pbs) mut
			{
				return VT.get_Name(&this, pbs);
			}
			public HRESULT get_Value(VARIANT* pv) mut
			{
				return VT.get_Value(&this, pv);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(DFConstraint *self, BSTR* pbs) get_Name;
				public new function HRESULT(DFConstraint *self, VARIANT* pv) get_Value;
			}
		}
		[CRepr]
		public struct FolderItem : IDispatch
		{
			public const new Guid IID = .(0xfac32c80, 0xcbe4, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT get_Name(BSTR* pbs) mut
			{
				return VT.get_Name(&this, pbs);
			}
			public HRESULT put_Name(BSTR bs) mut
			{
				return VT.put_Name(&this, bs);
			}
			public HRESULT get_Path(BSTR* pbs) mut
			{
				return VT.get_Path(&this, pbs);
			}
			public HRESULT get_GetLink(IDispatch** ppid) mut
			{
				return VT.get_GetLink(&this, ppid);
			}
			public HRESULT get_GetFolder(IDispatch** ppid) mut
			{
				return VT.get_GetFolder(&this, ppid);
			}
			public HRESULT get_IsLink(int16* pb) mut
			{
				return VT.get_IsLink(&this, pb);
			}
			public HRESULT get_IsFolder(int16* pb) mut
			{
				return VT.get_IsFolder(&this, pb);
			}
			public HRESULT get_IsFileSystem(int16* pb) mut
			{
				return VT.get_IsFileSystem(&this, pb);
			}
			public HRESULT get_IsBrowsable(int16* pb) mut
			{
				return VT.get_IsBrowsable(&this, pb);
			}
			public HRESULT get_ModifyDate(double* pdt) mut
			{
				return VT.get_ModifyDate(&this, pdt);
			}
			public HRESULT put_ModifyDate(double dt) mut
			{
				return VT.put_ModifyDate(&this, dt);
			}
			public HRESULT get_Size(int32* pul) mut
			{
				return VT.get_Size(&this, pul);
			}
			public HRESULT get_Type(BSTR* pbs) mut
			{
				return VT.get_Type(&this, pbs);
			}
			public HRESULT Verbs(FolderItemVerbs** ppfic) mut
			{
				return VT.Verbs(&this, ppfic);
			}
			public HRESULT InvokeVerb(VARIANT vVerb) mut
			{
				return VT.InvokeVerb(&this, vVerb);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(FolderItem *self, IDispatch** ppid) get_Application;
				public new function HRESULT(FolderItem *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(FolderItem *self, BSTR* pbs) get_Name;
				public new function HRESULT(FolderItem *self, BSTR bs) put_Name;
				public new function HRESULT(FolderItem *self, BSTR* pbs) get_Path;
				public new function HRESULT(FolderItem *self, IDispatch** ppid) get_GetLink;
				public new function HRESULT(FolderItem *self, IDispatch** ppid) get_GetFolder;
				public new function HRESULT(FolderItem *self, int16* pb) get_IsLink;
				public new function HRESULT(FolderItem *self, int16* pb) get_IsFolder;
				public new function HRESULT(FolderItem *self, int16* pb) get_IsFileSystem;
				public new function HRESULT(FolderItem *self, int16* pb) get_IsBrowsable;
				public new function HRESULT(FolderItem *self, double* pdt) get_ModifyDate;
				public new function HRESULT(FolderItem *self, double dt) put_ModifyDate;
				public new function HRESULT(FolderItem *self, int32* pul) get_Size;
				public new function HRESULT(FolderItem *self, BSTR* pbs) get_Type;
				public new function HRESULT(FolderItem *self, FolderItemVerbs** ppfic) Verbs;
				public new function HRESULT(FolderItem *self, VARIANT vVerb) InvokeVerb;
			}
		}
		[CRepr]
		public struct FolderItems : IDispatch
		{
			public const new Guid IID = .(0x744129e0, 0xcbe5, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT Item(VARIANT index, FolderItem** ppid) mut
			{
				return VT.Item(&this, index, ppid);
			}
			public HRESULT _NewEnum(IUnknown** ppunk) mut
			{
				return VT._NewEnum(&this, ppunk);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(FolderItems *self, int32* plCount) get_Count;
				public new function HRESULT(FolderItems *self, IDispatch** ppid) get_Application;
				public new function HRESULT(FolderItems *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(FolderItems *self, VARIANT index, FolderItem** ppid) Item;
				public new function HRESULT(FolderItems *self, IUnknown** ppunk) _NewEnum;
			}
		}
		[CRepr]
		public struct FolderItemVerb : IDispatch
		{
			public const new Guid IID = .(0x08ec3e00, 0x50b0, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT get_Name(BSTR* pbs) mut
			{
				return VT.get_Name(&this, pbs);
			}
			public HRESULT DoIt() mut
			{
				return VT.DoIt(&this);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(FolderItemVerb *self, IDispatch** ppid) get_Application;
				public new function HRESULT(FolderItemVerb *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(FolderItemVerb *self, BSTR* pbs) get_Name;
				public new function HRESULT(FolderItemVerb *self) DoIt;
			}
		}
		[CRepr]
		public struct FolderItemVerbs : IDispatch
		{
			public const new Guid IID = .(0x1f8352c0, 0x50b0, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Count(int32* plCount) mut
			{
				return VT.get_Count(&this, plCount);
			}
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT Item(VARIANT index, FolderItemVerb** ppid) mut
			{
				return VT.Item(&this, index, ppid);
			}
			public HRESULT _NewEnum(IUnknown** ppunk) mut
			{
				return VT._NewEnum(&this, ppunk);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(FolderItemVerbs *self, int32* plCount) get_Count;
				public new function HRESULT(FolderItemVerbs *self, IDispatch** ppid) get_Application;
				public new function HRESULT(FolderItemVerbs *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(FolderItemVerbs *self, VARIANT index, FolderItemVerb** ppid) Item;
				public new function HRESULT(FolderItemVerbs *self, IUnknown** ppunk) _NewEnum;
			}
		}
		[CRepr]
		public struct Folder : IDispatch
		{
			public const new Guid IID = .(0xbbcbde60, 0xc3ff, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Title(BSTR* pbs) mut
			{
				return VT.get_Title(&this, pbs);
			}
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT get_ParentFolder(Folder** ppsf) mut
			{
				return VT.get_ParentFolder(&this, ppsf);
			}
			public HRESULT Items(FolderItems** ppid) mut
			{
				return VT.Items(&this, ppid);
			}
			public HRESULT ParseName(BSTR bName, FolderItem** ppid) mut
			{
				return VT.ParseName(&this, bName, ppid);
			}
			public HRESULT NewFolder(BSTR bName, VARIANT vOptions) mut
			{
				return VT.NewFolder(&this, bName, vOptions);
			}
			public HRESULT MoveHere(VARIANT vItem, VARIANT vOptions) mut
			{
				return VT.MoveHere(&this, vItem, vOptions);
			}
			public HRESULT CopyHere(VARIANT vItem, VARIANT vOptions) mut
			{
				return VT.CopyHere(&this, vItem, vOptions);
			}
			public HRESULT GetDetailsOf(VARIANT vItem, int32 iColumn, BSTR* pbs) mut
			{
				return VT.GetDetailsOf(&this, vItem, iColumn, pbs);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(Folder *self, BSTR* pbs) get_Title;
				public new function HRESULT(Folder *self, IDispatch** ppid) get_Application;
				public new function HRESULT(Folder *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(Folder *self, Folder** ppsf) get_ParentFolder;
				public new function HRESULT(Folder *self, FolderItems** ppid) Items;
				public new function HRESULT(Folder *self, BSTR bName, FolderItem** ppid) ParseName;
				public new function HRESULT(Folder *self, BSTR bName, VARIANT vOptions) NewFolder;
				public new function HRESULT(Folder *self, VARIANT vItem, VARIANT vOptions) MoveHere;
				public new function HRESULT(Folder *self, VARIANT vItem, VARIANT vOptions) CopyHere;
				public new function HRESULT(Folder *self, VARIANT vItem, int32 iColumn, BSTR* pbs) GetDetailsOf;
			}
		}
		[CRepr]
		public struct Folder2 : Folder
		{
			public const new Guid IID = .(0xf0d2d8ef, 0x3890, 0x11d2, 0xbf, 0x8b, 0x00, 0xc0, 0x4f, 0xb9, 0x36, 0x61);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Self(FolderItem** ppfi) mut
			{
				return VT.get_Self(&this, ppfi);
			}
			public HRESULT get_OfflineStatus(int32* pul) mut
			{
				return VT.get_OfflineStatus(&this, pul);
			}
			public HRESULT Synchronize() mut
			{
				return VT.Synchronize(&this);
			}
			public HRESULT get_HaveToShowWebViewBarricade(int16* pbHaveToShowWebViewBarricade) mut
			{
				return VT.get_HaveToShowWebViewBarricade(&this, pbHaveToShowWebViewBarricade);
			}
			public HRESULT DismissedWebViewBarricade() mut
			{
				return VT.DismissedWebViewBarricade(&this);
			}
			[CRepr]
			public struct VTable : Folder.VTable
			{
				public new function HRESULT(Folder2 *self, FolderItem** ppfi) get_Self;
				public new function HRESULT(Folder2 *self, int32* pul) get_OfflineStatus;
				public new function HRESULT(Folder2 *self) Synchronize;
				public new function HRESULT(Folder2 *self, int16* pbHaveToShowWebViewBarricade) get_HaveToShowWebViewBarricade;
				public new function HRESULT(Folder2 *self) DismissedWebViewBarricade;
			}
		}
		[CRepr]
		public struct Folder3 : Folder2
		{
			public const new Guid IID = .(0xa7ae5f64, 0xc4d7, 0x4d7f, 0x93, 0x07, 0x4d, 0x24, 0xee, 0x54, 0xb8, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_ShowWebViewBarricade(int16* pbShowWebViewBarricade) mut
			{
				return VT.get_ShowWebViewBarricade(&this, pbShowWebViewBarricade);
			}
			public HRESULT put_ShowWebViewBarricade(int16 bShowWebViewBarricade) mut
			{
				return VT.put_ShowWebViewBarricade(&this, bShowWebViewBarricade);
			}
			[CRepr]
			public struct VTable : Folder2.VTable
			{
				public new function HRESULT(Folder3 *self, int16* pbShowWebViewBarricade) get_ShowWebViewBarricade;
				public new function HRESULT(Folder3 *self, int16 bShowWebViewBarricade) put_ShowWebViewBarricade;
			}
		}
		[CRepr]
		public struct FolderItem2 : FolderItem
		{
			public const new Guid IID = .(0xedc817aa, 0x92b8, 0x11d1, 0xb0, 0x75, 0x00, 0xc0, 0x4f, 0xc3, 0x3a, 0xa5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvokeVerbEx(VARIANT vVerb, VARIANT vArgs) mut
			{
				return VT.InvokeVerbEx(&this, vVerb, vArgs);
			}
			public HRESULT ExtendedProperty(BSTR bstrPropName, VARIANT* pvRet) mut
			{
				return VT.ExtendedProperty(&this, bstrPropName, pvRet);
			}
			[CRepr]
			public struct VTable : FolderItem.VTable
			{
				public new function HRESULT(FolderItem2 *self, VARIANT vVerb, VARIANT vArgs) InvokeVerbEx;
				public new function HRESULT(FolderItem2 *self, BSTR bstrPropName, VARIANT* pvRet) ExtendedProperty;
			}
		}
		[CRepr]
		public struct FolderItems2 : FolderItems
		{
			public const new Guid IID = .(0xc94f0ad0, 0xf363, 0x11d2, 0xa3, 0x27, 0x00, 0xc0, 0x4f, 0x8e, 0xec, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InvokeVerbEx(VARIANT vVerb, VARIANT vArgs) mut
			{
				return VT.InvokeVerbEx(&this, vVerb, vArgs);
			}
			[CRepr]
			public struct VTable : FolderItems.VTable
			{
				public new function HRESULT(FolderItems2 *self, VARIANT vVerb, VARIANT vArgs) InvokeVerbEx;
			}
		}
		[CRepr]
		public struct FolderItems3 : FolderItems2
		{
			public const new Guid IID = .(0xeaa7c309, 0xbbec, 0x49d5, 0x82, 0x1d, 0x64, 0xd9, 0x66, 0xcb, 0x66, 0x7f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Filter(int32 grfFlags, BSTR bstrFileSpec) mut
			{
				return VT.Filter(&this, grfFlags, bstrFileSpec);
			}
			public HRESULT get_Verbs(FolderItemVerbs** ppfic) mut
			{
				return VT.get_Verbs(&this, ppfic);
			}
			[CRepr]
			public struct VTable : FolderItems2.VTable
			{
				public new function HRESULT(FolderItems3 *self, int32 grfFlags, BSTR bstrFileSpec) Filter;
				public new function HRESULT(FolderItems3 *self, FolderItemVerbs** ppfic) get_Verbs;
			}
		}
		[CRepr]
		public struct IShellLinkDual : IDispatch
		{
			public const new Guid IID = .(0x88a05c00, 0xf000, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Path(BSTR* pbs) mut
			{
				return VT.get_Path(&this, pbs);
			}
			public HRESULT put_Path(BSTR bs) mut
			{
				return VT.put_Path(&this, bs);
			}
			public HRESULT get_Description(BSTR* pbs) mut
			{
				return VT.get_Description(&this, pbs);
			}
			public HRESULT put_Description(BSTR bs) mut
			{
				return VT.put_Description(&this, bs);
			}
			public HRESULT get_WorkingDirectory(BSTR* pbs) mut
			{
				return VT.get_WorkingDirectory(&this, pbs);
			}
			public HRESULT put_WorkingDirectory(BSTR bs) mut
			{
				return VT.put_WorkingDirectory(&this, bs);
			}
			public HRESULT get_Arguments(BSTR* pbs) mut
			{
				return VT.get_Arguments(&this, pbs);
			}
			public HRESULT put_Arguments(BSTR bs) mut
			{
				return VT.put_Arguments(&this, bs);
			}
			public HRESULT get_Hotkey(int32* piHK) mut
			{
				return VT.get_Hotkey(&this, piHK);
			}
			public HRESULT put_Hotkey(int32 iHK) mut
			{
				return VT.put_Hotkey(&this, iHK);
			}
			public HRESULT get_ShowCommand(int32* piShowCommand) mut
			{
				return VT.get_ShowCommand(&this, piShowCommand);
			}
			public HRESULT put_ShowCommand(int32 iShowCommand) mut
			{
				return VT.put_ShowCommand(&this, iShowCommand);
			}
			public HRESULT Resolve(int32 fFlags) mut
			{
				return VT.Resolve(&this, fFlags);
			}
			public HRESULT GetIconLocation(BSTR* pbs, int32* piIcon) mut
			{
				return VT.GetIconLocation(&this, pbs, piIcon);
			}
			public HRESULT SetIconLocation(BSTR bs, int32 iIcon) mut
			{
				return VT.SetIconLocation(&this, bs, iIcon);
			}
			public HRESULT Save(VARIANT vWhere) mut
			{
				return VT.Save(&this, vWhere);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellLinkDual *self, BSTR* pbs) get_Path;
				public new function HRESULT(IShellLinkDual *self, BSTR bs) put_Path;
				public new function HRESULT(IShellLinkDual *self, BSTR* pbs) get_Description;
				public new function HRESULT(IShellLinkDual *self, BSTR bs) put_Description;
				public new function HRESULT(IShellLinkDual *self, BSTR* pbs) get_WorkingDirectory;
				public new function HRESULT(IShellLinkDual *self, BSTR bs) put_WorkingDirectory;
				public new function HRESULT(IShellLinkDual *self, BSTR* pbs) get_Arguments;
				public new function HRESULT(IShellLinkDual *self, BSTR bs) put_Arguments;
				public new function HRESULT(IShellLinkDual *self, int32* piHK) get_Hotkey;
				public new function HRESULT(IShellLinkDual *self, int32 iHK) put_Hotkey;
				public new function HRESULT(IShellLinkDual *self, int32* piShowCommand) get_ShowCommand;
				public new function HRESULT(IShellLinkDual *self, int32 iShowCommand) put_ShowCommand;
				public new function HRESULT(IShellLinkDual *self, int32 fFlags) Resolve;
				public new function HRESULT(IShellLinkDual *self, BSTR* pbs, int32* piIcon) GetIconLocation;
				public new function HRESULT(IShellLinkDual *self, BSTR bs, int32 iIcon) SetIconLocation;
				public new function HRESULT(IShellLinkDual *self, VARIANT vWhere) Save;
			}
		}
		[CRepr]
		public struct IShellLinkDual2 : IShellLinkDual
		{
			public const new Guid IID = .(0x317ee249, 0xf12e, 0x11d2, 0xb1, 0xe4, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Target(FolderItem** ppfi) mut
			{
				return VT.get_Target(&this, ppfi);
			}
			[CRepr]
			public struct VTable : IShellLinkDual.VTable
			{
				public new function HRESULT(IShellLinkDual2 *self, FolderItem** ppfi) get_Target;
			}
		}
		[CRepr]
		public struct IShellFolderViewDual : IDispatch
		{
			public const new Guid IID = .(0xe7a1af80, 0x4d96, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT get_Folder(Folder** ppid) mut
			{
				return VT.get_Folder(&this, ppid);
			}
			public HRESULT SelectedItems(FolderItems** ppid) mut
			{
				return VT.SelectedItems(&this, ppid);
			}
			public HRESULT get_FocusedItem(FolderItem** ppid) mut
			{
				return VT.get_FocusedItem(&this, ppid);
			}
			public HRESULT SelectItem(VARIANT* pvfi, int32 dwFlags) mut
			{
				return VT.SelectItem(&this, pvfi, dwFlags);
			}
			public HRESULT PopupItemMenu(FolderItem* pfi, VARIANT vx, VARIANT vy, BSTR* pbs) mut
			{
				return VT.PopupItemMenu(&this, pfi, vx, vy, pbs);
			}
			public HRESULT get_Script(IDispatch** ppDisp) mut
			{
				return VT.get_Script(&this, ppDisp);
			}
			public HRESULT get_ViewOptions(int32* plViewOptions) mut
			{
				return VT.get_ViewOptions(&this, plViewOptions);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellFolderViewDual *self, IDispatch** ppid) get_Application;
				public new function HRESULT(IShellFolderViewDual *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(IShellFolderViewDual *self, Folder** ppid) get_Folder;
				public new function HRESULT(IShellFolderViewDual *self, FolderItems** ppid) SelectedItems;
				public new function HRESULT(IShellFolderViewDual *self, FolderItem** ppid) get_FocusedItem;
				public new function HRESULT(IShellFolderViewDual *self, VARIANT* pvfi, int32 dwFlags) SelectItem;
				public new function HRESULT(IShellFolderViewDual *self, FolderItem* pfi, VARIANT vx, VARIANT vy, BSTR* pbs) PopupItemMenu;
				public new function HRESULT(IShellFolderViewDual *self, IDispatch** ppDisp) get_Script;
				public new function HRESULT(IShellFolderViewDual *self, int32* plViewOptions) get_ViewOptions;
			}
		}
		[CRepr]
		public struct IShellFolderViewDual2 : IShellFolderViewDual
		{
			public const new Guid IID = .(0x31c147b6, 0x0ade, 0x4a3c, 0xb5, 0x14, 0xdd, 0xf9, 0x32, 0xef, 0x6d, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_CurrentViewMode(uint32* pViewMode) mut
			{
				return VT.get_CurrentViewMode(&this, pViewMode);
			}
			public HRESULT put_CurrentViewMode(uint32 ViewMode) mut
			{
				return VT.put_CurrentViewMode(&this, ViewMode);
			}
			public HRESULT SelectItemRelative(int32 iRelative) mut
			{
				return VT.SelectItemRelative(&this, iRelative);
			}
			[CRepr]
			public struct VTable : IShellFolderViewDual.VTable
			{
				public new function HRESULT(IShellFolderViewDual2 *self, uint32* pViewMode) get_CurrentViewMode;
				public new function HRESULT(IShellFolderViewDual2 *self, uint32 ViewMode) put_CurrentViewMode;
				public new function HRESULT(IShellFolderViewDual2 *self, int32 iRelative) SelectItemRelative;
			}
		}
		[CRepr]
		public struct IShellFolderViewDual3 : IShellFolderViewDual2
		{
			public const new Guid IID = .(0x29ec8e6c, 0x46d3, 0x411f, 0xba, 0xaa, 0x61, 0x1a, 0x6c, 0x9c, 0xac, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_GroupBy(BSTR* pbstrGroupBy) mut
			{
				return VT.get_GroupBy(&this, pbstrGroupBy);
			}
			public HRESULT put_GroupBy(BSTR bstrGroupBy) mut
			{
				return VT.put_GroupBy(&this, bstrGroupBy);
			}
			public HRESULT get_FolderFlags(uint32* pdwFlags) mut
			{
				return VT.get_FolderFlags(&this, pdwFlags);
			}
			public HRESULT put_FolderFlags(uint32 dwFlags) mut
			{
				return VT.put_FolderFlags(&this, dwFlags);
			}
			public HRESULT get_SortColumns(BSTR* pbstrSortColumns) mut
			{
				return VT.get_SortColumns(&this, pbstrSortColumns);
			}
			public HRESULT put_SortColumns(BSTR bstrSortColumns) mut
			{
				return VT.put_SortColumns(&this, bstrSortColumns);
			}
			public HRESULT put_IconSize(int32 iIconSize) mut
			{
				return VT.put_IconSize(&this, iIconSize);
			}
			public HRESULT get_IconSize(int32* piIconSize) mut
			{
				return VT.get_IconSize(&this, piIconSize);
			}
			public HRESULT FilterView(BSTR bstrFilterText) mut
			{
				return VT.FilterView(&this, bstrFilterText);
			}
			[CRepr]
			public struct VTable : IShellFolderViewDual2.VTable
			{
				public new function HRESULT(IShellFolderViewDual3 *self, BSTR* pbstrGroupBy) get_GroupBy;
				public new function HRESULT(IShellFolderViewDual3 *self, BSTR bstrGroupBy) put_GroupBy;
				public new function HRESULT(IShellFolderViewDual3 *self, uint32* pdwFlags) get_FolderFlags;
				public new function HRESULT(IShellFolderViewDual3 *self, uint32 dwFlags) put_FolderFlags;
				public new function HRESULT(IShellFolderViewDual3 *self, BSTR* pbstrSortColumns) get_SortColumns;
				public new function HRESULT(IShellFolderViewDual3 *self, BSTR bstrSortColumns) put_SortColumns;
				public new function HRESULT(IShellFolderViewDual3 *self, int32 iIconSize) put_IconSize;
				public new function HRESULT(IShellFolderViewDual3 *self, int32* piIconSize) get_IconSize;
				public new function HRESULT(IShellFolderViewDual3 *self, BSTR bstrFilterText) FilterView;
			}
		}
		[CRepr]
		public struct IShellDispatch : IDispatch
		{
			public const new Guid IID = .(0xd8f015c0, 0xc278, 0x11ce, 0xa4, 0x9e, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT get_Application(IDispatch** ppid) mut
			{
				return VT.get_Application(&this, ppid);
			}
			public HRESULT get_Parent(IDispatch** ppid) mut
			{
				return VT.get_Parent(&this, ppid);
			}
			public HRESULT NameSpace(VARIANT vDir, Folder** ppsdf) mut
			{
				return VT.NameSpace(&this, vDir, ppsdf);
			}
			public HRESULT BrowseForFolder(int32 Hwnd, BSTR Title, int32 Options, VARIANT RootFolder, Folder** ppsdf) mut
			{
				return VT.BrowseForFolder(&this, Hwnd, Title, Options, RootFolder, ppsdf);
			}
			public HRESULT Windows(IDispatch** ppid) mut
			{
				return VT.Windows(&this, ppid);
			}
			public HRESULT Open(VARIANT vDir) mut
			{
				return VT.Open(&this, vDir);
			}
			public HRESULT Explore(VARIANT vDir) mut
			{
				return VT.Explore(&this, vDir);
			}
			public HRESULT MinimizeAll() mut
			{
				return VT.MinimizeAll(&this);
			}
			public HRESULT UndoMinimizeALL() mut
			{
				return VT.UndoMinimizeALL(&this);
			}
			public HRESULT FileRun() mut
			{
				return VT.FileRun(&this);
			}
			public HRESULT CascadeWindows() mut
			{
				return VT.CascadeWindows(&this);
			}
			public HRESULT TileVertically() mut
			{
				return VT.TileVertically(&this);
			}
			public HRESULT TileHorizontally() mut
			{
				return VT.TileHorizontally(&this);
			}
			public HRESULT ShutdownWindows() mut
			{
				return VT.ShutdownWindows(&this);
			}
			public HRESULT Suspend() mut
			{
				return VT.Suspend(&this);
			}
			public HRESULT EjectPC() mut
			{
				return VT.EjectPC(&this);
			}
			public HRESULT SetTime() mut
			{
				return VT.SetTime(&this);
			}
			public HRESULT TrayProperties() mut
			{
				return VT.TrayProperties(&this);
			}
			public HRESULT Help() mut
			{
				return VT.Help(&this);
			}
			public HRESULT FindFiles() mut
			{
				return VT.FindFiles(&this);
			}
			public HRESULT FindComputer() mut
			{
				return VT.FindComputer(&this);
			}
			public HRESULT RefreshMenu() mut
			{
				return VT.RefreshMenu(&this);
			}
			public HRESULT ControlPanelItem(BSTR bstrDir) mut
			{
				return VT.ControlPanelItem(&this, bstrDir);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IShellDispatch *self, IDispatch** ppid) get_Application;
				public new function HRESULT(IShellDispatch *self, IDispatch** ppid) get_Parent;
				public new function HRESULT(IShellDispatch *self, VARIANT vDir, Folder** ppsdf) NameSpace;
				public new function HRESULT(IShellDispatch *self, int32 Hwnd, BSTR Title, int32 Options, VARIANT RootFolder, Folder** ppsdf) BrowseForFolder;
				public new function HRESULT(IShellDispatch *self, IDispatch** ppid) Windows;
				public new function HRESULT(IShellDispatch *self, VARIANT vDir) Open;
				public new function HRESULT(IShellDispatch *self, VARIANT vDir) Explore;
				public new function HRESULT(IShellDispatch *self) MinimizeAll;
				public new function HRESULT(IShellDispatch *self) UndoMinimizeALL;
				public new function HRESULT(IShellDispatch *self) FileRun;
				public new function HRESULT(IShellDispatch *self) CascadeWindows;
				public new function HRESULT(IShellDispatch *self) TileVertically;
				public new function HRESULT(IShellDispatch *self) TileHorizontally;
				public new function HRESULT(IShellDispatch *self) ShutdownWindows;
				public new function HRESULT(IShellDispatch *self) Suspend;
				public new function HRESULT(IShellDispatch *self) EjectPC;
				public new function HRESULT(IShellDispatch *self) SetTime;
				public new function HRESULT(IShellDispatch *self) TrayProperties;
				public new function HRESULT(IShellDispatch *self) Help;
				public new function HRESULT(IShellDispatch *self) FindFiles;
				public new function HRESULT(IShellDispatch *self) FindComputer;
				public new function HRESULT(IShellDispatch *self) RefreshMenu;
				public new function HRESULT(IShellDispatch *self, BSTR bstrDir) ControlPanelItem;
			}
		}
		[CRepr]
		public struct IShellDispatch2 : IShellDispatch
		{
			public const new Guid IID = .(0xa4c6892c, 0x3ba9, 0x11d2, 0x9d, 0xea, 0x00, 0xc0, 0x4f, 0xb1, 0x61, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT IsRestricted(BSTR Group, BSTR Restriction, int32* plRestrictValue) mut
			{
				return VT.IsRestricted(&this, Group, Restriction, plRestrictValue);
			}
			public HRESULT ShellExecute(BSTR File, VARIANT vArgs, VARIANT vDir, VARIANT vOperation, VARIANT vShow) mut
			{
				return VT.ShellExecute(&this, File, vArgs, vDir, vOperation, vShow);
			}
			public HRESULT FindPrinter(BSTR name, BSTR location, BSTR model) mut
			{
				return VT.FindPrinter(&this, name, location, model);
			}
			public HRESULT GetSystemInformation(BSTR name, VARIANT* pv) mut
			{
				return VT.GetSystemInformation(&this, name, pv);
			}
			public HRESULT ServiceStart(BSTR ServiceName, VARIANT Persistent, VARIANT* pSuccess) mut
			{
				return VT.ServiceStart(&this, ServiceName, Persistent, pSuccess);
			}
			public HRESULT ServiceStop(BSTR ServiceName, VARIANT Persistent, VARIANT* pSuccess) mut
			{
				return VT.ServiceStop(&this, ServiceName, Persistent, pSuccess);
			}
			public HRESULT IsServiceRunning(BSTR ServiceName, VARIANT* pRunning) mut
			{
				return VT.IsServiceRunning(&this, ServiceName, pRunning);
			}
			public HRESULT CanStartStopService(BSTR ServiceName, VARIANT* pCanStartStop) mut
			{
				return VT.CanStartStopService(&this, ServiceName, pCanStartStop);
			}
			public HRESULT ShowBrowserBar(BSTR bstrClsid, VARIANT bShow, VARIANT* pSuccess) mut
			{
				return VT.ShowBrowserBar(&this, bstrClsid, bShow, pSuccess);
			}
			[CRepr]
			public struct VTable : IShellDispatch.VTable
			{
				public new function HRESULT(IShellDispatch2 *self, BSTR Group, BSTR Restriction, int32* plRestrictValue) IsRestricted;
				public new function HRESULT(IShellDispatch2 *self, BSTR File, VARIANT vArgs, VARIANT vDir, VARIANT vOperation, VARIANT vShow) ShellExecute;
				public new function HRESULT(IShellDispatch2 *self, BSTR name, BSTR location, BSTR model) FindPrinter;
				public new function HRESULT(IShellDispatch2 *self, BSTR name, VARIANT* pv) GetSystemInformation;
				public new function HRESULT(IShellDispatch2 *self, BSTR ServiceName, VARIANT Persistent, VARIANT* pSuccess) ServiceStart;
				public new function HRESULT(IShellDispatch2 *self, BSTR ServiceName, VARIANT Persistent, VARIANT* pSuccess) ServiceStop;
				public new function HRESULT(IShellDispatch2 *self, BSTR ServiceName, VARIANT* pRunning) IsServiceRunning;
				public new function HRESULT(IShellDispatch2 *self, BSTR ServiceName, VARIANT* pCanStartStop) CanStartStopService;
				public new function HRESULT(IShellDispatch2 *self, BSTR bstrClsid, VARIANT bShow, VARIANT* pSuccess) ShowBrowserBar;
			}
		}
		[CRepr]
		public struct IShellDispatch3 : IShellDispatch2
		{
			public const new Guid IID = .(0x177160ca, 0xbb5a, 0x411c, 0x84, 0x1d, 0xbd, 0x38, 0xfa, 0xcd, 0xea, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddToRecent(VARIANT varFile, BSTR bstrCategory) mut
			{
				return VT.AddToRecent(&this, varFile, bstrCategory);
			}
			[CRepr]
			public struct VTable : IShellDispatch2.VTable
			{
				public new function HRESULT(IShellDispatch3 *self, VARIANT varFile, BSTR bstrCategory) AddToRecent;
			}
		}
		[CRepr]
		public struct IShellDispatch4 : IShellDispatch3
		{
			public const new Guid IID = .(0xefd84b2d, 0x4bcf, 0x4298, 0xbe, 0x25, 0xeb, 0x54, 0x2a, 0x59, 0xfb, 0xda);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WindowsSecurity() mut
			{
				return VT.WindowsSecurity(&this);
			}
			public HRESULT ToggleDesktop() mut
			{
				return VT.ToggleDesktop(&this);
			}
			public HRESULT ExplorerPolicy(BSTR bstrPolicyName, VARIANT* pValue) mut
			{
				return VT.ExplorerPolicy(&this, bstrPolicyName, pValue);
			}
			public HRESULT GetSetting(int32 lSetting, int16* pResult) mut
			{
				return VT.GetSetting(&this, lSetting, pResult);
			}
			[CRepr]
			public struct VTable : IShellDispatch3.VTable
			{
				public new function HRESULT(IShellDispatch4 *self) WindowsSecurity;
				public new function HRESULT(IShellDispatch4 *self) ToggleDesktop;
				public new function HRESULT(IShellDispatch4 *self, BSTR bstrPolicyName, VARIANT* pValue) ExplorerPolicy;
				public new function HRESULT(IShellDispatch4 *self, int32 lSetting, int16* pResult) GetSetting;
			}
		}
		[CRepr]
		public struct IShellDispatch5 : IShellDispatch4
		{
			public const new Guid IID = .(0x866738b9, 0x6cf2, 0x4de8, 0x87, 0x67, 0xf7, 0x94, 0xeb, 0xe7, 0x4f, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT WindowSwitcher() mut
			{
				return VT.WindowSwitcher(&this);
			}
			[CRepr]
			public struct VTable : IShellDispatch4.VTable
			{
				public new function HRESULT(IShellDispatch5 *self) WindowSwitcher;
			}
		}
		[CRepr]
		public struct IShellDispatch6 : IShellDispatch5
		{
			public const new Guid IID = .(0x286e6f1b, 0x7113, 0x4355, 0x95, 0x62, 0x96, 0xb7, 0xe9, 0xd6, 0x4c, 0x54);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SearchCommand() mut
			{
				return VT.SearchCommand(&this);
			}
			[CRepr]
			public struct VTable : IShellDispatch5.VTable
			{
				public new function HRESULT(IShellDispatch6 *self) SearchCommand;
			}
		}
		[CRepr]
		public struct IFileSearchBand : IDispatch
		{
			public const new Guid IID = .(0x2d91eea1, 0x9932, 0x11d2, 0xbe, 0x86, 0x00, 0xa0, 0xc9, 0xa8, 0x3d, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFocus() mut
			{
				return VT.SetFocus(&this);
			}
			public HRESULT SetSearchParameters(BSTR* pbstrSearchID, int16 bNavToResults, VARIANT* pvarScope, VARIANT* pvarQueryFile) mut
			{
				return VT.SetSearchParameters(&this, pbstrSearchID, bNavToResults, pvarScope, pvarQueryFile);
			}
			public HRESULT get_SearchID(BSTR* pbstrSearchID) mut
			{
				return VT.get_SearchID(&this, pbstrSearchID);
			}
			public HRESULT get_Scope(VARIANT* pvarScope) mut
			{
				return VT.get_Scope(&this, pvarScope);
			}
			public HRESULT get_QueryFile(VARIANT* pvarFile) mut
			{
				return VT.get_QueryFile(&this, pvarFile);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IFileSearchBand *self) SetFocus;
				public new function HRESULT(IFileSearchBand *self, BSTR* pbstrSearchID, int16 bNavToResults, VARIANT* pvarScope, VARIANT* pvarQueryFile) SetSearchParameters;
				public new function HRESULT(IFileSearchBand *self, BSTR* pbstrSearchID) get_SearchID;
				public new function HRESULT(IFileSearchBand *self, VARIANT* pvarScope) get_Scope;
				public new function HRESULT(IFileSearchBand *self, VARIANT* pvarFile) get_QueryFile;
			}
		}
		[CRepr]
		public struct IWebWizardHost : IDispatch
		{
			public const new Guid IID = .(0x18bcc359, 0x4990, 0x4bfb, 0xb9, 0x51, 0x3c, 0x83, 0x70, 0x2b, 0xe5, 0xf9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FinalBack() mut
			{
				return VT.FinalBack(&this);
			}
			public HRESULT FinalNext() mut
			{
				return VT.FinalNext(&this);
			}
			public HRESULT Cancel() mut
			{
				return VT.Cancel(&this);
			}
			public HRESULT put_Caption(BSTR bstrCaption) mut
			{
				return VT.put_Caption(&this, bstrCaption);
			}
			public HRESULT get_Caption(BSTR* pbstrCaption) mut
			{
				return VT.get_Caption(&this, pbstrCaption);
			}
			public HRESULT put_Property(BSTR bstrPropertyName, VARIANT* pvProperty) mut
			{
				return VT.put_Property(&this, bstrPropertyName, pvProperty);
			}
			public HRESULT get_Property(BSTR bstrPropertyName, VARIANT* pvProperty) mut
			{
				return VT.get_Property(&this, bstrPropertyName, pvProperty);
			}
			public HRESULT SetWizardButtons(int16 vfEnableBack, int16 vfEnableNext, int16 vfLastPage) mut
			{
				return VT.SetWizardButtons(&this, vfEnableBack, vfEnableNext, vfLastPage);
			}
			public HRESULT SetHeaderText(BSTR bstrHeaderTitle, BSTR bstrHeaderSubtitle) mut
			{
				return VT.SetHeaderText(&this, bstrHeaderTitle, bstrHeaderSubtitle);
			}
			[CRepr]
			public struct VTable : IDispatch.VTable
			{
				public new function HRESULT(IWebWizardHost *self) FinalBack;
				public new function HRESULT(IWebWizardHost *self) FinalNext;
				public new function HRESULT(IWebWizardHost *self) Cancel;
				public new function HRESULT(IWebWizardHost *self, BSTR bstrCaption) put_Caption;
				public new function HRESULT(IWebWizardHost *self, BSTR* pbstrCaption) get_Caption;
				public new function HRESULT(IWebWizardHost *self, BSTR bstrPropertyName, VARIANT* pvProperty) put_Property;
				public new function HRESULT(IWebWizardHost *self, BSTR bstrPropertyName, VARIANT* pvProperty) get_Property;
				public new function HRESULT(IWebWizardHost *self, int16 vfEnableBack, int16 vfEnableNext, int16 vfLastPage) SetWizardButtons;
				public new function HRESULT(IWebWizardHost *self, BSTR bstrHeaderTitle, BSTR bstrHeaderSubtitle) SetHeaderText;
			}
		}
		[CRepr]
		public struct IWebWizardHost2 : IWebWizardHost
		{
			public const new Guid IID = .(0xf9c013dc, 0x3c23, 0x4041, 0x8e, 0x39, 0xcf, 0xb4, 0x02, 0xf7, 0xea, 0x59);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SignString(BSTR value, BSTR* signedValue) mut
			{
				return VT.SignString(&this, value, signedValue);
			}
			[CRepr]
			public struct VTable : IWebWizardHost.VTable
			{
				public new function HRESULT(IWebWizardHost2 *self, BSTR value, BSTR* signedValue) SignString;
			}
		}
		[CRepr]
		public struct INewWDEvents : IWebWizardHost
		{
			public const new Guid IID = .(0x0751c551, 0x7568, 0x41c9, 0x8e, 0x5b, 0xe2, 0x2e, 0x38, 0x91, 0x92, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PassportAuthenticate(BSTR bstrSignInUrl, int16* pvfAuthenitcated) mut
			{
				return VT.PassportAuthenticate(&this, bstrSignInUrl, pvfAuthenitcated);
			}
			[CRepr]
			public struct VTable : IWebWizardHost.VTable
			{
				public new function HRESULT(INewWDEvents *self, BSTR bstrSignInUrl, int16* pvfAuthenitcated) PassportAuthenticate;
			}
		}
		[CRepr]
		public struct IAutoComplete : IUnknown
		{
			public const new Guid IID = .(0x00bb2762, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(HWND hwndEdit, IUnknown* punkACL, PWSTR pwszRegKeyPath, PWSTR pwszQuickComplete) mut
			{
				return VT.Init(&this, hwndEdit, punkACL, pwszRegKeyPath, pwszQuickComplete);
			}
			public HRESULT Enable(BOOL fEnable) mut
			{
				return VT.Enable(&this, fEnable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAutoComplete *self, HWND hwndEdit, IUnknown* punkACL, PWSTR pwszRegKeyPath, PWSTR pwszQuickComplete) Init;
				public new function HRESULT(IAutoComplete *self, BOOL fEnable) Enable;
			}
		}
		[CRepr]
		public struct IAutoComplete2 : IAutoComplete
		{
			public const new Guid IID = .(0xeac04bc0, 0x3791, 0x11d2, 0xbb, 0x95, 0x00, 0x60, 0x97, 0x7b, 0x46, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOptions(uint32 dwFlag) mut
			{
				return VT.SetOptions(&this, dwFlag);
			}
			public HRESULT GetOptions(uint32* pdwFlag) mut
			{
				return VT.GetOptions(&this, pdwFlag);
			}
			[CRepr]
			public struct VTable : IAutoComplete.VTable
			{
				public new function HRESULT(IAutoComplete2 *self, uint32 dwFlag) SetOptions;
				public new function HRESULT(IAutoComplete2 *self, uint32* pdwFlag) GetOptions;
			}
		}
		[CRepr]
		public struct IEnumACString : IEnumString
		{
			public const new Guid IID = .(0x8e74c210, 0xcf9d, 0x4eaf, 0xa4, 0x03, 0x73, 0x56, 0x42, 0x8f, 0x0a, 0x5a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT NextItem(char16* pszUrl, uint32 cchMax, uint32* pulSortIndex) mut
			{
				return VT.NextItem(&this, pszUrl, cchMax, pulSortIndex);
			}
			public HRESULT SetEnumOptions(uint32 dwOptions) mut
			{
				return VT.SetEnumOptions(&this, dwOptions);
			}
			public HRESULT GetEnumOptions(uint32* pdwOptions) mut
			{
				return VT.GetEnumOptions(&this, pdwOptions);
			}
			[CRepr]
			public struct VTable : IEnumString.VTable
			{
				public new function HRESULT(IEnumACString *self, char16* pszUrl, uint32 cchMax, uint32* pulSortIndex) NextItem;
				public new function HRESULT(IEnumACString *self, uint32 dwOptions) SetEnumOptions;
				public new function HRESULT(IEnumACString *self, uint32* pdwOptions) GetEnumOptions;
			}
		}
		[CRepr]
		public struct IDataObjectAsyncCapability : IUnknown
		{
			public const new Guid IID = .(0x3d8b0590, 0xf691, 0x11d2, 0x8e, 0xa9, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAsyncMode(BOOL fDoOpAsync) mut
			{
				return VT.SetAsyncMode(&this, fDoOpAsync);
			}
			public HRESULT GetAsyncMode(BOOL* pfIsOpAsync) mut
			{
				return VT.GetAsyncMode(&this, pfIsOpAsync);
			}
			public HRESULT StartOperation(IBindCtx* pbcReserved) mut
			{
				return VT.StartOperation(&this, pbcReserved);
			}
			public HRESULT InOperation(BOOL* pfInAsyncOp) mut
			{
				return VT.InOperation(&this, pfInAsyncOp);
			}
			public HRESULT EndOperation(HRESULT hResult, IBindCtx* pbcReserved, uint32 dwEffects) mut
			{
				return VT.EndOperation(&this, hResult, pbcReserved, dwEffects);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDataObjectAsyncCapability *self, BOOL fDoOpAsync) SetAsyncMode;
				public new function HRESULT(IDataObjectAsyncCapability *self, BOOL* pfIsOpAsync) GetAsyncMode;
				public new function HRESULT(IDataObjectAsyncCapability *self, IBindCtx* pbcReserved) StartOperation;
				public new function HRESULT(IDataObjectAsyncCapability *self, BOOL* pfInAsyncOp) InOperation;
				public new function HRESULT(IDataObjectAsyncCapability *self, HRESULT hResult, IBindCtx* pbcReserved, uint32 dwEffects) EndOperation;
			}
		}
		[CRepr]
		public struct IExtractIconA : IUnknown
		{
			public const new Guid IID = .(0x000214eb, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIconLocation(uint32 uFlags, uint8* pszIconFile, uint32 cchMax, int32* piIndex, uint32* pwFlags) mut
			{
				return VT.GetIconLocation(&this, uFlags, pszIconFile, cchMax, piIndex, pwFlags);
			}
			public HRESULT Extract(PSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) mut
			{
				return VT.Extract(&this, pszFile, nIconIndex, phiconLarge, phiconSmall, nIconSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtractIconA *self, uint32 uFlags, uint8* pszIconFile, uint32 cchMax, int32* piIndex, uint32* pwFlags) GetIconLocation;
				public new function HRESULT(IExtractIconA *self, PSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) Extract;
			}
		}
		[CRepr]
		public struct IExtractIconW : IUnknown
		{
			public const new Guid IID = .(0x000214fa, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIconLocation(uint32 uFlags, char16* pszIconFile, uint32 cchMax, int32* piIndex, uint32* pwFlags) mut
			{
				return VT.GetIconLocation(&this, uFlags, pszIconFile, cchMax, piIndex, pwFlags);
			}
			public HRESULT Extract(PWSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) mut
			{
				return VT.Extract(&this, pszFile, nIconIndex, phiconLarge, phiconSmall, nIconSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtractIconW *self, uint32 uFlags, char16* pszIconFile, uint32 cchMax, int32* piIndex, uint32* pwFlags) GetIconLocation;
				public new function HRESULT(IExtractIconW *self, PWSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) Extract;
			}
		}
		[CRepr]
		public struct IShellIconOverlayManager : IUnknown
		{
			public const new Guid IID = .(0xf10b5e34, 0xdd3b, 0x42a7, 0xaa, 0x7d, 0x2f, 0x4e, 0xc5, 0x4b, 0xb0, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFileOverlayInfo(PWSTR pwszPath, uint32 dwAttrib, int32* pIndex, uint32 dwflags) mut
			{
				return VT.GetFileOverlayInfo(&this, pwszPath, dwAttrib, pIndex, dwflags);
			}
			public HRESULT GetReservedOverlayInfo(PWSTR pwszPath, uint32 dwAttrib, int32* pIndex, uint32 dwflags, int32 iReservedID) mut
			{
				return VT.GetReservedOverlayInfo(&this, pwszPath, dwAttrib, pIndex, dwflags, iReservedID);
			}
			public HRESULT RefreshOverlayImages(uint32 dwFlags) mut
			{
				return VT.RefreshOverlayImages(&this, dwFlags);
			}
			public HRESULT LoadNonloadedOverlayIdentifiers() mut
			{
				return VT.LoadNonloadedOverlayIdentifiers(&this);
			}
			public HRESULT OverlayIndexFromImageIndex(int32 iImage, int32* piIndex, BOOL fAdd) mut
			{
				return VT.OverlayIndexFromImageIndex(&this, iImage, piIndex, fAdd);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellIconOverlayManager *self, PWSTR pwszPath, uint32 dwAttrib, int32* pIndex, uint32 dwflags) GetFileOverlayInfo;
				public new function HRESULT(IShellIconOverlayManager *self, PWSTR pwszPath, uint32 dwAttrib, int32* pIndex, uint32 dwflags, int32 iReservedID) GetReservedOverlayInfo;
				public new function HRESULT(IShellIconOverlayManager *self, uint32 dwFlags) RefreshOverlayImages;
				public new function HRESULT(IShellIconOverlayManager *self) LoadNonloadedOverlayIdentifiers;
				public new function HRESULT(IShellIconOverlayManager *self, int32 iImage, int32* piIndex, BOOL fAdd) OverlayIndexFromImageIndex;
			}
		}
		[CRepr]
		public struct IShellIconOverlay : IUnknown
		{
			public const new Guid IID = .(0x7d688a70, 0xc613, 0x11d0, 0x99, 0x9b, 0x00, 0xc0, 0x4f, 0xd6, 0x55, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOverlayIndex(ITEMIDLIST* pidl, int32* pIndex) mut
			{
				return VT.GetOverlayIndex(&this, pidl, pIndex);
			}
			public HRESULT GetOverlayIconIndex(ITEMIDLIST* pidl, int32* pIconIndex) mut
			{
				return VT.GetOverlayIconIndex(&this, pidl, pIconIndex);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellIconOverlay *self, ITEMIDLIST* pidl, int32* pIndex) GetOverlayIndex;
				public new function HRESULT(IShellIconOverlay *self, ITEMIDLIST* pidl, int32* pIconIndex) GetOverlayIconIndex;
			}
		}
		[CRepr]
		public struct IURLSearchHook : IUnknown
		{
			public const new Guid IID = .(0xac60f6a0, 0x0fd9, 0x11d0, 0x99, 0xcb, 0x00, 0xc0, 0x4f, 0xd6, 0x44, 0x97);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Translate(char16* pwszSearchURL, uint32 cchBufferSize) mut
			{
				return VT.Translate(&this, pwszSearchURL, cchBufferSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IURLSearchHook *self, char16* pwszSearchURL, uint32 cchBufferSize) Translate;
			}
		}
		[CRepr]
		public struct ISearchContext : IUnknown
		{
			public const new Guid IID = .(0x09f656a2, 0x41af, 0x480c, 0x88, 0xf7, 0x16, 0xcc, 0x0d, 0x16, 0x46, 0x15);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSearchUrl(BSTR* pbstrSearchUrl) mut
			{
				return VT.GetSearchUrl(&this, pbstrSearchUrl);
			}
			public HRESULT GetSearchText(BSTR* pbstrSearchText) mut
			{
				return VT.GetSearchText(&this, pbstrSearchText);
			}
			public HRESULT GetSearchStyle(uint32* pdwSearchStyle) mut
			{
				return VT.GetSearchStyle(&this, pdwSearchStyle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISearchContext *self, BSTR* pbstrSearchUrl) GetSearchUrl;
				public new function HRESULT(ISearchContext *self, BSTR* pbstrSearchText) GetSearchText;
				public new function HRESULT(ISearchContext *self, uint32* pdwSearchStyle) GetSearchStyle;
			}
		}
		[CRepr]
		public struct IURLSearchHook2 : IURLSearchHook
		{
			public const new Guid IID = .(0x5ee44da4, 0x6d32, 0x46e3, 0x86, 0xbc, 0x07, 0x54, 0x0d, 0xed, 0xd0, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranslateWithSearchContext(char16* pwszSearchURL, uint32 cchBufferSize, ISearchContext* pSearchContext) mut
			{
				return VT.TranslateWithSearchContext(&this, pwszSearchURL, cchBufferSize, pSearchContext);
			}
			[CRepr]
			public struct VTable : IURLSearchHook.VTable
			{
				public new function HRESULT(IURLSearchHook2 *self, char16* pwszSearchURL, uint32 cchBufferSize, ISearchContext* pSearchContext) TranslateWithSearchContext;
			}
		}
		[CRepr]
		public struct IShellDetails : IUnknown
		{
			public const new Guid IID = .(0x000214ec, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDetailsOf(ITEMIDLIST* pidl, uint32 iColumn, SHELLDETAILS* pDetails) mut
			{
				return VT.GetDetailsOf(&this, pidl, iColumn, pDetails);
			}
			public HRESULT ColumnClick(uint32 iColumn) mut
			{
				return VT.ColumnClick(&this, iColumn);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellDetails *self, ITEMIDLIST* pidl, uint32 iColumn, SHELLDETAILS* pDetails) GetDetailsOf;
				public new function HRESULT(IShellDetails *self, uint32 iColumn) ColumnClick;
			}
		}
		[CRepr]
		public struct IObjMgr : IUnknown
		{
			public const new Guid IID = .(0x00bb2761, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Append(IUnknown* punk) mut
			{
				return VT.Append(&this, punk);
			}
			public HRESULT Remove(IUnknown* punk) mut
			{
				return VT.Remove(&this, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IObjMgr *self, IUnknown* punk) Append;
				public new function HRESULT(IObjMgr *self, IUnknown* punk) Remove;
			}
		}
		[CRepr]
		public struct IACList : IUnknown
		{
			public const new Guid IID = .(0x77a130b0, 0x94fd, 0x11d0, 0xa5, 0x44, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Expand(PWSTR pszExpand) mut
			{
				return VT.Expand(&this, pszExpand);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IACList *self, PWSTR pszExpand) Expand;
			}
		}
		[CRepr]
		public struct IACList2 : IACList
		{
			public const new Guid IID = .(0x470141a0, 0x5186, 0x11d2, 0xbb, 0xb6, 0x00, 0x60, 0x97, 0x7b, 0x46, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOptions(uint32 dwFlag) mut
			{
				return VT.SetOptions(&this, dwFlag);
			}
			public HRESULT GetOptions(uint32* pdwFlag) mut
			{
				return VT.GetOptions(&this, pdwFlag);
			}
			[CRepr]
			public struct VTable : IACList.VTable
			{
				public new function HRESULT(IACList2 *self, uint32 dwFlag) SetOptions;
				public new function HRESULT(IACList2 *self, uint32* pdwFlag) GetOptions;
			}
		}
		[CRepr]
		public struct IProgressDialog : IUnknown
		{
			public const new Guid IID = .(0xebbc7c04, 0x315e, 0x11d2, 0xb6, 0x2f, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartProgressDialog(HWND hwndParent, IUnknown* punkEnableModless, uint32 dwFlags, void* pvResevered) mut
			{
				return VT.StartProgressDialog(&this, hwndParent, punkEnableModless, dwFlags, pvResevered);
			}
			public HRESULT StopProgressDialog() mut
			{
				return VT.StopProgressDialog(&this);
			}
			public HRESULT SetTitle(PWSTR pwzTitle) mut
			{
				return VT.SetTitle(&this, pwzTitle);
			}
			public HRESULT SetAnimation(HINSTANCE hInstAnimation, uint32 idAnimation) mut
			{
				return VT.SetAnimation(&this, hInstAnimation, idAnimation);
			}
			public BOOL HasUserCancelled() mut
			{
				return VT.HasUserCancelled(&this);
			}
			public HRESULT SetProgress(uint32 dwCompleted, uint32 dwTotal) mut
			{
				return VT.SetProgress(&this, dwCompleted, dwTotal);
			}
			public HRESULT SetProgress64(uint64 ullCompleted, uint64 ullTotal) mut
			{
				return VT.SetProgress64(&this, ullCompleted, ullTotal);
			}
			public HRESULT SetLine(uint32 dwLineNum, PWSTR pwzString, BOOL fCompactPath, void* pvResevered) mut
			{
				return VT.SetLine(&this, dwLineNum, pwzString, fCompactPath, pvResevered);
			}
			public HRESULT SetCancelMsg(PWSTR pwzCancelMsg, void* pvResevered) mut
			{
				return VT.SetCancelMsg(&this, pwzCancelMsg, pvResevered);
			}
			public HRESULT Timer(uint32 dwTimerAction, void* pvResevered) mut
			{
				return VT.Timer(&this, dwTimerAction, pvResevered);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IProgressDialog *self, HWND hwndParent, IUnknown* punkEnableModless, uint32 dwFlags, void* pvResevered) StartProgressDialog;
				public new function HRESULT(IProgressDialog *self) StopProgressDialog;
				public new function HRESULT(IProgressDialog *self, PWSTR pwzTitle) SetTitle;
				public new function HRESULT(IProgressDialog *self, HINSTANCE hInstAnimation, uint32 idAnimation) SetAnimation;
				public new function BOOL(IProgressDialog *self) HasUserCancelled;
				public new function HRESULT(IProgressDialog *self, uint32 dwCompleted, uint32 dwTotal) SetProgress;
				public new function HRESULT(IProgressDialog *self, uint64 ullCompleted, uint64 ullTotal) SetProgress64;
				public new function HRESULT(IProgressDialog *self, uint32 dwLineNum, PWSTR pwzString, BOOL fCompactPath, void* pvResevered) SetLine;
				public new function HRESULT(IProgressDialog *self, PWSTR pwzCancelMsg, void* pvResevered) SetCancelMsg;
				public new function HRESULT(IProgressDialog *self, uint32 dwTimerAction, void* pvResevered) Timer;
			}
		}
		[CRepr]
		public struct IDockingWindowSite : IOleWindow
		{
			public const new Guid IID = .(0x2a342fc2, 0x7b26, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetBorderDW(IUnknown* punkObj, RECT* prcBorder) mut
			{
				return VT.GetBorderDW(&this, punkObj, prcBorder);
			}
			public HRESULT RequestBorderSpaceDW(IUnknown* punkObj, RECT* pbw) mut
			{
				return VT.RequestBorderSpaceDW(&this, punkObj, pbw);
			}
			public HRESULT SetBorderSpaceDW(IUnknown* punkObj, RECT* pbw) mut
			{
				return VT.SetBorderSpaceDW(&this, punkObj, pbw);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IDockingWindowSite *self, IUnknown* punkObj, RECT* prcBorder) GetBorderDW;
				public new function HRESULT(IDockingWindowSite *self, IUnknown* punkObj, RECT* pbw) RequestBorderSpaceDW;
				public new function HRESULT(IDockingWindowSite *self, IUnknown* punkObj, RECT* pbw) SetBorderSpaceDW;
			}
		}
		[CRepr]
		public struct IShellChangeNotify : IUnknown
		{
			public const new Guid IID = .(0xd82be2b1, 0x5764, 0x11d0, 0xa9, 0x6e, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnChange(int32 lEvent, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) mut
			{
				return VT.OnChange(&this, lEvent, pidl1, pidl2);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellChangeNotify *self, int32 lEvent, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) OnChange;
			}
		}
		[CRepr]
		public struct IQueryInfo : IUnknown
		{
			public const new Guid IID = .(0x00021500, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInfoTip(QITIPF_FLAGS dwFlags, PWSTR* ppwszTip) mut
			{
				return VT.GetInfoTip(&this, dwFlags, ppwszTip);
			}
			public HRESULT GetInfoFlags(uint32* pdwFlags) mut
			{
				return VT.GetInfoFlags(&this, pdwFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryInfo *self, QITIPF_FLAGS dwFlags, PWSTR* ppwszTip) GetInfoTip;
				public new function HRESULT(IQueryInfo *self, uint32* pdwFlags) GetInfoFlags;
			}
		}
		[CRepr]
		public struct IShellFolderViewCB : IUnknown
		{
			public const new Guid IID = .(0x2047e320, 0xf2a9, 0x11ce, 0xae, 0x65, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT MessageSFVCB(SFVM_MESSAGE_ID uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.MessageSFVCB(&this, uMsg, wParam, lParam);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellFolderViewCB *self, SFVM_MESSAGE_ID uMsg, WPARAM wParam, LPARAM lParam) MessageSFVCB;
			}
		}
		[CRepr]
		public struct IShellFolderView : IUnknown
		{
			public const new Guid IID = .(0x37a378c0, 0xf82d, 0x11ce, 0xae, 0x65, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Rearrange(LPARAM lParamSort) mut
			{
				return VT.Rearrange(&this, lParamSort);
			}
			public HRESULT GetArrangeParam(LPARAM* plParamSort) mut
			{
				return VT.GetArrangeParam(&this, plParamSort);
			}
			public HRESULT ArrangeGrid() mut
			{
				return VT.ArrangeGrid(&this);
			}
			public HRESULT AutoArrange() mut
			{
				return VT.AutoArrange(&this);
			}
			public HRESULT GetAutoArrange() mut
			{
				return VT.GetAutoArrange(&this);
			}
			public HRESULT AddObject(ITEMIDLIST* pidl, uint32* puItem) mut
			{
				return VT.AddObject(&this, pidl, puItem);
			}
			public HRESULT GetObject(ITEMIDLIST** ppidl, uint32 uItem) mut
			{
				return VT.GetObject(&this, ppidl, uItem);
			}
			public HRESULT RemoveObject(ITEMIDLIST* pidl, uint32* puItem) mut
			{
				return VT.RemoveObject(&this, pidl, puItem);
			}
			public HRESULT GetObjectCount(uint32* puCount) mut
			{
				return VT.GetObjectCount(&this, puCount);
			}
			public HRESULT SetObjectCount(uint32 uCount, uint32 dwFlags) mut
			{
				return VT.SetObjectCount(&this, uCount, dwFlags);
			}
			public HRESULT UpdateObject(ITEMIDLIST* pidlOld, ITEMIDLIST* pidlNew, uint32* puItem) mut
			{
				return VT.UpdateObject(&this, pidlOld, pidlNew, puItem);
			}
			public HRESULT RefreshObject(ITEMIDLIST* pidl, uint32* puItem) mut
			{
				return VT.RefreshObject(&this, pidl, puItem);
			}
			public HRESULT SetRedraw(BOOL bRedraw) mut
			{
				return VT.SetRedraw(&this, bRedraw);
			}
			public HRESULT GetSelectedCount(uint32* puSelected) mut
			{
				return VT.GetSelectedCount(&this, puSelected);
			}
			public HRESULT GetSelectedObjects(ITEMIDLIST*** pppidl, uint32* puItems) mut
			{
				return VT.GetSelectedObjects(&this, pppidl, puItems);
			}
			public HRESULT IsDropOnSource(IDropTarget* pDropTarget) mut
			{
				return VT.IsDropOnSource(&this, pDropTarget);
			}
			public HRESULT GetDragPoint(POINT* ppt) mut
			{
				return VT.GetDragPoint(&this, ppt);
			}
			public HRESULT GetDropPoint(POINT* ppt) mut
			{
				return VT.GetDropPoint(&this, ppt);
			}
			public HRESULT MoveIcons(IDataObject* pDataObject) mut
			{
				return VT.MoveIcons(&this, pDataObject);
			}
			public HRESULT SetItemPos(ITEMIDLIST* pidl, POINT* ppt) mut
			{
				return VT.SetItemPos(&this, pidl, ppt);
			}
			public HRESULT IsBkDropTarget(IDropTarget* pDropTarget) mut
			{
				return VT.IsBkDropTarget(&this, pDropTarget);
			}
			public HRESULT SetClipboard(BOOL bMove) mut
			{
				return VT.SetClipboard(&this, bMove);
			}
			public HRESULT SetPoints(IDataObject* pDataObject) mut
			{
				return VT.SetPoints(&this, pDataObject);
			}
			public HRESULT GetItemSpacing(ITEMSPACING* pSpacing) mut
			{
				return VT.GetItemSpacing(&this, pSpacing);
			}
			public HRESULT SetCallback(IShellFolderViewCB* pNewCB, IShellFolderViewCB** ppOldCB) mut
			{
				return VT.SetCallback(&this, pNewCB, ppOldCB);
			}
			public HRESULT Select(SFVS_SELECT dwFlags) mut
			{
				return VT.Select(&this, dwFlags);
			}
			public HRESULT QuerySupport(uint32* pdwSupport) mut
			{
				return VT.QuerySupport(&this, pdwSupport);
			}
			public HRESULT SetAutomationObject(IDispatch* pdisp) mut
			{
				return VT.SetAutomationObject(&this, pdisp);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellFolderView *self, LPARAM lParamSort) Rearrange;
				public new function HRESULT(IShellFolderView *self, LPARAM* plParamSort) GetArrangeParam;
				public new function HRESULT(IShellFolderView *self) ArrangeGrid;
				public new function HRESULT(IShellFolderView *self) AutoArrange;
				public new function HRESULT(IShellFolderView *self) GetAutoArrange;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST* pidl, uint32* puItem) AddObject;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST** ppidl, uint32 uItem) GetObject;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST* pidl, uint32* puItem) RemoveObject;
				public new function HRESULT(IShellFolderView *self, uint32* puCount) GetObjectCount;
				public new function HRESULT(IShellFolderView *self, uint32 uCount, uint32 dwFlags) SetObjectCount;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST* pidlOld, ITEMIDLIST* pidlNew, uint32* puItem) UpdateObject;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST* pidl, uint32* puItem) RefreshObject;
				public new function HRESULT(IShellFolderView *self, BOOL bRedraw) SetRedraw;
				public new function HRESULT(IShellFolderView *self, uint32* puSelected) GetSelectedCount;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST*** pppidl, uint32* puItems) GetSelectedObjects;
				public new function HRESULT(IShellFolderView *self, IDropTarget* pDropTarget) IsDropOnSource;
				public new function HRESULT(IShellFolderView *self, POINT* ppt) GetDragPoint;
				public new function HRESULT(IShellFolderView *self, POINT* ppt) GetDropPoint;
				public new function HRESULT(IShellFolderView *self, IDataObject* pDataObject) MoveIcons;
				public new function HRESULT(IShellFolderView *self, ITEMIDLIST* pidl, POINT* ppt) SetItemPos;
				public new function HRESULT(IShellFolderView *self, IDropTarget* pDropTarget) IsBkDropTarget;
				public new function HRESULT(IShellFolderView *self, BOOL bMove) SetClipboard;
				public new function HRESULT(IShellFolderView *self, IDataObject* pDataObject) SetPoints;
				public new function HRESULT(IShellFolderView *self, ITEMSPACING* pSpacing) GetItemSpacing;
				public new function HRESULT(IShellFolderView *self, IShellFolderViewCB* pNewCB, IShellFolderViewCB** ppOldCB) SetCallback;
				public new function HRESULT(IShellFolderView *self, SFVS_SELECT dwFlags) Select;
				public new function HRESULT(IShellFolderView *self, uint32* pdwSupport) QuerySupport;
				public new function HRESULT(IShellFolderView *self, IDispatch* pdisp) SetAutomationObject;
			}
		}
		[CRepr]
		public struct INamedPropertyBag : IUnknown
		{
			public const new Guid IID = .(0xfb700430, 0x952c, 0x11d1, 0x94, 0x6f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReadPropertyNPB(PWSTR pszBagname, PWSTR pszPropName, PROPVARIANT* pVar) mut
			{
				return VT.ReadPropertyNPB(&this, pszBagname, pszPropName, pVar);
			}
			public HRESULT WritePropertyNPB(PWSTR pszBagname, PWSTR pszPropName, PROPVARIANT* pVar) mut
			{
				return VT.WritePropertyNPB(&this, pszBagname, pszPropName, pVar);
			}
			public HRESULT RemovePropertyNPB(PWSTR pszBagname, PWSTR pszPropName) mut
			{
				return VT.RemovePropertyNPB(&this, pszBagname, pszPropName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INamedPropertyBag *self, PWSTR pszBagname, PWSTR pszPropName, PROPVARIANT* pVar) ReadPropertyNPB;
				public new function HRESULT(INamedPropertyBag *self, PWSTR pszBagname, PWSTR pszPropName, PROPVARIANT* pVar) WritePropertyNPB;
				public new function HRESULT(INamedPropertyBag *self, PWSTR pszBagname, PWSTR pszPropName) RemovePropertyNPB;
			}
		}
		[CRepr]
		public struct INewShortcutHookA : IUnknown
		{
			public const new Guid IID = .(0x000214e1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetReferent(PSTR pcszReferent, HWND hwnd) mut
			{
				return VT.SetReferent(&this, pcszReferent, hwnd);
			}
			public HRESULT GetReferent(uint8* pszReferent, int32 cchReferent) mut
			{
				return VT.GetReferent(&this, pszReferent, cchReferent);
			}
			public HRESULT SetFolder(PSTR pcszFolder) mut
			{
				return VT.SetFolder(&this, pcszFolder);
			}
			public HRESULT GetFolder(uint8* pszFolder, int32 cchFolder) mut
			{
				return VT.GetFolder(&this, pszFolder, cchFolder);
			}
			public HRESULT GetName(uint8* pszName, int32 cchName) mut
			{
				return VT.GetName(&this, pszName, cchName);
			}
			public HRESULT GetExtension(uint8* pszExtension, int32 cchExtension) mut
			{
				return VT.GetExtension(&this, pszExtension, cchExtension);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INewShortcutHookA *self, PSTR pcszReferent, HWND hwnd) SetReferent;
				public new function HRESULT(INewShortcutHookA *self, uint8* pszReferent, int32 cchReferent) GetReferent;
				public new function HRESULT(INewShortcutHookA *self, PSTR pcszFolder) SetFolder;
				public new function HRESULT(INewShortcutHookA *self, uint8* pszFolder, int32 cchFolder) GetFolder;
				public new function HRESULT(INewShortcutHookA *self, uint8* pszName, int32 cchName) GetName;
				public new function HRESULT(INewShortcutHookA *self, uint8* pszExtension, int32 cchExtension) GetExtension;
			}
		}
		[CRepr]
		public struct INewShortcutHookW : IUnknown
		{
			public const new Guid IID = .(0x000214f7, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetReferent(PWSTR pcszReferent, HWND hwnd) mut
			{
				return VT.SetReferent(&this, pcszReferent, hwnd);
			}
			public HRESULT GetReferent(char16* pszReferent, int32 cchReferent) mut
			{
				return VT.GetReferent(&this, pszReferent, cchReferent);
			}
			public HRESULT SetFolder(PWSTR pcszFolder) mut
			{
				return VT.SetFolder(&this, pcszFolder);
			}
			public HRESULT GetFolder(char16* pszFolder, int32 cchFolder) mut
			{
				return VT.GetFolder(&this, pszFolder, cchFolder);
			}
			public HRESULT GetName(char16* pszName, int32 cchName) mut
			{
				return VT.GetName(&this, pszName, cchName);
			}
			public HRESULT GetExtension(char16* pszExtension, int32 cchExtension) mut
			{
				return VT.GetExtension(&this, pszExtension, cchExtension);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(INewShortcutHookW *self, PWSTR pcszReferent, HWND hwnd) SetReferent;
				public new function HRESULT(INewShortcutHookW *self, char16* pszReferent, int32 cchReferent) GetReferent;
				public new function HRESULT(INewShortcutHookW *self, PWSTR pcszFolder) SetFolder;
				public new function HRESULT(INewShortcutHookW *self, char16* pszFolder, int32 cchFolder) GetFolder;
				public new function HRESULT(INewShortcutHookW *self, char16* pszName, int32 cchName) GetName;
				public new function HRESULT(INewShortcutHookW *self, char16* pszExtension, int32 cchExtension) GetExtension;
			}
		}
		[CRepr]
		public struct ICopyHookA : IUnknown
		{
			public const new Guid IID = .(0x000214ef, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 CopyCallback(HWND hwnd, uint32 wFunc, uint32 wFlags, PSTR pszSrcFile, uint32 dwSrcAttribs, PSTR pszDestFile, uint32 dwDestAttribs) mut
			{
				return VT.CopyCallback(&this, hwnd, wFunc, wFlags, pszSrcFile, dwSrcAttribs, pszDestFile, dwDestAttribs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ICopyHookA *self, HWND hwnd, uint32 wFunc, uint32 wFlags, PSTR pszSrcFile, uint32 dwSrcAttribs, PSTR pszDestFile, uint32 dwDestAttribs) CopyCallback;
			}
		}
		[CRepr]
		public struct ICopyHookW : IUnknown
		{
			public const new Guid IID = .(0x000214fc, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 CopyCallback(HWND hwnd, uint32 wFunc, uint32 wFlags, PWSTR pszSrcFile, uint32 dwSrcAttribs, PWSTR pszDestFile, uint32 dwDestAttribs) mut
			{
				return VT.CopyCallback(&this, hwnd, wFunc, wFlags, pszSrcFile, dwSrcAttribs, pszDestFile, dwDestAttribs);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(ICopyHookW *self, HWND hwnd, uint32 wFunc, uint32 wFlags, PWSTR pszSrcFile, uint32 dwSrcAttribs, PWSTR pszDestFile, uint32 dwDestAttribs) CopyCallback;
			}
		}
		[CRepr]
		public struct ICurrentWorkingDirectory : IUnknown
		{
			public const new Guid IID = .(0x91956d21, 0x9276, 0x11d1, 0x92, 0x1a, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDirectory(char16* pwzPath, uint32 cchSize) mut
			{
				return VT.GetDirectory(&this, pwzPath, cchSize);
			}
			public HRESULT SetDirectory(PWSTR pwzPath) mut
			{
				return VT.SetDirectory(&this, pwzPath);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICurrentWorkingDirectory *self, char16* pwzPath, uint32 cchSize) GetDirectory;
				public new function HRESULT(ICurrentWorkingDirectory *self, PWSTR pwzPath) SetDirectory;
			}
		}
		[CRepr]
		public struct IDockingWindowFrame : IOleWindow
		{
			public const new Guid IID = .(0x47d2657a, 0x7b27, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddToolbar(IUnknown* punkSrc, PWSTR pwszItem, uint32 dwAddFlags) mut
			{
				return VT.AddToolbar(&this, punkSrc, pwszItem, dwAddFlags);
			}
			public HRESULT RemoveToolbar(IUnknown* punkSrc, uint32 dwRemoveFlags) mut
			{
				return VT.RemoveToolbar(&this, punkSrc, dwRemoveFlags);
			}
			public HRESULT FindToolbar(PWSTR pwszItem, Guid* riid, void** ppv) mut
			{
				return VT.FindToolbar(&this, pwszItem, riid, ppv);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IDockingWindowFrame *self, IUnknown* punkSrc, PWSTR pwszItem, uint32 dwAddFlags) AddToolbar;
				public new function HRESULT(IDockingWindowFrame *self, IUnknown* punkSrc, uint32 dwRemoveFlags) RemoveToolbar;
				public new function HRESULT(IDockingWindowFrame *self, PWSTR pwszItem, Guid* riid, void** ppv) FindToolbar;
			}
		}
		[CRepr]
		public struct IThumbnailCapture : IUnknown
		{
			public const new Guid IID = .(0x4ea39266, 0x7211, 0x409f, 0xb6, 0x22, 0xf6, 0x3d, 0xbd, 0x16, 0xc5, 0x33);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CaptureThumbnail(SIZE* pMaxSize, IUnknown* pHTMLDoc2, HBITMAP* phbmThumbnail) mut
			{
				return VT.CaptureThumbnail(&this, pMaxSize, pHTMLDoc2, phbmThumbnail);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailCapture *self, SIZE* pMaxSize, IUnknown* pHTMLDoc2, HBITMAP* phbmThumbnail) CaptureThumbnail;
			}
		}
		[CRepr]
		public struct IShellFolderBand : IUnknown
		{
			public const new Guid IID = .(0x7fe80cc8, 0xc247, 0x11d0, 0xb9, 0x3a, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xe1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitializeSFB(IShellFolder* psf, ITEMIDLIST* pidl) mut
			{
				return VT.InitializeSFB(&this, psf, pidl);
			}
			public HRESULT SetBandInfoSFB(BANDINFOSFB* pbi) mut
			{
				return VT.SetBandInfoSFB(&this, pbi);
			}
			public HRESULT GetBandInfoSFB(BANDINFOSFB* pbi) mut
			{
				return VT.GetBandInfoSFB(&this, pbi);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellFolderBand *self, IShellFolder* psf, ITEMIDLIST* pidl) InitializeSFB;
				public new function HRESULT(IShellFolderBand *self, BANDINFOSFB* pbi) SetBandInfoSFB;
				public new function HRESULT(IShellFolderBand *self, BANDINFOSFB* pbi) GetBandInfoSFB;
			}
		}
		[CRepr]
		public struct IDeskBarClient : IOleWindow
		{
			public const new Guid IID = .(0xeb0fe175, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetDeskBarSite(IUnknown* punkSite) mut
			{
				return VT.SetDeskBarSite(&this, punkSite);
			}
			public HRESULT SetModeDBC(uint32 dwMode) mut
			{
				return VT.SetModeDBC(&this, dwMode);
			}
			public HRESULT UIActivateDBC(uint32 dwState) mut
			{
				return VT.UIActivateDBC(&this, dwState);
			}
			public HRESULT GetSize(uint32 dwWhich, RECT* prc) mut
			{
				return VT.GetSize(&this, dwWhich, prc);
			}
			[CRepr]
			public struct VTable : IOleWindow.VTable
			{
				public new function HRESULT(IDeskBarClient *self, IUnknown* punkSite) SetDeskBarSite;
				public new function HRESULT(IDeskBarClient *self, uint32 dwMode) SetModeDBC;
				public new function HRESULT(IDeskBarClient *self, uint32 dwState) UIActivateDBC;
				public new function HRESULT(IDeskBarClient *self, uint32 dwWhich, RECT* prc) GetSize;
			}
		}
		[CRepr]
		public struct IColumnProvider : IUnknown
		{
			public const new Guid IID = .(0xe8025004, 0x1c42, 0x11d2, 0xbe, 0x2c, 0x00, 0xa0, 0xc9, 0xa8, 0x3d, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(SHCOLUMNINIT* psci) mut
			{
				return VT.Initialize(&this, psci);
			}
			public HRESULT GetColumnInfo(uint32 dwIndex, SHCOLUMNINFO* psci) mut
			{
				return VT.GetColumnInfo(&this, dwIndex, psci);
			}
			public HRESULT GetItemData(PROPERTYKEY* pscid, SHCOLUMNDATA* pscd, VARIANT* pvarData) mut
			{
				return VT.GetItemData(&this, pscid, pscd, pvarData);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IColumnProvider *self, SHCOLUMNINIT* psci) Initialize;
				public new function HRESULT(IColumnProvider *self, uint32 dwIndex, SHCOLUMNINFO* psci) GetColumnInfo;
				public new function HRESULT(IColumnProvider *self, PROPERTYKEY* pscid, SHCOLUMNDATA* pscd, VARIANT* pvarData) GetItemData;
			}
		}
		[CRepr]
		public struct IDocViewSite : IUnknown
		{
			public const new Guid IID = .(0x87d605e0, 0xc511, 0x11cf, 0x89, 0xa9, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x29);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnSetTitle(VARIANT* pvTitle) mut
			{
				return VT.OnSetTitle(&this, pvTitle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IDocViewSite *self, VARIANT* pvTitle) OnSetTitle;
			}
		}
		[CRepr]
		public struct IInitializeObject : IUnknown
		{
			public const new Guid IID = .(0x4622ad16, 0xff23, 0x11d0, 0x8d, 0x34, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize() mut
			{
				return VT.Initialize(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInitializeObject *self) Initialize;
			}
		}
		[CRepr]
		public struct IBanneredBar : IUnknown
		{
			public const new Guid IID = .(0x596a9a94, 0x013e, 0x11d1, 0x8d, 0x34, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetIconSize(uint32 iIcon) mut
			{
				return VT.SetIconSize(&this, iIcon);
			}
			public HRESULT GetIconSize(uint32* piIcon) mut
			{
				return VT.GetIconSize(&this, piIcon);
			}
			public HRESULT SetBitmap(HBITMAP hBitmap) mut
			{
				return VT.SetBitmap(&this, hBitmap);
			}
			public HRESULT GetBitmap(HBITMAP* phBitmap) mut
			{
				return VT.GetBitmap(&this, phBitmap);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBanneredBar *self, uint32 iIcon) SetIconSize;
				public new function HRESULT(IBanneredBar *self, uint32* piIcon) GetIconSize;
				public new function HRESULT(IBanneredBar *self, HBITMAP hBitmap) SetBitmap;
				public new function HRESULT(IBanneredBar *self, HBITMAP* phBitmap) GetBitmap;
			}
		}
		[CRepr]
		public struct IQueryAssociations : IUnknown
		{
			public const new Guid IID = .(0xc46ca590, 0x3c3f, 0x11d2, 0xbe, 0xe6, 0x00, 0x00, 0xf8, 0x05, 0xca, 0x57);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(uint32 flags, PWSTR pszAssoc, HKEY hkProgid, HWND hwnd) mut
			{
				return VT.Init(&this, flags, pszAssoc, hkProgid, hwnd);
			}
			public HRESULT GetString(uint32 flags, ASSOCSTR str, PWSTR pszExtra, char16* pszOut, uint32* pcchOut) mut
			{
				return VT.GetString(&this, flags, str, pszExtra, pszOut, pcchOut);
			}
			public HRESULT GetKey(uint32 flags, ASSOCKEY key, PWSTR pszExtra, HKEY* phkeyOut) mut
			{
				return VT.GetKey(&this, flags, key, pszExtra, phkeyOut);
			}
			public HRESULT GetData(uint32 flags, ASSOCDATA data, PWSTR pszExtra, void* pvOut, uint32* pcbOut) mut
			{
				return VT.GetData(&this, flags, data, pszExtra, pvOut, pcbOut);
			}
			public HRESULT GetEnum(uint32 flags, ASSOCENUM assocenum, PWSTR pszExtra, Guid* riid, void** ppvOut) mut
			{
				return VT.GetEnum(&this, flags, assocenum, pszExtra, riid, ppvOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IQueryAssociations *self, uint32 flags, PWSTR pszAssoc, HKEY hkProgid, HWND hwnd) Init;
				public new function HRESULT(IQueryAssociations *self, uint32 flags, ASSOCSTR str, PWSTR pszExtra, char16* pszOut, uint32* pcchOut) GetString;
				public new function HRESULT(IQueryAssociations *self, uint32 flags, ASSOCKEY key, PWSTR pszExtra, HKEY* phkeyOut) GetKey;
				public new function HRESULT(IQueryAssociations *self, uint32 flags, ASSOCDATA data, PWSTR pszExtra, void* pvOut, uint32* pcbOut) GetData;
				public new function HRESULT(IQueryAssociations *self, uint32 flags, ASSOCENUM assocenum, PWSTR pszExtra, Guid* riid, void** ppvOut) GetEnum;
			}
		}
		[CRepr]
		public struct IShellApp : IUnknown
		{
			public const new Guid IID = .(0xa3e14960, 0x935f, 0x11d1, 0xb8, 0xb8, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAppInfo(APPINFODATA* pai) mut
			{
				return VT.GetAppInfo(&this, pai);
			}
			public HRESULT GetPossibleActions(uint32* pdwActions) mut
			{
				return VT.GetPossibleActions(&this, pdwActions);
			}
			public HRESULT GetSlowAppInfo(SLOWAPPINFO* psaid) mut
			{
				return VT.GetSlowAppInfo(&this, psaid);
			}
			public HRESULT GetCachedSlowAppInfo(SLOWAPPINFO* psaid) mut
			{
				return VT.GetCachedSlowAppInfo(&this, psaid);
			}
			public HRESULT IsInstalled() mut
			{
				return VT.IsInstalled(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellApp *self, APPINFODATA* pai) GetAppInfo;
				public new function HRESULT(IShellApp *self, uint32* pdwActions) GetPossibleActions;
				public new function HRESULT(IShellApp *self, SLOWAPPINFO* psaid) GetSlowAppInfo;
				public new function HRESULT(IShellApp *self, SLOWAPPINFO* psaid) GetCachedSlowAppInfo;
				public new function HRESULT(IShellApp *self) IsInstalled;
			}
		}
		[CRepr]
		public struct IPublishedApp : IShellApp
		{
			public const new Guid IID = .(0x1bc752e0, 0x9046, 0x11d1, 0xb8, 0xb3, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Install(SYSTEMTIME* pstInstall) mut
			{
				return VT.Install(&this, pstInstall);
			}
			public HRESULT GetPublishedAppInfo(PUBAPPINFO* ppai) mut
			{
				return VT.GetPublishedAppInfo(&this, ppai);
			}
			public HRESULT Unschedule() mut
			{
				return VT.Unschedule(&this);
			}
			[CRepr]
			public struct VTable : IShellApp.VTable
			{
				public new function HRESULT(IPublishedApp *self, SYSTEMTIME* pstInstall) Install;
				public new function HRESULT(IPublishedApp *self, PUBAPPINFO* ppai) GetPublishedAppInfo;
				public new function HRESULT(IPublishedApp *self) Unschedule;
			}
		}
		[CRepr]
		public struct IPublishedApp2 : IPublishedApp
		{
			public const new Guid IID = .(0x12b81347, 0x1b3a, 0x4a04, 0xaa, 0x61, 0x3f, 0x76, 0x8b, 0x67, 0xfd, 0x7e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Install2(SYSTEMTIME* pstInstall, HWND hwndParent) mut
			{
				return VT.Install2(&this, pstInstall, hwndParent);
			}
			[CRepr]
			public struct VTable : IPublishedApp.VTable
			{
				public new function HRESULT(IPublishedApp2 *self, SYSTEMTIME* pstInstall, HWND hwndParent) Install2;
			}
		}
		[CRepr]
		public struct IEnumPublishedApps : IUnknown
		{
			public const new Guid IID = .(0x0b124f8c, 0x91f0, 0x11d1, 0xb8, 0xb5, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(IPublishedApp** pia) mut
			{
				return VT.Next(&this, pia);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumPublishedApps *self, IPublishedApp** pia) Next;
				public new function HRESULT(IEnumPublishedApps *self) Reset;
			}
		}
		[CRepr]
		public struct IAppPublisher : IUnknown
		{
			public const new Guid IID = .(0x07250a10, 0x9cf9, 0x11d1, 0x90, 0x76, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetNumberOfCategories(uint32* pdwCat) mut
			{
				return VT.GetNumberOfCategories(&this, pdwCat);
			}
			public HRESULT GetCategories(APPCATEGORYINFOLIST* pAppCategoryList) mut
			{
				return VT.GetCategories(&this, pAppCategoryList);
			}
			public HRESULT GetNumberOfApps(uint32* pdwApps) mut
			{
				return VT.GetNumberOfApps(&this, pdwApps);
			}
			public HRESULT EnumApps(Guid* pAppCategoryId, IEnumPublishedApps** ppepa) mut
			{
				return VT.EnumApps(&this, pAppCategoryId, ppepa);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IAppPublisher *self, uint32* pdwCat) GetNumberOfCategories;
				public new function HRESULT(IAppPublisher *self, APPCATEGORYINFOLIST* pAppCategoryList) GetCategories;
				public new function HRESULT(IAppPublisher *self, uint32* pdwApps) GetNumberOfApps;
				public new function HRESULT(IAppPublisher *self, Guid* pAppCategoryId, IEnumPublishedApps** ppepa) EnumApps;
			}
		}
		[CRepr]
		public struct ICredentialProviderCredential : IUnknown
		{
			public const new Guid IID = .(0x63913a93, 0x40c1, 0x481a, 0x81, 0x8d, 0x40, 0x72, 0xff, 0x8c, 0x70, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Advise(ICredentialProviderCredentialEvents* pcpce) mut
			{
				return VT.Advise(&this, pcpce);
			}
			public HRESULT UnAdvise() mut
			{
				return VT.UnAdvise(&this);
			}
			public HRESULT SetSelected(BOOL* pbAutoLogon) mut
			{
				return VT.SetSelected(&this, pbAutoLogon);
			}
			public HRESULT SetDeselected() mut
			{
				return VT.SetDeselected(&this);
			}
			public HRESULT GetFieldState(uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE* pcpfs, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE* pcpfis) mut
			{
				return VT.GetFieldState(&this, dwFieldID, pcpfs, pcpfis);
			}
			public HRESULT GetStringValue(uint32 dwFieldID, PWSTR* ppsz) mut
			{
				return VT.GetStringValue(&this, dwFieldID, ppsz);
			}
			public HRESULT GetBitmapValue(uint32 dwFieldID, HBITMAP* phbmp) mut
			{
				return VT.GetBitmapValue(&this, dwFieldID, phbmp);
			}
			public HRESULT GetCheckboxValue(uint32 dwFieldID, BOOL* pbChecked, PWSTR* ppszLabel) mut
			{
				return VT.GetCheckboxValue(&this, dwFieldID, pbChecked, ppszLabel);
			}
			public HRESULT GetSubmitButtonValue(uint32 dwFieldID, uint32* pdwAdjacentTo) mut
			{
				return VT.GetSubmitButtonValue(&this, dwFieldID, pdwAdjacentTo);
			}
			public HRESULT GetComboBoxValueCount(uint32 dwFieldID, uint32* pcItems, uint32* pdwSelectedItem) mut
			{
				return VT.GetComboBoxValueCount(&this, dwFieldID, pcItems, pdwSelectedItem);
			}
			public HRESULT GetComboBoxValueAt(uint32 dwFieldID, uint32 dwItem, PWSTR* ppszItem) mut
			{
				return VT.GetComboBoxValueAt(&this, dwFieldID, dwItem, ppszItem);
			}
			public HRESULT SetStringValue(uint32 dwFieldID, PWSTR psz) mut
			{
				return VT.SetStringValue(&this, dwFieldID, psz);
			}
			public HRESULT SetCheckboxValue(uint32 dwFieldID, BOOL bChecked) mut
			{
				return VT.SetCheckboxValue(&this, dwFieldID, bChecked);
			}
			public HRESULT SetComboBoxSelectedValue(uint32 dwFieldID, uint32 dwSelectedItem) mut
			{
				return VT.SetComboBoxSelectedValue(&this, dwFieldID, dwSelectedItem);
			}
			public HRESULT CommandLinkClicked(uint32 dwFieldID) mut
			{
				return VT.CommandLinkClicked(&this, dwFieldID);
			}
			public HRESULT GetSerialization(CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE* pcpgsr, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcs, PWSTR* ppszOptionalStatusText, CREDENTIAL_PROVIDER_STATUS_ICON* pcpsiOptionalStatusIcon) mut
			{
				return VT.GetSerialization(&this, pcpgsr, pcpcs, ppszOptionalStatusText, pcpsiOptionalStatusIcon);
			}
			public HRESULT ReportResult(NTSTATUS ntsStatus, NTSTATUS ntsSubstatus, PWSTR* ppszOptionalStatusText, CREDENTIAL_PROVIDER_STATUS_ICON* pcpsiOptionalStatusIcon) mut
			{
				return VT.ReportResult(&this, ntsStatus, ntsSubstatus, ppszOptionalStatusText, pcpsiOptionalStatusIcon);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderCredential *self, ICredentialProviderCredentialEvents* pcpce) Advise;
				public new function HRESULT(ICredentialProviderCredential *self) UnAdvise;
				public new function HRESULT(ICredentialProviderCredential *self, BOOL* pbAutoLogon) SetSelected;
				public new function HRESULT(ICredentialProviderCredential *self) SetDeselected;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE* pcpfs, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE* pcpfis) GetFieldState;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, PWSTR* ppsz) GetStringValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, HBITMAP* phbmp) GetBitmapValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, BOOL* pbChecked, PWSTR* ppszLabel) GetCheckboxValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, uint32* pdwAdjacentTo) GetSubmitButtonValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, uint32* pcItems, uint32* pdwSelectedItem) GetComboBoxValueCount;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, uint32 dwItem, PWSTR* ppszItem) GetComboBoxValueAt;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, PWSTR psz) SetStringValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, BOOL bChecked) SetCheckboxValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID, uint32 dwSelectedItem) SetComboBoxSelectedValue;
				public new function HRESULT(ICredentialProviderCredential *self, uint32 dwFieldID) CommandLinkClicked;
				public new function HRESULT(ICredentialProviderCredential *self, CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE* pcpgsr, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcs, PWSTR* ppszOptionalStatusText, CREDENTIAL_PROVIDER_STATUS_ICON* pcpsiOptionalStatusIcon) GetSerialization;
				public new function HRESULT(ICredentialProviderCredential *self, NTSTATUS ntsStatus, NTSTATUS ntsSubstatus, PWSTR* ppszOptionalStatusText, CREDENTIAL_PROVIDER_STATUS_ICON* pcpsiOptionalStatusIcon) ReportResult;
			}
		}
		[CRepr]
		public struct IQueryContinueWithStatus : IQueryContinue
		{
			public const new Guid IID = .(0x9090be5b, 0x502b, 0x41fb, 0xbc, 0xcc, 0x00, 0x49, 0xa6, 0xc7, 0x25, 0x4b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetStatusMessage(PWSTR psz) mut
			{
				return VT.SetStatusMessage(&this, psz);
			}
			[CRepr]
			public struct VTable : IQueryContinue.VTable
			{
				public new function HRESULT(IQueryContinueWithStatus *self, PWSTR psz) SetStatusMessage;
			}
		}
		[CRepr]
		public struct IConnectableCredentialProviderCredential : ICredentialProviderCredential
		{
			public const new Guid IID = .(0x9387928b, 0xac75, 0x4bf9, 0x8a, 0xb2, 0x2b, 0x93, 0xc4, 0xa5, 0x52, 0x90);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Connect(IQueryContinueWithStatus* pqcws) mut
			{
				return VT.Connect(&this, pqcws);
			}
			public HRESULT Disconnect() mut
			{
				return VT.Disconnect(&this);
			}
			[CRepr]
			public struct VTable : ICredentialProviderCredential.VTable
			{
				public new function HRESULT(IConnectableCredentialProviderCredential *self, IQueryContinueWithStatus* pqcws) Connect;
				public new function HRESULT(IConnectableCredentialProviderCredential *self) Disconnect;
			}
		}
		[CRepr]
		public struct ICredentialProviderCredentialEvents : IUnknown
		{
			public const new Guid IID = .(0xfa6fa76b, 0x66b7, 0x4b11, 0x95, 0xf1, 0x86, 0x17, 0x11, 0x18, 0xe8, 0x16);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetFieldState(ICredentialProviderCredential* pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE cpfs) mut
			{
				return VT.SetFieldState(&this, pcpc, dwFieldID, cpfs);
			}
			public HRESULT SetFieldInteractiveState(ICredentialProviderCredential* pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE cpfis) mut
			{
				return VT.SetFieldInteractiveState(&this, pcpc, dwFieldID, cpfis);
			}
			public HRESULT SetFieldString(ICredentialProviderCredential* pcpc, uint32 dwFieldID, PWSTR psz) mut
			{
				return VT.SetFieldString(&this, pcpc, dwFieldID, psz);
			}
			public HRESULT SetFieldCheckbox(ICredentialProviderCredential* pcpc, uint32 dwFieldID, BOOL bChecked, PWSTR pszLabel) mut
			{
				return VT.SetFieldCheckbox(&this, pcpc, dwFieldID, bChecked, pszLabel);
			}
			public HRESULT SetFieldBitmap(ICredentialProviderCredential* pcpc, uint32 dwFieldID, HBITMAP hbmp) mut
			{
				return VT.SetFieldBitmap(&this, pcpc, dwFieldID, hbmp);
			}
			public HRESULT SetFieldComboBoxSelectedItem(ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwSelectedItem) mut
			{
				return VT.SetFieldComboBoxSelectedItem(&this, pcpc, dwFieldID, dwSelectedItem);
			}
			public HRESULT DeleteFieldComboBoxItem(ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwItem) mut
			{
				return VT.DeleteFieldComboBoxItem(&this, pcpc, dwFieldID, dwItem);
			}
			public HRESULT AppendFieldComboBoxItem(ICredentialProviderCredential* pcpc, uint32 dwFieldID, PWSTR pszItem) mut
			{
				return VT.AppendFieldComboBoxItem(&this, pcpc, dwFieldID, pszItem);
			}
			public HRESULT SetFieldSubmitButton(ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwAdjacentTo) mut
			{
				return VT.SetFieldSubmitButton(&this, pcpc, dwFieldID, dwAdjacentTo);
			}
			public HRESULT OnCreatingWindow(HWND* phwndOwner) mut
			{
				return VT.OnCreatingWindow(&this, phwndOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE cpfs) SetFieldState;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE cpfis) SetFieldInteractiveState;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, PWSTR psz) SetFieldString;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, BOOL bChecked, PWSTR pszLabel) SetFieldCheckbox;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, HBITMAP hbmp) SetFieldBitmap;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwSelectedItem) SetFieldComboBoxSelectedItem;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwItem) DeleteFieldComboBoxItem;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, PWSTR pszItem) AppendFieldComboBoxItem;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, ICredentialProviderCredential* pcpc, uint32 dwFieldID, uint32 dwAdjacentTo) SetFieldSubmitButton;
				public new function HRESULT(ICredentialProviderCredentialEvents *self, HWND* phwndOwner) OnCreatingWindow;
			}
		}
		[CRepr]
		public struct ICredentialProvider : IUnknown
		{
			public const new Guid IID = .(0xd27c3481, 0x5a1c, 0x45b2, 0x8a, 0xaa, 0xc2, 0x0e, 0xbb, 0xe8, 0x22, 0x9e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUsageScenario(CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags) mut
			{
				return VT.SetUsageScenario(&this, cpus, dwFlags);
			}
			public HRESULT SetSerialization(CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcs) mut
			{
				return VT.SetSerialization(&this, pcpcs);
			}
			public HRESULT Advise(ICredentialProviderEvents* pcpe, uint upAdviseContext) mut
			{
				return VT.Advise(&this, pcpe, upAdviseContext);
			}
			public HRESULT UnAdvise() mut
			{
				return VT.UnAdvise(&this);
			}
			public HRESULT GetFieldDescriptorCount(uint32* pdwCount) mut
			{
				return VT.GetFieldDescriptorCount(&this, pdwCount);
			}
			public HRESULT GetFieldDescriptorAt(uint32 dwIndex, CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR** ppcpfd) mut
			{
				return VT.GetFieldDescriptorAt(&this, dwIndex, ppcpfd);
			}
			public HRESULT GetCredentialCount(uint32* pdwCount, uint32* pdwDefault, BOOL* pbAutoLogonWithDefault) mut
			{
				return VT.GetCredentialCount(&this, pdwCount, pdwDefault, pbAutoLogonWithDefault);
			}
			public HRESULT GetCredentialAt(uint32 dwIndex, ICredentialProviderCredential** ppcpc) mut
			{
				return VT.GetCredentialAt(&this, dwIndex, ppcpc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProvider *self, CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags) SetUsageScenario;
				public new function HRESULT(ICredentialProvider *self, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcs) SetSerialization;
				public new function HRESULT(ICredentialProvider *self, ICredentialProviderEvents* pcpe, uint upAdviseContext) Advise;
				public new function HRESULT(ICredentialProvider *self) UnAdvise;
				public new function HRESULT(ICredentialProvider *self, uint32* pdwCount) GetFieldDescriptorCount;
				public new function HRESULT(ICredentialProvider *self, uint32 dwIndex, CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR** ppcpfd) GetFieldDescriptorAt;
				public new function HRESULT(ICredentialProvider *self, uint32* pdwCount, uint32* pdwDefault, BOOL* pbAutoLogonWithDefault) GetCredentialCount;
				public new function HRESULT(ICredentialProvider *self, uint32 dwIndex, ICredentialProviderCredential** ppcpc) GetCredentialAt;
			}
		}
		[CRepr]
		public struct ICredentialProviderEvents : IUnknown
		{
			public const new Guid IID = .(0x34201e5a, 0xa787, 0x41a3, 0xa5, 0xa4, 0xbd, 0x6d, 0xcf, 0x2a, 0x85, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CredentialsChanged(uint upAdviseContext) mut
			{
				return VT.CredentialsChanged(&this, upAdviseContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderEvents *self, uint upAdviseContext) CredentialsChanged;
			}
		}
		[CRepr]
		public struct ICredentialProviderFilter : IUnknown
		{
			public const new Guid IID = .(0xa5da53f9, 0xd475, 0x4080, 0xa1, 0x20, 0x91, 0x0c, 0x4a, 0x73, 0x98, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Filter(CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags, Guid* rgclsidProviders, BOOL* rgbAllow, uint32 cProviders) mut
			{
				return VT.Filter(&this, cpus, dwFlags, rgclsidProviders, rgbAllow, cProviders);
			}
			public HRESULT UpdateRemoteCredential(CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcsIn, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcsOut) mut
			{
				return VT.UpdateRemoteCredential(&this, pcpcsIn, pcpcsOut);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderFilter *self, CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags, Guid* rgclsidProviders, BOOL* rgbAllow, uint32 cProviders) Filter;
				public new function HRESULT(ICredentialProviderFilter *self, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcsIn, CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION* pcpcsOut) UpdateRemoteCredential;
			}
		}
		[CRepr]
		public struct ICredentialProviderCredential2 : ICredentialProviderCredential
		{
			public const new Guid IID = .(0xfd672c54, 0x40ea, 0x4d6e, 0x9b, 0x49, 0xcf, 0xb1, 0xa7, 0x50, 0x7b, 0xd7);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetUserSid(PWSTR* sid) mut
			{
				return VT.GetUserSid(&this, sid);
			}
			[CRepr]
			public struct VTable : ICredentialProviderCredential.VTable
			{
				public new function HRESULT(ICredentialProviderCredential2 *self, PWSTR* sid) GetUserSid;
			}
		}
		[CRepr]
		public struct ICredentialProviderCredentialWithFieldOptions : IUnknown
		{
			public const new Guid IID = .(0xdbc6fb30, 0xc843, 0x49e3, 0xa6, 0x45, 0x57, 0x3e, 0x6f, 0x39, 0x44, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetFieldOptions(uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS* options) mut
			{
				return VT.GetFieldOptions(&this, fieldID, options);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderCredentialWithFieldOptions *self, uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS* options) GetFieldOptions;
			}
		}
		[CRepr]
		public struct ICredentialProviderCredentialEvents2 : ICredentialProviderCredentialEvents
		{
			public const new Guid IID = .(0xb53c00b6, 0x9922, 0x4b78, 0xb1, 0xf4, 0xdd, 0xfe, 0x77, 0x4d, 0xc3, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BeginFieldUpdates() mut
			{
				return VT.BeginFieldUpdates(&this);
			}
			public HRESULT EndFieldUpdates() mut
			{
				return VT.EndFieldUpdates(&this);
			}
			public HRESULT SetFieldOptions(ICredentialProviderCredential* credential, uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) mut
			{
				return VT.SetFieldOptions(&this, credential, fieldID, options);
			}
			[CRepr]
			public struct VTable : ICredentialProviderCredentialEvents.VTable
			{
				public new function HRESULT(ICredentialProviderCredentialEvents2 *self) BeginFieldUpdates;
				public new function HRESULT(ICredentialProviderCredentialEvents2 *self) EndFieldUpdates;
				public new function HRESULT(ICredentialProviderCredentialEvents2 *self, ICredentialProviderCredential* credential, uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) SetFieldOptions;
			}
		}
		[CRepr]
		public struct ICredentialProviderUser : IUnknown
		{
			public const new Guid IID = .(0x13793285, 0x3ea6, 0x40fd, 0xb4, 0x20, 0x15, 0xf4, 0x7d, 0xa4, 0x1f, 0xbb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSid(PWSTR* sid) mut
			{
				return VT.GetSid(&this, sid);
			}
			public HRESULT GetProviderID(Guid* providerID) mut
			{
				return VT.GetProviderID(&this, providerID);
			}
			public HRESULT GetStringValue(PROPERTYKEY* key, PWSTR* stringValue) mut
			{
				return VT.GetStringValue(&this, key, stringValue);
			}
			public HRESULT GetValue(PROPERTYKEY* key, PROPVARIANT* value) mut
			{
				return VT.GetValue(&this, key, value);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderUser *self, PWSTR* sid) GetSid;
				public new function HRESULT(ICredentialProviderUser *self, Guid* providerID) GetProviderID;
				public new function HRESULT(ICredentialProviderUser *self, PROPERTYKEY* key, PWSTR* stringValue) GetStringValue;
				public new function HRESULT(ICredentialProviderUser *self, PROPERTYKEY* key, PROPVARIANT* value) GetValue;
			}
		}
		[CRepr]
		public struct ICredentialProviderUserArray : IUnknown
		{
			public const new Guid IID = .(0x90c119ae, 0x0f18, 0x4520, 0xa1, 0xf1, 0x11, 0x43, 0x66, 0xa4, 0x0f, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetProviderFilter(Guid* guidProviderToFilterTo) mut
			{
				return VT.SetProviderFilter(&this, guidProviderToFilterTo);
			}
			public HRESULT GetAccountOptions(CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS* credentialProviderAccountOptions) mut
			{
				return VT.GetAccountOptions(&this, credentialProviderAccountOptions);
			}
			public HRESULT GetCount(uint32* userCount) mut
			{
				return VT.GetCount(&this, userCount);
			}
			public HRESULT GetAt(uint32 userIndex, ICredentialProviderUser** user) mut
			{
				return VT.GetAt(&this, userIndex, user);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderUserArray *self, Guid* guidProviderToFilterTo) SetProviderFilter;
				public new function HRESULT(ICredentialProviderUserArray *self, CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS* credentialProviderAccountOptions) GetAccountOptions;
				public new function HRESULT(ICredentialProviderUserArray *self, uint32* userCount) GetCount;
				public new function HRESULT(ICredentialProviderUserArray *self, uint32 userIndex, ICredentialProviderUser** user) GetAt;
			}
		}
		[CRepr]
		public struct ICredentialProviderSetUserArray : IUnknown
		{
			public const new Guid IID = .(0x095c1484, 0x1c0c, 0x4388, 0x9c, 0x6d, 0x50, 0x0e, 0x61, 0xbf, 0x84, 0xbd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetUserArray(ICredentialProviderUserArray* users) mut
			{
				return VT.SetUserArray(&this, users);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ICredentialProviderSetUserArray *self, ICredentialProviderUserArray* users) SetUserArray;
			}
		}
		[CRepr]
		public struct ISyncMgrHandlerCollection : IUnknown
		{
			public const new Guid IID = .(0xa7f337a3, 0xd20b, 0x45cb, 0x9e, 0xd7, 0x87, 0xd0, 0x94, 0xca, 0x50, 0x45);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetHandlerEnumerator(IEnumString** ppenum) mut
			{
				return VT.GetHandlerEnumerator(&this, ppenum);
			}
			public HRESULT BindToHandler(PWSTR pszHandlerID, Guid* riid, void** ppv) mut
			{
				return VT.BindToHandler(&this, pszHandlerID, riid, ppv);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrHandlerCollection *self, IEnumString** ppenum) GetHandlerEnumerator;
				public new function HRESULT(ISyncMgrHandlerCollection *self, PWSTR pszHandlerID, Guid* riid, void** ppv) BindToHandler;
			}
		}
		[CRepr]
		public struct ISyncMgrHandler : IUnknown
		{
			public const new Guid IID = .(0x04ec2e43, 0xac77, 0x49f9, 0x9b, 0x98, 0x03, 0x07, 0xef, 0x7a, 0x72, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetName(PWSTR* ppszName) mut
			{
				return VT.GetName(&this, ppszName);
			}
			public HRESULT GetHandlerInfo(ISyncMgrHandlerInfo** ppHandlerInfo) mut
			{
				return VT.GetHandlerInfo(&this, ppHandlerInfo);
			}
			public HRESULT GetObject(Guid* rguidObjectID, Guid* riid, void** ppv) mut
			{
				return VT.GetObject(&this, rguidObjectID, riid, ppv);
			}
			public HRESULT GetCapabilities(SYNCMGR_HANDLER_CAPABILITIES* pmCapabilities) mut
			{
				return VT.GetCapabilities(&this, pmCapabilities);
			}
			public HRESULT GetPolicies(SYNCMGR_HANDLER_POLICIES* pmPolicies) mut
			{
				return VT.GetPolicies(&this, pmPolicies);
			}
			public HRESULT Activate(BOOL fActivate) mut
			{
				return VT.Activate(&this, fActivate);
			}
			public HRESULT Enable(BOOL fEnable) mut
			{
				return VT.Enable(&this, fEnable);
			}
			public HRESULT Synchronize(PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ISyncMgrSessionCreator* pSessionCreator, IUnknown* punk) mut
			{
				return VT.Synchronize(&this, ppszItemIDs, cItems, hwndOwner, pSessionCreator, punk);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrHandler *self, PWSTR* ppszName) GetName;
				public new function HRESULT(ISyncMgrHandler *self, ISyncMgrHandlerInfo** ppHandlerInfo) GetHandlerInfo;
				public new function HRESULT(ISyncMgrHandler *self, Guid* rguidObjectID, Guid* riid, void** ppv) GetObject;
				public new function HRESULT(ISyncMgrHandler *self, SYNCMGR_HANDLER_CAPABILITIES* pmCapabilities) GetCapabilities;
				public new function HRESULT(ISyncMgrHandler *self, SYNCMGR_HANDLER_POLICIES* pmPolicies) GetPolicies;
				public new function HRESULT(ISyncMgrHandler *self, BOOL fActivate) Activate;
				public new function HRESULT(ISyncMgrHandler *self, BOOL fEnable) Enable;
				public new function HRESULT(ISyncMgrHandler *self, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ISyncMgrSessionCreator* pSessionCreator, IUnknown* punk) Synchronize;
			}
		}
		[CRepr]
		public struct ISyncMgrHandlerInfo : IUnknown
		{
			public const new Guid IID = .(0x4ff1d798, 0xecf7, 0x4524, 0xaa, 0x81, 0x1e, 0x36, 0x2a, 0x0a, 0xef, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ComGetType(SYNCMGR_HANDLER_TYPE* pnType) mut
			{
				return VT.ComGetType(&this, pnType);
			}
			public HRESULT GetTypeLabel(PWSTR* ppszTypeLabel) mut
			{
				return VT.GetTypeLabel(&this, ppszTypeLabel);
			}
			public HRESULT GetComment(PWSTR* ppszComment) mut
			{
				return VT.GetComment(&this, ppszComment);
			}
			public HRESULT GetLastSyncTime(FILETIME* pftLastSync) mut
			{
				return VT.GetLastSyncTime(&this, pftLastSync);
			}
			public HRESULT IsActive() mut
			{
				return VT.IsActive(&this);
			}
			public HRESULT IsEnabled() mut
			{
				return VT.IsEnabled(&this);
			}
			public HRESULT IsConnected() mut
			{
				return VT.IsConnected(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrHandlerInfo *self, SYNCMGR_HANDLER_TYPE* pnType) ComGetType;
				public new function HRESULT(ISyncMgrHandlerInfo *self, PWSTR* ppszTypeLabel) GetTypeLabel;
				public new function HRESULT(ISyncMgrHandlerInfo *self, PWSTR* ppszComment) GetComment;
				public new function HRESULT(ISyncMgrHandlerInfo *self, FILETIME* pftLastSync) GetLastSyncTime;
				public new function HRESULT(ISyncMgrHandlerInfo *self) IsActive;
				public new function HRESULT(ISyncMgrHandlerInfo *self) IsEnabled;
				public new function HRESULT(ISyncMgrHandlerInfo *self) IsConnected;
			}
		}
		[CRepr]
		public struct ISyncMgrSyncItemContainer : IUnknown
		{
			public const new Guid IID = .(0x90701133, 0xbe32, 0x4129, 0xa6, 0x5c, 0x99, 0xe6, 0x16, 0xca, 0xff, 0xf4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSyncItem(PWSTR pszItemID, ISyncMgrSyncItem** ppItem) mut
			{
				return VT.GetSyncItem(&this, pszItemID, ppItem);
			}
			public HRESULT GetSyncItemEnumerator(IEnumSyncMgrSyncItems** ppenum) mut
			{
				return VT.GetSyncItemEnumerator(&this, ppenum);
			}
			public HRESULT GetSyncItemCount(uint32* pcItems) mut
			{
				return VT.GetSyncItemCount(&this, pcItems);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSyncItemContainer *self, PWSTR pszItemID, ISyncMgrSyncItem** ppItem) GetSyncItem;
				public new function HRESULT(ISyncMgrSyncItemContainer *self, IEnumSyncMgrSyncItems** ppenum) GetSyncItemEnumerator;
				public new function HRESULT(ISyncMgrSyncItemContainer *self, uint32* pcItems) GetSyncItemCount;
			}
		}
		[CRepr]
		public struct ISyncMgrSyncItem : IUnknown
		{
			public const new Guid IID = .(0xb20b24ce, 0x2593, 0x4f04, 0xbd, 0x8b, 0x7a, 0xd6, 0xc4, 0x50, 0x51, 0xcd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetItemID(PWSTR* ppszItemID) mut
			{
				return VT.GetItemID(&this, ppszItemID);
			}
			public HRESULT GetName(PWSTR* ppszName) mut
			{
				return VT.GetName(&this, ppszName);
			}
			public HRESULT GetItemInfo(ISyncMgrSyncItemInfo** ppItemInfo) mut
			{
				return VT.GetItemInfo(&this, ppItemInfo);
			}
			public HRESULT GetObject(Guid* rguidObjectID, Guid* riid, void** ppv) mut
			{
				return VT.GetObject(&this, rguidObjectID, riid, ppv);
			}
			public HRESULT GetCapabilities(SYNCMGR_ITEM_CAPABILITIES* pmCapabilities) mut
			{
				return VT.GetCapabilities(&this, pmCapabilities);
			}
			public HRESULT GetPolicies(SYNCMGR_ITEM_POLICIES* pmPolicies) mut
			{
				return VT.GetPolicies(&this, pmPolicies);
			}
			public HRESULT Enable(BOOL fEnable) mut
			{
				return VT.Enable(&this, fEnable);
			}
			public HRESULT Delete() mut
			{
				return VT.Delete(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSyncItem *self, PWSTR* ppszItemID) GetItemID;
				public new function HRESULT(ISyncMgrSyncItem *self, PWSTR* ppszName) GetName;
				public new function HRESULT(ISyncMgrSyncItem *self, ISyncMgrSyncItemInfo** ppItemInfo) GetItemInfo;
				public new function HRESULT(ISyncMgrSyncItem *self, Guid* rguidObjectID, Guid* riid, void** ppv) GetObject;
				public new function HRESULT(ISyncMgrSyncItem *self, SYNCMGR_ITEM_CAPABILITIES* pmCapabilities) GetCapabilities;
				public new function HRESULT(ISyncMgrSyncItem *self, SYNCMGR_ITEM_POLICIES* pmPolicies) GetPolicies;
				public new function HRESULT(ISyncMgrSyncItem *self, BOOL fEnable) Enable;
				public new function HRESULT(ISyncMgrSyncItem *self) Delete;
			}
		}
		[CRepr]
		public struct ISyncMgrSyncItemInfo : IUnknown
		{
			public const new Guid IID = .(0xe7fd9502, 0xbe0c, 0x4464, 0x90, 0xa1, 0x2b, 0x52, 0x77, 0x03, 0x12, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTypeLabel(PWSTR* ppszTypeLabel) mut
			{
				return VT.GetTypeLabel(&this, ppszTypeLabel);
			}
			public HRESULT GetComment(PWSTR* ppszComment) mut
			{
				return VT.GetComment(&this, ppszComment);
			}
			public HRESULT GetLastSyncTime(FILETIME* pftLastSync) mut
			{
				return VT.GetLastSyncTime(&this, pftLastSync);
			}
			public HRESULT IsEnabled() mut
			{
				return VT.IsEnabled(&this);
			}
			public HRESULT IsConnected() mut
			{
				return VT.IsConnected(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSyncItemInfo *self, PWSTR* ppszTypeLabel) GetTypeLabel;
				public new function HRESULT(ISyncMgrSyncItemInfo *self, PWSTR* ppszComment) GetComment;
				public new function HRESULT(ISyncMgrSyncItemInfo *self, FILETIME* pftLastSync) GetLastSyncTime;
				public new function HRESULT(ISyncMgrSyncItemInfo *self) IsEnabled;
				public new function HRESULT(ISyncMgrSyncItemInfo *self) IsConnected;
			}
		}
		[CRepr]
		public struct IEnumSyncMgrSyncItems : IUnknown
		{
			public const new Guid IID = .(0x54b3abf3, 0xf085, 0x4181, 0xb5, 0x46, 0xe2, 0x9c, 0x40, 0x3c, 0x72, 0x6b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ISyncMgrSyncItem** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncMgrSyncItems** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncMgrSyncItems *self, uint32 celt, ISyncMgrSyncItem** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSyncMgrSyncItems *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSyncMgrSyncItems *self) Reset;
				public new function HRESULT(IEnumSyncMgrSyncItems *self, IEnumSyncMgrSyncItems** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISyncMgrSessionCreator : IUnknown
		{
			public const new Guid IID = .(0x17f48517, 0xf305, 0x4321, 0xa0, 0x8d, 0xb2, 0x5a, 0x83, 0x49, 0x18, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateSession(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, ISyncMgrSyncCallback** ppCallback) mut
			{
				return VT.CreateSession(&this, pszHandlerID, ppszItemIDs, cItems, ppCallback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSessionCreator *self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, ISyncMgrSyncCallback** ppCallback) CreateSession;
			}
		}
		[CRepr]
		public struct ISyncMgrSyncCallback : IUnknown
		{
			public const new Guid IID = .(0x884ccd87, 0xb139, 0x4937, 0xa4, 0xba, 0x4f, 0x8e, 0x19, 0x51, 0x3f, 0xbe);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ReportProgress(PWSTR pszItemID, PWSTR pszProgressText, SYNCMGR_PROGRESS_STATUS nStatus, uint32 uCurrentStep, uint32 uMaxStep, SYNCMGR_CANCEL_REQUEST* pnCancelRequest) mut
			{
				return VT.ReportProgress(&this, pszItemID, pszProgressText, nStatus, uCurrentStep, uMaxStep, pnCancelRequest);
			}
			public HRESULT SetHandlerProgressText(PWSTR pszProgressText, SYNCMGR_CANCEL_REQUEST* pnCancelRequest) mut
			{
				return VT.SetHandlerProgressText(&this, pszProgressText, pnCancelRequest);
			}
			public HRESULT ReportEvent(PWSTR pszItemID, SYNCMGR_EVENT_LEVEL nLevel, SYNCMGR_EVENT_FLAGS nFlags, PWSTR pszName, PWSTR pszDescription, PWSTR pszLinkText, PWSTR pszLinkReference, PWSTR pszContext, Guid* pguidEventID) mut
			{
				return VT.ReportEvent(&this, pszItemID, nLevel, nFlags, pszName, pszDescription, pszLinkText, pszLinkReference, pszContext, pguidEventID);
			}
			public HRESULT CanContinue(PWSTR pszItemID) mut
			{
				return VT.CanContinue(&this, pszItemID);
			}
			public HRESULT QueryForAdditionalItems(IEnumString** ppenumItemIDs, IEnumUnknown** ppenumPunks) mut
			{
				return VT.QueryForAdditionalItems(&this, ppenumItemIDs, ppenumPunks);
			}
			public HRESULT AddItemToSession(PWSTR pszItemID) mut
			{
				return VT.AddItemToSession(&this, pszItemID);
			}
			public HRESULT AddIUnknownToSession(IUnknown* punk) mut
			{
				return VT.AddIUnknownToSession(&this, punk);
			}
			public HRESULT ProposeItem(ISyncMgrSyncItem* pNewItem) mut
			{
				return VT.ProposeItem(&this, pNewItem);
			}
			public HRESULT CommitItem(PWSTR pszItemID) mut
			{
				return VT.CommitItem(&this, pszItemID);
			}
			public HRESULT ReportManualSync() mut
			{
				return VT.ReportManualSync(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszItemID, PWSTR pszProgressText, SYNCMGR_PROGRESS_STATUS nStatus, uint32 uCurrentStep, uint32 uMaxStep, SYNCMGR_CANCEL_REQUEST* pnCancelRequest) ReportProgress;
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszProgressText, SYNCMGR_CANCEL_REQUEST* pnCancelRequest) SetHandlerProgressText;
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszItemID, SYNCMGR_EVENT_LEVEL nLevel, SYNCMGR_EVENT_FLAGS nFlags, PWSTR pszName, PWSTR pszDescription, PWSTR pszLinkText, PWSTR pszLinkReference, PWSTR pszContext, Guid* pguidEventID) ReportEvent;
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszItemID) CanContinue;
				public new function HRESULT(ISyncMgrSyncCallback *self, IEnumString** ppenumItemIDs, IEnumUnknown** ppenumPunks) QueryForAdditionalItems;
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszItemID) AddItemToSession;
				public new function HRESULT(ISyncMgrSyncCallback *self, IUnknown* punk) AddIUnknownToSession;
				public new function HRESULT(ISyncMgrSyncCallback *self, ISyncMgrSyncItem* pNewItem) ProposeItem;
				public new function HRESULT(ISyncMgrSyncCallback *self, PWSTR pszItemID) CommitItem;
				public new function HRESULT(ISyncMgrSyncCallback *self) ReportManualSync;
			}
		}
		[CRepr]
		public struct ISyncMgrUIOperation : IUnknown
		{
			public const new Guid IID = .(0xfc7cfa47, 0xdfe1, 0x45b5, 0xa0, 0x49, 0x8c, 0xfd, 0x82, 0xbe, 0xc2, 0x71);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Run(HWND hwndOwner) mut
			{
				return VT.Run(&this, hwndOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrUIOperation *self, HWND hwndOwner) Run;
			}
		}
		[CRepr]
		public struct ISyncMgrEventLinkUIOperation : ISyncMgrUIOperation
		{
			public const new Guid IID = .(0x64522e52, 0x848b, 0x4015, 0x89, 0xce, 0x5a, 0x36, 0xf0, 0x0b, 0x94, 0xff);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Init(Guid* rguidEventID, ISyncMgrEvent* pEvent) mut
			{
				return VT.Init(&this, rguidEventID, pEvent);
			}
			[CRepr]
			public struct VTable : ISyncMgrUIOperation.VTable
			{
				public new function HRESULT(ISyncMgrEventLinkUIOperation *self, Guid* rguidEventID, ISyncMgrEvent* pEvent) Init;
			}
		}
		[CRepr]
		public struct ISyncMgrScheduleWizardUIOperation : ISyncMgrUIOperation
		{
			public const new Guid IID = .(0x459a6c84, 0x21d2, 0x4ddc, 0x8a, 0x53, 0xf0, 0x23, 0xa4, 0x60, 0x66, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InitWizard(PWSTR pszHandlerID) mut
			{
				return VT.InitWizard(&this, pszHandlerID);
			}
			[CRepr]
			public struct VTable : ISyncMgrUIOperation.VTable
			{
				public new function HRESULT(ISyncMgrScheduleWizardUIOperation *self, PWSTR pszHandlerID) InitWizard;
			}
		}
		[CRepr]
		public struct ISyncMgrSyncResult : IUnknown
		{
			public const new Guid IID = .(0x2b90f17e, 0x5a3e, 0x4b33, 0xbb, 0x7f, 0x1b, 0xc4, 0x80, 0x56, 0xb9, 0x4d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Result(SYNCMGR_PROGRESS_STATUS nStatus, uint32 cError, uint32 cConflicts) mut
			{
				return VT.Result(&this, nStatus, cError, cConflicts);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSyncResult *self, SYNCMGR_PROGRESS_STATUS nStatus, uint32 cError, uint32 cConflicts) Result;
			}
		}
		[CRepr]
		public struct ISyncMgrControl : IUnknown
		{
			public const new Guid IID = .(0x9b63616c, 0x36b2, 0x46bc, 0x95, 0x9f, 0xc1, 0x59, 0x39, 0x52, 0xd1, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT StartHandlerSync(PWSTR pszHandlerID, HWND hwndOwner, IUnknown* punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ISyncMgrSyncResult* pResult) mut
			{
				return VT.StartHandlerSync(&this, pszHandlerID, hwndOwner, punk, nSyncControlFlags, pResult);
			}
			public HRESULT StartItemSync(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, IUnknown* punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ISyncMgrSyncResult* pResult) mut
			{
				return VT.StartItemSync(&this, pszHandlerID, ppszItemIDs, cItems, hwndOwner, punk, nSyncControlFlags, pResult);
			}
			public HRESULT StartSyncAll(HWND hwndOwner) mut
			{
				return VT.StartSyncAll(&this, hwndOwner);
			}
			public HRESULT StopHandlerSync(PWSTR pszHandlerID) mut
			{
				return VT.StopHandlerSync(&this, pszHandlerID);
			}
			public HRESULT StopItemSync(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems) mut
			{
				return VT.StopItemSync(&this, pszHandlerID, ppszItemIDs, cItems);
			}
			public HRESULT StopSyncAll() mut
			{
				return VT.StopSyncAll(&this);
			}
			public HRESULT UpdateHandlerCollection(Guid* rclsidCollectionID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.UpdateHandlerCollection(&this, rclsidCollectionID, nControlFlags);
			}
			public HRESULT UpdateHandler(PWSTR pszHandlerID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.UpdateHandler(&this, pszHandlerID, nControlFlags);
			}
			public HRESULT UpdateItem(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.UpdateItem(&this, pszHandlerID, pszItemID, nControlFlags);
			}
			public HRESULT UpdateEvents(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.UpdateEvents(&this, pszHandlerID, pszItemID, nControlFlags);
			}
			public HRESULT UpdateConflict(PWSTR pszHandlerID, PWSTR pszItemID, ISyncMgrConflict* pConflict, SYNCMGR_UPDATE_REASON nReason) mut
			{
				return VT.UpdateConflict(&this, pszHandlerID, pszItemID, pConflict, nReason);
			}
			public HRESULT UpdateConflicts(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.UpdateConflicts(&this, pszHandlerID, pszItemID, nControlFlags);
			}
			public HRESULT ActivateHandler(BOOL fActivate, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.ActivateHandler(&this, fActivate, pszHandlerID, hwndOwner, nControlFlags);
			}
			public HRESULT EnableHandler(BOOL fEnable, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.EnableHandler(&this, fEnable, pszHandlerID, hwndOwner, nControlFlags);
			}
			public HRESULT EnableItem(BOOL fEnable, PWSTR pszHandlerID, PWSTR pszItemID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut
			{
				return VT.EnableItem(&this, fEnable, pszHandlerID, pszItemID, hwndOwner, nControlFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, HWND hwndOwner, IUnknown* punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ISyncMgrSyncResult* pResult) StartHandlerSync;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, IUnknown* punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ISyncMgrSyncResult* pResult) StartItemSync;
				public new function HRESULT(ISyncMgrControl *self, HWND hwndOwner) StartSyncAll;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID) StopHandlerSync;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems) StopItemSync;
				public new function HRESULT(ISyncMgrControl *self) StopSyncAll;
				public new function HRESULT(ISyncMgrControl *self, Guid* rclsidCollectionID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateHandlerCollection;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateHandler;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateItem;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateEvents;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR pszItemID, ISyncMgrConflict* pConflict, SYNCMGR_UPDATE_REASON nReason) UpdateConflict;
				public new function HRESULT(ISyncMgrControl *self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateConflicts;
				public new function HRESULT(ISyncMgrControl *self, BOOL fActivate, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) ActivateHandler;
				public new function HRESULT(ISyncMgrControl *self, BOOL fEnable, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) EnableHandler;
				public new function HRESULT(ISyncMgrControl *self, BOOL fEnable, PWSTR pszHandlerID, PWSTR pszItemID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) EnableItem;
			}
		}
		[CRepr]
		public struct ISyncMgrEventStore : IUnknown
		{
			public const new Guid IID = .(0x37e412f9, 0x016e, 0x44c2, 0x81, 0xff, 0xdb, 0x3a, 0xdd, 0x77, 0x42, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEventEnumerator(IEnumSyncMgrEvents** ppenum) mut
			{
				return VT.GetEventEnumerator(&this, ppenum);
			}
			public HRESULT GetEventCount(uint32* pcEvents) mut
			{
				return VT.GetEventCount(&this, pcEvents);
			}
			public HRESULT GetEvent(Guid* rguidEventID, ISyncMgrEvent** ppEvent) mut
			{
				return VT.GetEvent(&this, rguidEventID, ppEvent);
			}
			public HRESULT RemoveEvent(Guid* pguidEventIDs, uint32 cEvents) mut
			{
				return VT.RemoveEvent(&this, pguidEventIDs, cEvents);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrEventStore *self, IEnumSyncMgrEvents** ppenum) GetEventEnumerator;
				public new function HRESULT(ISyncMgrEventStore *self, uint32* pcEvents) GetEventCount;
				public new function HRESULT(ISyncMgrEventStore *self, Guid* rguidEventID, ISyncMgrEvent** ppEvent) GetEvent;
				public new function HRESULT(ISyncMgrEventStore *self, Guid* pguidEventIDs, uint32 cEvents) RemoveEvent;
			}
		}
		[CRepr]
		public struct ISyncMgrEvent : IUnknown
		{
			public const new Guid IID = .(0xfee0ef8b, 0x46bd, 0x4db4, 0xb7, 0xe6, 0xff, 0x2c, 0x68, 0x73, 0x13, 0xbc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetEventID(Guid* pguidEventID) mut
			{
				return VT.GetEventID(&this, pguidEventID);
			}
			public HRESULT GetHandlerID(PWSTR* ppszHandlerID) mut
			{
				return VT.GetHandlerID(&this, ppszHandlerID);
			}
			public HRESULT GetItemID(PWSTR* ppszItemID) mut
			{
				return VT.GetItemID(&this, ppszItemID);
			}
			public HRESULT GetLevel(SYNCMGR_EVENT_LEVEL* pnLevel) mut
			{
				return VT.GetLevel(&this, pnLevel);
			}
			public HRESULT ComGetFlags(SYNCMGR_EVENT_FLAGS* pnFlags) mut
			{
				return VT.ComGetFlags(&this, pnFlags);
			}
			public HRESULT GetTime(FILETIME* pfCreationTime) mut
			{
				return VT.GetTime(&this, pfCreationTime);
			}
			public HRESULT GetName(PWSTR* ppszName) mut
			{
				return VT.GetName(&this, ppszName);
			}
			public HRESULT GetDescription(PWSTR* ppszDescription) mut
			{
				return VT.GetDescription(&this, ppszDescription);
			}
			public HRESULT GetLinkText(PWSTR* ppszLinkText) mut
			{
				return VT.GetLinkText(&this, ppszLinkText);
			}
			public HRESULT GetLinkReference(PWSTR* ppszLinkReference) mut
			{
				return VT.GetLinkReference(&this, ppszLinkReference);
			}
			public HRESULT GetContext(PWSTR* ppszContext) mut
			{
				return VT.GetContext(&this, ppszContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrEvent *self, Guid* pguidEventID) GetEventID;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszHandlerID) GetHandlerID;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszItemID) GetItemID;
				public new function HRESULT(ISyncMgrEvent *self, SYNCMGR_EVENT_LEVEL* pnLevel) GetLevel;
				public new function HRESULT(ISyncMgrEvent *self, SYNCMGR_EVENT_FLAGS* pnFlags) ComGetFlags;
				public new function HRESULT(ISyncMgrEvent *self, FILETIME* pfCreationTime) GetTime;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszName) GetName;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszDescription) GetDescription;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszLinkText) GetLinkText;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszLinkReference) GetLinkReference;
				public new function HRESULT(ISyncMgrEvent *self, PWSTR* ppszContext) GetContext;
			}
		}
		[CRepr]
		public struct IEnumSyncMgrEvents : IUnknown
		{
			public const new Guid IID = .(0xc81a1d4e, 0x8cf7, 0x4683, 0x80, 0xe0, 0xbc, 0xae, 0x88, 0xd6, 0x77, 0xb6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ISyncMgrEvent** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncMgrEvents** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncMgrEvents *self, uint32 celt, ISyncMgrEvent** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSyncMgrEvents *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSyncMgrEvents *self) Reset;
				public new function HRESULT(IEnumSyncMgrEvents *self, IEnumSyncMgrEvents** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictStore : IUnknown
		{
			public const new Guid IID = .(0xcf8fc579, 0xc396, 0x4774, 0x85, 0xf1, 0xd9, 0x08, 0xa8, 0x31, 0x15, 0x6e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnumConflicts(PWSTR pszHandlerID, PWSTR pszItemID, IEnumSyncMgrConflict** ppEnum) mut
			{
				return VT.EnumConflicts(&this, pszHandlerID, pszItemID, ppEnum);
			}
			public HRESULT BindToConflict(SYNCMGR_CONFLICT_ID_INFO* pConflictIdInfo, Guid* riid, void** ppv) mut
			{
				return VT.BindToConflict(&this, pConflictIdInfo, riid, ppv);
			}
			public HRESULT RemoveConflicts(SYNCMGR_CONFLICT_ID_INFO* rgConflictIdInfo, uint32 cConflicts) mut
			{
				return VT.RemoveConflicts(&this, rgConflictIdInfo, cConflicts);
			}
			public HRESULT GetCount(PWSTR pszHandlerID, PWSTR pszItemID, uint32* pnConflicts) mut
			{
				return VT.GetCount(&this, pszHandlerID, pszItemID, pnConflicts);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictStore *self, PWSTR pszHandlerID, PWSTR pszItemID, IEnumSyncMgrConflict** ppEnum) EnumConflicts;
				public new function HRESULT(ISyncMgrConflictStore *self, SYNCMGR_CONFLICT_ID_INFO* pConflictIdInfo, Guid* riid, void** ppv) BindToConflict;
				public new function HRESULT(ISyncMgrConflictStore *self, SYNCMGR_CONFLICT_ID_INFO* rgConflictIdInfo, uint32 cConflicts) RemoveConflicts;
				public new function HRESULT(ISyncMgrConflictStore *self, PWSTR pszHandlerID, PWSTR pszItemID, uint32* pnConflicts) GetCount;
			}
		}
		[CRepr]
		public struct IEnumSyncMgrConflict : IUnknown
		{
			public const new Guid IID = .(0x82705914, 0xdda3, 0x4893, 0xba, 0x99, 0x49, 0xde, 0x6c, 0x8c, 0x80, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, ISyncMgrConflict** rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumSyncMgrConflict** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumSyncMgrConflict *self, uint32 celt, ISyncMgrConflict** rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumSyncMgrConflict *self, uint32 celt) Skip;
				public new function HRESULT(IEnumSyncMgrConflict *self) Reset;
				public new function HRESULT(IEnumSyncMgrConflict *self, IEnumSyncMgrConflict** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISyncMgrConflict : IUnknown
		{
			public const new Guid IID = .(0x9c204249, 0xc443, 0x4ba4, 0x85, 0xed, 0xc9, 0x72, 0x68, 0x1d, 0xb1, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetProperty(PROPERTYKEY* propkey, PROPVARIANT* ppropvar) mut
			{
				return VT.GetProperty(&this, propkey, ppropvar);
			}
			public HRESULT GetConflictIdInfo(SYNCMGR_CONFLICT_ID_INFO* pConflictIdInfo) mut
			{
				return VT.GetConflictIdInfo(&this, pConflictIdInfo);
			}
			public HRESULT GetItemsArray(ISyncMgrConflictItems** ppArray) mut
			{
				return VT.GetItemsArray(&this, ppArray);
			}
			public HRESULT Resolve(ISyncMgrConflictResolveInfo* pResolveInfo) mut
			{
				return VT.Resolve(&this, pResolveInfo);
			}
			public HRESULT GetResolutionHandler(Guid* riid, void** ppvResolutionHandler) mut
			{
				return VT.GetResolutionHandler(&this, riid, ppvResolutionHandler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflict *self, PROPERTYKEY* propkey, PROPVARIANT* ppropvar) GetProperty;
				public new function HRESULT(ISyncMgrConflict *self, SYNCMGR_CONFLICT_ID_INFO* pConflictIdInfo) GetConflictIdInfo;
				public new function HRESULT(ISyncMgrConflict *self, ISyncMgrConflictItems** ppArray) GetItemsArray;
				public new function HRESULT(ISyncMgrConflict *self, ISyncMgrConflictResolveInfo* pResolveInfo) Resolve;
				public new function HRESULT(ISyncMgrConflict *self, Guid* riid, void** ppvResolutionHandler) GetResolutionHandler;
			}
		}
		[CRepr]
		public struct ISyncMgrResolutionHandler : IUnknown
		{
			public const new Guid IID = .(0x40a3d052, 0x8bff, 0x4c4b, 0xa3, 0x38, 0xd4, 0xa3, 0x95, 0x70, 0x0d, 0xe9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryAbilities(uint32* pdwAbilities) mut
			{
				return VT.QueryAbilities(&this, pdwAbilities);
			}
			public HRESULT KeepOther(IShellItem* psiOther, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) mut
			{
				return VT.KeepOther(&this, psiOther, pFeedback);
			}
			public HRESULT KeepRecent(SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) mut
			{
				return VT.KeepRecent(&this, pFeedback);
			}
			public HRESULT RemoveFromSyncSet(SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) mut
			{
				return VT.RemoveFromSyncSet(&this, pFeedback);
			}
			public HRESULT KeepItems(ISyncMgrConflictResolutionItems* pArray, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) mut
			{
				return VT.KeepItems(&this, pArray, pFeedback);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrResolutionHandler *self, uint32* pdwAbilities) QueryAbilities;
				public new function HRESULT(ISyncMgrResolutionHandler *self, IShellItem* psiOther, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) KeepOther;
				public new function HRESULT(ISyncMgrResolutionHandler *self, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) KeepRecent;
				public new function HRESULT(ISyncMgrResolutionHandler *self, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) RemoveFromSyncSet;
				public new function HRESULT(ISyncMgrResolutionHandler *self, ISyncMgrConflictResolutionItems* pArray, SYNCMGR_RESOLUTION_FEEDBACK* pFeedback) KeepItems;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictPresenter : IUnknown
		{
			public const new Guid IID = .(0x0b4f5353, 0xfd2b, 0x42cd, 0x87, 0x63, 0x47, 0x79, 0xf2, 0xd5, 0x08, 0xa3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PresentConflict(ISyncMgrConflict* pConflict, ISyncMgrConflictResolveInfo* pResolveInfo) mut
			{
				return VT.PresentConflict(&this, pConflict, pResolveInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictPresenter *self, ISyncMgrConflict* pConflict, ISyncMgrConflictResolveInfo* pResolveInfo) PresentConflict;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictResolveInfo : IUnknown
		{
			public const new Guid IID = .(0xc405a219, 0x25a2, 0x442e, 0x87, 0x43, 0xb8, 0x45, 0xa2, 0xce, 0xe9, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetIterationInfo(uint32* pnCurrentConflict, uint32* pcConflicts, uint32* pcRemainingForApplyToAll) mut
			{
				return VT.GetIterationInfo(&this, pnCurrentConflict, pcConflicts, pcRemainingForApplyToAll);
			}
			public HRESULT GetPresenterNextStep(SYNCMGR_PRESENTER_NEXT_STEP* pnPresenterNextStep) mut
			{
				return VT.GetPresenterNextStep(&this, pnPresenterNextStep);
			}
			public HRESULT GetPresenterChoice(SYNCMGR_PRESENTER_CHOICE* pnPresenterChoice, BOOL* pfApplyToAll) mut
			{
				return VT.GetPresenterChoice(&this, pnPresenterChoice, pfApplyToAll);
			}
			public HRESULT GetItemChoiceCount(uint32* pcChoices) mut
			{
				return VT.GetItemChoiceCount(&this, pcChoices);
			}
			public HRESULT GetItemChoice(uint32 iChoice, uint32* piChoiceIndex) mut
			{
				return VT.GetItemChoice(&this, iChoice, piChoiceIndex);
			}
			public HRESULT SetPresenterNextStep(SYNCMGR_PRESENTER_NEXT_STEP nPresenterNextStep) mut
			{
				return VT.SetPresenterNextStep(&this, nPresenterNextStep);
			}
			public HRESULT SetPresenterChoice(SYNCMGR_PRESENTER_CHOICE nPresenterChoice, BOOL fApplyToAll) mut
			{
				return VT.SetPresenterChoice(&this, nPresenterChoice, fApplyToAll);
			}
			public HRESULT SetItemChoices(uint32* prgiConflictItemIndexes, uint32 cChoices) mut
			{
				return VT.SetItemChoices(&this, prgiConflictItemIndexes, cChoices);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, uint32* pnCurrentConflict, uint32* pcConflicts, uint32* pcRemainingForApplyToAll) GetIterationInfo;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, SYNCMGR_PRESENTER_NEXT_STEP* pnPresenterNextStep) GetPresenterNextStep;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, SYNCMGR_PRESENTER_CHOICE* pnPresenterChoice, BOOL* pfApplyToAll) GetPresenterChoice;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, uint32* pcChoices) GetItemChoiceCount;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, uint32 iChoice, uint32* piChoiceIndex) GetItemChoice;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, SYNCMGR_PRESENTER_NEXT_STEP nPresenterNextStep) SetPresenterNextStep;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, SYNCMGR_PRESENTER_CHOICE nPresenterChoice, BOOL fApplyToAll) SetPresenterChoice;
				public new function HRESULT(ISyncMgrConflictResolveInfo *self, uint32* prgiConflictItemIndexes, uint32 cChoices) SetItemChoices;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictFolder : IUnknown
		{
			public const new Guid IID = .(0x59287f5e, 0xbc81, 0x4fca, 0xa7, 0xf1, 0xe5, 0xa8, 0xec, 0xdb, 0x1d, 0x69);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetConflictIDList(ISyncMgrConflict* pConflict, ITEMIDLIST** ppidlConflict) mut
			{
				return VT.GetConflictIDList(&this, pConflict, ppidlConflict);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictFolder *self, ISyncMgrConflict* pConflict, ITEMIDLIST** ppidlConflict) GetConflictIDList;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictItems : IUnknown
		{
			public const new Guid IID = .(0x9c7ead52, 0x8023, 0x4936, 0xa4, 0xdb, 0xd2, 0xa9, 0xa9, 0x9e, 0x43, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetItem(uint32 iIndex, CONFIRM_CONFLICT_ITEM* pItemInfo) mut
			{
				return VT.GetItem(&this, iIndex, pItemInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictItems *self, uint32* pCount) GetCount;
				public new function HRESULT(ISyncMgrConflictItems *self, uint32 iIndex, CONFIRM_CONFLICT_ITEM* pItemInfo) GetItem;
			}
		}
		[CRepr]
		public struct ISyncMgrConflictResolutionItems : IUnknown
		{
			public const new Guid IID = .(0x458725b9, 0x129d, 0x4135, 0xa9, 0x98, 0x9c, 0xea, 0xfe, 0xc2, 0x70, 0x07);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetCount(uint32* pCount) mut
			{
				return VT.GetCount(&this, pCount);
			}
			public HRESULT GetItem(uint32 iIndex, CONFIRM_CONFLICT_RESULT_INFO* pItemInfo) mut
			{
				return VT.GetItem(&this, iIndex, pItemInfo);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrConflictResolutionItems *self, uint32* pCount) GetCount;
				public new function HRESULT(ISyncMgrConflictResolutionItems *self, uint32 iIndex, CONFIRM_CONFLICT_RESULT_INFO* pItemInfo) GetItem;
			}
		}
		[CRepr]
		public struct IInputPanelConfiguration : IUnknown
		{
			public const new Guid IID = .(0x41c81592, 0x514c, 0x48bd, 0xa2, 0x2e, 0xe6, 0xaf, 0x63, 0x85, 0x21, 0xa6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT EnableFocusTracking() mut
			{
				return VT.EnableFocusTracking(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputPanelConfiguration *self) EnableFocusTracking;
			}
		}
		[CRepr]
		public struct IInputPanelInvocationConfiguration : IUnknown
		{
			public const new Guid IID = .(0xa213f136, 0x3b45, 0x4362, 0xa3, 0x32, 0xef, 0xb6, 0x54, 0x7c, 0xd4, 0x32);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RequireTouchInEditControl() mut
			{
				return VT.RequireTouchInEditControl(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputPanelInvocationConfiguration *self) RequireTouchInEditControl;
			}
		}
		[CRepr]
		public struct ISharedBitmap : IUnknown
		{
			public const new Guid IID = .(0x091162a4, 0xbc96, 0x411f, 0xaa, 0xe8, 0xc5, 0x12, 0x2c, 0xd0, 0x33, 0x63);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetSharedBitmap(HBITMAP* phbm) mut
			{
				return VT.GetSharedBitmap(&this, phbm);
			}
			public HRESULT GetSize(SIZE* pSize) mut
			{
				return VT.GetSize(&this, pSize);
			}
			public HRESULT GetFormat(WTS_ALPHATYPE* pat) mut
			{
				return VT.GetFormat(&this, pat);
			}
			public HRESULT InitializeBitmap(HBITMAP hbm, WTS_ALPHATYPE wtsAT) mut
			{
				return VT.InitializeBitmap(&this, hbm, wtsAT);
			}
			public HRESULT Detach(HBITMAP* phbm) mut
			{
				return VT.Detach(&this, phbm);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISharedBitmap *self, HBITMAP* phbm) GetSharedBitmap;
				public new function HRESULT(ISharedBitmap *self, SIZE* pSize) GetSize;
				public new function HRESULT(ISharedBitmap *self, WTS_ALPHATYPE* pat) GetFormat;
				public new function HRESULT(ISharedBitmap *self, HBITMAP hbm, WTS_ALPHATYPE wtsAT) InitializeBitmap;
				public new function HRESULT(ISharedBitmap *self, HBITMAP* phbm) Detach;
			}
		}
		[CRepr]
		public struct IThumbnailCache : IUnknown
		{
			public const new Guid IID = .(0xf676c15d, 0x596a, 0x4ce2, 0x82, 0x34, 0x33, 0x99, 0x6f, 0x44, 0x5d, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetThumbnail(IShellItem* pShellItem, uint32 cxyRequestedThumbSize, WTS_FLAGS flags, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags, WTS_THUMBNAILID* pThumbnailID) mut
			{
				return VT.GetThumbnail(&this, pShellItem, cxyRequestedThumbSize, flags, ppvThumb, pOutFlags, pThumbnailID);
			}
			public HRESULT GetThumbnailByID(WTS_THUMBNAILID thumbnailID, uint32 cxyRequestedThumbSize, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags) mut
			{
				return VT.GetThumbnailByID(&this, thumbnailID, cxyRequestedThumbSize, ppvThumb, pOutFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailCache *self, IShellItem* pShellItem, uint32 cxyRequestedThumbSize, WTS_FLAGS flags, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags, WTS_THUMBNAILID* pThumbnailID) GetThumbnail;
				public new function HRESULT(IThumbnailCache *self, WTS_THUMBNAILID thumbnailID, uint32 cxyRequestedThumbSize, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags) GetThumbnailByID;
			}
		}
		[CRepr]
		public struct IThumbnailProvider : IUnknown
		{
			public const new Guid IID = .(0xe357fccd, 0xa995, 0x4576, 0xb0, 0x1f, 0x23, 0x46, 0x30, 0x15, 0x4e, 0x96);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetThumbnail(uint32 cx, HBITMAP* phbmp, WTS_ALPHATYPE* pdwAlpha) mut
			{
				return VT.GetThumbnail(&this, cx, phbmp, pdwAlpha);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailProvider *self, uint32 cx, HBITMAP* phbmp, WTS_ALPHATYPE* pdwAlpha) GetThumbnail;
			}
		}
		[CRepr]
		public struct IThumbnailSettings : IUnknown
		{
			public const new Guid IID = .(0xf4376f00, 0xbef5, 0x4d45, 0x80, 0xf3, 0x1e, 0x02, 0x3b, 0xbf, 0x12, 0x09);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetContext(WTS_CONTEXTFLAGS dwContext) mut
			{
				return VT.SetContext(&this, dwContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailSettings *self, WTS_CONTEXTFLAGS dwContext) SetContext;
			}
		}
		[CRepr]
		public struct IThumbnailCachePrimer : IUnknown
		{
			public const new Guid IID = .(0x0f03f8fe, 0x2b26, 0x46f0, 0x96, 0x5a, 0x21, 0x2a, 0xa8, 0xd6, 0x6b, 0x76);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT PageInThumbnail(IShellItem* psi, WTS_FLAGS wtsFlags, uint32 cxyRequestedThumbSize) mut
			{
				return VT.PageInThumbnail(&this, psi, wtsFlags, cxyRequestedThumbSize);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailCachePrimer *self, IShellItem* psi, WTS_FLAGS wtsFlags, uint32 cxyRequestedThumbSize) PageInThumbnail;
			}
		}
		[CRepr]
		public struct IShellImageDataFactory : IUnknown
		{
			public const new Guid IID = .(0x9be8ed5c, 0xedab, 0x4d75, 0x90, 0xf3, 0xbd, 0x5b, 0xdb, 0xb2, 0x1c, 0x82);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateIShellImageData(IShellImageData** ppshimg) mut
			{
				return VT.CreateIShellImageData(&this, ppshimg);
			}
			public HRESULT CreateImageFromFile(PWSTR pszPath, IShellImageData** ppshimg) mut
			{
				return VT.CreateImageFromFile(&this, pszPath, ppshimg);
			}
			public HRESULT CreateImageFromStream(IStream* pStream, IShellImageData** ppshimg) mut
			{
				return VT.CreateImageFromStream(&this, pStream, ppshimg);
			}
			public HRESULT GetDataFormatFromPath(PWSTR pszPath, Guid* pDataFormat) mut
			{
				return VT.GetDataFormatFromPath(&this, pszPath, pDataFormat);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellImageDataFactory *self, IShellImageData** ppshimg) CreateIShellImageData;
				public new function HRESULT(IShellImageDataFactory *self, PWSTR pszPath, IShellImageData** ppshimg) CreateImageFromFile;
				public new function HRESULT(IShellImageDataFactory *self, IStream* pStream, IShellImageData** ppshimg) CreateImageFromStream;
				public new function HRESULT(IShellImageDataFactory *self, PWSTR pszPath, Guid* pDataFormat) GetDataFormatFromPath;
			}
		}
		[CRepr]
		public struct IShellImageData : IUnknown
		{
			public const new Guid IID = .(0xbfdeec12, 0x8040, 0x4403, 0xa5, 0xea, 0x9e, 0x07, 0xda, 0xfc, 0xf5, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Decode(uint32 dwFlags, uint32 cxDesired, uint32 cyDesired) mut
			{
				return VT.Decode(&this, dwFlags, cxDesired, cyDesired);
			}
			public HRESULT Draw(HDC hdc, RECT* prcDest, RECT* prcSrc) mut
			{
				return VT.Draw(&this, hdc, prcDest, prcSrc);
			}
			public HRESULT NextFrame() mut
			{
				return VT.NextFrame(&this);
			}
			public HRESULT NextPage() mut
			{
				return VT.NextPage(&this);
			}
			public HRESULT PrevPage() mut
			{
				return VT.PrevPage(&this);
			}
			public HRESULT IsTransparent() mut
			{
				return VT.IsTransparent(&this);
			}
			public HRESULT IsAnimated() mut
			{
				return VT.IsAnimated(&this);
			}
			public HRESULT IsVector() mut
			{
				return VT.IsVector(&this);
			}
			public HRESULT IsMultipage() mut
			{
				return VT.IsMultipage(&this);
			}
			public HRESULT IsEditable() mut
			{
				return VT.IsEditable(&this);
			}
			public HRESULT IsPrintable() mut
			{
				return VT.IsPrintable(&this);
			}
			public HRESULT IsDecoded() mut
			{
				return VT.IsDecoded(&this);
			}
			public HRESULT GetCurrentPage(uint32* pnPage) mut
			{
				return VT.GetCurrentPage(&this, pnPage);
			}
			public HRESULT GetPageCount(uint32* pcPages) mut
			{
				return VT.GetPageCount(&this, pcPages);
			}
			public HRESULT SelectPage(uint32 iPage) mut
			{
				return VT.SelectPage(&this, iPage);
			}
			public HRESULT GetSize(SIZE* pSize) mut
			{
				return VT.GetSize(&this, pSize);
			}
			public HRESULT GetRawDataFormat(Guid* pDataFormat) mut
			{
				return VT.GetRawDataFormat(&this, pDataFormat);
			}
			public HRESULT GetPixelFormat(uint32* pFormat) mut
			{
				return VT.GetPixelFormat(&this, pFormat);
			}
			public HRESULT GetDelay(uint32* pdwDelay) mut
			{
				return VT.GetDelay(&this, pdwDelay);
			}
			public HRESULT GetProperties(uint32 dwMode, IPropertySetStorage** ppPropSet) mut
			{
				return VT.GetProperties(&this, dwMode, ppPropSet);
			}
			public HRESULT Rotate(uint32 dwAngle) mut
			{
				return VT.Rotate(&this, dwAngle);
			}
			public HRESULT Scale(uint32 cx, uint32 cy, uint32 hints) mut
			{
				return VT.Scale(&this, cx, cy, hints);
			}
			public HRESULT DiscardEdit() mut
			{
				return VT.DiscardEdit(&this);
			}
			public HRESULT SetEncoderParams(IPropertyBag* pbagEnc) mut
			{
				return VT.SetEncoderParams(&this, pbagEnc);
			}
			public HRESULT DisplayName(PWSTR wszName, uint32 cch) mut
			{
				return VT.DisplayName(&this, wszName, cch);
			}
			public HRESULT GetResolution(uint32* puResolutionX, uint32* puResolutionY) mut
			{
				return VT.GetResolution(&this, puResolutionX, puResolutionY);
			}
			public HRESULT GetEncoderParams(Guid* pguidFmt, uint8** ppEncParams) mut
			{
				return VT.GetEncoderParams(&this, pguidFmt, ppEncParams);
			}
			public HRESULT RegisterAbort(IShellImageDataAbort* pAbort, IShellImageDataAbort** ppAbortPrev) mut
			{
				return VT.RegisterAbort(&this, pAbort, ppAbortPrev);
			}
			public HRESULT CloneFrame(uint8** ppImg) mut
			{
				return VT.CloneFrame(&this, ppImg);
			}
			public HRESULT ReplaceFrame(uint8* pImg) mut
			{
				return VT.ReplaceFrame(&this, pImg);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellImageData *self, uint32 dwFlags, uint32 cxDesired, uint32 cyDesired) Decode;
				public new function HRESULT(IShellImageData *self, HDC hdc, RECT* prcDest, RECT* prcSrc) Draw;
				public new function HRESULT(IShellImageData *self) NextFrame;
				public new function HRESULT(IShellImageData *self) NextPage;
				public new function HRESULT(IShellImageData *self) PrevPage;
				public new function HRESULT(IShellImageData *self) IsTransparent;
				public new function HRESULT(IShellImageData *self) IsAnimated;
				public new function HRESULT(IShellImageData *self) IsVector;
				public new function HRESULT(IShellImageData *self) IsMultipage;
				public new function HRESULT(IShellImageData *self) IsEditable;
				public new function HRESULT(IShellImageData *self) IsPrintable;
				public new function HRESULT(IShellImageData *self) IsDecoded;
				public new function HRESULT(IShellImageData *self, uint32* pnPage) GetCurrentPage;
				public new function HRESULT(IShellImageData *self, uint32* pcPages) GetPageCount;
				public new function HRESULT(IShellImageData *self, uint32 iPage) SelectPage;
				public new function HRESULT(IShellImageData *self, SIZE* pSize) GetSize;
				public new function HRESULT(IShellImageData *self, Guid* pDataFormat) GetRawDataFormat;
				public new function HRESULT(IShellImageData *self, uint32* pFormat) GetPixelFormat;
				public new function HRESULT(IShellImageData *self, uint32* pdwDelay) GetDelay;
				public new function HRESULT(IShellImageData *self, uint32 dwMode, IPropertySetStorage** ppPropSet) GetProperties;
				public new function HRESULT(IShellImageData *self, uint32 dwAngle) Rotate;
				public new function HRESULT(IShellImageData *self, uint32 cx, uint32 cy, uint32 hints) Scale;
				public new function HRESULT(IShellImageData *self) DiscardEdit;
				public new function HRESULT(IShellImageData *self, IPropertyBag* pbagEnc) SetEncoderParams;
				public new function HRESULT(IShellImageData *self, PWSTR wszName, uint32 cch) DisplayName;
				public new function HRESULT(IShellImageData *self, uint32* puResolutionX, uint32* puResolutionY) GetResolution;
				public new function HRESULT(IShellImageData *self, Guid* pguidFmt, uint8** ppEncParams) GetEncoderParams;
				public new function HRESULT(IShellImageData *self, IShellImageDataAbort* pAbort, IShellImageDataAbort** ppAbortPrev) RegisterAbort;
				public new function HRESULT(IShellImageData *self, uint8** ppImg) CloneFrame;
				public new function HRESULT(IShellImageData *self, uint8* pImg) ReplaceFrame;
			}
		}
		[CRepr]
		public struct IShellImageDataAbort : IUnknown
		{
			public const new Guid IID = .(0x53fb8e58, 0x50c0, 0x4003, 0xb4, 0xaa, 0x0c, 0x8d, 0xf2, 0x8e, 0x7f, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryAbort() mut
			{
				return VT.QueryAbort(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellImageDataAbort *self) QueryAbort;
			}
		}
		[CRepr]
		public struct IStorageProviderPropertyHandler : IUnknown
		{
			public const new Guid IID = .(0x301dfbe5, 0x524c, 0x4b0f, 0x8b, 0x2d, 0x21, 0xc4, 0x0b, 0x3a, 0x29, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RetrieveProperties(PROPERTYKEY* propertiesToRetrieve, uint32 propertiesToRetrieveCount, IPropertyStore** retrievedProperties) mut
			{
				return VT.RetrieveProperties(&this, propertiesToRetrieve, propertiesToRetrieveCount, retrievedProperties);
			}
			public HRESULT SaveProperties(IPropertyStore* propertiesToSave) mut
			{
				return VT.SaveProperties(&this, propertiesToSave);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStorageProviderPropertyHandler *self, PROPERTYKEY* propertiesToRetrieve, uint32 propertiesToRetrieveCount, IPropertyStore** retrievedProperties) RetrieveProperties;
				public new function HRESULT(IStorageProviderPropertyHandler *self, IPropertyStore* propertiesToSave) SaveProperties;
			}
		}
		[CRepr]
		public struct IStorageProviderHandler : IUnknown
		{
			public const new Guid IID = .(0x162c6fb5, 0x44d3, 0x435b, 0x90, 0x3d, 0xe6, 0x13, 0xfa, 0x09, 0x3f, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPropertyHandlerFromPath(PWSTR path, IStorageProviderPropertyHandler** propertyHandler) mut
			{
				return VT.GetPropertyHandlerFromPath(&this, path, propertyHandler);
			}
			public HRESULT GetPropertyHandlerFromUri(PWSTR uri, IStorageProviderPropertyHandler** propertyHandler) mut
			{
				return VT.GetPropertyHandlerFromUri(&this, uri, propertyHandler);
			}
			public HRESULT GetPropertyHandlerFromFileId(PWSTR fileId, IStorageProviderPropertyHandler** propertyHandler) mut
			{
				return VT.GetPropertyHandlerFromFileId(&this, fileId, propertyHandler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IStorageProviderHandler *self, PWSTR path, IStorageProviderPropertyHandler** propertyHandler) GetPropertyHandlerFromPath;
				public new function HRESULT(IStorageProviderHandler *self, PWSTR uri, IStorageProviderPropertyHandler** propertyHandler) GetPropertyHandlerFromUri;
				public new function HRESULT(IStorageProviderHandler *self, PWSTR fileId, IStorageProviderPropertyHandler** propertyHandler) GetPropertyHandlerFromFileId;
			}
		}
		[CRepr]
		public struct ISyncMgrSynchronizeCallback : IUnknown
		{
			public const new Guid IID = .(0x6295df41, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ShowPropertiesCompleted(HRESULT hr) mut
			{
				return VT.ShowPropertiesCompleted(&this, hr);
			}
			public HRESULT PrepareForSyncCompleted(HRESULT hr) mut
			{
				return VT.PrepareForSyncCompleted(&this, hr);
			}
			public HRESULT SynchronizeCompleted(HRESULT hr) mut
			{
				return VT.SynchronizeCompleted(&this, hr);
			}
			public HRESULT ShowErrorCompleted(HRESULT hr, uint32 cItems, Guid* pItemIDs) mut
			{
				return VT.ShowErrorCompleted(&this, hr, cItems, pItemIDs);
			}
			public HRESULT EnableModeless(BOOL fEnable) mut
			{
				return VT.EnableModeless(&this, fEnable);
			}
			public HRESULT Progress(Guid* ItemID, SYNCMGRPROGRESSITEM* pSyncProgressItem) mut
			{
				return VT.Progress(&this, ItemID, pSyncProgressItem);
			}
			public HRESULT LogError(uint32 dwErrorLevel, PWSTR pszErrorText, SYNCMGRLOGERRORINFO* pSyncLogError) mut
			{
				return VT.LogError(&this, dwErrorLevel, pszErrorText, pSyncLogError);
			}
			public HRESULT DeleteLogError(Guid* ErrorID, uint32 dwReserved) mut
			{
				return VT.DeleteLogError(&this, ErrorID, dwReserved);
			}
			public HRESULT EstablishConnection(PWSTR pwszConnection, uint32 dwReserved) mut
			{
				return VT.EstablishConnection(&this, pwszConnection, dwReserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, HRESULT hr) ShowPropertiesCompleted;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, HRESULT hr) PrepareForSyncCompleted;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, HRESULT hr) SynchronizeCompleted;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, HRESULT hr, uint32 cItems, Guid* pItemIDs) ShowErrorCompleted;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, BOOL fEnable) EnableModeless;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, Guid* ItemID, SYNCMGRPROGRESSITEM* pSyncProgressItem) Progress;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, uint32 dwErrorLevel, PWSTR pszErrorText, SYNCMGRLOGERRORINFO* pSyncLogError) LogError;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, Guid* ErrorID, uint32 dwReserved) DeleteLogError;
				public new function HRESULT(ISyncMgrSynchronizeCallback *self, PWSTR pwszConnection, uint32 dwReserved) EstablishConnection;
			}
		}
		[CRepr]
		public struct ISyncMgrEnumItems : IUnknown
		{
			public const new Guid IID = .(0x6295df2a, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, SYNCMGRITEM* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(ISyncMgrEnumItems** ppenum) mut
			{
				return VT.Clone(&this, ppenum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrEnumItems *self, uint32 celt, SYNCMGRITEM* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(ISyncMgrEnumItems *self, uint32 celt) Skip;
				public new function HRESULT(ISyncMgrEnumItems *self) Reset;
				public new function HRESULT(ISyncMgrEnumItems *self, ISyncMgrEnumItems** ppenum) Clone;
			}
		}
		[CRepr]
		public struct ISyncMgrSynchronize : IUnknown
		{
			public const new Guid IID = .(0x6295df40, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(uint32 dwReserved, uint32 dwSyncMgrFlags, uint32 cbCookie, uint8* lpCookie) mut
			{
				return VT.Initialize(&this, dwReserved, dwSyncMgrFlags, cbCookie, lpCookie);
			}
			public HRESULT GetHandlerInfo(SYNCMGRHANDLERINFO** ppSyncMgrHandlerInfo) mut
			{
				return VT.GetHandlerInfo(&this, ppSyncMgrHandlerInfo);
			}
			public HRESULT EnumSyncMgrItems(ISyncMgrEnumItems** ppSyncMgrEnumItems) mut
			{
				return VT.EnumSyncMgrItems(&this, ppSyncMgrEnumItems);
			}
			public HRESULT GetItemObject(Guid* ItemID, Guid* riid, void** ppv) mut
			{
				return VT.GetItemObject(&this, ItemID, riid, ppv);
			}
			public HRESULT ShowProperties(HWND hWndParent, Guid* ItemID) mut
			{
				return VT.ShowProperties(&this, hWndParent, ItemID);
			}
			public HRESULT SetProgressCallback(ISyncMgrSynchronizeCallback* lpCallBack) mut
			{
				return VT.SetProgressCallback(&this, lpCallBack);
			}
			public HRESULT PrepareForSync(uint32 cbNumItems, Guid* pItemIDs, HWND hWndParent, uint32 dwReserved) mut
			{
				return VT.PrepareForSync(&this, cbNumItems, pItemIDs, hWndParent, dwReserved);
			}
			public HRESULT Synchronize(HWND hWndParent) mut
			{
				return VT.Synchronize(&this, hWndParent);
			}
			public HRESULT SetItemStatus(Guid* pItemID, uint32 dwSyncMgrStatus) mut
			{
				return VT.SetItemStatus(&this, pItemID, dwSyncMgrStatus);
			}
			public HRESULT ShowError(HWND hWndParent, Guid* ErrorID) mut
			{
				return VT.ShowError(&this, hWndParent, ErrorID);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSynchronize *self, uint32 dwReserved, uint32 dwSyncMgrFlags, uint32 cbCookie, uint8* lpCookie) Initialize;
				public new function HRESULT(ISyncMgrSynchronize *self, SYNCMGRHANDLERINFO** ppSyncMgrHandlerInfo) GetHandlerInfo;
				public new function HRESULT(ISyncMgrSynchronize *self, ISyncMgrEnumItems** ppSyncMgrEnumItems) EnumSyncMgrItems;
				public new function HRESULT(ISyncMgrSynchronize *self, Guid* ItemID, Guid* riid, void** ppv) GetItemObject;
				public new function HRESULT(ISyncMgrSynchronize *self, HWND hWndParent, Guid* ItemID) ShowProperties;
				public new function HRESULT(ISyncMgrSynchronize *self, ISyncMgrSynchronizeCallback* lpCallBack) SetProgressCallback;
				public new function HRESULT(ISyncMgrSynchronize *self, uint32 cbNumItems, Guid* pItemIDs, HWND hWndParent, uint32 dwReserved) PrepareForSync;
				public new function HRESULT(ISyncMgrSynchronize *self, HWND hWndParent) Synchronize;
				public new function HRESULT(ISyncMgrSynchronize *self, Guid* pItemID, uint32 dwSyncMgrStatus) SetItemStatus;
				public new function HRESULT(ISyncMgrSynchronize *self, HWND hWndParent, Guid* ErrorID) ShowError;
			}
		}
		[CRepr]
		public struct ISyncMgrSynchronizeInvoke : IUnknown
		{
			public const new Guid IID = .(0x6295df2c, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT UpdateItems(uint32 dwInvokeFlags, Guid* clsid, uint32 cbCookie, uint8* pCookie) mut
			{
				return VT.UpdateItems(&this, dwInvokeFlags, clsid, cbCookie, pCookie);
			}
			public HRESULT UpdateAll() mut
			{
				return VT.UpdateAll(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrSynchronizeInvoke *self, uint32 dwInvokeFlags, Guid* clsid, uint32 cbCookie, uint8* pCookie) UpdateItems;
				public new function HRESULT(ISyncMgrSynchronizeInvoke *self) UpdateAll;
			}
		}
		[CRepr]
		public struct ISyncMgrRegister : IUnknown
		{
			public const new Guid IID = .(0x6295df42, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterSyncMgrHandler(Guid* clsidHandler, PWSTR pwszDescription, uint32 dwSyncMgrRegisterFlags) mut
			{
				return VT.RegisterSyncMgrHandler(&this, clsidHandler, pwszDescription, dwSyncMgrRegisterFlags);
			}
			public HRESULT UnregisterSyncMgrHandler(Guid* clsidHandler, uint32 dwReserved) mut
			{
				return VT.UnregisterSyncMgrHandler(&this, clsidHandler, dwReserved);
			}
			public HRESULT GetHandlerRegistrationInfo(Guid* clsidHandler, uint32* pdwSyncMgrRegisterFlags) mut
			{
				return VT.GetHandlerRegistrationInfo(&this, clsidHandler, pdwSyncMgrRegisterFlags);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ISyncMgrRegister *self, Guid* clsidHandler, PWSTR pwszDescription, uint32 dwSyncMgrRegisterFlags) RegisterSyncMgrHandler;
				public new function HRESULT(ISyncMgrRegister *self, Guid* clsidHandler, uint32 dwReserved) UnregisterSyncMgrHandler;
				public new function HRESULT(ISyncMgrRegister *self, Guid* clsidHandler, uint32* pdwSyncMgrRegisterFlags) GetHandlerRegistrationInfo;
			}
		}
		[CRepr]
		public struct IThumbnailStreamCache : IUnknown
		{
			public const new Guid IID = .(0x90e11430, 0x9569, 0x41d8, 0xae, 0x75, 0x6d, 0x4d, 0x2a, 0xe7, 0xcc, 0xa0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetThumbnailStream(PWSTR path, uint64 cacheId, ThumbnailStreamCacheOptions options, uint32 requestedThumbnailSize, SIZE* thumbnailSize, IStream** thumbnailStream) mut
			{
				return VT.GetThumbnailStream(&this, path, cacheId, options, requestedThumbnailSize, thumbnailSize, thumbnailStream);
			}
			public HRESULT SetThumbnailStream(PWSTR path, uint64 cacheId, SIZE thumbnailSize, IStream* thumbnailStream) mut
			{
				return VT.SetThumbnailStream(&this, path, cacheId, thumbnailSize, thumbnailStream);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IThumbnailStreamCache *self, PWSTR path, uint64 cacheId, ThumbnailStreamCacheOptions options, uint32 requestedThumbnailSize, SIZE* thumbnailSize, IStream** thumbnailStream) GetThumbnailStream;
				public new function HRESULT(IThumbnailStreamCache *self, PWSTR path, uint64 cacheId, SIZE thumbnailSize, IStream* thumbnailStream) SetThumbnailStream;
			}
		}
		[CRepr]
		public struct ITravelLogEntry : IUnknown
		{
			public const new Guid IID = .(0x7ebfdd87, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetTitle(PWSTR* ppszTitle) mut
			{
				return VT.GetTitle(&this, ppszTitle);
			}
			public HRESULT GetURL(PWSTR* ppszURL) mut
			{
				return VT.GetURL(&this, ppszURL);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITravelLogEntry *self, PWSTR* ppszTitle) GetTitle;
				public new function HRESULT(ITravelLogEntry *self, PWSTR* ppszURL) GetURL;
			}
		}
		[CRepr]
		public struct ITravelLogClient : IUnknown
		{
			public const new Guid IID = .(0x241c033e, 0xe659, 0x43da, 0xaa, 0x4d, 0x40, 0x86, 0xdb, 0xc4, 0x75, 0x8d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindWindowByIndex(uint32 dwID, IUnknown** ppunk) mut
			{
				return VT.FindWindowByIndex(&this, dwID, ppunk);
			}
			public HRESULT GetWindowData(IStream* pStream, WINDOWDATA* pWinData) mut
			{
				return VT.GetWindowData(&this, pStream, pWinData);
			}
			public HRESULT LoadHistoryPosition(PWSTR pszUrlLocation, uint32 dwPosition) mut
			{
				return VT.LoadHistoryPosition(&this, pszUrlLocation, dwPosition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITravelLogClient *self, uint32 dwID, IUnknown** ppunk) FindWindowByIndex;
				public new function HRESULT(ITravelLogClient *self, IStream* pStream, WINDOWDATA* pWinData) GetWindowData;
				public new function HRESULT(ITravelLogClient *self, PWSTR pszUrlLocation, uint32 dwPosition) LoadHistoryPosition;
			}
		}
		[CRepr]
		public struct IEnumTravelLogEntry : IUnknown
		{
			public const new Guid IID = .(0x7ebfdd85, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 cElt, ITravelLogEntry** rgElt, uint32* pcEltFetched) mut
			{
				return VT.Next(&this, cElt, rgElt, pcEltFetched);
			}
			public HRESULT Skip(uint32 cElt) mut
			{
				return VT.Skip(&this, cElt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumTravelLogEntry** ppEnum) mut
			{
				return VT.Clone(&this, ppEnum);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumTravelLogEntry *self, uint32 cElt, ITravelLogEntry** rgElt, uint32* pcEltFetched) Next;
				public new function HRESULT(IEnumTravelLogEntry *self, uint32 cElt) Skip;
				public new function HRESULT(IEnumTravelLogEntry *self) Reset;
				public new function HRESULT(IEnumTravelLogEntry *self, IEnumTravelLogEntry** ppEnum) Clone;
			}
		}
		[CRepr]
		public struct ITravelLogStg : IUnknown
		{
			public const new Guid IID = .(0x7ebfdd80, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateEntry(PWSTR pszUrl, PWSTR pszTitle, ITravelLogEntry* ptleRelativeTo, BOOL fPrepend, ITravelLogEntry** pptle) mut
			{
				return VT.CreateEntry(&this, pszUrl, pszTitle, ptleRelativeTo, fPrepend, pptle);
			}
			public HRESULT TravelTo(ITravelLogEntry* ptle) mut
			{
				return VT.TravelTo(&this, ptle);
			}
			public HRESULT EnumEntries(TLENUMF flags, IEnumTravelLogEntry** ppenum) mut
			{
				return VT.EnumEntries(&this, flags, ppenum);
			}
			public HRESULT FindEntries(TLENUMF flags, PWSTR pszUrl, IEnumTravelLogEntry** ppenum) mut
			{
				return VT.FindEntries(&this, flags, pszUrl, ppenum);
			}
			public HRESULT GetCount(TLENUMF flags, uint32* pcEntries) mut
			{
				return VT.GetCount(&this, flags, pcEntries);
			}
			public HRESULT RemoveEntry(ITravelLogEntry* ptle) mut
			{
				return VT.RemoveEntry(&this, ptle);
			}
			public HRESULT GetRelativeEntry(int32 iOffset, ITravelLogEntry** ptle) mut
			{
				return VT.GetRelativeEntry(&this, iOffset, ptle);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITravelLogStg *self, PWSTR pszUrl, PWSTR pszTitle, ITravelLogEntry* ptleRelativeTo, BOOL fPrepend, ITravelLogEntry** pptle) CreateEntry;
				public new function HRESULT(ITravelLogStg *self, ITravelLogEntry* ptle) TravelTo;
				public new function HRESULT(ITravelLogStg *self, TLENUMF flags, IEnumTravelLogEntry** ppenum) EnumEntries;
				public new function HRESULT(ITravelLogStg *self, TLENUMF flags, PWSTR pszUrl, IEnumTravelLogEntry** ppenum) FindEntries;
				public new function HRESULT(ITravelLogStg *self, TLENUMF flags, uint32* pcEntries) GetCount;
				public new function HRESULT(ITravelLogStg *self, ITravelLogEntry* ptle) RemoveEntry;
				public new function HRESULT(ITravelLogStg *self, int32 iOffset, ITravelLogEntry** ptle) GetRelativeEntry;
			}
		}
		[CRepr]
		public struct IHlink : IUnknown
		{
			public const new Guid IID = .(0x79eac9c3, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetHlinkSite(IHlinkSite* pihlSite, uint32 dwSiteData) mut
			{
				return VT.SetHlinkSite(&this, pihlSite, dwSiteData);
			}
			public HRESULT GetHlinkSite(IHlinkSite** ppihlSite, uint32* pdwSiteData) mut
			{
				return VT.GetHlinkSite(&this, ppihlSite, pdwSiteData);
			}
			public HRESULT SetMonikerReference(uint32 grfHLSETF, IMoniker* pimkTarget, PWSTR pwzLocation) mut
			{
				return VT.SetMonikerReference(&this, grfHLSETF, pimkTarget, pwzLocation);
			}
			public HRESULT GetMonikerReference(uint32 dwWhichRef, IMoniker** ppimkTarget, PWSTR* ppwzLocation) mut
			{
				return VT.GetMonikerReference(&this, dwWhichRef, ppimkTarget, ppwzLocation);
			}
			public HRESULT SetStringReference(uint32 grfHLSETF, PWSTR pwzTarget, PWSTR pwzLocation) mut
			{
				return VT.SetStringReference(&this, grfHLSETF, pwzTarget, pwzLocation);
			}
			public HRESULT GetStringReference(uint32 dwWhichRef, PWSTR* ppwzTarget, PWSTR* ppwzLocation) mut
			{
				return VT.GetStringReference(&this, dwWhichRef, ppwzTarget, ppwzLocation);
			}
			public HRESULT SetFriendlyName(PWSTR pwzFriendlyName) mut
			{
				return VT.SetFriendlyName(&this, pwzFriendlyName);
			}
			public HRESULT GetFriendlyName(uint32 grfHLFNAMEF, PWSTR* ppwzFriendlyName) mut
			{
				return VT.GetFriendlyName(&this, grfHLFNAMEF, ppwzFriendlyName);
			}
			public HRESULT SetTargetFrameName(PWSTR pwzTargetFrameName) mut
			{
				return VT.SetTargetFrameName(&this, pwzTargetFrameName);
			}
			public HRESULT GetTargetFrameName(PWSTR* ppwzTargetFrameName) mut
			{
				return VT.GetTargetFrameName(&this, ppwzTargetFrameName);
			}
			public HRESULT GetMiscStatus(uint32* pdwStatus) mut
			{
				return VT.GetMiscStatus(&this, pdwStatus);
			}
			public HRESULT Navigate(uint32 grfHLNF, IBindCtx* pibc, IBindStatusCallback* pibsc, IHlinkBrowseContext* pihlbc) mut
			{
				return VT.Navigate(&this, grfHLNF, pibc, pibsc, pihlbc);
			}
			public HRESULT SetAdditionalParams(PWSTR pwzAdditionalParams) mut
			{
				return VT.SetAdditionalParams(&this, pwzAdditionalParams);
			}
			public HRESULT GetAdditionalParams(PWSTR* ppwzAdditionalParams) mut
			{
				return VT.GetAdditionalParams(&this, ppwzAdditionalParams);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHlink *self, IHlinkSite* pihlSite, uint32 dwSiteData) SetHlinkSite;
				public new function HRESULT(IHlink *self, IHlinkSite** ppihlSite, uint32* pdwSiteData) GetHlinkSite;
				public new function HRESULT(IHlink *self, uint32 grfHLSETF, IMoniker* pimkTarget, PWSTR pwzLocation) SetMonikerReference;
				public new function HRESULT(IHlink *self, uint32 dwWhichRef, IMoniker** ppimkTarget, PWSTR* ppwzLocation) GetMonikerReference;
				public new function HRESULT(IHlink *self, uint32 grfHLSETF, PWSTR pwzTarget, PWSTR pwzLocation) SetStringReference;
				public new function HRESULT(IHlink *self, uint32 dwWhichRef, PWSTR* ppwzTarget, PWSTR* ppwzLocation) GetStringReference;
				public new function HRESULT(IHlink *self, PWSTR pwzFriendlyName) SetFriendlyName;
				public new function HRESULT(IHlink *self, uint32 grfHLFNAMEF, PWSTR* ppwzFriendlyName) GetFriendlyName;
				public new function HRESULT(IHlink *self, PWSTR pwzTargetFrameName) SetTargetFrameName;
				public new function HRESULT(IHlink *self, PWSTR* ppwzTargetFrameName) GetTargetFrameName;
				public new function HRESULT(IHlink *self, uint32* pdwStatus) GetMiscStatus;
				public new function HRESULT(IHlink *self, uint32 grfHLNF, IBindCtx* pibc, IBindStatusCallback* pibsc, IHlinkBrowseContext* pihlbc) Navigate;
				public new function HRESULT(IHlink *self, PWSTR pwzAdditionalParams) SetAdditionalParams;
				public new function HRESULT(IHlink *self, PWSTR* ppwzAdditionalParams) GetAdditionalParams;
			}
		}
		[CRepr]
		public struct IHlinkSite : IUnknown
		{
			public const new Guid IID = .(0x79eac9c2, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT QueryService(uint32 dwSiteData, Guid* guidService, Guid* riid, IUnknown** ppiunk) mut
			{
				return VT.QueryService(&this, dwSiteData, guidService, riid, ppiunk);
			}
			public HRESULT GetMoniker(uint32 dwSiteData, uint32 dwAssign, uint32 dwWhich, IMoniker** ppimk) mut
			{
				return VT.GetMoniker(&this, dwSiteData, dwAssign, dwWhich, ppimk);
			}
			public HRESULT ReadyToNavigate(uint32 dwSiteData, uint32 dwReserved) mut
			{
				return VT.ReadyToNavigate(&this, dwSiteData, dwReserved);
			}
			public HRESULT OnNavigationComplete(uint32 dwSiteData, uint32 dwreserved, HRESULT hrError, PWSTR pwzError) mut
			{
				return VT.OnNavigationComplete(&this, dwSiteData, dwreserved, hrError, pwzError);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHlinkSite *self, uint32 dwSiteData, Guid* guidService, Guid* riid, IUnknown** ppiunk) QueryService;
				public new function HRESULT(IHlinkSite *self, uint32 dwSiteData, uint32 dwAssign, uint32 dwWhich, IMoniker** ppimk) GetMoniker;
				public new function HRESULT(IHlinkSite *self, uint32 dwSiteData, uint32 dwReserved) ReadyToNavigate;
				public new function HRESULT(IHlinkSite *self, uint32 dwSiteData, uint32 dwreserved, HRESULT hrError, PWSTR pwzError) OnNavigationComplete;
			}
		}
		[CRepr]
		public struct IHlinkTarget : IUnknown
		{
			public const new Guid IID = .(0x79eac9c4, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBrowseContext(IHlinkBrowseContext* pihlbc) mut
			{
				return VT.SetBrowseContext(&this, pihlbc);
			}
			public HRESULT GetBrowseContext(IHlinkBrowseContext** ppihlbc) mut
			{
				return VT.GetBrowseContext(&this, ppihlbc);
			}
			public HRESULT Navigate(uint32 grfHLNF, PWSTR pwzJumpLocation) mut
			{
				return VT.Navigate(&this, grfHLNF, pwzJumpLocation);
			}
			public HRESULT GetMoniker(PWSTR pwzLocation, uint32 dwAssign, IMoniker** ppimkLocation) mut
			{
				return VT.GetMoniker(&this, pwzLocation, dwAssign, ppimkLocation);
			}
			public HRESULT GetFriendlyName(PWSTR pwzLocation, PWSTR* ppwzFriendlyName) mut
			{
				return VT.GetFriendlyName(&this, pwzLocation, ppwzFriendlyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHlinkTarget *self, IHlinkBrowseContext* pihlbc) SetBrowseContext;
				public new function HRESULT(IHlinkTarget *self, IHlinkBrowseContext** ppihlbc) GetBrowseContext;
				public new function HRESULT(IHlinkTarget *self, uint32 grfHLNF, PWSTR pwzJumpLocation) Navigate;
				public new function HRESULT(IHlinkTarget *self, PWSTR pwzLocation, uint32 dwAssign, IMoniker** ppimkLocation) GetMoniker;
				public new function HRESULT(IHlinkTarget *self, PWSTR pwzLocation, PWSTR* ppwzFriendlyName) GetFriendlyName;
			}
		}
		[CRepr]
		public struct IHlinkFrame : IUnknown
		{
			public const new Guid IID = .(0x79eac9c5, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetBrowseContext(IHlinkBrowseContext* pihlbc) mut
			{
				return VT.SetBrowseContext(&this, pihlbc);
			}
			public HRESULT GetBrowseContext(IHlinkBrowseContext** ppihlbc) mut
			{
				return VT.GetBrowseContext(&this, ppihlbc);
			}
			public HRESULT Navigate(uint32 grfHLNF, IBindCtx* pbc, IBindStatusCallback* pibsc, IHlink* pihlNavigate) mut
			{
				return VT.Navigate(&this, grfHLNF, pbc, pibsc, pihlNavigate);
			}
			public HRESULT OnNavigate(uint32 grfHLNF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32 dwreserved) mut
			{
				return VT.OnNavigate(&this, grfHLNF, pimkTarget, pwzLocation, pwzFriendlyName, dwreserved);
			}
			public HRESULT UpdateHlink(uint32 uHLID, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut
			{
				return VT.UpdateHlink(&this, uHLID, pimkTarget, pwzLocation, pwzFriendlyName);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHlinkFrame *self, IHlinkBrowseContext* pihlbc) SetBrowseContext;
				public new function HRESULT(IHlinkFrame *self, IHlinkBrowseContext** ppihlbc) GetBrowseContext;
				public new function HRESULT(IHlinkFrame *self, uint32 grfHLNF, IBindCtx* pbc, IBindStatusCallback* pibsc, IHlink* pihlNavigate) Navigate;
				public new function HRESULT(IHlinkFrame *self, uint32 grfHLNF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32 dwreserved) OnNavigate;
				public new function HRESULT(IHlinkFrame *self, uint32 uHLID, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) UpdateHlink;
			}
		}
		[CRepr]
		public struct IEnumHLITEM : IUnknown
		{
			public const new Guid IID = .(0x79eac9c6, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Next(uint32 celt, HLITEM* rgelt, uint32* pceltFetched) mut
			{
				return VT.Next(&this, celt, rgelt, pceltFetched);
			}
			public HRESULT Skip(uint32 celt) mut
			{
				return VT.Skip(&this, celt);
			}
			public HRESULT Reset() mut
			{
				return VT.Reset(&this);
			}
			public HRESULT Clone(IEnumHLITEM** ppienumhlitem) mut
			{
				return VT.Clone(&this, ppienumhlitem);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IEnumHLITEM *self, uint32 celt, HLITEM* rgelt, uint32* pceltFetched) Next;
				public new function HRESULT(IEnumHLITEM *self, uint32 celt) Skip;
				public new function HRESULT(IEnumHLITEM *self) Reset;
				public new function HRESULT(IEnumHLITEM *self, IEnumHLITEM** ppienumhlitem) Clone;
			}
		}
		[CRepr]
		public struct IHlinkBrowseContext : IUnknown
		{
			public const new Guid IID = .(0x79eac9c7, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Register(uint32 reserved, IUnknown* piunk, IMoniker* pimk, uint32* pdwRegister) mut
			{
				return VT.Register(&this, reserved, piunk, pimk, pdwRegister);
			}
			public HRESULT GetObject(IMoniker* pimk, BOOL fBindIfRootRegistered, IUnknown** ppiunk) mut
			{
				return VT.GetObject(&this, pimk, fBindIfRootRegistered, ppiunk);
			}
			public HRESULT Revoke(uint32 dwRegister) mut
			{
				return VT.Revoke(&this, dwRegister);
			}
			public HRESULT SetBrowseWindowInfo(HLBWINFO* phlbwi) mut
			{
				return VT.SetBrowseWindowInfo(&this, phlbwi);
			}
			public HRESULT GetBrowseWindowInfo(HLBWINFO* phlbwi) mut
			{
				return VT.GetBrowseWindowInfo(&this, phlbwi);
			}
			public HRESULT SetInitialHlink(IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut
			{
				return VT.SetInitialHlink(&this, pimkTarget, pwzLocation, pwzFriendlyName);
			}
			public HRESULT OnNavigateHlink(uint32 grfHLNF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32* puHLID) mut
			{
				return VT.OnNavigateHlink(&this, grfHLNF, pimkTarget, pwzLocation, pwzFriendlyName, puHLID);
			}
			public HRESULT UpdateHlink(uint32 uHLID, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut
			{
				return VT.UpdateHlink(&this, uHLID, pimkTarget, pwzLocation, pwzFriendlyName);
			}
			public HRESULT EnumNavigationStack(uint32 dwReserved, uint32 grfHLFNAMEF, IEnumHLITEM** ppienumhlitem) mut
			{
				return VT.EnumNavigationStack(&this, dwReserved, grfHLFNAMEF, ppienumhlitem);
			}
			public HRESULT QueryHlink(uint32 grfHLQF, uint32 uHLID) mut
			{
				return VT.QueryHlink(&this, grfHLQF, uHLID);
			}
			public HRESULT GetHlink(uint32 uHLID, IHlink** ppihl) mut
			{
				return VT.GetHlink(&this, uHLID, ppihl);
			}
			public HRESULT SetCurrentHlink(uint32 uHLID) mut
			{
				return VT.SetCurrentHlink(&this, uHLID);
			}
			public HRESULT Clone(IUnknown* piunkOuter, Guid* riid, IUnknown** ppiunkObj) mut
			{
				return VT.Clone(&this, piunkOuter, riid, ppiunkObj);
			}
			public HRESULT Close(uint32 reserved) mut
			{
				return VT.Close(&this, reserved);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IHlinkBrowseContext *self, uint32 reserved, IUnknown* piunk, IMoniker* pimk, uint32* pdwRegister) Register;
				public new function HRESULT(IHlinkBrowseContext *self, IMoniker* pimk, BOOL fBindIfRootRegistered, IUnknown** ppiunk) GetObject;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 dwRegister) Revoke;
				public new function HRESULT(IHlinkBrowseContext *self, HLBWINFO* phlbwi) SetBrowseWindowInfo;
				public new function HRESULT(IHlinkBrowseContext *self, HLBWINFO* phlbwi) GetBrowseWindowInfo;
				public new function HRESULT(IHlinkBrowseContext *self, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) SetInitialHlink;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 grfHLNF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32* puHLID) OnNavigateHlink;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 uHLID, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) UpdateHlink;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 dwReserved, uint32 grfHLFNAMEF, IEnumHLITEM** ppienumhlitem) EnumNavigationStack;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 grfHLQF, uint32 uHLID) QueryHlink;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 uHLID, IHlink** ppihl) GetHlink;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 uHLID) SetCurrentHlink;
				public new function HRESULT(IHlinkBrowseContext *self, IUnknown* piunkOuter, Guid* riid, IUnknown** ppiunkObj) Clone;
				public new function HRESULT(IHlinkBrowseContext *self, uint32 reserved) Close;
			}
		}
		[CRepr]
		public struct IExtensionServices : IUnknown
		{
			public const new Guid IID = .(0x79eac9cb, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetAdditionalHeaders(PWSTR pwzAdditionalHeaders) mut
			{
				return VT.SetAdditionalHeaders(&this, pwzAdditionalHeaders);
			}
			public HRESULT SetAuthenticateData(HWND phwnd, PWSTR pwzUsername, PWSTR pwzPassword) mut
			{
				return VT.SetAuthenticateData(&this, phwnd, pwzUsername, pwzPassword);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExtensionServices *self, PWSTR pwzAdditionalHeaders) SetAdditionalHeaders;
				public new function HRESULT(IExtensionServices *self, HWND phwnd, PWSTR pwzUsername, PWSTR pwzPassword) SetAuthenticateData;
			}
		}
		[CRepr]
		public struct ITravelEntry : IUnknown
		{
			public const new Guid IID = .(0xf46edb3b, 0xbc2f, 0x11d0, 0x94, 0x12, 0x00, 0xaa, 0x00, 0xa3, 0xeb, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Invoke(IUnknown* punk) mut
			{
				return VT.Invoke(&this, punk);
			}
			public HRESULT Update(IUnknown* punk, BOOL fIsLocalAnchor) mut
			{
				return VT.Update(&this, punk, fIsLocalAnchor);
			}
			public HRESULT GetPidl(ITEMIDLIST** ppidl) mut
			{
				return VT.GetPidl(&this, ppidl);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITravelEntry *self, IUnknown* punk) Invoke;
				public new function HRESULT(ITravelEntry *self, IUnknown* punk, BOOL fIsLocalAnchor) Update;
				public new function HRESULT(ITravelEntry *self, ITEMIDLIST** ppidl) GetPidl;
			}
		}
		[CRepr]
		public struct ITravelLog : IUnknown
		{
			public const new Guid IID = .(0x66a9cb08, 0x4802, 0x11d2, 0xa5, 0x61, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddEntry(IUnknown* punk, BOOL fIsLocalAnchor) mut
			{
				return VT.AddEntry(&this, punk, fIsLocalAnchor);
			}
			public HRESULT UpdateEntry(IUnknown* punk, BOOL fIsLocalAnchor) mut
			{
				return VT.UpdateEntry(&this, punk, fIsLocalAnchor);
			}
			public HRESULT UpdateExternal(IUnknown* punk, IUnknown* punkHLBrowseContext) mut
			{
				return VT.UpdateExternal(&this, punk, punkHLBrowseContext);
			}
			public HRESULT Travel(IUnknown* punk, int32 iOffset) mut
			{
				return VT.Travel(&this, punk, iOffset);
			}
			public HRESULT GetTravelEntry(IUnknown* punk, int32 iOffset, ITravelEntry** ppte) mut
			{
				return VT.GetTravelEntry(&this, punk, iOffset, ppte);
			}
			public HRESULT FindTravelEntry(IUnknown* punk, ITEMIDLIST* pidl, ITravelEntry** ppte) mut
			{
				return VT.FindTravelEntry(&this, punk, pidl, ppte);
			}
			public HRESULT GetToolTipText(IUnknown* punk, int32 iOffset, int32 idsTemplate, char16* pwzText, uint32 cchText) mut
			{
				return VT.GetToolTipText(&this, punk, iOffset, idsTemplate, pwzText, cchText);
			}
			public HRESULT InsertMenuEntries(IUnknown* punk, HMENU hmenu, int32 nPos, int32 idFirst, int32 idLast, uint32 dwFlags) mut
			{
				return VT.InsertMenuEntries(&this, punk, hmenu, nPos, idFirst, idLast, dwFlags);
			}
			public HRESULT Clone(ITravelLog** pptl) mut
			{
				return VT.Clone(&this, pptl);
			}
			public uint32 CountEntries(IUnknown* punk) mut
			{
				return VT.CountEntries(&this, punk);
			}
			public HRESULT Revert() mut
			{
				return VT.Revert(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITravelLog *self, IUnknown* punk, BOOL fIsLocalAnchor) AddEntry;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, BOOL fIsLocalAnchor) UpdateEntry;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, IUnknown* punkHLBrowseContext) UpdateExternal;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, int32 iOffset) Travel;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, int32 iOffset, ITravelEntry** ppte) GetTravelEntry;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, ITEMIDLIST* pidl, ITravelEntry** ppte) FindTravelEntry;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, int32 iOffset, int32 idsTemplate, char16* pwzText, uint32 cchText) GetToolTipText;
				public new function HRESULT(ITravelLog *self, IUnknown* punk, HMENU hmenu, int32 nPos, int32 idFirst, int32 idLast, uint32 dwFlags) InsertMenuEntries;
				public new function HRESULT(ITravelLog *self, ITravelLog** pptl) Clone;
				public new function uint32(ITravelLog *self, IUnknown* punk) CountEntries;
				public new function HRESULT(ITravelLog *self) Revert;
			}
		}
		[CRepr]
		public struct CIE4ConnectionPoint : IConnectionPoint
		{
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT DoInvokeIE4(BOOL* pf, void** ppv, int32 dispid, DISPPARAMS* pdispparams) mut
			{
				return VT.DoInvokeIE4(&this, pf, ppv, dispid, pdispparams);
			}
			public HRESULT DoInvokePIDLIE4(int32 dispid, ITEMIDLIST* pidl, BOOL fCanCancel) mut
			{
				return VT.DoInvokePIDLIE4(&this, dispid, pidl, fCanCancel);
			}
			[CRepr]
			public struct VTable : IConnectionPoint.VTable
			{
				public new function HRESULT(CIE4ConnectionPoint *self, BOOL* pf, void** ppv, int32 dispid, DISPPARAMS* pdispparams) DoInvokeIE4;
				public new function HRESULT(CIE4ConnectionPoint *self, int32 dispid, ITEMIDLIST* pidl, BOOL fCanCancel) DoInvokePIDLIE4;
			}
		}
		[CRepr]
		public struct IExpDispSupportXP : IUnknown
		{
			public const new Guid IID = .(0x2f0dd58c, 0xf789, 0x4f14, 0x99, 0xfb, 0x92, 0x93, 0xb3, 0xc9, 0xc2, 0x12);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindCIE4ConnectionPoint(Guid* riid, CIE4ConnectionPoint** ppccp) mut
			{
				return VT.FindCIE4ConnectionPoint(&this, riid, ppccp);
			}
			public HRESULT OnTranslateAccelerator(MSG* pMsg, uint32 grfModifiers) mut
			{
				return VT.OnTranslateAccelerator(&this, pMsg, grfModifiers);
			}
			public HRESULT OnInvoke(int32 dispidMember, Guid* iid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pVarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) mut
			{
				return VT.OnInvoke(&this, dispidMember, iid, lcid, wFlags, pdispparams, pVarResult, pexcepinfo, puArgErr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExpDispSupportXP *self, Guid* riid, CIE4ConnectionPoint** ppccp) FindCIE4ConnectionPoint;
				public new function HRESULT(IExpDispSupportXP *self, MSG* pMsg, uint32 grfModifiers) OnTranslateAccelerator;
				public new function HRESULT(IExpDispSupportXP *self, int32 dispidMember, Guid* iid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pVarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) OnInvoke;
			}
		}
		[CRepr]
		public struct IExpDispSupport : IUnknown
		{
			public const new Guid IID = .(0x0d7d1d00, 0x6fc0, 0x11d0, 0xa9, 0x74, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT FindConnectionPoint(Guid* riid, IConnectionPoint** ppccp) mut
			{
				return VT.FindConnectionPoint(&this, riid, ppccp);
			}
			public HRESULT OnTranslateAccelerator(MSG* pMsg, uint32 grfModifiers) mut
			{
				return VT.OnTranslateAccelerator(&this, pMsg, grfModifiers);
			}
			public HRESULT OnInvoke(int32 dispidMember, Guid* iid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pVarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) mut
			{
				return VT.OnInvoke(&this, dispidMember, iid, lcid, wFlags, pdispparams, pVarResult, pexcepinfo, puArgErr);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IExpDispSupport *self, Guid* riid, IConnectionPoint** ppccp) FindConnectionPoint;
				public new function HRESULT(IExpDispSupport *self, MSG* pMsg, uint32 grfModifiers) OnTranslateAccelerator;
				public new function HRESULT(IExpDispSupport *self, int32 dispidMember, Guid* iid, uint32 lcid, uint16 wFlags, DISPPARAMS* pdispparams, VARIANT* pVarResult, EXCEPINFO* pexcepinfo, uint32* puArgErr) OnInvoke;
			}
		}
		[CRepr]
		public struct IBrowserService : IUnknown
		{
			public const new Guid IID = .(0x02ba3b52, 0x0547, 0x11d1, 0xb8, 0x33, 0x00, 0xc0, 0x4f, 0xc9, 0xb3, 0x1f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetParentSite(IOleInPlaceSite** ppipsite) mut
			{
				return VT.GetParentSite(&this, ppipsite);
			}
			public HRESULT SetTitle(IShellView* psv, PWSTR pszName) mut
			{
				return VT.SetTitle(&this, psv, pszName);
			}
			public HRESULT GetTitle(IShellView* psv, char16* pszName, uint32 cchName) mut
			{
				return VT.GetTitle(&this, psv, pszName, cchName);
			}
			public HRESULT GetOleObject(IOleObject** ppobjv) mut
			{
				return VT.GetOleObject(&this, ppobjv);
			}
			public HRESULT GetTravelLog(ITravelLog** pptl) mut
			{
				return VT.GetTravelLog(&this, pptl);
			}
			public HRESULT ShowControlWindow(uint32 id, BOOL fShow) mut
			{
				return VT.ShowControlWindow(&this, id, fShow);
			}
			public HRESULT IsControlWindowShown(uint32 id, BOOL* pfShown) mut
			{
				return VT.IsControlWindowShown(&this, id, pfShown);
			}
			public HRESULT IEGetDisplayName(ITEMIDLIST* pidl, PWSTR pwszName, uint32 uFlags) mut
			{
				return VT.IEGetDisplayName(&this, pidl, pwszName, uFlags);
			}
			public HRESULT IEParseDisplayName(uint32 uiCP, PWSTR pwszPath, ITEMIDLIST** ppidlOut) mut
			{
				return VT.IEParseDisplayName(&this, uiCP, pwszPath, ppidlOut);
			}
			public HRESULT DisplayParseError(HRESULT hres, PWSTR pwszPath) mut
			{
				return VT.DisplayParseError(&this, hres, pwszPath);
			}
			public HRESULT NavigateToPidl(ITEMIDLIST* pidl, uint32 grfHLNF) mut
			{
				return VT.NavigateToPidl(&this, pidl, grfHLNF);
			}
			public HRESULT SetNavigateState(BNSTATE bnstate) mut
			{
				return VT.SetNavigateState(&this, bnstate);
			}
			public HRESULT GetNavigateState(BNSTATE* pbnstate) mut
			{
				return VT.GetNavigateState(&this, pbnstate);
			}
			public HRESULT NotifyRedirect(IShellView* psv, ITEMIDLIST* pidl, BOOL* pfDidBrowse) mut
			{
				return VT.NotifyRedirect(&this, psv, pidl, pfDidBrowse);
			}
			public HRESULT UpdateWindowList() mut
			{
				return VT.UpdateWindowList(&this);
			}
			public HRESULT UpdateBackForwardState() mut
			{
				return VT.UpdateBackForwardState(&this);
			}
			public HRESULT SetFlags(uint32 dwFlags, uint32 dwFlagMask) mut
			{
				return VT.SetFlags(&this, dwFlags, dwFlagMask);
			}
			public HRESULT ComGetFlags(uint32* pdwFlags) mut
			{
				return VT.ComGetFlags(&this, pdwFlags);
			}
			public HRESULT CanNavigateNow() mut
			{
				return VT.CanNavigateNow(&this);
			}
			public HRESULT GetPidl(ITEMIDLIST** ppidl) mut
			{
				return VT.GetPidl(&this, ppidl);
			}
			public HRESULT SetReferrer(ITEMIDLIST* pidl) mut
			{
				return VT.SetReferrer(&this, pidl);
			}
			public uint32 GetBrowserIndex() mut
			{
				return VT.GetBrowserIndex(&this);
			}
			public HRESULT GetBrowserByIndex(uint32 dwID, IUnknown** ppunk) mut
			{
				return VT.GetBrowserByIndex(&this, dwID, ppunk);
			}
			public HRESULT GetHistoryObject(IOleObject** ppole, IStream** pstm, IBindCtx** ppbc) mut
			{
				return VT.GetHistoryObject(&this, ppole, pstm, ppbc);
			}
			public HRESULT SetHistoryObject(IOleObject* pole, BOOL fIsLocalAnchor) mut
			{
				return VT.SetHistoryObject(&this, pole, fIsLocalAnchor);
			}
			public HRESULT CacheOLEServer(IOleObject* pole) mut
			{
				return VT.CacheOLEServer(&this, pole);
			}
			public HRESULT GetSetCodePage(VARIANT* pvarIn, VARIANT* pvarOut) mut
			{
				return VT.GetSetCodePage(&this, pvarIn, pvarOut);
			}
			public HRESULT OnHttpEquiv(IShellView* psv, BOOL fDone, VARIANT* pvarargIn, VARIANT* pvarargOut) mut
			{
				return VT.OnHttpEquiv(&this, psv, fDone, pvarargIn, pvarargOut);
			}
			public HRESULT GetPalette(HPALETTE* hpal) mut
			{
				return VT.GetPalette(&this, hpal);
			}
			public HRESULT RegisterWindow(BOOL fForceRegister, int32 swc) mut
			{
				return VT.RegisterWindow(&this, fForceRegister, swc);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IBrowserService *self, IOleInPlaceSite** ppipsite) GetParentSite;
				public new function HRESULT(IBrowserService *self, IShellView* psv, PWSTR pszName) SetTitle;
				public new function HRESULT(IBrowserService *self, IShellView* psv, char16* pszName, uint32 cchName) GetTitle;
				public new function HRESULT(IBrowserService *self, IOleObject** ppobjv) GetOleObject;
				public new function HRESULT(IBrowserService *self, ITravelLog** pptl) GetTravelLog;
				public new function HRESULT(IBrowserService *self, uint32 id, BOOL fShow) ShowControlWindow;
				public new function HRESULT(IBrowserService *self, uint32 id, BOOL* pfShown) IsControlWindowShown;
				public new function HRESULT(IBrowserService *self, ITEMIDLIST* pidl, PWSTR pwszName, uint32 uFlags) IEGetDisplayName;
				public new function HRESULT(IBrowserService *self, uint32 uiCP, PWSTR pwszPath, ITEMIDLIST** ppidlOut) IEParseDisplayName;
				public new function HRESULT(IBrowserService *self, HRESULT hres, PWSTR pwszPath) DisplayParseError;
				public new function HRESULT(IBrowserService *self, ITEMIDLIST* pidl, uint32 grfHLNF) NavigateToPidl;
				public new function HRESULT(IBrowserService *self, BNSTATE bnstate) SetNavigateState;
				public new function HRESULT(IBrowserService *self, BNSTATE* pbnstate) GetNavigateState;
				public new function HRESULT(IBrowserService *self, IShellView* psv, ITEMIDLIST* pidl, BOOL* pfDidBrowse) NotifyRedirect;
				public new function HRESULT(IBrowserService *self) UpdateWindowList;
				public new function HRESULT(IBrowserService *self) UpdateBackForwardState;
				public new function HRESULT(IBrowserService *self, uint32 dwFlags, uint32 dwFlagMask) SetFlags;
				public new function HRESULT(IBrowserService *self, uint32* pdwFlags) ComGetFlags;
				public new function HRESULT(IBrowserService *self) CanNavigateNow;
				public new function HRESULT(IBrowserService *self, ITEMIDLIST** ppidl) GetPidl;
				public new function HRESULT(IBrowserService *self, ITEMIDLIST* pidl) SetReferrer;
				public new function uint32(IBrowserService *self) GetBrowserIndex;
				public new function HRESULT(IBrowserService *self, uint32 dwID, IUnknown** ppunk) GetBrowserByIndex;
				public new function HRESULT(IBrowserService *self, IOleObject** ppole, IStream** pstm, IBindCtx** ppbc) GetHistoryObject;
				public new function HRESULT(IBrowserService *self, IOleObject* pole, BOOL fIsLocalAnchor) SetHistoryObject;
				public new function HRESULT(IBrowserService *self, IOleObject* pole) CacheOLEServer;
				public new function HRESULT(IBrowserService *self, VARIANT* pvarIn, VARIANT* pvarOut) GetSetCodePage;
				public new function HRESULT(IBrowserService *self, IShellView* psv, BOOL fDone, VARIANT* pvarargIn, VARIANT* pvarargOut) OnHttpEquiv;
				public new function HRESULT(IBrowserService *self, HPALETTE* hpal) GetPalette;
				public new function HRESULT(IBrowserService *self, BOOL fForceRegister, int32 swc) RegisterWindow;
			}
		}
		[CRepr]
		public struct IShellService : IUnknown
		{
			public const new Guid IID = .(0x5836fb00, 0x8187, 0x11cf, 0xa1, 0x2b, 0x00, 0xaa, 0x00, 0x4a, 0xe8, 0x37);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOwner(IUnknown* punkOwner) mut
			{
				return VT.SetOwner(&this, punkOwner);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IShellService *self, IUnknown* punkOwner) SetOwner;
			}
		}
		[CRepr]
		public struct IBrowserService2 : IBrowserService
		{
			public const new Guid IID = .(0x68bd21cc, 0x438b, 0x11d2, 0xa5, 0x60, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public LRESULT WndProcBS(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.WndProcBS(&this, hwnd, uMsg, wParam, lParam);
			}
			public HRESULT SetAsDefFolderSettings() mut
			{
				return VT.SetAsDefFolderSettings(&this);
			}
			public HRESULT GetViewRect(RECT* prc) mut
			{
				return VT.GetViewRect(&this, prc);
			}
			public HRESULT OnSize(WPARAM wParam) mut
			{
				return VT.OnSize(&this, wParam);
			}
			public HRESULT OnCreate(CREATESTRUCTW* pcs) mut
			{
				return VT.OnCreate(&this, pcs);
			}
			public LRESULT OnCommand(WPARAM wParam, LPARAM lParam) mut
			{
				return VT.OnCommand(&this, wParam, lParam);
			}
			public HRESULT OnDestroy() mut
			{
				return VT.OnDestroy(&this);
			}
			public LRESULT OnNotify(NMHDR* pnm) mut
			{
				return VT.OnNotify(&this, pnm);
			}
			public HRESULT OnSetFocus() mut
			{
				return VT.OnSetFocus(&this);
			}
			public HRESULT OnFrameWindowActivateBS(BOOL fActive) mut
			{
				return VT.OnFrameWindowActivateBS(&this, fActive);
			}
			public HRESULT ReleaseShellView() mut
			{
				return VT.ReleaseShellView(&this);
			}
			public HRESULT ActivatePendingView() mut
			{
				return VT.ActivatePendingView(&this);
			}
			public HRESULT CreateViewWindow(IShellView* psvNew, IShellView* psvOld, RECT* prcView, HWND* phwnd) mut
			{
				return VT.CreateViewWindow(&this, psvNew, psvOld, prcView, phwnd);
			}
			public HRESULT CreateBrowserPropSheetExt(Guid* riid, void** ppv) mut
			{
				return VT.CreateBrowserPropSheetExt(&this, riid, ppv);
			}
			public HRESULT GetViewWindow(HWND* phwndView) mut
			{
				return VT.GetViewWindow(&this, phwndView);
			}
			public HRESULT GetBaseBrowserData(BASEBROWSERDATALH** pbbd) mut
			{
				return VT.GetBaseBrowserData(&this, pbbd);
			}
			public BASEBROWSERDATALH* PutBaseBrowserData() mut
			{
				return VT.PutBaseBrowserData(&this);
			}
			public HRESULT InitializeTravelLog(ITravelLog* ptl, uint32 dw) mut
			{
				return VT.InitializeTravelLog(&this, ptl, dw);
			}
			public HRESULT SetTopBrowser() mut
			{
				return VT.SetTopBrowser(&this);
			}
			public HRESULT Offline(int32 iCmd) mut
			{
				return VT.Offline(&this, iCmd);
			}
			public HRESULT AllowViewResize(BOOL f) mut
			{
				return VT.AllowViewResize(&this, f);
			}
			public HRESULT SetActivateState(uint32 u) mut
			{
				return VT.SetActivateState(&this, u);
			}
			public HRESULT UpdateSecureLockIcon(int32 eSecureLock) mut
			{
				return VT.UpdateSecureLockIcon(&this, eSecureLock);
			}
			public HRESULT InitializeDownloadManager() mut
			{
				return VT.InitializeDownloadManager(&this);
			}
			public HRESULT InitializeTransitionSite() mut
			{
				return VT.InitializeTransitionSite(&this);
			}
			public HRESULT _Initialize(HWND hwnd, IUnknown* pauto) mut
			{
				return VT._Initialize(&this, hwnd, pauto);
			}
			public HRESULT _CancelPendingNavigationAsync() mut
			{
				return VT._CancelPendingNavigationAsync(&this);
			}
			public HRESULT _CancelPendingView() mut
			{
				return VT._CancelPendingView(&this);
			}
			public HRESULT _MaySaveChanges() mut
			{
				return VT._MaySaveChanges(&this);
			}
			public HRESULT _PauseOrResumeView(BOOL fPaused) mut
			{
				return VT._PauseOrResumeView(&this, fPaused);
			}
			public HRESULT _DisableModeless() mut
			{
				return VT._DisableModeless(&this);
			}
			public HRESULT _NavigateToPidl2(ITEMIDLIST* pidl, uint32 grfHLNF, uint32 dwFlags) mut
			{
				return VT._NavigateToPidl2(&this, pidl, grfHLNF, dwFlags);
			}
			public HRESULT _TryShell2Rename(IShellView* psv, ITEMIDLIST* pidlNew) mut
			{
				return VT._TryShell2Rename(&this, psv, pidlNew);
			}
			public HRESULT _SwitchActivationNow() mut
			{
				return VT._SwitchActivationNow(&this);
			}
			public HRESULT _ExecChildren(IUnknown* punkBar, BOOL fBroadcast, Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvarargIn, VARIANT* pvarargOut) mut
			{
				return VT._ExecChildren(&this, punkBar, fBroadcast, pguidCmdGroup, nCmdID, nCmdexecopt, pvarargIn, pvarargOut);
			}
			public HRESULT _SendChildren(HWND hwndBar, BOOL fBroadcast, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT._SendChildren(&this, hwndBar, fBroadcast, uMsg, wParam, lParam);
			}
			public HRESULT GetFolderSetData(FOLDERSETDATA* pfsd) mut
			{
				return VT.GetFolderSetData(&this, pfsd);
			}
			public HRESULT _OnFocusChange(uint32 itb) mut
			{
				return VT._OnFocusChange(&this, itb);
			}
			public HRESULT v_ShowHideChildWindows(BOOL fChildOnly) mut
			{
				return VT.v_ShowHideChildWindows(&this, fChildOnly);
			}
			public uint32 _get_itbLastFocus() mut
			{
				return VT._get_itbLastFocus(&this);
			}
			public HRESULT _put_itbLastFocus(uint32 itbLastFocus) mut
			{
				return VT._put_itbLastFocus(&this, itbLastFocus);
			}
			public HRESULT _UIActivateView(uint32 uState) mut
			{
				return VT._UIActivateView(&this, uState);
			}
			public HRESULT _GetViewBorderRect(RECT* prc) mut
			{
				return VT._GetViewBorderRect(&this, prc);
			}
			public HRESULT _UpdateViewRectSize() mut
			{
				return VT._UpdateViewRectSize(&this);
			}
			public HRESULT _ResizeNextBorder(uint32 itb) mut
			{
				return VT._ResizeNextBorder(&this, itb);
			}
			public HRESULT _ResizeView() mut
			{
				return VT._ResizeView(&this);
			}
			public HRESULT _GetEffectiveClientArea(RECT* lprectBorder, HMONITOR hmon) mut
			{
				return VT._GetEffectiveClientArea(&this, lprectBorder, hmon);
			}
			public IStream* v_GetViewStream(ITEMIDLIST* pidl, uint32 grfMode, PWSTR pwszName) mut
			{
				return VT.v_GetViewStream(&this, pidl, grfMode, pwszName);
			}
			public LRESULT ForwardViewMsg(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut
			{
				return VT.ForwardViewMsg(&this, uMsg, wParam, lParam);
			}
			public HRESULT SetAcceleratorMenu(HACCEL hacc) mut
			{
				return VT.SetAcceleratorMenu(&this, hacc);
			}
			public int32 _GetToolbarCount() mut
			{
				return VT._GetToolbarCount(&this);
			}
			public TOOLBARITEM* _GetToolbarItem(int32 itb) mut
			{
				return VT._GetToolbarItem(&this, itb);
			}
			public HRESULT _SaveToolbars(IStream* pstm) mut
			{
				return VT._SaveToolbars(&this, pstm);
			}
			public HRESULT _LoadToolbars(IStream* pstm) mut
			{
				return VT._LoadToolbars(&this, pstm);
			}
			public HRESULT _CloseAndReleaseToolbars(BOOL fClose) mut
			{
				return VT._CloseAndReleaseToolbars(&this, fClose);
			}
			public HRESULT v_MayGetNextToolbarFocus(MSG* lpMsg, uint32 itbNext, int32 citb, TOOLBARITEM** pptbi, HWND* phwnd) mut
			{
				return VT.v_MayGetNextToolbarFocus(&this, lpMsg, itbNext, citb, pptbi, phwnd);
			}
			public HRESULT _ResizeNextBorderHelper(uint32 itb, BOOL bUseHmonitor) mut
			{
				return VT._ResizeNextBorderHelper(&this, itb, bUseHmonitor);
			}
			public uint32 _FindTBar(IUnknown* punkSrc) mut
			{
				return VT._FindTBar(&this, punkSrc);
			}
			public HRESULT _SetFocus(TOOLBARITEM* ptbi, HWND hwnd, MSG* lpMsg) mut
			{
				return VT._SetFocus(&this, ptbi, hwnd, lpMsg);
			}
			public HRESULT v_MayTranslateAccelerator(MSG* pmsg) mut
			{
				return VT.v_MayTranslateAccelerator(&this, pmsg);
			}
			public HRESULT _GetBorderDWHelper(IUnknown* punkSrc, RECT* lprectBorder, BOOL bUseHmonitor) mut
			{
				return VT._GetBorderDWHelper(&this, punkSrc, lprectBorder, bUseHmonitor);
			}
			public HRESULT v_CheckZoneCrossing(ITEMIDLIST* pidl) mut
			{
				return VT.v_CheckZoneCrossing(&this, pidl);
			}
			[CRepr]
			public struct VTable : IBrowserService.VTable
			{
				public new function LRESULT(IBrowserService2 *self, HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam) WndProcBS;
				public new function HRESULT(IBrowserService2 *self) SetAsDefFolderSettings;
				public new function HRESULT(IBrowserService2 *self, RECT* prc) GetViewRect;
				public new function HRESULT(IBrowserService2 *self, WPARAM wParam) OnSize;
				public new function HRESULT(IBrowserService2 *self, CREATESTRUCTW* pcs) OnCreate;
				public new function LRESULT(IBrowserService2 *self, WPARAM wParam, LPARAM lParam) OnCommand;
				public new function HRESULT(IBrowserService2 *self) OnDestroy;
				public new function LRESULT(IBrowserService2 *self, NMHDR* pnm) OnNotify;
				public new function HRESULT(IBrowserService2 *self) OnSetFocus;
				public new function HRESULT(IBrowserService2 *self, BOOL fActive) OnFrameWindowActivateBS;
				public new function HRESULT(IBrowserService2 *self) ReleaseShellView;
				public new function HRESULT(IBrowserService2 *self) ActivatePendingView;
				public new function HRESULT(IBrowserService2 *self, IShellView* psvNew, IShellView* psvOld, RECT* prcView, HWND* phwnd) CreateViewWindow;
				public new function HRESULT(IBrowserService2 *self, Guid* riid, void** ppv) CreateBrowserPropSheetExt;
				public new function HRESULT(IBrowserService2 *self, HWND* phwndView) GetViewWindow;
				public new function HRESULT(IBrowserService2 *self, BASEBROWSERDATALH** pbbd) GetBaseBrowserData;
				public new function BASEBROWSERDATALH*(IBrowserService2 *self) PutBaseBrowserData;
				public new function HRESULT(IBrowserService2 *self, ITravelLog* ptl, uint32 dw) InitializeTravelLog;
				public new function HRESULT(IBrowserService2 *self) SetTopBrowser;
				public new function HRESULT(IBrowserService2 *self, int32 iCmd) Offline;
				public new function HRESULT(IBrowserService2 *self, BOOL f) AllowViewResize;
				public new function HRESULT(IBrowserService2 *self, uint32 u) SetActivateState;
				public new function HRESULT(IBrowserService2 *self, int32 eSecureLock) UpdateSecureLockIcon;
				public new function HRESULT(IBrowserService2 *self) InitializeDownloadManager;
				public new function HRESULT(IBrowserService2 *self) InitializeTransitionSite;
				public new function HRESULT(IBrowserService2 *self, HWND hwnd, IUnknown* pauto) _Initialize;
				public new function HRESULT(IBrowserService2 *self) _CancelPendingNavigationAsync;
				public new function HRESULT(IBrowserService2 *self) _CancelPendingView;
				public new function HRESULT(IBrowserService2 *self) _MaySaveChanges;
				public new function HRESULT(IBrowserService2 *self, BOOL fPaused) _PauseOrResumeView;
				public new function HRESULT(IBrowserService2 *self) _DisableModeless;
				public new function HRESULT(IBrowserService2 *self, ITEMIDLIST* pidl, uint32 grfHLNF, uint32 dwFlags) _NavigateToPidl2;
				public new function HRESULT(IBrowserService2 *self, IShellView* psv, ITEMIDLIST* pidlNew) _TryShell2Rename;
				public new function HRESULT(IBrowserService2 *self) _SwitchActivationNow;
				public new function HRESULT(IBrowserService2 *self, IUnknown* punkBar, BOOL fBroadcast, Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvarargIn, VARIANT* pvarargOut) _ExecChildren;
				public new function HRESULT(IBrowserService2 *self, HWND hwndBar, BOOL fBroadcast, uint32 uMsg, WPARAM wParam, LPARAM lParam) _SendChildren;
				public new function HRESULT(IBrowserService2 *self, FOLDERSETDATA* pfsd) GetFolderSetData;
				public new function HRESULT(IBrowserService2 *self, uint32 itb) _OnFocusChange;
				public new function HRESULT(IBrowserService2 *self, BOOL fChildOnly) v_ShowHideChildWindows;
				public new function uint32(IBrowserService2 *self) _get_itbLastFocus;
				public new function HRESULT(IBrowserService2 *self, uint32 itbLastFocus) _put_itbLastFocus;
				public new function HRESULT(IBrowserService2 *self, uint32 uState) _UIActivateView;
				public new function HRESULT(IBrowserService2 *self, RECT* prc) _GetViewBorderRect;
				public new function HRESULT(IBrowserService2 *self) _UpdateViewRectSize;
				public new function HRESULT(IBrowserService2 *self, uint32 itb) _ResizeNextBorder;
				public new function HRESULT(IBrowserService2 *self) _ResizeView;
				public new function HRESULT(IBrowserService2 *self, RECT* lprectBorder, HMONITOR hmon) _GetEffectiveClientArea;
				public new function IStream*(IBrowserService2 *self, ITEMIDLIST* pidl, uint32 grfMode, PWSTR pwszName) v_GetViewStream;
				public new function LRESULT(IBrowserService2 *self, uint32 uMsg, WPARAM wParam, LPARAM lParam) ForwardViewMsg;
				public new function HRESULT(IBrowserService2 *self, HACCEL hacc) SetAcceleratorMenu;
				public new function int32(IBrowserService2 *self) _GetToolbarCount;
				public new function TOOLBARITEM*(IBrowserService2 *self, int32 itb) _GetToolbarItem;
				public new function HRESULT(IBrowserService2 *self, IStream* pstm) _SaveToolbars;
				public new function HRESULT(IBrowserService2 *self, IStream* pstm) _LoadToolbars;
				public new function HRESULT(IBrowserService2 *self, BOOL fClose) _CloseAndReleaseToolbars;
				public new function HRESULT(IBrowserService2 *self, MSG* lpMsg, uint32 itbNext, int32 citb, TOOLBARITEM** pptbi, HWND* phwnd) v_MayGetNextToolbarFocus;
				public new function HRESULT(IBrowserService2 *self, uint32 itb, BOOL bUseHmonitor) _ResizeNextBorderHelper;
				public new function uint32(IBrowserService2 *self, IUnknown* punkSrc) _FindTBar;
				public new function HRESULT(IBrowserService2 *self, TOOLBARITEM* ptbi, HWND hwnd, MSG* lpMsg) _SetFocus;
				public new function HRESULT(IBrowserService2 *self, MSG* pmsg) v_MayTranslateAccelerator;
				public new function HRESULT(IBrowserService2 *self, IUnknown* punkSrc, RECT* lprectBorder, BOOL bUseHmonitor) _GetBorderDWHelper;
				public new function HRESULT(IBrowserService2 *self, ITEMIDLIST* pidl) v_CheckZoneCrossing;
			}
		}
		[CRepr]
		public struct IBrowserService3 : IBrowserService2
		{
			public const new Guid IID = .(0x27d7ce21, 0x762d, 0x48f3, 0x86, 0xf3, 0x40, 0xe2, 0xfd, 0x37, 0x49, 0xc4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT _PositionViewWindow(HWND hwnd, RECT* prc) mut
			{
				return VT._PositionViewWindow(&this, hwnd, prc);
			}
			public HRESULT IEParseDisplayNameEx(uint32 uiCP, PWSTR pwszPath, uint32 dwFlags, ITEMIDLIST** ppidlOut) mut
			{
				return VT.IEParseDisplayNameEx(&this, uiCP, pwszPath, dwFlags, ppidlOut);
			}
			[CRepr]
			public struct VTable : IBrowserService2.VTable
			{
				public new function HRESULT(IBrowserService3 *self, HWND hwnd, RECT* prc) _PositionViewWindow;
				public new function HRESULT(IBrowserService3 *self, uint32 uiCP, PWSTR pwszPath, uint32 dwFlags, ITEMIDLIST** ppidlOut) IEParseDisplayNameEx;
			}
		}
		[CRepr]
		public struct IBrowserService4 : IBrowserService3
		{
			public const new Guid IID = .(0x639f1bff, 0xe135, 0x4096, 0xab, 0xd8, 0xe0, 0xf5, 0x04, 0xd6, 0x49, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ActivateView(BOOL fPendingView) mut
			{
				return VT.ActivateView(&this, fPendingView);
			}
			public HRESULT SaveViewState() mut
			{
				return VT.SaveViewState(&this);
			}
			public HRESULT _ResizeAllBorders() mut
			{
				return VT._ResizeAllBorders(&this);
			}
			[CRepr]
			public struct VTable : IBrowserService3.VTable
			{
				public new function HRESULT(IBrowserService4 *self, BOOL fPendingView) ActivateView;
				public new function HRESULT(IBrowserService4 *self) SaveViewState;
				public new function HRESULT(IBrowserService4 *self) _ResizeAllBorders;
			}
		}
		[CRepr]
		public struct ITrackShellMenu : IShellMenu
		{
			public const new Guid IID = .(0x8278f932, 0x2a3e, 0x11d2, 0x83, 0x8f, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetObscured(HWND hwndTB, IUnknown* punkBand, uint32 dwSMSetFlags) mut
			{
				return VT.SetObscured(&this, hwndTB, punkBand, dwSMSetFlags);
			}
			public HRESULT Popup(HWND hwnd, POINTL* ppt, RECTL* prcExclude, int32 dwFlags) mut
			{
				return VT.Popup(&this, hwnd, ppt, prcExclude, dwFlags);
			}
			[CRepr]
			public struct VTable : IShellMenu.VTable
			{
				public new function HRESULT(ITrackShellMenu *self, HWND hwndTB, IUnknown* punkBand, uint32 dwSMSetFlags) SetObscured;
				public new function HRESULT(ITrackShellMenu *self, HWND hwnd, POINTL* ppt, RECTL* prcExclude, int32 dwFlags) Popup;
			}
		}
		[CRepr]
		public struct ITranscodeImage : IUnknown
		{
			public const new Guid IID = .(0xbae86ddd, 0xdc11, 0x421c, 0xb7, 0xab, 0xcc, 0x55, 0xd1, 0xd6, 0x5c, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TranscodeImage(IShellItem* pShellItem, uint32 uiMaxWidth, uint32 uiMaxHeight, uint32 flags, IStream* pvImage, uint32* puiWidth, uint32* puiHeight) mut
			{
				return VT.TranscodeImage(&this, pShellItem, uiMaxWidth, uiMaxHeight, flags, pvImage, puiWidth, puiHeight);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(ITranscodeImage *self, IShellItem* pShellItem, uint32 uiMaxWidth, uint32 uiMaxHeight, uint32 flags, IStream* pvImage, uint32* puiWidth, uint32* puiHeight) TranscodeImage;
			}
		}
		[CRepr]
		public struct IUniformResourceLocatorA : IUnknown
		{
			public const new Guid IID = .(0xfbf23b80, 0xe3f0, 0x101b, 0x84, 0x88, 0x00, 0xaa, 0x00, 0x3e, 0x56, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetURL(PSTR pcszURL, uint32 dwInFlags) mut
			{
				return VT.SetURL(&this, pcszURL, dwInFlags);
			}
			public HRESULT GetURL(PSTR* ppszURL) mut
			{
				return VT.GetURL(&this, ppszURL);
			}
			public HRESULT InvokeCommand(urlinvokecommandinfoA* purlici) mut
			{
				return VT.InvokeCommand(&this, purlici);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUniformResourceLocatorA *self, PSTR pcszURL, uint32 dwInFlags) SetURL;
				public new function HRESULT(IUniformResourceLocatorA *self, PSTR* ppszURL) GetURL;
				public new function HRESULT(IUniformResourceLocatorA *self, urlinvokecommandinfoA* purlici) InvokeCommand;
			}
		}
		[CRepr]
		public struct IUniformResourceLocatorW : IUnknown
		{
			public const new Guid IID = .(0xcabb0da0, 0xda57, 0x11cf, 0x99, 0x74, 0x00, 0x20, 0xaf, 0xd7, 0x97, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetURL(PWSTR pcszURL, uint32 dwInFlags) mut
			{
				return VT.SetURL(&this, pcszURL, dwInFlags);
			}
			public HRESULT GetURL(PWSTR* ppszURL) mut
			{
				return VT.GetURL(&this, ppszURL);
			}
			public HRESULT InvokeCommand(urlinvokecommandinfoW* purlici) mut
			{
				return VT.InvokeCommand(&this, purlici);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUniformResourceLocatorW *self, PWSTR pcszURL, uint32 dwInFlags) SetURL;
				public new function HRESULT(IUniformResourceLocatorW *self, PWSTR* ppszURL) GetURL;
				public new function HRESULT(IUniformResourceLocatorW *self, urlinvokecommandinfoW* purlici) InvokeCommand;
			}
		}
		[CRepr]
		public struct IInputPaneAnimationCoordinator : IUnknown
		{
			public const new Guid IID = .(0x2af16ba9, 0x2de5, 0x4b75, 0x82, 0xd9, 0x01, 0x37, 0x2a, 0xfb, 0xff, 0xb4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddAnimation(IUnknown* device, IDCompositionAnimation* animation) mut
			{
				return VT.AddAnimation(&this, device, animation);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IInputPaneAnimationCoordinator *self, IUnknown* device, IDCompositionAnimation* animation) AddAnimation;
			}
		}
		
		// --- Functions ---
		
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LoadUserProfileA(HANDLE hToken, PROFILEINFOA* lpProfileInfo);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL LoadUserProfileW(HANDLE hToken, PROFILEINFOW* lpProfileInfo);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UnloadUserProfile(HANDLE hToken, HANDLE hProfile);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetProfilesDirectoryA(uint8* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetProfilesDirectoryW(char16* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetProfileType(uint32* dwFlags);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteProfileA(PSTR lpSidString, PSTR lpProfilePath, PSTR lpComputerName);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeleteProfileW(PWSTR lpSidString, PWSTR lpProfilePath, PWSTR lpComputerName);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateProfile(PWSTR pszUserSid, PWSTR pszUserName, char16* pszProfilePath, uint32 cchProfilePath);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultUserProfileDirectoryA(uint8* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultUserProfileDirectoryW(char16* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetAllUsersProfileDirectoryA(uint8* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetAllUsersProfileDirectoryW(char16* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetUserProfileDirectoryA(HANDLE hToken, uint8* lpProfileDir, uint32* lpcchSize);
		[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetUserProfileDirectoryW(HANDLE hToken, char16* lpProfileDir, uint32* lpcchSize);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass, uint uIdSubclass, uint dwRefData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass, uint uIdSubclass, uint* pdwRefData);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveWindowSubclass(HWND hWnd, SUBCLASSPROC pfnSubclass, uint uIdSubclass);
		[Import("comctl32.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT DefSubclassProc(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetWindowContextHelpId(HWND param0, uint32 param1);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetWindowContextHelpId(HWND param0);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetMenuContextHelpId(HMENU param0, uint32 param1);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetMenuContextHelpId(HMENU param0);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WinHelpA(HWND hWndMain, PSTR lpszHelp, uint32 uCommand, uint dwData);
		[Import("user32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WinHelpW(HWND hWndMain, PWSTR lpszHelp, uint32 uCommand, uint dwData);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* SHSimpleIDListFromPath(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemFromIDList(ITEMIDLIST* pidl, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemFromParsingName(PWSTR pszPath, IBindCtx* pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemWithParent(ITEMIDLIST* pidlParent, IShellFolder* psfParent, ITEMIDLIST* pidl, Guid* riid, void** ppvItem);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemFromRelativeName(IShellItem* psiParent, PWSTR pszName, IBindCtx* pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemInKnownFolder(Guid* kfid, uint32 dwKFFlags, PWSTR pszItem, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetIDListFromObject(IUnknown* punk, ITEMIDLIST** ppidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetItemFromObject(IUnknown* punk, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetNameFromIDList(ITEMIDLIST* pidl, SIGDN sigdnName, PWSTR* ppszName);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetItemFromDataObject(IDataObject* pdtobj, DATAOBJ_GET_ITEM_FLAGS dwFlags, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArray(ITEMIDLIST* pidlParent, IShellFolder* psf, uint32 cidl, ITEMIDLIST** ppidl, IShellItemArray** ppsiItemArray);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromDataObject(IDataObject* pdo, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromIDLists(uint32 cidl, ITEMIDLIST** rgpidl, IShellItemArray** ppsiItemArray);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromShellItem(IShellItem* psi, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateAssociationRegistration(Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDefaultExtractIcon(Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetCurrentProcessExplicitAppUserModelID(PWSTR AppID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCurrentProcessExplicitAppUserModelID(PWSTR* AppID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetTemporaryPropertyForItem(IShellItem* psi, PROPERTYKEY* propkey, PROPVARIANT* ppropvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetTemporaryPropertyForItem(IShellItem* psi, PROPERTYKEY* propkey, PROPVARIANT* propvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHShowManageLibraryUI(IShellItem* psiLibrary, HWND hwndOwner, PWSTR pszTitle, PWSTR pszInstruction, LIBRARYMANAGEDIALOGOPTIONS lmdOptions);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHResolveLibrary(IShellItem* psiLibrary);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAssocEnumHandlers(PWSTR pszExtra, ASSOC_FILTER afFilter, IEnumAssocHandlers** ppEnumHandler);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAssocEnumHandlersForProtocolByApplication(PWSTR protocol, Guid* riid, void** enumHandlers);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMONITOR_UserSize(uint32* param0, uint32 param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMONITOR_UserMarshal(uint32* param0, uint8* param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMONITOR_UserUnmarshal(uint32* param0, uint8* param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMONITOR_UserFree(uint32* param0, HMONITOR* param1);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 HMONITOR_UserSize64(uint32* param0, uint32 param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMONITOR_UserMarshal64(uint32* param0, uint8* param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint8* HMONITOR_UserUnmarshal64(uint32* param0, uint8* param1, HMONITOR* param2);
		[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void HMONITOR_UserFree64(uint32* param0, HMONITOR* param1);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDefaultPropertiesOp(IShellItem* psi, IFileOperation** ppFileOp);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetDefaultProperties(HWND hwnd, IShellItem* psi, uint32 dwFileOpFlags, IFileOperationProgressSink* pfops);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetMalloc(IMalloc** ppMalloc);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SHAlloc(uint cb);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHFree(void* pv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHGetIconOverlayIndexA(PSTR pszIconPath, int32 iIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHGetIconOverlayIndexW(PWSTR pszIconPath, int32 iIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILClone(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILCloneFirst(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILCombine(ITEMIDLIST* pidl1, ITEMIDLIST* pidl2);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void ILFree(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILGetNext(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ILGetSize(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILFindChild(ITEMIDLIST* pidlParent, ITEMIDLIST* pidlChild);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILFindLastID(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ILRemoveLastID(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ILIsEqual(ITEMIDLIST* pidl1, ITEMIDLIST* pidl2);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ILIsParent(ITEMIDLIST* pidl1, ITEMIDLIST* pidl2, BOOL fImmediate);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ILSaveToStream(IStream* pstm, ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ILLoadFromStreamEx(IStream* pstm, ITEMIDLIST** pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILCreateFromPathA(PSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILCreateFromPathW(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHILCreateFromPath(PWSTR pszPath, ITEMIDLIST** ppidl, uint32* rgfInOut);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* ILAppendID(ITEMIDLIST* pidl, SHITEMID* pmkid, BOOL fAppend);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetPathFromIDListEx(ITEMIDLIST* pidl, char16* pszPath, uint32 cchPath, int32 uOpts);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetPathFromIDListA(ITEMIDLIST* pidl, uint8* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetPathFromIDListW(ITEMIDLIST* pidl, char16* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHCreateDirectory(HWND hwnd, PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHCreateDirectoryExA(HWND hwnd, PSTR pszPath, SECURITY_ATTRIBUTES* psa);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHCreateDirectoryExW(HWND hwnd, PWSTR pszPath, SECURITY_ATTRIBUTES* psa);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHOpenFolderAndSelectItems(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItem(ITEMIDLIST* pidlParent, IShellFolder* psfParent, ITEMIDLIST* pidl, IShellItem** ppsi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetSpecialFolderLocation(HWND hwnd, int32 csidl, ITEMIDLIST** ppidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* SHCloneSpecialIDList(HWND hwnd, int32 csidl, BOOL fCreate);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetSpecialFolderPathA(HWND hwnd, uint8* pszPath, int32 csidl, BOOL fCreate);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetSpecialFolderPathW(HWND hwnd, char16* pszPath, int32 csidl, BOOL fCreate);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHFlushSFCache();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetFolderPathA(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, uint8* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetFolderPathW(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, char16* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetFolderLocation(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, ITEMIDLIST** ppidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetFolderPathA(int32 csidl, HANDLE hToken, uint32 dwFlags, PSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetFolderPathW(int32 csidl, HANDLE hToken, uint32 dwFlags, PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetFolderPathAndSubDirA(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, PSTR pszSubDir, uint8* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetFolderPathAndSubDirW(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, PWSTR pszSubDir, char16* pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetKnownFolderIDList(Guid* rfid, uint32 dwFlags, HANDLE hToken, ITEMIDLIST** ppidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetKnownFolderPath(Guid* rfid, uint32 dwFlags, HANDLE hToken, PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetKnownFolderPath(Guid* rfid, uint32 dwFlags, HANDLE hToken, PWSTR* ppszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetKnownFolderItem(Guid* rfid, KNOWN_FOLDER_FLAG flags, HANDLE hToken, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetSetFolderCustomSettings(SHFOLDERCUSTOMSETTINGS* pfcs, PWSTR pszPath, uint32 dwReadWrite);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* SHBrowseForFolderA(BROWSEINFOA* lpbi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ITEMIDLIST* SHBrowseForFolderW(BROWSEINFOW* lpbi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHLoadInProc(Guid* rclsid);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDesktopFolder(IShellFolder** ppshf);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHChangeNotify(SHCNE_ID wEventId, SHCNF_FLAGS uFlags, void* dwItem1, void* dwItem2);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHAddToRecentDocs(uint32 uFlags, void* pv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHHandleUpdateImage(ITEMIDLIST* pidlExtra);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHUpdateImageA(PSTR pszHashItem, int32 iIndex, uint32 uFlags, int32 iImageIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHUpdateImageW(PWSTR pszHashItem, int32 iIndex, uint32 uFlags, int32 iImageIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SHChangeNotifyRegister(HWND hwnd, SHCNRF_SOURCE fSources, int32 fEvents, uint32 wMsg, int32 cEntries, SHChangeNotifyEntry* pshcne);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHChangeNotifyDeregister(uint32 ulID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern ShFindChangeNotificationHandle SHChangeNotification_Lock(HANDLE hChange, uint32 dwProcId, ITEMIDLIST*** pppidl, int32* plEvent);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHChangeNotification_Unlock(HANDLE hLock);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetRealIDL(IShellFolder* psf, ITEMIDLIST* pidlSimple, ITEMIDLIST** ppidlReal);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetInstanceExplorer(IUnknown** ppunk);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDataFromIDListA(IShellFolder* psf, ITEMIDLIST* pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDataFromIDListW(IShellFolder* psf, ITEMIDLIST* pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RestartDialog(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RestartDialogEx(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn, uint32 dwReasonCode);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCoCreateInstance(PWSTR pszCLSID, Guid* pclsid, IUnknown* pUnkOuter, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDataObject(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, IDataObject* pdtInner, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CIDLData_CreateFromIDArray(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, IDataObject** ppdtobj);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStdEnumFmtEtc(uint32 cfmt, FORMATETC* afmt, IEnumFORMATETC** ppenumFormatEtc);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHDoDragDrop(HWND hwnd, IDataObject* pdata, IDropSource* pdsrc, uint32 dwEffect, uint32* pdwEffect);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_SetDragImage(HIMAGELIST him, POINT* pptOffset);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragEnterEx(HWND hwndTarget, POINT ptStart);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragEnterEx2(HWND hwndTarget, POINT ptStart, IDataObject* pdtObject);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_ShowDragImage(BOOL fShow);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragMove(POINT pt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragLeave();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_AutoScroll(HWND hwnd, AUTO_SCROLL_DATA* pad, POINT* pptNow);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ReadCabinetState(CABINETSTATE* pcs, int32 cLength);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WriteCabinetState(CABINETSTATE* pcs);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMakeUniqueName(char16* pszUniqueName, uint32 cchMax, PWSTR pszTemplate, PWSTR pszLongPlate, PWSTR pszDir);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsExe(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PCS_RET PathCleanupSpec(PWSTR pszDir, PWSTR pszSpec);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathResolve(char16* pszPath, uint16** dirs, PRF_FLAGS fFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetFileNameFromBrowse(HWND hwnd, char16* pszFilePath, uint32 cchFilePath, PWSTR pszWorkingDir, PWSTR pszDefExt, PWSTR pszFilters, PWSTR pszTitle);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 DriveType(int32 iDrive);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RealDriveType(int32 iDrive, BOOL fOKToHitNet);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 IsNetDrive(int32 iDrive);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 Shell_MergeMenus(HMENU hmDst, HMENU hmSrc, uint32 uInsert, uint32 uIDAdjust, uint32 uIDAdjustMax, MM_FLAGS uFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHObjectProperties(HWND hwnd, SHOP_TYPE shopObjectType, PWSTR pszObjectName, PWSTR pszPropertyPage);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SHFormatDrive(HWND hwnd, uint32 drive, SHFMT_ID fmtID, SHFMT_OPT options);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHDestroyPropSheetExtArray(HPSXA hpsxa);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SHAddFromPropSheetExtArray(HPSXA hpsxa, LPFNSVADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SHReplaceFromPropSheetExtArray(HPSXA hpsxa, uint32 uPageID, LPFNSVADDPROPSHEETPAGE lpfnReplaceWith, LPARAM lParam);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* OpenRegStream(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHFindFiles(ITEMIDLIST* pidlFolder, ITEMIDLIST* pidlSaveFile);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathGetShortPath(char16* pszLongPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathYetAnotherMakeUniqueName(char16* pszUniqueName, PWSTR pszPath, PWSTR pszShort, PWSTR pszFileSpec);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Win32DeleteFile(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SHRestricted(RESTRICTIONS rest);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SignalFileOpen(ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocGetDetailsOfPropKey(IShellFolder* psf, ITEMIDLIST* pidl, PROPERTYKEY* pkey, VARIANT* pv, BOOL* pfFoundPropKey);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHStartNetConnectionDialogW(HWND hwnd, PWSTR pszRemoteName, uint32 dwType);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHDefExtractIconA(PSTR pszIconFile, int32 iIndex, uint32 uFlags, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHDefExtractIconW(PWSTR pszIconFile, int32 iIndex, uint32 uFlags, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHOpenWithDialog(HWND hwndParent, OPENASINFO* poainfo);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Shell_GetImageLists(HIMAGELIST* phiml, HIMAGELIST* phimlSmall);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Shell_GetCachedImageIndex(PWSTR pwszIconPath, int32 iIconIndex, uint32 uIconFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Shell_GetCachedImageIndexA(PSTR pszIconPath, int32 iIconIndex, uint32 uIconFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 Shell_GetCachedImageIndexW(PWSTR pszIconPath, int32 iIconIndex, uint32 uIconFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHValidateUNC(HWND hwndOwner, PWSTR pszFile, VALIDATEUNC_OPTION fConnect);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHSetInstanceExplorer(IUnknown* punk);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsUserAnAdmin();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT SHShellFolderView_Message(HWND hwndMain, uint32 uMsg, LPARAM lParam);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellFolderView(SFV_CREATE* pcsfv, IShellView** ppsv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CDefFolderMenu_Create2(ITEMIDLIST* pidlFolder, HWND hwnd, uint32 cidl, ITEMIDLIST** apidl, IShellFolder* psf, LPFNDFMCALLBACK pfn, uint32 nKeys, HKEY* ahkeys, IContextMenu** ppcm);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDefaultContextMenu(DEFCONTEXTMENU* pdcm, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IContextMenu* SHFind_InitMenuPopup(HMENU hmenu, HWND hwndOwner, uint32 idCmdFirst, uint32 idCmdLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellFolderViewEx(CSFV* pcsfv, IShellView** ppsv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHGetSetSettings(SHELLSTATEA* lpss, SSF_MASK dwMask, BOOL bSet);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHGetSettings(SHELLFLAGSTATE* psfs, uint32 dwMask);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToParent(ITEMIDLIST* pidl, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToFolderIDListParent(IShellFolder* psfRoot, ITEMIDLIST* pidl, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToFolderIDListParentEx(IShellFolder* psfRoot, ITEMIDLIST* pidl, IBindCtx* ppbc, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToObject(IShellFolder* psf, ITEMIDLIST* pidl, IBindCtx* pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHParseDisplayName(PWSTR pszName, IBindCtx* pbc, ITEMIDLIST** ppidl, uint32 sfgaoIn, uint32* psfgaoOut);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPathPrepareForWriteA(HWND hwnd, IUnknown* punkEnableModless, PSTR pszPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPathPrepareForWriteW(HWND hwnd, IUnknown* punkEnableModless, PWSTR pszPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateFileExtractIconW(PWSTR pszFile, uint32 dwFileAttributes, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHLimitInputEdit(HWND hwndEdit, IShellFolder* psf);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetAttributesFromDataObject(IDataObject* pdo, uint32 dwAttributeMask, uint32* pdwAttributes, uint32* pcItems);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHMapPIDLToSystemImageListIndex(IShellFolder* pshf, ITEMIDLIST* pidl, int32* piIndexSel);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCLSIDFromString(PWSTR psz, Guid* pclsid);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PickIconDlg(HWND hwnd, char16* pszIconPath, uint32 cchIconPath, int32* piIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgMakeUniqueName(IStorage* pstgParent, PWSTR pszFileSpec, uint32 grfMode, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHChangeNotifyRegisterThread(SCNRT_STATUS status);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathQualify(PWSTR psz);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSlowA(PSTR pszFile, uint32 dwAttr);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSlowW(PWSTR pszFile, uint32 dwAttr);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HPSXA SHCreatePropSheetExtArray(HKEY hKey, PWSTR pszSubKey, uint32 max_iface);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHOpenPropSheetW(PWSTR pszCaption, HKEY* ahkeys, uint32 ckeys, Guid* pclsidDefault, IDataObject* pdtobj, IShellBrowser* psb, PWSTR pStartPage);
		[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SoftwareUpdateMessageBox(HWND hWnd, PWSTR pszDistUnit, uint32 dwFlags, SOFTDISTINFO* psdi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHMultiFileProperties(IDataObject* pdtobj, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateQueryCancelAutoPlayMoniker(IMoniker** ppmoniker);
		[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ImportPrivacySettings(PWSTR pszFilename, BOOL* pfParsePrivacyPreferences, BOOL* pfParsePerSiteRules);
		[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern DEVICE_SCALE_FACTOR GetScaleFactorForDevice(DISPLAY_DEVICE_TYPE deviceType);
		[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterScaleChangeNotifications(DISPLAY_DEVICE_TYPE displayDevice, HWND hwndNotify, uint32 uMsgNotify, uint32* pdwCookie);
		[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RevokeScaleChangeNotifications(DISPLAY_DEVICE_TYPE displayDevice, uint32 dwCookie);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetScaleFactorForMonitor(HMONITOR hMon, DEVICE_SCALE_FACTOR* pScale);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterScaleChangeEvent(HANDLE hEvent, uint* pdwCookie);
		[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UnregisterScaleChangeEvent(uint dwCookie);
		[Import("api-ms-win-shcore-scaling-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDpiForShellUIComponent(SHELL_UI_COMPONENT param0);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR* CommandLineToArgvW(PWSTR lpCmdLine, int32* pNumArgs);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DragQueryFileA(HDROP hDrop, uint32 iFile, uint8* lpszFile, uint32 cch);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DragQueryFileW(HDROP hDrop, uint32 iFile, char16* lpszFile, uint32 cch);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DragQueryPoint(HDROP hDrop, POINT* ppt);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DragFinish(HDROP hDrop);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void DragAcceptFiles(HWND hWnd, BOOL fAccept);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE ShellExecuteA(HWND hwnd, PSTR lpOperation, PSTR lpFile, PSTR lpParameters, PSTR lpDirectory, int32 nShowCmd);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE ShellExecuteW(HWND hwnd, PWSTR lpOperation, PWSTR lpFile, PWSTR lpParameters, PWSTR lpDirectory, int32 nShowCmd);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE FindExecutableA(PSTR lpFile, PSTR lpDirectory, uint8* lpResult);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE FindExecutableW(PWSTR lpFile, PWSTR lpDirectory, char16* lpResult);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ShellAboutA(HWND hWnd, PSTR szApp, PSTR szOtherStuff, HICON hIcon);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ShellAboutW(HWND hWnd, PWSTR szApp, PWSTR szOtherStuff, HICON hIcon);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON DuplicateIcon(HINSTANCE hInst, HICON hIcon);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractAssociatedIconA(HINSTANCE hInst, uint8* pszIconPath, uint16* piIcon);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractAssociatedIconW(HINSTANCE hInst, char16* pszIconPath, uint16* piIcon);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractAssociatedIconExA(HINSTANCE hInst, uint8* pszIconPath, uint16* piIconIndex, uint16* piIconId);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractAssociatedIconExW(HINSTANCE hInst, char16* pszIconPath, uint16* piIconIndex, uint16* piIconId);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractIconA(HINSTANCE hInst, PSTR pszExeFileName, uint32 nIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HICON ExtractIconW(HINSTANCE hInst, PWSTR pszExeFileName, uint32 nIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint SHAppBarMessage(uint32 dwMessage, APPBARDATA* pData);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DoEnvironmentSubstA(uint8* pszSrc, uint32 cchSrc);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 DoEnvironmentSubstW(char16* pszSrc, uint32 cchSrc);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ExtractIconExA(PSTR lpszFile, int32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIcons);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ExtractIconExW(PWSTR lpszFile, int32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIcons);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHFileOperationA(SHFILEOPSTRUCTA* lpFileOp);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHFileOperationW(SHFILEOPSTRUCTW* lpFileOp);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHFreeNameMappings(HANDLE hNameMappings);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShellExecuteExA(SHELLEXECUTEINFOA* pExecInfo);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ShellExecuteExW(SHELLEXECUTEINFOW* pExecInfo);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHCreateProcessAsUserW(SHCREATEPROCESSINFOW* pscpi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHEvaluateSystemCommandTemplate(PWSTR pszCmdTemplate, PWSTR* ppszApplication, PWSTR* ppszCommandLine, PWSTR* ppszParameters);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocCreateForClasses(ASSOCIATIONELEMENT* rgClasses, uint32 cClasses, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHQueryRecycleBinA(PSTR pszRootPath, SHQUERYRBINFO* pSHQueryRBInfo);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHQueryRecycleBinW(PWSTR pszRootPath, SHQUERYRBINFO* pSHQueryRBInfo);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHEmptyRecycleBinA(HWND hwnd, PSTR pszRootPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHEmptyRecycleBinW(HWND hwnd, PWSTR pszRootPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHQueryUserNotificationState(QUERY_USER_NOTIFICATION_STATE* pquns);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Shell_NotifyIconA(NOTIFY_ICON_MESSAGE dwMessage, NOTIFYICONDATAA* lpData);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Shell_NotifyIconW(NOTIFY_ICON_MESSAGE dwMessage, NOTIFYICONDATAW* lpData);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT Shell_NotifyIconGetRect(NOTIFYICONIDENTIFIER* identifier, RECT* iconLocation);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint SHGetFileInfoA(PSTR pszPath, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes, SHFILEINFOA* psfi, uint32 cbFileInfo, SHGFI_FLAGS uFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint SHGetFileInfoW(PWSTR pszPath, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes, SHFILEINFOW* psfi, uint32 cbFileInfo, SHGFI_FLAGS uFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetStockIconInfo(SHSTOCKICONID siid, uint32 uFlags, SHSTOCKICONINFO* psii);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetDiskFreeSpaceExA(PSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetDiskFreeSpaceExW(PWSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetNewLinkInfoA(PSTR pszLinkTo, PSTR pszDir, uint8* pszName, BOOL* pfMustCopy, uint32 uFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHGetNewLinkInfoW(PWSTR pszLinkTo, PWSTR pszDir, char16* pszName, BOOL* pfMustCopy, uint32 uFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHInvokePrinterCommandA(HWND hwnd, uint32 uAction, PSTR lpBuf1, PSTR lpBuf2, BOOL fModal);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHInvokePrinterCommandW(HWND hwnd, uint32 uAction, PWSTR lpBuf1, PWSTR lpBuf2, BOOL fModal);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHLoadNonloadedIconOverlayIdentifiers();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHIsFileAvailableOffline(PWSTR pwszPath, uint32* pdwStatus);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetLocalizedName(PWSTR pszPath, PWSTR pszResModule, int32 idsRes);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHRemoveLocalizedName(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetLocalizedName(PWSTR pszPath, char16* pszResModule, uint32 cch, int32* pidsRes);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ShellMessageBoxA(HINSTANCE hAppInst, HWND hWnd, PSTR lpcText, PSTR lpcTitle, uint32 fuStyle);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 ShellMessageBoxW(HINSTANCE hAppInst, HWND hWnd, PWSTR lpcText, PWSTR lpcTitle, uint32 fuStyle);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsLFNDriveA(PSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsLFNDriveW(PWSTR pszPath);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHEnumerateUnreadMailAccountsW(HKEY hKeyUser, uint32 dwIndex, char16* pszMailAddress, int32 cchMailAddress);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetUnreadMailCountW(HKEY hKeyUser, PWSTR pszMailAddress, uint32* pdwCount, FILETIME* pFileTime, char16* pszShellExecuteCommand, int32 cchShellExecuteCommand);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetUnreadMailCountW(PWSTR pszMailAddress, uint32 dwCount, PWSTR pszShellExecuteCommand);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHTestTokenMembership(HANDLE hToken, uint32 ulRID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetImageList(int32 iImageList, Guid* riid, void** ppvObj);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL InitNetworkAddressControl();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDriveMedia(PWSTR pszDrive, uint32* pdwMediaContent);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrChrA(PSTR pszStart, uint16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrChrW(PWSTR pszStart, char16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrChrIA(PSTR pszStart, uint16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrChrIW(PWSTR pszStart, char16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrChrNW(PWSTR pszStart, char16 wMatch, uint32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrChrNIW(PWSTR pszStart, char16 wMatch, uint32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNA(PSTR psz1, PSTR psz2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNW(PWSTR psz1, PWSTR psz2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNIA(PSTR psz1, PSTR psz2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNIW(PWSTR psz1, PWSTR psz2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCSpnA(PSTR pszStr, PSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCSpnW(PWSTR pszStr, PWSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCSpnIA(PSTR pszStr, PSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCSpnIW(PWSTR pszStr, PWSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrDupA(PSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrDupW(PWSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrFormatByteSizeEx(uint64 ull, SFBS_FLAGS flags, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrFormatByteSizeA(uint32 dw, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrFormatByteSize64A(int64 qdw, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrFormatByteSizeW(int64 qdw, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrFormatKBSizeW(int64 qdw, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrFormatKBSizeA(int64 qdw, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrFromTimeIntervalA(uint8* pszOut, uint32 cchMax, uint32 dwTimeMS, int32 digits);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrFromTimeIntervalW(char16* pszOut, uint32 cchMax, uint32 dwTimeMS, int32 digits);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrIsIntlEqualA(BOOL fCaseSens, PSTR pszString1, PSTR pszString2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrIsIntlEqualW(BOOL fCaseSens, PWSTR pszString1, PWSTR pszString2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrNCatA(uint8* psz1, PSTR psz2, int32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrNCatW(char16* psz1, PWSTR psz2, int32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrPBrkA(PSTR psz, PSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrPBrkW(PWSTR psz, PWSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrRChrA(PSTR pszStart, PSTR pszEnd, uint16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrRChrW(PWSTR pszStart, PWSTR pszEnd, char16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrRChrIA(PSTR pszStart, PSTR pszEnd, uint16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrRChrIW(PWSTR pszStart, PWSTR pszEnd, char16 wMatch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrRStrIA(PSTR pszSource, PSTR pszLast, PSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrRStrIW(PWSTR pszSource, PWSTR pszLast, PWSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrSpnA(PSTR psz, PSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrSpnW(PWSTR psz, PWSTR pszSet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrStrA(PSTR pszFirst, PSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrStrW(PWSTR pszFirst, PWSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrStrIA(PSTR pszFirst, PSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrStrIW(PWSTR pszFirst, PWSTR pszSrch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrStrNW(PWSTR pszFirst, PWSTR pszSrch, uint32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrStrNIW(PWSTR pszFirst, PWSTR pszSrch, uint32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrToIntA(PSTR pszSrc);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrToIntW(PWSTR pszSrc);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrToIntExA(PSTR pszString, int32 dwFlags, int32* piRet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrToIntExW(PWSTR pszString, int32 dwFlags, int32* piRet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrToInt64ExA(PSTR pszString, int32 dwFlags, int64* pllRet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrToInt64ExW(PWSTR pszString, int32 dwFlags, int64* pllRet);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrTrimA(PSTR psz, PSTR pszTrimChars);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL StrTrimW(PWSTR psz, PWSTR pszTrimChars);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrCatW(PWSTR psz1, PWSTR psz2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpW(PWSTR psz1, PWSTR psz2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpIW(PWSTR psz1, PWSTR psz2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrCpyW(PWSTR psz1, PWSTR psz2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrCpyNW(char16* pszDst, PWSTR pszSrc, int32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR StrCatBuffW(char16* pszDest, PWSTR pszSrc, int32 cchDestBuffSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR StrCatBuffA(uint8* pszDest, PSTR pszSrc, int32 cchDestBuffSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChrCmpIA(uint16 w1, uint16 w2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ChrCmpIW(char16 w1, char16 w2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 wvnsprintfA(uint8* pszDest, int32 cchDest, PSTR pszFmt, int8* arglist);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 wvnsprintfW(char16* pszDest, int32 cchDest, PWSTR pszFmt, int8* arglist);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 wnsprintfA(uint8* pszDest, int32 cchDest, PSTR pszFmt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 wnsprintfW(char16* pszDest, int32 cchDest, PWSTR pszFmt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrRetToStrA(STRRET* pstr, ITEMIDLIST* pidl, PSTR* ppsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrRetToStrW(STRRET* pstr, ITEMIDLIST* pidl, PWSTR* ppsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrRetToBufA(STRRET* pstr, ITEMIDLIST* pidl, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrRetToBufW(STRRET* pstr, ITEMIDLIST* pidl, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHStrDupA(PSTR psz, PWSTR* ppwsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHStrDupW(PWSTR psz, PWSTR* ppwsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpLogicalW(PWSTR psz1, PWSTR psz2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 StrCatChainW(char16* pszDst, uint32 cchDst, uint32 ichAt, PWSTR pszSrc);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StrRetToBSTR(STRRET* pstr, ITEMIDLIST* pidl, BSTR* pbstr);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHLoadIndirectString(PWSTR pszSource, char16* pszOutBuf, uint32 cchOutBuf, void** ppvReserved);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsCharSpaceA(CHAR wch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsCharSpaceW(char16 wch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpCA(PSTR pszStr1, PSTR pszStr2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpCW(PWSTR pszStr1, PWSTR pszStr2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpICA(PSTR pszStr1, PSTR pszStr2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpICW(PWSTR pszStr1, PWSTR pszStr2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNCA(PSTR pszStr1, PSTR pszStr2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNCW(PWSTR pszStr1, PWSTR pszStr2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNICA(PSTR pszStr1, PSTR pszStr2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 StrCmpNICW(PWSTR pszStr1, PWSTR pszStr2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IntlStrEqWorkerA(BOOL fCaseSens, uint8* lpString1, uint8* lpString2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IntlStrEqWorkerW(BOOL fCaseSens, char16* lpString1, char16* lpString2, int32 nChar);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathAddBackslashA(uint8* pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathAddBackslashW(char16* pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathAddExtensionA(uint8* pszPath, PSTR pszExt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathAddExtensionW(char16* pszPath, PWSTR pszExt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathAppendA(uint8* pszPath, PSTR pszMore);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathAppendW(char16* pszPath, PWSTR pszMore);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathBuildRootA(uint8* pszRoot, int32 iDrive);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathBuildRootW(char16* pszRoot, int32 iDrive);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCanonicalizeA(uint8* pszBuf, PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCanonicalizeW(char16* pszBuf, PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathCombineA(uint8* pszDest, PSTR pszDir, PSTR pszFile);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathCombineW(char16* pszDest, PWSTR pszDir, PWSTR pszFile);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCompactPathA(HDC hDC, uint8* pszPath, uint32 dx);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCompactPathW(HDC hDC, char16* pszPath, uint32 dx);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCompactPathExA(uint8* pszOut, PSTR pszSrc, uint32 cchMax, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCompactPathExW(char16* pszOut, PWSTR pszSrc, uint32 cchMax, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathCommonPrefixA(PSTR pszFile1, PSTR pszFile2, uint8* achPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathCommonPrefixW(PWSTR pszFile1, PWSTR pszFile2, char16* achPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathFileExistsA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathFileExistsW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathFindExtensionA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathFindExtensionW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathFindFileNameA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathFindFileNameW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathFindNextComponentA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathFindNextComponentW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathFindOnPathA(uint8* pszPath, int8** ppszOtherDirs);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathFindOnPathW(char16* pszPath, uint16** ppszOtherDirs);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathFindSuffixArrayA(PSTR pszPath, PSTR* apszSuffix, int32 iArraySize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathFindSuffixArrayW(PWSTR pszPath, PWSTR* apszSuffix, int32 iArraySize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathGetArgsA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathGetArgsW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsLFNFileSpecA(PSTR pszName);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsLFNFileSpecW(PWSTR pszName);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PathGetCharTypeA(uint8 ch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 PathGetCharTypeW(char16 ch);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathGetDriveNumberA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathGetDriveNumberW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsDirectoryA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsDirectoryW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsDirectoryEmptyA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsDirectoryEmptyW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsFileSpecA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsFileSpecW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsPrefixA(PSTR pszPrefix, PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsPrefixW(PWSTR pszPrefix, PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsRelativeA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsRelativeW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsRootA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsRootW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSameRootA(PSTR pszPath1, PSTR pszPath2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSameRootW(PWSTR pszPath1, PWSTR pszPath2);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsNetworkPathA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsNetworkPathW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCServerA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCServerW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCServerShareA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCServerShareW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsContentTypeA(PSTR pszPath, PSTR pszContentType);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsContentTypeW(PWSTR pszPath, PWSTR pszContentType);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsURLA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsURLW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMakePrettyA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMakePrettyW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMatchSpecA(PSTR pszFile, PSTR pszSpec);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMatchSpecW(PWSTR pszFile, PWSTR pszSpec);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathMatchSpecExA(PSTR pszFile, PSTR pszSpec, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathMatchSpecExW(PWSTR pszFile, PWSTR pszSpec, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathParseIconLocationA(PSTR pszIconFile);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PathParseIconLocationW(PWSTR pszIconFile);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathQuoteSpacesA(uint8* lpsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathQuoteSpacesW(char16* lpsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRelativePathToA(uint8* pszPath, PSTR pszFrom, uint32 dwAttrFrom, PSTR pszTo, uint32 dwAttrTo);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRelativePathToW(char16* pszPath, PWSTR pszFrom, uint32 dwAttrFrom, PWSTR pszTo, uint32 dwAttrTo);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveArgsA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveArgsW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathRemoveBackslashA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathRemoveBackslashW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveBlanksA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveBlanksW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveExtensionA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathRemoveExtensionW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRemoveFileSpecA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRemoveFileSpecW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRenameExtensionA(uint8* pszPath, PSTR pszExt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathRenameExtensionW(char16* pszPath, PWSTR pszExt);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathSearchAndQualifyA(PSTR pszPath, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathSearchAndQualifyW(PWSTR pszPath, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathSetDlgItemPathA(HWND hDlg, int32 id, PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathSetDlgItemPathW(HWND hDlg, int32 id, PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR PathSkipRootA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR PathSkipRootW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathStripPathA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathStripPathW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathStripToRootA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathStripToRootW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnquoteSpacesA(PSTR lpsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnquoteSpacesW(PWSTR lpsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMakeSystemFolderA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathMakeSystemFolderW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnmakeSystemFolderA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnmakeSystemFolderW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSystemFolderA(PSTR pszPath, uint32 dwAttrb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsSystemFolderW(PWSTR pszPath, uint32 dwAttrb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathUndecorateA(PSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void PathUndecorateW(PWSTR pszPath);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnExpandEnvStringsA(PSTR pszPath, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathUnExpandEnvStringsW(PWSTR pszPath, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UrlCompareA(PSTR psz1, PSTR psz2, BOOL fIgnoreSlash);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 UrlCompareW(PWSTR psz1, PWSTR psz2, BOOL fIgnoreSlash);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCombineA(PSTR pszBase, PSTR pszRelative, uint8* pszCombined, uint32* pcchCombined, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCombineW(PWSTR pszBase, PWSTR pszRelative, char16* pszCombined, uint32* pcchCombined, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCanonicalizeA(PSTR pszUrl, uint8* pszCanonicalized, uint32* pcchCanonicalized, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCanonicalizeW(PWSTR pszUrl, char16* pszCanonicalized, uint32* pcchCanonicalized, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsOpaqueA(PSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsOpaqueW(PWSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsNoHistoryA(PSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsNoHistoryW(PWSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsA(PSTR pszUrl, URLIS UrlIs);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UrlIsW(PWSTR pszUrl, URLIS UrlIs);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PSTR UrlGetLocationA(PSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern PWSTR UrlGetLocationW(PWSTR pszURL);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlUnescapeA(PSTR pszUrl, uint8* pszUnescaped, uint32* pcchUnescaped, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlUnescapeW(PWSTR pszUrl, char16* pszUnescaped, uint32* pcchUnescaped, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlEscapeA(PSTR pszUrl, uint8* pszEscaped, uint32* pcchEscaped, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlEscapeW(PWSTR pszUrl, char16* pszEscaped, uint32* pcchEscaped, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCreateFromPathA(PSTR pszPath, uint8* pszUrl, uint32* pcchUrl, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlCreateFromPathW(PWSTR pszPath, char16* pszUrl, uint32* pcchUrl, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCreateFromUrlA(PSTR pszUrl, uint8* pszPath, uint32* pcchPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCreateFromUrlW(PWSTR pszUrl, char16* pszPath, uint32* pcchPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCreateFromUrlAlloc(PWSTR pszIn, PWSTR* ppszOut, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlHashA(PSTR pszUrl, uint8* pbHash, uint32 cbHash);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlHashW(PWSTR pszUrl, uint8* pbHash, uint32 cbHash);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlGetPartW(PWSTR pszIn, char16* pszOut, uint32* pcchOut, uint32 dwPart, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlGetPartA(PSTR pszIn, uint8* pszOut, uint32* pcchOut, uint32 dwPart, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlApplySchemeA(PSTR pszIn, uint8* pszOut, uint32* pcchOut, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlApplySchemeW(PWSTR pszIn, char16* pszOut, uint32* pcchOut, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HashData(uint8* pbData, uint32 cbData, uint8* pbHash, uint32 cbHash);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT UrlFixupW(PWSTR pcszUrl, char16* pszTranslatedUrl, uint32 cchMax);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ParseURLA(PSTR pcszURL, PARSEDURLA* ppu);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ParseURLW(PWSTR pcszURL, PARSEDURLW* ppu);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteEmptyKeyA(HKEY hkey, PSTR pszSubKey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteEmptyKeyW(HKEY hkey, PWSTR pszSubKey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteKeyA(HKEY hkey, PSTR pszSubKey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteKeyW(HKEY hkey, PWSTR pszSubKey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HKEY SHRegDuplicateHKey(HKEY hkey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteValueA(HKEY hkey, PSTR pszSubKey, PSTR pszValue);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHDeleteValueW(HKEY hkey, PWSTR pszSubKey, PWSTR pszValue);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHGetValueA(HKEY hkey, PSTR pszSubKey, PSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHGetValueW(HKEY hkey, PWSTR pszSubKey, PWSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHSetValueA(HKEY hkey, PSTR pszSubKey, PSTR pszValue, uint32 dwType, void* pvData, uint32 cbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHSetValueW(HKEY hkey, PWSTR pszSubKey, PWSTR pszValue, uint32 dwType, void* pvData, uint32 cbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetValueA(HKEY hkey, PSTR pszSubKey, PSTR pszValue, int32 srrfFlags, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetValueW(HKEY hkey, PWSTR pszSubKey, PWSTR pszValue, int32 srrfFlags, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetValueFromHKCUHKLM(PWSTR pwszKey, PWSTR pwszValue, int32 srrfFlags, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHQueryValueExA(HKEY hkey, PSTR pszValue, uint32* pdwReserved, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHQueryValueExW(HKEY hkey, PWSTR pszValue, uint32* pdwReserved, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHEnumKeyExA(HKEY hkey, uint32 dwIndex, uint8* pszName, uint32* pcchName);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHEnumKeyExW(HKEY hkey, uint32 dwIndex, char16* pszName, uint32* pcchName);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHEnumValueA(HKEY hkey, uint32 dwIndex, uint8* pszValueName, uint32* pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHEnumValueW(HKEY hkey, uint32 dwIndex, char16* pszValueName, uint32* pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHQueryInfoKeyA(HKEY hkey, uint32* pcSubKeys, uint32* pcchMaxSubKeyLen, uint32* pcValues, uint32* pcchMaxValueNameLen);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHQueryInfoKeyW(HKEY hkey, uint32* pcSubKeys, uint32* pcchMaxSubKeyLen, uint32* pcValues, uint32* pcchMaxValueNameLen);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHCopyKeyA(HKEY hkeySrc, PSTR pszSrcSubKey, HKEY hkeyDest, uint32 fReserved);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHCopyKeyW(HKEY hkeySrc, PWSTR pszSrcSubKey, HKEY hkeyDest, uint32 fReserved);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetPathA(HKEY hKey, PSTR pcszSubKey, PSTR pcszValue, uint8* pszPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetPathW(HKEY hKey, PWSTR pcszSubKey, PWSTR pcszValue, char16* pszPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegSetPathA(HKEY hKey, PSTR pcszSubKey, PSTR pcszValue, PSTR pcszPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegSetPathW(HKEY hKey, PWSTR pcszSubKey, PWSTR pcszValue, PWSTR pcszPath, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegCreateUSKeyA(PSTR pszPath, uint32 samDesired, int hRelativeUSKey, int* phNewUSKey, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegCreateUSKeyW(PWSTR pwzPath, uint32 samDesired, int hRelativeUSKey, int* phNewUSKey, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegOpenUSKeyA(PSTR pszPath, uint32 samDesired, int hRelativeUSKey, int* phNewUSKey, BOOL fIgnoreHKCU);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegOpenUSKeyW(PWSTR pwzPath, uint32 samDesired, int hRelativeUSKey, int* phNewUSKey, BOOL fIgnoreHKCU);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegQueryUSValueA(int hUSKey, PSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData, BOOL fIgnoreHKCU, void* pvDefaultData, uint32 dwDefaultDataSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegQueryUSValueW(int hUSKey, PWSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData, BOOL fIgnoreHKCU, void* pvDefaultData, uint32 dwDefaultDataSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegWriteUSValueA(int hUSKey, PSTR pszValue, uint32 dwType, void* pvData, uint32 cbData, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegWriteUSValueW(int hUSKey, PWSTR pwzValue, uint32 dwType, void* pvData, uint32 cbData, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegDeleteUSValueA(int hUSKey, PSTR pszValue, SHREGDEL_FLAGS delRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegDeleteUSValueW(int hUSKey, PWSTR pwzValue, SHREGDEL_FLAGS delRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegDeleteEmptyUSKeyW(int hUSKey, PWSTR pwzSubKey, SHREGDEL_FLAGS delRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegDeleteEmptyUSKeyA(int hUSKey, PSTR pszSubKey, SHREGDEL_FLAGS delRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegEnumUSKeyA(int hUSKey, uint32 dwIndex, uint8* pszName, uint32* pcchName, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegEnumUSKeyW(int hUSKey, uint32 dwIndex, char16* pwzName, uint32* pcchName, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegEnumUSValueA(int hUSkey, uint32 dwIndex, uint8* pszValueName, uint32* pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegEnumUSValueW(int hUSkey, uint32 dwIndex, char16* pszValueName, uint32* pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegQueryInfoUSKeyA(int hUSKey, uint32* pcSubKeys, uint32* pcchMaxSubKeyLen, uint32* pcValues, uint32* pcchMaxValueNameLen, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegQueryInfoUSKeyW(int hUSKey, uint32* pcSubKeys, uint32* pcchMaxSubKeyLen, uint32* pcValues, uint32* pcchMaxValueNameLen, SHREGENUM_FLAGS enumRegFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegCloseUSKey(int hUSKey);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetUSValueA(PSTR pszSubKey, PSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData, BOOL fIgnoreHKCU, void* pvDefaultData, uint32 dwDefaultDataSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegGetUSValueW(PWSTR pszSubKey, PWSTR pszValue, uint32* pdwType, void* pvData, uint32* pcbData, BOOL fIgnoreHKCU, void* pvDefaultData, uint32 dwDefaultDataSize);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegSetUSValueA(PSTR pszSubKey, PSTR pszValue, uint32 dwType, void* pvData, uint32 cbData, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LSTATUS SHRegSetUSValueW(PWSTR pwzSubKey, PWSTR pwzValue, uint32 dwType, void* pvData, uint32 cbData, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHRegGetIntW(HKEY hk, PWSTR pwzKey, int32 iDefault);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHRegGetBoolUSValueA(PSTR pszSubKey, PSTR pszValue, BOOL fIgnoreHKCU, BOOL fDefault);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHRegGetBoolUSValueW(PWSTR pszSubKey, PWSTR pszValue, BOOL fIgnoreHKCU, BOOL fDefault);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocCreate(Guid clsid, Guid* riid, void** ppv);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryStringA(uint32 flags, ASSOCSTR str, PSTR pszAssoc, PSTR pszExtra, uint8* pszOut, uint32* pcchOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryStringW(uint32 flags, ASSOCSTR str, PWSTR pszAssoc, PWSTR pszExtra, char16* pszOut, uint32* pcchOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryStringByKeyA(uint32 flags, ASSOCSTR str, HKEY hkAssoc, PSTR pszExtra, uint8* pszOut, uint32* pcchOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryStringByKeyW(uint32 flags, ASSOCSTR str, HKEY hkAssoc, PWSTR pszExtra, char16* pszOut, uint32* pcchOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryKeyA(uint32 flags, ASSOCKEY key, PSTR pszAssoc, PSTR pszExtra, HKEY* phkeyOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocQueryKeyW(uint32 flags, ASSOCKEY key, PWSTR pszAssoc, PWSTR pszExtra, HKEY* phkeyOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL AssocIsDangerous(PWSTR pszAssoc);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AssocGetPerceivedType(PWSTR pszExt, PERCEIVED* ptype, uint32* pflag, PWSTR* ppszType);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* SHOpenRegStreamA(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* SHOpenRegStreamW(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* SHOpenRegStream2A(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* SHOpenRegStream2W(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileA(PSTR pszFile, uint32 grfMode, IStream** ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileW(PWSTR pszFile, uint32 grfMode, IStream** ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileEx(PWSTR pszFile, uint32 grfMode, uint32 dwAttributes, BOOL fCreate, IStream* pstmTemplate, IStream** ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream* SHCreateMemStream(uint8* pInit, uint32 cbInit);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAcceptLanguagesA(uint8* pszLanguages, uint32* pcchLanguages);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAcceptLanguagesW(char16* pszLanguages, uint32* pcchLanguages);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void IUnknown_Set(IUnknown** ppunk, IUnknown* punk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void IUnknown_AtomicRelease(void** ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_GetWindow(IUnknown* punk, HWND* phwnd);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_SetSite(IUnknown* punk, IUnknown* punkSite);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_GetSite(IUnknown* punk, Guid* riid, void** ppv);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_QueryService(IUnknown* punk, Guid* guidService, Guid* riid, void** ppvOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Read(IStream* pstm, void* pv, uint32 cb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Write(IStream* pstm, void* pv, uint32 cb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Reset(IStream* pstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Size(IStream* pstm, ULARGE_INTEGER* pui);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ConnectToConnectionPoint(IUnknown* punk, Guid* riidEvent, BOOL fConnect, IUnknown* punkTarget, uint32* pdwCookie, IConnectionPoint** ppcpOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_ReadPidl(IStream* pstm, ITEMIDLIST** ppidlOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_WritePidl(IStream* pstm, ITEMIDLIST* pidlWrite);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_ReadStr(IStream* pstm, PWSTR* ppsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_WriteStr(IStream* pstm, PWSTR psz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Copy(IStream* pstmFrom, IStream* pstmTo, uint32 cb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetViewStatePropertyBag(ITEMIDLIST* pidl, PWSTR pszBagName, uint32 dwFlags, Guid* riid, void** ppv);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHFormatDateTimeA(FILETIME* pft, uint32* pdwFlags, uint8* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHFormatDateTimeW(FILETIME* pft, uint32* pdwFlags, char16* pszBuf, uint32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHAnsiToUnicode(PSTR pszSrc, char16* pwszDst, int32 cwchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHAnsiToAnsi(PSTR pszSrc, uint8* pszDst, int32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHUnicodeToAnsi(PWSTR pwszSrc, uint8* pszDst, int32 cchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHUnicodeToUnicode(PWSTR pwzSrc, char16* pwzDst, int32 cwchBuf);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHMessageBoxCheckA(HWND hwnd, PSTR pszText, PSTR pszCaption, uint32 uType, int32 iDefault, PSTR pszRegVal);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHMessageBoxCheckW(HWND hwnd, PWSTR pszText, PWSTR pszCaption, uint32 uType, int32 iDefault, PWSTR pszRegVal);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT SHSendMessageBroadcastA(uint32 uMsg, WPARAM wParam, LPARAM lParam);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT SHSendMessageBroadcastW(uint32 uMsg, WPARAM wParam, LPARAM lParam);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern CHAR SHStripMneumonicA(PSTR pszMenu);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern char16 SHStripMneumonicW(PWSTR pszMenu);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsOS(OS dwOS);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHGlobalCounterGetValue(SHGLOBALCOUNTER id);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHGlobalCounterIncrement(SHGLOBALCOUNTER id);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHGlobalCounterDecrement(SHGLOBALCOUNTER id);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE SHAllocShared(void* pvData, uint32 dwSize, uint32 dwProcessId);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHFreeShared(HANDLE hData, uint32 dwProcessId);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void* SHLockShared(HANDLE hData, uint32 dwProcessId);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHUnlockShared(void* pvData);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 WhichPlatform();
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT QISearch(void* that, QITAB* pqit, Guid* riid, void** ppv);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHIsLowMemoryMachine(uint32 dwType);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 GetMenuPosFromID(HMENU hmenu, uint32 id);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetInverseCMAP(uint8* pbMap, uint32 cbMap);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAutoComplete(HWND hwndEdit, uint32 dwFlags);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateThreadRef(int32* pcRef, IUnknown** ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetThreadRef(IUnknown* punk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetThreadRef(IUnknown** ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHSkipJunction(IBindCtx* pbc, Guid* pclsid);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHCreateThread(LPTHREAD_START_ROUTINE pfnThreadProc, void* pData, uint32 flags, LPTHREAD_START_ROUTINE pfnCallback);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHCreateThreadWithHandle(LPTHREAD_START_ROUTINE pfnThreadProc, void* pData, uint32 flags, LPTHREAD_START_ROUTINE pfnCallback, HANDLE* pHandle);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHReleaseThreadRef();
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HPALETTE SHCreateShellPalette(HDC hdc);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void ColorRGBToHLS(uint32 clrRGB, uint16* pwHue, uint16* pwLuminance, uint16* pwSaturation);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ColorHLSToRGB(uint16 wHue, uint16 wLuminance, uint16 wSaturation);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 ColorAdjustLuma(uint32 clrRGB, int32 n, BOOL fScale);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsInternetESCEnabled();
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateFromMoniker(IMoniker* pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName, IHlinkSite* pihlsite, uint32 dwSiteData, IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateFromString(PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, IHlinkSite* pihlsite, uint32 dwSiteData, IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateFromData(IDataObject* piDataObj, IHlinkSite* pihlsite, uint32 dwSiteData, IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkQueryCreateFromData(IDataObject* piDataObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkClone(IHlink* pihl, Guid* riid, IHlinkSite* pihlsiteForClone, uint32 dwSiteData, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateBrowseContext(IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigateToStringReference(PWSTR pwzTarget, PWSTR pwzLocation, IHlinkSite* pihlsite, uint32 dwSiteData, IHlinkFrame* pihlframe, uint32 grfHLNF, IBindCtx* pibc, IBindStatusCallback* pibsc, IHlinkBrowseContext* pihlbc);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigate(IHlink* pihl, IHlinkFrame* pihlframe, uint32 grfHLNF, IBindCtx* pbc, IBindStatusCallback* pibsc, IHlinkBrowseContext* pihlbc);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkOnNavigate(IHlinkFrame* pihlframe, IHlinkBrowseContext* pihlbc, uint32 grfHLNF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32* puHLID);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkUpdateStackItem(IHlinkFrame* pihlframe, IHlinkBrowseContext* pihlbc, uint32 uHLID, IMoniker* pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkOnRenameDocument(uint32 dwReserved, IHlinkBrowseContext* pihlbc, IMoniker* pimkOld, IMoniker* pimkNew);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveMonikerForData(IMoniker* pimkReference, uint32 reserved, IBindCtx* pibc, uint32 cFmtetc, FORMATETC* rgFmtetc, IBindStatusCallback* pibsc, IMoniker* pimkBase);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveStringForData(PWSTR pwzReference, uint32 reserved, IBindCtx* pibc, uint32 cFmtetc, FORMATETC* rgFmtetc, IBindStatusCallback* pibsc, IMoniker* pimkBase);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkParseDisplayName(IBindCtx* pibc, PWSTR pwzDisplayName, BOOL fNoForceAbs, uint32* pcchEaten, IMoniker** ppimk);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateExtensionServices(PWSTR pwzAdditionalHeaders, HWND phwnd, PWSTR pszUsername, PWSTR pszPassword, IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkPreprocessMoniker(IBindCtx* pibc, IMoniker* pimkIn, IMoniker** ppimkOut);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSaveToStreamEx(IUnknown* piunk, IStream* pistm, BOOL fClearDirty);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkSetSpecialReference(uint32 uReference, PWSTR pwzReference);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkGetSpecialReference(uint32 uReference, PWSTR* ppwzReference);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcut(uint32 grfHLSHORTCUTF, IHlink* pihl, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcutFromMoniker(uint32 grfHLSHORTCUTF, IMoniker* pimkTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcutFromString(uint32 grfHLSHORTCUTF, PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveShortcut(PWSTR pwzShortcutFileName, IHlinkSite* pihlsite, uint32 dwSiteData, IUnknown* piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveShortcutToMoniker(PWSTR pwzShortcutFileName, IMoniker** ppimkTarget, PWSTR* ppwzLocation);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveShortcutToString(PWSTR pwzShortcutFileName, PWSTR* ppwzTarget, PWSTR* ppwzLocation);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkIsShortcut(PWSTR pwzFileName);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkGetValueFromParams(PWSTR pwzParams, PWSTR pwzName, PWSTR* ppwzValue);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkTranslateURL(PWSTR pwzURL, uint32 grfFlags, PWSTR* ppwzTranslatedURL);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathIsUNCEx(PWSTR pszPath, PWSTR* ppszServer);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PathCchIsRoot(PWSTR pszPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchAddBackslashEx(char16* pszPath, uint cchPath, PWSTR* ppszEnd, uint* pcchRemaining);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchAddBackslash(char16* pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchRemoveBackslashEx(PWSTR pszPath, uint cchPath, PWSTR* ppszEnd, uint* pcchRemaining);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchRemoveBackslash(char16* pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchSkipRoot(PWSTR pszPath, PWSTR* ppszRootEnd);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchStripToRoot(PWSTR pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchRemoveFileSpec(PWSTR pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchFindExtension(PWSTR pszPath, uint cchPath, PWSTR* ppszExt);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchAddExtension(char16* pszPath, uint cchPath, PWSTR pszExt);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchRenameExtension(char16* pszPath, uint cchPath, PWSTR pszExt);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchRemoveExtension(PWSTR pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchCanonicalizeEx(char16* pszPathOut, uint cchPathOut, PWSTR pszPathIn, uint32 dwFlags);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchCanonicalize(char16* pszPathOut, uint cchPathOut, PWSTR pszPathIn);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchCombineEx(char16* pszPathOut, uint cchPathOut, PWSTR pszPathIn, PWSTR pszMore, uint32 dwFlags);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchCombine(char16* pszPathOut, uint cchPathOut, PWSTR pszPathIn, PWSTR pszMore);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchAppendEx(char16* pszPath, uint cchPath, PWSTR pszMore, uint32 dwFlags);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchAppend(char16* pszPath, uint cchPath, PWSTR pszMore);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathCchStripPrefix(char16* pszPath, uint cchPath);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathAllocCombine(PWSTR pszPathIn, PWSTR pszMore, uint32 dwFlags, PWSTR* ppszPathOut);
		[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT PathAllocCanonicalize(PWSTR pszPathIn, uint32 dwFlags, PWSTR* ppszPathOut);
		[Import("api-ms-win-core-psm-appnotify-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterAppStateChangeNotification(PAPPSTATE_CHANGE_ROUTINE Routine, void* Context, _APPSTATE_REGISTRATION** Registration);
		[Import("api-ms-win-core-psm-appnotify-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void UnregisterAppStateChangeNotification(_APPSTATE_REGISTRATION* Registration);
		[Import("api-ms-win-core-psm-appnotify-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 RegisterAppConstrainedChangeNotification(PAPPCONSTRAIN_CHANGE_ROUTINE Routine, void* Context, _APPCONSTRAIN_REGISTRATION** Registration);
		[Import("api-ms-win-core-psm-appnotify-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void UnregisterAppConstrainedChangeNotification(_APPCONSTRAIN_REGISTRATION* Registration);
		
	}
}
