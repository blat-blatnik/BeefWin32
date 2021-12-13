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
			SHGFI_ADDOVERLAYS = 32,
			SHGFI_ATTR_SPECIFIED = 131072,
			SHGFI_ATTRIBUTES = 2048,
			SHGFI_DISPLAYNAME = 512,
			SHGFI_EXETYPE = 8192,
			SHGFI_ICON = 256,
			SHGFI_ICONLOCATION = 4096,
			SHGFI_LARGEICON = 0,
			SHGFI_LINKOVERLAY = 32768,
			SHGFI_OPENICON = 2,
			SHGFI_OVERLAYINDEX = 64,
			SHGFI_PIDL = 8,
			SHGFI_SELECTED = 65536,
			SHGFI_SHELLICONSIZE = 4,
			SHGFI_SMALLICON = 1,
			SHGFI_SYSICONINDEX = 16384,
			SHGFI_TYPENAME = 1024,
			SHGFI_USEFILEATTRIBUTES = 16,
		}
		[AllowDuplicates]
		public enum SHCNE_ID : uint32
		{
			SHCNE_RENAMEITEM = 1,
			SHCNE_CREATE = 2,
			SHCNE_DELETE = 4,
			SHCNE_MKDIR = 8,
			SHCNE_RMDIR = 16,
			SHCNE_MEDIAINSERTED = 32,
			SHCNE_MEDIAREMOVED = 64,
			SHCNE_DRIVEREMOVED = 128,
			SHCNE_DRIVEADD = 256,
			SHCNE_NETSHARE = 512,
			SHCNE_NETUNSHARE = 1024,
			SHCNE_ATTRIBUTES = 2048,
			SHCNE_UPDATEDIR = 4096,
			SHCNE_UPDATEITEM = 8192,
			SHCNE_SERVERDISCONNECT = 16384,
			SHCNE_UPDATEIMAGE = 32768,
			SHCNE_DRIVEADDGUI = 65536,
			SHCNE_RENAMEFOLDER = 131072,
			SHCNE_FREESPACE = 262144,
			SHCNE_EXTENDED_EVENT = 67108864,
			SHCNE_ASSOCCHANGED = 134217728,
			SHCNE_DISKEVENTS = 145439,
			SHCNE_GLOBALEVENTS = 201687520,
			SHCNE_ALLEVENTS = 2147483647,
			SHCNE_INTERRUPT = 2147483648,
		}
		[AllowDuplicates]
		public enum SHCNRF_SOURCE : int32
		{
			SHCNRF_InterruptLevel = 1,
			SHCNRF_ShellLevel = 2,
			SHCNRF_RecursiveInterrupt = 4096,
			SHCNRF_NewDelivery = 32768,
		}
		[AllowDuplicates]
		public enum SHCNF_FLAGS : uint32
		{
			SHCNF_IDLIST = 0,
			SHCNF_PATHA = 1,
			SHCNF_PRINTERA = 2,
			SHCNF_DWORD = 3,
			SHCNF_PATHW = 5,
			SHCNF_PRINTERW = 6,
			SHCNF_TYPE = 255,
			SHCNF_FLUSH = 4096,
			SHCNF_FLUSHNOWAIT = 12288,
			SHCNF_NOTIFYRECURSIVE = 65536,
			SHCNF_PATH = 5,
			SHCNF_PRINTER = 6,
		}
		[AllowDuplicates]
		public enum QITIPF_FLAGS : int32
		{
			QITIPF_DEFAULT = 0,
			QITIPF_USENAME = 1,
			QITIPF_LINKNOTARGET = 2,
			QITIPF_LINKUSETARGET = 4,
			QITIPF_USESLOWTIP = 8,
			QITIPF_SINGLELINE = 16,
			QIF_CACHED = 1,
			QIF_DONTEXPANDFOLDER = 2,
		}
		[AllowDuplicates]
		public enum SHDID_ID : int32
		{
			SHDID_ROOT_REGITEM = 1,
			SHDID_FS_FILE = 2,
			SHDID_FS_DIRECTORY = 3,
			SHDID_FS_OTHER = 4,
			SHDID_COMPUTER_DRIVE35 = 5,
			SHDID_COMPUTER_DRIVE525 = 6,
			SHDID_COMPUTER_REMOVABLE = 7,
			SHDID_COMPUTER_FIXED = 8,
			SHDID_COMPUTER_NETDRIVE = 9,
			SHDID_COMPUTER_CDROM = 10,
			SHDID_COMPUTER_RAMDISK = 11,
			SHDID_COMPUTER_OTHER = 12,
			SHDID_NET_DOMAIN = 13,
			SHDID_NET_SERVER = 14,
			SHDID_NET_SHARE = 15,
			SHDID_NET_RESTOFNET = 16,
			SHDID_NET_OTHER = 17,
			SHDID_COMPUTER_IMAGING = 18,
			SHDID_COMPUTER_AUDIO = 19,
			SHDID_COMPUTER_SHAREDDOCS = 20,
			SHDID_MOBILE_DEVICE = 21,
			SHDID_REMOTE_DESKTOP_DRIVE = 22,
		}
		[AllowDuplicates]
		public enum SHGDFIL_FORMAT : int32
		{
			SHGDFIL_FINDDATA = 1,
			SHGDFIL_NETRESOURCE = 2,
			SHGDFIL_DESCRIPTIONID = 3,
		}
		[AllowDuplicates]
		public enum PRF_FLAGS : int32
		{
			PRF_VERIFYEXISTS = 1,
			PRF_TRYPROGRAMEXTENSIONS = 3,
			PRF_FIRSTDIRDEF = 4,
			PRF_DONTFINDLNK = 8,
			PRF_REQUIREABSOLUTE = 16,
		}
		[AllowDuplicates]
		public enum PCS_RET : uint32
		{
			PCS_FATAL = 2147483648,
			PCS_REPLACEDCHAR = 1,
			PCS_REMOVEDCHAR = 2,
			PCS_TRUNCATED = 4,
			PCS_PATHTOOLONG = 8,
		}
		[AllowDuplicates]
		public enum MM_FLAGS : uint32
		{
			MM_ADDSEPARATOR = 1,
			MM_SUBMENUSHAVEIDS = 2,
			MM_DONTREMOVESEPS = 4,
		}
		[AllowDuplicates]
		public enum SHOP_TYPE : int32
		{
			SHOP_PRINTERNAME = 1,
			SHOP_FILEPATH = 2,
			SHOP_VOLUMEGUID = 4,
		}
		[AllowDuplicates]
		public enum SHFMT_ID : uint32
		{
			SHFMT_ID_DEFAULT = 65535,
		}
		[AllowDuplicates]
		public enum SHFMT_OPT : int32
		{
			SHFMT_OPT_NONE = 0,
			SHFMT_OPT_FULL = 1,
			SHFMT_OPT_SYSONLY = 2,
		}
		[AllowDuplicates]
		public enum SHFMT_RET : uint32
		{
			SHFMT_ERROR = 4294967295,
			SHFMT_CANCEL = 4294967294,
			SHFMT_NOFORMAT = 4294967293,
		}
		[AllowDuplicates]
		public enum VALIDATEUNC_OPTION : int32
		{
			VALIDATEUNC_CONNECT = 1,
			VALIDATEUNC_NOUI = 2,
			VALIDATEUNC_PRINT = 4,
			VALIDATEUNC_PERSIST = 8,
			VALIDATEUNC_VALID = 15,
		}
		[AllowDuplicates]
		public enum SFVM_MESSAGE_ID : int32
		{
			SFVM_MERGEMENU = 1,
			SFVM_INVOKECOMMAND = 2,
			SFVM_GETHELPTEXT = 3,
			SFVM_GETTOOLTIPTEXT = 4,
			SFVM_GETBUTTONINFO = 5,
			SFVM_GETBUTTONS = 6,
			SFVM_INITMENUPOPUP = 7,
			SFVM_FSNOTIFY = 14,
			SFVM_WINDOWCREATED = 15,
			SFVM_GETDETAILSOF = 23,
			SFVM_COLUMNCLICK = 24,
			SFVM_QUERYFSNOTIFY = 25,
			SFVM_DEFITEMCOUNT = 26,
			SFVM_DEFVIEWMODE = 27,
			SFVM_UNMERGEMENU = 28,
			SFVM_UPDATESTATUSBAR = 31,
			SFVM_BACKGROUNDENUM = 32,
			SFVM_DIDDRAGDROP = 36,
			SFVM_SETISFV = 39,
			SFVM_THISIDLIST = 41,
			SFVM_ADDPROPERTYPAGES = 47,
			SFVM_BACKGROUNDENUMDONE = 48,
			SFVM_GETNOTIFY = 49,
			SFVM_GETSORTDEFAULTS = 53,
			SFVM_SIZE = 57,
			SFVM_GETZONE = 58,
			SFVM_GETPANE = 59,
			SFVM_GETHELPTOPIC = 63,
			SFVM_GETANIMATION = 68,
		}
		[AllowDuplicates]
		public enum SFVS_SELECT : int32
		{
			SFVS_SELECT_NONE = 0,
			SFVS_SELECT_ALLITEMS = 1,
			SFVS_SELECT_INVERT = 2,
		}
		[AllowDuplicates]
		public enum DFM_MESSAGE_ID : int32
		{
			DFM_MERGECONTEXTMENU = 1,
			DFM_INVOKECOMMAND = 2,
			DFM_GETHELPTEXT = 5,
			DFM_WM_MEASUREITEM = 6,
			DFM_WM_DRAWITEM = 7,
			DFM_WM_INITMENUPOPUP = 8,
			DFM_VALIDATECMD = 9,
			DFM_MERGECONTEXTMENU_TOP = 10,
			DFM_GETHELPTEXTW = 11,
			DFM_INVOKECOMMANDEX = 12,
			DFM_MAPCOMMANDNAME = 13,
			DFM_GETDEFSTATICID = 14,
			DFM_GETVERBW = 15,
			DFM_GETVERBA = 16,
			DFM_MERGECONTEXTMENU_BOTTOM = 17,
			DFM_MODIFYQCMFLAGS = 18,
		}
		[AllowDuplicates]
		public enum DFM_CMD : int32
		{
			DFM_CMD_DELETE = -1,
			DFM_CMD_MOVE = -2,
			DFM_CMD_COPY = -3,
			DFM_CMD_LINK = -4,
			DFM_CMD_PROPERTIES = -5,
			DFM_CMD_NEWFOLDER = -6,
			DFM_CMD_PASTE = -7,
			DFM_CMD_VIEWLIST = -8,
			DFM_CMD_VIEWDETAILS = -9,
			DFM_CMD_PASTELINK = -10,
			DFM_CMD_PASTESPECIAL = -11,
			DFM_CMD_MODALPROP = -12,
			DFM_CMD_RENAME = -13,
		}
		[AllowDuplicates]
		public enum PID_IS : int32
		{
			PID_IS_URL = 2,
			PID_IS_NAME = 4,
			PID_IS_WORKINGDIR = 5,
			PID_IS_HOTKEY = 6,
			PID_IS_SHOWCMD = 7,
			PID_IS_ICONINDEX = 8,
			PID_IS_ICONFILE = 9,
			PID_IS_WHATSNEW = 10,
			PID_IS_AUTHOR = 11,
			PID_IS_DESCRIPTION = 12,
			PID_IS_COMMENT = 13,
			PID_IS_ROAMED = 15,
		}
		[AllowDuplicates]
		public enum PID_INTSITE : int32
		{
			PID_INTSITE_WHATSNEW = 2,
			PID_INTSITE_AUTHOR = 3,
			PID_INTSITE_LASTVISIT = 4,
			PID_INTSITE_LASTMOD = 5,
			PID_INTSITE_VISITCOUNT = 6,
			PID_INTSITE_DESCRIPTION = 7,
			PID_INTSITE_COMMENT = 8,
			PID_INTSITE_FLAGS = 9,
			PID_INTSITE_CONTENTLEN = 10,
			PID_INTSITE_CONTENTCODE = 11,
			PID_INTSITE_RECURSE = 12,
			PID_INTSITE_WATCH = 13,
			PID_INTSITE_SUBSCRIPTION = 14,
			PID_INTSITE_URL = 15,
			PID_INTSITE_TITLE = 16,
			PID_INTSITE_CODEPAGE = 18,
			PID_INTSITE_TRACKING = 19,
			PID_INTSITE_ICONINDEX = 20,
			PID_INTSITE_ICONFILE = 21,
			PID_INTSITE_ROAMED = 34,
		}
		[AllowDuplicates]
		public enum PIDISF_FLAGS : int32
		{
			PIDISF_RECENTLYCHANGED = 1,
			PIDISF_CACHEDSTICKY = 2,
			PIDISF_CACHEIMAGES = 16,
			PIDISF_FOLLOWALLLINKS = 32,
		}
		[AllowDuplicates]
		public enum PIDISM_OPTIONS : int32
		{
			PIDISM_GLOBAL = 0,
			PIDISM_WATCH = 1,
			PIDISM_DONTWATCH = 2,
		}
		[AllowDuplicates]
		public enum PIDISR_INFO : int32
		{
			PIDISR_UP_TO_DATE = 0,
			PIDISR_NEEDS_ADD = 1,
			PIDISR_NEEDS_UPDATE = 2,
			PIDISR_NEEDS_DELETE = 3,
		}
		[AllowDuplicates]
		public enum SSF_MASK : uint32
		{
			SSF_SHOWALLOBJECTS = 1,
			SSF_SHOWEXTENSIONS = 2,
			SSF_HIDDENFILEEXTS = 4,
			SSF_SERVERADMINUI = 4,
			SSF_SHOWCOMPCOLOR = 8,
			SSF_SORTCOLUMNS = 16,
			SSF_SHOWSYSFILES = 32,
			SSF_DOUBLECLICKINWEBVIEW = 128,
			SSF_SHOWATTRIBCOL = 256,
			SSF_DESKTOPHTML = 512,
			SSF_WIN95CLASSIC = 1024,
			SSF_DONTPRETTYPATH = 2048,
			SSF_SHOWINFOTIP = 8192,
			SSF_MAPNETDRVBUTTON = 4096,
			SSF_NOCONFIRMRECYCLE = 32768,
			SSF_HIDEICONS = 16384,
			SSF_FILTER = 65536,
			SSF_WEBVIEW = 131072,
			SSF_SHOWSUPERHIDDEN = 262144,
			SSF_SEPPROCESS = 524288,
			SSF_NONETCRAWLING = 1048576,
			SSF_STARTPANELON = 2097152,
			SSF_SHOWSTARTPAGE = 4194304,
			SSF_AUTOCHECKSELECT = 8388608,
			SSF_ICONSONLY = 16777216,
			SSF_SHOWTYPEOVERLAY = 33554432,
			SSF_SHOWSTATUSBAR = 67108864,
		}
		[AllowDuplicates]
		public enum NOTIFY_ICON_MESSAGE : uint32
		{
			NIM_ADD = 0,
			NIM_MODIFY = 1,
			NIM_DELETE = 2,
			NIM_SETFOCUS = 3,
			NIM_SETVERSION = 4,
		}
		[AllowDuplicates]
		public enum NOTIFY_ICON_DATA_FLAGS : uint32
		{
			NIF_MESSAGE = 1,
			NIF_ICON = 2,
			NIF_TIP = 4,
			NIF_STATE = 8,
			NIF_INFO = 16,
			NIF_GUID = 32,
			NIF_REALTIME = 64,
			NIF_SHOWTIP = 128,
		}
		[AllowDuplicates]
		public enum OS : uint32
		{
			OS_WINDOWS = 0,
			OS_NT = 1,
			OS_WIN95ORGREATER = 2,
			OS_NT4ORGREATER = 3,
			OS_WIN98ORGREATER = 5,
			OS_WIN98_GOLD = 6,
			OS_WIN2000ORGREATER = 7,
			OS_WIN2000PRO = 8,
			OS_WIN2000SERVER = 9,
			OS_WIN2000ADVSERVER = 10,
			OS_WIN2000DATACENTER = 11,
			OS_WIN2000TERMINAL = 12,
			OS_EMBEDDED = 13,
			OS_TERMINALCLIENT = 14,
			OS_TERMINALREMOTEADMIN = 15,
			OS_WIN95_GOLD = 16,
			OS_MEORGREATER = 17,
			OS_XPORGREATER = 18,
			OS_HOME = 19,
			OS_PROFESSIONAL = 20,
			OS_DATACENTER = 21,
			OS_ADVSERVER = 22,
			OS_SERVER = 23,
			OS_TERMINALSERVER = 24,
			OS_PERSONALTERMINALSERVER = 25,
			OS_FASTUSERSWITCHING = 26,
			OS_WELCOMELOGONUI = 27,
			OS_DOMAINMEMBER = 28,
			OS_ANYSERVER = 29,
			OS_WOW6432 = 30,
			OS_WEBSERVER = 31,
			OS_SMALLBUSINESSSERVER = 32,
			OS_TABLETPC = 33,
			OS_SERVERADMINUI = 34,
			OS_MEDIACENTER = 35,
			OS_APPLIANCE = 36,
		}
		[AllowDuplicates]
		public enum _SHGDNF : int32
		{
			SHGDN_NORMAL = 0,
			SHGDN_INFOLDER = 1,
			SHGDN_FOREDITING = 4096,
			SHGDN_FORADDRESSBAR = 16384,
			SHGDN_FORPARSING = 32768,
		}
		[AllowDuplicates]
		public enum _SHCONTF : int32
		{
			SHCONTF_CHECKING_FOR_CHILDREN = 16,
			SHCONTF_FOLDERS = 32,
			SHCONTF_NONFOLDERS = 64,
			SHCONTF_INCLUDEHIDDEN = 128,
			SHCONTF_INIT_ON_FIRST_NEXT = 256,
			SHCONTF_NETPRINTERSRCH = 512,
			SHCONTF_SHAREABLE = 1024,
			SHCONTF_STORAGE = 2048,
			SHCONTF_NAVIGATION_ENUM = 4096,
			SHCONTF_FASTITEMS = 8192,
			SHCONTF_FLATLIST = 16384,
			SHCONTF_ENABLE_ASYNC = 32768,
			SHCONTF_INCLUDESUPERHIDDEN = 65536,
		}
		[AllowDuplicates]
		public enum STORAGE_PROVIDER_FILE_FLAGS : int32
		{
			SPFF_NONE = 0,
			SPFF_DOWNLOAD_BY_DEFAULT = 1,
			SPFF_CREATED_ON_THIS_DEVICE = 2,
		}
		[AllowDuplicates]
		public enum MERGE_UPDATE_STATUS : int32
		{
			MUS_COMPLETE = 0,
			MUS_USERINPUTNEEDED = 1,
			MUS_FAILED = 2,
		}
		[AllowDuplicates]
		public enum FOLDER_ENUM_MODE : int32
		{
			FEM_VIEWRESULT = 0,
			FEM_NAVIGATION = 1,
		}
		[AllowDuplicates]
		public enum FOLDERFLAGS : int32
		{
			FWF_NONE = 0,
			FWF_AUTOARRANGE = 1,
			FWF_ABBREVIATEDNAMES = 2,
			FWF_SNAPTOGRID = 4,
			FWF_OWNERDATA = 8,
			FWF_BESTFITWINDOW = 16,
			FWF_DESKTOP = 32,
			FWF_SINGLESEL = 64,
			FWF_NOSUBFOLDERS = 128,
			FWF_TRANSPARENT = 256,
			FWF_NOCLIENTEDGE = 512,
			FWF_NOSCROLL = 1024,
			FWF_ALIGNLEFT = 2048,
			FWF_NOICONS = 4096,
			FWF_SHOWSELALWAYS = 8192,
			FWF_NOVISIBLE = 16384,
			FWF_SINGLECLICKACTIVATE = 32768,
			FWF_NOWEBVIEW = 65536,
			FWF_HIDEFILENAMES = 131072,
			FWF_CHECKSELECT = 262144,
			FWF_NOENUMREFRESH = 524288,
			FWF_NOGROUPING = 1048576,
			FWF_FULLROWSELECT = 2097152,
			FWF_NOFILTERS = 4194304,
			FWF_NOCOLUMNHEADER = 8388608,
			FWF_NOHEADERINALLVIEWS = 16777216,
			FWF_EXTENDEDTILES = 33554432,
			FWF_TRICHECKSELECT = 67108864,
			FWF_AUTOCHECKSELECT = 134217728,
			FWF_NOBROWSERVIEWSTATE = 268435456,
			FWF_SUBSETGROUPS = 536870912,
			FWF_USESEARCHFOLDER = 1073741824,
			FWF_ALLOWRTLREADING = -2147483648,
		}
		[AllowDuplicates]
		public enum FOLDERVIEWMODE : int32
		{
			FVM_AUTO = -1,
			FVM_FIRST = 1,
			FVM_ICON = 1,
			FVM_SMALLICON = 2,
			FVM_LIST = 3,
			FVM_DETAILS = 4,
			FVM_THUMBNAIL = 5,
			FVM_TILE = 6,
			FVM_THUMBSTRIP = 7,
			FVM_CONTENT = 8,
			FVM_LAST = 8,
		}
		[AllowDuplicates]
		public enum FOLDERLOGICALVIEWMODE : int32
		{
			FLVM_UNSPECIFIED = -1,
			FLVM_FIRST = 1,
			FLVM_DETAILS = 1,
			FLVM_TILES = 2,
			FLVM_ICONS = 3,
			FLVM_LIST = 4,
			FLVM_CONTENT = 5,
			FLVM_LAST = 5,
		}
		[AllowDuplicates]
		public enum _SVSIF : int32
		{
			SVSI_DESELECT = 0,
			SVSI_SELECT = 1,
			SVSI_EDIT = 3,
			SVSI_DESELECTOTHERS = 4,
			SVSI_ENSUREVISIBLE = 8,
			SVSI_FOCUSED = 16,
			SVSI_TRANSLATEPT = 32,
			SVSI_SELECTIONMARK = 64,
			SVSI_POSITIONITEM = 128,
			SVSI_CHECK = 256,
			SVSI_CHECK2 = 512,
			SVSI_KEYBOARDSELECT = 1025,
			SVSI_NOTAKEFOCUS = 1073741824,
		}
		[AllowDuplicates]
		public enum _SVGIO : int32
		{
			SVGIO_BACKGROUND = 0,
			SVGIO_SELECTION = 1,
			SVGIO_ALLVIEW = 2,
			SVGIO_CHECKED = 3,
			SVGIO_TYPE_MASK = 15,
			SVGIO_FLAG_VIEWORDER = -2147483648,
		}
		[AllowDuplicates]
		public enum SVUIA_STATUS : int32
		{
			SVUIA_DEACTIVATE = 0,
			SVUIA_ACTIVATE_NOFOCUS = 1,
			SVUIA_ACTIVATE_FOCUS = 2,
			SVUIA_INPLACEACTIVATE = 3,
		}
		[AllowDuplicates]
		public enum SORTDIRECTION : int32
		{
			SORT_DESCENDING = -1,
			SORT_ASCENDING = 1,
		}
		[AllowDuplicates]
		public enum FVTEXTTYPE : int32
		{
			FVST_EMPTYTEXT = 0,
		}
		[AllowDuplicates]
		public enum CM_MASK : int32
		{
			CM_MASK_WIDTH = 1,
			CM_MASK_DEFAULTWIDTH = 2,
			CM_MASK_IDEALWIDTH = 4,
			CM_MASK_NAME = 8,
			CM_MASK_STATE = 16,
		}
		[AllowDuplicates]
		public enum CM_STATE : int32
		{
			CM_STATE_NONE = 0,
			CM_STATE_VISIBLE = 1,
			CM_STATE_FIXEDWIDTH = 2,
			CM_STATE_NOSORTBYFOLDERNESS = 4,
			CM_STATE_ALWAYSVISIBLE = 8,
		}
		[AllowDuplicates]
		public enum CM_ENUM_FLAGS : int32
		{
			CM_ENUM_ALL = 1,
			CM_ENUM_VISIBLE = 2,
		}
		[AllowDuplicates]
		public enum CM_SET_WIDTH_VALUE : int32
		{
			CM_WIDTH_USEDEFAULT = -1,
			CM_WIDTH_AUTOSIZE = -2,
		}
		[AllowDuplicates]
		public enum SIGDN : int32
		{
			SIGDN_NORMALDISPLAY = 0,
			SIGDN_PARENTRELATIVEPARSING = -2147385343,
			SIGDN_DESKTOPABSOLUTEPARSING = -2147319808,
			SIGDN_PARENTRELATIVEEDITING = -2147282943,
			SIGDN_DESKTOPABSOLUTEEDITING = -2147172352,
			SIGDN_FILESYSPATH = -2147123200,
			SIGDN_URL = -2147057664,
			SIGDN_PARENTRELATIVEFORADDRESSBAR = -2146975743,
			SIGDN_PARENTRELATIVE = -2146959359,
			SIGDN_PARENTRELATIVEFORUI = -2146877439,
		}
		[AllowDuplicates]
		public enum _SICHINTF : int32
		{
			SICHINT_DISPLAY = 0,
			SICHINT_ALLFIELDS = -2147483648,
			SICHINT_CANONICAL = 268435456,
			SICHINT_TEST_FILESYSPATH_IF_NOT_EQUAL = 536870912,
		}
		[AllowDuplicates]
		public enum DATAOBJ_GET_ITEM_FLAGS : int32
		{
			DOGIF_DEFAULT = 0,
			DOGIF_TRAVERSE_LINK = 1,
			DOGIF_NO_HDROP = 2,
			DOGIF_NO_URL = 4,
			DOGIF_ONLY_IF_ONE = 8,
		}
		[AllowDuplicates]
		public enum SIIGBF : int32
		{
			SIIGBF_RESIZETOFIT = 0,
			SIIGBF_BIGGERSIZEOK = 1,
			SIIGBF_MEMORYONLY = 2,
			SIIGBF_ICONONLY = 4,
			SIIGBF_THUMBNAILONLY = 8,
			SIIGBF_INCACHEONLY = 16,
			SIIGBF_CROPTOSQUARE = 32,
			SIIGBF_WIDETHUMBNAILS = 64,
			SIIGBF_ICONBACKGROUND = 128,
			SIIGBF_SCALEUP = 256,
		}
		[AllowDuplicates]
		public enum STGOP : int32
		{
			STGOP_MOVE = 1,
			STGOP_COPY = 2,
			STGOP_SYNC = 3,
			STGOP_REMOVE = 5,
			STGOP_RENAME = 6,
			STGOP_APPLYPROPERTIES = 8,
			STGOP_NEW = 10,
		}
		[AllowDuplicates]
		public enum _TRANSFER_SOURCE_FLAGS : int32
		{
			TSF_NORMAL = 0,
			TSF_FAIL_EXIST = 0,
			TSF_RENAME_EXIST = 1,
			TSF_OVERWRITE_EXIST = 2,
			TSF_ALLOW_DECRYPTION = 4,
			TSF_NO_SECURITY = 8,
			TSF_COPY_CREATION_TIME = 16,
			TSF_COPY_WRITE_TIME = 32,
			TSF_USE_FULL_ACCESS = 64,
			TSF_DELETE_RECYCLE_IF_POSSIBLE = 128,
			TSF_COPY_HARD_LINK = 256,
			TSF_COPY_LOCALIZED_NAME = 512,
			TSF_MOVE_AS_COPY_DELETE = 1024,
			TSF_SUSPEND_SHELLEVENTS = 2048,
		}
		[AllowDuplicates]
		public enum _TRANSFER_ADVISE_STATE : int32
		{
			TS_NONE = 0,
			TS_PERFORMING = 1,
			TS_PREPARING = 2,
			TS_INDETERMINATE = 4,
		}
		[AllowDuplicates]
		public enum SIATTRIBFLAGS : int32
		{
			SIATTRIBFLAGS_AND = 1,
			SIATTRIBFLAGS_OR = 2,
			SIATTRIBFLAGS_APPCOMPAT = 3,
			SIATTRIBFLAGS_MASK = 3,
			SIATTRIBFLAGS_ALLITEMS = 16384,
		}
		[AllowDuplicates]
		public enum CATEGORYINFO_FLAGS : int32
		{
			CATINFO_NORMAL = 0,
			CATINFO_COLLAPSED = 1,
			CATINFO_HIDDEN = 2,
			CATINFO_EXPANDED = 4,
			CATINFO_NOHEADER = 8,
			CATINFO_NOTCOLLAPSIBLE = 16,
			CATINFO_NOHEADERCOUNT = 32,
			CATINFO_SUBSETTED = 64,
			CATINFO_SEPARATE_IMAGES = 128,
			CATINFO_SHOWEMPTY = 256,
		}
		[AllowDuplicates]
		public enum CATSORT_FLAGS : int32
		{
			CATSORT_DEFAULT = 0,
			CATSORT_NAME = 1,
		}
		[AllowDuplicates]
		public enum SLR_FLAGS : int32
		{
			SLR_NONE = 0,
			SLR_NO_UI = 1,
			SLR_ANY_MATCH = 2,
			SLR_UPDATE = 4,
			SLR_NOUPDATE = 8,
			SLR_NOSEARCH = 16,
			SLR_NOTRACK = 32,
			SLR_NOLINKINFO = 64,
			SLR_INVOKE_MSI = 128,
			SLR_NO_UI_WITH_MSG_PUMP = 257,
			SLR_OFFER_DELETE_WITHOUT_FILE = 512,
			SLR_KNOWNFOLDER = 1024,
			SLR_MACHINE_IN_LOCAL_TARGET = 2048,
			SLR_UPDATE_MACHINE_AND_SID = 4096,
			SLR_NO_OBJECT_ID = 8192,
		}
		[AllowDuplicates]
		public enum SLGP_FLAGS : int32
		{
			SLGP_SHORTPATH = 1,
			SLGP_UNCPRIORITY = 2,
			SLGP_RAWPATH = 4,
			SLGP_RELATIVEPRIORITY = 8,
		}
		[AllowDuplicates]
		public enum _SPINITF : int32
		{
			SPINITF_NORMAL = 0,
			SPINITF_MODAL = 1,
			SPINITF_NOMINIMIZE = 8,
		}
		[AllowDuplicates]
		public enum _SPBEGINF : int32
		{
			SPBEGINF_NORMAL = 0,
			SPBEGINF_AUTOTIME = 2,
			SPBEGINF_NOPROGRESSBAR = 16,
			SPBEGINF_MARQUEEPROGRESS = 32,
			SPBEGINF_NOCANCELBUTTON = 64,
		}
		[AllowDuplicates]
		public enum SPACTION : int32
		{
			SPACTION_NONE = 0,
			SPACTION_MOVING = 1,
			SPACTION_COPYING = 2,
			SPACTION_RECYCLING = 3,
			SPACTION_APPLYINGATTRIBS = 4,
			SPACTION_DOWNLOADING = 5,
			SPACTION_SEARCHING_INTERNET = 6,
			SPACTION_CALCULATING = 7,
			SPACTION_UPLOADING = 8,
			SPACTION_SEARCHING_FILES = 9,
			SPACTION_DELETING = 10,
			SPACTION_RENAMING = 11,
			SPACTION_FORMATTING = 12,
			SPACTION_COPY_MOVING = 13,
		}
		[AllowDuplicates]
		public enum SPTEXT : int32
		{
			SPTEXT_ACTIONDESCRIPTION = 1,
			SPTEXT_ACTIONDETAIL = 2,
		}
		[AllowDuplicates]
		public enum _EXPPS : int32
		{
			EXPPS_FILETYPES = 1,
		}
		[AllowDuplicates]
		public enum DESKBANDCID : int32
		{
			DBID_BANDINFOCHANGED = 0,
			DBID_SHOWONLY = 1,
			DBID_MAXIMIZEBAND = 2,
			DBID_PUSHCHEVRON = 3,
			DBID_DELAYINIT = 4,
			DBID_FINISHINIT = 5,
			DBID_SETWINDOWTHEME = 6,
			DBID_PERMITAUTOHIDE = 7,
		}
		[AllowDuplicates]
		public enum THUMBBUTTONFLAGS : int32
		{
			THBF_ENABLED = 0,
			THBF_DISABLED = 1,
			THBF_DISMISSONCLICK = 2,
			THBF_NOBACKGROUND = 4,
			THBF_HIDDEN = 8,
			THBF_NONINTERACTIVE = 16,
		}
		[AllowDuplicates]
		public enum THUMBBUTTONMASK : int32
		{
			THB_BITMAP = 1,
			THB_ICON = 2,
			THB_TOOLTIP = 4,
			THB_FLAGS = 8,
		}
		[AllowDuplicates]
		public enum TBPFLAG : int32
		{
			TBPF_NOPROGRESS = 0,
			TBPF_INDETERMINATE = 1,
			TBPF_NORMAL = 2,
			TBPF_ERROR = 4,
			TBPF_PAUSED = 8,
		}
		[AllowDuplicates]
		public enum STPFLAG : int32
		{
			STPF_NONE = 0,
			STPF_USEAPPTHUMBNAILALWAYS = 1,
			STPF_USEAPPTHUMBNAILWHENACTIVE = 2,
			STPF_USEAPPPEEKALWAYS = 4,
			STPF_USEAPPPEEKWHENACTIVE = 8,
		}
		[AllowDuplicates]
		public enum EXPLORER_BROWSER_OPTIONS : int32
		{
			EBO_NONE = 0,
			EBO_NAVIGATEONCE = 1,
			EBO_SHOWFRAMES = 2,
			EBO_ALWAYSNAVIGATE = 4,
			EBO_NOTRAVELLOG = 8,
			EBO_NOWRAPPERWINDOW = 16,
			EBO_HTMLSHAREPOINTVIEW = 32,
			EBO_NOBORDER = 64,
			EBO_NOPERSISTVIEWSTATE = 128,
		}
		[AllowDuplicates]
		public enum EXPLORER_BROWSER_FILL_FLAGS : int32
		{
			EBF_NONE = 0,
			EBF_SELECTFROMDATAOBJECT = 256,
			EBF_NODROPTARGET = 512,
		}
		[AllowDuplicates]
		public enum _OPPROGDLGF : int32
		{
			OPPROGDLG_DEFAULT = 0,
			OPPROGDLG_ENABLEPAUSE = 128,
			OPPROGDLG_ALLOWUNDO = 256,
			OPPROGDLG_DONTDISPLAYSOURCEPATH = 512,
			OPPROGDLG_DONTDISPLAYDESTPATH = 1024,
			OPPROGDLG_NOMULTIDAYESTIMATES = 2048,
			OPPROGDLG_DONTDISPLAYLOCATIONS = 4096,
		}
		[AllowDuplicates]
		public enum _PDMODE : int32
		{
			PDM_DEFAULT = 0,
			PDM_RUN = 1,
			PDM_PREFLIGHT = 2,
			PDM_UNDOING = 4,
			PDM_ERRORSBLOCKING = 8,
			PDM_INDETERMINATE = 16,
		}
		[AllowDuplicates]
		public enum FILE_OPERATION_FLAGS2 : int32
		{
			FOF2_NONE = 0,
			FOF2_MERGEFOLDERSONCOLLISION = 1,
		}
		[AllowDuplicates]
		public enum NAMESPACEWALKFLAG : int32
		{
			NSWF_DEFAULT = 0,
			NSWF_NONE_IMPLIES_ALL = 1,
			NSWF_ONE_IMPLIES_ALL = 2,
			NSWF_DONT_TRAVERSE_LINKS = 4,
			NSWF_DONT_ACCUMULATE_RESULT = 8,
			NSWF_TRAVERSE_STREAM_JUNCTIONS = 16,
			NSWF_FILESYSTEM_ONLY = 32,
			NSWF_SHOW_PROGRESS = 64,
			NSWF_FLAG_VIEWORDER = 128,
			NSWF_IGNORE_AUTOPLAY_HIDA = 256,
			NSWF_ASYNC = 512,
			NSWF_DONT_RESOLVE_LINKS = 1024,
			NSWF_ACCUMULATE_FOLDERS = 2048,
			NSWF_DONT_SORT = 4096,
			NSWF_USE_TRANSFER_MEDIUM = 8192,
			NSWF_DONT_TRAVERSE_STREAM_JUNCTIONS = 16384,
			NSWF_ANY_IMPLIES_ALL = 32768,
		}
		[AllowDuplicates]
		public enum BANDSITECID : int32
		{
			BSID_BANDADDED = 0,
			BSID_BANDREMOVED = 1,
		}
		[AllowDuplicates]
		public enum MENUBANDHANDLERCID : int32
		{
			MBHANDCID_PIDLSELECT = 0,
		}
		[AllowDuplicates]
		public enum MENUPOPUPSELECT : int32
		{
			MPOS_EXECUTE = 0,
			MPOS_FULLCANCEL = 1,
			MPOS_CANCELLEVEL = 2,
			MPOS_SELECTLEFT = 3,
			MPOS_SELECTRIGHT = 4,
			MPOS_CHILDTRACKING = 5,
		}
		[AllowDuplicates]
		public enum MENUPOPUPPOPUPFLAGS : int32
		{
			MPPF_SETFOCUS = 1,
			MPPF_INITIALSELECT = 2,
			MPPF_NOANIMATE = 4,
			MPPF_KEYBOARD = 16,
			MPPF_REPOSITION = 32,
			MPPF_FORCEZORDER = 64,
			MPPF_FINALSELECT = 128,
			MPPF_TOP = 536870912,
			MPPF_LEFT = 1073741824,
			MPPF_RIGHT = 1610612736,
			MPPF_BOTTOM = -2147483648,
			MPPF_POS_MASK = -536870912,
			MPPF_ALIGN_LEFT = 33554432,
			MPPF_ALIGN_RIGHT = 67108864,
		}
		[AllowDuplicates]
		public enum FILE_USAGE_TYPE : int32
		{
			FUT_PLAYING = 0,
			FUT_EDITING = 1,
			FUT_GENERIC = 2,
		}
		[AllowDuplicates]
		public enum FDE_OVERWRITE_RESPONSE : int32
		{
			FDEOR_DEFAULT = 0,
			FDEOR_ACCEPT = 1,
			FDEOR_REFUSE = 2,
		}
		[AllowDuplicates]
		public enum FDE_SHAREVIOLATION_RESPONSE : int32
		{
			FDESVR_DEFAULT = 0,
			FDESVR_ACCEPT = 1,
			FDESVR_REFUSE = 2,
		}
		[AllowDuplicates]
		public enum FDAP : int32
		{
			FDAP_BOTTOM = 0,
			FDAP_TOP = 1,
		}
		[AllowDuplicates]
		public enum _FILEOPENDIALOGOPTIONS : int32
		{
			FOS_OVERWRITEPROMPT = 2,
			FOS_STRICTFILETYPES = 4,
			FOS_NOCHANGEDIR = 8,
			FOS_PICKFOLDERS = 32,
			FOS_FORCEFILESYSTEM = 64,
			FOS_ALLNONSTORAGEITEMS = 128,
			FOS_NOVALIDATE = 256,
			FOS_ALLOWMULTISELECT = 512,
			FOS_PATHMUSTEXIST = 2048,
			FOS_FILEMUSTEXIST = 4096,
			FOS_CREATEPROMPT = 8192,
			FOS_SHAREAWARE = 16384,
			FOS_NOREADONLYRETURN = 32768,
			FOS_NOTESTFILECREATE = 65536,
			FOS_HIDEMRUPLACES = 131072,
			FOS_HIDEPINNEDPLACES = 262144,
			FOS_NODEREFERENCELINKS = 1048576,
			FOS_OKBUTTONNEEDSINTERACTION = 2097152,
			FOS_DONTADDTORECENT = 33554432,
			FOS_FORCESHOWHIDDEN = 268435456,
			FOS_DEFAULTNOMINIMODE = 536870912,
			FOS_FORCEPREVIEWPANEON = 1073741824,
			FOS_SUPPORTSTREAMABLEITEMS = -2147483648,
		}
		[AllowDuplicates]
		public enum CDCONTROLSTATEF : int32
		{
			CDCS_INACTIVE = 0,
			CDCS_ENABLED = 1,
			CDCS_VISIBLE = 2,
			CDCS_ENABLEDVISIBLE = 3,
		}
		[AllowDuplicates]
		public enum ASSOCIATIONLEVEL : int32
		{
			AL_MACHINE = 0,
			AL_EFFECTIVE = 1,
			AL_USER = 2,
		}
		[AllowDuplicates]
		public enum ASSOCIATIONTYPE : int32
		{
			AT_FILEEXTENSION = 0,
			AT_URLPROTOCOL = 1,
			AT_STARTMENUCLIENT = 2,
			AT_MIMETYPE = 3,
		}
		[AllowDuplicates]
		public enum _BROWSERFRAMEOPTIONS : int32
		{
			BFO_NONE = 0,
			BFO_BROWSER_PERSIST_SETTINGS = 1,
			BFO_RENAME_FOLDER_OPTIONS_TOINTERNET = 2,
			BFO_BOTH_OPTIONS = 4,
			BIF_PREFER_INTERNET_SHORTCUT = 8,
			BFO_BROWSE_NO_IN_NEW_PROCESS = 16,
			BFO_ENABLE_HYPERLINK_TRACKING = 32,
			BFO_USE_IE_OFFLINE_SUPPORT = 64,
			BFO_SUBSTITUE_INTERNET_START_PAGE = 128,
			BFO_USE_IE_LOGOBANDING = 256,
			BFO_ADD_IE_TOCAPTIONBAR = 512,
			BFO_USE_DIALUP_REF = 1024,
			BFO_USE_IE_TOOLBAR = 2048,
			BFO_NO_PARENT_FOLDER_SUPPORT = 4096,
			BFO_NO_REOPEN_NEXT_RESTART = 8192,
			BFO_GO_HOME_PAGE = 16384,
			BFO_PREFER_IEPROCESS = 32768,
			BFO_SHOW_NAVIGATION_CANCELLED = 65536,
			BFO_USE_IE_STATUSBAR = 131072,
			BFO_QUERY_ALL = -1,
		}
		[AllowDuplicates]
		public enum NWMF : int32
		{
			NWMF_UNLOADING = 1,
			NWMF_USERINITED = 2,
			NWMF_FIRST = 4,
			NWMF_OVERRIDEKEY = 8,
			NWMF_SHOWHELP = 16,
			NWMF_HTMLDIALOG = 32,
			NWMF_FROMDIALOGCHILD = 64,
			NWMF_USERREQUESTED = 128,
			NWMF_USERALLOWED = 256,
			NWMF_FORCEWINDOW = 65536,
			NWMF_FORCETAB = 131072,
			NWMF_SUGGESTWINDOW = 262144,
			NWMF_SUGGESTTAB = 524288,
			NWMF_INACTIVETAB = 1048576,
		}
		[AllowDuplicates]
		public enum ATTACHMENT_PROMPT : int32
		{
			ATTACHMENT_PROMPT_NONE = 0,
			ATTACHMENT_PROMPT_SAVE = 1,
			ATTACHMENT_PROMPT_EXEC = 2,
			ATTACHMENT_PROMPT_EXEC_OR_SAVE = 3,
		}
		[AllowDuplicates]
		public enum ATTACHMENT_ACTION : int32
		{
			ATTACHMENT_ACTION_CANCEL = 0,
			ATTACHMENT_ACTION_SAVE = 1,
			ATTACHMENT_ACTION_EXEC = 2,
		}
		[AllowDuplicates]
		public enum SMINFOMASK : int32
		{
			SMIM_TYPE = 1,
			SMIM_FLAGS = 2,
			SMIM_ICON = 4,
		}
		[AllowDuplicates]
		public enum SMINFOTYPE : int32
		{
			SMIT_SEPARATOR = 1,
			SMIT_STRING = 2,
		}
		[AllowDuplicates]
		public enum SMINFOFLAGS : int32
		{
			SMIF_ICON = 1,
			SMIF_ACCELERATOR = 2,
			SMIF_DROPTARGET = 4,
			SMIF_SUBMENU = 8,
			SMIF_CHECKED = 32,
			SMIF_DROPCASCADE = 64,
			SMIF_HIDDEN = 128,
			SMIF_DISABLED = 256,
			SMIF_TRACKPOPUP = 512,
			SMIF_DEMOTED = 1024,
			SMIF_ALTSTATE = 2048,
			SMIF_DRAGNDROP = 4096,
			SMIF_NEW = 8192,
		}
		[AllowDuplicates]
		public enum KF_CATEGORY : int32
		{
			KF_CATEGORY_VIRTUAL = 1,
			KF_CATEGORY_FIXED = 2,
			KF_CATEGORY_COMMON = 3,
			KF_CATEGORY_PERUSER = 4,
		}
		[AllowDuplicates]
		public enum _KF_DEFINITION_FLAGS : int32
		{
			KFDF_LOCAL_REDIRECT_ONLY = 2,
			KFDF_ROAMABLE = 4,
			KFDF_PRECREATE = 8,
			KFDF_STREAM = 16,
			KFDF_PUBLISHEXPANDEDPATH = 32,
			KFDF_NO_REDIRECT_UI = 64,
		}
		[AllowDuplicates]
		public enum _KF_REDIRECT_FLAGS : int32
		{
			KF_REDIRECT_USER_EXCLUSIVE = 1,
			KF_REDIRECT_COPY_SOURCE_DACL = 2,
			KF_REDIRECT_OWNER_USER = 4,
			KF_REDIRECT_SET_OWNER_EXPLICIT = 8,
			KF_REDIRECT_CHECK_ONLY = 16,
			KF_REDIRECT_WITH_UI = 32,
			KF_REDIRECT_UNPIN = 64,
			KF_REDIRECT_PIN = 128,
			KF_REDIRECT_COPY_CONTENTS = 512,
			KF_REDIRECT_DEL_SOURCE_CONTENTS = 1024,
			KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = 2048,
		}
		[AllowDuplicates]
		public enum _KF_REDIRECTION_CAPABILITIES : int32
		{
			KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = 255,
			KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = 1,
			KF_REDIRECTION_CAPABILITIES_DENY_ALL = 1048320,
			KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED = 256,
			KF_REDIRECTION_CAPABILITIES_DENY_POLICY = 512,
			KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS = 1024,
		}
		[AllowDuplicates]
		public enum FFFP_MODE : int32
		{
			FFFP_EXACTMATCH = 0,
			FFFP_NEARESTPARENTMATCH = 1,
		}
		[AllowDuplicates]
		public enum SHARE_ROLE : int32
		{
			SHARE_ROLE_INVALID = -1,
			SHARE_ROLE_READER = 0,
			SHARE_ROLE_CONTRIBUTOR = 1,
			SHARE_ROLE_CO_OWNER = 2,
			SHARE_ROLE_OWNER = 3,
			SHARE_ROLE_CUSTOM = 4,
			SHARE_ROLE_MIXED = 5,
		}
		[AllowDuplicates]
		public enum DEF_SHARE_ID : int32
		{
			DEFSHAREID_USERS = 1,
			DEFSHAREID_PUBLIC = 2,
		}
		[AllowDuplicates]
		public enum _NMCII_FLAGS : int32
		{
			NMCII_NONE = 0,
			NMCII_ITEMS = 1,
			NMCII_FOLDERS = 2,
		}
		[AllowDuplicates]
		public enum _NMCSAEI_FLAGS : int32
		{
			NMCSAEI_SELECT = 0,
			NMCSAEI_EDIT = 1,
		}
		[AllowDuplicates]
		public enum _NSTCSTYLE : int32
		{
			NSTCS_HASEXPANDOS = 1,
			NSTCS_HASLINES = 2,
			NSTCS_SINGLECLICKEXPAND = 4,
			NSTCS_FULLROWSELECT = 8,
			NSTCS_SPRINGEXPAND = 16,
			NSTCS_HORIZONTALSCROLL = 32,
			NSTCS_ROOTHASEXPANDO = 64,
			NSTCS_SHOWSELECTIONALWAYS = 128,
			NSTCS_NOINFOTIP = 512,
			NSTCS_EVENHEIGHT = 1024,
			NSTCS_NOREPLACEOPEN = 2048,
			NSTCS_DISABLEDRAGDROP = 4096,
			NSTCS_NOORDERSTREAM = 8192,
			NSTCS_RICHTOOLTIP = 16384,
			NSTCS_BORDER = 32768,
			NSTCS_NOEDITLABELS = 65536,
			NSTCS_TABSTOP = 131072,
			NSTCS_FAVORITESMODE = 524288,
			NSTCS_AUTOHSCROLL = 1048576,
			NSTCS_FADEINOUTEXPANDOS = 2097152,
			NSTCS_EMPTYTEXT = 4194304,
			NSTCS_CHECKBOXES = 8388608,
			NSTCS_PARTIALCHECKBOXES = 16777216,
			NSTCS_EXCLUSIONCHECKBOXES = 33554432,
			NSTCS_DIMMEDCHECKBOXES = 67108864,
			NSTCS_NOINDENTCHECKS = 134217728,
			NSTCS_ALLOWJUNCTIONS = 268435456,
			NSTCS_SHOWTABSBUTTON = 536870912,
			NSTCS_SHOWDELETEBUTTON = 1073741824,
			NSTCS_SHOWREFRESHBUTTON = -2147483648,
		}
		[AllowDuplicates]
		public enum _NSTCROOTSTYLE : int32
		{
			NSTCRS_VISIBLE = 0,
			NSTCRS_HIDDEN = 1,
			NSTCRS_EXPANDED = 2,
		}
		[AllowDuplicates]
		public enum _NSTCITEMSTATE : int32
		{
			NSTCIS_NONE = 0,
			NSTCIS_SELECTED = 1,
			NSTCIS_EXPANDED = 2,
			NSTCIS_BOLD = 4,
			NSTCIS_DISABLED = 8,
			NSTCIS_SELECTEDNOEXPAND = 16,
		}
		[AllowDuplicates]
		public enum NSTCGNI : int32
		{
			NSTCGNI_NEXT = 0,
			NSTCGNI_NEXTVISIBLE = 1,
			NSTCGNI_PREV = 2,
			NSTCGNI_PREVVISIBLE = 3,
			NSTCGNI_PARENT = 4,
			NSTCGNI_CHILD = 5,
			NSTCGNI_FIRSTVISIBLE = 6,
			NSTCGNI_LASTVISIBLE = 7,
		}
		[AllowDuplicates]
		public enum NSTCFOLDERCAPABILITIES : int32
		{
			NSTCFC_NONE = 0,
			NSTCFC_PINNEDITEMFILTERING = 1,
			NSTCFC_DELAY_REGISTER_NOTIFY = 2,
		}
		[AllowDuplicates]
		public enum _EXPLORERPANESTATE : int32
		{
			EPS_DONTCARE = 0,
			EPS_DEFAULT_ON = 1,
			EPS_DEFAULT_OFF = 2,
			EPS_STATEMASK = 65535,
			EPS_INITIALSTATE = 65536,
			EPS_FORCE = 131072,
		}
		[AllowDuplicates]
		public enum _EXPCMDSTATE : int32
		{
			ECS_ENABLED = 0,
			ECS_DISABLED = 1,
			ECS_HIDDEN = 2,
			ECS_CHECKBOX = 4,
			ECS_CHECKED = 8,
			ECS_RADIOCHECK = 16,
		}
		[AllowDuplicates]
		public enum _EXPCMDFLAGS : int32
		{
			ECF_DEFAULT = 0,
			ECF_HASSUBCOMMANDS = 1,
			ECF_HASSPLITBUTTON = 2,
			ECF_HIDELABEL = 4,
			ECF_ISSEPARATOR = 8,
			ECF_HASLUASHIELD = 16,
			ECF_SEPARATORBEFORE = 32,
			ECF_SEPARATORAFTER = 64,
			ECF_ISDROPDOWN = 128,
			ECF_TOGGLEABLE = 256,
			ECF_AUTOMENUICONS = 512,
		}
		[AllowDuplicates]
		public enum CPVIEW : int32
		{
			CPVIEW_CLASSIC = 0,
			CPVIEW_ALLITEMS = 0,
			CPVIEW_CATEGORY = 1,
			CPVIEW_HOME = 1,
		}
		[AllowDuplicates]
		public enum KNOWNDESTCATEGORY : int32
		{
			KDC_FREQUENT = 1,
			KDC_RECENT = 2,
		}
		[AllowDuplicates]
		public enum APPDOCLISTTYPE : int32
		{
			ADLT_RECENT = 0,
			ADLT_FREQUENT = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_OPTIONS : int32
		{
			DSO_SHUFFLEIMAGES = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_STATE : int32
		{
			DSS_ENABLED = 1,
			DSS_SLIDESHOW = 2,
			DSS_DISABLED_BY_REMOTE_SESSION = 4,
		}
		[AllowDuplicates]
		public enum DESKTOP_SLIDESHOW_DIRECTION : int32
		{
			DSD_FORWARD = 0,
			DSD_BACKWARD = 1,
		}
		[AllowDuplicates]
		public enum DESKTOP_WALLPAPER_POSITION : int32
		{
			DWPOS_CENTER = 0,
			DWPOS_TILE = 1,
			DWPOS_STRETCH = 2,
			DWPOS_FIT = 3,
			DWPOS_FILL = 4,
			DWPOS_SPAN = 5,
		}
		[AllowDuplicates]
		public enum HOMEGROUPSHARINGCHOICES : int32
		{
			HGSC_NONE = 0,
			HGSC_MUSICLIBRARY = 1,
			HGSC_PICTURESLIBRARY = 2,
			HGSC_VIDEOSLIBRARY = 4,
			HGSC_DOCUMENTSLIBRARY = 8,
			HGSC_PRINTERS = 16,
		}
		[AllowDuplicates]
		public enum LIBRARYFOLDERFILTER : int32
		{
			LFF_FORCEFILESYSTEM = 1,
			LFF_STORAGEITEMS = 2,
			LFF_ALLITEMS = 3,
		}
		[AllowDuplicates]
		public enum LIBRARYOPTIONFLAGS : int32
		{
			LOF_DEFAULT = 0,
			LOF_PINNEDTONAVPANE = 1,
			LOF_MASK_ALL = 1,
		}
		[AllowDuplicates]
		public enum DEFAULTSAVEFOLDERTYPE : int32
		{
			DSFT_DETECT = 1,
			DSFT_PRIVATE = 2,
			DSFT_PUBLIC = 3,
		}
		[AllowDuplicates]
		public enum LIBRARYSAVEFLAGS : int32
		{
			LSF_FAILIFTHERE = 0,
			LSF_OVERRIDEEXISTING = 1,
			LSF_MAKEUNIQUENAME = 2,
		}
		[AllowDuplicates]
		public enum DEFAULT_FOLDER_MENU_RESTRICTIONS : int32
		{
			DFMR_DEFAULT = 0,
			DFMR_NO_STATIC_VERBS = 8,
			DFMR_STATIC_VERBS_ONLY = 16,
			DFMR_NO_RESOURCE_VERBS = 32,
			DFMR_OPTIN_HANDLERS_ONLY = 64,
			DFMR_RESOURCE_AND_FOLDER_VERBS_ONLY = 128,
			DFMR_USE_SPECIFIED_HANDLERS = 256,
			DFMR_USE_SPECIFIED_VERBS = 512,
			DFMR_NO_ASYNC_VERBS = 1024,
			DFMR_NO_NATIVECPU_VERBS = 2048,
			DFMR_NO_NONWOW_VERBS = 4096,
		}
		[AllowDuplicates]
		public enum ACTIVATEOPTIONS : int32
		{
			AO_NONE = 0,
			AO_DESIGNMODE = 1,
			AO_NOERRORUI = 2,
			AO_NOSPLASHSCREEN = 4,
			AO_PRELAUNCH = 33554432,
		}
		[AllowDuplicates]
		public enum LIBRARYMANAGEDIALOGOPTIONS : int32
		{
			LMD_DEFAULT = 0,
			LMD_ALLOWUNINDEXABLENETWORKLOCATIONS = 1,
		}
		[AllowDuplicates]
		public enum AHTYPE : int32
		{
			AHTYPE_UNDEFINED = 0,
			AHTYPE_USER_APPLICATION = 8,
			AHTYPE_ANY_APPLICATION = 16,
			AHTYPE_MACHINEDEFAULT = 32,
			AHTYPE_PROGID = 64,
			AHTYPE_APPLICATION = 128,
			AHTYPE_CLASS_APPLICATION = 256,
			AHTYPE_ANY_PROGID = 512,
		}
		[AllowDuplicates]
		public enum ASSOC_FILTER : int32
		{
			ASSOC_FILTER_NONE = 0,
			ASSOC_FILTER_RECOMMENDED = 1,
		}
		[AllowDuplicates]
		public enum MONITOR_APP_VISIBILITY : int32
		{
			MAV_UNKNOWN = 0,
			MAV_NO_APP_VISIBLE = 1,
			MAV_APP_VISIBLE = 2,
		}
		[AllowDuplicates]
		public enum PACKAGE_EXECUTION_STATE : int32
		{
			PES_UNKNOWN = 0,
			PES_RUNNING = 1,
			PES_SUSPENDING = 2,
			PES_SUSPENDED = 3,
			PES_TERMINATED = 4,
		}
		[AllowDuplicates]
		public enum AHE_TYPE : int32
		{
			AHE_DESKTOP = 0,
			AHE_IMMERSIVE = 1,
		}
		[AllowDuplicates]
		public enum EC_HOST_UI_MODE : int32
		{
			ECHUIM_DESKTOP = 0,
			ECHUIM_IMMERSIVE = 1,
			ECHUIM_SYSTEM_LAUNCHER = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_STATE : int32
		{
			AVS_FULLSCREEN_LANDSCAPE = 0,
			AVS_FILLED = 1,
			AVS_SNAPPED = 2,
			AVS_FULLSCREEN_PORTRAIT = 3,
		}
		[AllowDuplicates]
		public enum EDGE_GESTURE_KIND : int32
		{
			EGK_TOUCH = 0,
			EGK_KEYBOARD = 1,
			EGK_MOUSE = 2,
		}
		[AllowDuplicates]
		public enum NATIVE_DISPLAY_ORIENTATION : int32
		{
			NDO_LANDSCAPE = 0,
			NDO_PORTRAIT = 1,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_ORIENTATION : int32
		{
			AVO_LANDSCAPE = 0,
			AVO_PORTRAIT = 1,
		}
		[AllowDuplicates]
		public enum ADJACENT_DISPLAY_EDGES : int32
		{
			ADE_NONE = 0,
			ADE_LEFT = 1,
			ADE_RIGHT = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_MIN_WIDTH : int32
		{
			AVMW_DEFAULT = 0,
			AVMW_320 = 1,
			AVMW_500 = 2,
		}
		[AllowDuplicates]
		public enum APPLICATION_VIEW_SIZE_PREFERENCE : int32
		{
			AVSP_DEFAULT = 0,
			AVSP_USE_LESS = 1,
			AVSP_USE_HALF = 2,
			AVSP_USE_MORE = 3,
			AVSP_USE_MINIMUM = 4,
			AVSP_USE_NONE = 5,
			AVSP_CUSTOM = 6,
		}
		[AllowDuplicates]
		public enum FLYOUT_PLACEMENT : int32
		{
			FP_DEFAULT = 0,
			FP_ABOVE = 1,
			FP_BELOW = 2,
			FP_LEFT = 3,
			FP_RIGHT = 4,
		}
		[AllowDuplicates]
		public enum BANNER_NOTIFICATION_EVENT : int32
		{
			BNE_Rendered = 0,
			BNE_Hovered = 1,
			BNE_Closed = 2,
			BNE_Dismissed = 3,
			BNE_Button1Clicked = 4,
			BNE_Button2Clicked = 5,
		}
		[AllowDuplicates]
		public enum SORT_ORDER_TYPE : int32
		{
			SOT_DEFAULT = 0,
			SOT_IGNORE_FOLDERNESS = 1,
		}
		[AllowDuplicates]
		public enum FOLDERVIEWOPTIONS : int32
		{
			FVO_DEFAULT = 0,
			FVO_VISTALAYOUT = 1,
			FVO_CUSTOMPOSITION = 2,
			FVO_CUSTOMORDERING = 4,
			FVO_SUPPORTHYPERLINKS = 8,
			FVO_NOANIMATIONS = 16,
			FVO_NOSCROLLTIPS = 32,
		}
		[AllowDuplicates]
		public enum _SV3CVW3_FLAGS : int32
		{
			SV3CVW3_DEFAULT = 0,
			SV3CVW3_NONINTERACTIVE = 1,
			SV3CVW3_FORCEVIEWMODE = 2,
			SV3CVW3_FORCEFOLDERFLAGS = 4,
		}
		[AllowDuplicates]
		public enum VPWATERMARKFLAGS : int32
		{
			VPWF_DEFAULT = 0,
			VPWF_ALPHABLEND = 1,
		}
		[AllowDuplicates]
		public enum VPCOLORFLAGS : int32
		{
			VPCF_TEXT = 1,
			VPCF_BACKGROUND = 2,
			VPCF_SORTCOLUMN = 3,
			VPCF_SUBTEXT = 4,
			VPCF_TEXTBACKGROUND = 5,
		}
		[AllowDuplicates]
		public enum DSH_FLAGS : int32
		{
			DSH_ALLOWDROPDESCRIPTIONTEXT = 1,
		}
		[AllowDuplicates]
		public enum CDBURNINGEXTENSIONRET : int32
		{
			CDBE_RET_DEFAULT = 0,
			CDBE_RET_DONTRUNOTHEREXTS = 1,
			CDBE_RET_STOPWIZARD = 2,
		}
		[AllowDuplicates]
		public enum _CDBE_ACTIONS : int32
		{
			CDBE_TYPE_MUSIC = 1,
			CDBE_TYPE_DATA = 2,
			CDBE_TYPE_ALL = -1,
		}
		[AllowDuplicates]
		public enum NSTCSTYLE2 : int32
		{
			NSTCS2_DEFAULT = 0,
			NSTCS2_INTERRUPTNOTIFICATIONS = 1,
			NSTCS2_SHOWNULLSPACEMENU = 2,
			NSTCS2_DISPLAYPADDING = 4,
			NSTCS2_DISPLAYPINNEDONLY = 8,
			NTSCS2_NOSINGLETONAUTOEXPAND = 16,
			NTSCS2_NEVERINSERTNONENUMERATED = 32,
		}
		[AllowDuplicates]
		public enum _NSTCEHITTEST : int32
		{
			NSTCEHT_NOWHERE = 1,
			NSTCEHT_ONITEMICON = 2,
			NSTCEHT_ONITEMLABEL = 4,
			NSTCEHT_ONITEMINDENT = 8,
			NSTCEHT_ONITEMBUTTON = 16,
			NSTCEHT_ONITEMRIGHT = 32,
			NSTCEHT_ONITEMSTATEICON = 64,
			NSTCEHT_ONITEM = 70,
			NSTCEHT_ONITEMTABBUTTON = 4096,
		}
		[AllowDuplicates]
		public enum _NSTCECLICKTYPE : int32
		{
			NSTCECT_LBUTTON = 1,
			NSTCECT_MBUTTON = 2,
			NSTCECT_RBUTTON = 3,
			NSTCECT_BUTTON = 3,
			NSTCECT_DBLCLICK = 4,
		}
		[AllowDuplicates]
		public enum UNDOCK_REASON : int32
		{
			UR_RESOLUTION_CHANGE = 0,
			UR_MONITOR_DISCONNECT = 1,
		}
		[AllowDuplicates]
		public enum CommandStateChangeConstants : int32
		{
			CSC_UPDATECOMMANDS = -1,
			CSC_NAVIGATEFORWARD = 1,
			CSC_NAVIGATEBACK = 2,
		}
		[AllowDuplicates]
		public enum SecureLockIconConstants : int32
		{
			secureLockIconUnsecure = 0,
			secureLockIconMixed = 1,
			secureLockIconSecureUnknownBits = 2,
			secureLockIconSecure40Bit = 3,
			secureLockIconSecure56Bit = 4,
			secureLockIconSecureFortezza = 5,
			secureLockIconSecure128Bit = 6,
		}
		[AllowDuplicates]
		public enum NewProcessCauseConstants : int32
		{
			ProtectedModeRedirect = 1,
		}
		[AllowDuplicates]
		public enum ShellWindowTypeConstants : int32
		{
			SWC_EXPLORER = 0,
			SWC_BROWSER = 1,
			SWC_3RDPARTY = 2,
			SWC_CALLBACK = 4,
			SWC_DESKTOP = 8,
		}
		[AllowDuplicates]
		public enum ShellWindowFindWindowOptions : int32
		{
			SWFO_NEEDDISPATCH = 1,
			SWFO_INCLUDEPENDING = 2,
			SWFO_COOKIEPASSED = 4,
		}
		[AllowDuplicates]
		public enum BrowserNavConstants : int32
		{
			navOpenInNewWindow = 1,
			navNoHistory = 2,
			navNoReadFromCache = 4,
			navNoWriteToCache = 8,
			navAllowAutosearch = 16,
			navBrowserBar = 32,
			navHyperlink = 64,
			navEnforceRestricted = 128,
			navNewWindowsManaged = 256,
			navUntrustedForDownload = 512,
			navTrustedForActiveX = 1024,
			navOpenInNewTab = 2048,
			navOpenInBackgroundTab = 4096,
			navKeepWordWheelText = 8192,
			navVirtualTab = 16384,
			navBlockRedirectsXDomain = 32768,
			navOpenNewForegroundTab = 65536,
			navTravelLogScreenshot = 131072,
			navDeferUnload = 262144,
			navSpeculative = 524288,
			navSuggestNewWindow = 1048576,
			navSuggestNewTab = 2097152,
			navReserved1 = 4194304,
			navHomepageNavigate = 8388608,
			navRefresh = 16777216,
			navHostNavigation = 33554432,
			navReserved2 = 67108864,
			navReserved3 = 134217728,
			navReserved4 = 268435456,
			navReserved5 = 536870912,
			navReserved6 = 1073741824,
			navReserved7 = -2147483648,
		}
		[AllowDuplicates]
		public enum RefreshConstants : int32
		{
			REFRESH_NORMAL = 0,
			REFRESH_IFEXPIRED = 1,
			REFRESH_COMPLETELY = 3,
		}
		[AllowDuplicates]
		public enum OfflineFolderStatus : int32
		{
			OFS_INACTIVE = -1,
			OFS_ONLINE = 0,
			OFS_OFFLINE = 1,
			OFS_SERVERBACK = 2,
			OFS_DIRTYCACHE = 3,
		}
		[AllowDuplicates]
		public enum ShellFolderViewOptions : int32
		{
			SFVVO_SHOWALLOBJECTS = 1,
			SFVVO_SHOWEXTENSIONS = 2,
			SFVVO_SHOWCOMPCOLOR = 8,
			SFVVO_SHOWSYSFILES = 32,
			SFVVO_WIN95CLASSIC = 64,
			SFVVO_DOUBLECLICKINWEBVIEW = 128,
			SFVVO_DESKTOPHTML = 512,
		}
		[AllowDuplicates]
		public enum ShellSpecialFolderConstants : int32
		{
			ssfDESKTOP = 0,
			ssfPROGRAMS = 2,
			ssfCONTROLS = 3,
			ssfPRINTERS = 4,
			ssfPERSONAL = 5,
			ssfFAVORITES = 6,
			ssfSTARTUP = 7,
			ssfRECENT = 8,
			ssfSENDTO = 9,
			ssfBITBUCKET = 10,
			ssfSTARTMENU = 11,
			ssfDESKTOPDIRECTORY = 16,
			ssfDRIVES = 17,
			ssfNETWORK = 18,
			ssfNETHOOD = 19,
			ssfFONTS = 20,
			ssfTEMPLATES = 21,
			ssfCOMMONSTARTMENU = 22,
			ssfCOMMONPROGRAMS = 23,
			ssfCOMMONSTARTUP = 24,
			ssfCOMMONDESKTOPDIR = 25,
			ssfAPPDATA = 26,
			ssfPRINTHOOD = 27,
			ssfLOCALAPPDATA = 28,
			ssfALTSTARTUP = 29,
			ssfCOMMONALTSTARTUP = 30,
			ssfCOMMONFAVORITES = 31,
			ssfINTERNETCACHE = 32,
			ssfCOOKIES = 33,
			ssfHISTORY = 34,
			ssfCOMMONAPPDATA = 35,
			ssfWINDOWS = 36,
			ssfSYSTEM = 37,
			ssfPROGRAMFILES = 38,
			ssfMYPICTURES = 39,
			ssfPROFILE = 40,
			ssfSYSTEMx86 = 41,
			ssfPROGRAMFILESx86 = 48,
		}
		[AllowDuplicates]
		public enum AUTOCOMPLETEOPTIONS : int32
		{
			ACO_NONE = 0,
			ACO_AUTOSUGGEST = 1,
			ACO_AUTOAPPEND = 2,
			ACO_SEARCH = 4,
			ACO_FILTERPREFIXES = 8,
			ACO_USETAB = 16,
			ACO_UPDOWNKEYDROPSLIST = 32,
			ACO_RTLREADING = 64,
			ACO_WORD_FILTER = 128,
			ACO_NOPREFIXFILTERING = 256,
		}
		[AllowDuplicates]
		public enum ACENUMOPTION : int32
		{
			ACEO_NONE = 0,
			ACEO_MOSTRECENTFIRST = 1,
			ACEO_FIRSTUNUSED = 65536,
		}
		[AllowDuplicates]
		public enum SHELL_LINK_DATA_FLAGS : int32
		{
			SLDF_DEFAULT = 0,
			SLDF_HAS_ID_LIST = 1,
			SLDF_HAS_LINK_INFO = 2,
			SLDF_HAS_NAME = 4,
			SLDF_HAS_RELPATH = 8,
			SLDF_HAS_WORKINGDIR = 16,
			SLDF_HAS_ARGS = 32,
			SLDF_HAS_ICONLOCATION = 64,
			SLDF_UNICODE = 128,
			SLDF_FORCE_NO_LINKINFO = 256,
			SLDF_HAS_EXP_SZ = 512,
			SLDF_RUN_IN_SEPARATE = 1024,
			SLDF_HAS_DARWINID = 4096,
			SLDF_RUNAS_USER = 8192,
			SLDF_HAS_EXP_ICON_SZ = 16384,
			SLDF_NO_PIDL_ALIAS = 32768,
			SLDF_FORCE_UNCNAME = 65536,
			SLDF_RUN_WITH_SHIMLAYER = 131072,
			SLDF_FORCE_NO_LINKTRACK = 262144,
			SLDF_ENABLE_TARGET_METADATA = 524288,
			SLDF_DISABLE_LINK_PATH_TRACKING = 1048576,
			SLDF_DISABLE_KNOWNFOLDER_RELATIVE_TRACKING = 2097152,
			SLDF_NO_KF_ALIAS = 4194304,
			SLDF_ALLOW_LINK_TO_LINK = 8388608,
			SLDF_UNALIAS_ON_SAVE = 16777216,
			SLDF_PREFER_ENVIRONMENT_PATH = 33554432,
			SLDF_KEEP_LOCAL_IDLIST_FOR_UNC_TARGET = 67108864,
			SLDF_PERSIST_VOLUME_ID_RELATIVE = 134217728,
			SLDF_VALID = 268433407,
			SLDF_RESERVED = -2147483648,
		}
		[AllowDuplicates]
		public enum SHGFP_TYPE : int32
		{
			SHGFP_TYPE_CURRENT = 0,
			SHGFP_TYPE_DEFAULT = 1,
		}
		[AllowDuplicates]
		public enum KNOWN_FOLDER_FLAG : int32
		{
			KF_FLAG_DEFAULT = 0,
			KF_FLAG_FORCE_APP_DATA_REDIRECTION = 524288,
			KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 262144,
			KF_FLAG_FORCE_PACKAGE_REDIRECTION = 131072,
			KF_FLAG_NO_PACKAGE_REDIRECTION = 65536,
			KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 131072,
			KF_FLAG_NO_APPCONTAINER_REDIRECTION = 65536,
			KF_FLAG_CREATE = 32768,
			KF_FLAG_DONT_VERIFY = 16384,
			KF_FLAG_DONT_UNEXPAND = 8192,
			KF_FLAG_NO_ALIAS = 4096,
			KF_FLAG_INIT = 2048,
			KF_FLAG_DEFAULT_PATH = 1024,
			KF_FLAG_NOT_PARENT_RELATIVE = 512,
			KF_FLAG_SIMPLE_IDLIST = 256,
			KF_FLAG_ALIAS_ONLY = -2147483648,
		}
		[AllowDuplicates]
		public enum AUTOCOMPLETELISTOPTIONS : int32
		{
			ACLO_NONE = 0,
			ACLO_CURRENTDIR = 1,
			ACLO_MYCOMPUTER = 2,
			ACLO_DESKTOP = 4,
			ACLO_FAVORITES = 8,
			ACLO_FILESYSONLY = 16,
			ACLO_FILESYSDIRS = 32,
			ACLO_VIRTUALNAMESPACE = 64,
		}
		[AllowDuplicates]
		public enum FD_FLAGS : int32
		{
			FD_CLSID = 1,
			FD_SIZEPOINT = 2,
			FD_ATTRIBUTES = 4,
			FD_CREATETIME = 8,
			FD_ACCESSTIME = 16,
			FD_WRITESTIME = 32,
			FD_FILESIZE = 64,
			FD_PROGRESSUI = 16384,
			FD_LINKUI = 32768,
			FD_UNICODE = -2147483648,
		}
		[AllowDuplicates]
		public enum DROPIMAGETYPE : int32
		{
			DROPIMAGE_INVALID = -1,
			DROPIMAGE_NONE = 0,
			DROPIMAGE_COPY = 1,
			DROPIMAGE_MOVE = 2,
			DROPIMAGE_LINK = 4,
			DROPIMAGE_LABEL = 6,
			DROPIMAGE_WARNING = 7,
			DROPIMAGE_NOIMAGE = 8,
		}
		[AllowDuplicates]
		public enum SHARD : int32
		{
			SHARD_PIDL = 1,
			SHARD_PATHA = 2,
			SHARD_PATHW = 3,
			SHARD_APPIDINFO = 4,
			SHARD_APPIDINFOIDLIST = 5,
			SHARD_LINK = 6,
			SHARD_APPIDINFOLINK = 7,
			SHARD_SHELLITEM = 8,
		}
		[AllowDuplicates]
		public enum SCNRT_STATUS : int32
		{
			SCNRT_ENABLE = 0,
			SCNRT_DISABLE = 1,
		}
		[AllowDuplicates]
		public enum RESTRICTIONS : int32
		{
			REST_NONE = 0,
			REST_NORUN = 1,
			REST_NOCLOSE = 2,
			REST_NOSAVESET = 4,
			REST_NOFILEMENU = 8,
			REST_NOSETFOLDERS = 16,
			REST_NOSETTASKBAR = 32,
			REST_NODESKTOP = 64,
			REST_NOFIND = 128,
			REST_NODRIVES = 256,
			REST_NODRIVEAUTORUN = 512,
			REST_NODRIVETYPEAUTORUN = 1024,
			REST_NONETHOOD = 2048,
			REST_STARTBANNER = 4096,
			REST_RESTRICTRUN = 8192,
			REST_NOPRINTERTABS = 16384,
			REST_NOPRINTERDELETE = 32768,
			REST_NOPRINTERADD = 65536,
			REST_NOSTARTMENUSUBFOLDERS = 131072,
			REST_MYDOCSONNET = 262144,
			REST_NOEXITTODOS = 524288,
			REST_ENFORCESHELLEXTSECURITY = 1048576,
			REST_LINKRESOLVEIGNORELINKINFO = 2097152,
			REST_NOCOMMONGROUPS = 4194304,
			REST_SEPARATEDESKTOPPROCESS = 8388608,
			REST_NOWEB = 16777216,
			REST_NOTRAYCONTEXTMENU = 33554432,
			REST_NOVIEWCONTEXTMENU = 67108864,
			REST_NONETCONNECTDISCONNECT = 134217728,
			REST_STARTMENULOGOFF = 268435456,
			REST_NOSETTINGSASSIST = 536870912,
			REST_NOINTERNETICON = 1073741825,
			REST_NORECENTDOCSHISTORY = 1073741826,
			REST_NORECENTDOCSMENU = 1073741827,
			REST_NOACTIVEDESKTOP = 1073741828,
			REST_NOACTIVEDESKTOPCHANGES = 1073741829,
			REST_NOFAVORITESMENU = 1073741830,
			REST_CLEARRECENTDOCSONEXIT = 1073741831,
			REST_CLASSICSHELL = 1073741832,
			REST_NOCUSTOMIZEWEBVIEW = 1073741833,
			REST_NOHTMLWALLPAPER = 1073741840,
			REST_NOCHANGINGWALLPAPER = 1073741841,
			REST_NODESKCOMP = 1073741842,
			REST_NOADDDESKCOMP = 1073741843,
			REST_NODELDESKCOMP = 1073741844,
			REST_NOCLOSEDESKCOMP = 1073741845,
			REST_NOCLOSE_DRAGDROPBAND = 1073741846,
			REST_NOMOVINGBAND = 1073741847,
			REST_NOEDITDESKCOMP = 1073741848,
			REST_NORESOLVESEARCH = 1073741849,
			REST_NORESOLVETRACK = 1073741850,
			REST_FORCECOPYACLWITHFILE = 1073741851,
			REST_NOFORGETSOFTWAREUPDATE = 1073741853,
			REST_NOSETACTIVEDESKTOP = 1073741854,
			REST_NOUPDATEWINDOWS = 1073741855,
			REST_NOCHANGESTARMENU = 1073741856,
			REST_NOFOLDEROPTIONS = 1073741857,
			REST_HASFINDCOMPUTERS = 1073741858,
			REST_INTELLIMENUS = 1073741859,
			REST_RUNDLGMEMCHECKBOX = 1073741860,
			REST_ARP_ShowPostSetup = 1073741861,
			REST_NOCSC = 1073741862,
			REST_NOCONTROLPANEL = 1073741863,
			REST_ENUMWORKGROUP = 1073741864,
			REST_ARP_NOARP = 1073741865,
			REST_ARP_NOREMOVEPAGE = 1073741866,
			REST_ARP_NOADDPAGE = 1073741867,
			REST_ARP_NOWINSETUPPAGE = 1073741868,
			REST_GREYMSIADS = 1073741869,
			REST_NOCHANGEMAPPEDDRIVELABEL = 1073741870,
			REST_NOCHANGEMAPPEDDRIVECOMMENT = 1073741871,
			REST_MaxRecentDocs = 1073741872,
			REST_NONETWORKCONNECTIONS = 1073741873,
			REST_FORCESTARTMENULOGOFF = 1073741874,
			REST_NOWEBVIEW = 1073741875,
			REST_NOCUSTOMIZETHISFOLDER = 1073741876,
			REST_NOENCRYPTION = 1073741877,
			REST_DONTSHOWSUPERHIDDEN = 1073741879,
			REST_NOSHELLSEARCHBUTTON = 1073741880,
			REST_NOHARDWARETAB = 1073741881,
			REST_NORUNASINSTALLPROMPT = 1073741882,
			REST_PROMPTRUNASINSTALLNETPATH = 1073741883,
			REST_NOMANAGEMYCOMPUTERVERB = 1073741884,
			REST_DISALLOWRUN = 1073741886,
			REST_NOWELCOMESCREEN = 1073741887,
			REST_RESTRICTCPL = 1073741888,
			REST_DISALLOWCPL = 1073741889,
			REST_NOSMBALLOONTIP = 1073741890,
			REST_NOSMHELP = 1073741891,
			REST_NOWINKEYS = 1073741892,
			REST_NOENCRYPTONMOVE = 1073741893,
			REST_NOLOCALMACHINERUN = 1073741894,
			REST_NOCURRENTUSERRUN = 1073741895,
			REST_NOLOCALMACHINERUNONCE = 1073741896,
			REST_NOCURRENTUSERRUNONCE = 1073741897,
			REST_FORCEACTIVEDESKTOPON = 1073741898,
			REST_NOVIEWONDRIVE = 1073741900,
			REST_NONETCRAWL = 1073741901,
			REST_NOSHAREDDOCUMENTS = 1073741902,
			REST_NOSMMYDOCS = 1073741903,
			REST_NOSMMYPICS = 1073741904,
			REST_ALLOWBITBUCKDRIVES = 1073741905,
			REST_NONLEGACYSHELLMODE = 1073741906,
			REST_NOCONTROLPANELBARRICADE = 1073741907,
			REST_NOSTARTPAGE = 1073741908,
			REST_NOAUTOTRAYNOTIFY = 1073741909,
			REST_NOTASKGROUPING = 1073741910,
			REST_NOCDBURNING = 1073741911,
			REST_MYCOMPNOPROP = 1073741912,
			REST_MYDOCSNOPROP = 1073741913,
			REST_NOSTARTPANEL = 1073741914,
			REST_NODISPLAYAPPEARANCEPAGE = 1073741915,
			REST_NOTHEMESTAB = 1073741916,
			REST_NOVISUALSTYLECHOICE = 1073741917,
			REST_NOSIZECHOICE = 1073741918,
			REST_NOCOLORCHOICE = 1073741919,
			REST_SETVISUALSTYLE = 1073741920,
			REST_STARTRUNNOHOMEPATH = 1073741921,
			REST_NOUSERNAMEINSTARTPANEL = 1073741922,
			REST_NOMYCOMPUTERICON = 1073741923,
			REST_NOSMNETWORKPLACES = 1073741924,
			REST_NOSMPINNEDLIST = 1073741925,
			REST_NOSMMYMUSIC = 1073741926,
			REST_NOSMEJECTPC = 1073741927,
			REST_NOSMMOREPROGRAMS = 1073741928,
			REST_NOSMMFUPROGRAMS = 1073741929,
			REST_NOTRAYITEMSDISPLAY = 1073741930,
			REST_NOTOOLBARSONTASKBAR = 1073741931,
			REST_NOSMCONFIGUREPROGRAMS = 1073741935,
			REST_HIDECLOCK = 1073741936,
			REST_NOLOWDISKSPACECHECKS = 1073741937,
			REST_NOENTIRENETWORK = 1073741938,
			REST_NODESKTOPCLEANUP = 1073741939,
			REST_BITBUCKNUKEONDELETE = 1073741940,
			REST_BITBUCKCONFIRMDELETE = 1073741941,
			REST_BITBUCKNOPROP = 1073741942,
			REST_NODISPBACKGROUND = 1073741943,
			REST_NODISPSCREENSAVEPG = 1073741944,
			REST_NODISPSETTINGSPG = 1073741945,
			REST_NODISPSCREENSAVEPREVIEW = 1073741946,
			REST_NODISPLAYCPL = 1073741947,
			REST_HIDERUNASVERB = 1073741948,
			REST_NOTHUMBNAILCACHE = 1073741949,
			REST_NOSTRCMPLOGICAL = 1073741950,
			REST_NOPUBLISHWIZARD = 1073741951,
			REST_NOONLINEPRINTSWIZARD = 1073741952,
			REST_NOWEBSERVICES = 1073741953,
			REST_ALLOWUNHASHEDWEBVIEW = 1073741954,
			REST_ALLOWLEGACYWEBVIEW = 1073741955,
			REST_REVERTWEBVIEWSECURITY = 1073741956,
			REST_INHERITCONSOLEHANDLES = 1073741958,
			REST_NOREMOTERECURSIVEEVENTS = 1073741961,
			REST_NOREMOTECHANGENOTIFY = 1073741969,
			REST_NOENUMENTIRENETWORK = 1073741971,
			REST_NOINTERNETOPENWITH = 1073741973,
			REST_DONTRETRYBADNETNAME = 1073741979,
			REST_ALLOWFILECLSIDJUNCTIONS = 1073741980,
			REST_NOUPNPINSTALL = 1073741981,
			REST_ARP_DONTGROUPPATCHES = 1073741996,
			REST_ARP_NOCHOOSEPROGRAMSPAGE = 1073741997,
			REST_NODISCONNECT = 1090519041,
			REST_NOSECURITY = 1090519042,
			REST_NOFILEASSOCIATE = 1090519043,
			REST_ALLOWCOMMENTTOGGLE = 1090519044,
		}
		[AllowDuplicates]
		public enum OPEN_AS_INFO_FLAGS : uint32
		{
			OAIF_ALLOW_REGISTRATION = 1,
			OAIF_REGISTER_EXT = 2,
			OAIF_EXEC = 4,
			OAIF_FORCE_REGISTRATION = 8,
			OAIF_HIDE_REGISTRATION = 32,
			OAIF_URL_PROTOCOL = 64,
			OAIF_FILE_IS_URI = 128,
		}
		[AllowDuplicates]
		public enum IESHORTCUTFLAGS : int32
		{
			IESHORTCUT_NEWBROWSER = 1,
			IESHORTCUT_OPENNEWTAB = 2,
			IESHORTCUT_FORCENAVIGATE = 4,
			IESHORTCUT_BACKGROUNDTAB = 8,
		}
		[AllowDuplicates]
		public enum DISPLAY_DEVICE_TYPE : int32
		{
			DEVICE_PRIMARY = 0,
			DEVICE_IMMERSIVE = 1,
		}
		[AllowDuplicates]
		public enum SCALE_CHANGE_FLAGS : uint32
		{
			SCF_VALUE_NONE = 0,
			SCF_SCALE = 1,
			SCF_PHYSICAL = 2,
		}
		[AllowDuplicates]
		public enum SHELL_UI_COMPONENT : int32
		{
			SHELL_UI_COMPONENT_TASKBARS = 0,
			SHELL_UI_COMPONENT_NOTIFICATIONAREA = 1,
			SHELL_UI_COMPONENT_DESKBAND = 2,
		}
		[AllowDuplicates]
		public enum ASSOCCLASS : int32
		{
			ASSOCCLASS_SHELL_KEY = 0,
			ASSOCCLASS_PROGID_KEY = 1,
			ASSOCCLASS_PROGID_STR = 2,
			ASSOCCLASS_CLSID_KEY = 3,
			ASSOCCLASS_CLSID_STR = 4,
			ASSOCCLASS_APP_KEY = 5,
			ASSOCCLASS_APP_STR = 6,
			ASSOCCLASS_SYSTEM_STR = 7,
			ASSOCCLASS_FOLDER = 8,
			ASSOCCLASS_STAR = 9,
			ASSOCCLASS_FIXED_PROGID_STR = 10,
			ASSOCCLASS_PROTOCOL_STR = 11,
		}
		[AllowDuplicates]
		public enum QUERY_USER_NOTIFICATION_STATE : int32
		{
			QUNS_NOT_PRESENT = 1,
			QUNS_BUSY = 2,
			QUNS_RUNNING_D3D_FULL_SCREEN = 3,
			QUNS_PRESENTATION_MODE = 4,
			QUNS_ACCEPTS_NOTIFICATIONS = 5,
			QUNS_QUIET_TIME = 6,
			QUNS_APP = 7,
		}
		[AllowDuplicates]
		public enum SHSTOCKICONID : int32
		{
			SIID_DOCNOASSOC = 0,
			SIID_DOCASSOC = 1,
			SIID_APPLICATION = 2,
			SIID_FOLDER = 3,
			SIID_FOLDEROPEN = 4,
			SIID_DRIVE525 = 5,
			SIID_DRIVE35 = 6,
			SIID_DRIVEREMOVE = 7,
			SIID_DRIVEFIXED = 8,
			SIID_DRIVENET = 9,
			SIID_DRIVENETDISABLED = 10,
			SIID_DRIVECD = 11,
			SIID_DRIVERAM = 12,
			SIID_WORLD = 13,
			SIID_SERVER = 15,
			SIID_PRINTER = 16,
			SIID_MYNETWORK = 17,
			SIID_FIND = 22,
			SIID_HELP = 23,
			SIID_SHARE = 28,
			SIID_LINK = 29,
			SIID_SLOWFILE = 30,
			SIID_RECYCLER = 31,
			SIID_RECYCLERFULL = 32,
			SIID_MEDIACDAUDIO = 40,
			SIID_LOCK = 47,
			SIID_AUTOLIST = 49,
			SIID_PRINTERNET = 50,
			SIID_SERVERSHARE = 51,
			SIID_PRINTERFAX = 52,
			SIID_PRINTERFAXNET = 53,
			SIID_PRINTERFILE = 54,
			SIID_STACK = 55,
			SIID_MEDIASVCD = 56,
			SIID_STUFFEDFOLDER = 57,
			SIID_DRIVEUNKNOWN = 58,
			SIID_DRIVEDVD = 59,
			SIID_MEDIADVD = 60,
			SIID_MEDIADVDRAM = 61,
			SIID_MEDIADVDRW = 62,
			SIID_MEDIADVDR = 63,
			SIID_MEDIADVDROM = 64,
			SIID_MEDIACDAUDIOPLUS = 65,
			SIID_MEDIACDRW = 66,
			SIID_MEDIACDR = 67,
			SIID_MEDIACDBURN = 68,
			SIID_MEDIABLANKCD = 69,
			SIID_MEDIACDROM = 70,
			SIID_AUDIOFILES = 71,
			SIID_IMAGEFILES = 72,
			SIID_VIDEOFILES = 73,
			SIID_MIXEDFILES = 74,
			SIID_FOLDERBACK = 75,
			SIID_FOLDERFRONT = 76,
			SIID_SHIELD = 77,
			SIID_WARNING = 78,
			SIID_INFO = 79,
			SIID_ERROR = 80,
			SIID_KEY = 81,
			SIID_SOFTWARE = 82,
			SIID_RENAME = 83,
			SIID_DELETE = 84,
			SIID_MEDIAAUDIODVD = 85,
			SIID_MEDIAMOVIEDVD = 86,
			SIID_MEDIAENHANCEDCD = 87,
			SIID_MEDIAENHANCEDDVD = 88,
			SIID_MEDIAHDDVD = 89,
			SIID_MEDIABLURAY = 90,
			SIID_MEDIAVCD = 91,
			SIID_MEDIADVDPLUSR = 92,
			SIID_MEDIADVDPLUSRW = 93,
			SIID_DESKTOPPC = 94,
			SIID_MOBILEPC = 95,
			SIID_USERS = 96,
			SIID_MEDIASMARTMEDIA = 97,
			SIID_MEDIACOMPACTFLASH = 98,
			SIID_DEVICECELLPHONE = 99,
			SIID_DEVICECAMERA = 100,
			SIID_DEVICEVIDEOCAMERA = 101,
			SIID_DEVICEAUDIOPLAYER = 102,
			SIID_NETWORKCONNECT = 103,
			SIID_INTERNET = 104,
			SIID_ZIPFILE = 105,
			SIID_SETTINGS = 106,
			SIID_DRIVEHDDVD = 132,
			SIID_DRIVEBD = 133,
			SIID_MEDIAHDDVDROM = 134,
			SIID_MEDIAHDDVDR = 135,
			SIID_MEDIAHDDVDRAM = 136,
			SIID_MEDIABDROM = 137,
			SIID_MEDIABDR = 138,
			SIID_MEDIABDRE = 139,
			SIID_CLUSTEREDDRIVE = 140,
			SIID_MAX_ICONS = 181,
		}
		[AllowDuplicates]
		public enum SFBS_FLAGS : int32
		{
			SFBS_FLAGS_ROUND_TO_NEAREST_DISPLAYED_DIGIT = 1,
			SFBS_FLAGS_TRUNCATE_UNDISPLAYED_DECIMAL_DIGITS = 2,
		}
		[AllowDuplicates]
		public enum URL_SCHEME : int32
		{
			URL_SCHEME_INVALID = -1,
			URL_SCHEME_UNKNOWN = 0,
			URL_SCHEME_FTP = 1,
			URL_SCHEME_HTTP = 2,
			URL_SCHEME_GOPHER = 3,
			URL_SCHEME_MAILTO = 4,
			URL_SCHEME_NEWS = 5,
			URL_SCHEME_NNTP = 6,
			URL_SCHEME_TELNET = 7,
			URL_SCHEME_WAIS = 8,
			URL_SCHEME_FILE = 9,
			URL_SCHEME_MK = 10,
			URL_SCHEME_HTTPS = 11,
			URL_SCHEME_SHELL = 12,
			URL_SCHEME_SNEWS = 13,
			URL_SCHEME_LOCAL = 14,
			URL_SCHEME_JAVASCRIPT = 15,
			URL_SCHEME_VBSCRIPT = 16,
			URL_SCHEME_ABOUT = 17,
			URL_SCHEME_RES = 18,
			URL_SCHEME_MSSHELLROOTED = 19,
			URL_SCHEME_MSSHELLIDLIST = 20,
			URL_SCHEME_MSHELP = 21,
			URL_SCHEME_MSSHELLDEVICE = 22,
			URL_SCHEME_WILDCARD = 23,
			URL_SCHEME_SEARCH_MS = 24,
			URL_SCHEME_SEARCH = 25,
			URL_SCHEME_KNOWNFOLDER = 26,
			URL_SCHEME_MAXVALUE = 27,
		}
		[AllowDuplicates]
		public enum URL_PART : int32
		{
			URL_PART_NONE = 0,
			URL_PART_SCHEME = 1,
			URL_PART_HOSTNAME = 2,
			URL_PART_USERNAME = 3,
			URL_PART_PASSWORD = 4,
			URL_PART_PORT = 5,
			URL_PART_QUERY = 6,
		}
		[AllowDuplicates]
		public enum URLIS : int32
		{
			URLIS_URL = 0,
			URLIS_OPAQUE = 1,
			URLIS_NOHISTORY = 2,
			URLIS_FILEURL = 3,
			URLIS_APPLIABLE = 4,
			URLIS_DIRECTORY = 5,
			URLIS_HASQUERY = 6,
		}
		[AllowDuplicates]
		public enum SHREGDEL_FLAGS : int32
		{
			SHREGDEL_DEFAULT = 0,
			SHREGDEL_HKCU = 1,
			SHREGDEL_HKLM = 16,
			SHREGDEL_BOTH = 17,
		}
		[AllowDuplicates]
		public enum SHREGENUM_FLAGS : int32
		{
			SHREGENUM_DEFAULT = 0,
			SHREGENUM_HKCU = 1,
			SHREGENUM_HKLM = 16,
			SHREGENUM_BOTH = 17,
		}
		[AllowDuplicates]
		public enum ASSOCSTR : int32
		{
			ASSOCSTR_COMMAND = 1,
			ASSOCSTR_EXECUTABLE = 2,
			ASSOCSTR_FRIENDLYDOCNAME = 3,
			ASSOCSTR_FRIENDLYAPPNAME = 4,
			ASSOCSTR_NOOPEN = 5,
			ASSOCSTR_SHELLNEWVALUE = 6,
			ASSOCSTR_DDECOMMAND = 7,
			ASSOCSTR_DDEIFEXEC = 8,
			ASSOCSTR_DDEAPPLICATION = 9,
			ASSOCSTR_DDETOPIC = 10,
			ASSOCSTR_INFOTIP = 11,
			ASSOCSTR_QUICKTIP = 12,
			ASSOCSTR_TILEINFO = 13,
			ASSOCSTR_CONTENTTYPE = 14,
			ASSOCSTR_DEFAULTICON = 15,
			ASSOCSTR_SHELLEXTENSION = 16,
			ASSOCSTR_DROPTARGET = 17,
			ASSOCSTR_DELEGATEEXECUTE = 18,
			ASSOCSTR_SUPPORTED_URI_PROTOCOLS = 19,
			ASSOCSTR_PROGID = 20,
			ASSOCSTR_APPID = 21,
			ASSOCSTR_APPPUBLISHER = 22,
			ASSOCSTR_APPICONREFERENCE = 23,
			ASSOCSTR_MAX = 24,
		}
		[AllowDuplicates]
		public enum ASSOCKEY : int32
		{
			ASSOCKEY_SHELLEXECCLASS = 1,
			ASSOCKEY_APP = 2,
			ASSOCKEY_CLASS = 3,
			ASSOCKEY_BASECLASS = 4,
			ASSOCKEY_MAX = 5,
		}
		[AllowDuplicates]
		public enum ASSOCDATA : int32
		{
			ASSOCDATA_MSIDESCRIPTOR = 1,
			ASSOCDATA_NOACTIVATEHANDLER = 2,
			ASSOCDATA_UNUSED1 = 3,
			ASSOCDATA_HASPERUSERASSOC = 4,
			ASSOCDATA_EDITFLAGS = 5,
			ASSOCDATA_VALUE = 6,
			ASSOCDATA_MAX = 7,
		}
		[AllowDuplicates]
		public enum ASSOCENUM : int32
		{
			ASSOCENUM_NONE = 0,
		}
		[AllowDuplicates]
		public enum FILETYPEATTRIBUTEFLAGS : int32
		{
			FTA_None = 0,
			FTA_Exclude = 1,
			FTA_Show = 2,
			FTA_HasExtension = 4,
			FTA_NoEdit = 8,
			FTA_NoRemove = 16,
			FTA_NoNewVerb = 32,
			FTA_NoEditVerb = 64,
			FTA_NoRemoveVerb = 128,
			FTA_NoEditDesc = 256,
			FTA_NoEditIcon = 512,
			FTA_NoEditDflt = 1024,
			FTA_NoEditVerbCmd = 2048,
			FTA_NoEditVerbExe = 4096,
			FTA_NoDDE = 8192,
			FTA_NoEditMIME = 32768,
			FTA_OpenIsSafe = 65536,
			FTA_AlwaysUnsafe = 131072,
			FTA_NoRecentDocs = 1048576,
			FTA_SafeForElevation = 2097152,
			FTA_AlwaysUseDirectInvoke = 4194304,
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
			AIM_DISPLAYNAME = 1,
			AIM_VERSION = 2,
			AIM_PUBLISHER = 4,
			AIM_PRODUCTID = 8,
			AIM_REGISTEREDOWNER = 16,
			AIM_REGISTEREDCOMPANY = 32,
			AIM_LANGUAGE = 64,
			AIM_SUPPORTURL = 128,
			AIM_SUPPORTTELEPHONE = 256,
			AIM_HELPLINK = 512,
			AIM_INSTALLLOCATION = 1024,
			AIM_INSTALLSOURCE = 2048,
			AIM_INSTALLDATE = 4096,
			AIM_CONTACT = 16384,
			AIM_COMMENTS = 32768,
			AIM_IMAGE = 131072,
			AIM_READMEURL = 262144,
			AIM_UPDATEINFOURL = 524288,
		}
		[AllowDuplicates]
		public enum APPACTIONFLAGS : int32
		{
			APPACTION_INSTALL = 1,
			APPACTION_UNINSTALL = 2,
			APPACTION_MODIFY = 4,
			APPACTION_REPAIR = 8,
			APPACTION_UPGRADE = 16,
			APPACTION_CANGETSIZE = 32,
			APPACTION_MODIFYREMOVE = 128,
			APPACTION_ADDLATER = 256,
			APPACTION_UNSCHEDULE = 512,
		}
		[AllowDuplicates]
		public enum PUBAPPINFOFLAGS : int32
		{
			PAI_SOURCE = 1,
			PAI_ASSIGNEDTIME = 2,
			PAI_PUBLISHEDTIME = 4,
			PAI_SCHEDULEDTIME = 8,
			PAI_EXPIRETIME = 16,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_USAGE_SCENARIO : int32
		{
			CPUS_INVALID = 0,
			CPUS_LOGON = 1,
			CPUS_UNLOCK_WORKSTATION = 2,
			CPUS_CHANGE_PASSWORD = 3,
			CPUS_CREDUI = 4,
			CPUS_PLAP = 5,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_TYPE : int32
		{
			CPFT_INVALID = 0,
			CPFT_LARGE_TEXT = 1,
			CPFT_SMALL_TEXT = 2,
			CPFT_COMMAND_LINK = 3,
			CPFT_EDIT_TEXT = 4,
			CPFT_PASSWORD_TEXT = 5,
			CPFT_TILE_IMAGE = 6,
			CPFT_CHECKBOX = 7,
			CPFT_COMBOBOX = 8,
			CPFT_SUBMIT_BUTTON = 9,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_STATE : int32
		{
			CPFS_HIDDEN = 0,
			CPFS_DISPLAY_IN_SELECTED_TILE = 1,
			CPFS_DISPLAY_IN_DESELECTED_TILE = 2,
			CPFS_DISPLAY_IN_BOTH = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE : int32
		{
			CPFIS_NONE = 0,
			CPFIS_READONLY = 1,
			CPFIS_DISABLED = 2,
			CPFIS_FOCUSED = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE : int32
		{
			CPGSR_NO_CREDENTIAL_NOT_FINISHED = 0,
			CPGSR_NO_CREDENTIAL_FINISHED = 1,
			CPGSR_RETURN_CREDENTIAL_FINISHED = 2,
			CPGSR_RETURN_NO_CREDENTIAL_FINISHED = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_STATUS_ICON : int32
		{
			CPSI_NONE = 0,
			CPSI_ERROR = 1,
			CPSI_WARNING = 2,
			CPSI_SUCCESS = 3,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS : int32
		{
			CPAO_NONE = 0,
			CPAO_EMPTY_LOCAL = 1,
			CPAO_EMPTY_CONNECTED = 2,
		}
		[AllowDuplicates]
		public enum CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS : int32
		{
			CPCFO_NONE = 0,
			CPCFO_ENABLE_PASSWORD_REVEAL = 1,
			CPCFO_IS_EMAIL_ADDRESS = 2,
			CPCFO_ENABLE_TOUCH_KEYBOARD_AUTO_INVOKE = 4,
			CPCFO_NUMBERS_ONLY = 8,
			CPCFO_SHOW_ENGLISH_KEYBOARD = 16,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_CAPABILITIES : int32
		{
			SYNCMGR_HCM_NONE = 0,
			SYNCMGR_HCM_PROVIDES_ICON = 1,
			SYNCMGR_HCM_EVENT_STORE = 2,
			SYNCMGR_HCM_CONFLICT_STORE = 4,
			SYNCMGR_HCM_SUPPORTS_CONCURRENT_SESSIONS = 16,
			SYNCMGR_HCM_CAN_BROWSE_CONTENT = 65536,
			SYNCMGR_HCM_CAN_SHOW_SCHEDULE = 131072,
			SYNCMGR_HCM_QUERY_BEFORE_ACTIVATE = 1048576,
			SYNCMGR_HCM_QUERY_BEFORE_DEACTIVATE = 2097152,
			SYNCMGR_HCM_QUERY_BEFORE_ENABLE = 4194304,
			SYNCMGR_HCM_QUERY_BEFORE_DISABLE = 8388608,
			SYNCMGR_HCM_VALID_MASK = 15925271,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_POLICIES : int32
		{
			SYNCMGR_HPM_NONE = 0,
			SYNCMGR_HPM_PREVENT_ACTIVATE = 1,
			SYNCMGR_HPM_PREVENT_DEACTIVATE = 2,
			SYNCMGR_HPM_PREVENT_ENABLE = 4,
			SYNCMGR_HPM_PREVENT_DISABLE = 8,
			SYNCMGR_HPM_PREVENT_START_SYNC = 16,
			SYNCMGR_HPM_PREVENT_STOP_SYNC = 32,
			SYNCMGR_HPM_DISABLE_ENABLE = 256,
			SYNCMGR_HPM_DISABLE_DISABLE = 512,
			SYNCMGR_HPM_DISABLE_START_SYNC = 1024,
			SYNCMGR_HPM_DISABLE_STOP_SYNC = 2048,
			SYNCMGR_HPM_DISABLE_BROWSE = 4096,
			SYNCMGR_HPM_DISABLE_SCHEDULE = 8192,
			SYNCMGR_HPM_HIDDEN_BY_DEFAULT = 65536,
			SYNCMGR_HPM_BACKGROUND_SYNC_ONLY = 48,
			SYNCMGR_HPM_VALID_MASK = 77631,
		}
		[AllowDuplicates]
		public enum SYNCMGR_HANDLER_TYPE : int32
		{
			SYNCMGR_HT_UNSPECIFIED = 0,
			SYNCMGR_HT_APPLICATION = 1,
			SYNCMGR_HT_DEVICE = 2,
			SYNCMGR_HT_FOLDER = 3,
			SYNCMGR_HT_SERVICE = 4,
			SYNCMGR_HT_COMPUTER = 5,
			SYNCMGR_HT_MIN = 0,
			SYNCMGR_HT_MAX = 5,
		}
		[AllowDuplicates]
		public enum SYNCMGR_ITEM_CAPABILITIES : int32
		{
			SYNCMGR_ICM_NONE = 0,
			SYNCMGR_ICM_PROVIDES_ICON = 1,
			SYNCMGR_ICM_EVENT_STORE = 2,
			SYNCMGR_ICM_CONFLICT_STORE = 4,
			SYNCMGR_ICM_CAN_DELETE = 16,
			SYNCMGR_ICM_CAN_BROWSE_CONTENT = 65536,
			SYNCMGR_ICM_QUERY_BEFORE_ENABLE = 1048576,
			SYNCMGR_ICM_QUERY_BEFORE_DISABLE = 2097152,
			SYNCMGR_ICM_QUERY_BEFORE_DELETE = 4194304,
			SYNCMGR_ICM_VALID_MASK = 7405591,
		}
		[AllowDuplicates]
		public enum SYNCMGR_ITEM_POLICIES : int32
		{
			SYNCMGR_IPM_NONE = 0,
			SYNCMGR_IPM_PREVENT_ENABLE = 1,
			SYNCMGR_IPM_PREVENT_DISABLE = 2,
			SYNCMGR_IPM_PREVENT_START_SYNC = 4,
			SYNCMGR_IPM_PREVENT_STOP_SYNC = 8,
			SYNCMGR_IPM_DISABLE_ENABLE = 16,
			SYNCMGR_IPM_DISABLE_DISABLE = 32,
			SYNCMGR_IPM_DISABLE_START_SYNC = 64,
			SYNCMGR_IPM_DISABLE_STOP_SYNC = 128,
			SYNCMGR_IPM_DISABLE_BROWSE = 256,
			SYNCMGR_IPM_DISABLE_DELETE = 512,
			SYNCMGR_IPM_HIDDEN_BY_DEFAULT = 65536,
			SYNCMGR_IPM_VALID_MASK = 66303,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PROGRESS_STATUS : int32
		{
			SYNCMGR_PS_UPDATING = 1,
			SYNCMGR_PS_UPDATING_INDETERMINATE = 2,
			SYNCMGR_PS_SUCCEEDED = 3,
			SYNCMGR_PS_FAILED = 4,
			SYNCMGR_PS_CANCELED = 5,
			SYNCMGR_PS_DISCONNECTED = 6,
			SYNCMGR_PS_MAX = 6,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CANCEL_REQUEST : int32
		{
			SYNCMGR_CR_NONE = 0,
			SYNCMGR_CR_CANCEL_ITEM = 1,
			SYNCMGR_CR_CANCEL_ALL = 2,
			SYNCMGR_CR_MAX = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_EVENT_LEVEL : int32
		{
			SYNCMGR_EL_INFORMATION = 1,
			SYNCMGR_EL_WARNING = 2,
			SYNCMGR_EL_ERROR = 3,
			SYNCMGR_EL_MAX = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGR_EVENT_FLAGS : int32
		{
			SYNCMGR_EF_NONE = 0,
			SYNCMGR_EF_VALID = 0,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CONTROL_FLAGS : int32
		{
			SYNCMGR_CF_NONE = 0,
			SYNCMGR_CF_NOWAIT = 0,
			SYNCMGR_CF_WAIT = 1,
			SYNCMGR_CF_NOUI = 2,
			SYNCMGR_CF_VALID = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGR_SYNC_CONTROL_FLAGS : int32
		{
			SYNCMGR_SCF_NONE = 0,
			SYNCMGR_SCF_IGNORE_IF_ALREADY_SYNCING = 1,
			SYNCMGR_SCF_VALID = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGR_UPDATE_REASON : int32
		{
			SYNCMGR_UR_ADDED = 0,
			SYNCMGR_UR_CHANGED = 1,
			SYNCMGR_UR_REMOVED = 2,
			SYNCMGR_UR_MAX = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_CONFLICT_ITEM_TYPE : int32
		{
			SYNCMGR_CIT_UPDATED = 1,
			SYNCMGR_CIT_DELETED = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_RESOLUTION_ABILITIES : int32
		{
			SYNCMGR_RA_KEEPOTHER = 1,
			SYNCMGR_RA_KEEPRECENT = 2,
			SYNCMGR_RA_REMOVEFROMSYNCSET = 4,
			SYNCMGR_RA_KEEP_SINGLE = 8,
			SYNCMGR_RA_KEEP_MULTIPLE = 16,
			SYNCMGR_RA_VALID = 31,
		}
		[AllowDuplicates]
		public enum SYNCMGR_RESOLUTION_FEEDBACK : int32
		{
			SYNCMGR_RF_CONTINUE = 0,
			SYNCMGR_RF_REFRESH = 1,
			SYNCMGR_RF_CANCEL = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PRESENTER_NEXT_STEP : int32
		{
			SYNCMGR_PNS_CONTINUE = 0,
			SYNCMGR_PNS_DEFAULT = 1,
			SYNCMGR_PNS_CANCEL = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGR_PRESENTER_CHOICE : int32
		{
			SYNCMGR_PC_NO_CHOICE = 0,
			SYNCMGR_PC_KEEP_ONE = 1,
			SYNCMGR_PC_KEEP_MULTIPLE = 2,
			SYNCMGR_PC_KEEP_RECENT = 3,
			SYNCMGR_PC_REMOVE_FROM_SYNC_SET = 4,
			SYNCMGR_PC_SKIP = 5,
		}
		[AllowDuplicates]
		public enum WTS_FLAGS : int32
		{
			WTS_NONE = 0,
			WTS_EXTRACT = 0,
			WTS_INCACHEONLY = 1,
			WTS_FASTEXTRACT = 2,
			WTS_FORCEEXTRACTION = 4,
			WTS_SLOWRECLAIM = 8,
			WTS_EXTRACTDONOTCACHE = 32,
			WTS_SCALETOREQUESTEDSIZE = 64,
			WTS_SKIPFASTEXTRACT = 128,
			WTS_EXTRACTINPROC = 256,
			WTS_CROPTOSQUARE = 512,
			WTS_INSTANCESURROGATE = 1024,
			WTS_REQUIRESURROGATE = 2048,
			WTS_APPSTYLE = 8192,
			WTS_WIDETHUMBNAILS = 16384,
			WTS_IDEALCACHESIZEONLY = 32768,
			WTS_SCALEUP = 65536,
		}
		[AllowDuplicates]
		public enum WTS_CACHEFLAGS : int32
		{
			WTS_DEFAULT = 0,
			WTS_LOWQUALITY = 1,
			WTS_CACHED = 2,
		}
		[AllowDuplicates]
		public enum WTS_CONTEXTFLAGS : int32
		{
			WTSCF_DEFAULT = 0,
			WTSCF_APPSTYLE = 1,
			WTSCF_SQUARE = 2,
			WTSCF_WIDE = 4,
			WTSCF_FAST = 8,
		}
		[AllowDuplicates]
		public enum WTS_ALPHATYPE : int32
		{
			WTSAT_UNKNOWN = 0,
			WTSAT_RGB = 1,
			WTSAT_ARGB = 2,
		}
		[AllowDuplicates]
		public enum SYNCMGRSTATUS : int32
		{
			SYNCMGRSTATUS_STOPPED = 0,
			SYNCMGRSTATUS_SKIPPED = 1,
			SYNCMGRSTATUS_PENDING = 2,
			SYNCMGRSTATUS_UPDATING = 3,
			SYNCMGRSTATUS_SUCCEEDED = 4,
			SYNCMGRSTATUS_FAILED = 5,
			SYNCMGRSTATUS_PAUSED = 6,
			SYNCMGRSTATUS_RESUMING = 7,
			SYNCMGRSTATUS_UPDATING_INDETERMINATE = 8,
			SYNCMGRSTATUS_DELETED = 256,
		}
		[AllowDuplicates]
		public enum SYNCMGRLOGLEVEL : int32
		{
			SYNCMGRLOGLEVEL_INFORMATION = 1,
			SYNCMGRLOGLEVEL_WARNING = 2,
			SYNCMGRLOGLEVEL_ERROR = 3,
			SYNCMGRLOGLEVEL_LOGLEVELMAX = 3,
		}
		[AllowDuplicates]
		public enum SYNCMGRERRORFLAGS : int32
		{
			SYNCMGRERRORFLAG_ENABLEJUMPTEXT = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGRITEMFLAGS : int32
		{
			SYNCMGRITEM_HASPROPERTIES = 1,
			SYNCMGRITEM_TEMPORARY = 2,
			SYNCMGRITEM_ROAMINGUSER = 4,
			SYNCMGRITEM_LASTUPDATETIME = 8,
			SYNCMGRITEM_MAYDELETEITEM = 16,
			SYNCMGRITEM_HIDDEN = 32,
		}
		[AllowDuplicates]
		public enum SYNCMGRFLAG : int32
		{
			SYNCMGRFLAG_CONNECT = 1,
			SYNCMGRFLAG_PENDINGDISCONNECT = 2,
			SYNCMGRFLAG_MANUAL = 3,
			SYNCMGRFLAG_IDLE = 4,
			SYNCMGRFLAG_INVOKE = 5,
			SYNCMGRFLAG_SCHEDULED = 6,
			SYNCMGRFLAG_EVENTMASK = 255,
			SYNCMGRFLAG_SETTINGS = 256,
			SYNCMGRFLAG_MAYBOTHERUSER = 512,
		}
		[AllowDuplicates]
		public enum SYNCMGRHANDLERFLAGS : int32
		{
			SYNCMGRHANDLER_HASPROPERTIES = 1,
			SYNCMGRHANDLER_MAYESTABLISHCONNECTION = 2,
			SYNCMGRHANDLER_ALWAYSLISTHANDLER = 4,
			SYNCMGRHANDLER_HIDDEN = 8,
		}
		[AllowDuplicates]
		public enum SYNCMGRITEMSTATE : int32
		{
			SYNCMGRITEMSTATE_UNCHECKED = 0,
			SYNCMGRITEMSTATE_CHECKED = 1,
		}
		[AllowDuplicates]
		public enum SYNCMGRINVOKEFLAGS : int32
		{
			SYNCMGRINVOKE_STARTSYNC = 2,
			SYNCMGRINVOKE_MINIMIZED = 4,
		}
		[AllowDuplicates]
		public enum SYNCMGRREGISTERFLAGS : int32
		{
			SYNCMGRREGISTERFLAG_CONNECT = 1,
			SYNCMGRREGISTERFLAG_PENDINGDISCONNECT = 2,
			SYNCMGRREGISTERFLAG_IDLE = 4,
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
			TLEF_RELATIVE_INCLUDE_CURRENT = 1,
			TLEF_RELATIVE_BACK = 16,
			TLEF_RELATIVE_FORE = 32,
			TLEF_INCLUDE_UNINVOKEABLE = 64,
			TLEF_ABSOLUTE = 49,
			TLEF_EXCLUDE_SUBFRAME_ENTRIES = 128,
			TLEF_EXCLUDE_ABOUT_PAGES = 256,
		}
		[AllowDuplicates]
		public enum _HLSR_NOREDEF10 : int32
		{
			HLSR_HOME = 0,
			HLSR_SEARCHPAGE = 1,
			HLSR_HISTORYFOLDER = 2,
		}
		[AllowDuplicates]
		public enum _HLSHORTCUTF__NOREDEF10 : int32
		{
			HLSHORTCUTF_DEFAULT = 0,
			HLSHORTCUTF_DONTACTUALLYCREATE = 1,
			HLSHORTCUTF_USEFILENAMEFROMFRIENDLYNAME = 2,
			HLSHORTCUTF_USEUNIQUEFILENAME = 4,
			HLSHORTCUTF_MAYUSEEXISTINGSHORTCUT = 8,
		}
		[AllowDuplicates]
		public enum _HLTRANSLATEF_NOREDEF10 : int32
		{
			HLTRANSLATEF_DEFAULT = 0,
			HLTRANSLATEF_DONTAPPLYDEFAULTPREFIX = 1,
		}
		[AllowDuplicates]
		public enum HLNF : uint32
		{
			HLNF_INTERNALJUMP = 1,
			HLNF_OPENINNEWWINDOW = 2,
			HLNF_NAVIGATINGBACK = 4,
			HLNF_NAVIGATINGFORWARD = 8,
			HLNF_NAVIGATINGTOSTACKITEM = 16,
			HLNF_CREATENOHISTORY = 32,
		}
		[AllowDuplicates]
		public enum HLINKGETREF : int32
		{
			HLINKGETREF_DEFAULT = 0,
			HLINKGETREF_ABSOLUTE = 1,
			HLINKGETREF_RELATIVE = 2,
		}
		[AllowDuplicates]
		public enum HLFNAMEF : uint32
		{
			HLFNAMEF_DEFAULT = 0,
			HLFNAMEF_TRYCACHE = 1,
			HLFNAMEF_TRYPRETTYTARGET = 2,
			HLFNAMEF_TRYFULLTARGET = 4,
			HLFNAMEF_TRYWIN95SHORTCUT = 8,
		}
		[AllowDuplicates]
		public enum HLINKMISC : int32
		{
			HLINKMISC_RELATIVE = 1,
		}
		[AllowDuplicates]
		public enum HLINKSETF : int32
		{
			HLINKSETF_TARGET = 1,
			HLINKSETF_LOCATION = 2,
		}
		[AllowDuplicates]
		public enum HLINKWHICHMK : int32
		{
			HLINKWHICHMK_CONTAINER = 1,
			HLINKWHICHMK_BASE = 2,
		}
		[AllowDuplicates]
		public enum HLTB_INFO : int32
		{
			HLTB_DOCKEDLEFT = 0,
			HLTB_DOCKEDTOP = 1,
			HLTB_DOCKEDRIGHT = 2,
			HLTB_DOCKEDBOTTOM = 3,
			HLTB_FLOATING = 4,
		}
		[AllowDuplicates]
		public enum HLBWIF_FLAGS : uint32
		{
			HLBWIF_HASFRAMEWNDINFO = 1,
			HLBWIF_HASDOCWNDINFO = 2,
			HLBWIF_FRAMEWNDMAXIMIZED = 4,
			HLBWIF_DOCWNDMAXIMIZED = 8,
			HLBWIF_HASWEBTOOLBARINFO = 16,
			HLBWIF_WEBTOOLBARHIDDEN = 32,
		}
		[AllowDuplicates]
		public enum HLID_INFO : uint32
		{
			HLID_INVALID = 0,
			HLID_PREVIOUS = 4294967295,
			HLID_NEXT = 4294967294,
			HLID_CURRENT = 4294967293,
			HLID_STACKBOTTOM = 4294967292,
			HLID_STACKTOP = 4294967291,
		}
		[AllowDuplicates]
		public enum HLQF_INFO : int32
		{
			HLQF_ISVALID = 1,
			HLQF_ISCURRENT = 2,
		}
		[AllowDuplicates]
		public enum BNSTATE : int32
		{
			BNS_NORMAL = 0,
			BNS_BEGIN_NAVIGATE = 1,
			BNS_NAVIGATE = 2,
		}
		[AllowDuplicates]
		public enum SHELLBROWSERSHOWCONTROL : int32
		{
			SBSC_HIDE = 0,
			SBSC_SHOW = 1,
			SBSC_TOGGLE = 2,
			SBSC_QUERY = 3,
		}
		[AllowDuplicates]
		public enum SECURELOCKCODE : int32
		{
			SECURELOCK_NOCHANGE = -1,
			SECURELOCK_SET_UNSECURE = 0,
			SECURELOCK_SET_MIXED = 1,
			SECURELOCK_SET_SECUREUNKNOWNBIT = 2,
			SECURELOCK_SET_SECURE40BIT = 3,
			SECURELOCK_SET_SECURE56BIT = 4,
			SECURELOCK_SET_FORTEZZA = 5,
			SECURELOCK_SET_SECURE128BIT = 6,
			SECURELOCK_FIRSTSUGGEST = 7,
			SECURELOCK_SUGGEST_UNSECURE = 7,
			SECURELOCK_SUGGEST_MIXED = 8,
			SECURELOCK_SUGGEST_SECUREUNKNOWNBIT = 9,
			SECURELOCK_SUGGEST_SECURE40BIT = 10,
			SECURELOCK_SUGGEST_SECURE56BIT = 11,
			SECURELOCK_SUGGEST_FORTEZZA = 12,
			SECURELOCK_SUGGEST_SECURE128BIT = 13,
		}
		[AllowDuplicates]
		public enum IEPDNFLAGS : int32
		{
			IEPDN_BINDINGUI = 1,
		}
		[AllowDuplicates]
		public enum TI_FLAGS : int32
		{
			TI_BITMAP = 1,
			TI_JPEG = 2,
		}
		[AllowDuplicates]
		public enum PATHCCH_OPTIONS : int32
		{
			PATHCCH_NONE = 0,
			PATHCCH_ALLOW_LONG_PATHS = 1,
			PATHCCH_FORCE_ENABLE_LONG_NAME_PROCESS = 2,
			PATHCCH_FORCE_DISABLE_LONG_NAME_PROCESS = 4,
			PATHCCH_DO_NOT_NORMALIZE_SEGMENTS = 8,
			PATHCCH_ENSURE_IS_EXTENDED_LENGTH_PATH = 16,
			PATHCCH_ENSURE_TRAILING_SLASH = 32,
			PATHCCH_CANONICALIZE_SLASHES = 64,
		}
		[AllowDuplicates]
		public enum iurl_seturl_flags : int32
		{
			IURL_SETURL_FL_GUESS_PROTOCOL = 1,
			IURL_SETURL_FL_USE_DEFAULT_PROTOCOL = 2,
		}
		[AllowDuplicates]
		public enum iurl_invokecommand_flags : int32
		{
			IURL_INVOKECOMMAND_FL_ALLOW_UI = 1,
			IURL_INVOKECOMMAND_FL_USE_DEFAULT_VERB = 2,
			IURL_INVOKECOMMAND_FL_DDEWAIT = 4,
			IURL_INVOKECOMMAND_FL_ASYNCOK = 8,
			IURL_INVOKECOMMAND_FL_LOG_USAGE = 16,
		}
		[AllowDuplicates]
		public enum translateurl_in_flags : int32
		{
			TRANSLATEURL_FL_GUESS_PROTOCOL = 1,
			TRANSLATEURL_FL_USE_DEFAULT_PROTOCOL = 2,
		}
		[AllowDuplicates]
		public enum urlassociationdialog_in_flags : int32
		{
			URLASSOCDLG_FL_USE_DEFAULT_NAME = 1,
			URLASSOCDLG_FL_REGISTER_ASSOC = 2,
		}
		[AllowDuplicates]
		public enum mimeassociationdialog_in_flags : int32
		{
			MIMEASSOCDLG_FL_REGISTER_ASSOC = 1,
		}
		
		// --- Function Pointers ---
		
		public function LRESULT SUBCLASSPROC(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, uint uIdSubclass, uint dwRefData);
		public function int32 BFFCALLBACK(HWND hwnd, uint32 uMsg, LPARAM lParam, LPARAM lpData);
		public function HRESULT LPFNDFMCALLBACK(IShellFolder psf, HWND hwnd, IDataObject pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam);
		public function HRESULT LPFNVIEWCALLBACK(IShellView psvOuter, IShellFolder psf, HWND hwndMain, uint32 uMsg, WPARAM wParam, LPARAM lParam);
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
			public IShellView psvPrev;
			public FOLDERSETTINGS* pfs;
			public IShellBrowser psbOwner;
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
			public IUnknown punk;
			public ITEMIDLIST* pidlFolder;
			public ITEMIDLIST* pidlItem;
			public IShellFolder psf;
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
			public IShellItem psi;
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
			public IShellItem psi;
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
			public IShellLinkA psl;
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
			public IShellFolder pshf;
			public IShellView psvOuter;
			public IShellFolderViewCB psfvcb;
		}
		[CRepr]
		public struct DEFCONTEXTMENU
		{
			public HWND hwnd;
			public IContextMenuCB pcmcb;
			public ITEMIDLIST* pidlFolder;
			public IShellFolder psf;
			public uint32 cidl;
			public ITEMIDLIST** apidl;
			public IUnknown punkAssociationInfo;
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
			public IUnknown punkSite;
		}
		[CRepr]
		public struct CSFV
		{
			public uint32 cbSize;
			public IShellFolder pshf;
			public IShellView psvOuter;
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
			public IShellFolder psf;
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
			public IShellItem2 pShellItem;
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
			public ITravelLog _ptl;
			public IHlinkFrame _phlf;
			public IWebBrowser2 _pautoWB2;
			public IExpDispSupportXP _pautoEDS;
			public IShellService _pautoSS;
			public int32 _eSecureLockIcon;
			public uint32 _bitfield;
			public uint32 _uActivateState;
			public ITEMIDLIST* _pidlViewState;
			public IOleCommandTarget _pctView;
			public ITEMIDLIST* _pidlCur;
			public IShellView _psv;
			public IShellFolder _psf;
			public HWND _hwndView;
			public PWSTR _pszTitleCur;
			public ITEMIDLIST* _pidlPending;
			public IShellView _psvPending;
			public IShellFolder _psfPending;
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
			public ITravelLog _ptl;
			public IHlinkFrame _phlf;
			public IWebBrowser2 _pautoWB2;
			public IExpDispSupport _pautoEDS;
			public IShellService _pautoSS;
			public int32 _eSecureLockIcon;
			public uint32 _bitfield;
			public uint32 _uActivateState;
			public ITEMIDLIST* _pidlViewState;
			public IOleCommandTarget _pctView;
			public ITEMIDLIST* _pidlCur;
			public IShellView _psv;
			public IShellFolder _psf;
			public HWND _hwndView;
			public PWSTR _pszTitleCur;
			public ITEMIDLIST* _pidlPending;
			public IShellView _psvPending;
			public IShellFolder _psfPending;
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
			public IDockingWindow ptbar;
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
		
		public struct INotifyReplica {}
		public struct IContextMenu {}
		public struct IContextMenu2 {}
		public struct IContextMenu3 {}
		public struct IExecuteCommand {}
		public struct IPersistFolder {}
		public struct IRunnableTask {}
		public struct IShellTaskScheduler {}
		public struct IPersistFolder2 {}
		public struct IPersistFolder3 {}
		public struct IPersistIDList {}
		public struct IEnumIDList {}
		public struct IEnumFullIDList {}
		public struct IFileSyncMergeHandler {}
		public struct IObjectWithFolderEnumMode {}
		public struct IParseAndCreateItem {}
		public struct IShellFolder {}
		public struct IEnumExtraSearch {}
		public struct IShellFolder2 {}
		public struct IShellView {}
		public struct IShellView2 {}
		public struct IFolderView {}
		public struct IFolderView2 {}
		public struct IFolderViewSettings {}
		public struct IInitializeNetworkFolder {}
		public struct INetworkFolderInternal {}
		public struct IPreviewHandlerVisuals {}
		public struct ICommDlgBrowser {}
		public struct ICommDlgBrowser2 {}
		public struct IColumnManager {}
		public struct IFolderFilterSite {}
		public struct IFolderFilter {}
		public struct IInputObjectSite {}
		public struct IInputObject {}
		public struct IInputObject2 {}
		public struct IShellIcon {}
		public struct IShellBrowser {}
		public struct IProfferService {}
		public struct IGetServiceIds {}
		public struct IShellItem {}
		public struct IShellItem2 {}
		public struct IShellItemImageFactory {}
		public struct IEnumShellItems {}
		public struct ITransferAdviseSink {}
		public struct ITransferSource {}
		public struct IEnumResources {}
		public struct IShellItemResources {}
		public struct ITransferDestination {}
		public struct IFileOperationProgressSink {}
		public struct IShellItemArray {}
		public struct IInitializeWithItem {}
		public struct IObjectWithSelection {}
		public struct IObjectWithBackReferences {}
		public struct ICategoryProvider {}
		public struct ICategorizer {}
		public struct IDropTargetHelper {}
		public struct IDragSourceHelper {}
		public struct IShellLinkA {}
		public struct IShellLinkW {}
		public struct IShellLinkDataList {}
		public struct IResolveShellLink {}
		public struct IActionProgressDialog {}
		public struct IActionProgress {}
		public struct IShellExtInit {}
		public struct IShellPropSheetExt {}
		public struct IRemoteComputer {}
		public struct IQueryContinue {}
		public struct IObjectWithCancelEvent {}
		public struct IUserNotification {}
		public struct IItemNameLimits {}
		public struct ISearchFolderItemFactory {}
		public struct IExtractImage {}
		public struct IExtractImage2 {}
		public struct IThumbnailHandlerFactory {}
		public struct IParentAndItem {}
		public struct IDockingWindow {}
		public struct IDeskBand {}
		public struct IDeskBandInfo {}
		public struct ITaskbarList {}
		public struct ITaskbarList2 {}
		public struct ITaskbarList3 {}
		public struct ITaskbarList4 {}
		public struct IExplorerBrowserEvents {}
		public struct IExplorerBrowser {}
		public struct IEnumObjects {}
		public struct IOperationsProgressDialog {}
		public struct IIOCancelInformation {}
		public struct IFileOperation {}
		public struct IFileOperation2 {}
		public struct IObjectProvider {}
		public struct INamespaceWalkCB {}
		public struct INamespaceWalkCB2 {}
		public struct INamespaceWalk {}
		public struct IBandSite {}
		public struct IModalWindow {}
		public struct IContextMenuSite {}
		public struct IMenuBand {}
		public struct IRegTreeItem {}
		public struct IDeskBar {}
		public struct IMenuPopup {}
		public struct IFileIsInUse {}
		public struct IFileDialogEvents {}
		public struct IFileDialog {}
		public struct IFileSaveDialog {}
		public struct IFileOpenDialog {}
		public struct IFileDialogCustomize {}
		public struct IApplicationAssociationRegistration {}
		public struct IDelegateFolder {}
		public struct IBrowserFrameOptions {}
		public struct INewWindowManager {}
		public struct IAttachmentExecute {}
		public struct IShellMenuCallback {}
		public struct IShellMenu {}
		public struct IKnownFolder {}
		public struct IKnownFolderManager {}
		public struct ISharingConfigurationManager {}
		public struct IRelatedItem {}
		public struct IIdentityName {}
		public struct IDelegateItem {}
		public struct ICurrentItem {}
		public struct ITransferMediumItem {}
		public struct IDisplayItem {}
		public struct IViewStateIdentityItem {}
		public struct IPreviewItem {}
		public struct IDestinationStreamFactory {}
		public struct ICreateProcessInputs {}
		public struct ICreatingProcess {}
		public struct ILaunchUIContext {}
		public struct ILaunchUIContextProvider {}
		public struct INewMenuClient {}
		public struct IInitializeWithBindCtx {}
		public struct IShellItemFilter {}
		public struct INameSpaceTreeControl {}
		public struct INameSpaceTreeControlFolderCapabilities {}
		public struct IPreviewHandler {}
		public struct IPreviewHandlerFrame {}
		public struct IExplorerPaneVisibility {}
		public struct IContextMenuCB {}
		public struct IDefaultExtractIconInit {}
		public struct IExplorerCommand {}
		public struct IExplorerCommandState {}
		public struct IInitializeCommand {}
		public struct IEnumExplorerCommand {}
		public struct IExplorerCommandProvider {}
		public struct IOpenControlPanel {}
		public struct IFileSystemBindData {}
		public struct IFileSystemBindData2 {}
		public struct ICustomDestinationList {}
		public struct IApplicationDestinations {}
		public struct IApplicationDocumentLists {}
		public struct IObjectWithAppUserModelID {}
		public struct IObjectWithProgID {}
		public struct IUpdateIDList {}
		public struct IDesktopWallpaper {}
		public struct IHomeGroup {}
		public struct IInitializeWithPropertyStore {}
		public struct IOpenSearchSource {}
		public struct IShellLibrary {}
		public struct IDefaultFolderMenuInitialize {}
		public struct IApplicationActivationManager {}
		public struct IVirtualDesktopManager {}
		public struct IAssocHandlerInvoker {}
		public struct IAssocHandler {}
		public struct IEnumAssocHandlers {}
		public struct IDataObjectProvider {}
		public struct IDataTransferManagerInterop {}
		public struct IFrameworkInputPaneHandler {}
		public struct IFrameworkInputPane {}
		public struct IAppVisibilityEvents {}
		public struct IAppVisibility {}
		public struct IPackageExecutionStateChangeNotification {}
		public struct IPackageDebugSettings {}
		public struct IPackageDebugSettings2 {}
		public struct ISuspensionDependencyManager {}
		public struct IExecuteCommandApplicationHostEnvironment {}
		public struct IExecuteCommandHost {}
		public struct IApplicationDesignModeSettings {}
		public struct IApplicationDesignModeSettings2 {}
		public struct ILaunchTargetMonitor {}
		public struct ILaunchSourceViewSizePreference {}
		public struct ILaunchTargetViewSizePreference {}
		public struct ILaunchSourceAppUserModelId {}
		public struct IInitializeWithWindow {}
		public struct IHandlerInfo {}
		public struct IHandlerInfo2 {}
		public struct IHandlerActivationHost {}
		public struct IAppActivationUIInfo {}
		public struct IContactManagerInterop {}
		public struct IShellIconOverlayIdentifier {}
		public struct IBannerNotificationHandler {}
		public struct ISortColumnArray {}
		public struct IPropertyKeyStore {}
		public struct IQueryCodePage {}
		public struct IFolderViewOptions {}
		public struct IShellView3 {}
		public struct ISearchBoxInfo {}
		public struct IVisualProperties {}
		public struct ICommDlgBrowser3 {}
		public struct IUserAccountChangeCallback {}
		public struct IStreamAsync {}
		public struct IStreamUnbufferedInfo {}
		public struct IDragSourceHelper2 {}
		public struct IHWEventHandler {}
		public struct IHWEventHandler2 {}
		public struct IQueryCancelAutoPlay {}
		public struct IDynamicHWHandler {}
		public struct IUserNotificationCallback {}
		public struct IUserNotification2 {}
		public struct IDeskBand2 {}
		public struct IStartMenuPinnedList {}
		public struct ICDBurn {}
		public struct IWizardSite {}
		public struct IWizardExtension {}
		public struct IWebWizardExtension {}
		public struct IPublishingWizard {}
		public struct IFolderViewHost {}
		public struct IAccessibleObject {}
		public struct IResultsFolder {}
		public struct IAutoCompleteDropDown {}
		public struct ICDBurnExt {}
		public struct IEnumReadyCallback {}
		public struct IEnumerableView {}
		public struct IInsertItem {}
		public struct IFolderBandPriv {}
		public struct IImageRecompress {}
		public struct IFileDialogControlEvents {}
		public struct IFileDialog2 {}
		public struct IApplicationAssociationRegistrationUI {}
		public struct IShellRunDll {}
		public struct IPreviousVersionsInfo {}
		public struct IUseToBrowseItem {}
		public struct INameSpaceTreeControl2 {}
		public struct INameSpaceTreeControlEvents {}
		public struct INameSpaceTreeControlDropHandler {}
		public struct INameSpaceTreeAccessible {}
		public struct INameSpaceTreeControlCustomDraw {}
		public struct ITrayDeskBand {}
		public struct IBandHost {}
		public struct IComputerInfoChangeNotify {}
		public struct IDesktopGadget {}
		public struct IAccessibilityDockingServiceCallback {}
		public struct IAccessibilityDockingService {}
		public struct IStorageProviderBanners {}
		public struct IStorageProviderCopyHook {}
		public struct IWebBrowser {}
		public struct DWebBrowserEvents {}
		public struct IWebBrowserApp {}
		public struct IWebBrowser2 {}
		public struct DWebBrowserEvents2 {}
		public struct DShellWindowsEvents {}
		public struct IShellWindows {}
		public struct IShellUIHelper {}
		public struct IShellUIHelper2 {}
		public struct IShellUIHelper3 {}
		public struct IShellUIHelper4 {}
		public struct IShellUIHelper5 {}
		public struct IShellUIHelper6 {}
		public struct IShellUIHelper7 {}
		public struct IShellUIHelper8 {}
		public struct IShellUIHelper9 {}
		public struct DShellNameSpaceEvents {}
		public struct IShellFavoritesNameSpace {}
		public struct IShellNameSpace {}
		public struct IScriptErrorList {}
		public struct IFolderViewOC {}
		public struct DShellFolderViewEvents {}
		public struct DFConstraint {}
		public struct FolderItem {}
		public struct FolderItems {}
		public struct FolderItemVerb {}
		public struct FolderItemVerbs {}
		public struct Folder {}
		public struct Folder2 {}
		public struct Folder3 {}
		public struct FolderItem2 {}
		public struct FolderItems2 {}
		public struct FolderItems3 {}
		public struct IShellLinkDual {}
		public struct IShellLinkDual2 {}
		public struct IShellFolderViewDual {}
		public struct IShellFolderViewDual2 {}
		public struct IShellFolderViewDual3 {}
		public struct IShellDispatch {}
		public struct IShellDispatch2 {}
		public struct IShellDispatch3 {}
		public struct IShellDispatch4 {}
		public struct IShellDispatch5 {}
		public struct IShellDispatch6 {}
		public struct IFileSearchBand {}
		public struct IWebWizardHost {}
		public struct IWebWizardHost2 {}
		public struct INewWDEvents {}
		public struct IAutoComplete {}
		public struct IAutoComplete2 {}
		public struct IEnumACString {}
		public struct IDataObjectAsyncCapability {}
		public struct IExtractIconA {}
		public struct IExtractIconW {}
		public struct IShellIconOverlayManager {}
		public struct IShellIconOverlay {}
		public struct IURLSearchHook {}
		public struct ISearchContext {}
		public struct IURLSearchHook2 {}
		public struct IShellDetails {}
		public struct IObjMgr {}
		public struct IACList {}
		public struct IACList2 {}
		public struct IProgressDialog {}
		public struct IDockingWindowSite {}
		public struct IShellChangeNotify {}
		public struct IQueryInfo {}
		public struct IShellFolderViewCB {}
		public struct IShellFolderView {}
		public struct INamedPropertyBag {}
		public struct INewShortcutHookA {}
		public struct INewShortcutHookW {}
		public struct ICopyHookA {}
		public struct ICopyHookW {}
		public struct ICurrentWorkingDirectory {}
		public struct IDockingWindowFrame {}
		public struct IThumbnailCapture {}
		public struct IShellFolderBand {}
		public struct IDeskBarClient {}
		public struct IColumnProvider {}
		public struct IDocViewSite {}
		public struct IInitializeObject {}
		public struct IBanneredBar {}
		public struct IQueryAssociations {}
		public struct IShellApp {}
		public struct IPublishedApp {}
		public struct IPublishedApp2 {}
		public struct IEnumPublishedApps {}
		public struct IAppPublisher {}
		public struct ICredentialProviderCredential {}
		public struct IQueryContinueWithStatus {}
		public struct IConnectableCredentialProviderCredential {}
		public struct ICredentialProviderCredentialEvents {}
		public struct ICredentialProvider {}
		public struct ICredentialProviderEvents {}
		public struct ICredentialProviderFilter {}
		public struct ICredentialProviderCredential2 {}
		public struct ICredentialProviderCredentialWithFieldOptions {}
		public struct ICredentialProviderCredentialEvents2 {}
		public struct ICredentialProviderUser {}
		public struct ICredentialProviderUserArray {}
		public struct ICredentialProviderSetUserArray {}
		public struct ISyncMgrHandlerCollection {}
		public struct ISyncMgrHandler {}
		public struct ISyncMgrHandlerInfo {}
		public struct ISyncMgrSyncItemContainer {}
		public struct ISyncMgrSyncItem {}
		public struct ISyncMgrSyncItemInfo {}
		public struct IEnumSyncMgrSyncItems {}
		public struct ISyncMgrSessionCreator {}
		public struct ISyncMgrSyncCallback {}
		public struct ISyncMgrUIOperation {}
		public struct ISyncMgrEventLinkUIOperation {}
		public struct ISyncMgrScheduleWizardUIOperation {}
		public struct ISyncMgrSyncResult {}
		public struct ISyncMgrControl {}
		public struct ISyncMgrEventStore {}
		public struct ISyncMgrEvent {}
		public struct IEnumSyncMgrEvents {}
		public struct ISyncMgrConflictStore {}
		public struct IEnumSyncMgrConflict {}
		public struct ISyncMgrConflict {}
		public struct ISyncMgrResolutionHandler {}
		public struct ISyncMgrConflictPresenter {}
		public struct ISyncMgrConflictResolveInfo {}
		public struct ISyncMgrConflictFolder {}
		public struct ISyncMgrConflictItems {}
		public struct ISyncMgrConflictResolutionItems {}
		public struct IInputPanelConfiguration {}
		public struct IInputPanelInvocationConfiguration {}
		public struct ISharedBitmap {}
		public struct IThumbnailCache {}
		public struct IThumbnailProvider {}
		public struct IThumbnailSettings {}
		public struct IThumbnailCachePrimer {}
		public struct IShellImageDataFactory {}
		public struct IShellImageData {}
		public struct IShellImageDataAbort {}
		public struct IStorageProviderPropertyHandler {}
		public struct IStorageProviderHandler {}
		public struct ISyncMgrSynchronizeCallback {}
		public struct ISyncMgrEnumItems {}
		public struct ISyncMgrSynchronize {}
		public struct ISyncMgrSynchronizeInvoke {}
		public struct ISyncMgrRegister {}
		public struct IThumbnailStreamCache {}
		public struct ITravelLogEntry {}
		public struct ITravelLogClient {}
		public struct IEnumTravelLogEntry {}
		public struct ITravelLogStg {}
		public struct IHlink {}
		public struct IHlinkSite {}
		public struct IHlinkTarget {}
		public struct IHlinkFrame {}
		public struct IEnumHLITEM {}
		public struct IHlinkBrowseContext {}
		public struct IExtensionServices {}
		public struct ITravelEntry {}
		public struct ITravelLog {}
		public struct CIE4ConnectionPoint {}
		public struct IExpDispSupportXP {}
		public struct IExpDispSupport {}
		public struct IBrowserService {}
		public struct IShellService {}
		public struct IBrowserService2 {}
		public struct IBrowserService3 {}
		public struct IBrowserService4 {}
		public struct ITrackShellMenu {}
		public struct ITranscodeImage {}
		public struct IUniformResourceLocatorA {}
		public struct IUniformResourceLocatorW {}
		public struct IInputPaneAnimationCoordinator {}
		
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
		public static extern HRESULT SHCreateItemFromParsingName(PWSTR pszPath, IBindCtx pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemWithParent(ITEMIDLIST* pidlParent, IShellFolder psfParent, ITEMIDLIST* pidl, Guid* riid, void** ppvItem);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemFromRelativeName(IShellItem psiParent, PWSTR pszName, IBindCtx pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateItemInKnownFolder(Guid* kfid, uint32 dwKFFlags, PWSTR pszItem, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetIDListFromObject(IUnknown punk, ITEMIDLIST** ppidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetItemFromObject(IUnknown punk, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetNameFromIDList(ITEMIDLIST* pidl, SIGDN sigdnName, PWSTR* ppszName);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetItemFromDataObject(IDataObject pdtobj, DATAOBJ_GET_ITEM_FLAGS dwFlags, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArray(ITEMIDLIST* pidlParent, IShellFolder psf, uint32 cidl, ITEMIDLIST** ppidl, IShellItemArray* ppsiItemArray);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromDataObject(IDataObject pdo, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromIDLists(uint32 cidl, ITEMIDLIST** rgpidl, IShellItemArray* ppsiItemArray);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellItemArrayFromShellItem(IShellItem psi, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateAssociationRegistration(Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDefaultExtractIcon(Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetCurrentProcessExplicitAppUserModelID(PWSTR AppID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCurrentProcessExplicitAppUserModelID(PWSTR* AppID);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetTemporaryPropertyForItem(IShellItem psi, PROPERTYKEY* propkey, PROPVARIANT* ppropvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetTemporaryPropertyForItem(IShellItem psi, PROPERTYKEY* propkey, PROPVARIANT* propvar);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHShowManageLibraryUI(IShellItem psiLibrary, HWND hwndOwner, PWSTR pszTitle, PWSTR pszInstruction, LIBRARYMANAGEDIALOGOPTIONS lmdOptions);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHResolveLibrary(IShellItem psiLibrary);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHAssocEnumHandlers(PWSTR pszExtra, ASSOC_FILTER afFilter, IEnumAssocHandlers* ppEnumHandler);
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
		public static extern HRESULT SHCreateDefaultPropertiesOp(IShellItem psi, IFileOperation* ppFileOp);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetDefaultProperties(HWND hwnd, IShellItem psi, uint32 dwFileOpFlags, IFileOperationProgressSink pfops);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetMalloc(IMalloc* ppMalloc);
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
		public static extern HRESULT ILSaveToStream(IStream pstm, ITEMIDLIST* pidl);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ILLoadFromStreamEx(IStream pstm, ITEMIDLIST** pidl);
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
		public static extern HRESULT SHCreateShellItem(ITEMIDLIST* pidlParent, IShellFolder psfParent, ITEMIDLIST* pidl, IShellItem* ppsi);
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
		public static extern HRESULT SHGetDesktopFolder(IShellFolder* ppshf);
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
		public static extern HRESULT SHGetRealIDL(IShellFolder psf, ITEMIDLIST* pidlSimple, ITEMIDLIST** ppidlReal);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetInstanceExplorer(IUnknown* ppunk);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDataFromIDListA(IShellFolder psf, ITEMIDLIST* pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetDataFromIDListW(IShellFolder psf, ITEMIDLIST* pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RestartDialog(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 RestartDialogEx(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn, uint32 dwReasonCode);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCoCreateInstance(PWSTR pszCLSID, Guid* pclsid, IUnknown pUnkOuter, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDataObject(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, IDataObject pdtInner, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CIDLData_CreateFromIDArray(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, IDataObject* ppdtobj);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStdEnumFmtEtc(uint32 cfmt, FORMATETC* afmt, IEnumFORMATETC* ppenumFormatEtc);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHDoDragDrop(HWND hwnd, IDataObject pdata, IDropSource pdsrc, uint32 dwEffect, uint32* pdwEffect);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_SetDragImage(HIMAGELIST him, POINT* pptOffset);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragEnterEx(HWND hwndTarget, POINT ptStart);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DAD_DragEnterEx2(HWND hwndTarget, POINT ptStart, IDataObject pdtObject);
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
		public static extern IStream OpenRegStream(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
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
		public static extern HRESULT AssocGetDetailsOfPropKey(IShellFolder psf, ITEMIDLIST* pidl, PROPERTYKEY* pkey, VARIANT* pv, BOOL* pfFoundPropKey);
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
		public static extern void SHSetInstanceExplorer(IUnknown punk);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL IsUserAnAdmin();
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern LRESULT SHShellFolderView_Message(HWND hwndMain, uint32 uMsg, LPARAM lParam);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellFolderView(SFV_CREATE* pcsfv, IShellView* ppsv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CDefFolderMenu_Create2(ITEMIDLIST* pidlFolder, HWND hwnd, uint32 cidl, ITEMIDLIST** apidl, IShellFolder psf, LPFNDFMCALLBACK pfn, uint32 nKeys, HKEY* ahkeys, IContextMenu* ppcm);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateDefaultContextMenu(DEFCONTEXTMENU* pdcm, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern IContextMenu SHFind_InitMenuPopup(HMENU hmenu, HWND hwndOwner, uint32 idCmdFirst, uint32 idCmdLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateShellFolderViewEx(CSFV* pcsfv, IShellView* ppsv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHGetSetSettings(SHELLSTATEA* lpss, SSF_MASK dwMask, BOOL bSet);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void SHGetSettings(SHELLFLAGSTATE* psfs, uint32 dwMask);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToParent(ITEMIDLIST* pidl, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToFolderIDListParent(IShellFolder psfRoot, ITEMIDLIST* pidl, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToFolderIDListParentEx(IShellFolder psfRoot, ITEMIDLIST* pidl, IBindCtx ppbc, Guid* riid, void** ppv, ITEMIDLIST** ppidlLast);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHBindToObject(IShellFolder psf, ITEMIDLIST* pidl, IBindCtx pbc, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHParseDisplayName(PWSTR pszName, IBindCtx pbc, ITEMIDLIST** ppidl, uint32 sfgaoIn, uint32* psfgaoOut);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPathPrepareForWriteA(HWND hwnd, IUnknown punkEnableModless, PSTR pszPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHPathPrepareForWriteW(HWND hwnd, IUnknown punkEnableModless, PWSTR pszPath, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateFileExtractIconW(PWSTR pszFile, uint32 dwFileAttributes, Guid* riid, void** ppv);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHLimitInputEdit(HWND hwndEdit, IShellFolder psf);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetAttributesFromDataObject(IDataObject pdo, uint32 dwAttributeMask, uint32* pdwAttributes, uint32* pcItems);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 SHMapPIDLToSystemImageListIndex(IShellFolder pshf, ITEMIDLIST* pidl, int32* piIndexSel);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCLSIDFromString(PWSTR psz, Guid* pclsid);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 PickIconDlg(HWND hwnd, char16* pszIconPath, uint32 cchIconPath, int32* piIconIndex);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StgMakeUniqueName(IStorage pstgParent, PWSTR pszFileSpec, uint32 grfMode, Guid* riid, void** ppv);
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
		public static extern BOOL SHOpenPropSheetW(PWSTR pszCaption, HKEY* ahkeys, uint32 ckeys, Guid* pclsidDefault, IDataObject pdtobj, IShellBrowser psb, PWSTR pStartPage);
		[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SoftwareUpdateMessageBox(HWND hWnd, PWSTR pszDistUnit, uint32 dwFlags, SOFTDISTINFO* psdi);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHMultiFileProperties(IDataObject pdtobj, uint32 dwFlags);
		[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateQueryCancelAutoPlayMoniker(IMoniker* ppmoniker);
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
		public static extern IStream SHOpenRegStreamA(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream SHOpenRegStreamW(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream SHOpenRegStream2A(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream SHOpenRegStream2W(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileA(PSTR pszFile, uint32 grfMode, IStream* ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileW(PWSTR pszFile, uint32 grfMode, IStream* ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHCreateStreamOnFileEx(PWSTR pszFile, uint32 grfMode, uint32 dwAttributes, BOOL fCreate, IStream pstmTemplate, IStream* ppstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IStream SHCreateMemStream(uint8* pInit, uint32 cbInit);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAcceptLanguagesA(uint8* pszLanguages, uint32* pcchLanguages);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetAcceptLanguagesW(char16* pszLanguages, uint32* pcchLanguages);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void IUnknown_Set(IUnknown* ppunk, IUnknown punk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void IUnknown_AtomicRelease(void** ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_GetWindow(IUnknown punk, HWND* phwnd);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_SetSite(IUnknown punk, IUnknown punkSite);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_GetSite(IUnknown punk, Guid* riid, void** ppv);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IUnknown_QueryService(IUnknown punk, Guid* guidService, Guid* riid, void** ppvOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Read(IStream pstm, void* pv, uint32 cb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Write(IStream pstm, void* pv, uint32 cb);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Reset(IStream pstm);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Size(IStream pstm, ULARGE_INTEGER* pui);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ConnectToConnectionPoint(IUnknown punk, Guid* riidEvent, BOOL fConnect, IUnknown punkTarget, uint32* pdwCookie, IConnectionPoint* ppcpOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_ReadPidl(IStream pstm, ITEMIDLIST** ppidlOut);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_WritePidl(IStream pstm, ITEMIDLIST* pidlWrite);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_ReadStr(IStream pstm, PWSTR* ppsz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_WriteStr(IStream pstm, PWSTR psz);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT IStream_Copy(IStream pstmFrom, IStream pstmTo, uint32 cb);
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
		public static extern HRESULT SHCreateThreadRef(int32* pcRef, IUnknown* ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHSetThreadRef(IUnknown punk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SHGetThreadRef(IUnknown* ppunk);
		[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SHSkipJunction(IBindCtx pbc, Guid* pclsid);
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
		public static extern HRESULT HlinkCreateFromMoniker(IMoniker pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName, IHlinkSite pihlsite, uint32 dwSiteData, IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateFromString(PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, IHlinkSite pihlsite, uint32 dwSiteData, IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateFromData(IDataObject piDataObj, IHlinkSite pihlsite, uint32 dwSiteData, IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkQueryCreateFromData(IDataObject piDataObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkClone(IHlink pihl, Guid* riid, IHlinkSite pihlsiteForClone, uint32 dwSiteData, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateBrowseContext(IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigateToStringReference(PWSTR pwzTarget, PWSTR pwzLocation, IHlinkSite pihlsite, uint32 dwSiteData, IHlinkFrame pihlframe, uint32 grfHLNF, IBindCtx pibc, IBindStatusCallback pibsc, IHlinkBrowseContext pihlbc);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkNavigate(IHlink pihl, IHlinkFrame pihlframe, uint32 grfHLNF, IBindCtx pbc, IBindStatusCallback pibsc, IHlinkBrowseContext pihlbc);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkOnNavigate(IHlinkFrame pihlframe, IHlinkBrowseContext pihlbc, uint32 grfHLNF, IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32* puHLID);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkUpdateStackItem(IHlinkFrame pihlframe, IHlinkBrowseContext pihlbc, uint32 uHLID, IMoniker pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkOnRenameDocument(uint32 dwReserved, IHlinkBrowseContext pihlbc, IMoniker pimkOld, IMoniker pimkNew);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveMonikerForData(IMoniker pimkReference, uint32 reserved, IBindCtx pibc, uint32 cFmtetc, FORMATETC* rgFmtetc, IBindStatusCallback pibsc, IMoniker pimkBase);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveStringForData(PWSTR pwzReference, uint32 reserved, IBindCtx pibc, uint32 cFmtetc, FORMATETC* rgFmtetc, IBindStatusCallback pibsc, IMoniker pimkBase);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkParseDisplayName(IBindCtx pibc, PWSTR pwzDisplayName, BOOL fNoForceAbs, uint32* pcchEaten, IMoniker* ppimk);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateExtensionServices(PWSTR pwzAdditionalHeaders, HWND phwnd, PWSTR pszUsername, PWSTR pszPassword, IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkPreprocessMoniker(IBindCtx pibc, IMoniker pimkIn, IMoniker* ppimkOut);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT OleSaveToStreamEx(IUnknown piunk, IStream pistm, BOOL fClearDirty);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkSetSpecialReference(uint32 uReference, PWSTR pwzReference);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkGetSpecialReference(uint32 uReference, PWSTR* ppwzReference);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcut(uint32 grfHLSHORTCUTF, IHlink pihl, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcutFromMoniker(uint32 grfHLSHORTCUTF, IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkCreateShortcutFromString(uint32 grfHLSHORTCUTF, PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, PWSTR* ppwzShortcutFile, uint32 dwReserved);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveShortcut(PWSTR pwzShortcutFileName, IHlinkSite pihlsite, uint32 dwSiteData, IUnknown piunkOuter, Guid* riid, void** ppvObj);
		[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT HlinkResolveShortcutToMoniker(PWSTR pwzShortcutFileName, IMoniker* ppimkTarget, PWSTR* ppwzLocation);
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
