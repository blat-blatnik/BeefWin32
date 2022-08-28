namespace Win32.UI.Shell;

using System;
using Win32.Data.Xml.MsXml;
using Win32.Foundation;
using Win32.Graphics.DirectComposition;
using Win32.Graphics.Gdi;
using Win32.NetworkManagement.WNet;
using Win32.Security;
using Win32.Storage.FileSystem;
using Win32.System.Com;
using Win32.System.Com.StructuredStorage;
using Win32.System.Com.Urlmon;
using Win32.System.Console;
using Win32.System.IO;
using Win32.System.Ole;
using Win32.System.Registry;
using Win32.System.Search;
using Win32.System.Threading;
using Win32.UI.Controls;
using Win32.UI.Shell.Common;
using Win32.UI.Shell.PropertiesSystem;
using Win32.UI.WindowsAndMessaging;

static
{
	#region Constants
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
	#endregion
	
	#region Typedefs
	public typealias ShFindChangeNotificationHandle = int;
	public typealias HDROP = int;
	public typealias HPSXA = int;
	#endregion
	
	#region Enums
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
		QITIPF_DEFAULT = 0,
		QITIPF_USENAME = 1,
		QITIPF_LINKNOTARGET = 2,
		QITIPF_LINKUSETARGET = 4,
		QITIPF_USESLOWTIP = 8,
		QITIPF_SINGLELINE = 16,
		QIF_CACHED = 1,
		QIF_DONTEXPANDFOLDER = 2,
	}
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
	public enum SHGDFIL_FORMAT : int32
	{
		FINDDATA = 1,
		NETRESOURCE = 2,
		DESCRIPTIONID = 3,
	}
	public enum PRF_FLAGS : int32
	{
		VERIFYEXISTS = 1,
		TRYPROGRAMEXTENSIONS = 3,
		FIRSTDIRDEF = 4,
		DONTFINDLNK = 8,
		REQUIREABSOLUTE = 16,
	}
	public enum PCS_RET : uint32
	{
		FATAL = 2147483648,
		REPLACEDCHAR = 1,
		REMOVEDCHAR = 2,
		TRUNCATED = 4,
		PATHTOOLONG = 8,
	}
	public enum MM_FLAGS : uint32
	{
		ADDSEPARATOR = 1,
		SUBMENUSHAVEIDS = 2,
		DONTREMOVESEPS = 4,
	}
	public enum SHOP_TYPE : int32
	{
		PRINTERNAME = 1,
		FILEPATH = 2,
		VOLUMEGUID = 4,
	}
	public enum SHFMT_ID : uint32
	{
		ID_DEFAULT = 65535,
	}
	public enum SHFMT_OPT : int32
	{
		NONE = 0,
		FULL = 1,
		SYSONLY = 2,
	}
	public enum SHFMT_RET : uint32
	{
		ERROR = 4294967295,
		CANCEL = 4294967294,
		NOFORMAT = 4294967293,
	}
	public enum VALIDATEUNC_OPTION : int32
	{
		CONNECT = 1,
		NOUI = 2,
		PRINT = 4,
		PERSIST = 8,
		VALID = 15,
	}
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
	public enum SFVS_SELECT : int32
	{
		NONE = 0,
		ALLITEMS = 1,
		INVERT = 2,
	}
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
	public enum PIDISF_FLAGS : int32
	{
		RECENTLYCHANGED = 1,
		CACHEDSTICKY = 2,
		CACHEIMAGES = 16,
		FOLLOWALLLINKS = 32,
	}
	public enum PIDISM_OPTIONS : int32
	{
		GLOBAL = 0,
		WATCH = 1,
		DONTWATCH = 2,
	}
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
	public enum NOTIFY_ICON_MESSAGE : uint32
	{
		ADD = 0,
		MODIFY = 1,
		DELETE = 2,
		SETFOCUS = 3,
		SETVERSION = 4,
	}
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
	public enum _SHGDNF : int32
	{
		NORMAL = 0,
		INFOLDER = 1,
		FOREDITING = 4096,
		FORADDRESSBAR = 16384,
		FORPARSING = 32768,
	}
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
	public enum STORAGE_PROVIDER_FILE_FLAGS : int32
	{
		NONE = 0,
		DOWNLOAD_BY_DEFAULT = 1,
		CREATED_ON_THIS_DEVICE = 2,
	}
	public enum MERGE_UPDATE_STATUS : int32
	{
		COMPLETE = 0,
		USERINPUTNEEDED = 1,
		FAILED = 2,
	}
	public enum FOLDER_ENUM_MODE : int32
	{
		VIEWRESULT = 0,
		NAVIGATION = 1,
	}
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
	public enum _SVGIO : int32
	{
		BACKGROUND = 0,
		SELECTION = 1,
		ALLVIEW = 2,
		CHECKED = 3,
		TYPE_MASK = 15,
		FLAG_VIEWORDER = -2147483648,
	}
	public enum SVUIA_STATUS : int32
	{
		DEACTIVATE = 0,
		ACTIVATE_NOFOCUS = 1,
		ACTIVATE_FOCUS = 2,
		INPLACEACTIVATE = 3,
	}
	public enum SORTDIRECTION : int32
	{
		DESCENDING = -1,
		ASCENDING = 1,
	}
	public enum FVTEXTTYPE : int32
	{
		FVST_EMPTYTEXT = 0,
	}
	public enum CM_MASK : int32
	{
		WIDTH = 1,
		DEFAULTWIDTH = 2,
		IDEALWIDTH = 4,
		NAME = 8,
		STATE = 16,
	}
	public enum CM_STATE : int32
	{
		NONE = 0,
		VISIBLE = 1,
		FIXEDWIDTH = 2,
		NOSORTBYFOLDERNESS = 4,
		ALWAYSVISIBLE = 8,
	}
	public enum CM_ENUM_FLAGS : int32
	{
		ALL = 1,
		VISIBLE = 2,
	}
	public enum CM_SET_WIDTH_VALUE : int32
	{
		USEDEFAULT = -1,
		AUTOSIZE = -2,
	}
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
	public enum _SICHINTF : int32
	{
		DISPLAY = 0,
		ALLFIELDS = -2147483648,
		CANONICAL = 268435456,
		TEST_FILESYSPATH_IF_NOT_EQUAL = 536870912,
	}
	public enum DATAOBJ_GET_ITEM_FLAGS : int32
	{
		DEFAULT = 0,
		TRAVERSE_LINK = 1,
		NO_HDROP = 2,
		NO_URL = 4,
		ONLY_IF_ONE = 8,
	}
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
	public enum CATSORT_FLAGS : int32
	{
		DEFAULT = 0,
		NAME = 1,
	}
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
	public enum SLGP_FLAGS : int32
	{
		SHORTPATH = 1,
		UNCPRIORITY = 2,
		RAWPATH = 4,
		RELATIVEPRIORITY = 8,
	}
	public enum _SPINITF : int32
	{
		NORMAL = 0,
		MODAL = 1,
		NOMINIMIZE = 8,
	}
	public enum _SPBEGINF : int32
	{
		NORMAL = 0,
		AUTOTIME = 2,
		NOPROGRESSBAR = 16,
		MARQUEEPROGRESS = 32,
		NOCANCELBUTTON = 64,
	}
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
	public enum SPTEXT : int32
	{
		ACTIONDESCRIPTION = 1,
		ACTIONDETAIL = 2,
	}
	public enum _EXPPS : int32
	{
		EXPPS_FILETYPES = 1,
	}
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
	public enum THUMBBUTTONFLAGS : int32
	{
		ENABLED = 0,
		DISABLED = 1,
		DISMISSONCLICK = 2,
		NOBACKGROUND = 4,
		HIDDEN = 8,
		NONINTERACTIVE = 16,
	}
	public enum THUMBBUTTONMASK : int32
	{
		BITMAP = 1,
		ICON = 2,
		TOOLTIP = 4,
		FLAGS = 8,
	}
	public enum TBPFLAG : int32
	{
		NOPROGRESS = 0,
		INDETERMINATE = 1,
		NORMAL = 2,
		ERROR = 4,
		PAUSED = 8,
	}
	public enum STPFLAG : int32
	{
		NONE = 0,
		USEAPPTHUMBNAILALWAYS = 1,
		USEAPPTHUMBNAILWHENACTIVE = 2,
		USEAPPPEEKALWAYS = 4,
		USEAPPPEEKWHENACTIVE = 8,
	}
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
	public enum EXPLORER_BROWSER_FILL_FLAGS : int32
	{
		NONE = 0,
		SELECTFROMDATAOBJECT = 256,
		NODROPTARGET = 512,
	}
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
	public enum _PDMODE : int32
	{
		DEFAULT = 0,
		RUN = 1,
		PREFLIGHT = 2,
		UNDOING = 4,
		ERRORSBLOCKING = 8,
		INDETERMINATE = 16,
	}
	public enum FILE_OPERATION_FLAGS2 : int32
	{
		NONE = 0,
		MERGEFOLDERSONCOLLISION = 1,
	}
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
	public enum BANDSITECID : int32
	{
		BANDADDED = 0,
		BANDREMOVED = 1,
	}
	public enum MENUBANDHANDLERCID : int32
	{
		MBHANDCID_PIDLSELECT = 0,
	}
	public enum MENUPOPUPSELECT : int32
	{
		EXECUTE = 0,
		FULLCANCEL = 1,
		CANCELLEVEL = 2,
		SELECTLEFT = 3,
		SELECTRIGHT = 4,
		CHILDTRACKING = 5,
	}
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
	public enum FILE_USAGE_TYPE : int32
	{
		PLAYING = 0,
		EDITING = 1,
		GENERIC = 2,
	}
	public enum FDE_OVERWRITE_RESPONSE : int32
	{
		DEFAULT = 0,
		ACCEPT = 1,
		REFUSE = 2,
	}
	public enum FDE_SHAREVIOLATION_RESPONSE : int32
	{
		DEFAULT = 0,
		ACCEPT = 1,
		REFUSE = 2,
	}
	public enum FDAP : int32
	{
		BOTTOM = 0,
		TOP = 1,
	}
	public enum FILEOPENDIALOGOPTIONS : int32
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
	public enum CDCONTROLSTATEF : int32
	{
		INACTIVE = 0,
		ENABLED = 1,
		VISIBLE = 2,
		ENABLEDVISIBLE = 3,
	}
	public enum ASSOCIATIONLEVEL : int32
	{
		MACHINE = 0,
		EFFECTIVE = 1,
		USER = 2,
	}
	public enum ASSOCIATIONTYPE : int32
	{
		FILEEXTENSION = 0,
		URLPROTOCOL = 1,
		STARTMENUCLIENT = 2,
		MIMETYPE = 3,
	}
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
	public enum ATTACHMENT_PROMPT : int32
	{
		NONE = 0,
		SAVE = 1,
		EXEC = 2,
		EXEC_OR_SAVE = 3,
	}
	public enum ATTACHMENT_ACTION : int32
	{
		CANCEL = 0,
		SAVE = 1,
		EXEC = 2,
	}
	public enum SMINFOMASK : int32
	{
		TYPE = 1,
		FLAGS = 2,
		ICON = 4,
	}
	public enum SMINFOTYPE : int32
	{
		SEPARATOR = 1,
		STRING = 2,
	}
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
	public enum KF_CATEGORY : int32
	{
		VIRTUAL = 1,
		FIXED = 2,
		COMMON = 3,
		PERUSER = 4,
	}
	public enum _KF_DEFINITION_FLAGS : int32
	{
		LOCAL_REDIRECT_ONLY = 2,
		ROAMABLE = 4,
		PRECREATE = 8,
		STREAM = 16,
		PUBLISHEXPANDEDPATH = 32,
		NO_REDIRECT_UI = 64,
	}
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
	public enum _KF_REDIRECTION_CAPABILITIES : int32
	{
		ALLOW_ALL = 255,
		REDIRECTABLE = 1,
		DENY_ALL = 1048320,
		DENY_POLICY_REDIRECTED = 256,
		DENY_POLICY = 512,
		DENY_PERMISSIONS = 1024,
	}
	public enum FFFP_MODE : int32
	{
		EXACTMATCH = 0,
		NEARESTPARENTMATCH = 1,
	}
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
	public enum DEF_SHARE_ID : int32
	{
		USERS = 1,
		PUBLIC = 2,
	}
	public enum _NMCII_FLAGS : int32
	{
		NONE = 0,
		ITEMS = 1,
		FOLDERS = 2,
	}
	public enum _NMCSAEI_FLAGS : int32
	{
		SELECT = 0,
		EDIT = 1,
	}
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
	public enum _NSTCROOTSTYLE : int32
	{
		VISIBLE = 0,
		HIDDEN = 1,
		EXPANDED = 2,
	}
	public enum _NSTCITEMSTATE : int32
	{
		NONE = 0,
		SELECTED = 1,
		EXPANDED = 2,
		BOLD = 4,
		DISABLED = 8,
		SELECTEDNOEXPAND = 16,
	}
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
	public enum NSTCFOLDERCAPABILITIES : int32
	{
		NONE = 0,
		PINNEDITEMFILTERING = 1,
		DELAY_REGISTER_NOTIFY = 2,
	}
	public enum _EXPLORERPANESTATE : int32
	{
		DONTCARE = 0,
		DEFAULT_ON = 1,
		DEFAULT_OFF = 2,
		STATEMASK = 65535,
		INITIALSTATE = 65536,
		FORCE = 131072,
	}
	public enum _EXPCMDSTATE : int32
	{
		ENABLED = 0,
		DISABLED = 1,
		HIDDEN = 2,
		CHECKBOX = 4,
		CHECKED = 8,
		RADIOCHECK = 16,
	}
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
	public enum KNOWNDESTCATEGORY : int32
	{
		FREQUENT = 1,
		RECENT = 2,
	}
	public enum APPDOCLISTTYPE : int32
	{
		RECENT = 0,
		FREQUENT = 1,
	}
	public enum DESKTOP_SLIDESHOW_OPTIONS : int32
	{
		DSO_SHUFFLEIMAGES = 1,
	}
	public enum DESKTOP_SLIDESHOW_STATE : int32
	{
		ENABLED = 1,
		SLIDESHOW = 2,
		DISABLED_BY_REMOTE_SESSION = 4,
	}
	public enum DESKTOP_SLIDESHOW_DIRECTION : int32
	{
		FORWARD = 0,
		BACKWARD = 1,
	}
	public enum DESKTOP_WALLPAPER_POSITION : int32
	{
		CENTER = 0,
		TILE = 1,
		STRETCH = 2,
		FIT = 3,
		FILL = 4,
		SPAN = 5,
	}
	public enum HOMEGROUPSHARINGCHOICES : int32
	{
		NONE = 0,
		MUSICLIBRARY = 1,
		PICTURESLIBRARY = 2,
		VIDEOSLIBRARY = 4,
		DOCUMENTSLIBRARY = 8,
		PRINTERS = 16,
	}
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
	public enum DEFAULTSAVEFOLDERTYPE : int32
	{
		DETECT = 1,
		PRIVATE = 2,
		PUBLIC = 3,
	}
	public enum LIBRARYSAVEFLAGS : int32
	{
		FAILIFTHERE = 0,
		OVERRIDEEXISTING = 1,
		MAKEUNIQUENAME = 2,
	}
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
	public enum ACTIVATEOPTIONS : int32
	{
		NONE = 0,
		DESIGNMODE = 1,
		NOERRORUI = 2,
		NOSPLASHSCREEN = 4,
		PRELAUNCH = 33554432,
	}
	public enum LIBRARYMANAGEDIALOGOPTIONS : int32
	{
		DEFAULT = 0,
		ALLOWUNINDEXABLENETWORKLOCATIONS = 1,
	}
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
	public enum ASSOC_FILTER : int32
	{
		NONE = 0,
		RECOMMENDED = 1,
	}
	public enum MONITOR_APP_VISIBILITY : int32
	{
		UNKNOWN = 0,
		NO_APP_VISIBLE = 1,
		APP_VISIBLE = 2,
	}
	public enum PACKAGE_EXECUTION_STATE : int32
	{
		UNKNOWN = 0,
		RUNNING = 1,
		SUSPENDING = 2,
		SUSPENDED = 3,
		TERMINATED = 4,
	}
	public enum AHE_TYPE : int32
	{
		DESKTOP = 0,
		IMMERSIVE = 1,
	}
	public enum EC_HOST_UI_MODE : int32
	{
		DESKTOP = 0,
		IMMERSIVE = 1,
		SYSTEM_LAUNCHER = 2,
	}
	public enum APPLICATION_VIEW_STATE : int32
	{
		FULLSCREEN_LANDSCAPE = 0,
		FILLED = 1,
		SNAPPED = 2,
		FULLSCREEN_PORTRAIT = 3,
	}
	public enum EDGE_GESTURE_KIND : int32
	{
		TOUCH = 0,
		KEYBOARD = 1,
		MOUSE = 2,
	}
	public enum NATIVE_DISPLAY_ORIENTATION : int32
	{
		LANDSCAPE = 0,
		PORTRAIT = 1,
	}
	public enum APPLICATION_VIEW_ORIENTATION : int32
	{
		LANDSCAPE = 0,
		PORTRAIT = 1,
	}
	public enum ADJACENT_DISPLAY_EDGES : int32
	{
		NONE = 0,
		LEFT = 1,
		RIGHT = 2,
	}
	public enum APPLICATION_VIEW_MIN_WIDTH : int32
	{
		DEFAULT = 0,
		_320 = 1,
		_500 = 2,
	}
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
	public enum FLYOUT_PLACEMENT : int32
	{
		DEFAULT = 0,
		ABOVE = 1,
		BELOW = 2,
		LEFT = 3,
		RIGHT = 4,
	}
	public enum BANNER_NOTIFICATION_EVENT : int32
	{
		Rendered = 0,
		Hovered = 1,
		Closed = 2,
		Dismissed = 3,
		Button1Clicked = 4,
		Button2Clicked = 5,
	}
	public enum SORT_ORDER_TYPE : int32
	{
		DEFAULT = 0,
		IGNORE_FOLDERNESS = 1,
	}
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
	public enum _SV3CVW3_FLAGS : int32
	{
		DEFAULT = 0,
		NONINTERACTIVE = 1,
		FORCEVIEWMODE = 2,
		FORCEFOLDERFLAGS = 4,
	}
	public enum VPWATERMARKFLAGS : int32
	{
		DEFAULT = 0,
		ALPHABLEND = 1,
	}
	public enum VPCOLORFLAGS : int32
	{
		TEXT = 1,
		BACKGROUND = 2,
		SORTCOLUMN = 3,
		SUBTEXT = 4,
		TEXTBACKGROUND = 5,
	}
	public enum DSH_FLAGS : int32
	{
		ALLOWDROPDESCRIPTIONTEXT = 1,
	}
	public enum CDBURNINGEXTENSIONRET : int32
	{
		DEFAULT = 0,
		DONTRUNOTHEREXTS = 1,
		STOPWIZARD = 2,
	}
	public enum _CDBE_ACTIONS : int32
	{
		MUSIC = 1,
		DATA = 2,
		ALL = -1,
	}
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
	public enum UNDOCK_REASON : int32
	{
		RESOLUTION_CHANGE = 0,
		MONITOR_DISCONNECT = 1,
	}
	public enum CommandStateChangeConstants : int32
	{
		UPDATECOMMANDS = -1,
		NAVIGATEFORWARD = 1,
		NAVIGATEBACK = 2,
	}
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
	public enum NewProcessCauseConstants : int32
	{
		ProtectedModeRedirect = 1,
	}
	public enum ShellWindowTypeConstants : int32
	{
		EXPLORER = 0,
		BROWSER = 1,
		_3RDPARTY = 2,
		CALLBACK = 4,
		DESKTOP = 8,
	}
	public enum ShellWindowFindWindowOptions : int32
	{
		NEEDDISPATCH = 1,
		INCLUDEPENDING = 2,
		COOKIEPASSED = 4,
	}
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
	public enum RefreshConstants : int32
	{
		NORMAL = 0,
		IFEXPIRED = 1,
		COMPLETELY = 3,
	}
	public enum OfflineFolderStatus : int32
	{
		INACTIVE = -1,
		ONLINE = 0,
		OFFLINE = 1,
		SERVERBACK = 2,
		DIRTYCACHE = 3,
	}
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
	public enum ACENUMOPTION : int32
	{
		NONE = 0,
		MOSTRECENTFIRST = 1,
		FIRSTUNUSED = 65536,
	}
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
	public enum SCNRT_STATUS : int32
	{
		ENABLE = 0,
		DISABLE = 1,
	}
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
	public enum IESHORTCUTFLAGS : int32
	{
		NEWBROWSER = 1,
		OPENNEWTAB = 2,
		FORCENAVIGATE = 4,
		BACKGROUNDTAB = 8,
	}
	public enum DISPLAY_DEVICE_TYPE : int32
	{
		PRIMARY = 0,
		IMMERSIVE = 1,
	}
	public enum SCALE_CHANGE_FLAGS : uint32
	{
		VALUE_NONE = 0,
		SCALE = 1,
		PHYSICAL = 2,
	}
	public enum SHELL_UI_COMPONENT : int32
	{
		TASKBARS = 0,
		NOTIFICATIONAREA = 1,
		DESKBAND = 2,
	}
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
	public enum SFBS_FLAGS : int32
	{
		ROUND_TO_NEAREST_DISPLAYED_DIGIT = 1,
		TRUNCATE_UNDISPLAYED_DECIMAL_DIGITS = 2,
	}
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
	public enum SHREGDEL_FLAGS : int32
	{
		DEFAULT = 0,
		HKCU = 1,
		HKLM = 16,
		BOTH = 17,
	}
	public enum SHREGENUM_FLAGS : int32
	{
		DEFAULT = 0,
		HKCU = 1,
		HKLM = 16,
		BOTH = 17,
	}
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
	public enum ASSOCKEY : int32
	{
		SHELLEXECCLASS = 1,
		APP = 2,
		CLASS = 3,
		BASECLASS = 4,
		MAX = 5,
	}
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
	public enum ASSOCENUM : int32
	{
		ASSOCENUM_NONE = 0,
	}
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
	public enum PUBAPPINFOFLAGS : int32
	{
		SOURCE = 1,
		ASSIGNEDTIME = 2,
		PUBLISHEDTIME = 4,
		SCHEDULEDTIME = 8,
		EXPIRETIME = 16,
	}
	public enum CREDENTIAL_PROVIDER_USAGE_SCENARIO : int32
	{
		INVALID = 0,
		LOGON = 1,
		UNLOCK_WORKSTATION = 2,
		CHANGE_PASSWORD = 3,
		CREDUI = 4,
		PLAP = 5,
	}
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
	public enum CREDENTIAL_PROVIDER_FIELD_STATE : int32
	{
		HIDDEN = 0,
		DISPLAY_IN_SELECTED_TILE = 1,
		DISPLAY_IN_DESELECTED_TILE = 2,
		DISPLAY_IN_BOTH = 3,
	}
	public enum CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE : int32
	{
		NONE = 0,
		READONLY = 1,
		DISABLED = 2,
		FOCUSED = 3,
	}
	public enum CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE : int32
	{
		NO_CREDENTIAL_NOT_FINISHED = 0,
		NO_CREDENTIAL_FINISHED = 1,
		RETURN_CREDENTIAL_FINISHED = 2,
		RETURN_NO_CREDENTIAL_FINISHED = 3,
	}
	public enum CREDENTIAL_PROVIDER_STATUS_ICON : int32
	{
		NONE = 0,
		ERROR = 1,
		WARNING = 2,
		SUCCESS = 3,
	}
	public enum CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS : int32
	{
		NONE = 0,
		EMPTY_LOCAL = 1,
		EMPTY_CONNECTED = 2,
	}
	public enum CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS : int32
	{
		NONE = 0,
		ENABLE_PASSWORD_REVEAL = 1,
		IS_EMAIL_ADDRESS = 2,
		ENABLE_TOUCH_KEYBOARD_AUTO_INVOKE = 4,
		NUMBERS_ONLY = 8,
		SHOW_ENGLISH_KEYBOARD = 16,
	}
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
	public enum SYNCMGR_CONFLICT_ITEM_TYPE : int32
	{
		UPDATED = 1,
		DELETED = 2,
	}
	public enum SYNCMGR_RESOLUTION_ABILITIES : int32
	{
		KEEPOTHER = 1,
		KEEPRECENT = 2,
		REMOVEFROMSYNCSET = 4,
		KEEP_SINGLE = 8,
		KEEP_MULTIPLE = 16,
		VALID = 31,
	}
	public enum SYNCMGR_RESOLUTION_FEEDBACK : int32
	{
		CONTINUE = 0,
		REFRESH = 1,
		CANCEL = 2,
	}
	public enum SYNCMGR_PRESENTER_NEXT_STEP : int32
	{
		CONTINUE = 0,
		DEFAULT = 1,
		CANCEL = 2,
	}
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
	public enum WTS_CACHEFLAGS : int32
	{
		DEFAULT = 0,
		LOWQUALITY = 1,
		CACHED = 2,
	}
	public enum WTS_CONTEXTFLAGS : int32
	{
		DEFAULT = 0,
		APPSTYLE = 1,
		SQUARE = 2,
		WIDE = 4,
		FAST = 8,
	}
	public enum WTS_ALPHATYPE : int32
	{
		UNKNOWN = 0,
		RGB = 1,
		ARGB = 2,
	}
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
	public enum SYNCMGRERRORFLAGS : int32
	{
		SYNCMGRERRORFLAG_ENABLEJUMPTEXT = 1,
	}
	public enum SYNCMGRITEMFLAGS : int32
	{
		HASPROPERTIES = 1,
		TEMPORARY = 2,
		ROAMINGUSER = 4,
		LASTUPDATETIME = 8,
		MAYDELETEITEM = 16,
		HIDDEN = 32,
	}
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
	public enum SYNCMGRHANDLERFLAGS : int32
	{
		HASPROPERTIES = 1,
		MAYESTABLISHCONNECTION = 2,
		ALWAYSLISTHANDLER = 4,
		HIDDEN = 8,
	}
	public enum SYNCMGRITEMSTATE : int32
	{
		UNCHECKED = 0,
		CHECKED = 1,
	}
	public enum SYNCMGRINVOKEFLAGS : int32
	{
		STARTSYNC = 2,
		MINIMIZED = 4,
	}
	public enum SYNCMGRREGISTERFLAGS : int32
	{
		CONNECT = 1,
		PENDINGDISCONNECT = 2,
		IDLE = 4,
	}
	public enum ThumbnailStreamCacheOptions : int32
	{
		ExtractIfNotCached = 0,
		ReturnOnlyIfCached = 1,
		ResizeThumbnail = 2,
		AllowSmallerSize = 4,
	}
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
	public enum _HLSR_NOREDEF10 : int32
	{
		HOME = 0,
		SEARCHPAGE = 1,
		HISTORYFOLDER = 2,
	}
	public enum _HLSHORTCUTF__NOREDEF10 : int32
	{
		DEFAULT = 0,
		DONTACTUALLYCREATE = 1,
		USEFILENAMEFROMFRIENDLYNAME = 2,
		USEUNIQUEFILENAME = 4,
		MAYUSEEXISTINGSHORTCUT = 8,
	}
	public enum _HLTRANSLATEF_NOREDEF10 : int32
	{
		DEFAULT = 0,
		DONTAPPLYDEFAULTPREFIX = 1,
	}
	public enum HLNF : uint32
	{
		INTERNALJUMP = 1,
		OPENINNEWWINDOW = 2,
		NAVIGATINGBACK = 4,
		NAVIGATINGFORWARD = 8,
		NAVIGATINGTOSTACKITEM = 16,
		CREATENOHISTORY = 32,
	}
	public enum HLINKGETREF : int32
	{
		DEFAULT = 0,
		ABSOLUTE = 1,
		RELATIVE = 2,
	}
	public enum HLFNAMEF : uint32
	{
		DEFAULT = 0,
		TRYCACHE = 1,
		TRYPRETTYTARGET = 2,
		TRYFULLTARGET = 4,
		TRYWIN95SHORTCUT = 8,
	}
	public enum HLINKMISC : int32
	{
		HLINKMISC_RELATIVE = 1,
	}
	public enum HLINKSETF : int32
	{
		TARGET = 1,
		LOCATION = 2,
	}
	public enum HLINKWHICHMK : int32
	{
		CONTAINER = 1,
		BASE = 2,
	}
	public enum HLTB_INFO : int32
	{
		DOCKEDLEFT = 0,
		DOCKEDTOP = 1,
		DOCKEDRIGHT = 2,
		DOCKEDBOTTOM = 3,
		FLOATING = 4,
	}
	public enum HLBWIF_FLAGS : uint32
	{
		HASFRAMEWNDINFO = 1,
		HASDOCWNDINFO = 2,
		FRAMEWNDMAXIMIZED = 4,
		DOCWNDMAXIMIZED = 8,
		HASWEBTOOLBARINFO = 16,
		WEBTOOLBARHIDDEN = 32,
	}
	public enum HLID_INFO : uint32
	{
		INVALID = 0,
		PREVIOUS = 4294967295,
		NEXT = 4294967294,
		CURRENT = 4294967293,
		STACKBOTTOM = 4294967292,
		STACKTOP = 4294967291,
	}
	public enum HLQF_INFO : int32
	{
		ISVALID = 1,
		ISCURRENT = 2,
	}
	public enum BNSTATE : int32
	{
		NORMAL = 0,
		BEGIN_NAVIGATE = 1,
		NAVIGATE = 2,
	}
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
	public enum IEPDNFLAGS : int32
	{
		IEPDN_BINDINGUI = 1,
	}
	public enum TI_FLAGS : int32
	{
		BITMAP = 1,
		JPEG = 2,
	}
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
	public enum iurl_seturl_flags : int32
	{
		GUESS_PROTOCOL = 1,
		USE_DEFAULT_PROTOCOL = 2,
	}
	public enum iurl_invokecommand_flags : int32
	{
		ALLOW_UI = 1,
		USE_DEFAULT_VERB = 2,
		DDEWAIT = 4,
		ASYNCOK = 8,
		LOG_USAGE = 16,
	}
	public enum translateurl_in_flags : int32
	{
		GUESS_PROTOCOL = 1,
		USE_DEFAULT_PROTOCOL = 2,
	}
	public enum urlassociationdialog_in_flags : int32
	{
		USE_DEFAULT_NAME = 1,
		REGISTER_ASSOC = 2,
	}
	public enum mimeassociationdialog_in_flags : int32
	{
		MIMEASSOCDLG_FL_REGISTER_ASSOC = 1,
	}
	#endregion
	
	#region Function pointers
	public function LRESULT SUBCLASSPROC(HWND hWnd, uint32 uMsg, WPARAM wParam, LPARAM lParam, uint uIdSubclass, uint dwRefData);
	public function int32 BFFCALLBACK(HWND hwnd, uint32 uMsg, LPARAM lParam, LPARAM lpData);
	public function HRESULT LPFNDFMCALLBACK(IShellFolder* psf, HWND hwnd, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	public function HRESULT LPFNVIEWCALLBACK(ref IShellView psvOuter, ref IShellFolder psf, HWND hwndMain, uint32 uMsg, WPARAM wParam, LPARAM lParam);
	public function HRESULT PFNCANSHAREFOLDERW(PWSTR pszPath);
	public function HRESULT PFNSHOWSHAREFOLDERUIW(HWND hwndParent, PWSTR pszPath);
	public function HRESULT DLLGETVERSIONPROC(out DLLVERSIONINFO param0);
	public function int32 APPLET_PROC(HWND hwndCpl, uint32 msg, LPARAM lParam1, LPARAM lParam2);
	public function void PAPPSTATE_CHANGE_ROUTINE(BOOLEAN Quiesced, void* Context);
	public function void PAPPCONSTRAIN_CHANGE_ROUTINE(BOOLEAN Constrained, void* Context);
	#endregion
	
	#region Structs
	[CRepr]
	public struct _APPSTATE_REGISTRATION {}
	[CRepr]
	public struct _APPCONSTRAIN_REGISTRATION {}
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
		public CHAR[1] szKeyphrase_array;
		
		public CHAR* szKeyphrase mut => &szKeyphrase_array[0];
	}
	[CRepr]
	public struct MULTIKEYHELPW
	{
		public uint32 mkSize;
		public char16 mkKeylist;
		public char16[1] szKeyphrase_array;
		
		public char16* szKeyphrase mut => &szKeyphrase_array[0];
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
	[CRepr, Packed(1)]
	public struct DELEGATEITEMID
	{
		public uint16 cbSize;
		public uint16 wOuter;
		public uint16 cbInner;
		public uint8[1] rgb_array;
		
		public uint8* rgb mut => &rgb_array[0];
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
	[CRepr, Packed(1)]
	public struct DATABLOCK_HEADER
	{
		public uint32 cbSize;
		public uint32 dwSignature;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct NT_FE_CONSOLE_PROPS
	{
		public DATABLOCK_HEADER dbh;
		public uint32 uCodePage;
	}
	[CRepr, Packed(1)]
	public struct EXP_DARWIN_LINK
	{
		public DATABLOCK_HEADER dbh;
		public CHAR[260] szDarwinID;
		public char16[260] szwDarwinID;
	}
	[CRepr, Packed(1)]
	public struct EXP_SPECIAL_FOLDER
	{
		public uint32 cbSize;
		public uint32 dwSignature;
		public uint32 idSpecialFolder;
		public uint32 cbOffset;
	}
	[CRepr, Packed(1)]
	public struct EXP_SZ_LINK
	{
		public uint32 cbSize;
		public uint32 dwSignature;
		public CHAR[260] szTarget;
		public char16[260] swzTarget;
	}
	[CRepr, Packed(1)]
	public struct EXP_PROPERTYSTORAGE
	{
		public uint32 cbSize;
		public uint32 dwSignature;
		public uint8[1] abPropertyStorage_array;
		
		public uint8* abPropertyStorage mut => &abPropertyStorage_array[0];
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
		public NETRESOURCEA[1] nr_array;
		
		public NETRESOURCEA* nr mut => &nr_array[0];
	}
	[CRepr, Packed(1)]
	public struct CIDA
	{
		public uint32 cidl;
		public uint32[1] aoffset_array;
		
		public uint32* aoffset mut => &aoffset_array[0];
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct FILEGROUPDESCRIPTORA
	{
		public uint32 cItems;
		public FILEDESCRIPTORA[1] fgd_array;
		
		public FILEDESCRIPTORA* fgd mut => &fgd_array[0];
	}
	[CRepr, Packed(1)]
	public struct FILEGROUPDESCRIPTORW
	{
		public uint32 cItems;
		public FILEDESCRIPTORW[1] fgd_array;
		
		public FILEDESCRIPTORW* fgd mut => &fgd_array[0];
	}
	[CRepr, Packed(1)]
	public struct DROPFILES
	{
		public uint32 pFiles;
		public POINT pt;
		public BOOL fNC;
		public BOOL fWide;
	}
	[CRepr, Packed(1)]
	public struct FILE_ATTRIBUTES_ARRAY
	{
		public uint32 cItems;
		public uint32 dwSumFileAttributes;
		public uint32 dwProductFileAttributes;
		public uint32[1] rgdwFileAttributes_array;
		
		public uint32* rgdwFileAttributes mut => &rgdwFileAttributes_array[0];
	}
	[CRepr, Packed(1)]
	public struct DROPDESCRIPTION
	{
		public DROPIMAGETYPE type;
		public char16[260] szMessage;
		public char16[260] szInsert;
	}
	[CRepr, Packed(1)]
	public struct SHChangeNotifyEntry
	{
		public ITEMIDLIST* pidl;
		public BOOL fRecursive;
	}
	[CRepr, Packed(1)]
	public struct SHARDAPPIDINFO
	{
		public IShellItem* psi;
		public PWSTR pszAppID;
	}
	[CRepr, Packed(1)]
	public struct SHARDAPPIDINFOIDLIST
	{
		public ITEMIDLIST* pidl;
		public PWSTR pszAppID;
	}
	[CRepr, Packed(1)]
	public struct SHARDAPPIDINFOLINK
	{
		public IShellLinkA* psl;
		public PWSTR pszAppID;
	}
	[CRepr, Packed(1)]
	public struct SHChangeDWORDAsIDList
	{
		public uint16 cb;
		public uint32 dwItem1;
		public uint32 dwItem2;
		public uint16 cbZero;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
	public struct AUTO_SCROLL_DATA
	{
		public int32 iNextSample;
		public uint32 dwLastScroll;
		public BOOL bFull;
		public POINT[3] pts;
		public uint32[3] dwTimes;
	}
	[CRepr, Packed(1)]
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
		public QCMINFO_IDMAP_PLACEMENT[1] pIdList_array;
		
		public QCMINFO_IDMAP_PLACEMENT* pIdList mut => &pIdList_array[0];
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
		public char16[1] szFileName_array;
		
		public char16* szFileName mut => &szFileName_array[0];
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
		public using _Anonymous_e__Union Anonymous;
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
		public using _Anonymous_e__Union Anonymous;
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
		public using _Anonymous_e__Union Anonymous;
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
		public using _Anonymous_e__Union Anonymous;
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
		public struct NET_ADDRESS_INFO {}
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
	[CRepr, Packed(1)]
	public struct CPLINFO
	{
		public int32 idIcon;
		public int32 idName;
		public int32 idInfo;
		public int lData;
	}
	[CRepr, Packed(1)]
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
	[CRepr, Packed(1)]
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
	#endregion
	
	#region COM class IDs
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
	#endregion
	
	#region COM interfaces
	[CRepr]
	public struct INotifyReplica : IUnknown
	{
		public const new Guid IID = .(0x99180163, 0xda16, 0x101a, 0x93, 0x5c, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT YouAreAReplica(uint32 ulcOtherReplicas, IMoniker** rgpmkOtherReplicas) mut => VT.YouAreAReplica(ref this, ulcOtherReplicas, rgpmkOtherReplicas);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INotifyReplica self, uint32 ulcOtherReplicas, IMoniker** rgpmkOtherReplicas) YouAreAReplica;
		}
	}
	[CRepr]
	public struct IContextMenu : IUnknown
	{
		public const new Guid IID = .(0x000214e4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryContextMenu(HMENU hmenu, uint32 indexMenu, uint32 idCmdFirst, uint32 idCmdLast, uint32 uFlags) mut => VT.QueryContextMenu(ref this, hmenu, indexMenu, idCmdFirst, idCmdLast, uFlags);
		public HRESULT InvokeCommand(ref CMINVOKECOMMANDINFO pici) mut => VT.InvokeCommand(ref this, ref pici);
		public HRESULT GetCommandString(uint idCmd, uint32 uType, out uint32 pReserved, PSTR pszName, uint32 cchMax) mut => VT.GetCommandString(ref this, idCmd, uType, out pReserved, pszName, cchMax);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenu self, HMENU hmenu, uint32 indexMenu, uint32 idCmdFirst, uint32 idCmdLast, uint32 uFlags) QueryContextMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenu self, ref CMINVOKECOMMANDINFO pici) InvokeCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenu self, uint idCmd, uint32 uType, out uint32 pReserved, PSTR pszName, uint32 cchMax) GetCommandString;
		}
	}
	[CRepr]
	public struct IContextMenu2 : IContextMenu
	{
		public const new Guid IID = .(0x000214f4, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT HandleMenuMsg(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.HandleMenuMsg(ref this, uMsg, wParam, lParam);

		[CRepr]
		public struct VTable : IContextMenu.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenu2 self, uint32 uMsg, WPARAM wParam, LPARAM lParam) HandleMenuMsg;
		}
	}
	[CRepr]
	public struct IContextMenu3 : IContextMenu2
	{
		public const new Guid IID = .(0xbcfce0a0, 0xec17, 0x11d0, 0x8d, 0x10, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT HandleMenuMsg2(uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) mut => VT.HandleMenuMsg2(ref this, uMsg, wParam, lParam, plResult);

		[CRepr]
		public struct VTable : IContextMenu2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenu3 self, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* plResult) HandleMenuMsg2;
		}
	}
	[CRepr]
	public struct IExecuteCommand : IUnknown
	{
		public const new Guid IID = .(0x7f9185b0, 0xcb92, 0x43c5, 0x80, 0xa9, 0x92, 0x27, 0x7a, 0x4f, 0x7b, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetKeyState(uint32 grfKeyState) mut => VT.SetKeyState(ref this, grfKeyState);
		public HRESULT SetParameters(PWSTR pszParameters) mut => VT.SetParameters(ref this, pszParameters);
		public HRESULT SetPosition(POINT pt) mut => VT.SetPosition(ref this, pt);
		public HRESULT SetShowWindow(int32 nShow) mut => VT.SetShowWindow(ref this, nShow);
		public HRESULT SetNoShowUI(BOOL fNoShowUI) mut => VT.SetNoShowUI(ref this, fNoShowUI);
		public HRESULT SetDirectory(PWSTR pszDirectory) mut => VT.SetDirectory(ref this, pszDirectory);
		public HRESULT Execute() mut => VT.Execute(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, uint32 grfKeyState) SetKeyState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, PWSTR pszParameters) SetParameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, POINT pt) SetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, int32 nShow) SetShowWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, BOOL fNoShowUI) SetNoShowUI;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self, PWSTR pszDirectory) SetDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommand self) Execute;
		}
	}
	[CRepr]
	public struct IPersistFolder : IPersist
	{
		public const new Guid IID = .(0x000214ea, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref ITEMIDLIST pidl) mut => VT.Initialize(ref this, ref pidl);

		[CRepr]
		public struct VTable : IPersist.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFolder self, ref ITEMIDLIST pidl) Initialize;
		}
	}
	[CRepr]
	public struct IRunnableTask : IUnknown
	{
		public const new Guid IID = .(0x85788d00, 0x6807, 0x11d0, 0xb8, 0x10, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Run() mut => VT.Run(ref this);
		public HRESULT Kill(BOOL bWait) mut => VT.Kill(ref this, bWait);
		public HRESULT Suspend() mut => VT.Suspend(ref this);
		public HRESULT Resume() mut => VT.Resume(ref this);
		public uint32 IsRunning() mut => VT.IsRunning(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableTask self) Run;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableTask self, BOOL bWait) Kill;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableTask self) Suspend;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRunnableTask self) Resume;
			public new function [CallingConvention(.Stdcall)] uint32(ref IRunnableTask self) IsRunning;
		}
	}
	[CRepr]
	public struct IShellTaskScheduler : IUnknown
	{
		public const new Guid IID = .(0x6ccb7be0, 0x6807, 0x11d0, 0xb8, 0x10, 0x00, 0xc0, 0x4f, 0xd7, 0x06, 0xec);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddTask(ref IRunnableTask prt, in Guid rtoid, uint lParam, uint32 dwPriority) mut => VT.AddTask(ref this, ref prt, rtoid, lParam, dwPriority);
		public HRESULT RemoveTasks(in Guid rtoid, uint lParam, BOOL bWaitIfRunning) mut => VT.RemoveTasks(ref this, rtoid, lParam, bWaitIfRunning);
		public uint32 CountTasks(in Guid rtoid) mut => VT.CountTasks(ref this, rtoid);
		public HRESULT Status(uint32 dwReleaseStatus, uint32 dwThreadTimeout) mut => VT.Status(ref this, dwReleaseStatus, dwThreadTimeout);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellTaskScheduler self, ref IRunnableTask prt, in Guid rtoid, uint lParam, uint32 dwPriority) AddTask;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellTaskScheduler self, in Guid rtoid, uint lParam, BOOL bWaitIfRunning) RemoveTasks;
			public new function [CallingConvention(.Stdcall)] uint32(ref IShellTaskScheduler self, in Guid rtoid) CountTasks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellTaskScheduler self, uint32 dwReleaseStatus, uint32 dwThreadTimeout) Status;
		}
	}
	[CRepr]
	public struct IPersistFolder2 : IPersistFolder
	{
		public const new Guid IID = .(0x1ac3d9f0, 0x175c, 0x11d1, 0x95, 0xbe, 0x00, 0x60, 0x97, 0x97, 0xea, 0x4f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCurFolder(out ITEMIDLIST* ppidl) mut => VT.GetCurFolder(ref this, out ppidl);

		[CRepr]
		public struct VTable : IPersistFolder.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFolder2 self, out ITEMIDLIST* ppidl) GetCurFolder;
		}
	}
	[CRepr]
	public struct IPersistFolder3 : IPersistFolder2
	{
		public const new Guid IID = .(0xcef04fdf, 0xfe72, 0x11d2, 0x87, 0xa5, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xcf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeEx(ref IBindCtx pbc, ref ITEMIDLIST pidlRoot, in PERSIST_FOLDER_TARGET_INFO ppfti) mut => VT.InitializeEx(ref this, ref pbc, ref pidlRoot, ppfti);
		public HRESULT GetFolderTargetInfo(out PERSIST_FOLDER_TARGET_INFO ppfti) mut => VT.GetFolderTargetInfo(ref this, out ppfti);

		[CRepr]
		public struct VTable : IPersistFolder2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFolder3 self, ref IBindCtx pbc, ref ITEMIDLIST pidlRoot, in PERSIST_FOLDER_TARGET_INFO ppfti) InitializeEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistFolder3 self, out PERSIST_FOLDER_TARGET_INFO ppfti) GetFolderTargetInfo;
		}
	}
	[CRepr]
	public struct IPersistIDList : IPersist
	{
		public const new Guid IID = .(0x1079acfc, 0x29bd, 0x11d3, 0x8e, 0x0d, 0x00, 0xc0, 0x4f, 0x68, 0x37, 0xd5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetIDList(ref ITEMIDLIST pidl) mut => VT.SetIDList(ref this, ref pidl);
		public HRESULT GetIDList(out ITEMIDLIST* ppidl) mut => VT.GetIDList(ref this, out ppidl);

		[CRepr]
		public struct VTable : IPersist.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistIDList self, ref ITEMIDLIST pidl) SetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPersistIDList self, out ITEMIDLIST* ppidl) GetIDList;
		}
	}
	[CRepr]
	public struct IEnumIDList : IUnknown
	{
		public const new Guid IID = .(0x000214f2, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumIDList* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumIDList self, uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumIDList self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumIDList self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumIDList self, out IEnumIDList* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IEnumFullIDList : IUnknown
	{
		public const new Guid IID = .(0xd0191542, 0x7954, 0x4908, 0xbc, 0x06, 0xb2, 0x36, 0x0b, 0xbe, 0x45, 0xba);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumFullIDList* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFullIDList self, uint32 celt, ITEMIDLIST** rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFullIDList self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFullIDList self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumFullIDList self, out IEnumFullIDList* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IFileSyncMergeHandler : IUnknown
	{
		public const new Guid IID = .(0xd97b5aac, 0xc792, 0x433c, 0x97, 0x5d, 0x35, 0xc4, 0xea, 0xdc, 0x7a, 0x9d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Merge(PWSTR localFilePath, PWSTR serverFilePath, out MERGE_UPDATE_STATUS updateStatus) mut => VT.Merge(ref this, localFilePath, serverFilePath, out updateStatus);
		public HRESULT ShowResolveConflictUIAsync(PWSTR localFilePath, HMONITOR monitorToDisplayOn) mut => VT.ShowResolveConflictUIAsync(ref this, localFilePath, monitorToDisplayOn);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSyncMergeHandler self, PWSTR localFilePath, PWSTR serverFilePath, out MERGE_UPDATE_STATUS updateStatus) Merge;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSyncMergeHandler self, PWSTR localFilePath, HMONITOR monitorToDisplayOn) ShowResolveConflictUIAsync;
		}
	}
	[CRepr]
	public struct IObjectWithFolderEnumMode : IUnknown
	{
		public const new Guid IID = .(0x6a9d9026, 0x0e6e, 0x464c, 0xb0, 0x00, 0x42, 0xec, 0xc0, 0x7d, 0xe6, 0x73);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetMode(FOLDER_ENUM_MODE feMode) mut => VT.SetMode(ref this, feMode);
		public HRESULT GetMode(out FOLDER_ENUM_MODE pfeMode) mut => VT.GetMode(ref this, out pfeMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithFolderEnumMode self, FOLDER_ENUM_MODE feMode) SetMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithFolderEnumMode self, out FOLDER_ENUM_MODE pfeMode) GetMode;
		}
	}
	[CRepr]
	public struct IParseAndCreateItem : IUnknown
	{
		public const new Guid IID = .(0x67efed0e, 0xe827, 0x4408, 0xb4, 0x93, 0x78, 0xf3, 0x98, 0x2b, 0x68, 0x5c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetItem(ref IShellItem psi) mut => VT.SetItem(ref this, ref psi);
		public HRESULT GetItem(in Guid riid, void** ppv) mut => VT.GetItem(ref this, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IParseAndCreateItem self, ref IShellItem psi) SetItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IParseAndCreateItem self, in Guid riid, void** ppv) GetItem;
		}
	}
	[CRepr]
	public struct IShellFolder : IUnknown
	{
		public const new Guid IID = .(0x000214e6, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ParseDisplayName(HWND hwnd, ref IBindCtx pbc, PWSTR pszDisplayName, out uint32 pchEaten, out ITEMIDLIST* ppidl, out uint32 pdwAttributes) mut => VT.ParseDisplayName(ref this, hwnd, ref pbc, pszDisplayName, out pchEaten, out ppidl, out pdwAttributes);
		public HRESULT EnumObjects(HWND hwnd, uint32 grfFlags, out IEnumIDList* ppenumIDList) mut => VT.EnumObjects(ref this, hwnd, grfFlags, out ppenumIDList);
		public HRESULT BindToObject(ref ITEMIDLIST pidl, ref IBindCtx pbc, in Guid riid, void** ppv) mut => VT.BindToObject(ref this, ref pidl, ref pbc, riid, ppv);
		public HRESULT BindToStorage(ref ITEMIDLIST pidl, ref IBindCtx pbc, in Guid riid, void** ppv) mut => VT.BindToStorage(ref this, ref pidl, ref pbc, riid, ppv);
		public HRESULT CompareIDs(LPARAM lParam, ref ITEMIDLIST pidl1, ref ITEMIDLIST pidl2) mut => VT.CompareIDs(ref this, lParam, ref pidl1, ref pidl2);
		public HRESULT CreateViewObject(HWND hwndOwner, in Guid riid, void** ppv) mut => VT.CreateViewObject(ref this, hwndOwner, riid, ppv);
		public HRESULT GetAttributesOf(uint32 cidl, ITEMIDLIST** apidl, out uint32 rgfInOut) mut => VT.GetAttributesOf(ref this, cidl, apidl, out rgfInOut);
		public HRESULT GetUIObjectOf(HWND hwndOwner, uint32 cidl, ITEMIDLIST** apidl, in Guid riid, out uint32 rgfReserved, void** ppv) mut => VT.GetUIObjectOf(ref this, hwndOwner, cidl, apidl, riid, out rgfReserved, ppv);
		public HRESULT GetDisplayNameOf(ref ITEMIDLIST pidl, uint32 uFlags, out STRRET pName) mut => VT.GetDisplayNameOf(ref this, ref pidl, uFlags, out pName);
		public HRESULT SetNameOf(HWND hwnd, ref ITEMIDLIST pidl, PWSTR pszName, uint32 uFlags, ITEMIDLIST** ppidlOut) mut => VT.SetNameOf(ref this, hwnd, ref pidl, pszName, uFlags, ppidlOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, HWND hwnd, ref IBindCtx pbc, PWSTR pszDisplayName, out uint32 pchEaten, out ITEMIDLIST* ppidl, out uint32 pdwAttributes) ParseDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, HWND hwnd, uint32 grfFlags, out IEnumIDList* ppenumIDList) EnumObjects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, ref ITEMIDLIST pidl, ref IBindCtx pbc, in Guid riid, void** ppv) BindToObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, ref ITEMIDLIST pidl, ref IBindCtx pbc, in Guid riid, void** ppv) BindToStorage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, LPARAM lParam, ref ITEMIDLIST pidl1, ref ITEMIDLIST pidl2) CompareIDs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, HWND hwndOwner, in Guid riid, void** ppv) CreateViewObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, uint32 cidl, ITEMIDLIST** apidl, out uint32 rgfInOut) GetAttributesOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, HWND hwndOwner, uint32 cidl, ITEMIDLIST** apidl, in Guid riid, out uint32 rgfReserved, void** ppv) GetUIObjectOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, ref ITEMIDLIST pidl, uint32 uFlags, out STRRET pName) GetDisplayNameOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder self, HWND hwnd, ref ITEMIDLIST pidl, PWSTR pszName, uint32 uFlags, ITEMIDLIST** ppidlOut) SetNameOf;
		}
	}
	[CRepr]
	public struct IEnumExtraSearch : IUnknown
	{
		public const new Guid IID = .(0x0e700be1, 0x9db6, 0x11d1, 0xa1, 0xce, 0x00, 0xc0, 0x4f, 0xd7, 0x5d, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, EXTRASEARCH* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumExtraSearch* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExtraSearch self, uint32 celt, EXTRASEARCH* rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExtraSearch self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExtraSearch self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExtraSearch self, out IEnumExtraSearch* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IShellFolder2 : IShellFolder
	{
		public const new Guid IID = .(0x93f2f68c, 0x1d1b, 0x11d3, 0xa3, 0x0e, 0x00, 0xc0, 0x4f, 0x79, 0xab, 0xd1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDefaultSearchGUID(out Guid pguid) mut => VT.GetDefaultSearchGUID(ref this, out pguid);
		public HRESULT EnumSearches(out IEnumExtraSearch* ppenum) mut => VT.EnumSearches(ref this, out ppenum);
		public HRESULT GetDefaultColumn(uint32 dwRes, out uint32 pSort, out uint32 pDisplay) mut => VT.GetDefaultColumn(ref this, dwRes, out pSort, out pDisplay);
		public HRESULT GetDefaultColumnState(uint32 iColumn, out uint32 pcsFlags) mut => VT.GetDefaultColumnState(ref this, iColumn, out pcsFlags);
		public HRESULT GetDetailsEx(ref ITEMIDLIST pidl, in PROPERTYKEY pscid, out VARIANT pv) mut => VT.GetDetailsEx(ref this, ref pidl, pscid, out pv);
		public HRESULT GetDetailsOf(ref ITEMIDLIST pidl, uint32 iColumn, out SHELLDETAILS psd) mut => VT.GetDetailsOf(ref this, ref pidl, iColumn, out psd);
		public HRESULT MapColumnToSCID(uint32 iColumn, out PROPERTYKEY pscid) mut => VT.MapColumnToSCID(ref this, iColumn, out pscid);

		[CRepr]
		public struct VTable : IShellFolder.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, out Guid pguid) GetDefaultSearchGUID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, out IEnumExtraSearch* ppenum) EnumSearches;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, uint32 dwRes, out uint32 pSort, out uint32 pDisplay) GetDefaultColumn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, uint32 iColumn, out uint32 pcsFlags) GetDefaultColumnState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, ref ITEMIDLIST pidl, in PROPERTYKEY pscid, out VARIANT pv) GetDetailsEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, ref ITEMIDLIST pidl, uint32 iColumn, out SHELLDETAILS psd) GetDetailsOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolder2 self, uint32 iColumn, out PROPERTYKEY pscid) MapColumnToSCID;
		}
	}
	[CRepr]
	public struct IShellView : IOleWindow
	{
		public const new Guid IID = .(0x000214e3, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranslateAccelerator(ref MSG pmsg) mut => VT.TranslateAccelerator(ref this, ref pmsg);
		public HRESULT EnableModeless(BOOL fEnable) mut => VT.EnableModeless(ref this, fEnable);
		public HRESULT UIActivate(uint32 uState) mut => VT.UIActivate(ref this, uState);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT CreateViewWindow(ref IShellView psvPrevious, ref FOLDERSETTINGS pfs, ref IShellBrowser psb, ref RECT prcView, out HWND phWnd) mut => VT.CreateViewWindow(ref this, ref psvPrevious, ref pfs, ref psb, ref prcView, out phWnd);
		public HRESULT DestroyViewWindow() mut => VT.DestroyViewWindow(ref this);
		public HRESULT GetCurrentInfo(out FOLDERSETTINGS pfs) mut => VT.GetCurrentInfo(ref this, out pfs);
		public HRESULT AddPropertySheetPages(uint32 dwReserved, LPFNSVADDPROPSHEETPAGE pfn, LPARAM lparam) mut => VT.AddPropertySheetPages(ref this, dwReserved, pfn, lparam);
		public HRESULT SaveViewState() mut => VT.SaveViewState(ref this);
		public HRESULT SelectItem(ref ITEMIDLIST pidlItem, uint32 uFlags) mut => VT.SelectItem(ref this, ref pidlItem, uFlags);
		public HRESULT GetItemObject(uint32 uItem, in Guid riid, void** ppv) mut => VT.GetItemObject(ref this, uItem, riid, ppv);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, ref MSG pmsg) TranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, BOOL fEnable) EnableModeless;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, uint32 uState) UIActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, ref IShellView psvPrevious, ref FOLDERSETTINGS pfs, ref IShellBrowser psb, ref RECT prcView, out HWND phWnd) CreateViewWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self) DestroyViewWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, out FOLDERSETTINGS pfs) GetCurrentInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, uint32 dwReserved, LPFNSVADDPROPSHEETPAGE pfn, LPARAM lparam) AddPropertySheetPages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self) SaveViewState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, ref ITEMIDLIST pidlItem, uint32 uFlags) SelectItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView self, uint32 uItem, in Guid riid, void** ppv) GetItemObject;
		}
	}
	[CRepr]
	public struct IShellView2 : IShellView
	{
		public const new Guid IID = .(0x88e39e80, 0x3578, 0x11cf, 0xae, 0x69, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetView(out Guid pvid, uint32 uView) mut => VT.GetView(ref this, out pvid, uView);
		public HRESULT CreateViewWindow2(ref SV2CVW2_PARAMS lpParams) mut => VT.CreateViewWindow2(ref this, ref lpParams);
		public HRESULT HandleRename(ref ITEMIDLIST pidlNew) mut => VT.HandleRename(ref this, ref pidlNew);
		public HRESULT SelectAndPositionItem(ref ITEMIDLIST pidlItem, uint32 uFlags, ref POINT ppt) mut => VT.SelectAndPositionItem(ref this, ref pidlItem, uFlags, ref ppt);

		[CRepr]
		public struct VTable : IShellView.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView2 self, out Guid pvid, uint32 uView) GetView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView2 self, ref SV2CVW2_PARAMS lpParams) CreateViewWindow2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView2 self, ref ITEMIDLIST pidlNew) HandleRename;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView2 self, ref ITEMIDLIST pidlItem, uint32 uFlags, ref POINT ppt) SelectAndPositionItem;
		}
	}
	[CRepr]
	public struct IFolderView : IUnknown
	{
		public const new Guid IID = .(0xcde725b0, 0xccc9, 0x4519, 0x91, 0x7e, 0x32, 0x5d, 0x72, 0xfa, 0xb4, 0xce);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCurrentViewMode(out uint32 pViewMode) mut => VT.GetCurrentViewMode(ref this, out pViewMode);
		public HRESULT SetCurrentViewMode(uint32 ViewMode) mut => VT.SetCurrentViewMode(ref this, ViewMode);
		public HRESULT GetFolder(in Guid riid, void** ppv) mut => VT.GetFolder(ref this, riid, ppv);
		public HRESULT Item(int32 iItemIndex, out ITEMIDLIST* ppidl) mut => VT.Item(ref this, iItemIndex, out ppidl);
		public HRESULT ItemCount(uint32 uFlags, out int32 pcItems) mut => VT.ItemCount(ref this, uFlags, out pcItems);
		public HRESULT Items(uint32 uFlags, in Guid riid, void** ppv) mut => VT.Items(ref this, uFlags, riid, ppv);
		public HRESULT GetSelectionMarkedItem(out int32 piItem) mut => VT.GetSelectionMarkedItem(ref this, out piItem);
		public HRESULT GetFocusedItem(out int32 piItem) mut => VT.GetFocusedItem(ref this, out piItem);
		public HRESULT GetItemPosition(ref ITEMIDLIST pidl, out POINT ppt) mut => VT.GetItemPosition(ref this, ref pidl, out ppt);
		public HRESULT GetSpacing(out POINT ppt) mut => VT.GetSpacing(ref this, out ppt);
		public HRESULT GetDefaultSpacing(out POINT ppt) mut => VT.GetDefaultSpacing(ref this, out ppt);
		public HRESULT GetAutoArrange() mut => VT.GetAutoArrange(ref this);
		public HRESULT SelectItem(int32 iItem, uint32 dwFlags) mut => VT.SelectItem(ref this, iItem, dwFlags);
		public HRESULT SelectAndPositionItems(uint32 cidl, ITEMIDLIST** apidl, POINT* apt, uint32 dwFlags) mut => VT.SelectAndPositionItems(ref this, cidl, apidl, apt, dwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, out uint32 pViewMode) GetCurrentViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, uint32 ViewMode) SetCurrentViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, in Guid riid, void** ppv) GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, int32 iItemIndex, out ITEMIDLIST* ppidl) Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, uint32 uFlags, out int32 pcItems) ItemCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, uint32 uFlags, in Guid riid, void** ppv) Items;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, out int32 piItem) GetSelectionMarkedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, out int32 piItem) GetFocusedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, ref ITEMIDLIST pidl, out POINT ppt) GetItemPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, out POINT ppt) GetSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, out POINT ppt) GetDefaultSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self) GetAutoArrange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, int32 iItem, uint32 dwFlags) SelectItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView self, uint32 cidl, ITEMIDLIST** apidl, POINT* apt, uint32 dwFlags) SelectAndPositionItems;
		}
	}
	[CRepr]
	public struct IFolderView2 : IFolderView
	{
		public const new Guid IID = .(0x1af3a467, 0x214f, 0x4298, 0x90, 0x8e, 0x06, 0xb0, 0x3e, 0x0b, 0x39, 0xf9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetGroupBy(in PROPERTYKEY key, BOOL fAscending) mut => VT.SetGroupBy(ref this, key, fAscending);
		public HRESULT GetGroupBy(out PROPERTYKEY pkey, BOOL* pfAscending) mut => VT.GetGroupBy(ref this, out pkey, pfAscending);
		public HRESULT SetViewProperty(ref ITEMIDLIST pidl, in PROPERTYKEY propkey, in PROPVARIANT propvar) mut => VT.SetViewProperty(ref this, ref pidl, propkey, propvar);
		public HRESULT GetViewProperty(ref ITEMIDLIST pidl, in PROPERTYKEY propkey, out PROPVARIANT ppropvar) mut => VT.GetViewProperty(ref this, ref pidl, propkey, out ppropvar);
		public HRESULT SetTileViewProperties(ref ITEMIDLIST pidl, PWSTR pszPropList) mut => VT.SetTileViewProperties(ref this, ref pidl, pszPropList);
		public HRESULT SetExtendedTileViewProperties(ref ITEMIDLIST pidl, PWSTR pszPropList) mut => VT.SetExtendedTileViewProperties(ref this, ref pidl, pszPropList);
		public HRESULT SetText(FVTEXTTYPE iType, PWSTR pwszText) mut => VT.SetText(ref this, iType, pwszText);
		public HRESULT SetCurrentFolderFlags(uint32 dwMask, uint32 dwFlags) mut => VT.SetCurrentFolderFlags(ref this, dwMask, dwFlags);
		public HRESULT GetCurrentFolderFlags(out uint32 pdwFlags) mut => VT.GetCurrentFolderFlags(ref this, out pdwFlags);
		public HRESULT GetSortColumnCount(out int32 pcColumns) mut => VT.GetSortColumnCount(ref this, out pcColumns);
		public HRESULT SetSortColumns(SORTCOLUMN* rgSortColumns, int32 cColumns) mut => VT.SetSortColumns(ref this, rgSortColumns, cColumns);
		public HRESULT GetSortColumns(SORTCOLUMN* rgSortColumns, int32 cColumns) mut => VT.GetSortColumns(ref this, rgSortColumns, cColumns);
		public HRESULT GetItem(int32 iItem, in Guid riid, void** ppv) mut => VT.GetItem(ref this, iItem, riid, ppv);
		public HRESULT GetVisibleItem(int32 iStart, BOOL fPrevious, out int32 piItem) mut => VT.GetVisibleItem(ref this, iStart, fPrevious, out piItem);
		public HRESULT GetSelectedItem(int32 iStart, out int32 piItem) mut => VT.GetSelectedItem(ref this, iStart, out piItem);
		public HRESULT GetSelection(BOOL fNoneImpliesFolder, out IShellItemArray* ppsia) mut => VT.GetSelection(ref this, fNoneImpliesFolder, out ppsia);
		public HRESULT GetSelectionState(ref ITEMIDLIST pidl, out uint32 pdwFlags) mut => VT.GetSelectionState(ref this, ref pidl, out pdwFlags);
		public HRESULT InvokeVerbOnSelection(PSTR pszVerb) mut => VT.InvokeVerbOnSelection(ref this, pszVerb);
		public HRESULT SetViewModeAndIconSize(FOLDERVIEWMODE uViewMode, int32 iImageSize) mut => VT.SetViewModeAndIconSize(ref this, uViewMode, iImageSize);
		public HRESULT GetViewModeAndIconSize(out FOLDERVIEWMODE puViewMode, out int32 piImageSize) mut => VT.GetViewModeAndIconSize(ref this, out puViewMode, out piImageSize);
		public HRESULT SetGroupSubsetCount(uint32 cVisibleRows) mut => VT.SetGroupSubsetCount(ref this, cVisibleRows);
		public HRESULT GetGroupSubsetCount(out uint32 pcVisibleRows) mut => VT.GetGroupSubsetCount(ref this, out pcVisibleRows);
		public HRESULT SetRedraw(BOOL fRedrawOn) mut => VT.SetRedraw(ref this, fRedrawOn);
		public HRESULT IsMoveInSameFolder() mut => VT.IsMoveInSameFolder(ref this);
		public HRESULT DoRename() mut => VT.DoRename(ref this);

		[CRepr]
		public struct VTable : IFolderView.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, in PROPERTYKEY key, BOOL fAscending) SetGroupBy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, out PROPERTYKEY pkey, BOOL* pfAscending) GetGroupBy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, ref ITEMIDLIST pidl, in PROPERTYKEY propkey, in PROPVARIANT propvar) SetViewProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, ref ITEMIDLIST pidl, in PROPERTYKEY propkey, out PROPVARIANT ppropvar) GetViewProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, ref ITEMIDLIST pidl, PWSTR pszPropList) SetTileViewProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, ref ITEMIDLIST pidl, PWSTR pszPropList) SetExtendedTileViewProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, FVTEXTTYPE iType, PWSTR pwszText) SetText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, uint32 dwMask, uint32 dwFlags) SetCurrentFolderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, out uint32 pdwFlags) GetCurrentFolderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, out int32 pcColumns) GetSortColumnCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, SORTCOLUMN* rgSortColumns, int32 cColumns) SetSortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, SORTCOLUMN* rgSortColumns, int32 cColumns) GetSortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, int32 iItem, in Guid riid, void** ppv) GetItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, int32 iStart, BOOL fPrevious, out int32 piItem) GetVisibleItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, int32 iStart, out int32 piItem) GetSelectedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, BOOL fNoneImpliesFolder, out IShellItemArray* ppsia) GetSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, ref ITEMIDLIST pidl, out uint32 pdwFlags) GetSelectionState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, PSTR pszVerb) InvokeVerbOnSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, FOLDERVIEWMODE uViewMode, int32 iImageSize) SetViewModeAndIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, out FOLDERVIEWMODE puViewMode, out int32 piImageSize) GetViewModeAndIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, uint32 cVisibleRows) SetGroupSubsetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, out uint32 pcVisibleRows) GetGroupSubsetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self, BOOL fRedrawOn) SetRedraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self) IsMoveInSameFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderView2 self) DoRename;
		}
	}
	[CRepr]
	public struct IFolderViewSettings : IUnknown
	{
		public const new Guid IID = .(0xae8c987d, 0x8797, 0x4ed3, 0xbe, 0x72, 0x2a, 0x47, 0xdd, 0x93, 0x8d, 0xb0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetColumnPropertyList(in Guid riid, void** ppv) mut => VT.GetColumnPropertyList(ref this, riid, ppv);
		public HRESULT GetGroupByProperty(out PROPERTYKEY pkey, out BOOL pfGroupAscending) mut => VT.GetGroupByProperty(ref this, out pkey, out pfGroupAscending);
		public HRESULT GetViewMode(out FOLDERLOGICALVIEWMODE plvm) mut => VT.GetViewMode(ref this, out plvm);
		public HRESULT GetIconSize(out uint32 puIconSize) mut => VT.GetIconSize(ref this, out puIconSize);
		public HRESULT GetFolderFlags(out FOLDERFLAGS pfolderMask, out FOLDERFLAGS pfolderFlags) mut => VT.GetFolderFlags(ref this, out pfolderMask, out pfolderFlags);
		public HRESULT GetSortColumns(SORTCOLUMN* rgSortColumns, uint32 cColumnsIn, out uint32 pcColumnsOut) mut => VT.GetSortColumns(ref this, rgSortColumns, cColumnsIn, out pcColumnsOut);
		public HRESULT GetGroupSubsetCount(out uint32 pcVisibleRows) mut => VT.GetGroupSubsetCount(ref this, out pcVisibleRows);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, in Guid riid, void** ppv) GetColumnPropertyList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, out PROPERTYKEY pkey, out BOOL pfGroupAscending) GetGroupByProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, out FOLDERLOGICALVIEWMODE plvm) GetViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, out uint32 puIconSize) GetIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, out FOLDERFLAGS pfolderMask, out FOLDERFLAGS pfolderFlags) GetFolderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, SORTCOLUMN* rgSortColumns, uint32 cColumnsIn, out uint32 pcColumnsOut) GetSortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewSettings self, out uint32 pcVisibleRows) GetGroupSubsetCount;
		}
	}
	[CRepr]
	public struct IInitializeNetworkFolder : IUnknown
	{
		public const new Guid IID = .(0x6e0f9881, 0x42a8, 0x4f2a, 0x97, 0xf8, 0x8a, 0xf4, 0xe0, 0x26, 0xd9, 0x2d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref ITEMIDLIST pidl, ref ITEMIDLIST pidlTarget, uint32 uDisplayType, PWSTR pszResName, PWSTR pszProvider) mut => VT.Initialize(ref this, ref pidl, ref pidlTarget, uDisplayType, pszResName, pszProvider);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeNetworkFolder self, ref ITEMIDLIST pidl, ref ITEMIDLIST pidlTarget, uint32 uDisplayType, PWSTR pszResName, PWSTR pszProvider) Initialize;
		}
	}
	[CRepr]
	public struct INetworkFolderInternal : IUnknown
	{
		public const new Guid IID = .(0xceb38218, 0xc971, 0x47bb, 0xa7, 0x03, 0xf0, 0xbc, 0x99, 0xcc, 0xdb, 0x81);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetResourceDisplayType(out uint32 displayType) mut => VT.GetResourceDisplayType(ref this, out displayType);
		public HRESULT GetIDList(out ITEMIDLIST* idList) mut => VT.GetIDList(ref this, out idList);
		public HRESULT GetProvider(uint32 itemIdCount, ITEMIDLIST** itemIds, uint32 providerMaxLength, char16* provider) mut => VT.GetProvider(ref this, itemIdCount, itemIds, providerMaxLength, provider);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkFolderInternal self, out uint32 displayType) GetResourceDisplayType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkFolderInternal self, out ITEMIDLIST* idList) GetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INetworkFolderInternal self, uint32 itemIdCount, ITEMIDLIST** itemIds, uint32 providerMaxLength, char16* provider) GetProvider;
		}
	}
	[CRepr]
	public struct IPreviewHandlerVisuals : IUnknown
	{
		public const new Guid IID = .(0x196bf9a5, 0xb346, 0x4ef0, 0xaa, 0x1e, 0x5d, 0xcd, 0xb7, 0x67, 0x68, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBackgroundColor(uint32 color) mut => VT.SetBackgroundColor(ref this, color);
		public HRESULT SetFont(in LOGFONTW plf) mut => VT.SetFont(ref this, plf);
		public HRESULT SetTextColor(uint32 color) mut => VT.SetTextColor(ref this, color);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandlerVisuals self, uint32 color) SetBackgroundColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandlerVisuals self, in LOGFONTW plf) SetFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandlerVisuals self, uint32 color) SetTextColor;
		}
	}
	[CRepr]
	public struct ICommDlgBrowser : IUnknown
	{
		public const new Guid IID = .(0x000214f1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnDefaultCommand(ref IShellView ppshv) mut => VT.OnDefaultCommand(ref this, ref ppshv);
		public HRESULT OnStateChange(ref IShellView ppshv, uint32 uChange) mut => VT.OnStateChange(ref this, ref ppshv, uChange);
		public HRESULT IncludeObject(ref IShellView ppshv, ref ITEMIDLIST pidl) mut => VT.IncludeObject(ref this, ref ppshv, ref pidl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser self, ref IShellView ppshv) OnDefaultCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser self, ref IShellView ppshv, uint32 uChange) OnStateChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser self, ref IShellView ppshv, ref ITEMIDLIST pidl) IncludeObject;
		}
	}
	[CRepr]
	public struct ICommDlgBrowser2 : ICommDlgBrowser
	{
		public const new Guid IID = .(0x10339516, 0x2894, 0x11d2, 0x90, 0x39, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Notify(ref IShellView ppshv, uint32 dwNotifyType) mut => VT.Notify(ref this, ref ppshv, dwNotifyType);
		public HRESULT GetDefaultMenuText(ref IShellView ppshv, char16* pszText, int32 cchMax) mut => VT.GetDefaultMenuText(ref this, ref ppshv, pszText, cchMax);
		public HRESULT GetViewFlags(out uint32 pdwFlags) mut => VT.GetViewFlags(ref this, out pdwFlags);

		[CRepr]
		public struct VTable : ICommDlgBrowser.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser2 self, ref IShellView ppshv, uint32 dwNotifyType) Notify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser2 self, ref IShellView ppshv, char16* pszText, int32 cchMax) GetDefaultMenuText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser2 self, out uint32 pdwFlags) GetViewFlags;
		}
	}
	[CRepr]
	public struct IColumnManager : IUnknown
	{
		public const new Guid IID = .(0xd8ec27bb, 0x3f3b, 0x4042, 0xb1, 0x0a, 0x4a, 0xcf, 0xd9, 0x24, 0xd4, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetColumnInfo(in PROPERTYKEY propkey, in CM_COLUMNINFO pcmci) mut => VT.SetColumnInfo(ref this, propkey, pcmci);
		public HRESULT GetColumnInfo(in PROPERTYKEY propkey, out CM_COLUMNINFO pcmci) mut => VT.GetColumnInfo(ref this, propkey, out pcmci);
		public HRESULT GetColumnCount(CM_ENUM_FLAGS dwFlags, out uint32 puCount) mut => VT.GetColumnCount(ref this, dwFlags, out puCount);
		public HRESULT GetColumns(CM_ENUM_FLAGS dwFlags, PROPERTYKEY* rgkeyOrder, uint32 cColumns) mut => VT.GetColumns(ref this, dwFlags, rgkeyOrder, cColumns);
		public HRESULT SetColumns(PROPERTYKEY* rgkeyOrder, uint32 cVisible) mut => VT.SetColumns(ref this, rgkeyOrder, cVisible);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnManager self, in PROPERTYKEY propkey, in CM_COLUMNINFO pcmci) SetColumnInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnManager self, in PROPERTYKEY propkey, out CM_COLUMNINFO pcmci) GetColumnInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnManager self, CM_ENUM_FLAGS dwFlags, out uint32 puCount) GetColumnCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnManager self, CM_ENUM_FLAGS dwFlags, PROPERTYKEY* rgkeyOrder, uint32 cColumns) GetColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnManager self, PROPERTYKEY* rgkeyOrder, uint32 cVisible) SetColumns;
		}
	}
	[CRepr]
	public struct IFolderFilterSite : IUnknown
	{
		public const new Guid IID = .(0xc0a651f5, 0xb48b, 0x11d2, 0xb5, 0xed, 0x00, 0x60, 0x97, 0xc6, 0x86, 0xf6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFilter(ref IUnknown punk) mut => VT.SetFilter(ref this, ref punk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderFilterSite self, ref IUnknown punk) SetFilter;
		}
	}
	[CRepr]
	public struct IFolderFilter : IUnknown
	{
		public const new Guid IID = .(0x9cc22886, 0xdc8e, 0x11d2, 0xb1, 0xd0, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ShouldShow(ref IShellFolder psf, ref ITEMIDLIST pidlFolder, ref ITEMIDLIST pidlItem) mut => VT.ShouldShow(ref this, ref psf, ref pidlFolder, ref pidlItem);
		public HRESULT GetEnumFlags(ref IShellFolder psf, ref ITEMIDLIST pidlFolder, out HWND phwnd, out uint32 pgrfFlags) mut => VT.GetEnumFlags(ref this, ref psf, ref pidlFolder, out phwnd, out pgrfFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderFilter self, ref IShellFolder psf, ref ITEMIDLIST pidlFolder, ref ITEMIDLIST pidlItem) ShouldShow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderFilter self, ref IShellFolder psf, ref ITEMIDLIST pidlFolder, out HWND phwnd, out uint32 pgrfFlags) GetEnumFlags;
		}
	}
	[CRepr]
	public struct IInputObjectSite : IUnknown
	{
		public const new Guid IID = .(0xf1db8392, 0x7331, 0x11d0, 0x8c, 0x99, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnFocusChangeIS(ref IUnknown punkObj, BOOL fSetFocus) mut => VT.OnFocusChangeIS(ref this, ref punkObj, fSetFocus);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputObjectSite self, ref IUnknown punkObj, BOOL fSetFocus) OnFocusChangeIS;
		}
	}
	[CRepr]
	public struct IInputObject : IUnknown
	{
		public const new Guid IID = .(0x68284faa, 0x6a48, 0x11d0, 0x8c, 0x78, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT UIActivateIO(BOOL fActivate, ref MSG pMsg) mut => VT.UIActivateIO(ref this, fActivate, ref pMsg);
		public HRESULT HasFocusIO() mut => VT.HasFocusIO(ref this);
		public HRESULT TranslateAcceleratorIO(ref MSG pMsg) mut => VT.TranslateAcceleratorIO(ref this, ref pMsg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputObject self, BOOL fActivate, ref MSG pMsg) UIActivateIO;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputObject self) HasFocusIO;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputObject self, ref MSG pMsg) TranslateAcceleratorIO;
		}
	}
	[CRepr]
	public struct IInputObject2 : IInputObject
	{
		public const new Guid IID = .(0x6915c085, 0x510b, 0x44cd, 0x94, 0xaf, 0x28, 0xdf, 0xa5, 0x6c, 0xf9, 0x2b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranslateAcceleratorGlobal(ref MSG pMsg) mut => VT.TranslateAcceleratorGlobal(ref this, ref pMsg);

		[CRepr]
		public struct VTable : IInputObject.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputObject2 self, ref MSG pMsg) TranslateAcceleratorGlobal;
		}
	}
	[CRepr]
	public struct IShellIcon : IUnknown
	{
		public const new Guid IID = .(0x000214e5, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIconOf(ref ITEMIDLIST pidl, uint32 flags, out int32 pIconIndex) mut => VT.GetIconOf(ref this, ref pidl, flags, out pIconIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIcon self, ref ITEMIDLIST pidl, uint32 flags, out int32 pIconIndex) GetIconOf;
		}
	}
	[CRepr]
	public struct IShellBrowser : IOleWindow
	{
		public const new Guid IID = .(0x000214e2, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InsertMenusSB(HMENU hmenuShared, out OleMenuGroupWidths lpMenuWidths) mut => VT.InsertMenusSB(ref this, hmenuShared, out lpMenuWidths);
		public HRESULT SetMenuSB(HMENU hmenuShared, int holemenuRes, HWND hwndActiveObject) mut => VT.SetMenuSB(ref this, hmenuShared, holemenuRes, hwndActiveObject);
		public HRESULT RemoveMenusSB(HMENU hmenuShared) mut => VT.RemoveMenusSB(ref this, hmenuShared);
		public HRESULT SetStatusTextSB(PWSTR pszStatusText) mut => VT.SetStatusTextSB(ref this, pszStatusText);
		public HRESULT EnableModelessSB(BOOL fEnable) mut => VT.EnableModelessSB(ref this, fEnable);
		public HRESULT TranslateAcceleratorSB(ref MSG pmsg, uint16 wID) mut => VT.TranslateAcceleratorSB(ref this, ref pmsg, wID);
		public HRESULT BrowseObject(ref ITEMIDLIST pidl, uint32 wFlags) mut => VT.BrowseObject(ref this, ref pidl, wFlags);
		public HRESULT GetViewStateStream(uint32 grfMode, out IStream* ppStrm) mut => VT.GetViewStateStream(ref this, grfMode, out ppStrm);
		public HRESULT GetControlWindow(uint32 id, out HWND phwnd) mut => VT.GetControlWindow(ref this, id, out phwnd);
		public HRESULT SendControlMsg(uint32 id, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* pret) mut => VT.SendControlMsg(ref this, id, uMsg, wParam, lParam, pret);
		public HRESULT QueryActiveShellView(out IShellView* ppshv) mut => VT.QueryActiveShellView(ref this, out ppshv);
		public HRESULT OnViewWindowActive(ref IShellView pshv) mut => VT.OnViewWindowActive(ref this, ref pshv);
		public HRESULT SetToolbarItems(TBBUTTON* lpButtons, uint32 nButtons, uint32 uFlags) mut => VT.SetToolbarItems(ref this, lpButtons, nButtons, uFlags);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, HMENU hmenuShared, out OleMenuGroupWidths lpMenuWidths) InsertMenusSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, HMENU hmenuShared, int holemenuRes, HWND hwndActiveObject) SetMenuSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, HMENU hmenuShared) RemoveMenusSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, PWSTR pszStatusText) SetStatusTextSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, BOOL fEnable) EnableModelessSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, ref MSG pmsg, uint16 wID) TranslateAcceleratorSB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, ref ITEMIDLIST pidl, uint32 wFlags) BrowseObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, uint32 grfMode, out IStream* ppStrm) GetViewStateStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, uint32 id, out HWND phwnd) GetControlWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, uint32 id, uint32 uMsg, WPARAM wParam, LPARAM lParam, LRESULT* pret) SendControlMsg;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, out IShellView* ppshv) QueryActiveShellView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, ref IShellView pshv) OnViewWindowActive;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellBrowser self, TBBUTTON* lpButtons, uint32 nButtons, uint32 uFlags) SetToolbarItems;
		}
	}
	[CRepr]
	public struct IProfferService : IUnknown
	{
		public const new Guid IID = .(0xcb728b20, 0xf786, 0x11ce, 0x92, 0xad, 0x00, 0xaa, 0x00, 0xa7, 0x4c, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ProfferService(in Guid serviceId, ref IServiceProvider serviceProvider, out uint32 cookie) mut => VT.ProfferService(ref this, serviceId, ref serviceProvider, out cookie);
		public HRESULT RevokeService(uint32 cookie) mut => VT.RevokeService(ref this, cookie);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProfferService self, in Guid serviceId, ref IServiceProvider serviceProvider, out uint32 cookie) ProfferService;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProfferService self, uint32 cookie) RevokeService;
		}
	}
	[CRepr]
	public struct IGetServiceIds : IUnknown
	{
		public const new Guid IID = .(0x4a073526, 0x6103, 0x4e21, 0xb7, 0xbc, 0xf5, 0x19, 0xd1, 0x52, 0x4e, 0x5d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetServiceIds(out uint32 serviceIdCount, Guid** serviceIds) mut => VT.GetServiceIds(ref this, out serviceIdCount, serviceIds);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IGetServiceIds self, out uint32 serviceIdCount, Guid** serviceIds) GetServiceIds;
		}
	}
	[CRepr]
	public struct IShellItem : IUnknown
	{
		public const new Guid IID = .(0x43826d1e, 0xe718, 0x42ee, 0xbc, 0x55, 0xa1, 0xe2, 0x61, 0xc3, 0x7b, 0xfe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BindToHandler(ref IBindCtx pbc, in Guid bhid, in Guid riid, void** ppv) mut => VT.BindToHandler(ref this, ref pbc, bhid, riid, ppv);
		public HRESULT GetParent(out IShellItem* ppsi) mut => VT.GetParent(ref this, out ppsi);
		public HRESULT GetDisplayName(SIGDN sigdnName, out PWSTR ppszName) mut => VT.GetDisplayName(ref this, sigdnName, out ppszName);
		public HRESULT GetAttributes(uint32 sfgaoMask, out uint32 psfgaoAttribs) mut => VT.GetAttributes(ref this, sfgaoMask, out psfgaoAttribs);
		public HRESULT Compare(ref IShellItem psi, uint32 hint, out int32 piOrder) mut => VT.Compare(ref this, ref psi, hint, out piOrder);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem self, ref IBindCtx pbc, in Guid bhid, in Guid riid, void** ppv) BindToHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem self, out IShellItem* ppsi) GetParent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem self, SIGDN sigdnName, out PWSTR ppszName) GetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem self, uint32 sfgaoMask, out uint32 psfgaoAttribs) GetAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem self, ref IShellItem psi, uint32 hint, out int32 piOrder) Compare;
		}
	}
	[CRepr]
	public struct IShellItem2 : IShellItem
	{
		public const new Guid IID = .(0x7e9fb0d3, 0x919f, 0x4307, 0xab, 0x2e, 0x9b, 0x18, 0x60, 0x31, 0x0c, 0x93);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) mut => VT.GetPropertyStore(ref this, flags, riid, ppv);
		public HRESULT GetPropertyStoreWithCreateObject(GETPROPERTYSTOREFLAGS flags, ref IUnknown punkCreateObject, in Guid riid, void** ppv) mut => VT.GetPropertyStoreWithCreateObject(ref this, flags, ref punkCreateObject, riid, ppv);
		public HRESULT GetPropertyStoreForKeys(PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) mut => VT.GetPropertyStoreForKeys(ref this, rgKeys, cKeys, flags, riid, ppv);
		public HRESULT GetPropertyDescriptionList(in PROPERTYKEY keyType, in Guid riid, void** ppv) mut => VT.GetPropertyDescriptionList(ref this, keyType, riid, ppv);
		public HRESULT Update(ref IBindCtx pbc) mut => VT.Update(ref this, ref pbc);
		public HRESULT GetProperty(in PROPERTYKEY key, out PROPVARIANT ppropvar) mut => VT.GetProperty(ref this, key, out ppropvar);
		public HRESULT GetCLSID(in PROPERTYKEY key, out Guid pclsid) mut => VT.GetCLSID(ref this, key, out pclsid);
		public HRESULT GetFileTime(in PROPERTYKEY key, out FILETIME pft) mut => VT.GetFileTime(ref this, key, out pft);
		public HRESULT GetInt32(in PROPERTYKEY key, out int32 pi) mut => VT.GetInt32(ref this, key, out pi);
		public HRESULT GetString(in PROPERTYKEY key, out PWSTR ppsz) mut => VT.GetString(ref this, key, out ppsz);
		public HRESULT GetUInt32(in PROPERTYKEY key, out uint32 pui) mut => VT.GetUInt32(ref this, key, out pui);
		public HRESULT GetUInt64(in PROPERTYKEY key, out uint64 pull) mut => VT.GetUInt64(ref this, key, out pull);
		public HRESULT GetBool(in PROPERTYKEY key, out BOOL pf) mut => VT.GetBool(ref this, key, out pf);

		[CRepr]
		public struct VTable : IShellItem.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) GetPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, GETPROPERTYSTOREFLAGS flags, ref IUnknown punkCreateObject, in Guid riid, void** ppv) GetPropertyStoreWithCreateObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, PROPERTYKEY* rgKeys, uint32 cKeys, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) GetPropertyStoreForKeys;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY keyType, in Guid riid, void** ppv) GetPropertyDescriptionList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, ref IBindCtx pbc) Update;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out PROPVARIANT ppropvar) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out Guid pclsid) GetCLSID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out FILETIME pft) GetFileTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out int32 pi) GetInt32;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out PWSTR ppsz) GetString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out uint32 pui) GetUInt32;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out uint64 pull) GetUInt64;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItem2 self, in PROPERTYKEY key, out BOOL pf) GetBool;
		}
	}
	[CRepr]
	public struct IShellItemImageFactory : IUnknown
	{
		public const new Guid IID = .(0xbcc18b79, 0xba16, 0x442f, 0x80, 0xc4, 0x8a, 0x59, 0xc3, 0x0c, 0x46, 0x3b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetImage(SIZE size, SIIGBF flags, out HBITMAP phbm) mut => VT.GetImage(ref this, size, flags, out phbm);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemImageFactory self, SIZE size, SIIGBF flags, out HBITMAP phbm) GetImage;
		}
	}
	[CRepr]
	public struct IEnumShellItems : IUnknown
	{
		public const new Guid IID = .(0x70629033, 0xe363, 0x4a28, 0xa5, 0x67, 0x0d, 0xb7, 0x80, 0x06, 0xe6, 0xd7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, IShellItem** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumShellItems* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumShellItems self, uint32 celt, IShellItem** rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumShellItems self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumShellItems self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumShellItems self, out IEnumShellItems* ppenum) Clone;
		}
	}
	[CRepr]
	public struct ITransferAdviseSink : IUnknown
	{
		public const new Guid IID = .(0xd594d0d8, 0x8da7, 0x457b, 0xb3, 0xb4, 0xce, 0x5d, 0xba, 0xac, 0x0b, 0x88);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT UpdateProgress(uint64 ullSizeCurrent, uint64 ullSizeTotal, int32 nFilesCurrent, int32 nFilesTotal, int32 nFoldersCurrent, int32 nFoldersTotal) mut => VT.UpdateProgress(ref this, ullSizeCurrent, ullSizeTotal, nFilesCurrent, nFilesTotal, nFoldersCurrent, nFoldersTotal);
		public HRESULT UpdateTransferState(uint32 ts) mut => VT.UpdateTransferState(ref this, ts);
		public HRESULT ConfirmOverwrite(ref IShellItem psiSource, ref IShellItem psiDestParent, PWSTR pszName) mut => VT.ConfirmOverwrite(ref this, ref psiSource, ref psiDestParent, pszName);
		public HRESULT ConfirmEncryptionLoss(ref IShellItem psiSource) mut => VT.ConfirmEncryptionLoss(ref this, ref psiSource);
		public HRESULT FileFailure(ref IShellItem psi, PWSTR pszItem, HRESULT hrError, char16* pszRename, uint32 cchRename) mut => VT.FileFailure(ref this, ref psi, pszItem, hrError, pszRename, cchRename);
		public HRESULT SubStreamFailure(ref IShellItem psi, PWSTR pszStreamName, HRESULT hrError) mut => VT.SubStreamFailure(ref this, ref psi, pszStreamName, hrError);
		public HRESULT PropertyFailure(ref IShellItem psi, in PROPERTYKEY pkey, HRESULT hrError) mut => VT.PropertyFailure(ref this, ref psi, pkey, hrError);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, uint64 ullSizeCurrent, uint64 ullSizeTotal, int32 nFilesCurrent, int32 nFilesTotal, int32 nFoldersCurrent, int32 nFoldersTotal) UpdateProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, uint32 ts) UpdateTransferState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, ref IShellItem psiSource, ref IShellItem psiDestParent, PWSTR pszName) ConfirmOverwrite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, ref IShellItem psiSource) ConfirmEncryptionLoss;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, ref IShellItem psi, PWSTR pszItem, HRESULT hrError, char16* pszRename, uint32 cchRename) FileFailure;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, ref IShellItem psi, PWSTR pszStreamName, HRESULT hrError) SubStreamFailure;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferAdviseSink self, ref IShellItem psi, in PROPERTYKEY pkey, HRESULT hrError) PropertyFailure;
		}
	}
	[CRepr]
	public struct ITransferSource : IUnknown
	{
		public const new Guid IID = .(0x00adb003, 0xbde9, 0x45c6, 0x8e, 0x29, 0xd0, 0x9f, 0x93, 0x53, 0xe1, 0x08);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref ITransferAdviseSink psink, out uint32 pdwCookie) mut => VT.Advise(ref this, ref psink, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT SetProperties(ref IPropertyChangeArray pproparray) mut => VT.SetProperties(ref this, ref pproparray);
		public HRESULT OpenItem(ref IShellItem psi, uint32 flags, in Guid riid, void** ppv) mut => VT.OpenItem(ref this, ref psi, flags, riid, ppv);
		public HRESULT MoveItem(ref IShellItem psi, ref IShellItem psiParentDst, PWSTR pszNameDst, uint32 flags, out IShellItem* ppsiNew) mut => VT.MoveItem(ref this, ref psi, ref psiParentDst, pszNameDst, flags, out ppsiNew);
		public HRESULT RecycleItem(ref IShellItem psiSource, ref IShellItem psiParentDest, uint32 flags, out IShellItem* ppsiNewDest) mut => VT.RecycleItem(ref this, ref psiSource, ref psiParentDest, flags, out ppsiNewDest);
		public HRESULT RemoveItem(ref IShellItem psiSource, uint32 flags) mut => VT.RemoveItem(ref this, ref psiSource, flags);
		public HRESULT RenameItem(ref IShellItem psiSource, PWSTR pszNewName, uint32 flags, out IShellItem* ppsiNewDest) mut => VT.RenameItem(ref this, ref psiSource, pszNewName, flags, out ppsiNewDest);
		public HRESULT LinkItem(ref IShellItem psiSource, ref IShellItem psiParentDest, PWSTR pszNewName, uint32 flags, out IShellItem* ppsiNewDest) mut => VT.LinkItem(ref this, ref psiSource, ref psiParentDest, pszNewName, flags, out ppsiNewDest);
		public HRESULT ApplyPropertiesToItem(ref IShellItem psiSource, out IShellItem* ppsiNew) mut => VT.ApplyPropertiesToItem(ref this, ref psiSource, out ppsiNew);
		public HRESULT GetDefaultDestinationName(ref IShellItem psiSource, ref IShellItem psiParentDest, out PWSTR ppszDestinationName) mut => VT.GetDefaultDestinationName(ref this, ref psiSource, ref psiParentDest, out ppszDestinationName);
		public HRESULT EnterFolder(ref IShellItem psiChildFolderDest) mut => VT.EnterFolder(ref this, ref psiChildFolderDest);
		public HRESULT LeaveFolder(ref IShellItem psiChildFolderDest) mut => VT.LeaveFolder(ref this, ref psiChildFolderDest);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref ITransferAdviseSink psink, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IPropertyChangeArray pproparray) SetProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psi, uint32 flags, in Guid riid, void** ppv) OpenItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psi, ref IShellItem psiParentDst, PWSTR pszNameDst, uint32 flags, out IShellItem* ppsiNew) MoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, ref IShellItem psiParentDest, uint32 flags, out IShellItem* ppsiNewDest) RecycleItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, uint32 flags) RemoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, PWSTR pszNewName, uint32 flags, out IShellItem* ppsiNewDest) RenameItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, ref IShellItem psiParentDest, PWSTR pszNewName, uint32 flags, out IShellItem* ppsiNewDest) LinkItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, out IShellItem* ppsiNew) ApplyPropertiesToItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiSource, ref IShellItem psiParentDest, out PWSTR ppszDestinationName) GetDefaultDestinationName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiChildFolderDest) EnterFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferSource self, ref IShellItem psiChildFolderDest) LeaveFolder;
		}
	}
	[CRepr]
	public struct IEnumResources : IUnknown
	{
		public const new Guid IID = .(0x2dd81fe3, 0xa83c, 0x4da9, 0xa3, 0x30, 0x47, 0x24, 0x9d, 0x34, 0x5b, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, SHELL_ITEM_RESOURCE* psir, out uint32 pceltFetched) mut => VT.Next(ref this, celt, psir, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumResources* ppenumr) mut => VT.Clone(ref this, out ppenumr);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumResources self, uint32 celt, SHELL_ITEM_RESOURCE* psir, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumResources self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumResources self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumResources self, out IEnumResources* ppenumr) Clone;
		}
	}
	[CRepr]
	public struct IShellItemResources : IUnknown
	{
		public const new Guid IID = .(0xff5693be, 0x2ce0, 0x4d48, 0xb5, 0xc5, 0x40, 0x81, 0x7d, 0x1a, 0xcd, 0xb9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAttributes(out uint32 pdwAttributes) mut => VT.GetAttributes(ref this, out pdwAttributes);
		public HRESULT GetSize(out uint64 pullSize) mut => VT.GetSize(ref this, out pullSize);
		public HRESULT GetTimes(out FILETIME pftCreation, out FILETIME pftWrite, out FILETIME pftAccess) mut => VT.GetTimes(ref this, out pftCreation, out pftWrite, out pftAccess);
		public HRESULT SetTimes(in FILETIME pftCreation, in FILETIME pftWrite, in FILETIME pftAccess) mut => VT.SetTimes(ref this, pftCreation, pftWrite, pftAccess);
		public HRESULT GetResourceDescription(in SHELL_ITEM_RESOURCE pcsir, out PWSTR ppszDescription) mut => VT.GetResourceDescription(ref this, pcsir, out ppszDescription);
		public HRESULT EnumResources(out IEnumResources* ppenumr) mut => VT.EnumResources(ref this, out ppenumr);
		public HRESULT SupportsResource(in SHELL_ITEM_RESOURCE pcsir) mut => VT.SupportsResource(ref this, pcsir);
		public HRESULT OpenResource(in SHELL_ITEM_RESOURCE pcsir, in Guid riid, void** ppv) mut => VT.OpenResource(ref this, pcsir, riid, ppv);
		public HRESULT CreateResource(in SHELL_ITEM_RESOURCE pcsir, in Guid riid, void** ppv) mut => VT.CreateResource(ref this, pcsir, riid, ppv);
		public HRESULT MarkForDelete() mut => VT.MarkForDelete(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, out uint32 pdwAttributes) GetAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, out uint64 pullSize) GetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, out FILETIME pftCreation, out FILETIME pftWrite, out FILETIME pftAccess) GetTimes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, in FILETIME pftCreation, in FILETIME pftWrite, in FILETIME pftAccess) SetTimes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, in SHELL_ITEM_RESOURCE pcsir, out PWSTR ppszDescription) GetResourceDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, out IEnumResources* ppenumr) EnumResources;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, in SHELL_ITEM_RESOURCE pcsir) SupportsResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, in SHELL_ITEM_RESOURCE pcsir, in Guid riid, void** ppv) OpenResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self, in SHELL_ITEM_RESOURCE pcsir, in Guid riid, void** ppv) CreateResource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemResources self) MarkForDelete;
		}
	}
	[CRepr]
	public struct ITransferDestination : IUnknown
	{
		public const new Guid IID = .(0x48addd32, 0x3ca5, 0x4124, 0xab, 0xe3, 0xb5, 0xa7, 0x25, 0x31, 0xb2, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref ITransferAdviseSink psink, out uint32 pdwCookie) mut => VT.Advise(ref this, ref psink, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT CreateItem(PWSTR pszName, uint32 dwAttributes, uint64 ullSize, uint32 flags, in Guid riidItem, void** ppvItem, in Guid riidResources, void** ppvResources) mut => VT.CreateItem(ref this, pszName, dwAttributes, ullSize, flags, riidItem, ppvItem, riidResources, ppvResources);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferDestination self, ref ITransferAdviseSink psink, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferDestination self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITransferDestination self, PWSTR pszName, uint32 dwAttributes, uint64 ullSize, uint32 flags, in Guid riidItem, void** ppvItem, in Guid riidResources, void** ppvResources) CreateItem;
		}
	}
	[CRepr]
	public struct IFileOperationProgressSink : IUnknown
	{
		public const new Guid IID = .(0x04b0f1a7, 0x9490, 0x44bc, 0x96, 0xe1, 0x42, 0x96, 0xa3, 0x12, 0x52, 0xe2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StartOperations() mut => VT.StartOperations(ref this);
		public HRESULT FinishOperations(HRESULT hrResult) mut => VT.FinishOperations(ref this, hrResult);
		public HRESULT PreRenameItem(uint32 dwFlags, ref IShellItem psiItem, PWSTR pszNewName) mut => VT.PreRenameItem(ref this, dwFlags, ref psiItem, pszNewName);
		public HRESULT PostRenameItem(uint32 dwFlags, ref IShellItem psiItem, PWSTR pszNewName, HRESULT hrRename, ref IShellItem psiNewlyCreated) mut => VT.PostRenameItem(ref this, dwFlags, ref psiItem, pszNewName, hrRename, ref psiNewlyCreated);
		public HRESULT PreMoveItem(uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName) mut => VT.PreMoveItem(ref this, dwFlags, ref psiItem, ref psiDestinationFolder, pszNewName);
		public HRESULT PostMoveItem(uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, HRESULT hrMove, ref IShellItem psiNewlyCreated) mut => VT.PostMoveItem(ref this, dwFlags, ref psiItem, ref psiDestinationFolder, pszNewName, hrMove, ref psiNewlyCreated);
		public HRESULT PreCopyItem(uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName) mut => VT.PreCopyItem(ref this, dwFlags, ref psiItem, ref psiDestinationFolder, pszNewName);
		public HRESULT PostCopyItem(uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, HRESULT hrCopy, ref IShellItem psiNewlyCreated) mut => VT.PostCopyItem(ref this, dwFlags, ref psiItem, ref psiDestinationFolder, pszNewName, hrCopy, ref psiNewlyCreated);
		public HRESULT PreDeleteItem(uint32 dwFlags, ref IShellItem psiItem) mut => VT.PreDeleteItem(ref this, dwFlags, ref psiItem);
		public HRESULT PostDeleteItem(uint32 dwFlags, ref IShellItem psiItem, HRESULT hrDelete, ref IShellItem psiNewlyCreated) mut => VT.PostDeleteItem(ref this, dwFlags, ref psiItem, hrDelete, ref psiNewlyCreated);
		public HRESULT PreNewItem(uint32 dwFlags, ref IShellItem psiDestinationFolder, PWSTR pszNewName) mut => VT.PreNewItem(ref this, dwFlags, ref psiDestinationFolder, pszNewName);
		public HRESULT PostNewItem(uint32 dwFlags, ref IShellItem psiDestinationFolder, PWSTR pszNewName, PWSTR pszTemplateName, uint32 dwFileAttributes, HRESULT hrNew, ref IShellItem psiNewItem) mut => VT.PostNewItem(ref this, dwFlags, ref psiDestinationFolder, pszNewName, pszTemplateName, dwFileAttributes, hrNew, ref psiNewItem);
		public HRESULT UpdateProgress(uint32 iWorkTotal, uint32 iWorkSoFar) mut => VT.UpdateProgress(ref this, iWorkTotal, iWorkSoFar);
		public HRESULT ResetTimer() mut => VT.ResetTimer(ref this);
		public HRESULT PauseTimer() mut => VT.PauseTimer(ref this);
		public HRESULT ResumeTimer() mut => VT.ResumeTimer(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self) StartOperations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, HRESULT hrResult) FinishOperations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, PWSTR pszNewName) PreRenameItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, PWSTR pszNewName, HRESULT hrRename, ref IShellItem psiNewlyCreated) PostRenameItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName) PreMoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, HRESULT hrMove, ref IShellItem psiNewlyCreated) PostMoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName) PreCopyItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, HRESULT hrCopy, ref IShellItem psiNewlyCreated) PostCopyItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem) PreDeleteItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiItem, HRESULT hrDelete, ref IShellItem psiNewlyCreated) PostDeleteItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiDestinationFolder, PWSTR pszNewName) PreNewItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 dwFlags, ref IShellItem psiDestinationFolder, PWSTR pszNewName, PWSTR pszTemplateName, uint32 dwFileAttributes, HRESULT hrNew, ref IShellItem psiNewItem) PostNewItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self, uint32 iWorkTotal, uint32 iWorkSoFar) UpdateProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self) ResetTimer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self) PauseTimer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperationProgressSink self) ResumeTimer;
		}
	}
	[CRepr]
	public struct IShellItemArray : IUnknown
	{
		public const new Guid IID = .(0xb63ea76d, 0x1f85, 0x456f, 0xa1, 0x9c, 0x48, 0x15, 0x9e, 0xfa, 0x85, 0x8b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BindToHandler(ref IBindCtx pbc, in Guid bhid, in Guid riid, void** ppvOut) mut => VT.BindToHandler(ref this, ref pbc, bhid, riid, ppvOut);
		public HRESULT GetPropertyStore(GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) mut => VT.GetPropertyStore(ref this, flags, riid, ppv);
		public HRESULT GetPropertyDescriptionList(in PROPERTYKEY keyType, in Guid riid, void** ppv) mut => VT.GetPropertyDescriptionList(ref this, keyType, riid, ppv);
		public HRESULT GetAttributes(SIATTRIBFLAGS AttribFlags, uint32 sfgaoMask, out uint32 psfgaoAttribs) mut => VT.GetAttributes(ref this, AttribFlags, sfgaoMask, out psfgaoAttribs);
		public HRESULT GetCount(out uint32 pdwNumItems) mut => VT.GetCount(ref this, out pdwNumItems);
		public HRESULT GetItemAt(uint32 dwIndex, out IShellItem* ppsi) mut => VT.GetItemAt(ref this, dwIndex, out ppsi);
		public HRESULT EnumItems(out IEnumShellItems* ppenumShellItems) mut => VT.EnumItems(ref this, out ppenumShellItems);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, ref IBindCtx pbc, in Guid bhid, in Guid riid, void** ppvOut) BindToHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, GETPROPERTYSTOREFLAGS flags, in Guid riid, void** ppv) GetPropertyStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, in PROPERTYKEY keyType, in Guid riid, void** ppv) GetPropertyDescriptionList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, SIATTRIBFLAGS AttribFlags, uint32 sfgaoMask, out uint32 psfgaoAttribs) GetAttributes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, out uint32 pdwNumItems) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, uint32 dwIndex, out IShellItem* ppsi) GetItemAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemArray self, out IEnumShellItems* ppenumShellItems) EnumItems;
		}
	}
	[CRepr]
	public struct IInitializeWithItem : IUnknown
	{
		public const new Guid IID = .(0x7f73be3f, 0xfb79, 0x493c, 0xa6, 0xc7, 0x7e, 0xe1, 0x4e, 0x24, 0x58, 0x41);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref IShellItem psi, uint32 grfMode) mut => VT.Initialize(ref this, ref psi, grfMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithItem self, ref IShellItem psi, uint32 grfMode) Initialize;
		}
	}
	[CRepr]
	public struct IObjectWithSelection : IUnknown
	{
		public const new Guid IID = .(0x1c9cd5bb, 0x98e9, 0x4491, 0xa6, 0x0f, 0x31, 0xaa, 0xcc, 0x72, 0xb8, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSelection(ref IShellItemArray psia) mut => VT.SetSelection(ref this, ref psia);
		public HRESULT GetSelection(in Guid riid, void** ppv) mut => VT.GetSelection(ref this, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithSelection self, ref IShellItemArray psia) SetSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithSelection self, in Guid riid, void** ppv) GetSelection;
		}
	}
	[CRepr]
	public struct IObjectWithBackReferences : IUnknown
	{
		public const new Guid IID = .(0x321a6a6a, 0xd61f, 0x4bf3, 0x97, 0xae, 0x14, 0xbe, 0x29, 0x86, 0xbb, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RemoveBackReferences() mut => VT.RemoveBackReferences(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithBackReferences self) RemoveBackReferences;
		}
	}
	[CRepr]
	public struct ICategoryProvider : IUnknown
	{
		public const new Guid IID = .(0x9af64809, 0x5864, 0x4c26, 0xa7, 0x20, 0xc1, 0xf7, 0x8c, 0x08, 0x6e, 0xe3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CanCategorizeOnSCID(in PROPERTYKEY pscid) mut => VT.CanCategorizeOnSCID(ref this, pscid);
		public HRESULT GetDefaultCategory(out Guid pguid, out PROPERTYKEY pscid) mut => VT.GetDefaultCategory(ref this, out pguid, out pscid);
		public HRESULT GetCategoryForSCID(in PROPERTYKEY pscid, out Guid pguid) mut => VT.GetCategoryForSCID(ref this, pscid, out pguid);
		public HRESULT EnumCategories(out IEnumGUID* penum) mut => VT.EnumCategories(ref this, out penum);
		public HRESULT GetCategoryName(in Guid pguid, char16* pszName, uint32 cch) mut => VT.GetCategoryName(ref this, pguid, pszName, cch);
		public HRESULT CreateCategory(in Guid pguid, in Guid riid, void** ppv) mut => VT.CreateCategory(ref this, pguid, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, in PROPERTYKEY pscid) CanCategorizeOnSCID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, out Guid pguid, out PROPERTYKEY pscid) GetDefaultCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, in PROPERTYKEY pscid, out Guid pguid) GetCategoryForSCID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, out IEnumGUID* penum) EnumCategories;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, in Guid pguid, char16* pszName, uint32 cch) GetCategoryName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategoryProvider self, in Guid pguid, in Guid riid, void** ppv) CreateCategory;
		}
	}
	[CRepr]
	public struct ICategorizer : IUnknown
	{
		public const new Guid IID = .(0xa3b14589, 0x9174, 0x49a8, 0x89, 0xa3, 0x06, 0xa1, 0xae, 0x2b, 0x9b, 0xa7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDescription(char16* pszDesc, uint32 cch) mut => VT.GetDescription(ref this, pszDesc, cch);
		public HRESULT GetCategory(uint32 cidl, ITEMIDLIST** apidl, uint32* rgCategoryIds) mut => VT.GetCategory(ref this, cidl, apidl, rgCategoryIds);
		public HRESULT GetCategoryInfo(uint32 dwCategoryId, out CATEGORY_INFO pci) mut => VT.GetCategoryInfo(ref this, dwCategoryId, out pci);
		public HRESULT CompareCategory(CATSORT_FLAGS csfFlags, uint32 dwCategoryId1, uint32 dwCategoryId2) mut => VT.CompareCategory(ref this, csfFlags, dwCategoryId1, dwCategoryId2);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategorizer self, char16* pszDesc, uint32 cch) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategorizer self, uint32 cidl, ITEMIDLIST** apidl, uint32* rgCategoryIds) GetCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategorizer self, uint32 dwCategoryId, out CATEGORY_INFO pci) GetCategoryInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICategorizer self, CATSORT_FLAGS csfFlags, uint32 dwCategoryId1, uint32 dwCategoryId2) CompareCategory;
		}
	}
	[CRepr]
	public struct IDropTargetHelper : IUnknown
	{
		public const new Guid IID = .(0x4657278b, 0x411b, 0x11d2, 0x83, 0x9a, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DragEnter(HWND hwndTarget, ref IDataObject pDataObject, ref POINT ppt, uint32 dwEffect) mut => VT.DragEnter(ref this, hwndTarget, ref pDataObject, ref ppt, dwEffect);
		public HRESULT DragLeave() mut => VT.DragLeave(ref this);
		public HRESULT DragOver(ref POINT ppt, uint32 dwEffect) mut => VT.DragOver(ref this, ref ppt, dwEffect);
		public HRESULT Drop(ref IDataObject pDataObject, ref POINT ppt, uint32 dwEffect) mut => VT.Drop(ref this, ref pDataObject, ref ppt, dwEffect);
		public HRESULT Show(BOOL fShow) mut => VT.Show(ref this, fShow);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetHelper self, HWND hwndTarget, ref IDataObject pDataObject, ref POINT ppt, uint32 dwEffect) DragEnter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetHelper self) DragLeave;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetHelper self, ref POINT ppt, uint32 dwEffect) DragOver;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetHelper self, ref IDataObject pDataObject, ref POINT ppt, uint32 dwEffect) Drop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDropTargetHelper self, BOOL fShow) Show;
		}
	}
	[CRepr]
	public struct IDragSourceHelper : IUnknown
	{
		public const new Guid IID = .(0xde5bf786, 0x477a, 0x11d2, 0x83, 0x9d, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeFromBitmap(ref SHDRAGIMAGE pshdi, ref IDataObject pDataObject) mut => VT.InitializeFromBitmap(ref this, ref pshdi, ref pDataObject);
		public HRESULT InitializeFromWindow(HWND hwnd, POINT* ppt, ref IDataObject pDataObject) mut => VT.InitializeFromWindow(ref this, hwnd, ppt, ref pDataObject);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragSourceHelper self, ref SHDRAGIMAGE pshdi, ref IDataObject pDataObject) InitializeFromBitmap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragSourceHelper self, HWND hwnd, POINT* ppt, ref IDataObject pDataObject) InitializeFromWindow;
		}
	}
	[CRepr]
	public struct IShellLinkA : IUnknown
	{
		public const new Guid IID = .(0x000214ee, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPath(uint8* pszFile, int32 cch, out WIN32_FIND_DATAA pfd, uint32 fFlags) mut => VT.GetPath(ref this, pszFile, cch, out pfd, fFlags);
		public HRESULT GetIDList(out ITEMIDLIST* ppidl) mut => VT.GetIDList(ref this, out ppidl);
		public HRESULT SetIDList(ref ITEMIDLIST pidl) mut => VT.SetIDList(ref this, ref pidl);
		public HRESULT GetDescription(uint8* pszName, int32 cch) mut => VT.GetDescription(ref this, pszName, cch);
		public HRESULT SetDescription(PSTR pszName) mut => VT.SetDescription(ref this, pszName);
		public HRESULT GetWorkingDirectory(uint8* pszDir, int32 cch) mut => VT.GetWorkingDirectory(ref this, pszDir, cch);
		public HRESULT SetWorkingDirectory(PSTR pszDir) mut => VT.SetWorkingDirectory(ref this, pszDir);
		public HRESULT GetArguments(uint8* pszArgs, int32 cch) mut => VT.GetArguments(ref this, pszArgs, cch);
		public HRESULT SetArguments(PSTR pszArgs) mut => VT.SetArguments(ref this, pszArgs);
		public HRESULT GetHotkey(out uint16 pwHotkey) mut => VT.GetHotkey(ref this, out pwHotkey);
		public HRESULT SetHotkey(uint16 wHotkey) mut => VT.SetHotkey(ref this, wHotkey);
		public HRESULT GetShowCmd(out int32 piShowCmd) mut => VT.GetShowCmd(ref this, out piShowCmd);
		public HRESULT SetShowCmd(int32 iShowCmd) mut => VT.SetShowCmd(ref this, iShowCmd);
		public HRESULT GetIconLocation(uint8* pszIconPath, int32 cch, out int32 piIcon) mut => VT.GetIconLocation(ref this, pszIconPath, cch, out piIcon);
		public HRESULT SetIconLocation(PSTR pszIconPath, int32 iIcon) mut => VT.SetIconLocation(ref this, pszIconPath, iIcon);
		public HRESULT SetRelativePath(PSTR pszPathRel, uint32 dwReserved) mut => VT.SetRelativePath(ref this, pszPathRel, dwReserved);
		public HRESULT Resolve(HWND hwnd, uint32 fFlags) mut => VT.Resolve(ref this, hwnd, fFlags);
		public HRESULT SetPath(PSTR pszFile) mut => VT.SetPath(ref this, pszFile);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint8* pszFile, int32 cch, out WIN32_FIND_DATAA pfd, uint32 fFlags) GetPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, out ITEMIDLIST* ppidl) GetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, ref ITEMIDLIST pidl) SetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint8* pszName, int32 cch) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszName) SetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint8* pszDir, int32 cch) GetWorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszDir) SetWorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint8* pszArgs, int32 cch) GetArguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszArgs) SetArguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, out uint16 pwHotkey) GetHotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint16 wHotkey) SetHotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, out int32 piShowCmd) GetShowCmd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, int32 iShowCmd) SetShowCmd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, uint8* pszIconPath, int32 cch, out int32 piIcon) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszIconPath, int32 iIcon) SetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszPathRel, uint32 dwReserved) SetRelativePath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, HWND hwnd, uint32 fFlags) Resolve;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkA self, PSTR pszFile) SetPath;
		}
	}
	[CRepr]
	public struct IShellLinkW : IUnknown
	{
		public const new Guid IID = .(0x000214f9, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPath(char16* pszFile, int32 cch, out WIN32_FIND_DATAW pfd, uint32 fFlags) mut => VT.GetPath(ref this, pszFile, cch, out pfd, fFlags);
		public HRESULT GetIDList(out ITEMIDLIST* ppidl) mut => VT.GetIDList(ref this, out ppidl);
		public HRESULT SetIDList(ref ITEMIDLIST pidl) mut => VT.SetIDList(ref this, ref pidl);
		public HRESULT GetDescription(char16* pszName, int32 cch) mut => VT.GetDescription(ref this, pszName, cch);
		public HRESULT SetDescription(PWSTR pszName) mut => VT.SetDescription(ref this, pszName);
		public HRESULT GetWorkingDirectory(char16* pszDir, int32 cch) mut => VT.GetWorkingDirectory(ref this, pszDir, cch);
		public HRESULT SetWorkingDirectory(PWSTR pszDir) mut => VT.SetWorkingDirectory(ref this, pszDir);
		public HRESULT GetArguments(char16* pszArgs, int32 cch) mut => VT.GetArguments(ref this, pszArgs, cch);
		public HRESULT SetArguments(PWSTR pszArgs) mut => VT.SetArguments(ref this, pszArgs);
		public HRESULT GetHotkey(out uint16 pwHotkey) mut => VT.GetHotkey(ref this, out pwHotkey);
		public HRESULT SetHotkey(uint16 wHotkey) mut => VT.SetHotkey(ref this, wHotkey);
		public HRESULT GetShowCmd(out int32 piShowCmd) mut => VT.GetShowCmd(ref this, out piShowCmd);
		public HRESULT SetShowCmd(int32 iShowCmd) mut => VT.SetShowCmd(ref this, iShowCmd);
		public HRESULT GetIconLocation(char16* pszIconPath, int32 cch, out int32 piIcon) mut => VT.GetIconLocation(ref this, pszIconPath, cch, out piIcon);
		public HRESULT SetIconLocation(PWSTR pszIconPath, int32 iIcon) mut => VT.SetIconLocation(ref this, pszIconPath, iIcon);
		public HRESULT SetRelativePath(PWSTR pszPathRel, uint32 dwReserved) mut => VT.SetRelativePath(ref this, pszPathRel, dwReserved);
		public HRESULT Resolve(HWND hwnd, uint32 fFlags) mut => VT.Resolve(ref this, hwnd, fFlags);
		public HRESULT SetPath(PWSTR pszFile) mut => VT.SetPath(ref this, pszFile);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, char16* pszFile, int32 cch, out WIN32_FIND_DATAW pfd, uint32 fFlags) GetPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, out ITEMIDLIST* ppidl) GetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, ref ITEMIDLIST pidl) SetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, char16* pszName, int32 cch) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszName) SetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, char16* pszDir, int32 cch) GetWorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszDir) SetWorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, char16* pszArgs, int32 cch) GetArguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszArgs) SetArguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, out uint16 pwHotkey) GetHotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, uint16 wHotkey) SetHotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, out int32 piShowCmd) GetShowCmd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, int32 iShowCmd) SetShowCmd;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, char16* pszIconPath, int32 cch, out int32 piIcon) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszIconPath, int32 iIcon) SetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszPathRel, uint32 dwReserved) SetRelativePath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, HWND hwnd, uint32 fFlags) Resolve;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkW self, PWSTR pszFile) SetPath;
		}
	}
	[CRepr]
	public struct IShellLinkDataList : IUnknown
	{
		public const new Guid IID = .(0x45e2b4ae, 0xb1c3, 0x11d0, 0xb9, 0x2f, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddDataBlock(void* pDataBlock) mut => VT.AddDataBlock(ref this, pDataBlock);
		public HRESULT CopyDataBlock(uint32 dwSig, void** ppDataBlock) mut => VT.CopyDataBlock(ref this, dwSig, ppDataBlock);
		public HRESULT RemoveDataBlock(uint32 dwSig) mut => VT.RemoveDataBlock(ref this, dwSig);
		public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
		public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDataList self, void* pDataBlock) AddDataBlock;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDataList self, uint32 dwSig, void** ppDataBlock) CopyDataBlock;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDataList self, uint32 dwSig) RemoveDataBlock;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDataList self, out uint32 pdwFlags) ComGetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDataList self, uint32 dwFlags) SetFlags;
		}
	}
	[CRepr]
	public struct IResolveShellLink : IUnknown
	{
		public const new Guid IID = .(0x5cd52983, 0x9449, 0x11d2, 0x96, 0x3a, 0x00, 0xc0, 0x4f, 0x79, 0xad, 0xf0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ResolveShellLink(ref IUnknown punkLink, HWND hwnd, uint32 fFlags) mut => VT.ResolveShellLink(ref this, ref punkLink, hwnd, fFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResolveShellLink self, ref IUnknown punkLink, HWND hwnd, uint32 fFlags) ResolveShellLink;
		}
	}
	[CRepr]
	public struct IActionProgressDialog : IUnknown
	{
		public const new Guid IID = .(0x49ff1172, 0xeadc, 0x446d, 0x92, 0x85, 0x15, 0x64, 0x53, 0xa6, 0x43, 0x1c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(uint32 flags, PWSTR pszTitle, PWSTR pszCancel) mut => VT.Initialize(ref this, flags, pszTitle, pszCancel);
		public HRESULT Stop() mut => VT.Stop(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgressDialog self, uint32 flags, PWSTR pszTitle, PWSTR pszCancel) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgressDialog self) Stop;
		}
	}
	[CRepr]
	public struct IActionProgress : IUnknown
	{
		public const new Guid IID = .(0x49ff1173, 0xeadc, 0x446d, 0x92, 0x85, 0x15, 0x64, 0x53, 0xa6, 0x43, 0x1c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Begin(SPACTION action, uint32 flags) mut => VT.Begin(ref this, action, flags);
		public HRESULT UpdateProgress(uint64 ulCompleted, uint64 ulTotal) mut => VT.UpdateProgress(ref this, ulCompleted, ulTotal);
		public HRESULT UpdateText(SPTEXT sptext, PWSTR pszText, BOOL fMayCompact) mut => VT.UpdateText(ref this, sptext, pszText, fMayCompact);
		public HRESULT QueryCancel(out BOOL pfCancelled) mut => VT.QueryCancel(ref this, out pfCancelled);
		public HRESULT ResetCancel() mut => VT.ResetCancel(ref this);
		public HRESULT End() mut => VT.End(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self, SPACTION action, uint32 flags) Begin;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self, uint64 ulCompleted, uint64 ulTotal) UpdateProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self, SPTEXT sptext, PWSTR pszText, BOOL fMayCompact) UpdateText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self, out BOOL pfCancelled) QueryCancel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self) ResetCancel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IActionProgress self) End;
		}
	}
	[CRepr]
	public struct IShellExtInit : IUnknown
	{
		public const new Guid IID = .(0x000214e8, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ITEMIDLIST* pidlFolder, IDataObject* pdtobj, HKEY hkeyProgID) mut => VT.Initialize(ref this, pidlFolder, pdtobj, hkeyProgID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellExtInit self, ITEMIDLIST* pidlFolder, IDataObject* pdtobj, HKEY hkeyProgID) Initialize;
		}
	}
	[CRepr]
	public struct IShellPropSheetExt : IUnknown
	{
		public const new Guid IID = .(0x000214e9, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddPages(LPFNSVADDPROPSHEETPAGE pfnAddPage, LPARAM lParam) mut => VT.AddPages(ref this, pfnAddPage, lParam);
		public HRESULT ReplacePage(uint32 uPageID, LPFNSVADDPROPSHEETPAGE pfnReplaceWith, LPARAM lParam) mut => VT.ReplacePage(ref this, uPageID, pfnReplaceWith, lParam);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellPropSheetExt self, LPFNSVADDPROPSHEETPAGE pfnAddPage, LPARAM lParam) AddPages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellPropSheetExt self, uint32 uPageID, LPFNSVADDPROPSHEETPAGE pfnReplaceWith, LPARAM lParam) ReplacePage;
		}
	}
	[CRepr]
	public struct IRemoteComputer : IUnknown
	{
		public const new Guid IID = .(0x000214fe, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(PWSTR pszMachine, BOOL bEnumerating) mut => VT.Initialize(ref this, pszMachine, bEnumerating);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRemoteComputer self, PWSTR pszMachine, BOOL bEnumerating) Initialize;
		}
	}
	[CRepr]
	public struct IQueryContinue : IUnknown
	{
		public const new Guid IID = .(0x7307055c, 0xb24a, 0x486b, 0x9f, 0x25, 0x16, 0x3e, 0x59, 0x7a, 0x28, 0xa9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryContinue() mut => VT.QueryContinue(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryContinue self) QueryContinue;
		}
	}
	[CRepr]
	public struct IObjectWithCancelEvent : IUnknown
	{
		public const new Guid IID = .(0xf279b885, 0x0ae9, 0x4b85, 0xac, 0x06, 0xdd, 0xec, 0xf9, 0x40, 0x89, 0x41);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCancelEvent(out HANDLE phEvent) mut => VT.GetCancelEvent(ref this, out phEvent);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithCancelEvent self, out HANDLE phEvent) GetCancelEvent;
		}
	}
	[CRepr]
	public struct IUserNotification : IUnknown
	{
		public const new Guid IID = .(0xba9711ba, 0x5893, 0x4787, 0xa7, 0xe1, 0x41, 0x27, 0x71, 0x51, 0x55, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBalloonInfo(PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) mut => VT.SetBalloonInfo(ref this, pszTitle, pszText, dwInfoFlags);
		public HRESULT SetBalloonRetry(uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) mut => VT.SetBalloonRetry(ref this, dwShowTime, dwInterval, cRetryCount);
		public HRESULT SetIconInfo(HICON hIcon, PWSTR pszToolTip) mut => VT.SetIconInfo(ref this, hIcon, pszToolTip);
		public HRESULT Show(ref IQueryContinue pqc, uint32 dwContinuePollInterval) mut => VT.Show(ref this, ref pqc, dwContinuePollInterval);
		public HRESULT PlaySound(PWSTR pszSoundName) mut => VT.PlaySound(ref this, pszSoundName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification self, PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) SetBalloonInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification self, uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) SetBalloonRetry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification self, HICON hIcon, PWSTR pszToolTip) SetIconInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification self, ref IQueryContinue pqc, uint32 dwContinuePollInterval) Show;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification self, PWSTR pszSoundName) PlaySound;
		}
	}
	[CRepr]
	public struct IItemNameLimits : IUnknown
	{
		public const new Guid IID = .(0x1df0d7f1, 0xb267, 0x4d28, 0x8b, 0x10, 0x12, 0xe2, 0x32, 0x02, 0xa5, 0xc4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetValidCharacters(out PWSTR ppwszValidChars, out PWSTR ppwszInvalidChars) mut => VT.GetValidCharacters(ref this, out ppwszValidChars, out ppwszInvalidChars);
		public HRESULT GetMaxLength(PWSTR pszName, out int32 piMaxNameLen) mut => VT.GetMaxLength(ref this, pszName, out piMaxNameLen);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IItemNameLimits self, out PWSTR ppwszValidChars, out PWSTR ppwszInvalidChars) GetValidCharacters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IItemNameLimits self, PWSTR pszName, out int32 piMaxNameLen) GetMaxLength;
		}
	}
	[CRepr]
	public struct ISearchFolderItemFactory : IUnknown
	{
		public const new Guid IID = .(0xa0ffbc28, 0x5482, 0x4366, 0xbe, 0x27, 0x3e, 0x81, 0xe7, 0x8e, 0x06, 0xc2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetDisplayName(PWSTR pszDisplayName) mut => VT.SetDisplayName(ref this, pszDisplayName);
		public HRESULT SetFolderTypeID(Guid ftid) mut => VT.SetFolderTypeID(ref this, ftid);
		public HRESULT SetFolderLogicalViewMode(FOLDERLOGICALVIEWMODE flvm) mut => VT.SetFolderLogicalViewMode(ref this, flvm);
		public HRESULT SetIconSize(int32 iIconSize) mut => VT.SetIconSize(ref this, iIconSize);
		public HRESULT SetVisibleColumns(uint32 cVisibleColumns, PROPERTYKEY* rgKey) mut => VT.SetVisibleColumns(ref this, cVisibleColumns, rgKey);
		public HRESULT SetSortColumns(uint32 cSortColumns, SORTCOLUMN* rgSortColumns) mut => VT.SetSortColumns(ref this, cSortColumns, rgSortColumns);
		public HRESULT SetGroupColumn(in PROPERTYKEY keyGroup) mut => VT.SetGroupColumn(ref this, keyGroup);
		public HRESULT SetStacks(uint32 cStackKeys, PROPERTYKEY* rgStackKeys) mut => VT.SetStacks(ref this, cStackKeys, rgStackKeys);
		public HRESULT SetScope(ref IShellItemArray psiaScope) mut => VT.SetScope(ref this, ref psiaScope);
		public HRESULT SetCondition(ref ICondition pCondition) mut => VT.SetCondition(ref this, ref pCondition);
		public HRESULT GetShellItem(in Guid riid, void** ppv) mut => VT.GetShellItem(ref this, riid, ppv);
		public HRESULT GetIDList(out ITEMIDLIST* ppidl) mut => VT.GetIDList(ref this, out ppidl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, PWSTR pszDisplayName) SetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, Guid ftid) SetFolderTypeID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, FOLDERLOGICALVIEWMODE flvm) SetFolderLogicalViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, int32 iIconSize) SetIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, uint32 cVisibleColumns, PROPERTYKEY* rgKey) SetVisibleColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, uint32 cSortColumns, SORTCOLUMN* rgSortColumns) SetSortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, in PROPERTYKEY keyGroup) SetGroupColumn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, uint32 cStackKeys, PROPERTYKEY* rgStackKeys) SetStacks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, ref IShellItemArray psiaScope) SetScope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, ref ICondition pCondition) SetCondition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, in Guid riid, void** ppv) GetShellItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchFolderItemFactory self, out ITEMIDLIST* ppidl) GetIDList;
		}
	}
	[CRepr]
	public struct IExtractImage : IUnknown
	{
		public const new Guid IID = .(0xbb2e617c, 0x0920, 0x11d1, 0x9a, 0x0b, 0x00, 0xc0, 0x4f, 0xc2, 0xd6, 0xc1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetLocation(char16* pszPathBuffer, uint32 cch, out uint32 pdwPriority, in SIZE prgSize, uint32 dwRecClrDepth, out uint32 pdwFlags) mut => VT.GetLocation(ref this, pszPathBuffer, cch, out pdwPriority, prgSize, dwRecClrDepth, out pdwFlags);
		public HRESULT Extract(out HBITMAP phBmpThumbnail) mut => VT.Extract(ref this, out phBmpThumbnail);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractImage self, char16* pszPathBuffer, uint32 cch, out uint32 pdwPriority, in SIZE prgSize, uint32 dwRecClrDepth, out uint32 pdwFlags) GetLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractImage self, out HBITMAP phBmpThumbnail) Extract;
		}
	}
	[CRepr]
	public struct IExtractImage2 : IExtractImage
	{
		public const new Guid IID = .(0x953bb1ee, 0x93b4, 0x11d1, 0x98, 0xa3, 0x00, 0xc0, 0x4f, 0xb6, 0x87, 0xda);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDateStamp(out FILETIME pDateStamp) mut => VT.GetDateStamp(ref this, out pDateStamp);

		[CRepr]
		public struct VTable : IExtractImage.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractImage2 self, out FILETIME pDateStamp) GetDateStamp;
		}
	}
	[CRepr]
	public struct IThumbnailHandlerFactory : IUnknown
	{
		public const new Guid IID = .(0xe35b4b2e, 0x00da, 0x4bc1, 0x9f, 0x13, 0x38, 0xbc, 0x11, 0xf5, 0xd4, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetThumbnailHandler(ref ITEMIDLIST pidlChild, ref IBindCtx pbc, in Guid riid, void** ppv) mut => VT.GetThumbnailHandler(ref this, ref pidlChild, ref pbc, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailHandlerFactory self, ref ITEMIDLIST pidlChild, ref IBindCtx pbc, in Guid riid, void** ppv) GetThumbnailHandler;
		}
	}
	[CRepr]
	public struct IParentAndItem : IUnknown
	{
		public const new Guid IID = .(0xb3a4b685, 0xb685, 0x4805, 0x99, 0xd9, 0x5d, 0xea, 0xd2, 0x87, 0x32, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetParentAndItem(ref ITEMIDLIST pidlParent, ref IShellFolder psf, ref ITEMIDLIST pidlChild) mut => VT.SetParentAndItem(ref this, ref pidlParent, ref psf, ref pidlChild);
		public HRESULT GetParentAndItem(ITEMIDLIST** ppidlParent, IShellFolder** ppsf, ITEMIDLIST** ppidlChild) mut => VT.GetParentAndItem(ref this, ppidlParent, ppsf, ppidlChild);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IParentAndItem self, ref ITEMIDLIST pidlParent, ref IShellFolder psf, ref ITEMIDLIST pidlChild) SetParentAndItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IParentAndItem self, ITEMIDLIST** ppidlParent, IShellFolder** ppsf, ITEMIDLIST** ppidlChild) GetParentAndItem;
		}
	}
	[CRepr]
	public struct IDockingWindow : IOleWindow
	{
		public const new Guid IID = .(0x012dd920, 0x7b26, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ShowDW(BOOL fShow) mut => VT.ShowDW(ref this, fShow);
		public HRESULT CloseDW(uint32 dwReserved) mut => VT.CloseDW(ref this, dwReserved);
		public HRESULT ResizeBorderDW(ref RECT prcBorder, ref IUnknown punkToolbarSite, BOOL fReserved) mut => VT.ResizeBorderDW(ref this, ref prcBorder, ref punkToolbarSite, fReserved);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindow self, BOOL fShow) ShowDW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindow self, uint32 dwReserved) CloseDW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindow self, ref RECT prcBorder, ref IUnknown punkToolbarSite, BOOL fReserved) ResizeBorderDW;
		}
	}
	[CRepr]
	public struct IDeskBand : IDockingWindow
	{
		public const new Guid IID = .(0xeb0fe172, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBandInfo(uint32 dwBandID, uint32 dwViewMode, out DESKBANDINFO pdbi) mut => VT.GetBandInfo(ref this, dwBandID, dwViewMode, out pdbi);

		[CRepr]
		public struct VTable : IDockingWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBand self, uint32 dwBandID, uint32 dwViewMode, out DESKBANDINFO pdbi) GetBandInfo;
		}
	}
	[CRepr]
	public struct IDeskBandInfo : IUnknown
	{
		public const new Guid IID = .(0x77e425fc, 0xcbf9, 0x4307, 0xba, 0x6a, 0xbb, 0x57, 0x27, 0x74, 0x56, 0x61);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDefaultBandWidth(uint32 dwBandID, uint32 dwViewMode, out int32 pnWidth) mut => VT.GetDefaultBandWidth(ref this, dwBandID, dwViewMode, out pnWidth);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBandInfo self, uint32 dwBandID, uint32 dwViewMode, out int32 pnWidth) GetDefaultBandWidth;
		}
	}
	[CRepr]
	public struct ITaskbarList : IUnknown
	{
		public const new Guid IID = .(0x56fdf342, 0xfd6d, 0x11d0, 0x95, 0x8a, 0x00, 0x60, 0x97, 0xc9, 0xa0, 0x90);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT HrInit() mut => VT.HrInit(ref this);
		public HRESULT AddTab(HWND hwnd) mut => VT.AddTab(ref this, hwnd);
		public HRESULT DeleteTab(HWND hwnd) mut => VT.DeleteTab(ref this, hwnd);
		public HRESULT ActivateTab(HWND hwnd) mut => VT.ActivateTab(ref this, hwnd);
		public HRESULT SetActiveAlt(HWND hwnd) mut => VT.SetActiveAlt(ref this, hwnd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList self) HrInit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList self, HWND hwnd) AddTab;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList self, HWND hwnd) DeleteTab;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList self, HWND hwnd) ActivateTab;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList self, HWND hwnd) SetActiveAlt;
		}
	}
	[CRepr]
	public struct ITaskbarList2 : ITaskbarList
	{
		public const new Guid IID = .(0x602d4995, 0xb13a, 0x429b, 0xa6, 0x6e, 0x19, 0x35, 0xe4, 0x4f, 0x43, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MarkFullscreenWindow(HWND hwnd, BOOL fFullscreen) mut => VT.MarkFullscreenWindow(ref this, hwnd, fFullscreen);

		[CRepr]
		public struct VTable : ITaskbarList.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList2 self, HWND hwnd, BOOL fFullscreen) MarkFullscreenWindow;
		}
	}
	[CRepr]
	public struct ITaskbarList3 : ITaskbarList2
	{
		public const new Guid IID = .(0xea1afb91, 0x9e28, 0x4b86, 0x90, 0xe9, 0x9e, 0x9f, 0x8a, 0x5e, 0xef, 0xaf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetProgressValue(HWND hwnd, uint64 ullCompleted, uint64 ullTotal) mut => VT.SetProgressValue(ref this, hwnd, ullCompleted, ullTotal);
		public HRESULT SetProgressState(HWND hwnd, TBPFLAG tbpFlags) mut => VT.SetProgressState(ref this, hwnd, tbpFlags);
		public HRESULT RegisterTab(HWND hwndTab, HWND hwndMDI) mut => VT.RegisterTab(ref this, hwndTab, hwndMDI);
		public HRESULT UnregisterTab(HWND hwndTab) mut => VT.UnregisterTab(ref this, hwndTab);
		public HRESULT SetTabOrder(HWND hwndTab, HWND hwndInsertBefore) mut => VT.SetTabOrder(ref this, hwndTab, hwndInsertBefore);
		public HRESULT SetTabActive(HWND hwndTab, HWND hwndMDI, uint32 dwReserved) mut => VT.SetTabActive(ref this, hwndTab, hwndMDI, dwReserved);
		public HRESULT ThumbBarAddButtons(HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) mut => VT.ThumbBarAddButtons(ref this, hwnd, cButtons, pButton);
		public HRESULT ThumbBarUpdateButtons(HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) mut => VT.ThumbBarUpdateButtons(ref this, hwnd, cButtons, pButton);
		public HRESULT ThumbBarSetImageList(HWND hwnd, HIMAGELIST himl) mut => VT.ThumbBarSetImageList(ref this, hwnd, himl);
		public HRESULT SetOverlayIcon(HWND hwnd, HICON hIcon, PWSTR pszDescription) mut => VT.SetOverlayIcon(ref this, hwnd, hIcon, pszDescription);
		public HRESULT SetThumbnailTooltip(HWND hwnd, PWSTR pszTip) mut => VT.SetThumbnailTooltip(ref this, hwnd, pszTip);
		public HRESULT SetThumbnailClip(HWND hwnd, ref RECT prcClip) mut => VT.SetThumbnailClip(ref this, hwnd, ref prcClip);

		[CRepr]
		public struct VTable : ITaskbarList2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, uint64 ullCompleted, uint64 ullTotal) SetProgressValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, TBPFLAG tbpFlags) SetProgressState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwndTab, HWND hwndMDI) RegisterTab;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwndTab) UnregisterTab;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwndTab, HWND hwndInsertBefore) SetTabOrder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwndTab, HWND hwndMDI, uint32 dwReserved) SetTabActive;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) ThumbBarAddButtons;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, uint32 cButtons, THUMBBUTTON* pButton) ThumbBarUpdateButtons;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, HIMAGELIST himl) ThumbBarSetImageList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, HICON hIcon, PWSTR pszDescription) SetOverlayIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, PWSTR pszTip) SetThumbnailTooltip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList3 self, HWND hwnd, ref RECT prcClip) SetThumbnailClip;
		}
	}
	[CRepr]
	public struct ITaskbarList4 : ITaskbarList3
	{
		public const new Guid IID = .(0xc43dc798, 0x95d1, 0x4bea, 0x90, 0x30, 0xbb, 0x99, 0xe2, 0x98, 0x3a, 0x1a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetTabProperties(HWND hwndTab, STPFLAG stpFlags) mut => VT.SetTabProperties(ref this, hwndTab, stpFlags);

		[CRepr]
		public struct VTable : ITaskbarList3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITaskbarList4 self, HWND hwndTab, STPFLAG stpFlags) SetTabProperties;
		}
	}
	[CRepr]
	public struct IExplorerBrowserEvents : IUnknown
	{
		public const new Guid IID = .(0x361bbdc7, 0xe6ee, 0x4e13, 0xbe, 0x58, 0x58, 0xe2, 0x24, 0x0c, 0x81, 0x0f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnNavigationPending(ref ITEMIDLIST pidlFolder) mut => VT.OnNavigationPending(ref this, ref pidlFolder);
		public HRESULT OnViewCreated(ref IShellView psv) mut => VT.OnViewCreated(ref this, ref psv);
		public HRESULT OnNavigationComplete(ref ITEMIDLIST pidlFolder) mut => VT.OnNavigationComplete(ref this, ref pidlFolder);
		public HRESULT OnNavigationFailed(ref ITEMIDLIST pidlFolder) mut => VT.OnNavigationFailed(ref this, ref pidlFolder);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowserEvents self, ref ITEMIDLIST pidlFolder) OnNavigationPending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowserEvents self, ref IShellView psv) OnViewCreated;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowserEvents self, ref ITEMIDLIST pidlFolder) OnNavigationComplete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowserEvents self, ref ITEMIDLIST pidlFolder) OnNavigationFailed;
		}
	}
	[CRepr]
	public struct IExplorerBrowser : IUnknown
	{
		public const new Guid IID = .(0xdfd3b6b5, 0xc10c, 0x4be9, 0x85, 0xf6, 0xa6, 0x69, 0x69, 0xf4, 0x02, 0xf6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(HWND hwndParent, in RECT prc, FOLDERSETTINGS* pfs) mut => VT.Initialize(ref this, hwndParent, prc, pfs);
		public HRESULT Destroy() mut => VT.Destroy(ref this);
		public HRESULT SetRect(int* phdwp, RECT rcBrowser) mut => VT.SetRect(ref this, phdwp, rcBrowser);
		public HRESULT SetPropertyBag(PWSTR pszPropertyBag) mut => VT.SetPropertyBag(ref this, pszPropertyBag);
		public HRESULT SetEmptyText(PWSTR pszEmptyText) mut => VT.SetEmptyText(ref this, pszEmptyText);
		public HRESULT SetFolderSettings(in FOLDERSETTINGS pfs) mut => VT.SetFolderSettings(ref this, pfs);
		public HRESULT Advise(ref IExplorerBrowserEvents psbe, out uint32 pdwCookie) mut => VT.Advise(ref this, ref psbe, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT SetOptions(EXPLORER_BROWSER_OPTIONS dwFlag) mut => VT.SetOptions(ref this, dwFlag);
		public HRESULT GetOptions(out EXPLORER_BROWSER_OPTIONS pdwFlag) mut => VT.GetOptions(ref this, out pdwFlag);
		public HRESULT BrowseToIDList(ref ITEMIDLIST pidl, uint32 uFlags) mut => VT.BrowseToIDList(ref this, ref pidl, uFlags);
		public HRESULT BrowseToObject(ref IUnknown punk, uint32 uFlags) mut => VT.BrowseToObject(ref this, ref punk, uFlags);
		public HRESULT FillFromObject(ref IUnknown punk, EXPLORER_BROWSER_FILL_FLAGS dwFlags) mut => VT.FillFromObject(ref this, ref punk, dwFlags);
		public HRESULT RemoveAll() mut => VT.RemoveAll(ref this);
		public HRESULT GetCurrentView(in Guid riid, void** ppv) mut => VT.GetCurrentView(ref this, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, HWND hwndParent, in RECT prc, FOLDERSETTINGS* pfs) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self) Destroy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, int* phdwp, RECT rcBrowser) SetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, PWSTR pszPropertyBag) SetPropertyBag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, PWSTR pszEmptyText) SetEmptyText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, in FOLDERSETTINGS pfs) SetFolderSettings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, ref IExplorerBrowserEvents psbe, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, EXPLORER_BROWSER_OPTIONS dwFlag) SetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, out EXPLORER_BROWSER_OPTIONS pdwFlag) GetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, ref ITEMIDLIST pidl, uint32 uFlags) BrowseToIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, ref IUnknown punk, uint32 uFlags) BrowseToObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, ref IUnknown punk, EXPLORER_BROWSER_FILL_FLAGS dwFlags) FillFromObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self) RemoveAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerBrowser self, in Guid riid, void** ppv) GetCurrentView;
		}
	}
	[CRepr]
	public struct IEnumObjects : IUnknown
	{
		public const new Guid IID = .(0x2c1c7e2e, 0x2d0e, 0x4059, 0x83, 0x1e, 0x1e, 0x6f, 0x82, 0x33, 0x5c, 0x2e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, in Guid riid, void** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, riid, rgelt, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumObjects* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumObjects self, uint32 celt, in Guid riid, void** rgelt, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumObjects self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumObjects self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumObjects self, out IEnumObjects* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IOperationsProgressDialog : IUnknown
	{
		public const new Guid IID = .(0x0c9fb851, 0xe5c9, 0x43eb, 0xa3, 0x70, 0xf0, 0x67, 0x7b, 0x13, 0x87, 0x4c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StartProgressDialog(HWND hwndOwner, uint32 flags) mut => VT.StartProgressDialog(ref this, hwndOwner, flags);
		public HRESULT StopProgressDialog() mut => VT.StopProgressDialog(ref this);
		public HRESULT SetOperation(SPACTION action) mut => VT.SetOperation(ref this, action);
		public HRESULT SetMode(uint32 mode) mut => VT.SetMode(ref this, mode);
		public HRESULT UpdateProgress(uint64 ullPointsCurrent, uint64 ullPointsTotal, uint64 ullSizeCurrent, uint64 ullSizeTotal, uint64 ullItemsCurrent, uint64 ullItemsTotal) mut => VT.UpdateProgress(ref this, ullPointsCurrent, ullPointsTotal, ullSizeCurrent, ullSizeTotal, ullItemsCurrent, ullItemsTotal);
		public HRESULT UpdateLocations(ref IShellItem psiSource, ref IShellItem psiTarget, ref IShellItem psiItem) mut => VT.UpdateLocations(ref this, ref psiSource, ref psiTarget, ref psiItem);
		public HRESULT ResetTimer() mut => VT.ResetTimer(ref this);
		public HRESULT PauseTimer() mut => VT.PauseTimer(ref this);
		public HRESULT ResumeTimer() mut => VT.ResumeTimer(ref this);
		public HRESULT GetMilliseconds(out uint64 pullElapsed, out uint64 pullRemaining) mut => VT.GetMilliseconds(ref this, out pullElapsed, out pullRemaining);
		public HRESULT GetOperationStatus(out PDOPSTATUS popstatus) mut => VT.GetOperationStatus(ref this, out popstatus);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, HWND hwndOwner, uint32 flags) StartProgressDialog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self) StopProgressDialog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, SPACTION action) SetOperation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, uint32 mode) SetMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, uint64 ullPointsCurrent, uint64 ullPointsTotal, uint64 ullSizeCurrent, uint64 ullSizeTotal, uint64 ullItemsCurrent, uint64 ullItemsTotal) UpdateProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, ref IShellItem psiSource, ref IShellItem psiTarget, ref IShellItem psiItem) UpdateLocations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self) ResetTimer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self) PauseTimer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self) ResumeTimer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, out uint64 pullElapsed, out uint64 pullRemaining) GetMilliseconds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOperationsProgressDialog self, out PDOPSTATUS popstatus) GetOperationStatus;
		}
	}
	[CRepr]
	public struct IIOCancelInformation : IUnknown
	{
		public const new Guid IID = .(0xf5b0bf81, 0x8cb5, 0x4b1b, 0x94, 0x49, 0x1a, 0x15, 0x9e, 0x0c, 0x73, 0x3c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCancelInformation(uint32 dwThreadID, uint32 uMsgCancel) mut => VT.SetCancelInformation(ref this, dwThreadID, uMsgCancel);
		public HRESULT GetCancelInformation(uint32* pdwThreadID, uint32* puMsgCancel) mut => VT.GetCancelInformation(ref this, pdwThreadID, puMsgCancel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IIOCancelInformation self, uint32 dwThreadID, uint32 uMsgCancel) SetCancelInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IIOCancelInformation self, uint32* pdwThreadID, uint32* puMsgCancel) GetCancelInformation;
		}
	}
	[CRepr]
	public struct IFileOperation : IUnknown
	{
		public const new Guid IID = .(0x947aab5f, 0x0a5c, 0x4c13, 0xb4, 0xd6, 0x4b, 0xf7, 0x83, 0x6f, 0xc9, 0xf8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref IFileOperationProgressSink pfops, out uint32 pdwCookie) mut => VT.Advise(ref this, ref pfops, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT SetOperationFlags(uint32 dwOperationFlags) mut => VT.SetOperationFlags(ref this, dwOperationFlags);
		public HRESULT SetProgressMessage(PWSTR pszMessage) mut => VT.SetProgressMessage(ref this, pszMessage);
		public HRESULT SetProgressDialog(ref IOperationsProgressDialog popd) mut => VT.SetProgressDialog(ref this, ref popd);
		public HRESULT SetProperties(ref IPropertyChangeArray pproparray) mut => VT.SetProperties(ref this, ref pproparray);
		public HRESULT SetOwnerWindow(HWND hwndOwner) mut => VT.SetOwnerWindow(ref this, hwndOwner);
		public HRESULT ApplyPropertiesToItem(ref IShellItem psiItem) mut => VT.ApplyPropertiesToItem(ref this, ref psiItem);
		public HRESULT ApplyPropertiesToItems(ref IUnknown punkItems) mut => VT.ApplyPropertiesToItems(ref this, ref punkItems);
		public HRESULT RenameItem(ref IShellItem psiItem, PWSTR pszNewName, ref IFileOperationProgressSink pfopsItem) mut => VT.RenameItem(ref this, ref psiItem, pszNewName, ref pfopsItem);
		public HRESULT RenameItems(ref IUnknown pUnkItems, PWSTR pszNewName) mut => VT.RenameItems(ref this, ref pUnkItems, pszNewName);
		public HRESULT MoveItem(ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, ref IFileOperationProgressSink pfopsItem) mut => VT.MoveItem(ref this, ref psiItem, ref psiDestinationFolder, pszNewName, ref pfopsItem);
		public HRESULT MoveItems(ref IUnknown punkItems, ref IShellItem psiDestinationFolder) mut => VT.MoveItems(ref this, ref punkItems, ref psiDestinationFolder);
		public HRESULT CopyItem(ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszCopyName, ref IFileOperationProgressSink pfopsItem) mut => VT.CopyItem(ref this, ref psiItem, ref psiDestinationFolder, pszCopyName, ref pfopsItem);
		public HRESULT CopyItems(ref IUnknown punkItems, ref IShellItem psiDestinationFolder) mut => VT.CopyItems(ref this, ref punkItems, ref psiDestinationFolder);
		public HRESULT DeleteItem(ref IShellItem psiItem, ref IFileOperationProgressSink pfopsItem) mut => VT.DeleteItem(ref this, ref psiItem, ref pfopsItem);
		public HRESULT DeleteItems(ref IUnknown punkItems) mut => VT.DeleteItems(ref this, ref punkItems);
		public HRESULT NewItem(ref IShellItem psiDestinationFolder, uint32 dwFileAttributes, PWSTR pszName, PWSTR pszTemplateName, ref IFileOperationProgressSink pfopsItem) mut => VT.NewItem(ref this, ref psiDestinationFolder, dwFileAttributes, pszName, pszTemplateName, ref pfopsItem);
		public HRESULT PerformOperations() mut => VT.PerformOperations(ref this);
		public HRESULT GetAnyOperationsAborted(out BOOL pfAnyOperationsAborted) mut => VT.GetAnyOperationsAborted(ref this, out pfAnyOperationsAborted);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IFileOperationProgressSink pfops, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, uint32 dwOperationFlags) SetOperationFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, PWSTR pszMessage) SetProgressMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IOperationsProgressDialog popd) SetProgressDialog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IPropertyChangeArray pproparray) SetProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, HWND hwndOwner) SetOwnerWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiItem) ApplyPropertiesToItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IUnknown punkItems) ApplyPropertiesToItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiItem, PWSTR pszNewName, ref IFileOperationProgressSink pfopsItem) RenameItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IUnknown pUnkItems, PWSTR pszNewName) RenameItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszNewName, ref IFileOperationProgressSink pfopsItem) MoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IUnknown punkItems, ref IShellItem psiDestinationFolder) MoveItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiItem, ref IShellItem psiDestinationFolder, PWSTR pszCopyName, ref IFileOperationProgressSink pfopsItem) CopyItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IUnknown punkItems, ref IShellItem psiDestinationFolder) CopyItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiItem, ref IFileOperationProgressSink pfopsItem) DeleteItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IUnknown punkItems) DeleteItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, ref IShellItem psiDestinationFolder, uint32 dwFileAttributes, PWSTR pszName, PWSTR pszTemplateName, ref IFileOperationProgressSink pfopsItem) NewItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self) PerformOperations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation self, out BOOL pfAnyOperationsAborted) GetAnyOperationsAborted;
		}
	}
	[CRepr]
	public struct IFileOperation2 : IFileOperation
	{
		public const new Guid IID = .(0xcd8f23c1, 0x8f61, 0x4916, 0x90, 0x9d, 0x55, 0xbd, 0xd0, 0x91, 0x87, 0x53);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOperationFlags2(FILE_OPERATION_FLAGS2 operationFlags2) mut => VT.SetOperationFlags2(ref this, operationFlags2);

		[CRepr]
		public struct VTable : IFileOperation.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOperation2 self, FILE_OPERATION_FLAGS2 operationFlags2) SetOperationFlags2;
		}
	}
	[CRepr]
	public struct IObjectProvider : IUnknown
	{
		public const new Guid IID = .(0xa6087428, 0x3be3, 0x4d73, 0xb3, 0x08, 0x7c, 0x04, 0xa5, 0x40, 0xbf, 0x1a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryObject(in Guid guidObject, in Guid riid, void** ppvOut) mut => VT.QueryObject(ref this, guidObject, riid, ppvOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectProvider self, in Guid guidObject, in Guid riid, void** ppvOut) QueryObject;
		}
	}
	[CRepr]
	public struct INamespaceWalkCB : IUnknown
	{
		public const new Guid IID = .(0xd92995f8, 0xcf5e, 0x4a76, 0xbf, 0x59, 0xea, 0xd3, 0x9e, 0xa2, 0xb9, 0x7e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FoundItem(ref IShellFolder psf, ref ITEMIDLIST pidl) mut => VT.FoundItem(ref this, ref psf, ref pidl);
		public HRESULT EnterFolder(ref IShellFolder psf, ref ITEMIDLIST pidl) mut => VT.EnterFolder(ref this, ref psf, ref pidl);
		public HRESULT LeaveFolder(ref IShellFolder psf, ref ITEMIDLIST pidl) mut => VT.LeaveFolder(ref this, ref psf, ref pidl);
		public HRESULT InitializeProgressDialog(out PWSTR ppszTitle, out PWSTR ppszCancel) mut => VT.InitializeProgressDialog(ref this, out ppszTitle, out ppszCancel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalkCB self, ref IShellFolder psf, ref ITEMIDLIST pidl) FoundItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalkCB self, ref IShellFolder psf, ref ITEMIDLIST pidl) EnterFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalkCB self, ref IShellFolder psf, ref ITEMIDLIST pidl) LeaveFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalkCB self, out PWSTR ppszTitle, out PWSTR ppszCancel) InitializeProgressDialog;
		}
	}
	[CRepr]
	public struct INamespaceWalkCB2 : INamespaceWalkCB
	{
		public const new Guid IID = .(0x7ac7492b, 0xc38e, 0x438a, 0x87, 0xdb, 0x68, 0x73, 0x78, 0x44, 0xff, 0x70);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT WalkComplete(HRESULT hr) mut => VT.WalkComplete(ref this, hr);

		[CRepr]
		public struct VTable : INamespaceWalkCB.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalkCB2 self, HRESULT hr) WalkComplete;
		}
	}
	[CRepr]
	public struct INamespaceWalk : IUnknown
	{
		public const new Guid IID = .(0x57ced8a7, 0x3f4a, 0x432c, 0x93, 0x50, 0x30, 0xf2, 0x44, 0x83, 0xf7, 0x4f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Walk(ref IUnknown punkToWalk, uint32 dwFlags, int32 cDepth, ref INamespaceWalkCB pnswcb) mut => VT.Walk(ref this, ref punkToWalk, dwFlags, cDepth, ref pnswcb);
		public HRESULT GetIDArrayResult(out uint32 pcItems, ITEMIDLIST*** prgpidl) mut => VT.GetIDArrayResult(ref this, out pcItems, prgpidl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalk self, ref IUnknown punkToWalk, uint32 dwFlags, int32 cDepth, ref INamespaceWalkCB pnswcb) Walk;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamespaceWalk self, out uint32 pcItems, ITEMIDLIST*** prgpidl) GetIDArrayResult;
		}
	}
	[CRepr]
	public struct IBandSite : IUnknown
	{
		public const new Guid IID = .(0x4cf504b0, 0xde96, 0x11d0, 0x8b, 0x3f, 0x00, 0xa0, 0xc9, 0x11, 0xe8, 0xe5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddBand(ref IUnknown punk) mut => VT.AddBand(ref this, ref punk);
		public HRESULT EnumBands(uint32 uBand, out uint32 pdwBandID) mut => VT.EnumBands(ref this, uBand, out pdwBandID);
		public HRESULT QueryBand(uint32 dwBandID, IDeskBand** ppstb, uint32* pdwState, char16* pszName, int32 cchName) mut => VT.QueryBand(ref this, dwBandID, ppstb, pdwState, pszName, cchName);
		public HRESULT SetBandState(uint32 dwBandID, uint32 dwMask, uint32 dwState) mut => VT.SetBandState(ref this, dwBandID, dwMask, dwState);
		public HRESULT RemoveBand(uint32 dwBandID) mut => VT.RemoveBand(ref this, dwBandID);
		public HRESULT GetBandObject(uint32 dwBandID, in Guid riid, void** ppv) mut => VT.GetBandObject(ref this, dwBandID, riid, ppv);
		public HRESULT SetBandSiteInfo(in BANDSITEINFO pbsinfo) mut => VT.SetBandSiteInfo(ref this, pbsinfo);
		public HRESULT GetBandSiteInfo(out BANDSITEINFO pbsinfo) mut => VT.GetBandSiteInfo(ref this, out pbsinfo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, ref IUnknown punk) AddBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, uint32 uBand, out uint32 pdwBandID) EnumBands;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, uint32 dwBandID, IDeskBand** ppstb, uint32* pdwState, char16* pszName, int32 cchName) QueryBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, uint32 dwBandID, uint32 dwMask, uint32 dwState) SetBandState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, uint32 dwBandID) RemoveBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, uint32 dwBandID, in Guid riid, void** ppv) GetBandObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, in BANDSITEINFO pbsinfo) SetBandSiteInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandSite self, out BANDSITEINFO pbsinfo) GetBandSiteInfo;
		}
	}
	[CRepr]
	public struct IModalWindow : IUnknown
	{
		public const new Guid IID = .(0xb4db1657, 0x70d7, 0x485e, 0x8e, 0x3e, 0x6f, 0xcb, 0x5a, 0x5c, 0x18, 0x02);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Show(HWND hwndOwner) mut => VT.Show(ref this, hwndOwner);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IModalWindow self, HWND hwndOwner) Show;
		}
	}
	[CRepr]
	public struct IContextMenuSite : IUnknown
	{
		public const new Guid IID = .(0x0811aebe, 0x0b87, 0x4c54, 0x9e, 0x72, 0x54, 0x8c, 0xf6, 0x49, 0x01, 0x6b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DoContextMenuPopup(ref IUnknown punkContextMenu, uint32 fFlags, POINT pt) mut => VT.DoContextMenuPopup(ref this, ref punkContextMenu, fFlags, pt);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuSite self, ref IUnknown punkContextMenu, uint32 fFlags, POINT pt) DoContextMenuPopup;
		}
	}
	[CRepr]
	public struct IMenuBand : IUnknown
	{
		public const new Guid IID = .(0x568804cd, 0xcbd7, 0x11d0, 0x98, 0x16, 0x00, 0xc0, 0x4f, 0xd9, 0x19, 0x72);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsMenuMessage(ref MSG pmsg) mut => VT.IsMenuMessage(ref this, ref pmsg);
		public HRESULT TranslateMenuMessage(out MSG pmsg, out LRESULT plRet) mut => VT.TranslateMenuMessage(ref this, out pmsg, out plRet);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuBand self, ref MSG pmsg) IsMenuMessage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuBand self, out MSG pmsg, out LRESULT plRet) TranslateMenuMessage;
		}
	}
	[CRepr]
	public struct IRegTreeItem : IUnknown
	{
		public const new Guid IID = .(0xa9521922, 0x0812, 0x4d44, 0x9e, 0xc3, 0x7f, 0xd3, 0x8c, 0x72, 0x6f, 0x3d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCheckState(out BOOL pbCheck) mut => VT.GetCheckState(ref this, out pbCheck);
		public HRESULT SetCheckState(BOOL bCheck) mut => VT.SetCheckState(ref this, bCheck);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegTreeItem self, out BOOL pbCheck) GetCheckState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRegTreeItem self, BOOL bCheck) SetCheckState;
		}
	}
	[CRepr]
	public struct IDeskBar : IOleWindow
	{
		public const new Guid IID = .(0xeb0fe173, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetClient(IUnknown* punkClient) mut => VT.SetClient(ref this, punkClient);
		public HRESULT GetClient(out IUnknown* ppunkClient) mut => VT.GetClient(ref this, out ppunkClient);
		public HRESULT OnPosRectChangeDB(ref RECT prc) mut => VT.OnPosRectChangeDB(ref this, ref prc);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBar self, IUnknown* punkClient) SetClient;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBar self, out IUnknown* ppunkClient) GetClient;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBar self, ref RECT prc) OnPosRectChangeDB;
		}
	}
	[CRepr]
	public struct IMenuPopup : IDeskBar
	{
		public const new Guid IID = .(0xd1e7afeb, 0x6a2e, 0x11d0, 0x8c, 0x78, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Popup(ref POINTL ppt, RECTL* prcExclude, int32 dwFlags) mut => VT.Popup(ref this, ref ppt, prcExclude, dwFlags);
		public HRESULT OnSelect(uint32 dwSelectType) mut => VT.OnSelect(ref this, dwSelectType);
		public HRESULT SetSubMenu(ref IMenuPopup pmp, BOOL fSet) mut => VT.SetSubMenu(ref this, ref pmp, fSet);

		[CRepr]
		public struct VTable : IDeskBar.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuPopup self, ref POINTL ppt, RECTL* prcExclude, int32 dwFlags) Popup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuPopup self, uint32 dwSelectType) OnSelect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IMenuPopup self, ref IMenuPopup pmp, BOOL fSet) SetSubMenu;
		}
	}
	[CRepr]
	public struct IFileIsInUse : IUnknown
	{
		public const new Guid IID = .(0x64a1cbf0, 0x3a1a, 0x4461, 0x91, 0x58, 0x37, 0x69, 0x69, 0x69, 0x39, 0x50);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAppName(out PWSTR ppszName) mut => VT.GetAppName(ref this, out ppszName);
		public HRESULT GetUsage(out FILE_USAGE_TYPE pfut) mut => VT.GetUsage(ref this, out pfut);
		public HRESULT GetCapabilities(out uint32 pdwCapFlags) mut => VT.GetCapabilities(ref this, out pdwCapFlags);
		public HRESULT GetSwitchToHWND(out HWND phwnd) mut => VT.GetSwitchToHWND(ref this, out phwnd);
		public HRESULT CloseFile() mut => VT.CloseFile(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIsInUse self, out PWSTR ppszName) GetAppName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIsInUse self, out FILE_USAGE_TYPE pfut) GetUsage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIsInUse self, out uint32 pdwCapFlags) GetCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIsInUse self, out HWND phwnd) GetSwitchToHWND;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileIsInUse self) CloseFile;
		}
	}
	[CRepr]
	public struct IFileDialogEvents : IUnknown
	{
		public const new Guid IID = .(0x973510db, 0x7d7f, 0x452b, 0x89, 0x75, 0x74, 0xa8, 0x58, 0x28, 0xd3, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnFileOk(ref IFileDialog pfd) mut => VT.OnFileOk(ref this, ref pfd);
		public HRESULT OnFolderChanging(ref IFileDialog pfd, ref IShellItem psiFolder) mut => VT.OnFolderChanging(ref this, ref pfd, ref psiFolder);
		public HRESULT OnFolderChange(ref IFileDialog pfd) mut => VT.OnFolderChange(ref this, ref pfd);
		public HRESULT OnSelectionChange(ref IFileDialog pfd) mut => VT.OnSelectionChange(ref this, ref pfd);
		public HRESULT OnShareViolation(ref IFileDialog pfd, ref IShellItem psi, out FDE_SHAREVIOLATION_RESPONSE pResponse) mut => VT.OnShareViolation(ref this, ref pfd, ref psi, out pResponse);
		public HRESULT OnTypeChange(ref IFileDialog pfd) mut => VT.OnTypeChange(ref this, ref pfd);
		public HRESULT OnOverwrite(ref IFileDialog pfd, ref IShellItem psi, out FDE_OVERWRITE_RESPONSE pResponse) mut => VT.OnOverwrite(ref this, ref pfd, ref psi, out pResponse);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd) OnFileOk;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd, ref IShellItem psiFolder) OnFolderChanging;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd) OnFolderChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd) OnSelectionChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd, ref IShellItem psi, out FDE_SHAREVIOLATION_RESPONSE pResponse) OnShareViolation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd) OnTypeChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogEvents self, ref IFileDialog pfd, ref IShellItem psi, out FDE_OVERWRITE_RESPONSE pResponse) OnOverwrite;
		}
	}
	[CRepr]
	public struct IFileDialog : IModalWindow
	{
		public const new Guid IID = .(0x42f85136, 0xdb7e, 0x439c, 0x85, 0xf1, 0xe4, 0x07, 0x5d, 0x13, 0x5f, 0xc8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFileTypes(uint32 cFileTypes, COMDLG_FILTERSPEC* rgFilterSpec) mut => VT.SetFileTypes(ref this, cFileTypes, rgFilterSpec);
		public HRESULT SetFileTypeIndex(uint32 iFileType) mut => VT.SetFileTypeIndex(ref this, iFileType);
		public HRESULT GetFileTypeIndex(out uint32 piFileType) mut => VT.GetFileTypeIndex(ref this, out piFileType);
		public HRESULT Advise(ref IFileDialogEvents pfde, out uint32 pdwCookie) mut => VT.Advise(ref this, ref pfde, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT SetOptions(uint32 fos) mut => VT.SetOptions(ref this, fos);
		public HRESULT GetOptions(out uint32 pfos) mut => VT.GetOptions(ref this, out pfos);
		public HRESULT SetDefaultFolder(ref IShellItem psi) mut => VT.SetDefaultFolder(ref this, ref psi);
		public HRESULT SetFolder(ref IShellItem psi) mut => VT.SetFolder(ref this, ref psi);
		public HRESULT GetFolder(out IShellItem* ppsi) mut => VT.GetFolder(ref this, out ppsi);
		public HRESULT GetCurrentSelection(out IShellItem* ppsi) mut => VT.GetCurrentSelection(ref this, out ppsi);
		public HRESULT SetFileName(PWSTR pszName) mut => VT.SetFileName(ref this, pszName);
		public HRESULT GetFileName(out PWSTR pszName) mut => VT.GetFileName(ref this, out pszName);
		public HRESULT SetTitle(PWSTR pszTitle) mut => VT.SetTitle(ref this, pszTitle);
		public HRESULT SetOkButtonLabel(PWSTR pszText) mut => VT.SetOkButtonLabel(ref this, pszText);
		public HRESULT SetFileNameLabel(PWSTR pszLabel) mut => VT.SetFileNameLabel(ref this, pszLabel);
		public HRESULT GetResult(out IShellItem* ppsi) mut => VT.GetResult(ref this, out ppsi);
		public HRESULT AddPlace(ref IShellItem psi, FDAP fdap) mut => VT.AddPlace(ref this, ref psi, fdap);
		public HRESULT SetDefaultExtension(PWSTR pszDefaultExtension) mut => VT.SetDefaultExtension(ref this, pszDefaultExtension);
		public HRESULT Close(HRESULT hr) mut => VT.Close(ref this, hr);
		public HRESULT SetClientGuid(in Guid guid) mut => VT.SetClientGuid(ref this, guid);
		public HRESULT ClearClientData() mut => VT.ClearClientData(ref this);
		public HRESULT SetFilter(ref IShellItemFilter pFilter) mut => VT.SetFilter(ref this, ref pFilter);

		[CRepr]
		public struct VTable : IModalWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, uint32 cFileTypes, COMDLG_FILTERSPEC* rgFilterSpec) SetFileTypes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, uint32 iFileType) SetFileTypeIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out uint32 piFileType) GetFileTypeIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, ref IFileDialogEvents pfde, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, uint32 fos) SetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out uint32 pfos) GetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, ref IShellItem psi) SetDefaultFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, ref IShellItem psi) SetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out IShellItem* ppsi) GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out IShellItem* ppsi) GetCurrentSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, PWSTR pszName) SetFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out PWSTR pszName) GetFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, PWSTR pszTitle) SetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, PWSTR pszText) SetOkButtonLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, PWSTR pszLabel) SetFileNameLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, out IShellItem* ppsi) GetResult;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, ref IShellItem psi, FDAP fdap) AddPlace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, PWSTR pszDefaultExtension) SetDefaultExtension;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, HRESULT hr) Close;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, in Guid guid) SetClientGuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self) ClearClientData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog self, ref IShellItemFilter pFilter) SetFilter;
		}
	}
	[CRepr]
	public struct IFileSaveDialog : IFileDialog
	{
		public const new Guid IID = .(0x84bccd23, 0x5fde, 0x4cdb, 0xae, 0xa4, 0xaf, 0x64, 0xb8, 0x3d, 0x78, 0xab);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetSaveAsItem(ref IShellItem psi) mut => VT.SetSaveAsItem(ref this, ref psi);
		public HRESULT SetProperties(ref IPropertyStore pStore) mut => VT.SetProperties(ref this, ref pStore);
		public HRESULT SetCollectedProperties(ref IPropertyDescriptionList pList, BOOL fAppendDefault) mut => VT.SetCollectedProperties(ref this, ref pList, fAppendDefault);
		public HRESULT GetProperties(out IPropertyStore* ppStore) mut => VT.GetProperties(ref this, out ppStore);
		public HRESULT ApplyProperties(ref IShellItem psi, ref IPropertyStore pStore, HWND hwnd, ref IFileOperationProgressSink pSink) mut => VT.ApplyProperties(ref this, ref psi, ref pStore, hwnd, ref pSink);

		[CRepr]
		public struct VTable : IFileDialog.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSaveDialog self, ref IShellItem psi) SetSaveAsItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSaveDialog self, ref IPropertyStore pStore) SetProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSaveDialog self, ref IPropertyDescriptionList pList, BOOL fAppendDefault) SetCollectedProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSaveDialog self, out IPropertyStore* ppStore) GetProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSaveDialog self, ref IShellItem psi, ref IPropertyStore pStore, HWND hwnd, ref IFileOperationProgressSink pSink) ApplyProperties;
		}
	}
	[CRepr]
	public struct IFileOpenDialog : IFileDialog
	{
		public const new Guid IID = .(0xd57c7288, 0xd4ad, 0x4768, 0xbe, 0x02, 0x9d, 0x96, 0x95, 0x32, 0xd9, 0x60);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetResults(out IShellItemArray* ppenum) mut => VT.GetResults(ref this, out ppenum);
		public HRESULT GetSelectedItems(out IShellItemArray* ppsai) mut => VT.GetSelectedItems(ref this, out ppsai);

		[CRepr]
		public struct VTable : IFileDialog.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOpenDialog self, out IShellItemArray* ppenum) GetResults;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileOpenDialog self, out IShellItemArray* ppsai) GetSelectedItems;
		}
	}
	[CRepr]
	public struct IFileDialogCustomize : IUnknown
	{
		public const new Guid IID = .(0xe6fdd21a, 0x163f, 0x4975, 0x9c, 0x8c, 0xa6, 0x9f, 0x1b, 0xa3, 0x70, 0x34);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnableOpenDropDown(uint32 dwIDCtl) mut => VT.EnableOpenDropDown(ref this, dwIDCtl);
		public HRESULT AddMenu(uint32 dwIDCtl, PWSTR pszLabel) mut => VT.AddMenu(ref this, dwIDCtl, pszLabel);
		public HRESULT AddPushButton(uint32 dwIDCtl, PWSTR pszLabel) mut => VT.AddPushButton(ref this, dwIDCtl, pszLabel);
		public HRESULT AddComboBox(uint32 dwIDCtl) mut => VT.AddComboBox(ref this, dwIDCtl);
		public HRESULT AddRadioButtonList(uint32 dwIDCtl) mut => VT.AddRadioButtonList(ref this, dwIDCtl);
		public HRESULT AddCheckButton(uint32 dwIDCtl, PWSTR pszLabel, BOOL bChecked) mut => VT.AddCheckButton(ref this, dwIDCtl, pszLabel, bChecked);
		public HRESULT AddEditBox(uint32 dwIDCtl, PWSTR pszText) mut => VT.AddEditBox(ref this, dwIDCtl, pszText);
		public HRESULT AddSeparator(uint32 dwIDCtl) mut => VT.AddSeparator(ref this, dwIDCtl);
		public HRESULT AddText(uint32 dwIDCtl, PWSTR pszText) mut => VT.AddText(ref this, dwIDCtl, pszText);
		public HRESULT SetControlLabel(uint32 dwIDCtl, PWSTR pszLabel) mut => VT.SetControlLabel(ref this, dwIDCtl, pszLabel);
		public HRESULT GetControlState(uint32 dwIDCtl, out CDCONTROLSTATEF pdwState) mut => VT.GetControlState(ref this, dwIDCtl, out pdwState);
		public HRESULT SetControlState(uint32 dwIDCtl, CDCONTROLSTATEF dwState) mut => VT.SetControlState(ref this, dwIDCtl, dwState);
		public HRESULT GetEditBoxText(uint32 dwIDCtl, out uint16* ppszText) mut => VT.GetEditBoxText(ref this, dwIDCtl, out ppszText);
		public HRESULT SetEditBoxText(uint32 dwIDCtl, PWSTR pszText) mut => VT.SetEditBoxText(ref this, dwIDCtl, pszText);
		public HRESULT GetCheckButtonState(uint32 dwIDCtl, out BOOL pbChecked) mut => VT.GetCheckButtonState(ref this, dwIDCtl, out pbChecked);
		public HRESULT SetCheckButtonState(uint32 dwIDCtl, BOOL bChecked) mut => VT.SetCheckButtonState(ref this, dwIDCtl, bChecked);
		public HRESULT AddControlItem(uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) mut => VT.AddControlItem(ref this, dwIDCtl, dwIDItem, pszLabel);
		public HRESULT RemoveControlItem(uint32 dwIDCtl, uint32 dwIDItem) mut => VT.RemoveControlItem(ref this, dwIDCtl, dwIDItem);
		public HRESULT RemoveAllControlItems(uint32 dwIDCtl) mut => VT.RemoveAllControlItems(ref this, dwIDCtl);
		public HRESULT GetControlItemState(uint32 dwIDCtl, uint32 dwIDItem, out CDCONTROLSTATEF pdwState) mut => VT.GetControlItemState(ref this, dwIDCtl, dwIDItem, out pdwState);
		public HRESULT SetControlItemState(uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF dwState) mut => VT.SetControlItemState(ref this, dwIDCtl, dwIDItem, dwState);
		public HRESULT GetSelectedControlItem(uint32 dwIDCtl, out uint32 pdwIDItem) mut => VT.GetSelectedControlItem(ref this, dwIDCtl, out pdwIDItem);
		public HRESULT SetSelectedControlItem(uint32 dwIDCtl, uint32 dwIDItem) mut => VT.SetSelectedControlItem(ref this, dwIDCtl, dwIDItem);
		public HRESULT StartVisualGroup(uint32 dwIDCtl, PWSTR pszLabel) mut => VT.StartVisualGroup(ref this, dwIDCtl, pszLabel);
		public HRESULT EndVisualGroup() mut => VT.EndVisualGroup(ref this);
		public HRESULT MakeProminent(uint32 dwIDCtl) mut => VT.MakeProminent(ref this, dwIDCtl);
		public HRESULT SetControlItemText(uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) mut => VT.SetControlItemText(ref this, dwIDCtl, dwIDItem, pszLabel);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) EnableOpenDropDown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszLabel) AddMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszLabel) AddPushButton;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) AddComboBox;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) AddRadioButtonList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszLabel, BOOL bChecked) AddCheckButton;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszText) AddEditBox;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) AddSeparator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszText) AddText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszLabel) SetControlLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, out CDCONTROLSTATEF pdwState) GetControlState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, CDCONTROLSTATEF dwState) SetControlState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, out uint16* ppszText) GetEditBoxText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszText) SetEditBoxText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, out BOOL pbChecked) GetCheckButtonState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, BOOL bChecked) SetCheckButtonState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) AddControlItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem) RemoveControlItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) RemoveAllControlItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem, out CDCONTROLSTATEF pdwState) GetControlItemState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem, CDCONTROLSTATEF dwState) SetControlItemState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, out uint32 pdwIDItem) GetSelectedControlItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem) SetSelectedControlItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, PWSTR pszLabel) StartVisualGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self) EndVisualGroup;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl) MakeProminent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogCustomize self, uint32 dwIDCtl, uint32 dwIDItem, PWSTR pszLabel) SetControlItemText;
		}
	}
	[CRepr]
	public struct IApplicationAssociationRegistration : IUnknown
	{
		public const new Guid IID = .(0x4e530b0a, 0xe611, 0x4c77, 0xa3, 0xac, 0x90, 0x31, 0xd0, 0x22, 0x28, 0x1b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryCurrentDefault(PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, out PWSTR ppszAssociation) mut => VT.QueryCurrentDefault(ref this, pszQuery, atQueryType, alQueryLevel, out ppszAssociation);
		public HRESULT QueryAppIsDefault(PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, out BOOL pfDefault) mut => VT.QueryAppIsDefault(ref this, pszQuery, atQueryType, alQueryLevel, pszAppRegistryName, out pfDefault);
		public HRESULT QueryAppIsDefaultAll(ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, out BOOL pfDefault) mut => VT.QueryAppIsDefaultAll(ref this, alQueryLevel, pszAppRegistryName, out pfDefault);
		public HRESULT SetAppAsDefault(PWSTR pszAppRegistryName, PWSTR pszSet, ASSOCIATIONTYPE atSetType) mut => VT.SetAppAsDefault(ref this, pszAppRegistryName, pszSet, atSetType);
		public HRESULT SetAppAsDefaultAll(PWSTR pszAppRegistryName) mut => VT.SetAppAsDefaultAll(ref this, pszAppRegistryName);
		public HRESULT ClearUserAssociations() mut => VT.ClearUserAssociations(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self, PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, out PWSTR ppszAssociation) QueryCurrentDefault;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self, PWSTR pszQuery, ASSOCIATIONTYPE atQueryType, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, out BOOL pfDefault) QueryAppIsDefault;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self, ASSOCIATIONLEVEL alQueryLevel, PWSTR pszAppRegistryName, out BOOL pfDefault) QueryAppIsDefaultAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self, PWSTR pszAppRegistryName, PWSTR pszSet, ASSOCIATIONTYPE atSetType) SetAppAsDefault;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self, PWSTR pszAppRegistryName) SetAppAsDefaultAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistration self) ClearUserAssociations;
		}
	}
	[CRepr]
	public struct IDelegateFolder : IUnknown
	{
		public const new Guid IID = .(0xadd8ba80, 0x002b, 0x11d0, 0x8f, 0x0f, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetItemAlloc(ref IMalloc pmalloc) mut => VT.SetItemAlloc(ref this, ref pmalloc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDelegateFolder self, ref IMalloc pmalloc) SetItemAlloc;
		}
	}
	[CRepr]
	public struct IBrowserFrameOptions : IUnknown
	{
		public const new Guid IID = .(0x10df43c8, 0x1dbe, 0x11d3, 0x8b, 0x34, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFrameOptions(uint32 dwMask, out uint32 pdwOptions) mut => VT.GetFrameOptions(ref this, dwMask, out pdwOptions);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserFrameOptions self, uint32 dwMask, out uint32 pdwOptions) GetFrameOptions;
		}
	}
	[CRepr]
	public struct INewWindowManager : IUnknown
	{
		public const new Guid IID = .(0xd2bc4c84, 0x3f72, 0x4a52, 0xa6, 0x04, 0x7b, 0xcb, 0xf3, 0x98, 0x2c, 0xbb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EvaluateNewWindow(PWSTR pszUrl, PWSTR pszName, PWSTR pszUrlContext, PWSTR pszFeatures, BOOL fReplace, uint32 dwFlags, uint32 dwUserActionTime) mut => VT.EvaluateNewWindow(ref this, pszUrl, pszName, pszUrlContext, pszFeatures, fReplace, dwFlags, dwUserActionTime);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewWindowManager self, PWSTR pszUrl, PWSTR pszName, PWSTR pszUrlContext, PWSTR pszFeatures, BOOL fReplace, uint32 dwFlags, uint32 dwUserActionTime) EvaluateNewWindow;
		}
	}
	[CRepr]
	public struct IAttachmentExecute : IUnknown
	{
		public const new Guid IID = .(0x73db1241, 0x1e85, 0x4581, 0x8e, 0x4f, 0xa8, 0x1e, 0x1d, 0x0f, 0x8c, 0x57);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetClientTitle(PWSTR pszTitle) mut => VT.SetClientTitle(ref this, pszTitle);
		public HRESULT SetClientGuid(in Guid guid) mut => VT.SetClientGuid(ref this, guid);
		public HRESULT SetLocalPath(PWSTR pszLocalPath) mut => VT.SetLocalPath(ref this, pszLocalPath);
		public HRESULT SetFileName(PWSTR pszFileName) mut => VT.SetFileName(ref this, pszFileName);
		public HRESULT SetSource(PWSTR pszSource) mut => VT.SetSource(ref this, pszSource);
		public HRESULT SetReferrer(PWSTR pszReferrer) mut => VT.SetReferrer(ref this, pszReferrer);
		public HRESULT CheckPolicy() mut => VT.CheckPolicy(ref this);
		public HRESULT Prompt(HWND hwnd, ATTACHMENT_PROMPT prompt, out ATTACHMENT_ACTION paction) mut => VT.Prompt(ref this, hwnd, prompt, out paction);
		public HRESULT Save() mut => VT.Save(ref this);
		public HRESULT Execute(HWND hwnd, PWSTR pszVerb, HANDLE* phProcess) mut => VT.Execute(ref this, hwnd, pszVerb, phProcess);
		public HRESULT SaveWithUI(HWND hwnd) mut => VT.SaveWithUI(ref this, hwnd);
		public HRESULT ClearClientState() mut => VT.ClearClientState(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, PWSTR pszTitle) SetClientTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, in Guid guid) SetClientGuid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, PWSTR pszLocalPath) SetLocalPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, PWSTR pszFileName) SetFileName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, PWSTR pszSource) SetSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, PWSTR pszReferrer) SetReferrer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self) CheckPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, HWND hwnd, ATTACHMENT_PROMPT prompt, out ATTACHMENT_ACTION paction) Prompt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self) Save;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, HWND hwnd, PWSTR pszVerb, HANDLE* phProcess) Execute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self, HWND hwnd) SaveWithUI;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAttachmentExecute self) ClearClientState;
		}
	}
	[CRepr]
	public struct IShellMenuCallback : IUnknown
	{
		public const new Guid IID = .(0x4ca300a1, 0x9b8d, 0x11d1, 0x8b, 0x22, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CallbackSM(out SMDATA psmd, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.CallbackSM(ref this, out psmd, uMsg, wParam, lParam);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenuCallback self, out SMDATA psmd, uint32 uMsg, WPARAM wParam, LPARAM lParam) CallbackSM;
		}
	}
	[CRepr]
	public struct IShellMenu : IUnknown
	{
		public const new Guid IID = .(0xee1f7637, 0xe138, 0x11d1, 0x83, 0x79, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IShellMenuCallback* psmc, uint32 uId, uint32 uIdAncestor, uint32 dwFlags) mut => VT.Initialize(ref this, psmc, uId, uIdAncestor, dwFlags);
		public HRESULT GetMenuInfo(IShellMenuCallback** ppsmc, uint32* puId, uint32* puIdAncestor, uint32* pdwFlags) mut => VT.GetMenuInfo(ref this, ppsmc, puId, puIdAncestor, pdwFlags);
		public HRESULT SetShellFolder(IShellFolder* psf, ITEMIDLIST* pidlFolder, HKEY hKey, uint32 dwFlags) mut => VT.SetShellFolder(ref this, psf, pidlFolder, hKey, dwFlags);
		public HRESULT GetShellFolder(out uint32 pdwFlags, out ITEMIDLIST* ppidl, in Guid riid, void** ppv) mut => VT.GetShellFolder(ref this, out pdwFlags, out ppidl, riid, ppv);
		public HRESULT SetMenu(HMENU hmenu, HWND hwnd, uint32 dwFlags) mut => VT.SetMenu(ref this, hmenu, hwnd, dwFlags);
		public HRESULT GetMenu(HMENU* phmenu, HWND* phwnd, uint32* pdwFlags) mut => VT.GetMenu(ref this, phmenu, phwnd, pdwFlags);
		public HRESULT InvalidateItem(SMDATA* psmd, uint32 dwFlags) mut => VT.InvalidateItem(ref this, psmd, dwFlags);
		public HRESULT GetState(out SMDATA psmd) mut => VT.GetState(ref this, out psmd);
		public HRESULT SetMenuToolbar(ref IUnknown punk, uint32 dwFlags) mut => VT.SetMenuToolbar(ref this, ref punk, dwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, IShellMenuCallback* psmc, uint32 uId, uint32 uIdAncestor, uint32 dwFlags) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, IShellMenuCallback** ppsmc, uint32* puId, uint32* puIdAncestor, uint32* pdwFlags) GetMenuInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, IShellFolder* psf, ITEMIDLIST* pidlFolder, HKEY hKey, uint32 dwFlags) SetShellFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, out uint32 pdwFlags, out ITEMIDLIST* ppidl, in Guid riid, void** ppv) GetShellFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, HMENU hmenu, HWND hwnd, uint32 dwFlags) SetMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, HMENU* phmenu, HWND* phwnd, uint32* pdwFlags) GetMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, SMDATA* psmd, uint32 dwFlags) InvalidateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, out SMDATA psmd) GetState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellMenu self, ref IUnknown punk, uint32 dwFlags) SetMenuToolbar;
		}
	}
	[CRepr]
	public struct IKnownFolder : IUnknown
	{
		public const new Guid IID = .(0x3aa7af7e, 0x9b36, 0x420c, 0xa8, 0xe3, 0xf7, 0x7d, 0x46, 0x74, 0xa4, 0x88);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetId(out Guid pkfid) mut => VT.GetId(ref this, out pkfid);
		public HRESULT GetCategory(out KF_CATEGORY pCategory) mut => VT.GetCategory(ref this, out pCategory);
		public HRESULT GetShellItem(uint32 dwFlags, in Guid riid, void** ppv) mut => VT.GetShellItem(ref this, dwFlags, riid, ppv);
		public HRESULT GetPath(uint32 dwFlags, out PWSTR ppszPath) mut => VT.GetPath(ref this, dwFlags, out ppszPath);
		public HRESULT SetPath(uint32 dwFlags, PWSTR pszPath) mut => VT.SetPath(ref this, dwFlags, pszPath);
		public HRESULT GetIDList(uint32 dwFlags, out ITEMIDLIST* ppidl) mut => VT.GetIDList(ref this, dwFlags, out ppidl);
		public HRESULT GetFolderType(out Guid pftid) mut => VT.GetFolderType(ref this, out pftid);
		public HRESULT GetRedirectionCapabilities(out uint32 pCapabilities) mut => VT.GetRedirectionCapabilities(ref this, out pCapabilities);
		public HRESULT GetFolderDefinition(out KNOWNFOLDER_DEFINITION pKFD) mut => VT.GetFolderDefinition(ref this, out pKFD);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, out Guid pkfid) GetId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, out KF_CATEGORY pCategory) GetCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, uint32 dwFlags, in Guid riid, void** ppv) GetShellItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, uint32 dwFlags, out PWSTR ppszPath) GetPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, uint32 dwFlags, PWSTR pszPath) SetPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, uint32 dwFlags, out ITEMIDLIST* ppidl) GetIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, out Guid pftid) GetFolderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, out uint32 pCapabilities) GetRedirectionCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolder self, out KNOWNFOLDER_DEFINITION pKFD) GetFolderDefinition;
		}
	}
	[CRepr]
	public struct IKnownFolderManager : IUnknown
	{
		public const new Guid IID = .(0x8be2d872, 0x86aa, 0x4d47, 0xb7, 0x76, 0x32, 0xcc, 0xa4, 0x0c, 0x70, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FolderIdFromCsidl(int32 nCsidl, out Guid pfid) mut => VT.FolderIdFromCsidl(ref this, nCsidl, out pfid);
		public HRESULT FolderIdToCsidl(in Guid rfid, out int32 pnCsidl) mut => VT.FolderIdToCsidl(ref this, rfid, out pnCsidl);
		public HRESULT GetFolderIds(Guid** ppKFId, out uint32 pCount) mut => VT.GetFolderIds(ref this, ppKFId, out pCount);
		public HRESULT GetFolder(in Guid rfid, out IKnownFolder* ppkf) mut => VT.GetFolder(ref this, rfid, out ppkf);
		public HRESULT GetFolderByName(PWSTR pszCanonicalName, out IKnownFolder* ppkf) mut => VT.GetFolderByName(ref this, pszCanonicalName, out ppkf);
		public HRESULT RegisterFolder(in Guid rfid, in KNOWNFOLDER_DEFINITION pKFD) mut => VT.RegisterFolder(ref this, rfid, pKFD);
		public HRESULT UnregisterFolder(in Guid rfid) mut => VT.UnregisterFolder(ref this, rfid);
		public HRESULT FindFolderFromPath(PWSTR pszPath, FFFP_MODE mode, out IKnownFolder* ppkf) mut => VT.FindFolderFromPath(ref this, pszPath, mode, out ppkf);
		public HRESULT FindFolderFromIDList(ref ITEMIDLIST pidl, out IKnownFolder* ppkf) mut => VT.FindFolderFromIDList(ref this, ref pidl, out ppkf);
		public HRESULT Redirect(in Guid rfid, HWND hwnd, uint32 flags, PWSTR pszTargetPath, uint32 cFolders, Guid* pExclusion, PWSTR* ppszError) mut => VT.Redirect(ref this, rfid, hwnd, flags, pszTargetPath, cFolders, pExclusion, ppszError);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, int32 nCsidl, out Guid pfid) FolderIdFromCsidl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, in Guid rfid, out int32 pnCsidl) FolderIdToCsidl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, Guid** ppKFId, out uint32 pCount) GetFolderIds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, in Guid rfid, out IKnownFolder* ppkf) GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, PWSTR pszCanonicalName, out IKnownFolder* ppkf) GetFolderByName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, in Guid rfid, in KNOWNFOLDER_DEFINITION pKFD) RegisterFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, in Guid rfid) UnregisterFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, PWSTR pszPath, FFFP_MODE mode, out IKnownFolder* ppkf) FindFolderFromPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, ref ITEMIDLIST pidl, out IKnownFolder* ppkf) FindFolderFromIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IKnownFolderManager self, in Guid rfid, HWND hwnd, uint32 flags, PWSTR pszTargetPath, uint32 cFolders, Guid* pExclusion, PWSTR* ppszError) Redirect;
		}
	}
	[CRepr]
	public struct ISharingConfigurationManager : IUnknown
	{
		public const new Guid IID = .(0xb4cd448a, 0x9c86, 0x4466, 0x92, 0x01, 0x2e, 0x62, 0x10, 0x5b, 0x87, 0xae);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateShare(DEF_SHARE_ID dsid, SHARE_ROLE role) mut => VT.CreateShare(ref this, dsid, role);
		public HRESULT DeleteShare(DEF_SHARE_ID dsid) mut => VT.DeleteShare(ref this, dsid);
		public HRESULT ShareExists(DEF_SHARE_ID dsid) mut => VT.ShareExists(ref this, dsid);
		public HRESULT GetSharePermissions(DEF_SHARE_ID dsid, out SHARE_ROLE pRole) mut => VT.GetSharePermissions(ref this, dsid, out pRole);
		public HRESULT SharePrinters() mut => VT.SharePrinters(ref this);
		public HRESULT StopSharingPrinters() mut => VT.StopSharingPrinters(ref this);
		public HRESULT ArePrintersShared() mut => VT.ArePrintersShared(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self, DEF_SHARE_ID dsid, SHARE_ROLE role) CreateShare;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self, DEF_SHARE_ID dsid) DeleteShare;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self, DEF_SHARE_ID dsid) ShareExists;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self, DEF_SHARE_ID dsid, out SHARE_ROLE pRole) GetSharePermissions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self) SharePrinters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self) StopSharingPrinters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharingConfigurationManager self) ArePrintersShared;
		}
	}
	[CRepr]
	public struct IRelatedItem : IUnknown
	{
		public const new Guid IID = .(0xa73ce67a, 0x8ab1, 0x44f1, 0x8d, 0x43, 0xd2, 0xfc, 0xbf, 0x6b, 0x1c, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetItemIDList(out ITEMIDLIST* ppidl) mut => VT.GetItemIDList(ref this, out ppidl);
		public HRESULT GetItem(out IShellItem* ppsi) mut => VT.GetItem(ref this, out ppsi);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRelatedItem self, out ITEMIDLIST* ppidl) GetItemIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IRelatedItem self, out IShellItem* ppsi) GetItem;
		}
	}
	[CRepr]
	public struct IIdentityName : IRelatedItem
	{
		public const new Guid IID = .(0x7d903fca, 0xd6f9, 0x4810, 0x83, 0x32, 0x94, 0x6c, 0x01, 0x77, 0xe2, 0x47);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct IDelegateItem : IRelatedItem
	{
		public const new Guid IID = .(0x3c5a1c94, 0xc951, 0x4cb7, 0xbb, 0x6d, 0x3b, 0x93, 0xf3, 0x0c, 0xce, 0x93);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct ICurrentItem : IRelatedItem
	{
		public const new Guid IID = .(0x240a7174, 0xd653, 0x4a1d, 0xa6, 0xd3, 0xd4, 0x94, 0x3c, 0xfb, 0xfe, 0x3d);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct ITransferMediumItem : IRelatedItem
	{
		public const new Guid IID = .(0x77f295d5, 0x2d6f, 0x4e19, 0xb8, 0xae, 0x32, 0x2f, 0x3e, 0x72, 0x1a, 0xb5);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct IDisplayItem : IRelatedItem
	{
		public const new Guid IID = .(0xc6fd5997, 0x9f6b, 0x4888, 0x87, 0x03, 0x94, 0xe8, 0x0e, 0x8c, 0xde, 0x3f);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct IViewStateIdentityItem : IRelatedItem
	{
		public const new Guid IID = .(0x9d264146, 0xa94f, 0x4195, 0x9f, 0x9f, 0x3b, 0xb1, 0x2c, 0xe0, 0xc9, 0x55);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct IPreviewItem : IRelatedItem
	{
		public const new Guid IID = .(0x36149969, 0x0a8f, 0x49c8, 0x8b, 0x00, 0x4a, 0xec, 0xb2, 0x02, 0x22, 0xfb);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct IDestinationStreamFactory : IUnknown
	{
		public const new Guid IID = .(0x8a87781b, 0x39a7, 0x4a1f, 0xaa, 0xb3, 0xa3, 0x9b, 0x9c, 0x34, 0xa7, 0xd9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDestinationStream(out IStream* ppstm) mut => VT.GetDestinationStream(ref this, out ppstm);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDestinationStreamFactory self, out IStream* ppstm) GetDestinationStream;
		}
	}
	[CRepr]
	public struct ICreateProcessInputs : IUnknown
	{
		public const new Guid IID = .(0xf6ef6140, 0xe26f, 0x4d82, 0xba, 0xc4, 0xe9, 0xba, 0x5f, 0xd2, 0x39, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCreateFlags(out uint32 pdwCreationFlags) mut => VT.GetCreateFlags(ref this, out pdwCreationFlags);
		public HRESULT SetCreateFlags(uint32 dwCreationFlags) mut => VT.SetCreateFlags(ref this, dwCreationFlags);
		public HRESULT AddCreateFlags(uint32 dwCreationFlags) mut => VT.AddCreateFlags(ref this, dwCreationFlags);
		public HRESULT SetHotKey(uint16 wHotKey) mut => VT.SetHotKey(ref this, wHotKey);
		public HRESULT AddStartupFlags(uint32 dwStartupInfoFlags) mut => VT.AddStartupFlags(ref this, dwStartupInfoFlags);
		public HRESULT SetTitle(PWSTR pszTitle) mut => VT.SetTitle(ref this, pszTitle);
		public HRESULT SetEnvironmentVariable(PWSTR pszName, PWSTR pszValue) mut => VT.SetEnvironmentVariable(ref this, pszName, pszValue);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, out uint32 pdwCreationFlags) GetCreateFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, uint32 dwCreationFlags) SetCreateFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, uint32 dwCreationFlags) AddCreateFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, uint16 wHotKey) SetHotKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, uint32 dwStartupInfoFlags) AddStartupFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, PWSTR pszTitle) SetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreateProcessInputs self, PWSTR pszName, PWSTR pszValue) SetEnvironmentVariable;
		}
	}
	[CRepr]
	public struct ICreatingProcess : IUnknown
	{
		public const new Guid IID = .(0xc2b937a9, 0x3110, 0x4398, 0x8a, 0x56, 0xf3, 0x4c, 0x63, 0x42, 0xd2, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnCreating(ref ICreateProcessInputs pcpi) mut => VT.OnCreating(ref this, ref pcpi);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICreatingProcess self, ref ICreateProcessInputs pcpi) OnCreating;
		}
	}
	[CRepr]
	public struct ILaunchUIContext : IUnknown
	{
		public const new Guid IID = .(0x1791e8f6, 0x21c7, 0x4340, 0x88, 0x2a, 0xa6, 0xa9, 0x3e, 0x3f, 0xd7, 0x3b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAssociatedWindow(HWND value) mut => VT.SetAssociatedWindow(ref this, value);
		public HRESULT SetTabGroupingPreference(uint32 value) mut => VT.SetTabGroupingPreference(ref this, value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchUIContext self, HWND value) SetAssociatedWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchUIContext self, uint32 value) SetTabGroupingPreference;
		}
	}
	[CRepr]
	public struct ILaunchUIContextProvider : IUnknown
	{
		public const new Guid IID = .(0x0d12c4c8, 0xa3d9, 0x4e24, 0x94, 0xc1, 0x0e, 0x20, 0xc5, 0xa9, 0x56, 0xc4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT UpdateContext(ref ILaunchUIContext context) mut => VT.UpdateContext(ref this, ref context);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchUIContextProvider self, ref ILaunchUIContext context) UpdateContext;
		}
	}
	[CRepr]
	public struct INewMenuClient : IUnknown
	{
		public const new Guid IID = .(0xdcb07fdc, 0x3bb5, 0x451c, 0x90, 0xbe, 0x96, 0x66, 0x44, 0xfe, 0xd7, 0xb0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IncludeItems(out int32 pflags) mut => VT.IncludeItems(ref this, out pflags);
		public HRESULT SelectAndEditItem(ref ITEMIDLIST pidlItem, int32 flags) mut => VT.SelectAndEditItem(ref this, ref pidlItem, flags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewMenuClient self, out int32 pflags) IncludeItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewMenuClient self, ref ITEMIDLIST pidlItem, int32 flags) SelectAndEditItem;
		}
	}
	[CRepr]
	public struct IInitializeWithBindCtx : IUnknown
	{
		public const new Guid IID = .(0x71c0d2bc, 0x726d, 0x45cc, 0xa6, 0xc0, 0x2e, 0x31, 0xc1, 0xdb, 0x21, 0x59);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref IBindCtx pbc) mut => VT.Initialize(ref this, ref pbc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithBindCtx self, ref IBindCtx pbc) Initialize;
		}
	}
	[CRepr]
	public struct IShellItemFilter : IUnknown
	{
		public const new Guid IID = .(0x2659b475, 0xeeb8, 0x48b7, 0x8f, 0x07, 0xb3, 0x78, 0x81, 0x0f, 0x48, 0xcf);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IncludeItem(ref IShellItem psi) mut => VT.IncludeItem(ref this, ref psi);
		public HRESULT GetEnumFlagsForItem(ref IShellItem psi, out uint32 pgrfFlags) mut => VT.GetEnumFlagsForItem(ref this, ref psi, out pgrfFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemFilter self, ref IShellItem psi) IncludeItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellItemFilter self, ref IShellItem psi, out uint32 pgrfFlags) GetEnumFlagsForItem;
		}
	}
	[CRepr]
	public struct INameSpaceTreeControl : IUnknown
	{
		public const new Guid IID = .(0x028212a3, 0xb627, 0x47e9, 0x88, 0x56, 0xc1, 0x42, 0x65, 0x55, 0x4e, 0x4f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(HWND hwndParent, ref RECT prc, uint32 nsctsFlags) mut => VT.Initialize(ref this, hwndParent, ref prc, nsctsFlags);
		public HRESULT TreeAdvise(ref IUnknown punk, out uint32 pdwCookie) mut => VT.TreeAdvise(ref this, ref punk, out pdwCookie);
		public HRESULT TreeUnadvise(uint32 dwCookie) mut => VT.TreeUnadvise(ref this, dwCookie);
		public HRESULT AppendRoot(ref IShellItem psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, ref IShellItemFilter pif) mut => VT.AppendRoot(ref this, ref psiRoot, grfEnumFlags, grfRootStyle, ref pif);
		public HRESULT InsertRoot(int32 iIndex, ref IShellItem psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, ref IShellItemFilter pif) mut => VT.InsertRoot(ref this, iIndex, ref psiRoot, grfEnumFlags, grfRootStyle, ref pif);
		public HRESULT RemoveRoot(ref IShellItem psiRoot) mut => VT.RemoveRoot(ref this, ref psiRoot);
		public HRESULT RemoveAllRoots() mut => VT.RemoveAllRoots(ref this);
		public HRESULT GetRootItems(out IShellItemArray* ppsiaRootItems) mut => VT.GetRootItems(ref this, out ppsiaRootItems);
		public HRESULT SetItemState(ref IShellItem psi, uint32 nstcisMask, uint32 nstcisFlags) mut => VT.SetItemState(ref this, ref psi, nstcisMask, nstcisFlags);
		public HRESULT GetItemState(ref IShellItem psi, uint32 nstcisMask, out uint32 pnstcisFlags) mut => VT.GetItemState(ref this, ref psi, nstcisMask, out pnstcisFlags);
		public HRESULT GetSelectedItems(out IShellItemArray* psiaItems) mut => VT.GetSelectedItems(ref this, out psiaItems);
		public HRESULT GetItemCustomState(ref IShellItem psi, out int32 piStateNumber) mut => VT.GetItemCustomState(ref this, ref psi, out piStateNumber);
		public HRESULT SetItemCustomState(ref IShellItem psi, int32 iStateNumber) mut => VT.SetItemCustomState(ref this, ref psi, iStateNumber);
		public HRESULT EnsureItemVisible(ref IShellItem psi) mut => VT.EnsureItemVisible(ref this, ref psi);
		public HRESULT SetTheme(PWSTR pszTheme) mut => VT.SetTheme(ref this, pszTheme);
		public HRESULT GetNextItem(ref IShellItem psi, NSTCGNI nstcgi, out IShellItem* ppsiNext) mut => VT.GetNextItem(ref this, ref psi, nstcgi, out ppsiNext);
		public HRESULT HitTest(ref POINT ppt, out IShellItem* ppsiOut) mut => VT.HitTest(ref this, ref ppt, out ppsiOut);
		public HRESULT GetItemRect(ref IShellItem psi, out RECT prect) mut => VT.GetItemRect(ref this, ref psi, out prect);
		public HRESULT CollapseAll() mut => VT.CollapseAll(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, HWND hwndParent, ref RECT prc, uint32 nsctsFlags) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IUnknown punk, out uint32 pdwCookie) TreeAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, uint32 dwCookie) TreeUnadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, ref IShellItemFilter pif) AppendRoot;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, int32 iIndex, ref IShellItem psiRoot, uint32 grfEnumFlags, uint32 grfRootStyle, ref IShellItemFilter pif) InsertRoot;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psiRoot) RemoveRoot;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self) RemoveAllRoots;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, out IShellItemArray* ppsiaRootItems) GetRootItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, uint32 nstcisMask, uint32 nstcisFlags) SetItemState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, uint32 nstcisMask, out uint32 pnstcisFlags) GetItemState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, out IShellItemArray* psiaItems) GetSelectedItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, out int32 piStateNumber) GetItemCustomState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, int32 iStateNumber) SetItemCustomState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi) EnsureItemVisible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, PWSTR pszTheme) SetTheme;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, NSTCGNI nstcgi, out IShellItem* ppsiNext) GetNextItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref POINT ppt, out IShellItem* ppsiOut) HitTest;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self, ref IShellItem psi, out RECT prect) GetItemRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl self) CollapseAll;
		}
	}
	[CRepr]
	public struct INameSpaceTreeControlFolderCapabilities : IUnknown
	{
		public const new Guid IID = .(0xe9701183, 0xe6b3, 0x4ff2, 0x85, 0x68, 0x81, 0x36, 0x15, 0xfe, 0xc7, 0xbe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFolderCapabilities(NSTCFOLDERCAPABILITIES nfcMask, out NSTCFOLDERCAPABILITIES pnfcValue) mut => VT.GetFolderCapabilities(ref this, nfcMask, out pnfcValue);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlFolderCapabilities self, NSTCFOLDERCAPABILITIES nfcMask, out NSTCFOLDERCAPABILITIES pnfcValue) GetFolderCapabilities;
		}
	}
	[CRepr]
	public struct IPreviewHandler : IUnknown
	{
		public const new Guid IID = .(0x8895b1c6, 0xb41f, 0x4c1c, 0xa5, 0x62, 0x0d, 0x56, 0x42, 0x50, 0x83, 0x6f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetWindow(HWND hwnd, in RECT prc) mut => VT.SetWindow(ref this, hwnd, prc);
		public HRESULT SetRect(in RECT prc) mut => VT.SetRect(ref this, prc);
		public HRESULT DoPreview() mut => VT.DoPreview(ref this);
		public HRESULT Unload() mut => VT.Unload(ref this);
		public HRESULT SetFocus() mut => VT.SetFocus(ref this);
		public HRESULT QueryFocus(out HWND phwnd) mut => VT.QueryFocus(ref this, out phwnd);
		public HRESULT TranslateAccelerator(ref MSG pmsg) mut => VT.TranslateAccelerator(ref this, ref pmsg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self, HWND hwnd, in RECT prc) SetWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self, in RECT prc) SetRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self) DoPreview;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self) Unload;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self) SetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self, out HWND phwnd) QueryFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandler self, ref MSG pmsg) TranslateAccelerator;
		}
	}
	[CRepr]
	public struct IPreviewHandlerFrame : IUnknown
	{
		public const new Guid IID = .(0xfec87aaf, 0x35f9, 0x447a, 0xad, 0xb7, 0x20, 0x23, 0x44, 0x91, 0x40, 0x1a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetWindowContext(out PREVIEWHANDLERFRAMEINFO pinfo) mut => VT.GetWindowContext(ref this, out pinfo);
		public HRESULT TranslateAccelerator(ref MSG pmsg) mut => VT.TranslateAccelerator(ref this, ref pmsg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandlerFrame self, out PREVIEWHANDLERFRAMEINFO pinfo) GetWindowContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviewHandlerFrame self, ref MSG pmsg) TranslateAccelerator;
		}
	}
	[CRepr]
	public struct IExplorerPaneVisibility : IUnknown
	{
		public const new Guid IID = .(0xe07010ec, 0xbc17, 0x44c0, 0x97, 0xb0, 0x46, 0xc7, 0xc9, 0x5b, 0x9e, 0xdc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPaneState(in Guid ep, out uint32 peps) mut => VT.GetPaneState(ref this, ep, out peps);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerPaneVisibility self, in Guid ep, out uint32 peps) GetPaneState;
		}
	}
	[CRepr]
	public struct IContextMenuCB : IUnknown
	{
		public const new Guid IID = .(0x3409e930, 0x5a39, 0x11d1, 0x83, 0xfa, 0x00, 0xa0, 0xc9, 0x0d, 0xc8, 0x49);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CallBack(IShellFolder* psf, HWND hwndOwner, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.CallBack(ref this, psf, hwndOwner, pdtobj, uMsg, wParam, lParam);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContextMenuCB self, IShellFolder* psf, HWND hwndOwner, IDataObject* pdtobj, uint32 uMsg, WPARAM wParam, LPARAM lParam) CallBack;
		}
	}
	[CRepr]
	public struct IDefaultExtractIconInit : IUnknown
	{
		public const new Guid IID = .(0x41ded17d, 0xd6b3, 0x4261, 0x99, 0x7d, 0x88, 0xc6, 0x0e, 0x4b, 0x1d, 0x58);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFlags(uint32 uFlags) mut => VT.SetFlags(ref this, uFlags);
		public HRESULT SetKey(HKEY hkey) mut => VT.SetKey(ref this, hkey);
		public HRESULT SetNormalIcon(PWSTR pszFile, int32 iIcon) mut => VT.SetNormalIcon(ref this, pszFile, iIcon);
		public HRESULT SetOpenIcon(PWSTR pszFile, int32 iIcon) mut => VT.SetOpenIcon(ref this, pszFile, iIcon);
		public HRESULT SetShortcutIcon(PWSTR pszFile, int32 iIcon) mut => VT.SetShortcutIcon(ref this, pszFile, iIcon);
		public HRESULT SetDefaultIcon(PWSTR pszFile, int32 iIcon) mut => VT.SetDefaultIcon(ref this, pszFile, iIcon);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, uint32 uFlags) SetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, HKEY hkey) SetKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, PWSTR pszFile, int32 iIcon) SetNormalIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, PWSTR pszFile, int32 iIcon) SetOpenIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, PWSTR pszFile, int32 iIcon) SetShortcutIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultExtractIconInit self, PWSTR pszFile, int32 iIcon) SetDefaultIcon;
		}
	}
	[CRepr]
	public struct IExplorerCommand : IUnknown
	{
		public const new Guid IID = .(0xa08ce4d0, 0xfa25, 0x44ab, 0xb5, 0x7c, 0xc7, 0xb1, 0xc3, 0x23, 0xe0, 0xb9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetTitle(ref IShellItemArray psiItemArray, out PWSTR ppszName) mut => VT.GetTitle(ref this, ref psiItemArray, out ppszName);
		public HRESULT GetIcon(ref IShellItemArray psiItemArray, out PWSTR ppszIcon) mut => VT.GetIcon(ref this, ref psiItemArray, out ppszIcon);
		public HRESULT GetToolTip(ref IShellItemArray psiItemArray, out PWSTR ppszInfotip) mut => VT.GetToolTip(ref this, ref psiItemArray, out ppszInfotip);
		public HRESULT GetCanonicalName(out Guid pguidCommandName) mut => VT.GetCanonicalName(ref this, out pguidCommandName);
		public HRESULT GetState(ref IShellItemArray psiItemArray, BOOL fOkToBeSlow, out uint32 pCmdState) mut => VT.GetState(ref this, ref psiItemArray, fOkToBeSlow, out pCmdState);
		public HRESULT Invoke(ref IShellItemArray psiItemArray, ref IBindCtx pbc) mut => VT.Invoke(ref this, ref psiItemArray, ref pbc);
		public HRESULT ComGetFlags(out uint32 pFlags) mut => VT.ComGetFlags(ref this, out pFlags);
		public HRESULT EnumSubCommands(out IEnumExplorerCommand* ppEnum) mut => VT.EnumSubCommands(ref this, out ppEnum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, ref IShellItemArray psiItemArray, out PWSTR ppszName) GetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, ref IShellItemArray psiItemArray, out PWSTR ppszIcon) GetIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, ref IShellItemArray psiItemArray, out PWSTR ppszInfotip) GetToolTip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, out Guid pguidCommandName) GetCanonicalName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, ref IShellItemArray psiItemArray, BOOL fOkToBeSlow, out uint32 pCmdState) GetState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, ref IShellItemArray psiItemArray, ref IBindCtx pbc) Invoke;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, out uint32 pFlags) ComGetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommand self, out IEnumExplorerCommand* ppEnum) EnumSubCommands;
		}
	}
	[CRepr]
	public struct IExplorerCommandState : IUnknown
	{
		public const new Guid IID = .(0xbddacb60, 0x7657, 0x47ae, 0x84, 0x45, 0xd2, 0x3e, 0x1a, 0xcf, 0x82, 0xae);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetState(ref IShellItemArray psiItemArray, BOOL fOkToBeSlow, out uint32 pCmdState) mut => VT.GetState(ref this, ref psiItemArray, fOkToBeSlow, out pCmdState);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommandState self, ref IShellItemArray psiItemArray, BOOL fOkToBeSlow, out uint32 pCmdState) GetState;
		}
	}
	[CRepr]
	public struct IInitializeCommand : IUnknown
	{
		public const new Guid IID = .(0x85075acf, 0x231f, 0x40ea, 0x96, 0x10, 0xd2, 0x6b, 0x7b, 0x58, 0xf6, 0x38);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(PWSTR pszCommandName, ref IPropertyBag ppb) mut => VT.Initialize(ref this, pszCommandName, ref ppb);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeCommand self, PWSTR pszCommandName, ref IPropertyBag ppb) Initialize;
		}
	}
	[CRepr]
	public struct IEnumExplorerCommand : IUnknown
	{
		public const new Guid IID = .(0xa88826f8, 0x186f, 0x4987, 0xaa, 0xde, 0xea, 0x0c, 0xef, 0x8f, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, IExplorerCommand** pUICommand, uint32* pceltFetched) mut => VT.Next(ref this, celt, pUICommand, pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumExplorerCommand* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExplorerCommand self, uint32 celt, IExplorerCommand** pUICommand, uint32* pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExplorerCommand self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExplorerCommand self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumExplorerCommand self, out IEnumExplorerCommand* ppenum) Clone;
		}
	}
	[CRepr]
	public struct IExplorerCommandProvider : IUnknown
	{
		public const new Guid IID = .(0x64961751, 0x0835, 0x43c0, 0x8f, 0xfe, 0xd5, 0x76, 0x86, 0x53, 0x0e, 0x64);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCommands(ref IUnknown punkSite, in Guid riid, void** ppv) mut => VT.GetCommands(ref this, ref punkSite, riid, ppv);
		public HRESULT GetCommand(in Guid rguidCommandId, in Guid riid, void** ppv) mut => VT.GetCommand(ref this, rguidCommandId, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommandProvider self, ref IUnknown punkSite, in Guid riid, void** ppv) GetCommands;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExplorerCommandProvider self, in Guid rguidCommandId, in Guid riid, void** ppv) GetCommand;
		}
	}
	[CRepr]
	public struct IOpenControlPanel : IUnknown
	{
		public const new Guid IID = .(0xd11ad862, 0x66de, 0x4df4, 0xbf, 0x6c, 0x1f, 0x56, 0x21, 0x99, 0x6a, 0xf1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Open(PWSTR pszName, PWSTR pszPage, ref IUnknown punkSite) mut => VT.Open(ref this, pszName, pszPage, ref punkSite);
		public HRESULT GetPath(PWSTR pszName, char16* pszPath, uint32 cchPath) mut => VT.GetPath(ref this, pszName, pszPath, cchPath);
		public HRESULT GetCurrentView(out CPVIEW pView) mut => VT.GetCurrentView(ref this, out pView);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpenControlPanel self, PWSTR pszName, PWSTR pszPage, ref IUnknown punkSite) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpenControlPanel self, PWSTR pszName, char16* pszPath, uint32 cchPath) GetPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpenControlPanel self, out CPVIEW pView) GetCurrentView;
		}
	}
	[CRepr]
	public struct IFileSystemBindData : IUnknown
	{
		public const new Guid IID = .(0x01e18d10, 0x4d8b, 0x11d2, 0x85, 0x5d, 0x00, 0x60, 0x08, 0x05, 0x93, 0x67);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFindData(in WIN32_FIND_DATAW pfd) mut => VT.SetFindData(ref this, pfd);
		public HRESULT GetFindData(out WIN32_FIND_DATAW pfd) mut => VT.GetFindData(ref this, out pfd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData self, in WIN32_FIND_DATAW pfd) SetFindData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData self, out WIN32_FIND_DATAW pfd) GetFindData;
		}
	}
	[CRepr]
	public struct IFileSystemBindData2 : IFileSystemBindData
	{
		public const new Guid IID = .(0x3acf075f, 0x71db, 0x4afa, 0x81, 0xf0, 0x3f, 0xc4, 0xfd, 0xf2, 0xa5, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFileID(LARGE_INTEGER liFileID) mut => VT.SetFileID(ref this, liFileID);
		public HRESULT GetFileID(out LARGE_INTEGER pliFileID) mut => VT.GetFileID(ref this, out pliFileID);
		public HRESULT SetJunctionCLSID(in Guid clsid) mut => VT.SetJunctionCLSID(ref this, clsid);
		public HRESULT GetJunctionCLSID(out Guid pclsid) mut => VT.GetJunctionCLSID(ref this, out pclsid);

		[CRepr]
		public struct VTable : IFileSystemBindData.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData2 self, LARGE_INTEGER liFileID) SetFileID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData2 self, out LARGE_INTEGER pliFileID) GetFileID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData2 self, in Guid clsid) SetJunctionCLSID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSystemBindData2 self, out Guid pclsid) GetJunctionCLSID;
		}
	}
	[CRepr]
	public struct ICustomDestinationList : IUnknown
	{
		public const new Guid IID = .(0x6332debf, 0x87b5, 0x4670, 0x90, 0xc0, 0x5e, 0x57, 0xb4, 0x08, 0xa4, 0x9e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAppID(PWSTR pszAppID) mut => VT.SetAppID(ref this, pszAppID);
		public HRESULT BeginList(out uint32 pcMinSlots, in Guid riid, void** ppv) mut => VT.BeginList(ref this, out pcMinSlots, riid, ppv);
		public HRESULT AppendCategory(PWSTR pszCategory, ref IObjectArray poa) mut => VT.AppendCategory(ref this, pszCategory, ref poa);
		public HRESULT AppendKnownCategory(KNOWNDESTCATEGORY category) mut => VT.AppendKnownCategory(ref this, category);
		public HRESULT AddUserTasks(ref IObjectArray poa) mut => VT.AddUserTasks(ref this, ref poa);
		public HRESULT CommitList() mut => VT.CommitList(ref this);
		public HRESULT GetRemovedDestinations(in Guid riid, void** ppv) mut => VT.GetRemovedDestinations(ref this, riid, ppv);
		public HRESULT DeleteList(PWSTR pszAppID) mut => VT.DeleteList(ref this, pszAppID);
		public HRESULT AbortList() mut => VT.AbortList(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, PWSTR pszAppID) SetAppID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, out uint32 pcMinSlots, in Guid riid, void** ppv) BeginList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, PWSTR pszCategory, ref IObjectArray poa) AppendCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, KNOWNDESTCATEGORY category) AppendKnownCategory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, ref IObjectArray poa) AddUserTasks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self) CommitList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, in Guid riid, void** ppv) GetRemovedDestinations;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self, PWSTR pszAppID) DeleteList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICustomDestinationList self) AbortList;
		}
	}
	[CRepr]
	public struct IApplicationDestinations : IUnknown
	{
		public const new Guid IID = .(0x12337d35, 0x94c6, 0x48a0, 0xbc, 0xe7, 0x6a, 0x9c, 0x69, 0xd4, 0xd6, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAppID(PWSTR pszAppID) mut => VT.SetAppID(ref this, pszAppID);
		public HRESULT RemoveDestination(ref IUnknown punk) mut => VT.RemoveDestination(ref this, ref punk);
		public HRESULT RemoveAllDestinations() mut => VT.RemoveAllDestinations(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDestinations self, PWSTR pszAppID) SetAppID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDestinations self, ref IUnknown punk) RemoveDestination;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDestinations self) RemoveAllDestinations;
		}
	}
	[CRepr]
	public struct IApplicationDocumentLists : IUnknown
	{
		public const new Guid IID = .(0x3c594f9f, 0x9f30, 0x47a1, 0x97, 0x9a, 0xc9, 0xe8, 0x3d, 0x3d, 0x0a, 0x06);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAppID(PWSTR pszAppID) mut => VT.SetAppID(ref this, pszAppID);
		public HRESULT GetList(APPDOCLISTTYPE listtype, uint32 cItemsDesired, in Guid riid, void** ppv) mut => VT.GetList(ref this, listtype, cItemsDesired, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDocumentLists self, PWSTR pszAppID) SetAppID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDocumentLists self, APPDOCLISTTYPE listtype, uint32 cItemsDesired, in Guid riid, void** ppv) GetList;
		}
	}
	[CRepr]
	public struct IObjectWithAppUserModelID : IUnknown
	{
		public const new Guid IID = .(0x36db0196, 0x9665, 0x46d1, 0x9b, 0xa7, 0xd3, 0x70, 0x9e, 0xec, 0xf9, 0xed);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAppID(PWSTR pszAppID) mut => VT.SetAppID(ref this, pszAppID);
		public HRESULT GetAppID(out PWSTR ppszAppID) mut => VT.GetAppID(ref this, out ppszAppID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithAppUserModelID self, PWSTR pszAppID) SetAppID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithAppUserModelID self, out PWSTR ppszAppID) GetAppID;
		}
	}
	[CRepr]
	public struct IObjectWithProgID : IUnknown
	{
		public const new Guid IID = .(0x71e806fb, 0x8dee, 0x46fc, 0xbf, 0x8c, 0x77, 0x48, 0xa8, 0xa1, 0xae, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetProgID(PWSTR pszProgID) mut => VT.SetProgID(ref this, pszProgID);
		public HRESULT GetProgID(out PWSTR ppszProgID) mut => VT.GetProgID(ref this, out ppszProgID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithProgID self, PWSTR pszProgID) SetProgID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjectWithProgID self, out PWSTR ppszProgID) GetProgID;
		}
	}
	[CRepr]
	public struct IUpdateIDList : IUnknown
	{
		public const new Guid IID = .(0x6589b6d2, 0x5f8d, 0x4b9e, 0xb7, 0xe0, 0x23, 0xcd, 0xd9, 0x71, 0x7d, 0x8c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Update(IBindCtx* pbc, ref ITEMIDLIST pidlIn, out ITEMIDLIST* ppidlOut) mut => VT.Update(ref this, pbc, ref pidlIn, out ppidlOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUpdateIDList self, IBindCtx* pbc, ref ITEMIDLIST pidlIn, out ITEMIDLIST* ppidlOut) Update;
		}
	}
	[CRepr]
	public struct IDesktopWallpaper : IUnknown
	{
		public const new Guid IID = .(0xb92b56a9, 0x8b55, 0x4e14, 0x9a, 0x89, 0x01, 0x99, 0xbb, 0xb6, 0xf9, 0x3b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetWallpaper(PWSTR monitorID, PWSTR wallpaper) mut => VT.SetWallpaper(ref this, monitorID, wallpaper);
		public HRESULT GetWallpaper(PWSTR monitorID, out PWSTR wallpaper) mut => VT.GetWallpaper(ref this, monitorID, out wallpaper);
		public HRESULT GetMonitorDevicePathAt(uint32 monitorIndex, out PWSTR monitorID) mut => VT.GetMonitorDevicePathAt(ref this, monitorIndex, out monitorID);
		public HRESULT GetMonitorDevicePathCount(out uint32 count) mut => VT.GetMonitorDevicePathCount(ref this, out count);
		public HRESULT GetMonitorRECT(PWSTR monitorID, out RECT displayRect) mut => VT.GetMonitorRECT(ref this, monitorID, out displayRect);
		public HRESULT SetBackgroundColor(uint32 color) mut => VT.SetBackgroundColor(ref this, color);
		public HRESULT GetBackgroundColor(out uint32 color) mut => VT.GetBackgroundColor(ref this, out color);
		public HRESULT SetPosition(DESKTOP_WALLPAPER_POSITION position) mut => VT.SetPosition(ref this, position);
		public HRESULT GetPosition(out DESKTOP_WALLPAPER_POSITION position) mut => VT.GetPosition(ref this, out position);
		public HRESULT SetSlideshow(ref IShellItemArray items) mut => VT.SetSlideshow(ref this, ref items);
		public HRESULT GetSlideshow(out IShellItemArray* items) mut => VT.GetSlideshow(ref this, out items);
		public HRESULT SetSlideshowOptions(DESKTOP_SLIDESHOW_OPTIONS options, uint32 slideshowTick) mut => VT.SetSlideshowOptions(ref this, options, slideshowTick);
		public HRESULT GetSlideshowOptions(out DESKTOP_SLIDESHOW_OPTIONS options, out uint32 slideshowTick) mut => VT.GetSlideshowOptions(ref this, out options, out slideshowTick);
		public HRESULT AdvanceSlideshow(PWSTR monitorID, DESKTOP_SLIDESHOW_DIRECTION direction) mut => VT.AdvanceSlideshow(ref this, monitorID, direction);
		public HRESULT GetStatus(out DESKTOP_SLIDESHOW_STATE state) mut => VT.GetStatus(ref this, out state);
		public HRESULT Enable(BOOL enable) mut => VT.Enable(ref this, enable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, PWSTR monitorID, PWSTR wallpaper) SetWallpaper;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, PWSTR monitorID, out PWSTR wallpaper) GetWallpaper;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, uint32 monitorIndex, out PWSTR monitorID) GetMonitorDevicePathAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out uint32 count) GetMonitorDevicePathCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, PWSTR monitorID, out RECT displayRect) GetMonitorRECT;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, uint32 color) SetBackgroundColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out uint32 color) GetBackgroundColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, DESKTOP_WALLPAPER_POSITION position) SetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out DESKTOP_WALLPAPER_POSITION position) GetPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, ref IShellItemArray items) SetSlideshow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out IShellItemArray* items) GetSlideshow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, DESKTOP_SLIDESHOW_OPTIONS options, uint32 slideshowTick) SetSlideshowOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out DESKTOP_SLIDESHOW_OPTIONS options, out uint32 slideshowTick) GetSlideshowOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, PWSTR monitorID, DESKTOP_SLIDESHOW_DIRECTION direction) AdvanceSlideshow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, out DESKTOP_SLIDESHOW_STATE state) GetStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopWallpaper self, BOOL enable) Enable;
		}
	}
	[CRepr]
	public struct IHomeGroup : IUnknown
	{
		public const new Guid IID = .(0x7a3bd1d9, 0x35a9, 0x4fb3, 0xa4, 0x67, 0xf4, 0x8c, 0xac, 0x35, 0xe2, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsMember(out BOOL member) mut => VT.IsMember(ref this, out member);
		public HRESULT ShowSharingWizard(HWND owner, out HOMEGROUPSHARINGCHOICES sharingchoices) mut => VT.ShowSharingWizard(ref this, owner, out sharingchoices);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHomeGroup self, out BOOL member) IsMember;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHomeGroup self, HWND owner, out HOMEGROUPSHARINGCHOICES sharingchoices) ShowSharingWizard;
		}
	}
	[CRepr]
	public struct IInitializeWithPropertyStore : IUnknown
	{
		public const new Guid IID = .(0xc3e12eb5, 0x7d8d, 0x44f8, 0xb6, 0xdd, 0x0e, 0x77, 0xb3, 0x4d, 0x6d, 0xe4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref IPropertyStore pps) mut => VT.Initialize(ref this, ref pps);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithPropertyStore self, ref IPropertyStore pps) Initialize;
		}
	}
	[CRepr]
	public struct IOpenSearchSource : IUnknown
	{
		public const new Guid IID = .(0xf0ee7333, 0xe6fc, 0x479b, 0x9f, 0x25, 0xa8, 0x60, 0xc2, 0x34, 0xa3, 0x8e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetResults(HWND hwnd, PWSTR pszQuery, uint32 dwStartIndex, uint32 dwCount, in Guid riid, void** ppv) mut => VT.GetResults(ref this, hwnd, pszQuery, dwStartIndex, dwCount, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IOpenSearchSource self, HWND hwnd, PWSTR pszQuery, uint32 dwStartIndex, uint32 dwCount, in Guid riid, void** ppv) GetResults;
		}
	}
	[CRepr]
	public struct IShellLibrary : IUnknown
	{
		public const new Guid IID = .(0x11a66efa, 0x382e, 0x451a, 0x92, 0x34, 0x1e, 0x0e, 0x12, 0xef, 0x30, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT LoadLibraryFromItem(ref IShellItem psiLibrary, uint32 grfMode) mut => VT.LoadLibraryFromItem(ref this, ref psiLibrary, grfMode);
		public HRESULT LoadLibraryFromKnownFolder(in Guid kfidLibrary, uint32 grfMode) mut => VT.LoadLibraryFromKnownFolder(ref this, kfidLibrary, grfMode);
		public HRESULT AddFolder(ref IShellItem psiLocation) mut => VT.AddFolder(ref this, ref psiLocation);
		public HRESULT RemoveFolder(ref IShellItem psiLocation) mut => VT.RemoveFolder(ref this, ref psiLocation);
		public HRESULT GetFolders(LIBRARYFOLDERFILTER lff, in Guid riid, void** ppv) mut => VT.GetFolders(ref this, lff, riid, ppv);
		public HRESULT ResolveFolder(ref IShellItem psiFolderToResolve, uint32 dwTimeout, in Guid riid, void** ppv) mut => VT.ResolveFolder(ref this, ref psiFolderToResolve, dwTimeout, riid, ppv);
		public HRESULT GetDefaultSaveFolder(DEFAULTSAVEFOLDERTYPE dsft, in Guid riid, void** ppv) mut => VT.GetDefaultSaveFolder(ref this, dsft, riid, ppv);
		public HRESULT SetDefaultSaveFolder(DEFAULTSAVEFOLDERTYPE dsft, ref IShellItem psi) mut => VT.SetDefaultSaveFolder(ref this, dsft, ref psi);
		public HRESULT GetOptions(out LIBRARYOPTIONFLAGS plofOptions) mut => VT.GetOptions(ref this, out plofOptions);
		public HRESULT SetOptions(LIBRARYOPTIONFLAGS lofMask, LIBRARYOPTIONFLAGS lofOptions) mut => VT.SetOptions(ref this, lofMask, lofOptions);
		public HRESULT GetFolderType(out Guid pftid) mut => VT.GetFolderType(ref this, out pftid);
		public HRESULT SetFolderType(in Guid ftid) mut => VT.SetFolderType(ref this, ftid);
		public HRESULT GetIcon(out PWSTR ppszIcon) mut => VT.GetIcon(ref this, out ppszIcon);
		public HRESULT SetIcon(PWSTR pszIcon) mut => VT.SetIcon(ref this, pszIcon);
		public HRESULT Commit() mut => VT.Commit(ref this);
		public HRESULT Save(ref IShellItem psiFolderToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, out IShellItem* ppsiSavedTo) mut => VT.Save(ref this, ref psiFolderToSaveIn, pszLibraryName, lsf, out ppsiSavedTo);
		public HRESULT SaveInKnownFolder(in Guid kfidToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, out IShellItem* ppsiSavedTo) mut => VT.SaveInKnownFolder(ref this, kfidToSaveIn, pszLibraryName, lsf, out ppsiSavedTo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, ref IShellItem psiLibrary, uint32 grfMode) LoadLibraryFromItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, in Guid kfidLibrary, uint32 grfMode) LoadLibraryFromKnownFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, ref IShellItem psiLocation) AddFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, ref IShellItem psiLocation) RemoveFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, LIBRARYFOLDERFILTER lff, in Guid riid, void** ppv) GetFolders;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, ref IShellItem psiFolderToResolve, uint32 dwTimeout, in Guid riid, void** ppv) ResolveFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, DEFAULTSAVEFOLDERTYPE dsft, in Guid riid, void** ppv) GetDefaultSaveFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, DEFAULTSAVEFOLDERTYPE dsft, ref IShellItem psi) SetDefaultSaveFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, out LIBRARYOPTIONFLAGS plofOptions) GetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, LIBRARYOPTIONFLAGS lofMask, LIBRARYOPTIONFLAGS lofOptions) SetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, out Guid pftid) GetFolderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, in Guid ftid) SetFolderType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, out PWSTR ppszIcon) GetIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, PWSTR pszIcon) SetIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self) Commit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, ref IShellItem psiFolderToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, out IShellItem* ppsiSavedTo) Save;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLibrary self, in Guid kfidToSaveIn, PWSTR pszLibraryName, LIBRARYSAVEFLAGS lsf, out IShellItem* ppsiSavedTo) SaveInKnownFolder;
		}
	}
	[CRepr]
	public struct IDefaultFolderMenuInitialize : IUnknown
	{
		public const new Guid IID = .(0x7690aa79, 0xf8fc, 0x4615, 0xa3, 0x27, 0x36, 0xf7, 0xd1, 0x8f, 0x5d, 0x91);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(HWND hwnd, IContextMenuCB* pcmcb, ITEMIDLIST* pidlFolder, IShellFolder* psf, uint32 cidl, ITEMIDLIST** apidl, IUnknown* punkAssociation, uint32 cKeys, HKEY* aKeys) mut => VT.Initialize(ref this, hwnd, pcmcb, pidlFolder, psf, cidl, apidl, punkAssociation, cKeys, aKeys);
		public HRESULT SetMenuRestrictions(DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrValues) mut => VT.SetMenuRestrictions(ref this, dfmrValues);
		public HRESULT GetMenuRestrictions(DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrMask, out DEFAULT_FOLDER_MENU_RESTRICTIONS pdfmrValues) mut => VT.GetMenuRestrictions(ref this, dfmrMask, out pdfmrValues);
		public HRESULT SetHandlerClsid(in Guid rclsid) mut => VT.SetHandlerClsid(ref this, rclsid);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultFolderMenuInitialize self, HWND hwnd, IContextMenuCB* pcmcb, ITEMIDLIST* pidlFolder, IShellFolder* psf, uint32 cidl, ITEMIDLIST** apidl, IUnknown* punkAssociation, uint32 cKeys, HKEY* aKeys) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultFolderMenuInitialize self, DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrValues) SetMenuRestrictions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultFolderMenuInitialize self, DEFAULT_FOLDER_MENU_RESTRICTIONS dfmrMask, out DEFAULT_FOLDER_MENU_RESTRICTIONS pdfmrValues) GetMenuRestrictions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDefaultFolderMenuInitialize self, in Guid rclsid) SetHandlerClsid;
		}
	}
	[CRepr]
	public struct IApplicationActivationManager : IUnknown
	{
		public const new Guid IID = .(0x2e941141, 0x7f97, 0x4756, 0xba, 0x1d, 0x9d, 0xec, 0xde, 0x89, 0x4a, 0x3d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateApplication(PWSTR appUserModelId, PWSTR arguments, ACTIVATEOPTIONS options, out uint32 processId) mut => VT.ActivateApplication(ref this, appUserModelId, arguments, options, out processId);
		public HRESULT ActivateForFile(PWSTR appUserModelId, ref IShellItemArray itemArray, PWSTR verb, out uint32 processId) mut => VT.ActivateForFile(ref this, appUserModelId, ref itemArray, verb, out processId);
		public HRESULT ActivateForProtocol(PWSTR appUserModelId, ref IShellItemArray itemArray, out uint32 processId) mut => VT.ActivateForProtocol(ref this, appUserModelId, ref itemArray, out processId);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationActivationManager self, PWSTR appUserModelId, PWSTR arguments, ACTIVATEOPTIONS options, out uint32 processId) ActivateApplication;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationActivationManager self, PWSTR appUserModelId, ref IShellItemArray itemArray, PWSTR verb, out uint32 processId) ActivateForFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationActivationManager self, PWSTR appUserModelId, ref IShellItemArray itemArray, out uint32 processId) ActivateForProtocol;
		}
	}
	[CRepr]
	public struct IVirtualDesktopManager : IUnknown
	{
		public const new Guid IID = .(0xa5cd92ff, 0x29be, 0x454c, 0x8d, 0x04, 0xd8, 0x28, 0x79, 0xfb, 0x3f, 0x1b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsWindowOnCurrentVirtualDesktop(HWND topLevelWindow, out BOOL onCurrentDesktop) mut => VT.IsWindowOnCurrentVirtualDesktop(ref this, topLevelWindow, out onCurrentDesktop);
		public HRESULT GetWindowDesktopId(HWND topLevelWindow, out Guid desktopId) mut => VT.GetWindowDesktopId(ref this, topLevelWindow, out desktopId);
		public HRESULT MoveWindowToDesktop(HWND topLevelWindow, in Guid desktopId) mut => VT.MoveWindowToDesktop(ref this, topLevelWindow, desktopId);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualDesktopManager self, HWND topLevelWindow, out BOOL onCurrentDesktop) IsWindowOnCurrentVirtualDesktop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualDesktopManager self, HWND topLevelWindow, out Guid desktopId) GetWindowDesktopId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVirtualDesktopManager self, HWND topLevelWindow, in Guid desktopId) MoveWindowToDesktop;
		}
	}
	[CRepr]
	public struct IAssocHandlerInvoker : IUnknown
	{
		public const new Guid IID = .(0x92218cab, 0xecaa, 0x4335, 0x81, 0x33, 0x80, 0x7f, 0xd2, 0x34, 0xc2, 0xee);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SupportsSelection() mut => VT.SupportsSelection(ref this);
		public HRESULT Invoke() mut => VT.Invoke(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandlerInvoker self) SupportsSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandlerInvoker self) Invoke;
		}
	}
	[CRepr]
	public struct IAssocHandler : IUnknown
	{
		public const new Guid IID = .(0xf04061ac, 0x1659, 0x4a3f, 0xa9, 0x54, 0x77, 0x5a, 0xa5, 0x7f, 0xc0, 0x83);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetName(out PWSTR ppsz) mut => VT.GetName(ref this, out ppsz);
		public HRESULT GetUIName(out PWSTR ppsz) mut => VT.GetUIName(ref this, out ppsz);
		public HRESULT GetIconLocation(out PWSTR ppszPath, out int32 pIndex) mut => VT.GetIconLocation(ref this, out ppszPath, out pIndex);
		public HRESULT IsRecommended() mut => VT.IsRecommended(ref this);
		public HRESULT MakeDefault(PWSTR pszDescription) mut => VT.MakeDefault(ref this, pszDescription);
		public HRESULT Invoke(ref IDataObject pdo) mut => VT.Invoke(ref this, ref pdo);
		public HRESULT CreateInvoker(ref IDataObject pdo, out IAssocHandlerInvoker* ppInvoker) mut => VT.CreateInvoker(ref this, ref pdo, out ppInvoker);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, out PWSTR ppsz) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, out PWSTR ppsz) GetUIName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, out PWSTR ppszPath, out int32 pIndex) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self) IsRecommended;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, PWSTR pszDescription) MakeDefault;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, ref IDataObject pdo) Invoke;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAssocHandler self, ref IDataObject pdo, out IAssocHandlerInvoker* ppInvoker) CreateInvoker;
		}
	}
	[CRepr]
	public struct IEnumAssocHandlers : IUnknown
	{
		public const new Guid IID = .(0x973810ae, 0x9599, 0x4b88, 0x9e, 0x4d, 0x6e, 0xe9, 0x8c, 0x95, 0x52, 0xda);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, IAssocHandler** rgelt, uint32* pceltFetched) mut => VT.Next(ref this, celt, rgelt, pceltFetched);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumAssocHandlers self, uint32 celt, IAssocHandler** rgelt, uint32* pceltFetched) Next;
		}
	}
	[CRepr]
	public struct IDataObjectProvider : IUnknown
	{
		public const new Guid IID = .(0x3d25f6d6, 0x4b2a, 0x433c, 0x91, 0x84, 0x7c, 0x33, 0xad, 0x35, 0xd0, 0x01);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDataObject(out IDataObject* dataObject) mut => VT.GetDataObject(ref this, out dataObject);
		public HRESULT SetDataObject(ref IDataObject dataObject) mut => VT.SetDataObject(ref this, ref dataObject);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectProvider self, out IDataObject* dataObject) GetDataObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectProvider self, ref IDataObject dataObject) SetDataObject;
		}
	}
	[CRepr]
	public struct IDataTransferManagerInterop : IUnknown
	{
		public const new Guid IID = .(0x3a3dcd6c, 0x3eab, 0x43dc, 0xbc, 0xde, 0x45, 0x67, 0x1c, 0xe8, 0x00, 0xc8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetForWindow(HWND appWindow, in Guid riid, void** dataTransferManager) mut => VT.GetForWindow(ref this, appWindow, riid, dataTransferManager);
		public HRESULT ShowShareUIForWindow(HWND appWindow) mut => VT.ShowShareUIForWindow(ref this, appWindow);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataTransferManagerInterop self, HWND appWindow, in Guid riid, void** dataTransferManager) GetForWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataTransferManagerInterop self, HWND appWindow) ShowShareUIForWindow;
		}
	}
	[CRepr]
	public struct IFrameworkInputPaneHandler : IUnknown
	{
		public const new Guid IID = .(0x226c537b, 0x1e76, 0x4d9e, 0xa7, 0x60, 0x33, 0xdb, 0x29, 0x92, 0x2f, 0x18);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Showing(ref RECT prcInputPaneScreenLocation, BOOL fEnsureFocusedElementInView) mut => VT.Showing(ref this, ref prcInputPaneScreenLocation, fEnsureFocusedElementInView);
		public HRESULT Hiding(BOOL fEnsureFocusedElementInView) mut => VT.Hiding(ref this, fEnsureFocusedElementInView);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPaneHandler self, ref RECT prcInputPaneScreenLocation, BOOL fEnsureFocusedElementInView) Showing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPaneHandler self, BOOL fEnsureFocusedElementInView) Hiding;
		}
	}
	[CRepr]
	public struct IFrameworkInputPane : IUnknown
	{
		public const new Guid IID = .(0x5752238b, 0x24f0, 0x495a, 0x82, 0xf1, 0x2f, 0xd5, 0x93, 0x05, 0x67, 0x96);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref IUnknown pWindow, ref IFrameworkInputPaneHandler pHandler, out uint32 pdwCookie) mut => VT.Advise(ref this, ref pWindow, ref pHandler, out pdwCookie);
		public HRESULT AdviseWithHWND(HWND hwnd, ref IFrameworkInputPaneHandler pHandler, out uint32 pdwCookie) mut => VT.AdviseWithHWND(ref this, hwnd, ref pHandler, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);
		public HRESULT Location(out RECT prcInputPaneScreenLocation) mut => VT.Location(ref this, out prcInputPaneScreenLocation);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPane self, ref IUnknown pWindow, ref IFrameworkInputPaneHandler pHandler, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPane self, HWND hwnd, ref IFrameworkInputPaneHandler pHandler, out uint32 pdwCookie) AdviseWithHWND;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPane self, uint32 dwCookie) Unadvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFrameworkInputPane self, out RECT prcInputPaneScreenLocation) Location;
		}
	}
	[CRepr]
	public struct IAppVisibilityEvents : IUnknown
	{
		public const new Guid IID = .(0x6584ce6b, 0x7d82, 0x49c2, 0x89, 0xc9, 0xc6, 0xbc, 0x02, 0xba, 0x8c, 0x38);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AppVisibilityOnMonitorChanged(HMONITOR hMonitor, MONITOR_APP_VISIBILITY previousMode, MONITOR_APP_VISIBILITY currentMode) mut => VT.AppVisibilityOnMonitorChanged(ref this, hMonitor, previousMode, currentMode);
		public HRESULT LauncherVisibilityChange(BOOL currentVisibleState) mut => VT.LauncherVisibilityChange(ref this, currentVisibleState);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibilityEvents self, HMONITOR hMonitor, MONITOR_APP_VISIBILITY previousMode, MONITOR_APP_VISIBILITY currentMode) AppVisibilityOnMonitorChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibilityEvents self, BOOL currentVisibleState) LauncherVisibilityChange;
		}
	}
	[CRepr]
	public struct IAppVisibility : IUnknown
	{
		public const new Guid IID = .(0x2246ea2d, 0xcaea, 0x4444, 0xa3, 0xc4, 0x6d, 0xe8, 0x27, 0xe4, 0x43, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAppVisibilityOnMonitor(HMONITOR hMonitor, out MONITOR_APP_VISIBILITY pMode) mut => VT.GetAppVisibilityOnMonitor(ref this, hMonitor, out pMode);
		public HRESULT IsLauncherVisible(out BOOL pfVisible) mut => VT.IsLauncherVisible(ref this, out pfVisible);
		public HRESULT Advise(ref IAppVisibilityEvents pCallback, out uint32 pdwCookie) mut => VT.Advise(ref this, ref pCallback, out pdwCookie);
		public HRESULT Unadvise(uint32 dwCookie) mut => VT.Unadvise(ref this, dwCookie);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibility self, HMONITOR hMonitor, out MONITOR_APP_VISIBILITY pMode) GetAppVisibilityOnMonitor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibility self, out BOOL pfVisible) IsLauncherVisible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibility self, ref IAppVisibilityEvents pCallback, out uint32 pdwCookie) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppVisibility self, uint32 dwCookie) Unadvise;
		}
	}
	[CRepr]
	public struct IPackageExecutionStateChangeNotification : IUnknown
	{
		public const new Guid IID = .(0x1bb12a62, 0x2ad8, 0x432b, 0x8c, 0xcf, 0x0c, 0x2c, 0x52, 0xaf, 0xcd, 0x5b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnStateChanged(PWSTR pszPackageFullName, PACKAGE_EXECUTION_STATE pesNewState) mut => VT.OnStateChanged(ref this, pszPackageFullName, pesNewState);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageExecutionStateChangeNotification self, PWSTR pszPackageFullName, PACKAGE_EXECUTION_STATE pesNewState) OnStateChanged;
		}
	}
	[CRepr]
	public struct IPackageDebugSettings : IUnknown
	{
		public const new Guid IID = .(0xf27c3930, 0x8029, 0x4ad1, 0x94, 0xe3, 0x3d, 0xba, 0x41, 0x78, 0x10, 0xc1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnableDebugging(PWSTR packageFullName, PWSTR debuggerCommandLine, PWSTR environment) mut => VT.EnableDebugging(ref this, packageFullName, debuggerCommandLine, environment);
		public HRESULT DisableDebugging(PWSTR packageFullName) mut => VT.DisableDebugging(ref this, packageFullName);
		public HRESULT Suspend(PWSTR packageFullName) mut => VT.Suspend(ref this, packageFullName);
		public HRESULT Resume(PWSTR packageFullName) mut => VT.Resume(ref this, packageFullName);
		public HRESULT TerminateAllProcesses(PWSTR packageFullName) mut => VT.TerminateAllProcesses(ref this, packageFullName);
		public HRESULT SetTargetSessionId(uint32 sessionId) mut => VT.SetTargetSessionId(ref this, sessionId);
		public HRESULT EnumerateBackgroundTasks(PWSTR packageFullName, out uint32 taskCount, out Guid* taskIds, out PWSTR* taskNames) mut => VT.EnumerateBackgroundTasks(ref this, packageFullName, out taskCount, out taskIds, out taskNames);
		public HRESULT ActivateBackgroundTask(in Guid taskId) mut => VT.ActivateBackgroundTask(ref this, taskId);
		public HRESULT StartServicing(PWSTR packageFullName) mut => VT.StartServicing(ref this, packageFullName);
		public HRESULT StopServicing(PWSTR packageFullName) mut => VT.StopServicing(ref this, packageFullName);
		public HRESULT StartSessionRedirection(PWSTR packageFullName, uint32 sessionId) mut => VT.StartSessionRedirection(ref this, packageFullName, sessionId);
		public HRESULT StopSessionRedirection(PWSTR packageFullName) mut => VT.StopSessionRedirection(ref this, packageFullName);
		public HRESULT GetPackageExecutionState(PWSTR packageFullName, out PACKAGE_EXECUTION_STATE packageExecutionState) mut => VT.GetPackageExecutionState(ref this, packageFullName, out packageExecutionState);
		public HRESULT RegisterForPackageStateChanges(PWSTR packageFullName, ref IPackageExecutionStateChangeNotification pPackageExecutionStateChangeNotification, out uint32 pdwCookie) mut => VT.RegisterForPackageStateChanges(ref this, packageFullName, ref pPackageExecutionStateChangeNotification, out pdwCookie);
		public HRESULT UnregisterForPackageStateChanges(uint32 dwCookie) mut => VT.UnregisterForPackageStateChanges(ref this, dwCookie);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName, PWSTR debuggerCommandLine, PWSTR environment) EnableDebugging;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) DisableDebugging;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) Suspend;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) Resume;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) TerminateAllProcesses;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, uint32 sessionId) SetTargetSessionId;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName, out uint32 taskCount, out Guid* taskIds, out PWSTR* taskNames) EnumerateBackgroundTasks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, in Guid taskId) ActivateBackgroundTask;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) StartServicing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) StopServicing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName, uint32 sessionId) StartSessionRedirection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName) StopSessionRedirection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName, out PACKAGE_EXECUTION_STATE packageExecutionState) GetPackageExecutionState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, PWSTR packageFullName, ref IPackageExecutionStateChangeNotification pPackageExecutionStateChangeNotification, out uint32 pdwCookie) RegisterForPackageStateChanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings self, uint32 dwCookie) UnregisterForPackageStateChanges;
		}
	}
	[CRepr]
	public struct IPackageDebugSettings2 : IPackageDebugSettings
	{
		public const new Guid IID = .(0x6e3194bb, 0xab82, 0x4d22, 0x93, 0xf5, 0xfa, 0xbd, 0xa4, 0x0e, 0x7b, 0x16);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumerateApps(PWSTR packageFullName, out uint32 appCount, out PWSTR* appUserModelIds, out PWSTR* appDisplayNames) mut => VT.EnumerateApps(ref this, packageFullName, out appCount, out appUserModelIds, out appDisplayNames);

		[CRepr]
		public struct VTable : IPackageDebugSettings.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPackageDebugSettings2 self, PWSTR packageFullName, out uint32 appCount, out PWSTR* appUserModelIds, out PWSTR* appDisplayNames) EnumerateApps;
		}
	}
	[CRepr]
	public struct ISuspensionDependencyManager : IUnknown
	{
		public const new Guid IID = .(0x52b83a42, 0x2543, 0x416a, 0x81, 0xd9, 0xc0, 0xde, 0x79, 0x69, 0xc8, 0xb3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterAsChild(HANDLE processHandle) mut => VT.RegisterAsChild(ref this, processHandle);
		public HRESULT GroupChildWithParent(HANDLE childProcessHandle) mut => VT.GroupChildWithParent(ref this, childProcessHandle);
		public HRESULT UngroupChildFromParent(HANDLE childProcessHandle) mut => VT.UngroupChildFromParent(ref this, childProcessHandle);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISuspensionDependencyManager self, HANDLE processHandle) RegisterAsChild;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISuspensionDependencyManager self, HANDLE childProcessHandle) GroupChildWithParent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISuspensionDependencyManager self, HANDLE childProcessHandle) UngroupChildFromParent;
		}
	}
	[CRepr]
	public struct IExecuteCommandApplicationHostEnvironment : IUnknown
	{
		public const new Guid IID = .(0x18b21aa9, 0xe184, 0x4ff0, 0x9f, 0x5e, 0xf8, 0x82, 0xd0, 0x37, 0x71, 0xb3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetValue(out AHE_TYPE pahe) mut => VT.GetValue(ref this, out pahe);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommandApplicationHostEnvironment self, out AHE_TYPE pahe) GetValue;
		}
	}
	[CRepr]
	public struct IExecuteCommandHost : IUnknown
	{
		public const new Guid IID = .(0x4b6832a2, 0x5f04, 0x4c9d, 0xb8, 0x9d, 0x72, 0x7a, 0x15, 0xd1, 0x03, 0xe7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetUIMode(out EC_HOST_UI_MODE pUIMode) mut => VT.GetUIMode(ref this, out pUIMode);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExecuteCommandHost self, out EC_HOST_UI_MODE pUIMode) GetUIMode;
		}
	}
	[CRepr]
	public struct IApplicationDesignModeSettings : IUnknown
	{
		public const new Guid IID = .(0x2a3dee9a, 0xe31d, 0x46d6, 0x85, 0x08, 0xbc, 0xc5, 0x97, 0xdb, 0x35, 0x57);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetNativeDisplaySize(SIZE nativeDisplaySizePixels) mut => VT.SetNativeDisplaySize(ref this, nativeDisplaySizePixels);
		public HRESULT SetScaleFactor(DEVICE_SCALE_FACTOR scaleFactor) mut => VT.SetScaleFactor(ref this, scaleFactor);
		public HRESULT SetApplicationViewState(APPLICATION_VIEW_STATE viewState) mut => VT.SetApplicationViewState(ref this, viewState);
		public HRESULT ComputeApplicationSize(out SIZE applicationSizePixels) mut => VT.ComputeApplicationSize(ref this, out applicationSizePixels);
		public HRESULT IsApplicationViewStateSupported(APPLICATION_VIEW_STATE viewState, SIZE nativeDisplaySizePixels, DEVICE_SCALE_FACTOR scaleFactor, out BOOL supported) mut => VT.IsApplicationViewStateSupported(ref this, viewState, nativeDisplaySizePixels, scaleFactor, out supported);
		public HRESULT TriggerEdgeGesture(EDGE_GESTURE_KIND edgeGestureKind) mut => VT.TriggerEdgeGesture(ref this, edgeGestureKind);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, SIZE nativeDisplaySizePixels) SetNativeDisplaySize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, DEVICE_SCALE_FACTOR scaleFactor) SetScaleFactor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, APPLICATION_VIEW_STATE viewState) SetApplicationViewState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, out SIZE applicationSizePixels) ComputeApplicationSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, APPLICATION_VIEW_STATE viewState, SIZE nativeDisplaySizePixels, DEVICE_SCALE_FACTOR scaleFactor, out BOOL supported) IsApplicationViewStateSupported;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings self, EDGE_GESTURE_KIND edgeGestureKind) TriggerEdgeGesture;
		}
	}
	[CRepr]
	public struct IApplicationDesignModeSettings2 : IApplicationDesignModeSettings
	{
		public const new Guid IID = .(0x490514e1, 0x675a, 0x4d6e, 0xa5, 0x8d, 0xe5, 0x49, 0x01, 0xb4, 0xca, 0x2f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetNativeDisplayOrientation(NATIVE_DISPLAY_ORIENTATION nativeDisplayOrientation) mut => VT.SetNativeDisplayOrientation(ref this, nativeDisplayOrientation);
		public HRESULT SetApplicationViewOrientation(APPLICATION_VIEW_ORIENTATION viewOrientation) mut => VT.SetApplicationViewOrientation(ref this, viewOrientation);
		public HRESULT SetAdjacentDisplayEdges(ADJACENT_DISPLAY_EDGES adjacentDisplayEdges) mut => VT.SetAdjacentDisplayEdges(ref this, adjacentDisplayEdges);
		public HRESULT SetIsOnLockScreen(BOOL isOnLockScreen) mut => VT.SetIsOnLockScreen(ref this, isOnLockScreen);
		public HRESULT SetApplicationViewMinWidth(APPLICATION_VIEW_MIN_WIDTH viewMinWidth) mut => VT.SetApplicationViewMinWidth(ref this, viewMinWidth);
		public HRESULT GetApplicationSizeBounds(out SIZE minApplicationSizePixels, out SIZE maxApplicationSizePixels) mut => VT.GetApplicationSizeBounds(ref this, out minApplicationSizePixels, out maxApplicationSizePixels);
		public HRESULT GetApplicationViewOrientation(SIZE applicationSizePixels, out APPLICATION_VIEW_ORIENTATION viewOrientation) mut => VT.GetApplicationViewOrientation(ref this, applicationSizePixels, out viewOrientation);

		[CRepr]
		public struct VTable : IApplicationDesignModeSettings.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, NATIVE_DISPLAY_ORIENTATION nativeDisplayOrientation) SetNativeDisplayOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, APPLICATION_VIEW_ORIENTATION viewOrientation) SetApplicationViewOrientation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, ADJACENT_DISPLAY_EDGES adjacentDisplayEdges) SetAdjacentDisplayEdges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, BOOL isOnLockScreen) SetIsOnLockScreen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, APPLICATION_VIEW_MIN_WIDTH viewMinWidth) SetApplicationViewMinWidth;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, out SIZE minApplicationSizePixels, out SIZE maxApplicationSizePixels) GetApplicationSizeBounds;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationDesignModeSettings2 self, SIZE applicationSizePixels, out APPLICATION_VIEW_ORIENTATION viewOrientation) GetApplicationViewOrientation;
		}
	}
	[CRepr]
	public struct ILaunchTargetMonitor : IUnknown
	{
		public const new Guid IID = .(0x266fbc7e, 0x490d, 0x46ed, 0xa9, 0x6b, 0x22, 0x74, 0xdb, 0x25, 0x20, 0x03);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMonitor(out HMONITOR monitor) mut => VT.GetMonitor(ref this, out monitor);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchTargetMonitor self, out HMONITOR monitor) GetMonitor;
		}
	}
	[CRepr]
	public struct ILaunchSourceViewSizePreference : IUnknown
	{
		public const new Guid IID = .(0xe5aa01f7, 0x1fb8, 0x4830, 0x87, 0x20, 0x4e, 0x67, 0x34, 0xcb, 0xd5, 0xf3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSourceViewToPosition(out HWND hwnd) mut => VT.GetSourceViewToPosition(ref this, out hwnd);
		public HRESULT GetSourceViewSizePreference(out APPLICATION_VIEW_SIZE_PREFERENCE sourceSizeAfterLaunch) mut => VT.GetSourceViewSizePreference(ref this, out sourceSizeAfterLaunch);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchSourceViewSizePreference self, out HWND hwnd) GetSourceViewToPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchSourceViewSizePreference self, out APPLICATION_VIEW_SIZE_PREFERENCE sourceSizeAfterLaunch) GetSourceViewSizePreference;
		}
	}
	[CRepr]
	public struct ILaunchTargetViewSizePreference : IUnknown
	{
		public const new Guid IID = .(0x2f0666c6, 0x12f7, 0x4360, 0xb5, 0x11, 0xa3, 0x94, 0xa0, 0x55, 0x37, 0x25);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetTargetViewSizePreference(out APPLICATION_VIEW_SIZE_PREFERENCE targetSizeOnLaunch) mut => VT.GetTargetViewSizePreference(ref this, out targetSizeOnLaunch);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchTargetViewSizePreference self, out APPLICATION_VIEW_SIZE_PREFERENCE targetSizeOnLaunch) GetTargetViewSizePreference;
		}
	}
	[CRepr]
	public struct ILaunchSourceAppUserModelId : IUnknown
	{
		public const new Guid IID = .(0x989191ac, 0x28ff, 0x4cf0, 0x95, 0x84, 0xe0, 0xd0, 0x78, 0xbc, 0x23, 0x96);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAppUserModelId(out PWSTR launchingApp) mut => VT.GetAppUserModelId(ref this, out launchingApp);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ILaunchSourceAppUserModelId self, out PWSTR launchingApp) GetAppUserModelId;
		}
	}
	[CRepr]
	public struct IInitializeWithWindow : IUnknown
	{
		public const new Guid IID = .(0x3e68d4bd, 0x7135, 0x4d10, 0x80, 0x18, 0x9f, 0xb6, 0xd9, 0xf3, 0x3f, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(HWND hwnd) mut => VT.Initialize(ref this, hwnd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeWithWindow self, HWND hwnd) Initialize;
		}
	}
	[CRepr]
	public struct IHandlerInfo : IUnknown
	{
		public const new Guid IID = .(0x997706ef, 0xf880, 0x453b, 0x81, 0x18, 0x39, 0xe1, 0xa2, 0xd2, 0x65, 0x5a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetApplicationDisplayName(out PWSTR value) mut => VT.GetApplicationDisplayName(ref this, out value);
		public HRESULT GetApplicationPublisher(out PWSTR value) mut => VT.GetApplicationPublisher(ref this, out value);
		public HRESULT GetApplicationIconReference(out PWSTR value) mut => VT.GetApplicationIconReference(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerInfo self, out PWSTR value) GetApplicationDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerInfo self, out PWSTR value) GetApplicationPublisher;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerInfo self, out PWSTR value) GetApplicationIconReference;
		}
	}
	[CRepr]
	public struct IHandlerInfo2 : IHandlerInfo
	{
		public const new Guid IID = .(0x31cca04c, 0x04d3, 0x4ea9, 0x90, 0xde, 0x97, 0xb1, 0x5e, 0x87, 0xa5, 0x32);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetApplicationId(out PWSTR value) mut => VT.GetApplicationId(ref this, out value);

		[CRepr]
		public struct VTable : IHandlerInfo.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerInfo2 self, out PWSTR value) GetApplicationId;
		}
	}
	[CRepr]
	public struct IHandlerActivationHost : IUnknown
	{
		public const new Guid IID = .(0x35094a87, 0x8bb1, 0x4237, 0x96, 0xc6, 0xc4, 0x17, 0xee, 0xbd, 0xb0, 0x78);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BeforeCoCreateInstance(in Guid clsidHandler, ref IShellItemArray itemsBeingActivated, ref IHandlerInfo handlerInfo) mut => VT.BeforeCoCreateInstance(ref this, clsidHandler, ref itemsBeingActivated, ref handlerInfo);
		public HRESULT BeforeCreateProcess(PWSTR applicationPath, PWSTR commandLine, ref IHandlerInfo handlerInfo) mut => VT.BeforeCreateProcess(ref this, applicationPath, commandLine, ref handlerInfo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerActivationHost self, in Guid clsidHandler, ref IShellItemArray itemsBeingActivated, ref IHandlerInfo handlerInfo) BeforeCoCreateInstance;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHandlerActivationHost self, PWSTR applicationPath, PWSTR commandLine, ref IHandlerInfo handlerInfo) BeforeCreateProcess;
		}
	}
	[CRepr]
	public struct IAppActivationUIInfo : IUnknown
	{
		public const new Guid IID = .(0xabad189d, 0x9fa3, 0x4278, 0xb3, 0xca, 0x8c, 0xa4, 0x48, 0xa8, 0x8d, 0xcb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetMonitor(out HMONITOR value) mut => VT.GetMonitor(ref this, out value);
		public HRESULT GetInvokePoint(out POINT value) mut => VT.GetInvokePoint(ref this, out value);
		public HRESULT GetShowCommand(out int32 value) mut => VT.GetShowCommand(ref this, out value);
		public HRESULT GetShowUI(out BOOL value) mut => VT.GetShowUI(ref this, out value);
		public HRESULT GetKeyState(out uint32 value) mut => VT.GetKeyState(ref this, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppActivationUIInfo self, out HMONITOR value) GetMonitor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppActivationUIInfo self, out POINT value) GetInvokePoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppActivationUIInfo self, out int32 value) GetShowCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppActivationUIInfo self, out BOOL value) GetShowUI;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppActivationUIInfo self, out uint32 value) GetKeyState;
		}
	}
	[CRepr]
	public struct IContactManagerInterop : IUnknown
	{
		public const new Guid IID = .(0x99eacba7, 0xe073, 0x43b6, 0xa8, 0x96, 0x55, 0xaf, 0xe4, 0x8a, 0x08, 0x33);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ShowContactCardForWindow(HWND appWindow, ref IUnknown contact, in RECT selection, FLYOUT_PLACEMENT preferredPlacement) mut => VT.ShowContactCardForWindow(ref this, appWindow, ref contact, selection, preferredPlacement);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IContactManagerInterop self, HWND appWindow, ref IUnknown contact, in RECT selection, FLYOUT_PLACEMENT preferredPlacement) ShowContactCardForWindow;
		}
	}
	[CRepr]
	public struct IShellIconOverlayIdentifier : IUnknown
	{
		public const new Guid IID = .(0x0c6c4200, 0xc589, 0x11d0, 0x99, 0x9a, 0x00, 0xc0, 0x4f, 0xd6, 0x55, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsMemberOf(PWSTR pwszPath, uint32 dwAttrib) mut => VT.IsMemberOf(ref this, pwszPath, dwAttrib);
		public HRESULT GetOverlayInfo(char16* pwszIconFile, int32 cchMax, out int32 pIndex, out uint32 pdwFlags) mut => VT.GetOverlayInfo(ref this, pwszIconFile, cchMax, out pIndex, out pdwFlags);
		public HRESULT GetPriority(out int32 pPriority) mut => VT.GetPriority(ref this, out pPriority);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayIdentifier self, PWSTR pwszPath, uint32 dwAttrib) IsMemberOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayIdentifier self, char16* pwszIconFile, int32 cchMax, out int32 pIndex, out uint32 pdwFlags) GetOverlayInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayIdentifier self, out int32 pPriority) GetPriority;
		}
	}
	[CRepr]
	public struct IBannerNotificationHandler : IUnknown
	{
		public const new Guid IID = .(0x8d7b2ba7, 0xdb05, 0x46a8, 0x82, 0x3c, 0xd2, 0xb6, 0xde, 0x08, 0xee, 0x91);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnBannerEvent(in BANNER_NOTIFICATION notification) mut => VT.OnBannerEvent(ref this, notification);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBannerNotificationHandler self, in BANNER_NOTIFICATION notification) OnBannerEvent;
		}
	}
	[CRepr]
	public struct ISortColumnArray : IUnknown
	{
		public const new Guid IID = .(0x6dfc60fb, 0xf2e9, 0x459b, 0xbe, 0xb5, 0x28, 0x8f, 0x1a, 0x7c, 0x7d, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 columnCount) mut => VT.GetCount(ref this, out columnCount);
		public HRESULT GetAt(uint32 index, out SORTCOLUMN sortcolumn) mut => VT.GetAt(ref this, index, out sortcolumn);
		public HRESULT GetSortType(out SORT_ORDER_TYPE type) mut => VT.GetSortType(ref this, out type);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISortColumnArray self, out uint32 columnCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISortColumnArray self, uint32 index, out SORTCOLUMN sortcolumn) GetAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISortColumnArray self, out SORT_ORDER_TYPE type) GetSortType;
		}
	}
	[CRepr]
	public struct IPropertyKeyStore : IUnknown
	{
		public const new Guid IID = .(0x75bd59aa, 0xf23b, 0x4963, 0xab, 0xa4, 0x0b, 0x35, 0x57, 0x52, 0xa9, 0x1b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetKeyCount(out int32 keyCount) mut => VT.GetKeyCount(ref this, out keyCount);
		public HRESULT GetKeyAt(int32 index, out PROPERTYKEY pkey) mut => VT.GetKeyAt(ref this, index, out pkey);
		public HRESULT AppendKey(in PROPERTYKEY key) mut => VT.AppendKey(ref this, key);
		public HRESULT DeleteKey(int32 index) mut => VT.DeleteKey(ref this, index);
		public HRESULT IsKeyInStore(in PROPERTYKEY key) mut => VT.IsKeyInStore(ref this, key);
		public HRESULT RemoveKey(in PROPERTYKEY key) mut => VT.RemoveKey(ref this, key);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, out int32 keyCount) GetKeyCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, int32 index, out PROPERTYKEY pkey) GetKeyAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, in PROPERTYKEY key) AppendKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, int32 index) DeleteKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, in PROPERTYKEY key) IsKeyInStore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPropertyKeyStore self, in PROPERTYKEY key) RemoveKey;
		}
	}
	[CRepr]
	public struct IQueryCodePage : IUnknown
	{
		public const new Guid IID = .(0xc7b236ce, 0xee80, 0x11d0, 0x98, 0x5f, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCodePage(out uint32 puiCodePage) mut => VT.GetCodePage(ref this, out puiCodePage);
		public HRESULT SetCodePage(uint32 uiCodePage) mut => VT.SetCodePage(ref this, uiCodePage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryCodePage self, out uint32 puiCodePage) GetCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryCodePage self, uint32 uiCodePage) SetCodePage;
		}
	}
	[CRepr]
	public struct IFolderViewOptions : IUnknown
	{
		public const new Guid IID = .(0x3cc974d2, 0xb302, 0x4d36, 0xad, 0x3e, 0x06, 0xd9, 0x3f, 0x69, 0x5d, 0x3f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFolderViewOptions(FOLDERVIEWOPTIONS fvoMask, FOLDERVIEWOPTIONS fvoFlags) mut => VT.SetFolderViewOptions(ref this, fvoMask, fvoFlags);
		public HRESULT GetFolderViewOptions(out FOLDERVIEWOPTIONS pfvoFlags) mut => VT.GetFolderViewOptions(ref this, out pfvoFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewOptions self, FOLDERVIEWOPTIONS fvoMask, FOLDERVIEWOPTIONS fvoFlags) SetFolderViewOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewOptions self, out FOLDERVIEWOPTIONS pfvoFlags) GetFolderViewOptions;
		}
	}
	[CRepr]
	public struct IShellView3 : IShellView2
	{
		public const new Guid IID = .(0xec39fa88, 0xf8af, 0x41c5, 0x84, 0x21, 0x38, 0xbe, 0xd2, 0x8f, 0x46, 0x73);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateViewWindow3(ref IShellBrowser psbOwner, ref IShellView psvPrev, uint32 dwViewFlags, FOLDERFLAGS dwMask, FOLDERFLAGS dwFlags, FOLDERVIEWMODE fvMode, in Guid pvid, in RECT prcView, out HWND phwndView) mut => VT.CreateViewWindow3(ref this, ref psbOwner, ref psvPrev, dwViewFlags, dwMask, dwFlags, fvMode, pvid, prcView, out phwndView);

		[CRepr]
		public struct VTable : IShellView2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellView3 self, ref IShellBrowser psbOwner, ref IShellView psvPrev, uint32 dwViewFlags, FOLDERFLAGS dwMask, FOLDERFLAGS dwFlags, FOLDERVIEWMODE fvMode, in Guid pvid, in RECT prcView, out HWND phwndView) CreateViewWindow3;
		}
	}
	[CRepr]
	public struct ISearchBoxInfo : IUnknown
	{
		public const new Guid IID = .(0x6af6e03f, 0xd664, 0x4ef4, 0x96, 0x26, 0xf7, 0xe0, 0xed, 0x36, 0x75, 0x5e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCondition(in Guid riid, void** ppv) mut => VT.GetCondition(ref this, riid, ppv);
		public HRESULT GetText(out PWSTR ppsz) mut => VT.GetText(ref this, out ppsz);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchBoxInfo self, in Guid riid, void** ppv) GetCondition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchBoxInfo self, out PWSTR ppsz) GetText;
		}
	}
	[CRepr]
	public struct IVisualProperties : IUnknown
	{
		public const new Guid IID = .(0xe693cf68, 0xd967, 0x4112, 0x87, 0x63, 0x99, 0x17, 0x2a, 0xee, 0x5e, 0x5a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetWatermark(HBITMAP hbmp, VPWATERMARKFLAGS vpwf) mut => VT.SetWatermark(ref this, hbmp, vpwf);
		public HRESULT SetColor(VPCOLORFLAGS vpcf, uint32 cr) mut => VT.SetColor(ref this, vpcf, cr);
		public HRESULT GetColor(VPCOLORFLAGS vpcf, out uint32 pcr) mut => VT.GetColor(ref this, vpcf, out pcr);
		public HRESULT SetItemHeight(int32 cyItemInPixels) mut => VT.SetItemHeight(ref this, cyItemInPixels);
		public HRESULT GetItemHeight(out int32 cyItemInPixels) mut => VT.GetItemHeight(ref this, out cyItemInPixels);
		public HRESULT SetFont(in LOGFONTW plf, BOOL bRedraw) mut => VT.SetFont(ref this, plf, bRedraw);
		public HRESULT GetFont(out LOGFONTW plf) mut => VT.GetFont(ref this, out plf);
		public HRESULT SetTheme(PWSTR pszSubAppName, PWSTR pszSubIdList) mut => VT.SetTheme(ref this, pszSubAppName, pszSubIdList);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, HBITMAP hbmp, VPWATERMARKFLAGS vpwf) SetWatermark;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, VPCOLORFLAGS vpcf, uint32 cr) SetColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, VPCOLORFLAGS vpcf, out uint32 pcr) GetColor;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, int32 cyItemInPixels) SetItemHeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, out int32 cyItemInPixels) GetItemHeight;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, in LOGFONTW plf, BOOL bRedraw) SetFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, out LOGFONTW plf) GetFont;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IVisualProperties self, PWSTR pszSubAppName, PWSTR pszSubIdList) SetTheme;
		}
	}
	[CRepr]
	public struct ICommDlgBrowser3 : ICommDlgBrowser2
	{
		public const new Guid IID = .(0xc8ad25a1, 0x3294, 0x41ee, 0x81, 0x65, 0x71, 0x17, 0x4b, 0xd0, 0x1c, 0x57);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnColumnClicked(ref IShellView ppshv, int32 iColumn) mut => VT.OnColumnClicked(ref this, ref ppshv, iColumn);
		public HRESULT GetCurrentFilter(char16* pszFileSpec, int32 cchFileSpec) mut => VT.GetCurrentFilter(ref this, pszFileSpec, cchFileSpec);
		public HRESULT OnPreViewCreated(ref IShellView ppshv) mut => VT.OnPreViewCreated(ref this, ref ppshv);

		[CRepr]
		public struct VTable : ICommDlgBrowser2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser3 self, ref IShellView ppshv, int32 iColumn) OnColumnClicked;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser3 self, char16* pszFileSpec, int32 cchFileSpec) GetCurrentFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICommDlgBrowser3 self, ref IShellView ppshv) OnPreViewCreated;
		}
	}
	[CRepr]
	public struct IUserAccountChangeCallback : IUnknown
	{
		public const new Guid IID = .(0xa561e69a, 0xb4b8, 0x4113, 0x91, 0xa5, 0x64, 0xc6, 0xbc, 0xca, 0x34, 0x30);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnPictureChange(PWSTR pszUserName) mut => VT.OnPictureChange(ref this, pszUserName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserAccountChangeCallback self, PWSTR pszUserName) OnPictureChange;
		}
	}
	[CRepr]
	public struct IStreamAsync : IStream
	{
		public const new Guid IID = .(0xfe0b6665, 0xe0ca, 0x49b9, 0xa1, 0x78, 0x2b, 0x5c, 0xb4, 0x8d, 0x92, 0xa5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ReadAsync(void* pv, uint32 cb, uint32* pcbRead, ref OVERLAPPED lpOverlapped) mut => VT.ReadAsync(ref this, pv, cb, pcbRead, ref lpOverlapped);
		public HRESULT WriteAsync(void* lpBuffer, uint32 cb, uint32* pcbWritten, ref OVERLAPPED lpOverlapped) mut => VT.WriteAsync(ref this, lpBuffer, cb, pcbWritten, ref lpOverlapped);
		public HRESULT OverlappedResult(ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, BOOL bWait) mut => VT.OverlappedResult(ref this, ref lpOverlapped, out lpNumberOfBytesTransferred, bWait);
		public HRESULT CancelIo() mut => VT.CancelIo(ref this);

		[CRepr]
		public struct VTable : IStream.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamAsync self, void* pv, uint32 cb, uint32* pcbRead, ref OVERLAPPED lpOverlapped) ReadAsync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamAsync self, void* lpBuffer, uint32 cb, uint32* pcbWritten, ref OVERLAPPED lpOverlapped) WriteAsync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamAsync self, ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, BOOL bWait) OverlappedResult;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamAsync self) CancelIo;
		}
	}
	[CRepr]
	public struct IStreamUnbufferedInfo : IUnknown
	{
		public const new Guid IID = .(0x8a68fdda, 0x1fdc, 0x4c20, 0x8c, 0xeb, 0x41, 0x66, 0x43, 0xb5, 0xa6, 0x25);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSectorSize(out uint32 pcbSectorSize) mut => VT.GetSectorSize(ref this, out pcbSectorSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStreamUnbufferedInfo self, out uint32 pcbSectorSize) GetSectorSize;
		}
	}
	[CRepr]
	public struct IDragSourceHelper2 : IDragSourceHelper
	{
		public const new Guid IID = .(0x83e07d0d, 0x0c5f, 0x4163, 0xbf, 0x1a, 0x60, 0xb2, 0x74, 0x05, 0x1e, 0x40);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFlags(uint32 dwFlags) mut => VT.SetFlags(ref this, dwFlags);

		[CRepr]
		public struct VTable : IDragSourceHelper.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDragSourceHelper2 self, uint32 dwFlags) SetFlags;
		}
	}
	[CRepr]
	public struct IHWEventHandler : IUnknown
	{
		public const new Guid IID = .(0xc1fb73d0, 0xec3a, 0x4ba2, 0xb5, 0x12, 0x8c, 0xdb, 0x91, 0x87, 0xb6, 0xd1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(PWSTR pszParams) mut => VT.Initialize(ref this, pszParams);
		public HRESULT HandleEvent(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType) mut => VT.HandleEvent(ref this, pszDeviceID, pszAltDeviceID, pszEventType);
		public HRESULT HandleEventWithContent(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, PWSTR pszContentTypeHandler, ref IDataObject pdataobject) mut => VT.HandleEventWithContent(ref this, pszDeviceID, pszAltDeviceID, pszEventType, pszContentTypeHandler, ref pdataobject);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHWEventHandler self, PWSTR pszParams) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHWEventHandler self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType) HandleEvent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHWEventHandler self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, PWSTR pszContentTypeHandler, ref IDataObject pdataobject) HandleEventWithContent;
		}
	}
	[CRepr]
	public struct IHWEventHandler2 : IHWEventHandler
	{
		public const new Guid IID = .(0xcfcc809f, 0x295d, 0x42e8, 0x9f, 0xfc, 0x42, 0x4b, 0x33, 0xc4, 0x87, 0xe6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT HandleEventWithHWND(PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, HWND hwndOwner) mut => VT.HandleEventWithHWND(ref this, pszDeviceID, pszAltDeviceID, pszEventType, hwndOwner);

		[CRepr]
		public struct VTable : IHWEventHandler.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHWEventHandler2 self, PWSTR pszDeviceID, PWSTR pszAltDeviceID, PWSTR pszEventType, HWND hwndOwner) HandleEventWithHWND;
		}
	}
	[CRepr]
	public struct IQueryCancelAutoPlay : IUnknown
	{
		public const new Guid IID = .(0xddefe873, 0x6997, 0x4e68, 0xbe, 0x26, 0x39, 0xb6, 0x33, 0xad, 0xbe, 0x12);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AllowAutoPlay(PWSTR pszPath, uint32 dwContentType, PWSTR pszLabel, uint32 dwSerialNumber) mut => VT.AllowAutoPlay(ref this, pszPath, dwContentType, pszLabel, dwSerialNumber);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryCancelAutoPlay self, PWSTR pszPath, uint32 dwContentType, PWSTR pszLabel, uint32 dwSerialNumber) AllowAutoPlay;
		}
	}
	[CRepr]
	public struct IDynamicHWHandler : IUnknown
	{
		public const new Guid IID = .(0xdc2601d7, 0x059e, 0x42fc, 0xa0, 0x9d, 0x2a, 0xfd, 0x21, 0xb6, 0xd5, 0xf7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDynamicInfo(PWSTR pszDeviceID, uint32 dwContentType, out PWSTR ppszAction) mut => VT.GetDynamicInfo(ref this, pszDeviceID, dwContentType, out ppszAction);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDynamicHWHandler self, PWSTR pszDeviceID, uint32 dwContentType, out PWSTR ppszAction) GetDynamicInfo;
		}
	}
	[CRepr]
	public struct IUserNotificationCallback : IUnknown
	{
		public const new Guid IID = .(0x19108294, 0x0441, 0x4aff, 0x80, 0x13, 0xfa, 0x0a, 0x73, 0x0b, 0x0b, 0xea);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnBalloonUserClick(ref POINT pt) mut => VT.OnBalloonUserClick(ref this, ref pt);
		public HRESULT OnLeftClick(ref POINT pt) mut => VT.OnLeftClick(ref this, ref pt);
		public HRESULT OnContextMenu(ref POINT pt) mut => VT.OnContextMenu(ref this, ref pt);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotificationCallback self, ref POINT pt) OnBalloonUserClick;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotificationCallback self, ref POINT pt) OnLeftClick;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotificationCallback self, ref POINT pt) OnContextMenu;
		}
	}
	[CRepr]
	public struct IUserNotification2 : IUnknown
	{
		public const new Guid IID = .(0x215913cc, 0x57eb, 0x4fab, 0xab, 0x5a, 0xe5, 0xfa, 0x7b, 0xea, 0x2a, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBalloonInfo(PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) mut => VT.SetBalloonInfo(ref this, pszTitle, pszText, dwInfoFlags);
		public HRESULT SetBalloonRetry(uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) mut => VT.SetBalloonRetry(ref this, dwShowTime, dwInterval, cRetryCount);
		public HRESULT SetIconInfo(HICON hIcon, PWSTR pszToolTip) mut => VT.SetIconInfo(ref this, hIcon, pszToolTip);
		public HRESULT Show(ref IQueryContinue pqc, uint32 dwContinuePollInterval, ref IUserNotificationCallback pSink) mut => VT.Show(ref this, ref pqc, dwContinuePollInterval, ref pSink);
		public HRESULT PlaySound(PWSTR pszSoundName) mut => VT.PlaySound(ref this, pszSoundName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification2 self, PWSTR pszTitle, PWSTR pszText, uint32 dwInfoFlags) SetBalloonInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification2 self, uint32 dwShowTime, uint32 dwInterval, uint32 cRetryCount) SetBalloonRetry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification2 self, HICON hIcon, PWSTR pszToolTip) SetIconInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification2 self, ref IQueryContinue pqc, uint32 dwContinuePollInterval, ref IUserNotificationCallback pSink) Show;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUserNotification2 self, PWSTR pszSoundName) PlaySound;
		}
	}
	[CRepr]
	public struct IDeskBand2 : IDeskBand
	{
		public const new Guid IID = .(0x79d16de4, 0xabee, 0x4021, 0x8d, 0x9d, 0x91, 0x69, 0xb2, 0x61, 0xd6, 0x57);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CanRenderComposited(out BOOL pfCanRenderComposited) mut => VT.CanRenderComposited(ref this, out pfCanRenderComposited);
		public HRESULT SetCompositionState(BOOL fCompositionEnabled) mut => VT.SetCompositionState(ref this, fCompositionEnabled);
		public HRESULT GetCompositionState(out BOOL pfCompositionEnabled) mut => VT.GetCompositionState(ref this, out pfCompositionEnabled);

		[CRepr]
		public struct VTable : IDeskBand.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBand2 self, out BOOL pfCanRenderComposited) CanRenderComposited;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBand2 self, BOOL fCompositionEnabled) SetCompositionState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBand2 self, out BOOL pfCompositionEnabled) GetCompositionState;
		}
	}
	[CRepr]
	public struct IStartMenuPinnedList : IUnknown
	{
		public const new Guid IID = .(0x4cd19ada, 0x25a5, 0x4a32, 0xb3, 0xb7, 0x34, 0x7b, 0xee, 0x5b, 0xe3, 0x6b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RemoveFromList(ref IShellItem pitem) mut => VT.RemoveFromList(ref this, ref pitem);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStartMenuPinnedList self, ref IShellItem pitem) RemoveFromList;
		}
	}
	[CRepr]
	public struct ICDBurn : IUnknown
	{
		public const new Guid IID = .(0x3d73a659, 0xe5d0, 0x4d42, 0xaf, 0xc0, 0x51, 0x21, 0xba, 0x42, 0x5c, 0x8d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetRecorderDriveLetter(char16* pszDrive, uint32 cch) mut => VT.GetRecorderDriveLetter(ref this, pszDrive, cch);
		public HRESULT Burn(HWND hwnd) mut => VT.Burn(ref this, hwnd);
		public HRESULT HasRecordableDrive(out BOOL pfHasRecorder) mut => VT.HasRecordableDrive(ref this, out pfHasRecorder);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICDBurn self, char16* pszDrive, uint32 cch) GetRecorderDriveLetter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICDBurn self, HWND hwnd) Burn;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICDBurn self, out BOOL pfHasRecorder) HasRecordableDrive;
		}
	}
	[CRepr]
	public struct IWizardSite : IUnknown
	{
		public const new Guid IID = .(0x88960f5b, 0x422f, 0x4e7b, 0x80, 0x13, 0x73, 0x41, 0x53, 0x81, 0xc3, 0xc3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPreviousPage(out HPROPSHEETPAGE phpage) mut => VT.GetPreviousPage(ref this, out phpage);
		public HRESULT GetNextPage(out HPROPSHEETPAGE phpage) mut => VT.GetNextPage(ref this, out phpage);
		public HRESULT GetCancelledPage(out HPROPSHEETPAGE phpage) mut => VT.GetCancelledPage(ref this, out phpage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardSite self, out HPROPSHEETPAGE phpage) GetPreviousPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardSite self, out HPROPSHEETPAGE phpage) GetNextPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardSite self, out HPROPSHEETPAGE phpage) GetCancelledPage;
		}
	}
	[CRepr]
	public struct IWizardExtension : IUnknown
	{
		public const new Guid IID = .(0xc02ea696, 0x86cc, 0x491e, 0x9b, 0x23, 0x74, 0x39, 0x4a, 0x04, 0x44, 0xa8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddPages(HPROPSHEETPAGE* aPages, uint32 cPages, out uint32 pnPagesAdded) mut => VT.AddPages(ref this, aPages, cPages, out pnPagesAdded);
		public HRESULT GetFirstPage(out HPROPSHEETPAGE phpage) mut => VT.GetFirstPage(ref this, out phpage);
		public HRESULT GetLastPage(out HPROPSHEETPAGE phpage) mut => VT.GetLastPage(ref this, out phpage);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardExtension self, HPROPSHEETPAGE* aPages, uint32 cPages, out uint32 pnPagesAdded) AddPages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardExtension self, out HPROPSHEETPAGE phpage) GetFirstPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWizardExtension self, out HPROPSHEETPAGE phpage) GetLastPage;
		}
	}
	[CRepr]
	public struct IWebWizardExtension : IWizardExtension
	{
		public const new Guid IID = .(0x0e6b3f66, 0x98d1, 0x48c0, 0xa2, 0x22, 0xfb, 0xde, 0x74, 0xe2, 0xfb, 0xc5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetInitialURL(PWSTR pszURL) mut => VT.SetInitialURL(ref this, pszURL);
		public HRESULT SetErrorURL(PWSTR pszErrorURL) mut => VT.SetErrorURL(ref this, pszErrorURL);

		[CRepr]
		public struct VTable : IWizardExtension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardExtension self, PWSTR pszURL) SetInitialURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardExtension self, PWSTR pszErrorURL) SetErrorURL;
		}
	}
	[CRepr]
	public struct IPublishingWizard : IWizardExtension
	{
		public const new Guid IID = .(0xaa9198bb, 0xccec, 0x472d, 0xbe, 0xed, 0x19, 0xa4, 0xf6, 0x73, 0x3f, 0x7a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(IDataObject* pdo, uint32 dwOptions, PWSTR pszServiceScope) mut => VT.Initialize(ref this, pdo, dwOptions, pszServiceScope);
		public HRESULT GetTransferManifest(HRESULT* phrFromTransfer, IXMLDOMDocument** pdocManifest) mut => VT.GetTransferManifest(ref this, phrFromTransfer, pdocManifest);

		[CRepr]
		public struct VTable : IWizardExtension.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishingWizard self, IDataObject* pdo, uint32 dwOptions, PWSTR pszServiceScope) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishingWizard self, HRESULT* phrFromTransfer, IXMLDOMDocument** pdocManifest) GetTransferManifest;
		}
	}
	[CRepr]
	public struct IFolderViewHost : IUnknown
	{
		public const new Guid IID = .(0x1ea58f02, 0xd55a, 0x411d, 0xb0, 0x9e, 0x9e, 0x65, 0xac, 0x21, 0x60, 0x5b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(HWND hwndParent, ref IDataObject pdo, ref RECT prc) mut => VT.Initialize(ref this, hwndParent, ref pdo, ref prc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewHost self, HWND hwndParent, ref IDataObject pdo, ref RECT prc) Initialize;
		}
	}
	[CRepr]
	public struct IAccessibleObject : IUnknown
	{
		public const new Guid IID = .(0x95a391c5, 0x9ed4, 0x4c28, 0x84, 0x01, 0xab, 0x9e, 0x06, 0x71, 0x9e, 0x11);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAccessibleName(PWSTR pszName) mut => VT.SetAccessibleName(ref this, pszName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibleObject self, PWSTR pszName) SetAccessibleName;
		}
	}
	[CRepr]
	public struct IResultsFolder : IUnknown
	{
		public const new Guid IID = .(0x96e5ae6d, 0x6ae1, 0x4b1c, 0x90, 0x0c, 0xc6, 0x48, 0x0e, 0xaa, 0x88, 0x28);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddItem(ref IShellItem psi) mut => VT.AddItem(ref this, ref psi);
		public HRESULT AddIDList(ref ITEMIDLIST pidl, ITEMIDLIST** ppidlAdded) mut => VT.AddIDList(ref this, ref pidl, ppidlAdded);
		public HRESULT RemoveItem(ref IShellItem psi) mut => VT.RemoveItem(ref this, ref psi);
		public HRESULT RemoveIDList(ref ITEMIDLIST pidl) mut => VT.RemoveIDList(ref this, ref pidl);
		public HRESULT RemoveAll() mut => VT.RemoveAll(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultsFolder self, ref IShellItem psi) AddItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultsFolder self, ref ITEMIDLIST pidl, ITEMIDLIST** ppidlAdded) AddIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultsFolder self, ref IShellItem psi) RemoveItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultsFolder self, ref ITEMIDLIST pidl) RemoveIDList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IResultsFolder self) RemoveAll;
		}
	}
	[CRepr]
	public struct IAutoCompleteDropDown : IUnknown
	{
		public const new Guid IID = .(0x3cd141f4, 0x3c6a, 0x11d2, 0xbc, 0xaa, 0x00, 0xc0, 0x4f, 0xd9, 0x29, 0xdb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDropDownStatus(out uint32 pdwFlags, out PWSTR ppwszString) mut => VT.GetDropDownStatus(ref this, out pdwFlags, out ppwszString);
		public HRESULT ResetEnumerator() mut => VT.ResetEnumerator(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoCompleteDropDown self, out uint32 pdwFlags, out PWSTR ppwszString) GetDropDownStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoCompleteDropDown self) ResetEnumerator;
		}
	}
	[CRepr]
	public struct ICDBurnExt : IUnknown
	{
		public const new Guid IID = .(0x2271dcca, 0x74fc, 0x4414, 0x8f, 0xb7, 0xc5, 0x6b, 0x05, 0xac, 0xe2, 0xd7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSupportedActionTypes(out uint32 pdwActions) mut => VT.GetSupportedActionTypes(ref this, out pdwActions);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICDBurnExt self, out uint32 pdwActions) GetSupportedActionTypes;
		}
	}
	[CRepr]
	public struct IEnumReadyCallback : IUnknown
	{
		public const new Guid IID = .(0x61e00d45, 0x8fff, 0x4e60, 0x92, 0x4e, 0x65, 0x37, 0xb6, 0x16, 0x12, 0xdd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumReady() mut => VT.EnumReady(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumReadyCallback self) EnumReady;
		}
	}
	[CRepr]
	public struct IEnumerableView : IUnknown
	{
		public const new Guid IID = .(0x8c8bf236, 0x1aec, 0x495f, 0x98, 0x94, 0x91, 0xd5, 0x7c, 0x3c, 0x68, 0x6f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetEnumReadyCallback(ref IEnumReadyCallback percb) mut => VT.SetEnumReadyCallback(ref this, ref percb);
		public HRESULT CreateEnumIDListFromContents(ref ITEMIDLIST pidlFolder, uint32 dwEnumFlags, out IEnumIDList* ppEnumIDList) mut => VT.CreateEnumIDListFromContents(ref this, ref pidlFolder, dwEnumFlags, out ppEnumIDList);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumerableView self, ref IEnumReadyCallback percb) SetEnumReadyCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumerableView self, ref ITEMIDLIST pidlFolder, uint32 dwEnumFlags, out IEnumIDList* ppEnumIDList) CreateEnumIDListFromContents;
		}
	}
	[CRepr]
	public struct IInsertItem : IUnknown
	{
		public const new Guid IID = .(0xd2b57227, 0x3d23, 0x4b95, 0x93, 0xc0, 0x49, 0x2b, 0xd4, 0x54, 0xc3, 0x56);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InsertItem(ref ITEMIDLIST pidl) mut => VT.InsertItem(ref this, ref pidl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInsertItem self, ref ITEMIDLIST pidl) InsertItem;
		}
	}
	[CRepr]
	public struct IFolderBandPriv : IUnknown
	{
		public const new Guid IID = .(0x47c01f95, 0xe185, 0x412c, 0xb5, 0xc5, 0x4f, 0x27, 0xdf, 0x96, 0x5a, 0xea);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCascade(BOOL fCascade) mut => VT.SetCascade(ref this, fCascade);
		public HRESULT SetAccelerators(BOOL fAccelerators) mut => VT.SetAccelerators(ref this, fAccelerators);
		public HRESULT SetNoIcons(BOOL fNoIcons) mut => VT.SetNoIcons(ref this, fNoIcons);
		public HRESULT SetNoText(BOOL fNoText) mut => VT.SetNoText(ref this, fNoText);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderBandPriv self, BOOL fCascade) SetCascade;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderBandPriv self, BOOL fAccelerators) SetAccelerators;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderBandPriv self, BOOL fNoIcons) SetNoIcons;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderBandPriv self, BOOL fNoText) SetNoText;
		}
	}
	[CRepr]
	public struct IImageRecompress : IUnknown
	{
		public const new Guid IID = .(0x505f1513, 0x6b3e, 0x4892, 0xa2, 0x72, 0x59, 0xf8, 0x88, 0x9a, 0x4d, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RecompressImage(ref IShellItem psi, int32 cx, int32 cy, int32 iQuality, ref IStorage pstg, out IStream* ppstrmOut) mut => VT.RecompressImage(ref this, ref psi, cx, cy, iQuality, ref pstg, out ppstrmOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IImageRecompress self, ref IShellItem psi, int32 cx, int32 cy, int32 iQuality, ref IStorage pstg, out IStream* ppstrmOut) RecompressImage;
		}
	}
	[CRepr]
	public struct IFileDialogControlEvents : IUnknown
	{
		public const new Guid IID = .(0x36116642, 0xd713, 0x4b97, 0x9b, 0x83, 0x74, 0x84, 0xa9, 0xd0, 0x04, 0x33);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnItemSelected(ref IFileDialogCustomize pfdc, uint32 dwIDCtl, uint32 dwIDItem) mut => VT.OnItemSelected(ref this, ref pfdc, dwIDCtl, dwIDItem);
		public HRESULT OnButtonClicked(ref IFileDialogCustomize pfdc, uint32 dwIDCtl) mut => VT.OnButtonClicked(ref this, ref pfdc, dwIDCtl);
		public HRESULT OnCheckButtonToggled(ref IFileDialogCustomize pfdc, uint32 dwIDCtl, BOOL bChecked) mut => VT.OnCheckButtonToggled(ref this, ref pfdc, dwIDCtl, bChecked);
		public HRESULT OnControlActivating(ref IFileDialogCustomize pfdc, uint32 dwIDCtl) mut => VT.OnControlActivating(ref this, ref pfdc, dwIDCtl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogControlEvents self, ref IFileDialogCustomize pfdc, uint32 dwIDCtl, uint32 dwIDItem) OnItemSelected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogControlEvents self, ref IFileDialogCustomize pfdc, uint32 dwIDCtl) OnButtonClicked;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogControlEvents self, ref IFileDialogCustomize pfdc, uint32 dwIDCtl, BOOL bChecked) OnCheckButtonToggled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialogControlEvents self, ref IFileDialogCustomize pfdc, uint32 dwIDCtl) OnControlActivating;
		}
	}
	[CRepr]
	public struct IFileDialog2 : IFileDialog
	{
		public const new Guid IID = .(0x61744fc7, 0x85b5, 0x4791, 0xa9, 0xb0, 0x27, 0x22, 0x76, 0x30, 0x9b, 0x13);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetCancelButtonLabel(PWSTR pszLabel) mut => VT.SetCancelButtonLabel(ref this, pszLabel);
		public HRESULT SetNavigationRoot(ref IShellItem psi) mut => VT.SetNavigationRoot(ref this, ref psi);

		[CRepr]
		public struct VTable : IFileDialog.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog2 self, PWSTR pszLabel) SetCancelButtonLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileDialog2 self, ref IShellItem psi) SetNavigationRoot;
		}
	}
	[CRepr]
	public struct IApplicationAssociationRegistrationUI : IUnknown
	{
		public const new Guid IID = .(0x1f76a169, 0xf994, 0x40ac, 0x8f, 0xc8, 0x09, 0x59, 0xe8, 0x87, 0x47, 0x10);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT LaunchAdvancedAssociationUI(PWSTR pszAppRegistryName) mut => VT.LaunchAdvancedAssociationUI(ref this, pszAppRegistryName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IApplicationAssociationRegistrationUI self, PWSTR pszAppRegistryName) LaunchAdvancedAssociationUI;
		}
	}
	[CRepr]
	public struct IShellRunDll : IUnknown
	{
		public const new Guid IID = .(0xfce4bde0, 0x4b68, 0x4b80, 0x8e, 0x9c, 0x74, 0x26, 0x31, 0x5a, 0x73, 0x88);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Run(PWSTR pszArgs) mut => VT.Run(ref this, pszArgs);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellRunDll self, PWSTR pszArgs) Run;
		}
	}
	[CRepr]
	public struct IPreviousVersionsInfo : IUnknown
	{
		public const new Guid IID = .(0x76e54780, 0xad74, 0x48e3, 0xa6, 0x95, 0x3b, 0xa9, 0xa0, 0xaf, 0xf1, 0x0d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AreSnapshotsAvailable(PWSTR pszPath, BOOL fOkToBeSlow, out BOOL pfAvailable) mut => VT.AreSnapshotsAvailable(ref this, pszPath, fOkToBeSlow, out pfAvailable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPreviousVersionsInfo self, PWSTR pszPath, BOOL fOkToBeSlow, out BOOL pfAvailable) AreSnapshotsAvailable;
		}
	}
	[CRepr]
	public struct IUseToBrowseItem : IRelatedItem
	{
		public const new Guid IID = .(0x05edda5c, 0x98a3, 0x4717, 0x8a, 0xdb, 0xc5, 0xe7, 0xda, 0x99, 0x1e, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IRelatedItem.VTable {}
	}
	[CRepr]
	public struct INameSpaceTreeControl2 : INameSpaceTreeControl
	{
		public const new Guid IID = .(0x7cc7aed8, 0x290e, 0x49bc, 0x89, 0x45, 0xc1, 0x40, 0x1c, 0xc9, 0x30, 0x6c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetControlStyle(uint32 nstcsMask, uint32 nstcsStyle) mut => VT.SetControlStyle(ref this, nstcsMask, nstcsStyle);
		public HRESULT GetControlStyle(uint32 nstcsMask, out uint32 pnstcsStyle) mut => VT.GetControlStyle(ref this, nstcsMask, out pnstcsStyle);
		public HRESULT SetControlStyle2(NSTCSTYLE2 nstcsMask, NSTCSTYLE2 nstcsStyle) mut => VT.SetControlStyle2(ref this, nstcsMask, nstcsStyle);
		public HRESULT GetControlStyle2(NSTCSTYLE2 nstcsMask, out NSTCSTYLE2 pnstcsStyle) mut => VT.GetControlStyle2(ref this, nstcsMask, out pnstcsStyle);

		[CRepr]
		public struct VTable : INameSpaceTreeControl.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl2 self, uint32 nstcsMask, uint32 nstcsStyle) SetControlStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl2 self, uint32 nstcsMask, out uint32 pnstcsStyle) GetControlStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl2 self, NSTCSTYLE2 nstcsMask, NSTCSTYLE2 nstcsStyle) SetControlStyle2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControl2 self, NSTCSTYLE2 nstcsMask, out NSTCSTYLE2 pnstcsStyle) GetControlStyle2;
		}
	}
	[CRepr]
	public struct INameSpaceTreeControlEvents : IUnknown
	{
		public const new Guid IID = .(0x93d77985, 0xb3d8, 0x4484, 0x83, 0x18, 0x67, 0x2c, 0xdd, 0xa0, 0x02, 0xce);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnItemClick(ref IShellItem psi, uint32 nstceHitTest, uint32 nstceClickType) mut => VT.OnItemClick(ref this, ref psi, nstceHitTest, nstceClickType);
		public HRESULT OnPropertyItemCommit(ref IShellItem psi) mut => VT.OnPropertyItemCommit(ref this, ref psi);
		public HRESULT OnItemStateChanging(ref IShellItem psi, uint32 nstcisMask, uint32 nstcisState) mut => VT.OnItemStateChanging(ref this, ref psi, nstcisMask, nstcisState);
		public HRESULT OnItemStateChanged(ref IShellItem psi, uint32 nstcisMask, uint32 nstcisState) mut => VT.OnItemStateChanged(ref this, ref psi, nstcisMask, nstcisState);
		public HRESULT OnSelectionChanged(ref IShellItemArray psiaSelection) mut => VT.OnSelectionChanged(ref this, ref psiaSelection);
		public HRESULT OnKeyboardInput(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.OnKeyboardInput(ref this, uMsg, wParam, lParam);
		public HRESULT OnBeforeExpand(ref IShellItem psi) mut => VT.OnBeforeExpand(ref this, ref psi);
		public HRESULT OnAfterExpand(ref IShellItem psi) mut => VT.OnAfterExpand(ref this, ref psi);
		public HRESULT OnBeginLabelEdit(ref IShellItem psi) mut => VT.OnBeginLabelEdit(ref this, ref psi);
		public HRESULT OnEndLabelEdit(ref IShellItem psi) mut => VT.OnEndLabelEdit(ref this, ref psi);
		public HRESULT OnGetToolTip(ref IShellItem psi, char16* pszTip, int32 cchTip) mut => VT.OnGetToolTip(ref this, ref psi, pszTip, cchTip);
		public HRESULT OnBeforeItemDelete(ref IShellItem psi) mut => VT.OnBeforeItemDelete(ref this, ref psi);
		public HRESULT OnItemAdded(ref IShellItem psi, BOOL fIsRoot) mut => VT.OnItemAdded(ref this, ref psi, fIsRoot);
		public HRESULT OnItemDeleted(ref IShellItem psi, BOOL fIsRoot) mut => VT.OnItemDeleted(ref this, ref psi, fIsRoot);
		public HRESULT OnBeforeContextMenu(IShellItem* psi, in Guid riid, void** ppv) mut => VT.OnBeforeContextMenu(ref this, psi, riid, ppv);
		public HRESULT OnAfterContextMenu(IShellItem* psi, ref IContextMenu pcmIn, in Guid riid, void** ppv) mut => VT.OnAfterContextMenu(ref this, psi, ref pcmIn, riid, ppv);
		public HRESULT OnBeforeStateImageChange(ref IShellItem psi) mut => VT.OnBeforeStateImageChange(ref this, ref psi);
		public HRESULT OnGetDefaultIconIndex(ref IShellItem psi, out int32 piDefaultIcon, out int32 piOpenIcon) mut => VT.OnGetDefaultIconIndex(ref this, ref psi, out piDefaultIcon, out piOpenIcon);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, uint32 nstceHitTest, uint32 nstceClickType) OnItemClick;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnPropertyItemCommit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, uint32 nstcisMask, uint32 nstcisState) OnItemStateChanging;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, uint32 nstcisMask, uint32 nstcisState) OnItemStateChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItemArray psiaSelection) OnSelectionChanged;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, uint32 uMsg, WPARAM wParam, LPARAM lParam) OnKeyboardInput;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnBeforeExpand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnAfterExpand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnBeginLabelEdit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnEndLabelEdit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, char16* pszTip, int32 cchTip) OnGetToolTip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnBeforeItemDelete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, BOOL fIsRoot) OnItemAdded;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, BOOL fIsRoot) OnItemDeleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, IShellItem* psi, in Guid riid, void** ppv) OnBeforeContextMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, IShellItem* psi, ref IContextMenu pcmIn, in Guid riid, void** ppv) OnAfterContextMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi) OnBeforeStateImageChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlEvents self, ref IShellItem psi, out int32 piDefaultIcon, out int32 piOpenIcon) OnGetDefaultIconIndex;
		}
	}
	[CRepr]
	public struct INameSpaceTreeControlDropHandler : IUnknown
	{
		public const new Guid IID = .(0xf9c665d6, 0xc2f2, 0x4c19, 0xbf, 0x33, 0x83, 0x22, 0xd7, 0x35, 0x2f, 0x51);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnDragEnter(IShellItem* psiOver, ref IShellItemArray psiaData, BOOL fOutsideSource, uint32 grfKeyState, out uint32 pdwEffect) mut => VT.OnDragEnter(ref this, psiOver, ref psiaData, fOutsideSource, grfKeyState, out pdwEffect);
		public HRESULT OnDragOver(IShellItem* psiOver, ref IShellItemArray psiaData, uint32 grfKeyState, out uint32 pdwEffect) mut => VT.OnDragOver(ref this, psiOver, ref psiaData, grfKeyState, out pdwEffect);
		public HRESULT OnDragPosition(IShellItem* psiOver, ref IShellItemArray psiaData, int32 iNewPosition, int32 iOldPosition) mut => VT.OnDragPosition(ref this, psiOver, ref psiaData, iNewPosition, iOldPosition);
		public HRESULT OnDrop(IShellItem* psiOver, ref IShellItemArray psiaData, int32 iPosition, uint32 grfKeyState, out uint32 pdwEffect) mut => VT.OnDrop(ref this, psiOver, ref psiaData, iPosition, grfKeyState, out pdwEffect);
		public HRESULT OnDropPosition(IShellItem* psiOver, ref IShellItemArray psiaData, int32 iNewPosition, int32 iOldPosition) mut => VT.OnDropPosition(ref this, psiOver, ref psiaData, iNewPosition, iOldPosition);
		public HRESULT OnDragLeave(IShellItem* psiOver) mut => VT.OnDragLeave(ref this, psiOver);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver, ref IShellItemArray psiaData, BOOL fOutsideSource, uint32 grfKeyState, out uint32 pdwEffect) OnDragEnter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver, ref IShellItemArray psiaData, uint32 grfKeyState, out uint32 pdwEffect) OnDragOver;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver, ref IShellItemArray psiaData, int32 iNewPosition, int32 iOldPosition) OnDragPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver, ref IShellItemArray psiaData, int32 iPosition, uint32 grfKeyState, out uint32 pdwEffect) OnDrop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver, ref IShellItemArray psiaData, int32 iNewPosition, int32 iOldPosition) OnDropPosition;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlDropHandler self, IShellItem* psiOver) OnDragLeave;
		}
	}
	[CRepr]
	public struct INameSpaceTreeAccessible : IUnknown
	{
		public const new Guid IID = .(0x71f312de, 0x43ed, 0x4190, 0x84, 0x77, 0xe9, 0x53, 0x6b, 0x82, 0x35, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnGetDefaultAccessibilityAction(ref IShellItem psi, out BSTR pbstrDefaultAction) mut => VT.OnGetDefaultAccessibilityAction(ref this, ref psi, out pbstrDefaultAction);
		public HRESULT OnDoDefaultAccessibilityAction(ref IShellItem psi) mut => VT.OnDoDefaultAccessibilityAction(ref this, ref psi);
		public HRESULT OnGetAccessibilityRole(ref IShellItem psi, out VARIANT pvarRole) mut => VT.OnGetAccessibilityRole(ref this, ref psi, out pvarRole);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeAccessible self, ref IShellItem psi, out BSTR pbstrDefaultAction) OnGetDefaultAccessibilityAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeAccessible self, ref IShellItem psi) OnDoDefaultAccessibilityAction;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeAccessible self, ref IShellItem psi, out VARIANT pvarRole) OnGetAccessibilityRole;
		}
	}
	[CRepr]
	public struct INameSpaceTreeControlCustomDraw : IUnknown
	{
		public const new Guid IID = .(0x2d3ba758, 0x33ee, 0x42d5, 0xbb, 0x7b, 0x5f, 0x34, 0x31, 0xd8, 0x6c, 0x78);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PrePaint(HDC hdc, ref RECT prc, out LRESULT plres) mut => VT.PrePaint(ref this, hdc, ref prc, out plres);
		public HRESULT PostPaint(HDC hdc, ref RECT prc) mut => VT.PostPaint(ref this, hdc, ref prc);
		public HRESULT ItemPrePaint(HDC hdc, ref RECT prc, ref NSTCCUSTOMDRAW pnstccdItem, out uint32 pclrText, out uint32 pclrTextBk, out LRESULT plres) mut => VT.ItemPrePaint(ref this, hdc, ref prc, ref pnstccdItem, out pclrText, out pclrTextBk, out plres);
		public HRESULT ItemPostPaint(HDC hdc, ref RECT prc, ref NSTCCUSTOMDRAW pnstccdItem) mut => VT.ItemPostPaint(ref this, hdc, ref prc, ref pnstccdItem);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlCustomDraw self, HDC hdc, ref RECT prc, out LRESULT plres) PrePaint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlCustomDraw self, HDC hdc, ref RECT prc) PostPaint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlCustomDraw self, HDC hdc, ref RECT prc, ref NSTCCUSTOMDRAW pnstccdItem, out uint32 pclrText, out uint32 pclrTextBk, out LRESULT plres) ItemPrePaint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INameSpaceTreeControlCustomDraw self, HDC hdc, ref RECT prc, ref NSTCCUSTOMDRAW pnstccdItem) ItemPostPaint;
		}
	}
	[CRepr]
	public struct ITrayDeskBand : IUnknown
	{
		public const new Guid IID = .(0x6d67e846, 0x5b9c, 0x4db8, 0x9c, 0xbc, 0xdd, 0xe1, 0x2f, 0x42, 0x54, 0xf1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ShowDeskBand(in Guid clsid) mut => VT.ShowDeskBand(ref this, clsid);
		public HRESULT HideDeskBand(in Guid clsid) mut => VT.HideDeskBand(ref this, clsid);
		public HRESULT IsDeskBandShown(in Guid clsid) mut => VT.IsDeskBandShown(ref this, clsid);
		public HRESULT DeskBandRegistrationChanged() mut => VT.DeskBandRegistrationChanged(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrayDeskBand self, in Guid clsid) ShowDeskBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrayDeskBand self, in Guid clsid) HideDeskBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrayDeskBand self, in Guid clsid) IsDeskBandShown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrayDeskBand self) DeskBandRegistrationChanged;
		}
	}
	[CRepr]
	public struct IBandHost : IUnknown
	{
		public const new Guid IID = .(0xb9075c7c, 0xd48e, 0x403f, 0xab, 0x99, 0xd6, 0xc7, 0x7a, 0x10, 0x84, 0xac);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateBand(in Guid rclsidBand, BOOL fAvailable, BOOL fVisible, in Guid riid, void** ppv) mut => VT.CreateBand(ref this, rclsidBand, fAvailable, fVisible, riid, ppv);
		public HRESULT SetBandAvailability(in Guid rclsidBand, BOOL fAvailable) mut => VT.SetBandAvailability(ref this, rclsidBand, fAvailable);
		public HRESULT DestroyBand(in Guid rclsidBand) mut => VT.DestroyBand(ref this, rclsidBand);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandHost self, in Guid rclsidBand, BOOL fAvailable, BOOL fVisible, in Guid riid, void** ppv) CreateBand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandHost self, in Guid rclsidBand, BOOL fAvailable) SetBandAvailability;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBandHost self, in Guid rclsidBand) DestroyBand;
		}
	}
	[CRepr]
	public struct IComputerInfoChangeNotify : IUnknown
	{
		public const new Guid IID = .(0x0df60d92, 0x6818, 0x46d6, 0xb3, 0x58, 0xd6, 0x61, 0x70, 0xdd, 0xe4, 0x66);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComputerInfoChanged() mut => VT.ComputerInfoChanged(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IComputerInfoChangeNotify self) ComputerInfoChanged;
		}
	}
	[CRepr]
	public struct IDesktopGadget : IUnknown
	{
		public const new Guid IID = .(0xc1646bc4, 0xf298, 0x4f91, 0xa2, 0x04, 0xeb, 0x2d, 0xd1, 0x70, 0x9d, 0x1a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RunGadget(PWSTR gadgetPath) mut => VT.RunGadget(ref this, gadgetPath);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDesktopGadget self, PWSTR gadgetPath) RunGadget;
		}
	}
	[CRepr]
	public struct IAccessibilityDockingServiceCallback : IUnknown
	{
		public const new Guid IID = .(0x157733fd, 0xa592, 0x42e5, 0xb5, 0x94, 0x24, 0x84, 0x68, 0xc5, 0xa8, 0x1b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Undocked(UNDOCK_REASON undockReason) mut => VT.Undocked(ref this, undockReason);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibilityDockingServiceCallback self, UNDOCK_REASON undockReason) Undocked;
		}
	}
	[CRepr]
	public struct IAccessibilityDockingService : IUnknown
	{
		public const new Guid IID = .(0x8849dc22, 0xcedf, 0x4c95, 0x99, 0x8d, 0x05, 0x14, 0x19, 0xdd, 0x3f, 0x76);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAvailableSize(HMONITOR hMonitor, out uint32 pcxFixed, out uint32 pcyMax) mut => VT.GetAvailableSize(ref this, hMonitor, out pcxFixed, out pcyMax);
		public HRESULT DockWindow(HWND hwnd, HMONITOR hMonitor, uint32 cyRequested, ref IAccessibilityDockingServiceCallback pCallback) mut => VT.DockWindow(ref this, hwnd, hMonitor, cyRequested, ref pCallback);
		public HRESULT UndockWindow(HWND hwnd) mut => VT.UndockWindow(ref this, hwnd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibilityDockingService self, HMONITOR hMonitor, out uint32 pcxFixed, out uint32 pcyMax) GetAvailableSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibilityDockingService self, HWND hwnd, HMONITOR hMonitor, uint32 cyRequested, ref IAccessibilityDockingServiceCallback pCallback) DockWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAccessibilityDockingService self, HWND hwnd) UndockWindow;
		}
	}
	[CRepr]
	public struct IStorageProviderBanners : IUnknown
	{
		public const new Guid IID = .(0x5efb46d7, 0x47c0, 0x4b68, 0xac, 0xda, 0xde, 0xd4, 0x7c, 0x90, 0xec, 0x91);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBanner(PWSTR providerIdentity, PWSTR subscriptionId, PWSTR contentId) mut => VT.SetBanner(ref this, providerIdentity, subscriptionId, contentId);
		public HRESULT ClearBanner(PWSTR providerIdentity, PWSTR subscriptionId) mut => VT.ClearBanner(ref this, providerIdentity, subscriptionId);
		public HRESULT ClearAllBanners(PWSTR providerIdentity) mut => VT.ClearAllBanners(ref this, providerIdentity);
		public HRESULT GetBanner(PWSTR providerIdentity, PWSTR subscriptionId, out PWSTR contentId) mut => VT.GetBanner(ref this, providerIdentity, subscriptionId, out contentId);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderBanners self, PWSTR providerIdentity, PWSTR subscriptionId, PWSTR contentId) SetBanner;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderBanners self, PWSTR providerIdentity, PWSTR subscriptionId) ClearBanner;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderBanners self, PWSTR providerIdentity) ClearAllBanners;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderBanners self, PWSTR providerIdentity, PWSTR subscriptionId, out PWSTR contentId) GetBanner;
		}
	}
	[CRepr]
	public struct IStorageProviderCopyHook : IUnknown
	{
		public const new Guid IID = .(0x7bf992a9, 0xaf7a, 0x4dba, 0xb2, 0xe5, 0x4d, 0x08, 0x0b, 0x1e, 0xcb, 0xc6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CopyCallback(HWND hwnd, uint32 operation, uint32 flags, PWSTR srcFile, uint32 srcAttribs, PWSTR destFile, uint32 destAttribs, out uint32 result) mut => VT.CopyCallback(ref this, hwnd, operation, flags, srcFile, srcAttribs, destFile, destAttribs, out result);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderCopyHook self, HWND hwnd, uint32 operation, uint32 flags, PWSTR srcFile, uint32 srcAttribs, PWSTR destFile, uint32 destAttribs, out uint32 result) CopyCallback;
		}
	}
	[CRepr]
	public struct IWebBrowser : IDispatch
	{
		public const new Guid IID = .(0xeab22ac1, 0x30c1, 0x11cf, 0xa7, 0xeb, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GoBack() mut => VT.GoBack(ref this);
		public HRESULT GoForward() mut => VT.GoForward(ref this);
		public HRESULT GoHome() mut => VT.GoHome(ref this);
		public HRESULT GoSearch() mut => VT.GoSearch(ref this);
		public HRESULT Navigate(BSTR URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) mut => VT.Navigate(ref this, URL, Flags, TargetFrameName, PostData, Headers);
		public HRESULT Refresh() mut => VT.Refresh(ref this);
		public HRESULT Refresh2(VARIANT* Level) mut => VT.Refresh2(ref this, Level);
		public HRESULT Stop() mut => VT.Stop(ref this);
		public HRESULT get_Application(out IDispatch* ppDisp) mut => VT.get_Application(ref this, out ppDisp);
		public HRESULT get_Parent(out IDispatch* ppDisp) mut => VT.get_Parent(ref this, out ppDisp);
		public HRESULT get_Container(out IDispatch* ppDisp) mut => VT.get_Container(ref this, out ppDisp);
		public HRESULT get_Document(out IDispatch* ppDisp) mut => VT.get_Document(ref this, out ppDisp);
		public HRESULT get_TopLevelContainer(out int16 pBool) mut => VT.get_TopLevelContainer(ref this, out pBool);
		public HRESULT get_Type(out BSTR Type) mut => VT.get_Type(ref this, out Type);
		public HRESULT get_Left(out int32 pl) mut => VT.get_Left(ref this, out pl);
		public HRESULT put_Left(int32 Left) mut => VT.put_Left(ref this, Left);
		public HRESULT get_Top(out int32 pl) mut => VT.get_Top(ref this, out pl);
		public HRESULT put_Top(int32 Top) mut => VT.put_Top(ref this, Top);
		public HRESULT get_Width(out int32 pl) mut => VT.get_Width(ref this, out pl);
		public HRESULT put_Width(int32 Width) mut => VT.put_Width(ref this, Width);
		public HRESULT get_Height(out int32 pl) mut => VT.get_Height(ref this, out pl);
		public HRESULT put_Height(int32 Height) mut => VT.put_Height(ref this, Height);
		public HRESULT get_LocationName(out BSTR LocationName) mut => VT.get_LocationName(ref this, out LocationName);
		public HRESULT get_LocationURL(out BSTR LocationURL) mut => VT.get_LocationURL(ref this, out LocationURL);
		public HRESULT get_Busy(out int16 pBool) mut => VT.get_Busy(ref this, out pBool);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) GoBack;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) GoForward;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) GoHome;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) GoSearch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, BSTR URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) Navigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) Refresh;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, VARIANT* Level) Refresh2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self) Stop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out IDispatch* ppDisp) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out IDispatch* ppDisp) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out IDispatch* ppDisp) get_Container;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out IDispatch* ppDisp) get_Document;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int16 pBool) get_TopLevelContainer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out BSTR Type) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int32 pl) get_Left;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, int32 Left) put_Left;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int32 pl) get_Top;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, int32 Top) put_Top;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int32 pl) get_Width;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, int32 Width) put_Width;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int32 pl) get_Height;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, int32 Height) put_Height;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out BSTR LocationName) get_LocationName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out BSTR LocationURL) get_LocationURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser self, out int16 pBool) get_Busy;
		}
	}
	[CRepr]
	public struct DWebBrowserEvents : IDispatch
	{
		public const new Guid IID = .(0xeab22ac2, 0x30c1, 0x11cf, 0xa7, 0xeb, 0x00, 0x00, 0xc0, 0x5b, 0xae, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IWebBrowserApp : IWebBrowser
	{
		public const new Guid IID = .(0x0002df05, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Quit() mut => VT.Quit(ref this);
		public HRESULT ClientToWindow(out int32 pcx, out int32 pcy) mut => VT.ClientToWindow(ref this, out pcx, out pcy);
		public HRESULT PutProperty(BSTR Property, VARIANT vtValue) mut => VT.PutProperty(ref this, Property, vtValue);
		public HRESULT GetProperty(BSTR Property, out VARIANT pvtValue) mut => VT.GetProperty(ref this, Property, out pvtValue);
		public HRESULT get_Name(out BSTR Name) mut => VT.get_Name(ref this, out Name);
		public HRESULT get_HWND(out SHANDLE_PTR pHWND) mut => VT.get_HWND(ref this, out pHWND);
		public HRESULT get_FullName(out BSTR FullName) mut => VT.get_FullName(ref this, out FullName);
		public HRESULT get_Path(out BSTR Path) mut => VT.get_Path(ref this, out Path);
		public HRESULT get_Visible(out int16 pBool) mut => VT.get_Visible(ref this, out pBool);
		public HRESULT put_Visible(int16 Value) mut => VT.put_Visible(ref this, Value);
		public HRESULT get_StatusBar(out int16 pBool) mut => VT.get_StatusBar(ref this, out pBool);
		public HRESULT put_StatusBar(int16 Value) mut => VT.put_StatusBar(ref this, Value);
		public HRESULT get_StatusText(out BSTR StatusText) mut => VT.get_StatusText(ref this, out StatusText);
		public HRESULT put_StatusText(BSTR StatusText) mut => VT.put_StatusText(ref this, StatusText);
		public HRESULT get_ToolBar(out int32 Value) mut => VT.get_ToolBar(ref this, out Value);
		public HRESULT put_ToolBar(int32 Value) mut => VT.put_ToolBar(ref this, Value);
		public HRESULT get_MenuBar(out int16 Value) mut => VT.get_MenuBar(ref this, out Value);
		public HRESULT put_MenuBar(int16 Value) mut => VT.put_MenuBar(ref this, Value);
		public HRESULT get_FullScreen(out int16 pbFullScreen) mut => VT.get_FullScreen(ref this, out pbFullScreen);
		public HRESULT put_FullScreen(int16 bFullScreen) mut => VT.put_FullScreen(ref this, bFullScreen);

		[CRepr]
		public struct VTable : IWebBrowser.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self) Quit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int32 pcx, out int32 pcy) ClientToWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, BSTR Property, VARIANT vtValue) PutProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, BSTR Property, out VARIANT pvtValue) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out BSTR Name) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out SHANDLE_PTR pHWND) get_HWND;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out BSTR FullName) get_FullName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out BSTR Path) get_Path;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int16 pBool) get_Visible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, int16 Value) put_Visible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int16 pBool) get_StatusBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, int16 Value) put_StatusBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out BSTR StatusText) get_StatusText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, BSTR StatusText) put_StatusText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int32 Value) get_ToolBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, int32 Value) put_ToolBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int16 Value) get_MenuBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, int16 Value) put_MenuBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, out int16 pbFullScreen) get_FullScreen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowserApp self, int16 bFullScreen) put_FullScreen;
		}
	}
	[CRepr]
	public struct IWebBrowser2 : IWebBrowserApp
	{
		public const new Guid IID = .(0xd30c1661, 0xcdaf, 0x11d0, 0x8a, 0x3e, 0x00, 0xc0, 0x4f, 0xc9, 0xe2, 0x6e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Navigate2(ref VARIANT URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) mut => VT.Navigate2(ref this, ref URL, Flags, TargetFrameName, PostData, Headers);
		public HRESULT QueryStatusWB(OLECMDID cmdID, out OLECMDF pcmdf) mut => VT.QueryStatusWB(ref this, cmdID, out pcmdf);
		public HRESULT ExecWB(OLECMDID cmdID, OLECMDEXECOPT cmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) mut => VT.ExecWB(ref this, cmdID, cmdexecopt, pvaIn, pvaOut);
		public HRESULT ShowBrowserBar(ref VARIANT pvaClsid, VARIANT* pvarShow, VARIANT* pvarSize) mut => VT.ShowBrowserBar(ref this, ref pvaClsid, pvarShow, pvarSize);
		public HRESULT get_ReadyState(out READYSTATE plReadyState) mut => VT.get_ReadyState(ref this, out plReadyState);
		public HRESULT get_Offline(out int16 pbOffline) mut => VT.get_Offline(ref this, out pbOffline);
		public HRESULT put_Offline(int16 bOffline) mut => VT.put_Offline(ref this, bOffline);
		public HRESULT get_Silent(out int16 pbSilent) mut => VT.get_Silent(ref this, out pbSilent);
		public HRESULT put_Silent(int16 bSilent) mut => VT.put_Silent(ref this, bSilent);
		public HRESULT get_RegisterAsBrowser(out int16 pbRegister) mut => VT.get_RegisterAsBrowser(ref this, out pbRegister);
		public HRESULT put_RegisterAsBrowser(int16 bRegister) mut => VT.put_RegisterAsBrowser(ref this, bRegister);
		public HRESULT get_RegisterAsDropTarget(out int16 pbRegister) mut => VT.get_RegisterAsDropTarget(ref this, out pbRegister);
		public HRESULT put_RegisterAsDropTarget(int16 bRegister) mut => VT.put_RegisterAsDropTarget(ref this, bRegister);
		public HRESULT get_TheaterMode(out int16 pbRegister) mut => VT.get_TheaterMode(ref this, out pbRegister);
		public HRESULT put_TheaterMode(int16 bRegister) mut => VT.put_TheaterMode(ref this, bRegister);
		public HRESULT get_AddressBar(out int16 Value) mut => VT.get_AddressBar(ref this, out Value);
		public HRESULT put_AddressBar(int16 Value) mut => VT.put_AddressBar(ref this, Value);
		public HRESULT get_Resizable(out int16 Value) mut => VT.get_Resizable(ref this, out Value);
		public HRESULT put_Resizable(int16 Value) mut => VT.put_Resizable(ref this, Value);

		[CRepr]
		public struct VTable : IWebBrowserApp.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, ref VARIANT URL, VARIANT* Flags, VARIANT* TargetFrameName, VARIANT* PostData, VARIANT* Headers) Navigate2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, OLECMDID cmdID, out OLECMDF pcmdf) QueryStatusWB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, OLECMDID cmdID, OLECMDEXECOPT cmdexecopt, VARIANT* pvaIn, VARIANT* pvaOut) ExecWB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, ref VARIANT pvaClsid, VARIANT* pvarShow, VARIANT* pvarSize) ShowBrowserBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out READYSTATE plReadyState) get_ReadyState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 pbOffline) get_Offline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 bOffline) put_Offline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 pbSilent) get_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 bSilent) put_Silent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 pbRegister) get_RegisterAsBrowser;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 bRegister) put_RegisterAsBrowser;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 pbRegister) get_RegisterAsDropTarget;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 bRegister) put_RegisterAsDropTarget;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 pbRegister) get_TheaterMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 bRegister) put_TheaterMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 Value) get_AddressBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 Value) put_AddressBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, out int16 Value) get_Resizable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebBrowser2 self, int16 Value) put_Resizable;
		}
	}
	[CRepr]
	public struct DWebBrowserEvents2 : IDispatch
	{
		public const new Guid IID = .(0x34a715a0, 0x6587, 0x11d0, 0x92, 0x4a, 0x00, 0x20, 0xaf, 0xc7, 0xac, 0x4d);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct DShellWindowsEvents : IDispatch
	{
		public const new Guid IID = .(0xfe4106e0, 0x399a, 0x11d0, 0xa4, 0x8c, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IShellWindows : IDispatch
	{
		public const new Guid IID = .(0x85cb6900, 0x4d95, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 Count) mut => VT.get_Count(ref this, out Count);
		public HRESULT Item(VARIANT index, out IDispatch* Folder) mut => VT.Item(ref this, index, out Folder);
		public HRESULT _NewEnum(out IUnknown* ppunk) mut => VT._NewEnum(ref this, out ppunk);
		public HRESULT Register(ref IDispatch pid, int32 hwnd, int32 swClass, out int32 plCookie) mut => VT.Register(ref this, ref pid, hwnd, swClass, out plCookie);
		public HRESULT RegisterPending(int32 lThreadId, ref VARIANT pvarloc, ref VARIANT pvarlocRoot, int32 swClass, out int32 plCookie) mut => VT.RegisterPending(ref this, lThreadId, ref pvarloc, ref pvarlocRoot, swClass, out plCookie);
		public HRESULT Revoke(int32 lCookie) mut => VT.Revoke(ref this, lCookie);
		public HRESULT OnNavigate(int32 lCookie, ref VARIANT pvarLoc) mut => VT.OnNavigate(ref this, lCookie, ref pvarLoc);
		public HRESULT OnActivated(int32 lCookie, int16 fActive) mut => VT.OnActivated(ref this, lCookie, fActive);
		public HRESULT FindWindowSW(ref VARIANT pvarLoc, ref VARIANT pvarLocRoot, int32 swClass, out int32 phwnd, int32 swfwOptions, out IDispatch* ppdispOut) mut => VT.FindWindowSW(ref this, ref pvarLoc, ref pvarLocRoot, swClass, out phwnd, swfwOptions, out ppdispOut);
		public HRESULT OnCreated(int32 lCookie, ref IUnknown punk) mut => VT.OnCreated(ref this, lCookie, ref punk);
		public HRESULT ProcessAttachDetach(int16 fAttach) mut => VT.ProcessAttachDetach(ref this, fAttach);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, out int32 Count) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, VARIANT index, out IDispatch* Folder) Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, out IUnknown* ppunk) _NewEnum;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, ref IDispatch pid, int32 hwnd, int32 swClass, out int32 plCookie) Register;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int32 lThreadId, ref VARIANT pvarloc, ref VARIANT pvarlocRoot, int32 swClass, out int32 plCookie) RegisterPending;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int32 lCookie) Revoke;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int32 lCookie, ref VARIANT pvarLoc) OnNavigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int32 lCookie, int16 fActive) OnActivated;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, ref VARIANT pvarLoc, ref VARIANT pvarLocRoot, int32 swClass, out int32 phwnd, int32 swfwOptions, out IDispatch* ppdispOut) FindWindowSW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int32 lCookie, ref IUnknown punk) OnCreated;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellWindows self, int16 fAttach) ProcessAttachDetach;
		}
	}
	[CRepr]
	public struct IShellUIHelper : IDispatch
	{
		public const new Guid IID = .(0x729fe2f8, 0x1ea8, 0x11d1, 0x8f, 0x85, 0x00, 0xc0, 0x4f, 0xc2, 0xfb, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ResetFirstBootMode() mut => VT.ResetFirstBootMode(ref this);
		public HRESULT ResetSafeMode() mut => VT.ResetSafeMode(ref this);
		public HRESULT RefreshOfflineDesktop() mut => VT.RefreshOfflineDesktop(ref this);
		public HRESULT AddFavorite(BSTR URL, VARIANT* Title) mut => VT.AddFavorite(ref this, URL, Title);
		public HRESULT AddChannel(BSTR URL) mut => VT.AddChannel(ref this, URL);
		public HRESULT AddDesktopComponent(BSTR URL, BSTR Type, VARIANT* Left, VARIANT* Top, VARIANT* Width, VARIANT* Height) mut => VT.AddDesktopComponent(ref this, URL, Type, Left, Top, Width, Height);
		public HRESULT IsSubscribed(BSTR URL, out int16 pBool) mut => VT.IsSubscribed(ref this, URL, out pBool);
		public HRESULT NavigateAndFind(BSTR URL, BSTR strQuery, ref VARIANT varTargetFrame) mut => VT.NavigateAndFind(ref this, URL, strQuery, ref varTargetFrame);
		public HRESULT ImportExportFavorites(int16 fImport, BSTR strImpExpPath) mut => VT.ImportExportFavorites(ref this, fImport, strImpExpPath);
		public HRESULT AutoCompleteSaveForm(VARIANT* Form) mut => VT.AutoCompleteSaveForm(ref this, Form);
		public HRESULT AutoScan(BSTR strSearch, BSTR strFailureUrl, VARIANT* pvarTargetFrame) mut => VT.AutoScan(ref this, strSearch, strFailureUrl, pvarTargetFrame);
		public HRESULT AutoCompleteAttach(VARIANT* Reserved) mut => VT.AutoCompleteAttach(ref this, Reserved);
		public HRESULT ShowBrowserUI(BSTR bstrName, ref VARIANT pvarIn, out VARIANT pvarOut) mut => VT.ShowBrowserUI(ref this, bstrName, ref pvarIn, out pvarOut);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self) ResetFirstBootMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self) ResetSafeMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self) RefreshOfflineDesktop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR URL, VARIANT* Title) AddFavorite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR URL) AddChannel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR URL, BSTR Type, VARIANT* Left, VARIANT* Top, VARIANT* Width, VARIANT* Height) AddDesktopComponent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR URL, out int16 pBool) IsSubscribed;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR URL, BSTR strQuery, ref VARIANT varTargetFrame) NavigateAndFind;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, int16 fImport, BSTR strImpExpPath) ImportExportFavorites;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, VARIANT* Form) AutoCompleteSaveForm;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR strSearch, BSTR strFailureUrl, VARIANT* pvarTargetFrame) AutoScan;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, VARIANT* Reserved) AutoCompleteAttach;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper self, BSTR bstrName, ref VARIANT pvarIn, out VARIANT pvarOut) ShowBrowserUI;
		}
	}
	[CRepr]
	public struct IShellUIHelper2 : IShellUIHelper
	{
		public const new Guid IID = .(0xa7fe6eda, 0x1932, 0x4281, 0xb8, 0x81, 0x87, 0xb3, 0x1b, 0x8b, 0xc5, 0x2c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddSearchProvider(BSTR URL) mut => VT.AddSearchProvider(ref this, URL);
		public HRESULT RunOnceShown() mut => VT.RunOnceShown(ref this);
		public HRESULT SkipRunOnce() mut => VT.SkipRunOnce(ref this);
		public HRESULT CustomizeSettings(int16 fSQM, int16 fPhishing, BSTR bstrLocale) mut => VT.CustomizeSettings(ref this, fSQM, fPhishing, bstrLocale);
		public HRESULT SqmEnabled(out int16 pfEnabled) mut => VT.SqmEnabled(ref this, out pfEnabled);
		public HRESULT PhishingEnabled(out int16 pfEnabled) mut => VT.PhishingEnabled(ref this, out pfEnabled);
		public HRESULT BrandImageUri(out BSTR pbstrUri) mut => VT.BrandImageUri(ref this, out pbstrUri);
		public HRESULT SkipTabsWelcome() mut => VT.SkipTabsWelcome(ref this);
		public HRESULT DiagnoseConnection() mut => VT.DiagnoseConnection(ref this);
		public HRESULT CustomizeClearType(int16 fSet) mut => VT.CustomizeClearType(ref this, fSet);
		public HRESULT IsSearchProviderInstalled(BSTR URL, out uint32 pdwResult) mut => VT.IsSearchProviderInstalled(ref this, URL, out pdwResult);
		public HRESULT IsSearchMigrated(out int16 pfMigrated) mut => VT.IsSearchMigrated(ref this, out pfMigrated);
		public HRESULT DefaultSearchProvider(out BSTR pbstrName) mut => VT.DefaultSearchProvider(ref this, out pbstrName);
		public HRESULT RunOnceRequiredSettingsComplete(int16 fComplete) mut => VT.RunOnceRequiredSettingsComplete(ref this, fComplete);
		public HRESULT RunOnceHasShown(out int16 pfShown) mut => VT.RunOnceHasShown(ref this, out pfShown);
		public HRESULT SearchGuideUrl(out BSTR pbstrUrl) mut => VT.SearchGuideUrl(ref this, out pbstrUrl);

		[CRepr]
		public struct VTable : IShellUIHelper.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, BSTR URL) AddSearchProvider;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self) RunOnceShown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self) SkipRunOnce;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, int16 fSQM, int16 fPhishing, BSTR bstrLocale) CustomizeSettings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out int16 pfEnabled) SqmEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out int16 pfEnabled) PhishingEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out BSTR pbstrUri) BrandImageUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self) SkipTabsWelcome;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self) DiagnoseConnection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, int16 fSet) CustomizeClearType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, BSTR URL, out uint32 pdwResult) IsSearchProviderInstalled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out int16 pfMigrated) IsSearchMigrated;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out BSTR pbstrName) DefaultSearchProvider;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, int16 fComplete) RunOnceRequiredSettingsComplete;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out int16 pfShown) RunOnceHasShown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper2 self, out BSTR pbstrUrl) SearchGuideUrl;
		}
	}
	[CRepr]
	public struct IShellUIHelper3 : IShellUIHelper2
	{
		public const new Guid IID = .(0x528df2ec, 0xd419, 0x40bc, 0x9b, 0x6d, 0xdc, 0xdb, 0xf9, 0xc1, 0xb2, 0x5d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddService(BSTR URL) mut => VT.AddService(ref this, URL);
		public HRESULT IsServiceInstalled(BSTR URL, BSTR Verb, out uint32 pdwResult) mut => VT.IsServiceInstalled(ref this, URL, Verb, out pdwResult);
		public HRESULT InPrivateFilteringEnabled(out int16 pfEnabled) mut => VT.InPrivateFilteringEnabled(ref this, out pfEnabled);
		public HRESULT AddToFavoritesBar(BSTR URL, BSTR Title, ref VARIANT Type) mut => VT.AddToFavoritesBar(ref this, URL, Title, ref Type);
		public HRESULT BuildNewTabPage() mut => VT.BuildNewTabPage(ref this);
		public HRESULT SetRecentlyClosedVisible(int16 fVisible) mut => VT.SetRecentlyClosedVisible(ref this, fVisible);
		public HRESULT SetActivitiesVisible(int16 fVisible) mut => VT.SetActivitiesVisible(ref this, fVisible);
		public HRESULT ContentDiscoveryReset() mut => VT.ContentDiscoveryReset(ref this);
		public HRESULT IsSuggestedSitesEnabled(out int16 pfEnabled) mut => VT.IsSuggestedSitesEnabled(ref this, out pfEnabled);
		public HRESULT EnableSuggestedSites(int16 fEnable) mut => VT.EnableSuggestedSites(ref this, fEnable);
		public HRESULT NavigateToSuggestedSites(BSTR bstrRelativeUrl) mut => VT.NavigateToSuggestedSites(ref this, bstrRelativeUrl);
		public HRESULT ShowTabsHelp() mut => VT.ShowTabsHelp(ref this);
		public HRESULT ShowInPrivateHelp() mut => VT.ShowInPrivateHelp(ref this);

		[CRepr]
		public struct VTable : IShellUIHelper2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, BSTR URL) AddService;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, BSTR URL, BSTR Verb, out uint32 pdwResult) IsServiceInstalled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, out int16 pfEnabled) InPrivateFilteringEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, BSTR URL, BSTR Title, ref VARIANT Type) AddToFavoritesBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self) BuildNewTabPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, int16 fVisible) SetRecentlyClosedVisible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, int16 fVisible) SetActivitiesVisible;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self) ContentDiscoveryReset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, out int16 pfEnabled) IsSuggestedSitesEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, int16 fEnable) EnableSuggestedSites;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self, BSTR bstrRelativeUrl) NavigateToSuggestedSites;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self) ShowTabsHelp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper3 self) ShowInPrivateHelp;
		}
	}
	[CRepr]
	public struct IShellUIHelper4 : IShellUIHelper3
	{
		public const new Guid IID = .(0xb36e6a53, 0x8073, 0x499e, 0x82, 0x4c, 0xd7, 0x76, 0x33, 0x0a, 0x33, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT msIsSiteMode(out int16 pfSiteMode) mut => VT.msIsSiteMode(ref this, out pfSiteMode);
		public HRESULT msSiteModeShowThumbBar() mut => VT.msSiteModeShowThumbBar(ref this);
		public HRESULT msSiteModeAddThumbBarButton(BSTR bstrIconURL, BSTR bstrTooltip, out VARIANT pvarButtonID) mut => VT.msSiteModeAddThumbBarButton(ref this, bstrIconURL, bstrTooltip, out pvarButtonID);
		public HRESULT msSiteModeUpdateThumbBarButton(VARIANT ButtonID, int16 fEnabled, int16 fVisible) mut => VT.msSiteModeUpdateThumbBarButton(ref this, ButtonID, fEnabled, fVisible);
		public HRESULT msSiteModeSetIconOverlay(BSTR IconUrl, ref VARIANT pvarDescription) mut => VT.msSiteModeSetIconOverlay(ref this, IconUrl, ref pvarDescription);
		public HRESULT msSiteModeClearIconOverlay() mut => VT.msSiteModeClearIconOverlay(ref this);
		public HRESULT msAddSiteMode() mut => VT.msAddSiteMode(ref this);
		public HRESULT msSiteModeCreateJumpList(BSTR bstrHeader) mut => VT.msSiteModeCreateJumpList(ref this, bstrHeader);
		public HRESULT msSiteModeAddJumpListItem(BSTR bstrName, BSTR bstrActionUri, BSTR bstrIconUri, ref VARIANT pvarWindowType) mut => VT.msSiteModeAddJumpListItem(ref this, bstrName, bstrActionUri, bstrIconUri, ref pvarWindowType);
		public HRESULT msSiteModeClearJumpList() mut => VT.msSiteModeClearJumpList(ref this);
		public HRESULT msSiteModeShowJumpList() mut => VT.msSiteModeShowJumpList(ref this);
		public HRESULT msSiteModeAddButtonStyle(VARIANT uiButtonID, BSTR bstrIconUrl, BSTR bstrTooltip, out VARIANT pvarStyleID) mut => VT.msSiteModeAddButtonStyle(ref this, uiButtonID, bstrIconUrl, bstrTooltip, out pvarStyleID);
		public HRESULT msSiteModeShowButtonStyle(VARIANT uiButtonID, VARIANT uiStyleID) mut => VT.msSiteModeShowButtonStyle(ref this, uiButtonID, uiStyleID);
		public HRESULT msSiteModeActivate() mut => VT.msSiteModeActivate(ref this);
		public HRESULT msIsSiteModeFirstRun(int16 fPreserveState, out VARIANT puiFirstRun) mut => VT.msIsSiteModeFirstRun(ref this, fPreserveState, out puiFirstRun);
		public HRESULT msAddTrackingProtectionList(BSTR URL, BSTR bstrFilterName) mut => VT.msAddTrackingProtectionList(ref this, URL, bstrFilterName);
		public HRESULT msTrackingProtectionEnabled(out int16 pfEnabled) mut => VT.msTrackingProtectionEnabled(ref this, out pfEnabled);
		public HRESULT msActiveXFilteringEnabled(out int16 pfEnabled) mut => VT.msActiveXFilteringEnabled(ref this, out pfEnabled);

		[CRepr]
		public struct VTable : IShellUIHelper3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, out int16 pfSiteMode) msIsSiteMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msSiteModeShowThumbBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, BSTR bstrIconURL, BSTR bstrTooltip, out VARIANT pvarButtonID) msSiteModeAddThumbBarButton;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, VARIANT ButtonID, int16 fEnabled, int16 fVisible) msSiteModeUpdateThumbBarButton;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, BSTR IconUrl, ref VARIANT pvarDescription) msSiteModeSetIconOverlay;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msSiteModeClearIconOverlay;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msAddSiteMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, BSTR bstrHeader) msSiteModeCreateJumpList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, BSTR bstrName, BSTR bstrActionUri, BSTR bstrIconUri, ref VARIANT pvarWindowType) msSiteModeAddJumpListItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msSiteModeClearJumpList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msSiteModeShowJumpList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, VARIANT uiButtonID, BSTR bstrIconUrl, BSTR bstrTooltip, out VARIANT pvarStyleID) msSiteModeAddButtonStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, VARIANT uiButtonID, VARIANT uiStyleID) msSiteModeShowButtonStyle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self) msSiteModeActivate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, int16 fPreserveState, out VARIANT puiFirstRun) msIsSiteModeFirstRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, BSTR URL, BSTR bstrFilterName) msAddTrackingProtectionList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, out int16 pfEnabled) msTrackingProtectionEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper4 self, out int16 pfEnabled) msActiveXFilteringEnabled;
		}
	}
	[CRepr]
	public struct IShellUIHelper5 : IShellUIHelper4
	{
		public const new Guid IID = .(0xa2a08b09, 0x103d, 0x4d3f, 0xb9, 0x1c, 0xea, 0x45, 0x5c, 0xa8, 0x2e, 0xfa);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT msProvisionNetworks(BSTR bstrProvisioningXml, out VARIANT puiResult) mut => VT.msProvisionNetworks(ref this, bstrProvisioningXml, out puiResult);
		public HRESULT msReportSafeUrl() mut => VT.msReportSafeUrl(ref this);
		public HRESULT msSiteModeRefreshBadge() mut => VT.msSiteModeRefreshBadge(ref this);
		public HRESULT msSiteModeClearBadge() mut => VT.msSiteModeClearBadge(ref this);
		public HRESULT msDiagnoseConnectionUILess() mut => VT.msDiagnoseConnectionUILess(ref this);
		public HRESULT msLaunchNetworkClientHelp() mut => VT.msLaunchNetworkClientHelp(ref this);
		public HRESULT msChangeDefaultBrowser(int16 fChange) mut => VT.msChangeDefaultBrowser(ref this, fChange);

		[CRepr]
		public struct VTable : IShellUIHelper4.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self, BSTR bstrProvisioningXml, out VARIANT puiResult) msProvisionNetworks;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self) msReportSafeUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self) msSiteModeRefreshBadge;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self) msSiteModeClearBadge;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self) msDiagnoseConnectionUILess;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self) msLaunchNetworkClientHelp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper5 self, int16 fChange) msChangeDefaultBrowser;
		}
	}
	[CRepr]
	public struct IShellUIHelper6 : IShellUIHelper5
	{
		public const new Guid IID = .(0x987a573e, 0x46ee, 0x4e89, 0x96, 0xab, 0xdd, 0xf7, 0xf8, 0xfd, 0xc9, 0x8c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT msStopPeriodicTileUpdate() mut => VT.msStopPeriodicTileUpdate(ref this);
		public HRESULT msStartPeriodicTileUpdate(VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) mut => VT.msStartPeriodicTileUpdate(ref this, pollingUris, startTime, uiUpdateRecurrence);
		public HRESULT msStartPeriodicTileUpdateBatch(VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) mut => VT.msStartPeriodicTileUpdateBatch(ref this, pollingUris, startTime, uiUpdateRecurrence);
		public HRESULT msClearTile() mut => VT.msClearTile(ref this);
		public HRESULT msEnableTileNotificationQueue(int16 fChange) mut => VT.msEnableTileNotificationQueue(ref this, fChange);
		public HRESULT msPinnedSiteState(out VARIANT pvarSiteState) mut => VT.msPinnedSiteState(ref this, out pvarSiteState);
		public HRESULT msEnableTileNotificationQueueForSquare150x150(int16 fChange) mut => VT.msEnableTileNotificationQueueForSquare150x150(ref this, fChange);
		public HRESULT msEnableTileNotificationQueueForWide310x150(int16 fChange) mut => VT.msEnableTileNotificationQueueForWide310x150(ref this, fChange);
		public HRESULT msEnableTileNotificationQueueForSquare310x310(int16 fChange) mut => VT.msEnableTileNotificationQueueForSquare310x310(ref this, fChange);
		public HRESULT msScheduledTileNotification(BSTR bstrNotificationXml, BSTR bstrNotificationId, BSTR bstrNotificationTag, VARIANT startTime, VARIANT expirationTime) mut => VT.msScheduledTileNotification(ref this, bstrNotificationXml, bstrNotificationId, bstrNotificationTag, startTime, expirationTime);
		public HRESULT msRemoveScheduledTileNotification(BSTR bstrNotificationId) mut => VT.msRemoveScheduledTileNotification(ref this, bstrNotificationId);
		public HRESULT msStartPeriodicBadgeUpdate(BSTR pollingUri, VARIANT startTime, VARIANT uiUpdateRecurrence) mut => VT.msStartPeriodicBadgeUpdate(ref this, pollingUri, startTime, uiUpdateRecurrence);
		public HRESULT msStopPeriodicBadgeUpdate() mut => VT.msStopPeriodicBadgeUpdate(ref this);
		public HRESULT msLaunchInternetOptions() mut => VT.msLaunchInternetOptions(ref this);

		[CRepr]
		public struct VTable : IShellUIHelper5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self) msStopPeriodicTileUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicTileUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, VARIANT pollingUris, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicTileUpdateBatch;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self) msClearTile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, int16 fChange) msEnableTileNotificationQueue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, out VARIANT pvarSiteState) msPinnedSiteState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, int16 fChange) msEnableTileNotificationQueueForSquare150x150;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, int16 fChange) msEnableTileNotificationQueueForWide310x150;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, int16 fChange) msEnableTileNotificationQueueForSquare310x310;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, BSTR bstrNotificationXml, BSTR bstrNotificationId, BSTR bstrNotificationTag, VARIANT startTime, VARIANT expirationTime) msScheduledTileNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, BSTR bstrNotificationId) msRemoveScheduledTileNotification;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self, BSTR pollingUri, VARIANT startTime, VARIANT uiUpdateRecurrence) msStartPeriodicBadgeUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self) msStopPeriodicBadgeUpdate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper6 self) msLaunchInternetOptions;
		}
	}
	[CRepr]
	public struct IShellUIHelper7 : IShellUIHelper6
	{
		public const new Guid IID = .(0x60e567c8, 0x9573, 0x4ab2, 0xa2, 0x64, 0x63, 0x7c, 0x6c, 0x16, 0x1c, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetExperimentalFlag(BSTR bstrFlagString, int16 vfFlag) mut => VT.SetExperimentalFlag(ref this, bstrFlagString, vfFlag);
		public HRESULT GetExperimentalFlag(BSTR bstrFlagString, out int16 vfFlag) mut => VT.GetExperimentalFlag(ref this, bstrFlagString, out vfFlag);
		public HRESULT SetExperimentalValue(BSTR bstrValueString, uint32 dwValue) mut => VT.SetExperimentalValue(ref this, bstrValueString, dwValue);
		public HRESULT GetExperimentalValue(BSTR bstrValueString, out uint32 pdwValue) mut => VT.GetExperimentalValue(ref this, bstrValueString, out pdwValue);
		public HRESULT ResetAllExperimentalFlagsAndValues() mut => VT.ResetAllExperimentalFlagsAndValues(ref this);
		public HRESULT GetNeedIEAutoLaunchFlag(BSTR bstrUrl, out int16 flag) mut => VT.GetNeedIEAutoLaunchFlag(ref this, bstrUrl, out flag);
		public HRESULT SetNeedIEAutoLaunchFlag(BSTR bstrUrl, int16 flag) mut => VT.SetNeedIEAutoLaunchFlag(ref this, bstrUrl, flag);
		public HRESULT HasNeedIEAutoLaunchFlag(BSTR bstrUrl, out int16 exists) mut => VT.HasNeedIEAutoLaunchFlag(ref this, bstrUrl, out exists);
		public HRESULT LaunchIE(BSTR bstrUrl, int16 automated) mut => VT.LaunchIE(ref this, bstrUrl, automated);

		[CRepr]
		public struct VTable : IShellUIHelper6.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrFlagString, int16 vfFlag) SetExperimentalFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrFlagString, out int16 vfFlag) GetExperimentalFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrValueString, uint32 dwValue) SetExperimentalValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrValueString, out uint32 pdwValue) GetExperimentalValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self) ResetAllExperimentalFlagsAndValues;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrUrl, out int16 flag) GetNeedIEAutoLaunchFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrUrl, int16 flag) SetNeedIEAutoLaunchFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrUrl, out int16 exists) HasNeedIEAutoLaunchFlag;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper7 self, BSTR bstrUrl, int16 automated) LaunchIE;
		}
	}
	[CRepr]
	public struct IShellUIHelper8 : IShellUIHelper7
	{
		public const new Guid IID = .(0x66debcf2, 0x05b0, 0x4f07, 0xb4, 0x9b, 0xb9, 0x62, 0x41, 0xa6, 0x5d, 0xb2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCVListData(out BSTR pbstrResult) mut => VT.GetCVListData(ref this, out pbstrResult);
		public HRESULT GetCVListLocalData(out BSTR pbstrResult) mut => VT.GetCVListLocalData(ref this, out pbstrResult);
		public HRESULT GetEMIEListData(out BSTR pbstrResult) mut => VT.GetEMIEListData(ref this, out pbstrResult);
		public HRESULT GetEMIEListLocalData(out BSTR pbstrResult) mut => VT.GetEMIEListLocalData(ref this, out pbstrResult);
		public HRESULT OpenFavoritesPane() mut => VT.OpenFavoritesPane(ref this);
		public HRESULT OpenFavoritesSettings() mut => VT.OpenFavoritesSettings(ref this);
		public HRESULT LaunchInHVSI(BSTR bstrUrl) mut => VT.LaunchInHVSI(ref this, bstrUrl);

		[CRepr]
		public struct VTable : IShellUIHelper7.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self, out BSTR pbstrResult) GetCVListData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self, out BSTR pbstrResult) GetCVListLocalData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self, out BSTR pbstrResult) GetEMIEListData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self, out BSTR pbstrResult) GetEMIEListLocalData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self) OpenFavoritesPane;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self) OpenFavoritesSettings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper8 self, BSTR bstrUrl) LaunchInHVSI;
		}
	}
	[CRepr]
	public struct IShellUIHelper9 : IShellUIHelper8
	{
		public const new Guid IID = .(0x6cdf73b0, 0x7f2f, 0x451f, 0xbc, 0x0f, 0x63, 0xe0, 0xf3, 0x28, 0x4e, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetOSSku(out uint32 pdwResult) mut => VT.GetOSSku(ref this, out pdwResult);

		[CRepr]
		public struct VTable : IShellUIHelper8.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellUIHelper9 self, out uint32 pdwResult) GetOSSku;
		}
	}
	[CRepr]
	public struct DShellNameSpaceEvents : IDispatch
	{
		public const new Guid IID = .(0x55136806, 0xb2de, 0x11d1, 0xb9, 0xf2, 0x00, 0xa0, 0xc9, 0x8b, 0xc5, 0x47);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct IShellFavoritesNameSpace : IDispatch
	{
		public const new Guid IID = .(0x55136804, 0xb2de, 0x11d1, 0xb9, 0xf2, 0x00, 0xa0, 0xc9, 0x8b, 0xc5, 0x47);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MoveSelectionUp() mut => VT.MoveSelectionUp(ref this);
		public HRESULT MoveSelectionDown() mut => VT.MoveSelectionDown(ref this);
		public HRESULT ResetSort() mut => VT.ResetSort(ref this);
		public HRESULT NewFolder() mut => VT.NewFolder(ref this);
		public HRESULT Synchronize() mut => VT.Synchronize(ref this);
		public HRESULT Import() mut => VT.Import(ref this);
		public HRESULT Export() mut => VT.Export(ref this);
		public HRESULT InvokeContextMenuCommand(BSTR strCommand) mut => VT.InvokeContextMenuCommand(ref this, strCommand);
		public HRESULT MoveSelectionTo() mut => VT.MoveSelectionTo(ref this);
		public HRESULT get_SubscriptionsEnabled(out int16 pBool) mut => VT.get_SubscriptionsEnabled(ref this, out pBool);
		public HRESULT CreateSubscriptionForSelection(out int16 pBool) mut => VT.CreateSubscriptionForSelection(ref this, out pBool);
		public HRESULT DeleteSubscriptionForSelection(out int16 pBool) mut => VT.DeleteSubscriptionForSelection(ref this, out pBool);
		public HRESULT SetRoot(BSTR bstrFullPath) mut => VT.SetRoot(ref this, bstrFullPath);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) MoveSelectionUp;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) MoveSelectionDown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) ResetSort;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) NewFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) Synchronize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) Import;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) Export;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self, BSTR strCommand) InvokeContextMenuCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self) MoveSelectionTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self, out int16 pBool) get_SubscriptionsEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self, out int16 pBool) CreateSubscriptionForSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self, out int16 pBool) DeleteSubscriptionForSelection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFavoritesNameSpace self, BSTR bstrFullPath) SetRoot;
		}
	}
	[CRepr]
	public struct IShellNameSpace : IShellFavoritesNameSpace
	{
		public const new Guid IID = .(0xe572d3c9, 0x37be, 0x4ae2, 0x82, 0x5d, 0xd5, 0x21, 0x76, 0x3e, 0x31, 0x08);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_EnumOptions(out int32 pgrfEnumFlags) mut => VT.get_EnumOptions(ref this, out pgrfEnumFlags);
		public HRESULT put_EnumOptions(int32 lVal) mut => VT.put_EnumOptions(ref this, lVal);
		public HRESULT get_SelectedItem(out IDispatch* pItem) mut => VT.get_SelectedItem(ref this, out pItem);
		public HRESULT put_SelectedItem(ref IDispatch pItem) mut => VT.put_SelectedItem(ref this, ref pItem);
		public HRESULT get_Root(out VARIANT pvar) mut => VT.get_Root(ref this, out pvar);
		public HRESULT put_Root(VARIANT @var) mut => VT.put_Root(ref this, @var);
		public HRESULT get_Depth(out int32 piDepth) mut => VT.get_Depth(ref this, out piDepth);
		public HRESULT put_Depth(int32 iDepth) mut => VT.put_Depth(ref this, iDepth);
		public HRESULT get_Mode(out uint32 puMode) mut => VT.get_Mode(ref this, out puMode);
		public HRESULT put_Mode(uint32 uMode) mut => VT.put_Mode(ref this, uMode);
		public HRESULT get_Flags(out uint32 pdwFlags) mut => VT.get_Flags(ref this, out pdwFlags);
		public HRESULT put_Flags(uint32 dwFlags) mut => VT.put_Flags(ref this, dwFlags);
		public HRESULT put_TVFlags(uint32 dwFlags) mut => VT.put_TVFlags(ref this, dwFlags);
		public HRESULT get_TVFlags(out uint32 dwFlags) mut => VT.get_TVFlags(ref this, out dwFlags);
		public HRESULT get_Columns(out BSTR bstrColumns) mut => VT.get_Columns(ref this, out bstrColumns);
		public HRESULT put_Columns(BSTR bstrColumns) mut => VT.put_Columns(ref this, bstrColumns);
		public HRESULT get_CountViewTypes(out int32 piTypes) mut => VT.get_CountViewTypes(ref this, out piTypes);
		public HRESULT SetViewType(int32 iType) mut => VT.SetViewType(ref this, iType);
		public HRESULT SelectedItems(out IDispatch* ppid) mut => VT.SelectedItems(ref this, out ppid);
		public HRESULT Expand(VARIANT @var, int32 iDepth) mut => VT.Expand(ref this, @var, iDepth);
		public HRESULT UnselectAll() mut => VT.UnselectAll(ref this);

		[CRepr]
		public struct VTable : IShellFavoritesNameSpace.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out int32 pgrfEnumFlags) get_EnumOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, int32 lVal) put_EnumOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out IDispatch* pItem) get_SelectedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, ref IDispatch pItem) put_SelectedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out VARIANT pvar) get_Root;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, VARIANT @var) put_Root;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out int32 piDepth) get_Depth;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, int32 iDepth) put_Depth;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out uint32 puMode) get_Mode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, uint32 uMode) put_Mode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out uint32 pdwFlags) get_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, uint32 dwFlags) put_Flags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, uint32 dwFlags) put_TVFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out uint32 dwFlags) get_TVFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out BSTR bstrColumns) get_Columns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, BSTR bstrColumns) put_Columns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out int32 piTypes) get_CountViewTypes;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, int32 iType) SetViewType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, out IDispatch* ppid) SelectedItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self, VARIANT @var, int32 iDepth) Expand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellNameSpace self) UnselectAll;
		}
	}
	[CRepr]
	public struct IScriptErrorList : IDispatch
	{
		public const new Guid IID = .(0xf3470f24, 0x15fd, 0x11d2, 0xbb, 0x2e, 0x00, 0x80, 0x5f, 0xf7, 0xef, 0xca);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT advanceError() mut => VT.advanceError(ref this);
		public HRESULT retreatError() mut => VT.retreatError(ref this);
		public HRESULT canAdvanceError(out BOOL pfCanAdvance) mut => VT.canAdvanceError(ref this, out pfCanAdvance);
		public HRESULT canRetreatError(out BOOL pfCanRetreat) mut => VT.canRetreatError(ref this, out pfCanRetreat);
		public HRESULT getErrorLine(out int32 plLine) mut => VT.getErrorLine(ref this, out plLine);
		public HRESULT getErrorChar(out int32 plChar) mut => VT.getErrorChar(ref this, out plChar);
		public HRESULT getErrorCode(out int32 plCode) mut => VT.getErrorCode(ref this, out plCode);
		public HRESULT getErrorMsg(out BSTR pstr) mut => VT.getErrorMsg(ref this, out pstr);
		public HRESULT getErrorUrl(out BSTR pstr) mut => VT.getErrorUrl(ref this, out pstr);
		public HRESULT getAlwaysShowLockState(out BOOL pfAlwaysShowLocked) mut => VT.getAlwaysShowLockState(ref this, out pfAlwaysShowLocked);
		public HRESULT getDetailsPaneOpen(out BOOL pfDetailsPaneOpen) mut => VT.getDetailsPaneOpen(ref this, out pfDetailsPaneOpen);
		public HRESULT setDetailsPaneOpen(BOOL fDetailsPaneOpen) mut => VT.setDetailsPaneOpen(ref this, fDetailsPaneOpen);
		public HRESULT getPerErrorDisplay(out BOOL pfPerErrorDisplay) mut => VT.getPerErrorDisplay(ref this, out pfPerErrorDisplay);
		public HRESULT setPerErrorDisplay(BOOL fPerErrorDisplay) mut => VT.setPerErrorDisplay(ref this, fPerErrorDisplay);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self) advanceError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self) retreatError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BOOL pfCanAdvance) canAdvanceError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BOOL pfCanRetreat) canRetreatError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out int32 plLine) getErrorLine;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out int32 plChar) getErrorChar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out int32 plCode) getErrorCode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BSTR pstr) getErrorMsg;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BSTR pstr) getErrorUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BOOL pfAlwaysShowLocked) getAlwaysShowLockState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BOOL pfDetailsPaneOpen) getDetailsPaneOpen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, BOOL fDetailsPaneOpen) setDetailsPaneOpen;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, out BOOL pfPerErrorDisplay) getPerErrorDisplay;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IScriptErrorList self, BOOL fPerErrorDisplay) setPerErrorDisplay;
		}
	}
	[CRepr]
	public struct IFolderViewOC : IDispatch
	{
		public const new Guid IID = .(0x9ba05970, 0xf6a8, 0x11cf, 0xa4, 0x42, 0x00, 0xa0, 0xc9, 0x0a, 0x8f, 0x39);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFolderView(ref IDispatch pdisp) mut => VT.SetFolderView(ref this, ref pdisp);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFolderViewOC self, ref IDispatch pdisp) SetFolderView;
		}
	}
	[CRepr]
	public struct DShellFolderViewEvents : IDispatch
	{
		public const new Guid IID = .(0x62112aa2, 0xebe4, 0x11cf, 0xa5, 0xfb, 0x00, 0x20, 0xaf, 0xe7, 0x29, 0x2d);
		
		public new VTable* VT { get => (.)vt; }
		
		[CRepr]
		public struct VTable : IDispatch.VTable {}
	}
	[CRepr]
	public struct DFConstraint : IDispatch
	{
		public const new Guid IID = .(0x4a3df050, 0x23bd, 0x11d2, 0x93, 0x9f, 0x00, 0xa0, 0xc9, 0x1e, 0xed, 0xba);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Name(out BSTR pbs) mut => VT.get_Name(ref this, out pbs);
		public HRESULT get_Value(out VARIANT pv) mut => VT.get_Value(ref this, out pv);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref DFConstraint self, out BSTR pbs) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref DFConstraint self, out VARIANT pv) get_Value;
		}
	}
	[CRepr]
	public struct FolderItem : IDispatch
	{
		public const new Guid IID = .(0xfac32c80, 0xcbe4, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT get_Name(out BSTR pbs) mut => VT.get_Name(ref this, out pbs);
		public HRESULT put_Name(BSTR bs) mut => VT.put_Name(ref this, bs);
		public HRESULT get_Path(out BSTR pbs) mut => VT.get_Path(ref this, out pbs);
		public HRESULT get_GetLink(out IDispatch* ppid) mut => VT.get_GetLink(ref this, out ppid);
		public HRESULT get_GetFolder(out IDispatch* ppid) mut => VT.get_GetFolder(ref this, out ppid);
		public HRESULT get_IsLink(out int16 pb) mut => VT.get_IsLink(ref this, out pb);
		public HRESULT get_IsFolder(out int16 pb) mut => VT.get_IsFolder(ref this, out pb);
		public HRESULT get_IsFileSystem(out int16 pb) mut => VT.get_IsFileSystem(ref this, out pb);
		public HRESULT get_IsBrowsable(out int16 pb) mut => VT.get_IsBrowsable(ref this, out pb);
		public HRESULT get_ModifyDate(out double pdt) mut => VT.get_ModifyDate(ref this, out pdt);
		public HRESULT put_ModifyDate(double dt) mut => VT.put_ModifyDate(ref this, dt);
		public HRESULT get_Size(out int32 pul) mut => VT.get_Size(ref this, out pul);
		public HRESULT get_Type(out BSTR pbs) mut => VT.get_Type(ref this, out pbs);
		public HRESULT Verbs(out FolderItemVerbs* ppfic) mut => VT.Verbs(ref this, out ppfic);
		public HRESULT InvokeVerb(VARIANT vVerb) mut => VT.InvokeVerb(ref this, vVerb);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out BSTR pbs) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, BSTR bs) put_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out BSTR pbs) get_Path;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out IDispatch* ppid) get_GetLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out IDispatch* ppid) get_GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out int16 pb) get_IsLink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out int16 pb) get_IsFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out int16 pb) get_IsFileSystem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out int16 pb) get_IsBrowsable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out double pdt) get_ModifyDate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, double dt) put_ModifyDate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out int32 pul) get_Size;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out BSTR pbs) get_Type;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, out FolderItemVerbs* ppfic) Verbs;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem self, VARIANT vVerb) InvokeVerb;
		}
	}
	[CRepr]
	public struct FolderItems : IDispatch
	{
		public const new Guid IID = .(0x744129e0, 0xcbe5, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT Item(VARIANT index, out FolderItem* ppid) mut => VT.Item(ref this, index, out ppid);
		public HRESULT _NewEnum(out IUnknown* ppunk) mut => VT._NewEnum(ref this, out ppunk);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems self, VARIANT index, out FolderItem* ppid) Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems self, out IUnknown* ppunk) _NewEnum;
		}
	}
	[CRepr]
	public struct FolderItemVerb : IDispatch
	{
		public const new Guid IID = .(0x08ec3e00, 0x50b0, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT get_Name(out BSTR pbs) mut => VT.get_Name(ref this, out pbs);
		public HRESULT DoIt() mut => VT.DoIt(ref this);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerb self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerb self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerb self, out BSTR pbs) get_Name;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerb self) DoIt;
		}
	}
	[CRepr]
	public struct FolderItemVerbs : IDispatch
	{
		public const new Guid IID = .(0x1f8352c0, 0x50b0, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Count(out int32 plCount) mut => VT.get_Count(ref this, out plCount);
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT Item(VARIANT index, out FolderItemVerb* ppid) mut => VT.Item(ref this, index, out ppid);
		public HRESULT _NewEnum(out IUnknown* ppunk) mut => VT._NewEnum(ref this, out ppunk);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerbs self, out int32 plCount) get_Count;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerbs self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerbs self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerbs self, VARIANT index, out FolderItemVerb* ppid) Item;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItemVerbs self, out IUnknown* ppunk) _NewEnum;
		}
	}
	[CRepr]
	public struct Folder : IDispatch
	{
		public const new Guid IID = .(0xbbcbde60, 0xc3ff, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Title(out BSTR pbs) mut => VT.get_Title(ref this, out pbs);
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT get_ParentFolder(out Folder* ppsf) mut => VT.get_ParentFolder(ref this, out ppsf);
		public HRESULT Items(out FolderItems* ppid) mut => VT.Items(ref this, out ppid);
		public HRESULT ParseName(BSTR bName, out FolderItem* ppid) mut => VT.ParseName(ref this, bName, out ppid);
		public HRESULT NewFolder(BSTR bName, VARIANT vOptions) mut => VT.NewFolder(ref this, bName, vOptions);
		public HRESULT MoveHere(VARIANT vItem, VARIANT vOptions) mut => VT.MoveHere(ref this, vItem, vOptions);
		public HRESULT CopyHere(VARIANT vItem, VARIANT vOptions) mut => VT.CopyHere(ref this, vItem, vOptions);
		public HRESULT GetDetailsOf(VARIANT vItem, int32 iColumn, out BSTR pbs) mut => VT.GetDetailsOf(ref this, vItem, iColumn, out pbs);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, out BSTR pbs) get_Title;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, out Folder* ppsf) get_ParentFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, out FolderItems* ppid) Items;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, BSTR bName, out FolderItem* ppid) ParseName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, BSTR bName, VARIANT vOptions) NewFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, VARIANT vItem, VARIANT vOptions) MoveHere;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, VARIANT vItem, VARIANT vOptions) CopyHere;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder self, VARIANT vItem, int32 iColumn, out BSTR pbs) GetDetailsOf;
		}
	}
	[CRepr]
	public struct Folder2 : Folder
	{
		public const new Guid IID = .(0xf0d2d8ef, 0x3890, 0x11d2, 0xbf, 0x8b, 0x00, 0xc0, 0x4f, 0xb9, 0x36, 0x61);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Self(out FolderItem* ppfi) mut => VT.get_Self(ref this, out ppfi);
		public HRESULT get_OfflineStatus(out int32 pul) mut => VT.get_OfflineStatus(ref this, out pul);
		public HRESULT Synchronize() mut => VT.Synchronize(ref this);
		public HRESULT get_HaveToShowWebViewBarricade(out int16 pbHaveToShowWebViewBarricade) mut => VT.get_HaveToShowWebViewBarricade(ref this, out pbHaveToShowWebViewBarricade);
		public HRESULT DismissedWebViewBarricade() mut => VT.DismissedWebViewBarricade(ref this);

		[CRepr]
		public struct VTable : Folder.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder2 self, out FolderItem* ppfi) get_Self;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder2 self, out int32 pul) get_OfflineStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder2 self) Synchronize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder2 self, out int16 pbHaveToShowWebViewBarricade) get_HaveToShowWebViewBarricade;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder2 self) DismissedWebViewBarricade;
		}
	}
	[CRepr]
	public struct Folder3 : Folder2
	{
		public const new Guid IID = .(0xa7ae5f64, 0xc4d7, 0x4d7f, 0x93, 0x07, 0x4d, 0x24, 0xee, 0x54, 0xb8, 0x41);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_ShowWebViewBarricade(out int16 pbShowWebViewBarricade) mut => VT.get_ShowWebViewBarricade(ref this, out pbShowWebViewBarricade);
		public HRESULT put_ShowWebViewBarricade(int16 bShowWebViewBarricade) mut => VT.put_ShowWebViewBarricade(ref this, bShowWebViewBarricade);

		[CRepr]
		public struct VTable : Folder2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder3 self, out int16 pbShowWebViewBarricade) get_ShowWebViewBarricade;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref Folder3 self, int16 bShowWebViewBarricade) put_ShowWebViewBarricade;
		}
	}
	[CRepr]
	public struct FolderItem2 : FolderItem
	{
		public const new Guid IID = .(0xedc817aa, 0x92b8, 0x11d1, 0xb0, 0x75, 0x00, 0xc0, 0x4f, 0xc3, 0x3a, 0xa5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InvokeVerbEx(VARIANT vVerb, VARIANT vArgs) mut => VT.InvokeVerbEx(ref this, vVerb, vArgs);
		public HRESULT ExtendedProperty(BSTR bstrPropName, out VARIANT pvRet) mut => VT.ExtendedProperty(ref this, bstrPropName, out pvRet);

		[CRepr]
		public struct VTable : FolderItem.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem2 self, VARIANT vVerb, VARIANT vArgs) InvokeVerbEx;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItem2 self, BSTR bstrPropName, out VARIANT pvRet) ExtendedProperty;
		}
	}
	[CRepr]
	public struct FolderItems2 : FolderItems
	{
		public const new Guid IID = .(0xc94f0ad0, 0xf363, 0x11d2, 0xa3, 0x27, 0x00, 0xc0, 0x4f, 0x8e, 0xec, 0x7f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InvokeVerbEx(VARIANT vVerb, VARIANT vArgs) mut => VT.InvokeVerbEx(ref this, vVerb, vArgs);

		[CRepr]
		public struct VTable : FolderItems.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems2 self, VARIANT vVerb, VARIANT vArgs) InvokeVerbEx;
		}
	}
	[CRepr]
	public struct FolderItems3 : FolderItems2
	{
		public const new Guid IID = .(0xeaa7c309, 0xbbec, 0x49d5, 0x82, 0x1d, 0x64, 0xd9, 0x66, 0xcb, 0x66, 0x7f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Filter(int32 grfFlags, BSTR bstrFileSpec) mut => VT.Filter(ref this, grfFlags, bstrFileSpec);
		public HRESULT get_Verbs(out FolderItemVerbs* ppfic) mut => VT.get_Verbs(ref this, out ppfic);

		[CRepr]
		public struct VTable : FolderItems2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems3 self, int32 grfFlags, BSTR bstrFileSpec) Filter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref FolderItems3 self, out FolderItemVerbs* ppfic) get_Verbs;
		}
	}
	[CRepr]
	public struct IShellLinkDual : IDispatch
	{
		public const new Guid IID = .(0x88a05c00, 0xf000, 0x11ce, 0x83, 0x50, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Path(out BSTR pbs) mut => VT.get_Path(ref this, out pbs);
		public HRESULT put_Path(BSTR bs) mut => VT.put_Path(ref this, bs);
		public HRESULT get_Description(out BSTR pbs) mut => VT.get_Description(ref this, out pbs);
		public HRESULT put_Description(BSTR bs) mut => VT.put_Description(ref this, bs);
		public HRESULT get_WorkingDirectory(out BSTR pbs) mut => VT.get_WorkingDirectory(ref this, out pbs);
		public HRESULT put_WorkingDirectory(BSTR bs) mut => VT.put_WorkingDirectory(ref this, bs);
		public HRESULT get_Arguments(out BSTR pbs) mut => VT.get_Arguments(ref this, out pbs);
		public HRESULT put_Arguments(BSTR bs) mut => VT.put_Arguments(ref this, bs);
		public HRESULT get_Hotkey(out int32 piHK) mut => VT.get_Hotkey(ref this, out piHK);
		public HRESULT put_Hotkey(int32 iHK) mut => VT.put_Hotkey(ref this, iHK);
		public HRESULT get_ShowCommand(out int32 piShowCommand) mut => VT.get_ShowCommand(ref this, out piShowCommand);
		public HRESULT put_ShowCommand(int32 iShowCommand) mut => VT.put_ShowCommand(ref this, iShowCommand);
		public HRESULT Resolve(int32 fFlags) mut => VT.Resolve(ref this, fFlags);
		public HRESULT GetIconLocation(out BSTR pbs, out int32 piIcon) mut => VT.GetIconLocation(ref this, out pbs, out piIcon);
		public HRESULT SetIconLocation(BSTR bs, int32 iIcon) mut => VT.SetIconLocation(ref this, bs, iIcon);
		public HRESULT Save(VARIANT vWhere) mut => VT.Save(ref this, vWhere);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out BSTR pbs) get_Path;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, BSTR bs) put_Path;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out BSTR pbs) get_Description;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, BSTR bs) put_Description;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out BSTR pbs) get_WorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, BSTR bs) put_WorkingDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out BSTR pbs) get_Arguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, BSTR bs) put_Arguments;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out int32 piHK) get_Hotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, int32 iHK) put_Hotkey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out int32 piShowCommand) get_ShowCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, int32 iShowCommand) put_ShowCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, int32 fFlags) Resolve;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, out BSTR pbs, out int32 piIcon) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, BSTR bs, int32 iIcon) SetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual self, VARIANT vWhere) Save;
		}
	}
	[CRepr]
	public struct IShellLinkDual2 : IShellLinkDual
	{
		public const new Guid IID = .(0x317ee249, 0xf12e, 0x11d2, 0xb1, 0xe4, 0x00, 0xc0, 0x4f, 0x8e, 0xeb, 0x3e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Target(out FolderItem* ppfi) mut => VT.get_Target(ref this, out ppfi);

		[CRepr]
		public struct VTable : IShellLinkDual.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellLinkDual2 self, out FolderItem* ppfi) get_Target;
		}
	}
	[CRepr]
	public struct IShellFolderViewDual : IDispatch
	{
		public const new Guid IID = .(0xe7a1af80, 0x4d96, 0x11cf, 0x96, 0x0c, 0x00, 0x80, 0xc7, 0xf4, 0xee, 0x85);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT get_Folder(out Folder* ppid) mut => VT.get_Folder(ref this, out ppid);
		public HRESULT SelectedItems(out FolderItems* ppid) mut => VT.SelectedItems(ref this, out ppid);
		public HRESULT get_FocusedItem(out FolderItem* ppid) mut => VT.get_FocusedItem(ref this, out ppid);
		public HRESULT SelectItem(ref VARIANT pvfi, int32 dwFlags) mut => VT.SelectItem(ref this, ref pvfi, dwFlags);
		public HRESULT PopupItemMenu(ref FolderItem pfi, VARIANT vx, VARIANT vy, out BSTR pbs) mut => VT.PopupItemMenu(ref this, ref pfi, vx, vy, out pbs);
		public HRESULT get_Script(out IDispatch* ppDisp) mut => VT.get_Script(ref this, out ppDisp);
		public HRESULT get_ViewOptions(out int32 plViewOptions) mut => VT.get_ViewOptions(ref this, out plViewOptions);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out Folder* ppid) get_Folder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out FolderItems* ppid) SelectedItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out FolderItem* ppid) get_FocusedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, ref VARIANT pvfi, int32 dwFlags) SelectItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, ref FolderItem pfi, VARIANT vx, VARIANT vy, out BSTR pbs) PopupItemMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out IDispatch* ppDisp) get_Script;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual self, out int32 plViewOptions) get_ViewOptions;
		}
	}
	[CRepr]
	public struct IShellFolderViewDual2 : IShellFolderViewDual
	{
		public const new Guid IID = .(0x31c147b6, 0x0ade, 0x4a3c, 0xb5, 0x14, 0xdd, 0xf9, 0x32, 0xef, 0x6d, 0x17);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_CurrentViewMode(out uint32 pViewMode) mut => VT.get_CurrentViewMode(ref this, out pViewMode);
		public HRESULT put_CurrentViewMode(uint32 ViewMode) mut => VT.put_CurrentViewMode(ref this, ViewMode);
		public HRESULT SelectItemRelative(int32 iRelative) mut => VT.SelectItemRelative(ref this, iRelative);

		[CRepr]
		public struct VTable : IShellFolderViewDual.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual2 self, out uint32 pViewMode) get_CurrentViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual2 self, uint32 ViewMode) put_CurrentViewMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual2 self, int32 iRelative) SelectItemRelative;
		}
	}
	[CRepr]
	public struct IShellFolderViewDual3 : IShellFolderViewDual2
	{
		public const new Guid IID = .(0x29ec8e6c, 0x46d3, 0x411f, 0xba, 0xaa, 0x61, 0x1a, 0x6c, 0x9c, 0xac, 0x66);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_GroupBy(out BSTR pbstrGroupBy) mut => VT.get_GroupBy(ref this, out pbstrGroupBy);
		public HRESULT put_GroupBy(BSTR bstrGroupBy) mut => VT.put_GroupBy(ref this, bstrGroupBy);
		public HRESULT get_FolderFlags(out uint32 pdwFlags) mut => VT.get_FolderFlags(ref this, out pdwFlags);
		public HRESULT put_FolderFlags(uint32 dwFlags) mut => VT.put_FolderFlags(ref this, dwFlags);
		public HRESULT get_SortColumns(out BSTR pbstrSortColumns) mut => VT.get_SortColumns(ref this, out pbstrSortColumns);
		public HRESULT put_SortColumns(BSTR bstrSortColumns) mut => VT.put_SortColumns(ref this, bstrSortColumns);
		public HRESULT put_IconSize(int32 iIconSize) mut => VT.put_IconSize(ref this, iIconSize);
		public HRESULT get_IconSize(out int32 piIconSize) mut => VT.get_IconSize(ref this, out piIconSize);
		public HRESULT FilterView(BSTR bstrFilterText) mut => VT.FilterView(ref this, bstrFilterText);

		[CRepr]
		public struct VTable : IShellFolderViewDual2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, out BSTR pbstrGroupBy) get_GroupBy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, BSTR bstrGroupBy) put_GroupBy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, out uint32 pdwFlags) get_FolderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, uint32 dwFlags) put_FolderFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, out BSTR pbstrSortColumns) get_SortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, BSTR bstrSortColumns) put_SortColumns;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, int32 iIconSize) put_IconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, out int32 piIconSize) get_IconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewDual3 self, BSTR bstrFilterText) FilterView;
		}
	}
	[CRepr]
	public struct IShellDispatch : IDispatch
	{
		public const new Guid IID = .(0xd8f015c0, 0xc278, 0x11ce, 0xa4, 0x9e, 0x44, 0x45, 0x53, 0x54, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT get_Application(out IDispatch* ppid) mut => VT.get_Application(ref this, out ppid);
		public HRESULT get_Parent(out IDispatch* ppid) mut => VT.get_Parent(ref this, out ppid);
		public HRESULT NameSpace(VARIANT vDir, out Folder* ppsdf) mut => VT.NameSpace(ref this, vDir, out ppsdf);
		public HRESULT BrowseForFolder(int32 Hwnd, BSTR Title, int32 Options, VARIANT RootFolder, out Folder* ppsdf) mut => VT.BrowseForFolder(ref this, Hwnd, Title, Options, RootFolder, out ppsdf);
		public HRESULT Windows(out IDispatch* ppid) mut => VT.Windows(ref this, out ppid);
		public HRESULT Open(VARIANT vDir) mut => VT.Open(ref this, vDir);
		public HRESULT Explore(VARIANT vDir) mut => VT.Explore(ref this, vDir);
		public HRESULT MinimizeAll() mut => VT.MinimizeAll(ref this);
		public HRESULT UndoMinimizeALL() mut => VT.UndoMinimizeALL(ref this);
		public HRESULT FileRun() mut => VT.FileRun(ref this);
		public HRESULT CascadeWindows() mut => VT.CascadeWindows(ref this);
		public HRESULT TileVertically() mut => VT.TileVertically(ref this);
		public HRESULT TileHorizontally() mut => VT.TileHorizontally(ref this);
		public HRESULT ShutdownWindows() mut => VT.ShutdownWindows(ref this);
		public HRESULT Suspend() mut => VT.Suspend(ref this);
		public HRESULT EjectPC() mut => VT.EjectPC(ref this);
		public HRESULT SetTime() mut => VT.SetTime(ref this);
		public HRESULT TrayProperties() mut => VT.TrayProperties(ref this);
		public HRESULT Help() mut => VT.Help(ref this);
		public HRESULT FindFiles() mut => VT.FindFiles(ref this);
		public HRESULT FindComputer() mut => VT.FindComputer(ref this);
		public HRESULT RefreshMenu() mut => VT.RefreshMenu(ref this);
		public HRESULT ControlPanelItem(BSTR bstrDir) mut => VT.ControlPanelItem(ref this, bstrDir);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, out IDispatch* ppid) get_Application;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, out IDispatch* ppid) get_Parent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, VARIANT vDir, out Folder* ppsdf) NameSpace;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, int32 Hwnd, BSTR Title, int32 Options, VARIANT RootFolder, out Folder* ppsdf) BrowseForFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, out IDispatch* ppid) Windows;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, VARIANT vDir) Open;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, VARIANT vDir) Explore;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) MinimizeAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) UndoMinimizeALL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) FileRun;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) CascadeWindows;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) TileVertically;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) TileHorizontally;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) ShutdownWindows;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) Suspend;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) EjectPC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) SetTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) TrayProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) Help;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) FindFiles;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) FindComputer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self) RefreshMenu;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch self, BSTR bstrDir) ControlPanelItem;
		}
	}
	[CRepr]
	public struct IShellDispatch2 : IShellDispatch
	{
		public const new Guid IID = .(0xa4c6892c, 0x3ba9, 0x11d2, 0x9d, 0xea, 0x00, 0xc0, 0x4f, 0xb1, 0x61, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT IsRestricted(BSTR Group, BSTR Restriction, out int32 plRestrictValue) mut => VT.IsRestricted(ref this, Group, Restriction, out plRestrictValue);
		public HRESULT ShellExecute(BSTR File, VARIANT vArgs, VARIANT vDir, VARIANT vOperation, VARIANT vShow) mut => VT.ShellExecute(ref this, File, vArgs, vDir, vOperation, vShow);
		public HRESULT FindPrinter(BSTR name, BSTR location, BSTR model) mut => VT.FindPrinter(ref this, name, location, model);
		public HRESULT GetSystemInformation(BSTR name, out VARIANT pv) mut => VT.GetSystemInformation(ref this, name, out pv);
		public HRESULT ServiceStart(BSTR ServiceName, VARIANT Persistent, out VARIANT pSuccess) mut => VT.ServiceStart(ref this, ServiceName, Persistent, out pSuccess);
		public HRESULT ServiceStop(BSTR ServiceName, VARIANT Persistent, out VARIANT pSuccess) mut => VT.ServiceStop(ref this, ServiceName, Persistent, out pSuccess);
		public HRESULT IsServiceRunning(BSTR ServiceName, out VARIANT pRunning) mut => VT.IsServiceRunning(ref this, ServiceName, out pRunning);
		public HRESULT CanStartStopService(BSTR ServiceName, out VARIANT pCanStartStop) mut => VT.CanStartStopService(ref this, ServiceName, out pCanStartStop);
		public HRESULT ShowBrowserBar(BSTR bstrClsid, VARIANT bShow, out VARIANT pSuccess) mut => VT.ShowBrowserBar(ref this, bstrClsid, bShow, out pSuccess);

		[CRepr]
		public struct VTable : IShellDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR Group, BSTR Restriction, out int32 plRestrictValue) IsRestricted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR File, VARIANT vArgs, VARIANT vDir, VARIANT vOperation, VARIANT vShow) ShellExecute;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR name, BSTR location, BSTR model) FindPrinter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR name, out VARIANT pv) GetSystemInformation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR ServiceName, VARIANT Persistent, out VARIANT pSuccess) ServiceStart;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR ServiceName, VARIANT Persistent, out VARIANT pSuccess) ServiceStop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR ServiceName, out VARIANT pRunning) IsServiceRunning;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR ServiceName, out VARIANT pCanStartStop) CanStartStopService;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch2 self, BSTR bstrClsid, VARIANT bShow, out VARIANT pSuccess) ShowBrowserBar;
		}
	}
	[CRepr]
	public struct IShellDispatch3 : IShellDispatch2
	{
		public const new Guid IID = .(0x177160ca, 0xbb5a, 0x411c, 0x84, 0x1d, 0xbd, 0x38, 0xfa, 0xcd, 0xea, 0xa0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddToRecent(VARIANT varFile, BSTR bstrCategory) mut => VT.AddToRecent(ref this, varFile, bstrCategory);

		[CRepr]
		public struct VTable : IShellDispatch2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch3 self, VARIANT varFile, BSTR bstrCategory) AddToRecent;
		}
	}
	[CRepr]
	public struct IShellDispatch4 : IShellDispatch3
	{
		public const new Guid IID = .(0xefd84b2d, 0x4bcf, 0x4298, 0xbe, 0x25, 0xeb, 0x54, 0x2a, 0x59, 0xfb, 0xda);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT WindowsSecurity() mut => VT.WindowsSecurity(ref this);
		public HRESULT ToggleDesktop() mut => VT.ToggleDesktop(ref this);
		public HRESULT ExplorerPolicy(BSTR bstrPolicyName, out VARIANT pValue) mut => VT.ExplorerPolicy(ref this, bstrPolicyName, out pValue);
		public HRESULT GetSetting(int32 lSetting, out int16 pResult) mut => VT.GetSetting(ref this, lSetting, out pResult);

		[CRepr]
		public struct VTable : IShellDispatch3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch4 self) WindowsSecurity;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch4 self) ToggleDesktop;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch4 self, BSTR bstrPolicyName, out VARIANT pValue) ExplorerPolicy;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch4 self, int32 lSetting, out int16 pResult) GetSetting;
		}
	}
	[CRepr]
	public struct IShellDispatch5 : IShellDispatch4
	{
		public const new Guid IID = .(0x866738b9, 0x6cf2, 0x4de8, 0x87, 0x67, 0xf7, 0x94, 0xeb, 0xe7, 0x4f, 0x4e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT WindowSwitcher() mut => VT.WindowSwitcher(ref this);

		[CRepr]
		public struct VTable : IShellDispatch4.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch5 self) WindowSwitcher;
		}
	}
	[CRepr]
	public struct IShellDispatch6 : IShellDispatch5
	{
		public const new Guid IID = .(0x286e6f1b, 0x7113, 0x4355, 0x95, 0x62, 0x96, 0xb7, 0xe9, 0xd6, 0x4c, 0x54);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SearchCommand() mut => VT.SearchCommand(ref this);

		[CRepr]
		public struct VTable : IShellDispatch5.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDispatch6 self) SearchCommand;
		}
	}
	[CRepr]
	public struct IFileSearchBand : IDispatch
	{
		public const new Guid IID = .(0x2d91eea1, 0x9932, 0x11d2, 0xbe, 0x86, 0x00, 0xa0, 0xc9, 0xa8, 0x3d, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFocus() mut => VT.SetFocus(ref this);
		public HRESULT SetSearchParameters(ref BSTR pbstrSearchID, int16 bNavToResults, ref VARIANT pvarScope, ref VARIANT pvarQueryFile) mut => VT.SetSearchParameters(ref this, ref pbstrSearchID, bNavToResults, ref pvarScope, ref pvarQueryFile);
		public HRESULT get_SearchID(out BSTR pbstrSearchID) mut => VT.get_SearchID(ref this, out pbstrSearchID);
		public HRESULT get_Scope(out VARIANT pvarScope) mut => VT.get_Scope(ref this, out pvarScope);
		public HRESULT get_QueryFile(out VARIANT pvarFile) mut => VT.get_QueryFile(ref this, out pvarFile);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSearchBand self) SetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSearchBand self, ref BSTR pbstrSearchID, int16 bNavToResults, ref VARIANT pvarScope, ref VARIANT pvarQueryFile) SetSearchParameters;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSearchBand self, out BSTR pbstrSearchID) get_SearchID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSearchBand self, out VARIANT pvarScope) get_Scope;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IFileSearchBand self, out VARIANT pvarFile) get_QueryFile;
		}
	}
	[CRepr]
	public struct IWebWizardHost : IDispatch
	{
		public const new Guid IID = .(0x18bcc359, 0x4990, 0x4bfb, 0xb9, 0x51, 0x3c, 0x83, 0x70, 0x2b, 0xe5, 0xf9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FinalBack() mut => VT.FinalBack(ref this);
		public HRESULT FinalNext() mut => VT.FinalNext(ref this);
		public HRESULT Cancel() mut => VT.Cancel(ref this);
		public HRESULT put_Caption(BSTR bstrCaption) mut => VT.put_Caption(ref this, bstrCaption);
		public HRESULT get_Caption(out BSTR pbstrCaption) mut => VT.get_Caption(ref this, out pbstrCaption);
		public HRESULT put_Property(BSTR bstrPropertyName, ref VARIANT pvProperty) mut => VT.put_Property(ref this, bstrPropertyName, ref pvProperty);
		public HRESULT get_Property(BSTR bstrPropertyName, out VARIANT pvProperty) mut => VT.get_Property(ref this, bstrPropertyName, out pvProperty);
		public HRESULT SetWizardButtons(int16 vfEnableBack, int16 vfEnableNext, int16 vfLastPage) mut => VT.SetWizardButtons(ref this, vfEnableBack, vfEnableNext, vfLastPage);
		public HRESULT SetHeaderText(BSTR bstrHeaderTitle, BSTR bstrHeaderSubtitle) mut => VT.SetHeaderText(ref this, bstrHeaderTitle, bstrHeaderSubtitle);

		[CRepr]
		public struct VTable : IDispatch.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self) FinalBack;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self) FinalNext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self) Cancel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, BSTR bstrCaption) put_Caption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, out BSTR pbstrCaption) get_Caption;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, BSTR bstrPropertyName, ref VARIANT pvProperty) put_Property;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, BSTR bstrPropertyName, out VARIANT pvProperty) get_Property;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, int16 vfEnableBack, int16 vfEnableNext, int16 vfLastPage) SetWizardButtons;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost self, BSTR bstrHeaderTitle, BSTR bstrHeaderSubtitle) SetHeaderText;
		}
	}
	[CRepr]
	public struct IWebWizardHost2 : IWebWizardHost
	{
		public const new Guid IID = .(0xf9c013dc, 0x3c23, 0x4041, 0x8e, 0x39, 0xcf, 0xb4, 0x02, 0xf7, 0xea, 0x59);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SignString(BSTR value, out BSTR signedValue) mut => VT.SignString(ref this, value, out signedValue);

		[CRepr]
		public struct VTable : IWebWizardHost.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IWebWizardHost2 self, BSTR value, out BSTR signedValue) SignString;
		}
	}
	[CRepr]
	public struct INewWDEvents : IWebWizardHost
	{
		public const new Guid IID = .(0x0751c551, 0x7568, 0x41c9, 0x8e, 0x5b, 0xe2, 0x2e, 0x38, 0x91, 0x92, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PassportAuthenticate(BSTR bstrSignInUrl, out int16 pvfAuthenitcated) mut => VT.PassportAuthenticate(ref this, bstrSignInUrl, out pvfAuthenitcated);

		[CRepr]
		public struct VTable : IWebWizardHost.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewWDEvents self, BSTR bstrSignInUrl, out int16 pvfAuthenitcated) PassportAuthenticate;
		}
	}
	[CRepr]
	public struct IAutoComplete : IUnknown
	{
		public const new Guid IID = .(0x00bb2762, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Init(HWND hwndEdit, ref IUnknown punkACL, PWSTR pwszRegKeyPath, PWSTR pwszQuickComplete) mut => VT.Init(ref this, hwndEdit, ref punkACL, pwszRegKeyPath, pwszQuickComplete);
		public HRESULT Enable(BOOL fEnable) mut => VT.Enable(ref this, fEnable);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoComplete self, HWND hwndEdit, ref IUnknown punkACL, PWSTR pwszRegKeyPath, PWSTR pwszQuickComplete) Init;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoComplete self, BOOL fEnable) Enable;
		}
	}
	[CRepr]
	public struct IAutoComplete2 : IAutoComplete
	{
		public const new Guid IID = .(0xeac04bc0, 0x3791, 0x11d2, 0xbb, 0x95, 0x00, 0x60, 0x97, 0x7b, 0x46, 0x4c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOptions(uint32 dwFlag) mut => VT.SetOptions(ref this, dwFlag);
		public HRESULT GetOptions(out uint32 pdwFlag) mut => VT.GetOptions(ref this, out pdwFlag);

		[CRepr]
		public struct VTable : IAutoComplete.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoComplete2 self, uint32 dwFlag) SetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAutoComplete2 self, out uint32 pdwFlag) GetOptions;
		}
	}
	[CRepr]
	public struct IEnumACString : IEnumString
	{
		public const new Guid IID = .(0x8e74c210, 0xcf9d, 0x4eaf, 0xa4, 0x03, 0x73, 0x56, 0x42, 0x8f, 0x0a, 0x5a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT NextItem(char16* pszUrl, uint32 cchMax, out uint32 pulSortIndex) mut => VT.NextItem(ref this, pszUrl, cchMax, out pulSortIndex);
		public HRESULT SetEnumOptions(uint32 dwOptions) mut => VT.SetEnumOptions(ref this, dwOptions);
		public HRESULT GetEnumOptions(out uint32 pdwOptions) mut => VT.GetEnumOptions(ref this, out pdwOptions);

		[CRepr]
		public struct VTable : IEnumString.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumACString self, char16* pszUrl, uint32 cchMax, out uint32 pulSortIndex) NextItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumACString self, uint32 dwOptions) SetEnumOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumACString self, out uint32 pdwOptions) GetEnumOptions;
		}
	}
	[CRepr]
	public struct IDataObjectAsyncCapability : IUnknown
	{
		public const new Guid IID = .(0x3d8b0590, 0xf691, 0x11d2, 0x8e, 0xa9, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAsyncMode(BOOL fDoOpAsync) mut => VT.SetAsyncMode(ref this, fDoOpAsync);
		public HRESULT GetAsyncMode(out BOOL pfIsOpAsync) mut => VT.GetAsyncMode(ref this, out pfIsOpAsync);
		public HRESULT StartOperation(IBindCtx* pbcReserved) mut => VT.StartOperation(ref this, pbcReserved);
		public HRESULT InOperation(out BOOL pfInAsyncOp) mut => VT.InOperation(ref this, out pfInAsyncOp);
		public HRESULT EndOperation(HRESULT hResult, ref IBindCtx pbcReserved, uint32 dwEffects) mut => VT.EndOperation(ref this, hResult, ref pbcReserved, dwEffects);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectAsyncCapability self, BOOL fDoOpAsync) SetAsyncMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectAsyncCapability self, out BOOL pfIsOpAsync) GetAsyncMode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectAsyncCapability self, IBindCtx* pbcReserved) StartOperation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectAsyncCapability self, out BOOL pfInAsyncOp) InOperation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDataObjectAsyncCapability self, HRESULT hResult, ref IBindCtx pbcReserved, uint32 dwEffects) EndOperation;
		}
	}
	[CRepr]
	public struct IExtractIconA : IUnknown
	{
		public const new Guid IID = .(0x000214eb, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIconLocation(uint32 uFlags, uint8* pszIconFile, uint32 cchMax, out int32 piIndex, out uint32 pwFlags) mut => VT.GetIconLocation(ref this, uFlags, pszIconFile, cchMax, out piIndex, out pwFlags);
		public HRESULT Extract(PSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) mut => VT.Extract(ref this, pszFile, nIconIndex, phiconLarge, phiconSmall, nIconSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractIconA self, uint32 uFlags, uint8* pszIconFile, uint32 cchMax, out int32 piIndex, out uint32 pwFlags) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractIconA self, PSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) Extract;
		}
	}
	[CRepr]
	public struct IExtractIconW : IUnknown
	{
		public const new Guid IID = .(0x000214fa, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIconLocation(uint32 uFlags, char16* pszIconFile, uint32 cchMax, out int32 piIndex, out uint32 pwFlags) mut => VT.GetIconLocation(ref this, uFlags, pszIconFile, cchMax, out piIndex, out pwFlags);
		public HRESULT Extract(PWSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) mut => VT.Extract(ref this, pszFile, nIconIndex, phiconLarge, phiconSmall, nIconSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractIconW self, uint32 uFlags, char16* pszIconFile, uint32 cchMax, out int32 piIndex, out uint32 pwFlags) GetIconLocation;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtractIconW self, PWSTR pszFile, uint32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize) Extract;
		}
	}
	[CRepr]
	public struct IShellIconOverlayManager : IUnknown
	{
		public const new Guid IID = .(0xf10b5e34, 0xdd3b, 0x42a7, 0xaa, 0x7d, 0x2f, 0x4e, 0xc5, 0x4b, 0xb0, 0x9b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFileOverlayInfo(PWSTR pwszPath, uint32 dwAttrib, out int32 pIndex, uint32 dwflags) mut => VT.GetFileOverlayInfo(ref this, pwszPath, dwAttrib, out pIndex, dwflags);
		public HRESULT GetReservedOverlayInfo(PWSTR pwszPath, uint32 dwAttrib, out int32 pIndex, uint32 dwflags, int32 iReservedID) mut => VT.GetReservedOverlayInfo(ref this, pwszPath, dwAttrib, out pIndex, dwflags, iReservedID);
		public HRESULT RefreshOverlayImages(uint32 dwFlags) mut => VT.RefreshOverlayImages(ref this, dwFlags);
		public HRESULT LoadNonloadedOverlayIdentifiers() mut => VT.LoadNonloadedOverlayIdentifiers(ref this);
		public HRESULT OverlayIndexFromImageIndex(int32 iImage, out int32 piIndex, BOOL fAdd) mut => VT.OverlayIndexFromImageIndex(ref this, iImage, out piIndex, fAdd);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayManager self, PWSTR pwszPath, uint32 dwAttrib, out int32 pIndex, uint32 dwflags) GetFileOverlayInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayManager self, PWSTR pwszPath, uint32 dwAttrib, out int32 pIndex, uint32 dwflags, int32 iReservedID) GetReservedOverlayInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayManager self, uint32 dwFlags) RefreshOverlayImages;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayManager self) LoadNonloadedOverlayIdentifiers;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlayManager self, int32 iImage, out int32 piIndex, BOOL fAdd) OverlayIndexFromImageIndex;
		}
	}
	[CRepr]
	public struct IShellIconOverlay : IUnknown
	{
		public const new Guid IID = .(0x7d688a70, 0xc613, 0x11d0, 0x99, 0x9b, 0x00, 0xc0, 0x4f, 0xd6, 0x55, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetOverlayIndex(ref ITEMIDLIST pidl, out int32 pIndex) mut => VT.GetOverlayIndex(ref this, ref pidl, out pIndex);
		public HRESULT GetOverlayIconIndex(ref ITEMIDLIST pidl, out int32 pIconIndex) mut => VT.GetOverlayIconIndex(ref this, ref pidl, out pIconIndex);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlay self, ref ITEMIDLIST pidl, out int32 pIndex) GetOverlayIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellIconOverlay self, ref ITEMIDLIST pidl, out int32 pIconIndex) GetOverlayIconIndex;
		}
	}
	[CRepr]
	public struct IURLSearchHook : IUnknown
	{
		public const new Guid IID = .(0xac60f6a0, 0x0fd9, 0x11d0, 0x99, 0xcb, 0x00, 0xc0, 0x4f, 0xd6, 0x44, 0x97);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Translate(char16* pwszSearchURL, uint32 cchBufferSize) mut => VT.Translate(ref this, pwszSearchURL, cchBufferSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IURLSearchHook self, char16* pwszSearchURL, uint32 cchBufferSize) Translate;
		}
	}
	[CRepr]
	public struct ISearchContext : IUnknown
	{
		public const new Guid IID = .(0x09f656a2, 0x41af, 0x480c, 0x88, 0xf7, 0x16, 0xcc, 0x0d, 0x16, 0x46, 0x15);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSearchUrl(out BSTR pbstrSearchUrl) mut => VT.GetSearchUrl(ref this, out pbstrSearchUrl);
		public HRESULT GetSearchText(out BSTR pbstrSearchText) mut => VT.GetSearchText(ref this, out pbstrSearchText);
		public HRESULT GetSearchStyle(out uint32 pdwSearchStyle) mut => VT.GetSearchStyle(ref this, out pdwSearchStyle);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchContext self, out BSTR pbstrSearchUrl) GetSearchUrl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchContext self, out BSTR pbstrSearchText) GetSearchText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISearchContext self, out uint32 pdwSearchStyle) GetSearchStyle;
		}
	}
	[CRepr]
	public struct IURLSearchHook2 : IURLSearchHook
	{
		public const new Guid IID = .(0x5ee44da4, 0x6d32, 0x46e3, 0x86, 0xbc, 0x07, 0x54, 0x0d, 0xed, 0xd0, 0xe0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranslateWithSearchContext(char16* pwszSearchURL, uint32 cchBufferSize, ISearchContext* pSearchContext) mut => VT.TranslateWithSearchContext(ref this, pwszSearchURL, cchBufferSize, pSearchContext);

		[CRepr]
		public struct VTable : IURLSearchHook.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IURLSearchHook2 self, char16* pwszSearchURL, uint32 cchBufferSize, ISearchContext* pSearchContext) TranslateWithSearchContext;
		}
	}
	[CRepr]
	public struct IShellDetails : IUnknown
	{
		public const new Guid IID = .(0x000214ec, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDetailsOf(ITEMIDLIST* pidl, uint32 iColumn, out SHELLDETAILS pDetails) mut => VT.GetDetailsOf(ref this, pidl, iColumn, out pDetails);
		public HRESULT ColumnClick(uint32 iColumn) mut => VT.ColumnClick(ref this, iColumn);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDetails self, ITEMIDLIST* pidl, uint32 iColumn, out SHELLDETAILS pDetails) GetDetailsOf;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellDetails self, uint32 iColumn) ColumnClick;
		}
	}
	[CRepr]
	public struct IObjMgr : IUnknown
	{
		public const new Guid IID = .(0x00bb2761, 0x6a77, 0x11d0, 0xa5, 0x35, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Append(ref IUnknown punk) mut => VT.Append(ref this, ref punk);
		public HRESULT Remove(ref IUnknown punk) mut => VT.Remove(ref this, ref punk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjMgr self, ref IUnknown punk) Append;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IObjMgr self, ref IUnknown punk) Remove;
		}
	}
	[CRepr]
	public struct IACList : IUnknown
	{
		public const new Guid IID = .(0x77a130b0, 0x94fd, 0x11d0, 0xa5, 0x44, 0x00, 0xc0, 0x4f, 0xd7, 0xd0, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Expand(PWSTR pszExpand) mut => VT.Expand(ref this, pszExpand);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IACList self, PWSTR pszExpand) Expand;
		}
	}
	[CRepr]
	public struct IACList2 : IACList
	{
		public const new Guid IID = .(0x470141a0, 0x5186, 0x11d2, 0xbb, 0xb6, 0x00, 0x60, 0x97, 0x7b, 0x46, 0x4c);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOptions(uint32 dwFlag) mut => VT.SetOptions(ref this, dwFlag);
		public HRESULT GetOptions(out uint32 pdwFlag) mut => VT.GetOptions(ref this, out pdwFlag);

		[CRepr]
		public struct VTable : IACList.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IACList2 self, uint32 dwFlag) SetOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IACList2 self, out uint32 pdwFlag) GetOptions;
		}
	}
	[CRepr]
	public struct IProgressDialog : IUnknown
	{
		public const new Guid IID = .(0xebbc7c04, 0x315e, 0x11d2, 0xb6, 0x2f, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StartProgressDialog(HWND hwndParent, IUnknown* punkEnableModless, uint32 dwFlags, void* pvResevered) mut => VT.StartProgressDialog(ref this, hwndParent, punkEnableModless, dwFlags, pvResevered);
		public HRESULT StopProgressDialog() mut => VT.StopProgressDialog(ref this);
		public HRESULT SetTitle(PWSTR pwzTitle) mut => VT.SetTitle(ref this, pwzTitle);
		public HRESULT SetAnimation(HINSTANCE hInstAnimation, uint32 idAnimation) mut => VT.SetAnimation(ref this, hInstAnimation, idAnimation);
		public BOOL HasUserCancelled() mut => VT.HasUserCancelled(ref this);
		public HRESULT SetProgress(uint32 dwCompleted, uint32 dwTotal) mut => VT.SetProgress(ref this, dwCompleted, dwTotal);
		public HRESULT SetProgress64(uint64 ullCompleted, uint64 ullTotal) mut => VT.SetProgress64(ref this, ullCompleted, ullTotal);
		public HRESULT SetLine(uint32 dwLineNum, PWSTR pwzString, BOOL fCompactPath, void* pvResevered) mut => VT.SetLine(ref this, dwLineNum, pwzString, fCompactPath, pvResevered);
		public HRESULT SetCancelMsg(PWSTR pwzCancelMsg, void* pvResevered) mut => VT.SetCancelMsg(ref this, pwzCancelMsg, pvResevered);
		public HRESULT Timer(uint32 dwTimerAction, void* pvResevered) mut => VT.Timer(ref this, dwTimerAction, pvResevered);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, HWND hwndParent, IUnknown* punkEnableModless, uint32 dwFlags, void* pvResevered) StartProgressDialog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self) StopProgressDialog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, PWSTR pwzTitle) SetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, HINSTANCE hInstAnimation, uint32 idAnimation) SetAnimation;
			public new function [CallingConvention(.Stdcall)] BOOL(ref IProgressDialog self) HasUserCancelled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, uint32 dwCompleted, uint32 dwTotal) SetProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, uint64 ullCompleted, uint64 ullTotal) SetProgress64;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, uint32 dwLineNum, PWSTR pwzString, BOOL fCompactPath, void* pvResevered) SetLine;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, PWSTR pwzCancelMsg, void* pvResevered) SetCancelMsg;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IProgressDialog self, uint32 dwTimerAction, void* pvResevered) Timer;
		}
	}
	[CRepr]
	public struct IDockingWindowSite : IOleWindow
	{
		public const new Guid IID = .(0x2a342fc2, 0x7b26, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetBorderDW(ref IUnknown punkObj, out RECT prcBorder) mut => VT.GetBorderDW(ref this, ref punkObj, out prcBorder);
		public HRESULT RequestBorderSpaceDW(ref IUnknown punkObj, ref RECT pbw) mut => VT.RequestBorderSpaceDW(ref this, ref punkObj, ref pbw);
		public HRESULT SetBorderSpaceDW(ref IUnknown punkObj, ref RECT pbw) mut => VT.SetBorderSpaceDW(ref this, ref punkObj, ref pbw);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowSite self, ref IUnknown punkObj, out RECT prcBorder) GetBorderDW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowSite self, ref IUnknown punkObj, ref RECT pbw) RequestBorderSpaceDW;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowSite self, ref IUnknown punkObj, ref RECT pbw) SetBorderSpaceDW;
		}
	}
	[CRepr]
	public struct IShellChangeNotify : IUnknown
	{
		public const new Guid IID = .(0xd82be2b1, 0x5764, 0x11d0, 0xa9, 0x6e, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnChange(int32 lEvent, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) mut => VT.OnChange(ref this, lEvent, pidl1, pidl2);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellChangeNotify self, int32 lEvent, ITEMIDLIST* pidl1, ITEMIDLIST* pidl2) OnChange;
		}
	}
	[CRepr]
	public struct IQueryInfo : IUnknown
	{
		public const new Guid IID = .(0x00021500, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetInfoTip(QITIPF_FLAGS dwFlags, out PWSTR ppwszTip) mut => VT.GetInfoTip(ref this, dwFlags, out ppwszTip);
		public HRESULT GetInfoFlags(out uint32 pdwFlags) mut => VT.GetInfoFlags(ref this, out pdwFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryInfo self, QITIPF_FLAGS dwFlags, out PWSTR ppwszTip) GetInfoTip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryInfo self, out uint32 pdwFlags) GetInfoFlags;
		}
	}
	[CRepr]
	public struct IShellFolderViewCB : IUnknown
	{
		public const new Guid IID = .(0x2047e320, 0xf2a9, 0x11ce, 0xae, 0x65, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT MessageSFVCB(SFVM_MESSAGE_ID uMsg, WPARAM wParam, LPARAM lParam) mut => VT.MessageSFVCB(ref this, uMsg, wParam, lParam);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderViewCB self, SFVM_MESSAGE_ID uMsg, WPARAM wParam, LPARAM lParam) MessageSFVCB;
		}
	}
	[CRepr]
	public struct IShellFolderView : IUnknown
	{
		public const new Guid IID = .(0x37a378c0, 0xf82d, 0x11ce, 0xae, 0x65, 0x08, 0x00, 0x2b, 0x2e, 0x12, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Rearrange(LPARAM lParamSort) mut => VT.Rearrange(ref this, lParamSort);
		public HRESULT GetArrangeParam(out LPARAM plParamSort) mut => VT.GetArrangeParam(ref this, out plParamSort);
		public HRESULT ArrangeGrid() mut => VT.ArrangeGrid(ref this);
		public HRESULT AutoArrange() mut => VT.AutoArrange(ref this);
		public HRESULT GetAutoArrange() mut => VT.GetAutoArrange(ref this);
		public HRESULT AddObject(ref ITEMIDLIST pidl, out uint32 puItem) mut => VT.AddObject(ref this, ref pidl, out puItem);
		public HRESULT GetObject(out ITEMIDLIST* ppidl, uint32 uItem) mut => VT.GetObject(ref this, out ppidl, uItem);
		public HRESULT RemoveObject(ITEMIDLIST* pidl, out uint32 puItem) mut => VT.RemoveObject(ref this, pidl, out puItem);
		public HRESULT GetObjectCount(out uint32 puCount) mut => VT.GetObjectCount(ref this, out puCount);
		public HRESULT SetObjectCount(uint32 uCount, uint32 dwFlags) mut => VT.SetObjectCount(ref this, uCount, dwFlags);
		public HRESULT UpdateObject(ref ITEMIDLIST pidlOld, ref ITEMIDLIST pidlNew, out uint32 puItem) mut => VT.UpdateObject(ref this, ref pidlOld, ref pidlNew, out puItem);
		public HRESULT RefreshObject(ref ITEMIDLIST pidl, out uint32 puItem) mut => VT.RefreshObject(ref this, ref pidl, out puItem);
		public HRESULT SetRedraw(BOOL bRedraw) mut => VT.SetRedraw(ref this, bRedraw);
		public HRESULT GetSelectedCount(out uint32 puSelected) mut => VT.GetSelectedCount(ref this, out puSelected);
		public HRESULT GetSelectedObjects(out ITEMIDLIST** pppidl, out uint32 puItems) mut => VT.GetSelectedObjects(ref this, out pppidl, out puItems);
		public HRESULT IsDropOnSource(IDropTarget* pDropTarget) mut => VT.IsDropOnSource(ref this, pDropTarget);
		public HRESULT GetDragPoint(out POINT ppt) mut => VT.GetDragPoint(ref this, out ppt);
		public HRESULT GetDropPoint(out POINT ppt) mut => VT.GetDropPoint(ref this, out ppt);
		public HRESULT MoveIcons(ref IDataObject pDataObject) mut => VT.MoveIcons(ref this, ref pDataObject);
		public HRESULT SetItemPos(ref ITEMIDLIST pidl, ref POINT ppt) mut => VT.SetItemPos(ref this, ref pidl, ref ppt);
		public HRESULT IsBkDropTarget(IDropTarget* pDropTarget) mut => VT.IsBkDropTarget(ref this, pDropTarget);
		public HRESULT SetClipboard(BOOL bMove) mut => VT.SetClipboard(ref this, bMove);
		public HRESULT SetPoints(ref IDataObject pDataObject) mut => VT.SetPoints(ref this, ref pDataObject);
		public HRESULT GetItemSpacing(out ITEMSPACING pSpacing) mut => VT.GetItemSpacing(ref this, out pSpacing);
		public HRESULT SetCallback(IShellFolderViewCB* pNewCB, IShellFolderViewCB** ppOldCB) mut => VT.SetCallback(ref this, pNewCB, ppOldCB);
		public HRESULT Select(SFVS_SELECT dwFlags) mut => VT.Select(ref this, dwFlags);
		public HRESULT QuerySupport(out uint32 pdwSupport) mut => VT.QuerySupport(ref this, out pdwSupport);
		public HRESULT SetAutomationObject(IDispatch* pdisp) mut => VT.SetAutomationObject(ref this, pdisp);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, LPARAM lParamSort) Rearrange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out LPARAM plParamSort) GetArrangeParam;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self) ArrangeGrid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self) AutoArrange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self) GetAutoArrange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref ITEMIDLIST pidl, out uint32 puItem) AddObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out ITEMIDLIST* ppidl, uint32 uItem) GetObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ITEMIDLIST* pidl, out uint32 puItem) RemoveObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out uint32 puCount) GetObjectCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, uint32 uCount, uint32 dwFlags) SetObjectCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref ITEMIDLIST pidlOld, ref ITEMIDLIST pidlNew, out uint32 puItem) UpdateObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref ITEMIDLIST pidl, out uint32 puItem) RefreshObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, BOOL bRedraw) SetRedraw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out uint32 puSelected) GetSelectedCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out ITEMIDLIST** pppidl, out uint32 puItems) GetSelectedObjects;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, IDropTarget* pDropTarget) IsDropOnSource;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out POINT ppt) GetDragPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out POINT ppt) GetDropPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref IDataObject pDataObject) MoveIcons;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref ITEMIDLIST pidl, ref POINT ppt) SetItemPos;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, IDropTarget* pDropTarget) IsBkDropTarget;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, BOOL bMove) SetClipboard;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, ref IDataObject pDataObject) SetPoints;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out ITEMSPACING pSpacing) GetItemSpacing;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, IShellFolderViewCB* pNewCB, IShellFolderViewCB** ppOldCB) SetCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, SFVS_SELECT dwFlags) Select;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, out uint32 pdwSupport) QuerySupport;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderView self, IDispatch* pdisp) SetAutomationObject;
		}
	}
	[CRepr]
	public struct INamedPropertyBag : IUnknown
	{
		public const new Guid IID = .(0xfb700430, 0x952c, 0x11d1, 0x94, 0x6f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ReadPropertyNPB(PWSTR pszBagname, PWSTR pszPropName, out PROPVARIANT pVar) mut => VT.ReadPropertyNPB(ref this, pszBagname, pszPropName, out pVar);
		public HRESULT WritePropertyNPB(PWSTR pszBagname, PWSTR pszPropName, ref PROPVARIANT pVar) mut => VT.WritePropertyNPB(ref this, pszBagname, pszPropName, ref pVar);
		public HRESULT RemovePropertyNPB(PWSTR pszBagname, PWSTR pszPropName) mut => VT.RemovePropertyNPB(ref this, pszBagname, pszPropName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyBag self, PWSTR pszBagname, PWSTR pszPropName, out PROPVARIANT pVar) ReadPropertyNPB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyBag self, PWSTR pszBagname, PWSTR pszPropName, ref PROPVARIANT pVar) WritePropertyNPB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INamedPropertyBag self, PWSTR pszBagname, PWSTR pszPropName) RemovePropertyNPB;
		}
	}
	[CRepr]
	public struct INewShortcutHookA : IUnknown
	{
		public const new Guid IID = .(0x000214e1, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetReferent(PSTR pcszReferent, HWND hwnd) mut => VT.SetReferent(ref this, pcszReferent, hwnd);
		public HRESULT GetReferent(uint8* pszReferent, int32 cchReferent) mut => VT.GetReferent(ref this, pszReferent, cchReferent);
		public HRESULT SetFolder(PSTR pcszFolder) mut => VT.SetFolder(ref this, pcszFolder);
		public HRESULT GetFolder(uint8* pszFolder, int32 cchFolder) mut => VT.GetFolder(ref this, pszFolder, cchFolder);
		public HRESULT GetName(uint8* pszName, int32 cchName) mut => VT.GetName(ref this, pszName, cchName);
		public HRESULT GetExtension(uint8* pszExtension, int32 cchExtension) mut => VT.GetExtension(ref this, pszExtension, cchExtension);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, PSTR pcszReferent, HWND hwnd) SetReferent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, uint8* pszReferent, int32 cchReferent) GetReferent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, PSTR pcszFolder) SetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, uint8* pszFolder, int32 cchFolder) GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, uint8* pszName, int32 cchName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookA self, uint8* pszExtension, int32 cchExtension) GetExtension;
		}
	}
	[CRepr]
	public struct INewShortcutHookW : IUnknown
	{
		public const new Guid IID = .(0x000214f7, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetReferent(PWSTR pcszReferent, HWND hwnd) mut => VT.SetReferent(ref this, pcszReferent, hwnd);
		public HRESULT GetReferent(char16* pszReferent, int32 cchReferent) mut => VT.GetReferent(ref this, pszReferent, cchReferent);
		public HRESULT SetFolder(PWSTR pcszFolder) mut => VT.SetFolder(ref this, pcszFolder);
		public HRESULT GetFolder(char16* pszFolder, int32 cchFolder) mut => VT.GetFolder(ref this, pszFolder, cchFolder);
		public HRESULT GetName(char16* pszName, int32 cchName) mut => VT.GetName(ref this, pszName, cchName);
		public HRESULT GetExtension(char16* pszExtension, int32 cchExtension) mut => VT.GetExtension(ref this, pszExtension, cchExtension);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, PWSTR pcszReferent, HWND hwnd) SetReferent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, char16* pszReferent, int32 cchReferent) GetReferent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, PWSTR pcszFolder) SetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, char16* pszFolder, int32 cchFolder) GetFolder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, char16* pszName, int32 cchName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref INewShortcutHookW self, char16* pszExtension, int32 cchExtension) GetExtension;
		}
	}
	[CRepr]
	public struct ICopyHookA : IUnknown
	{
		public const new Guid IID = .(0x000214ef, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 CopyCallback(HWND hwnd, uint32 wFunc, uint32 wFlags, PSTR pszSrcFile, uint32 dwSrcAttribs, PSTR pszDestFile, uint32 dwDestAttribs) mut => VT.CopyCallback(ref this, hwnd, wFunc, wFlags, pszSrcFile, dwSrcAttribs, pszDestFile, dwDestAttribs);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref ICopyHookA self, HWND hwnd, uint32 wFunc, uint32 wFlags, PSTR pszSrcFile, uint32 dwSrcAttribs, PSTR pszDestFile, uint32 dwDestAttribs) CopyCallback;
		}
	}
	[CRepr]
	public struct ICopyHookW : IUnknown
	{
		public const new Guid IID = .(0x000214fc, 0x0000, 0x0000, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46);
		
		public new VTable* VT { get => (.)vt; }
		
		public uint32 CopyCallback(HWND hwnd, uint32 wFunc, uint32 wFlags, PWSTR pszSrcFile, uint32 dwSrcAttribs, PWSTR pszDestFile, uint32 dwDestAttribs) mut => VT.CopyCallback(ref this, hwnd, wFunc, wFlags, pszSrcFile, dwSrcAttribs, pszDestFile, dwDestAttribs);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] uint32(ref ICopyHookW self, HWND hwnd, uint32 wFunc, uint32 wFlags, PWSTR pszSrcFile, uint32 dwSrcAttribs, PWSTR pszDestFile, uint32 dwDestAttribs) CopyCallback;
		}
	}
	[CRepr]
	public struct ICurrentWorkingDirectory : IUnknown
	{
		public const new Guid IID = .(0x91956d21, 0x9276, 0x11d1, 0x92, 0x1a, 0x00, 0x60, 0x97, 0xdf, 0x5b, 0xd4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetDirectory(char16* pwzPath, uint32 cchSize) mut => VT.GetDirectory(ref this, pwzPath, cchSize);
		public HRESULT SetDirectory(PWSTR pwzPath) mut => VT.SetDirectory(ref this, pwzPath);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICurrentWorkingDirectory self, char16* pwzPath, uint32 cchSize) GetDirectory;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICurrentWorkingDirectory self, PWSTR pwzPath) SetDirectory;
		}
	}
	[CRepr]
	public struct IDockingWindowFrame : IOleWindow
	{
		public const new Guid IID = .(0x47d2657a, 0x7b27, 0x11d0, 0x8c, 0xa9, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddToolbar(ref IUnknown punkSrc, PWSTR pwszItem, uint32 dwAddFlags) mut => VT.AddToolbar(ref this, ref punkSrc, pwszItem, dwAddFlags);
		public HRESULT RemoveToolbar(ref IUnknown punkSrc, uint32 dwRemoveFlags) mut => VT.RemoveToolbar(ref this, ref punkSrc, dwRemoveFlags);
		public HRESULT FindToolbar(PWSTR pwszItem, in Guid riid, void** ppv) mut => VT.FindToolbar(ref this, pwszItem, riid, ppv);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowFrame self, ref IUnknown punkSrc, PWSTR pwszItem, uint32 dwAddFlags) AddToolbar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowFrame self, ref IUnknown punkSrc, uint32 dwRemoveFlags) RemoveToolbar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDockingWindowFrame self, PWSTR pwszItem, in Guid riid, void** ppv) FindToolbar;
		}
	}
	[CRepr]
	public struct IThumbnailCapture : IUnknown
	{
		public const new Guid IID = .(0x4ea39266, 0x7211, 0x409f, 0xb6, 0x22, 0xf6, 0x3d, 0xbd, 0x16, 0xc5, 0x33);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CaptureThumbnail(in SIZE pMaxSize, ref IUnknown pHTMLDoc2, out HBITMAP phbmThumbnail) mut => VT.CaptureThumbnail(ref this, pMaxSize, ref pHTMLDoc2, out phbmThumbnail);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailCapture self, in SIZE pMaxSize, ref IUnknown pHTMLDoc2, out HBITMAP phbmThumbnail) CaptureThumbnail;
		}
	}
	[CRepr]
	public struct IShellFolderBand : IUnknown
	{
		public const new Guid IID = .(0x7fe80cc8, 0xc247, 0x11d0, 0xb9, 0x3a, 0x00, 0xa0, 0xc9, 0x03, 0x12, 0xe1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitializeSFB(IShellFolder* psf, ITEMIDLIST* pidl) mut => VT.InitializeSFB(ref this, psf, pidl);
		public HRESULT SetBandInfoSFB(ref BANDINFOSFB pbi) mut => VT.SetBandInfoSFB(ref this, ref pbi);
		public HRESULT GetBandInfoSFB(out BANDINFOSFB pbi) mut => VT.GetBandInfoSFB(ref this, out pbi);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderBand self, IShellFolder* psf, ITEMIDLIST* pidl) InitializeSFB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderBand self, ref BANDINFOSFB pbi) SetBandInfoSFB;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellFolderBand self, out BANDINFOSFB pbi) GetBandInfoSFB;
		}
	}
	[CRepr]
	public struct IDeskBarClient : IOleWindow
	{
		public const new Guid IID = .(0xeb0fe175, 0x1a3a, 0x11d0, 0x89, 0xb3, 0x00, 0xa0, 0xc9, 0x0a, 0x90, 0xac);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetDeskBarSite(IUnknown* punkSite) mut => VT.SetDeskBarSite(ref this, punkSite);
		public HRESULT SetModeDBC(uint32 dwMode) mut => VT.SetModeDBC(ref this, dwMode);
		public HRESULT UIActivateDBC(uint32 dwState) mut => VT.UIActivateDBC(ref this, dwState);
		public HRESULT GetSize(uint32 dwWhich, out RECT prc) mut => VT.GetSize(ref this, dwWhich, out prc);

		[CRepr]
		public struct VTable : IOleWindow.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBarClient self, IUnknown* punkSite) SetDeskBarSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBarClient self, uint32 dwMode) SetModeDBC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBarClient self, uint32 dwState) UIActivateDBC;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDeskBarClient self, uint32 dwWhich, out RECT prc) GetSize;
		}
	}
	[CRepr]
	public struct IColumnProvider : IUnknown
	{
		public const new Guid IID = .(0xe8025004, 0x1c42, 0x11d2, 0xbe, 0x2c, 0x00, 0xa0, 0xc9, 0xa8, 0x3d, 0xa1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(ref SHCOLUMNINIT psci) mut => VT.Initialize(ref this, ref psci);
		public HRESULT GetColumnInfo(uint32 dwIndex, out SHCOLUMNINFO psci) mut => VT.GetColumnInfo(ref this, dwIndex, out psci);
		public HRESULT GetItemData(ref PROPERTYKEY pscid, ref SHCOLUMNDATA pscd, out VARIANT pvarData) mut => VT.GetItemData(ref this, ref pscid, ref pscd, out pvarData);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnProvider self, ref SHCOLUMNINIT psci) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnProvider self, uint32 dwIndex, out SHCOLUMNINFO psci) GetColumnInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IColumnProvider self, ref PROPERTYKEY pscid, ref SHCOLUMNDATA pscd, out VARIANT pvarData) GetItemData;
		}
	}
	[CRepr]
	public struct IDocViewSite : IUnknown
	{
		public const new Guid IID = .(0x87d605e0, 0xc511, 0x11cf, 0x89, 0xa9, 0x00, 0xa0, 0xc9, 0x05, 0x41, 0x29);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT OnSetTitle(ref VARIANT pvTitle) mut => VT.OnSetTitle(ref this, ref pvTitle);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IDocViewSite self, ref VARIANT pvTitle) OnSetTitle;
		}
	}
	[CRepr]
	public struct IInitializeObject : IUnknown
	{
		public const new Guid IID = .(0x4622ad16, 0xff23, 0x11d0, 0x8d, 0x34, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize() mut => VT.Initialize(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInitializeObject self) Initialize;
		}
	}
	[CRepr]
	public struct IBanneredBar : IUnknown
	{
		public const new Guid IID = .(0x596a9a94, 0x013e, 0x11d1, 0x8d, 0x34, 0x00, 0xa0, 0xc9, 0x0f, 0x27, 0x19);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetIconSize(uint32 iIcon) mut => VT.SetIconSize(ref this, iIcon);
		public HRESULT GetIconSize(out uint32 piIcon) mut => VT.GetIconSize(ref this, out piIcon);
		public HRESULT SetBitmap(HBITMAP hBitmap) mut => VT.SetBitmap(ref this, hBitmap);
		public HRESULT GetBitmap(out HBITMAP phBitmap) mut => VT.GetBitmap(ref this, out phBitmap);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBanneredBar self, uint32 iIcon) SetIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBanneredBar self, out uint32 piIcon) GetIconSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBanneredBar self, HBITMAP hBitmap) SetBitmap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBanneredBar self, out HBITMAP phBitmap) GetBitmap;
		}
	}
	[CRepr]
	public struct IQueryAssociations : IUnknown
	{
		public const new Guid IID = .(0xc46ca590, 0x3c3f, 0x11d2, 0xbe, 0xe6, 0x00, 0x00, 0xf8, 0x05, 0xca, 0x57);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Init(uint32 flags, PWSTR pszAssoc, HKEY hkProgid, HWND hwnd) mut => VT.Init(ref this, flags, pszAssoc, hkProgid, hwnd);
		public HRESULT GetString(uint32 flags, ASSOCSTR str, PWSTR pszExtra, char16* pszOut, out uint32 pcchOut) mut => VT.GetString(ref this, flags, str, pszExtra, pszOut, out pcchOut);
		public HRESULT GetKey(uint32 flags, ASSOCKEY key, PWSTR pszExtra, out HKEY phkeyOut) mut => VT.GetKey(ref this, flags, key, pszExtra, out phkeyOut);
		public HRESULT GetData(uint32 flags, ASSOCDATA data, PWSTR pszExtra, void* pvOut, uint32* pcbOut) mut => VT.GetData(ref this, flags, data, pszExtra, pvOut, pcbOut);
		public HRESULT GetEnum(uint32 flags, ASSOCENUM assocenum, PWSTR pszExtra, in Guid riid, void** ppvOut) mut => VT.GetEnum(ref this, flags, assocenum, pszExtra, riid, ppvOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryAssociations self, uint32 flags, PWSTR pszAssoc, HKEY hkProgid, HWND hwnd) Init;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryAssociations self, uint32 flags, ASSOCSTR str, PWSTR pszExtra, char16* pszOut, out uint32 pcchOut) GetString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryAssociations self, uint32 flags, ASSOCKEY key, PWSTR pszExtra, out HKEY phkeyOut) GetKey;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryAssociations self, uint32 flags, ASSOCDATA data, PWSTR pszExtra, void* pvOut, uint32* pcbOut) GetData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryAssociations self, uint32 flags, ASSOCENUM assocenum, PWSTR pszExtra, in Guid riid, void** ppvOut) GetEnum;
		}
	}
	[CRepr]
	public struct IShellApp : IUnknown
	{
		public const new Guid IID = .(0xa3e14960, 0x935f, 0x11d1, 0xb8, 0xb8, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetAppInfo(out APPINFODATA pai) mut => VT.GetAppInfo(ref this, out pai);
		public HRESULT GetPossibleActions(out uint32 pdwActions) mut => VT.GetPossibleActions(ref this, out pdwActions);
		public HRESULT GetSlowAppInfo(out SLOWAPPINFO psaid) mut => VT.GetSlowAppInfo(ref this, out psaid);
		public HRESULT GetCachedSlowAppInfo(out SLOWAPPINFO psaid) mut => VT.GetCachedSlowAppInfo(ref this, out psaid);
		public HRESULT IsInstalled() mut => VT.IsInstalled(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellApp self, out APPINFODATA pai) GetAppInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellApp self, out uint32 pdwActions) GetPossibleActions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellApp self, out SLOWAPPINFO psaid) GetSlowAppInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellApp self, out SLOWAPPINFO psaid) GetCachedSlowAppInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellApp self) IsInstalled;
		}
	}
	[CRepr]
	public struct IPublishedApp : IShellApp
	{
		public const new Guid IID = .(0x1bc752e0, 0x9046, 0x11d1, 0xb8, 0xb3, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Install(ref SYSTEMTIME pstInstall) mut => VT.Install(ref this, ref pstInstall);
		public HRESULT GetPublishedAppInfo(out PUBAPPINFO ppai) mut => VT.GetPublishedAppInfo(ref this, out ppai);
		public HRESULT Unschedule() mut => VT.Unschedule(ref this);

		[CRepr]
		public struct VTable : IShellApp.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishedApp self, ref SYSTEMTIME pstInstall) Install;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishedApp self, out PUBAPPINFO ppai) GetPublishedAppInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishedApp self) Unschedule;
		}
	}
	[CRepr]
	public struct IPublishedApp2 : IPublishedApp
	{
		public const new Guid IID = .(0x12b81347, 0x1b3a, 0x4a04, 0xaa, 0x61, 0x3f, 0x76, 0x8b, 0x67, 0xfd, 0x7e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Install2(ref SYSTEMTIME pstInstall, HWND hwndParent) mut => VT.Install2(ref this, ref pstInstall, hwndParent);

		[CRepr]
		public struct VTable : IPublishedApp.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IPublishedApp2 self, ref SYSTEMTIME pstInstall, HWND hwndParent) Install2;
		}
	}
	[CRepr]
	public struct IEnumPublishedApps : IUnknown
	{
		public const new Guid IID = .(0x0b124f8c, 0x91f0, 0x11d1, 0xb8, 0xb5, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(out IPublishedApp* pia) mut => VT.Next(ref this, out pia);
		public HRESULT Reset() mut => VT.Reset(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPublishedApps self, out IPublishedApp* pia) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumPublishedApps self) Reset;
		}
	}
	[CRepr]
	public struct IAppPublisher : IUnknown
	{
		public const new Guid IID = .(0x07250a10, 0x9cf9, 0x11d1, 0x90, 0x76, 0x00, 0x60, 0x08, 0x05, 0x93, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetNumberOfCategories(out uint32 pdwCat) mut => VT.GetNumberOfCategories(ref this, out pdwCat);
		public HRESULT GetCategories(out APPCATEGORYINFOLIST pAppCategoryList) mut => VT.GetCategories(ref this, out pAppCategoryList);
		public HRESULT GetNumberOfApps(out uint32 pdwApps) mut => VT.GetNumberOfApps(ref this, out pdwApps);
		public HRESULT EnumApps(ref Guid pAppCategoryId, out IEnumPublishedApps* ppepa) mut => VT.EnumApps(ref this, ref pAppCategoryId, out ppepa);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppPublisher self, out uint32 pdwCat) GetNumberOfCategories;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppPublisher self, out APPCATEGORYINFOLIST pAppCategoryList) GetCategories;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppPublisher self, out uint32 pdwApps) GetNumberOfApps;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IAppPublisher self, ref Guid pAppCategoryId, out IEnumPublishedApps* ppepa) EnumApps;
		}
	}
	[CRepr]
	public struct ICredentialProviderCredential : IUnknown
	{
		public const new Guid IID = .(0x63913a93, 0x40c1, 0x481a, 0x81, 0x8d, 0x40, 0x72, 0xff, 0x8c, 0x70, 0xcc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Advise(ref ICredentialProviderCredentialEvents pcpce) mut => VT.Advise(ref this, ref pcpce);
		public HRESULT UnAdvise() mut => VT.UnAdvise(ref this);
		public HRESULT SetSelected(out BOOL pbAutoLogon) mut => VT.SetSelected(ref this, out pbAutoLogon);
		public HRESULT SetDeselected() mut => VT.SetDeselected(ref this);
		public HRESULT GetFieldState(uint32 dwFieldID, out CREDENTIAL_PROVIDER_FIELD_STATE pcpfs, out CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE pcpfis) mut => VT.GetFieldState(ref this, dwFieldID, out pcpfs, out pcpfis);
		public HRESULT GetStringValue(uint32 dwFieldID, out PWSTR ppsz) mut => VT.GetStringValue(ref this, dwFieldID, out ppsz);
		public HRESULT GetBitmapValue(uint32 dwFieldID, out HBITMAP phbmp) mut => VT.GetBitmapValue(ref this, dwFieldID, out phbmp);
		public HRESULT GetCheckboxValue(uint32 dwFieldID, out BOOL pbChecked, out PWSTR ppszLabel) mut => VT.GetCheckboxValue(ref this, dwFieldID, out pbChecked, out ppszLabel);
		public HRESULT GetSubmitButtonValue(uint32 dwFieldID, out uint32 pdwAdjacentTo) mut => VT.GetSubmitButtonValue(ref this, dwFieldID, out pdwAdjacentTo);
		public HRESULT GetComboBoxValueCount(uint32 dwFieldID, out uint32 pcItems, out uint32 pdwSelectedItem) mut => VT.GetComboBoxValueCount(ref this, dwFieldID, out pcItems, out pdwSelectedItem);
		public HRESULT GetComboBoxValueAt(uint32 dwFieldID, uint32 dwItem, out PWSTR ppszItem) mut => VT.GetComboBoxValueAt(ref this, dwFieldID, dwItem, out ppszItem);
		public HRESULT SetStringValue(uint32 dwFieldID, PWSTR psz) mut => VT.SetStringValue(ref this, dwFieldID, psz);
		public HRESULT SetCheckboxValue(uint32 dwFieldID, BOOL bChecked) mut => VT.SetCheckboxValue(ref this, dwFieldID, bChecked);
		public HRESULT SetComboBoxSelectedValue(uint32 dwFieldID, uint32 dwSelectedItem) mut => VT.SetComboBoxSelectedValue(ref this, dwFieldID, dwSelectedItem);
		public HRESULT CommandLinkClicked(uint32 dwFieldID) mut => VT.CommandLinkClicked(ref this, dwFieldID);
		public HRESULT GetSerialization(out CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE pcpgsr, out CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcs, PWSTR* ppszOptionalStatusText, out CREDENTIAL_PROVIDER_STATUS_ICON pcpsiOptionalStatusIcon) mut => VT.GetSerialization(ref this, out pcpgsr, out pcpcs, ppszOptionalStatusText, out pcpsiOptionalStatusIcon);
		public HRESULT ReportResult(NTSTATUS ntsStatus, NTSTATUS ntsSubstatus, PWSTR* ppszOptionalStatusText, out CREDENTIAL_PROVIDER_STATUS_ICON pcpsiOptionalStatusIcon) mut => VT.ReportResult(ref this, ntsStatus, ntsSubstatus, ppszOptionalStatusText, out pcpsiOptionalStatusIcon);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, ref ICredentialProviderCredentialEvents pcpce) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self) UnAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, out BOOL pbAutoLogon) SetSelected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self) SetDeselected;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out CREDENTIAL_PROVIDER_FIELD_STATE pcpfs, out CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE pcpfis) GetFieldState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out PWSTR ppsz) GetStringValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out HBITMAP phbmp) GetBitmapValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out BOOL pbChecked, out PWSTR ppszLabel) GetCheckboxValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out uint32 pdwAdjacentTo) GetSubmitButtonValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, out uint32 pcItems, out uint32 pdwSelectedItem) GetComboBoxValueCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, uint32 dwItem, out PWSTR ppszItem) GetComboBoxValueAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, PWSTR psz) SetStringValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, BOOL bChecked) SetCheckboxValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID, uint32 dwSelectedItem) SetComboBoxSelectedValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, uint32 dwFieldID) CommandLinkClicked;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, out CREDENTIAL_PROVIDER_GET_SERIALIZATION_RESPONSE pcpgsr, out CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcs, PWSTR* ppszOptionalStatusText, out CREDENTIAL_PROVIDER_STATUS_ICON pcpsiOptionalStatusIcon) GetSerialization;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential self, NTSTATUS ntsStatus, NTSTATUS ntsSubstatus, PWSTR* ppszOptionalStatusText, out CREDENTIAL_PROVIDER_STATUS_ICON pcpsiOptionalStatusIcon) ReportResult;
		}
	}
	[CRepr]
	public struct IQueryContinueWithStatus : IQueryContinue
	{
		public const new Guid IID = .(0x9090be5b, 0x502b, 0x41fb, 0xbc, 0xcc, 0x00, 0x49, 0xa6, 0xc7, 0x25, 0x4b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetStatusMessage(PWSTR psz) mut => VT.SetStatusMessage(ref this, psz);

		[CRepr]
		public struct VTable : IQueryContinue.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IQueryContinueWithStatus self, PWSTR psz) SetStatusMessage;
		}
	}
	[CRepr]
	public struct IConnectableCredentialProviderCredential : ICredentialProviderCredential
	{
		public const new Guid IID = .(0x9387928b, 0xac75, 0x4bf9, 0x8a, 0xb2, 0x2b, 0x93, 0xc4, 0xa5, 0x52, 0x90);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Connect(ref IQueryContinueWithStatus pqcws) mut => VT.Connect(ref this, ref pqcws);
		public HRESULT Disconnect() mut => VT.Disconnect(ref this);

		[CRepr]
		public struct VTable : ICredentialProviderCredential.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectableCredentialProviderCredential self, ref IQueryContinueWithStatus pqcws) Connect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IConnectableCredentialProviderCredential self) Disconnect;
		}
	}
	[CRepr]
	public struct ICredentialProviderCredentialEvents : IUnknown
	{
		public const new Guid IID = .(0xfa6fa76b, 0x66b7, 0x4b11, 0x95, 0xf1, 0x86, 0x17, 0x11, 0x18, 0xe8, 0x16);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetFieldState(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE cpfs) mut => VT.SetFieldState(ref this, ref pcpc, dwFieldID, cpfs);
		public HRESULT SetFieldInteractiveState(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE cpfis) mut => VT.SetFieldInteractiveState(ref this, ref pcpc, dwFieldID, cpfis);
		public HRESULT SetFieldString(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, PWSTR psz) mut => VT.SetFieldString(ref this, ref pcpc, dwFieldID, psz);
		public HRESULT SetFieldCheckbox(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, BOOL bChecked, PWSTR pszLabel) mut => VT.SetFieldCheckbox(ref this, ref pcpc, dwFieldID, bChecked, pszLabel);
		public HRESULT SetFieldBitmap(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, HBITMAP hbmp) mut => VT.SetFieldBitmap(ref this, ref pcpc, dwFieldID, hbmp);
		public HRESULT SetFieldComboBoxSelectedItem(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwSelectedItem) mut => VT.SetFieldComboBoxSelectedItem(ref this, ref pcpc, dwFieldID, dwSelectedItem);
		public HRESULT DeleteFieldComboBoxItem(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwItem) mut => VT.DeleteFieldComboBoxItem(ref this, ref pcpc, dwFieldID, dwItem);
		public HRESULT AppendFieldComboBoxItem(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, PWSTR pszItem) mut => VT.AppendFieldComboBoxItem(ref this, ref pcpc, dwFieldID, pszItem);
		public HRESULT SetFieldSubmitButton(ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwAdjacentTo) mut => VT.SetFieldSubmitButton(ref this, ref pcpc, dwFieldID, dwAdjacentTo);
		public HRESULT OnCreatingWindow(out HWND phwndOwner) mut => VT.OnCreatingWindow(ref this, out phwndOwner);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_STATE cpfs) SetFieldState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, CREDENTIAL_PROVIDER_FIELD_INTERACTIVE_STATE cpfis) SetFieldInteractiveState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, PWSTR psz) SetFieldString;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, BOOL bChecked, PWSTR pszLabel) SetFieldCheckbox;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, HBITMAP hbmp) SetFieldBitmap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwSelectedItem) SetFieldComboBoxSelectedItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwItem) DeleteFieldComboBoxItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, PWSTR pszItem) AppendFieldComboBoxItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, ref ICredentialProviderCredential pcpc, uint32 dwFieldID, uint32 dwAdjacentTo) SetFieldSubmitButton;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents self, out HWND phwndOwner) OnCreatingWindow;
		}
	}
	[CRepr]
	public struct ICredentialProvider : IUnknown
	{
		public const new Guid IID = .(0xd27c3481, 0x5a1c, 0x45b2, 0x8a, 0xaa, 0xc2, 0x0e, 0xbb, 0xe8, 0x22, 0x9e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetUsageScenario(CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags) mut => VT.SetUsageScenario(ref this, cpus, dwFlags);
		public HRESULT SetSerialization(in CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcs) mut => VT.SetSerialization(ref this, pcpcs);
		public HRESULT Advise(ref ICredentialProviderEvents pcpe, uint upAdviseContext) mut => VT.Advise(ref this, ref pcpe, upAdviseContext);
		public HRESULT UnAdvise() mut => VT.UnAdvise(ref this);
		public HRESULT GetFieldDescriptorCount(out uint32 pdwCount) mut => VT.GetFieldDescriptorCount(ref this, out pdwCount);
		public HRESULT GetFieldDescriptorAt(uint32 dwIndex, out CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR* ppcpfd) mut => VT.GetFieldDescriptorAt(ref this, dwIndex, out ppcpfd);
		public HRESULT GetCredentialCount(out uint32 pdwCount, out uint32 pdwDefault, out BOOL pbAutoLogonWithDefault) mut => VT.GetCredentialCount(ref this, out pdwCount, out pdwDefault, out pbAutoLogonWithDefault);
		public HRESULT GetCredentialAt(uint32 dwIndex, out ICredentialProviderCredential* ppcpc) mut => VT.GetCredentialAt(ref this, dwIndex, out ppcpc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags) SetUsageScenario;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, in CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcs) SetSerialization;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, ref ICredentialProviderEvents pcpe, uint upAdviseContext) Advise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self) UnAdvise;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, out uint32 pdwCount) GetFieldDescriptorCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, uint32 dwIndex, out CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR* ppcpfd) GetFieldDescriptorAt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, out uint32 pdwCount, out uint32 pdwDefault, out BOOL pbAutoLogonWithDefault) GetCredentialCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProvider self, uint32 dwIndex, out ICredentialProviderCredential* ppcpc) GetCredentialAt;
		}
	}
	[CRepr]
	public struct ICredentialProviderEvents : IUnknown
	{
		public const new Guid IID = .(0x34201e5a, 0xa787, 0x41a3, 0xa5, 0xa4, 0xbd, 0x6d, 0xcf, 0x2a, 0x85, 0x4e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CredentialsChanged(uint upAdviseContext) mut => VT.CredentialsChanged(ref this, upAdviseContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderEvents self, uint upAdviseContext) CredentialsChanged;
		}
	}
	[CRepr]
	public struct ICredentialProviderFilter : IUnknown
	{
		public const new Guid IID = .(0xa5da53f9, 0xd475, 0x4080, 0xa1, 0x20, 0x91, 0x0c, 0x4a, 0x73, 0x98, 0x80);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Filter(CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags, Guid* rgclsidProviders, BOOL* rgbAllow, uint32 cProviders) mut => VT.Filter(ref this, cpus, dwFlags, rgclsidProviders, rgbAllow, cProviders);
		public HRESULT UpdateRemoteCredential(in CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcsIn, out CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcsOut) mut => VT.UpdateRemoteCredential(ref this, pcpcsIn, out pcpcsOut);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderFilter self, CREDENTIAL_PROVIDER_USAGE_SCENARIO cpus, uint32 dwFlags, Guid* rgclsidProviders, BOOL* rgbAllow, uint32 cProviders) Filter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderFilter self, in CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcsIn, out CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION pcpcsOut) UpdateRemoteCredential;
		}
	}
	[CRepr]
	public struct ICredentialProviderCredential2 : ICredentialProviderCredential
	{
		public const new Guid IID = .(0xfd672c54, 0x40ea, 0x4d6e, 0x9b, 0x49, 0xcf, 0xb1, 0xa7, 0x50, 0x7b, 0xd7);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetUserSid(PWSTR* sid) mut => VT.GetUserSid(ref this, sid);

		[CRepr]
		public struct VTable : ICredentialProviderCredential.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredential2 self, PWSTR* sid) GetUserSid;
		}
	}
	[CRepr]
	public struct ICredentialProviderCredentialWithFieldOptions : IUnknown
	{
		public const new Guid IID = .(0xdbc6fb30, 0xc843, 0x49e3, 0xa6, 0x45, 0x57, 0x3e, 0x6f, 0x39, 0x44, 0x6a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetFieldOptions(uint32 fieldID, out CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) mut => VT.GetFieldOptions(ref this, fieldID, out options);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialWithFieldOptions self, uint32 fieldID, out CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) GetFieldOptions;
		}
	}
	[CRepr]
	public struct ICredentialProviderCredentialEvents2 : ICredentialProviderCredentialEvents
	{
		public const new Guid IID = .(0xb53c00b6, 0x9922, 0x4b78, 0xb1, 0xf4, 0xdd, 0xfe, 0x77, 0x4d, 0xc3, 0x9b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT BeginFieldUpdates() mut => VT.BeginFieldUpdates(ref this);
		public HRESULT EndFieldUpdates() mut => VT.EndFieldUpdates(ref this);
		public HRESULT SetFieldOptions(ref ICredentialProviderCredential credential, uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) mut => VT.SetFieldOptions(ref this, ref credential, fieldID, options);

		[CRepr]
		public struct VTable : ICredentialProviderCredentialEvents.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents2 self) BeginFieldUpdates;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents2 self) EndFieldUpdates;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderCredentialEvents2 self, ref ICredentialProviderCredential credential, uint32 fieldID, CREDENTIAL_PROVIDER_CREDENTIAL_FIELD_OPTIONS options) SetFieldOptions;
		}
	}
	[CRepr]
	public struct ICredentialProviderUser : IUnknown
	{
		public const new Guid IID = .(0x13793285, 0x3ea6, 0x40fd, 0xb4, 0x20, 0x15, 0xf4, 0x7d, 0xa4, 0x1f, 0xbb);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSid(out PWSTR sid) mut => VT.GetSid(ref this, out sid);
		public HRESULT GetProviderID(out Guid providerID) mut => VT.GetProviderID(ref this, out providerID);
		public HRESULT GetStringValue(in PROPERTYKEY key, out PWSTR stringValue) mut => VT.GetStringValue(ref this, key, out stringValue);
		public HRESULT GetValue(in PROPERTYKEY key, out PROPVARIANT value) mut => VT.GetValue(ref this, key, out value);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUser self, out PWSTR sid) GetSid;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUser self, out Guid providerID) GetProviderID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUser self, in PROPERTYKEY key, out PWSTR stringValue) GetStringValue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUser self, in PROPERTYKEY key, out PROPVARIANT value) GetValue;
		}
	}
	[CRepr]
	public struct ICredentialProviderUserArray : IUnknown
	{
		public const new Guid IID = .(0x90c119ae, 0x0f18, 0x4520, 0xa1, 0xf1, 0x11, 0x43, 0x66, 0xa4, 0x0f, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetProviderFilter(in Guid guidProviderToFilterTo) mut => VT.SetProviderFilter(ref this, guidProviderToFilterTo);
		public HRESULT GetAccountOptions(out CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS credentialProviderAccountOptions) mut => VT.GetAccountOptions(ref this, out credentialProviderAccountOptions);
		public HRESULT GetCount(out uint32 userCount) mut => VT.GetCount(ref this, out userCount);
		public HRESULT GetAt(uint32 userIndex, out ICredentialProviderUser* user) mut => VT.GetAt(ref this, userIndex, out user);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUserArray self, in Guid guidProviderToFilterTo) SetProviderFilter;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUserArray self, out CREDENTIAL_PROVIDER_ACCOUNT_OPTIONS credentialProviderAccountOptions) GetAccountOptions;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUserArray self, out uint32 userCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderUserArray self, uint32 userIndex, out ICredentialProviderUser* user) GetAt;
		}
	}
	[CRepr]
	public struct ICredentialProviderSetUserArray : IUnknown
	{
		public const new Guid IID = .(0x095c1484, 0x1c0c, 0x4388, 0x9c, 0x6d, 0x50, 0x0e, 0x61, 0xbf, 0x84, 0xbd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetUserArray(ref ICredentialProviderUserArray users) mut => VT.SetUserArray(ref this, ref users);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ICredentialProviderSetUserArray self, ref ICredentialProviderUserArray users) SetUserArray;
		}
	}
	[CRepr]
	public struct ISyncMgrHandlerCollection : IUnknown
	{
		public const new Guid IID = .(0xa7f337a3, 0xd20b, 0x45cb, 0x9e, 0xd7, 0x87, 0xd0, 0x94, 0xca, 0x50, 0x45);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetHandlerEnumerator(out IEnumString* ppenum) mut => VT.GetHandlerEnumerator(ref this, out ppenum);
		public HRESULT BindToHandler(PWSTR pszHandlerID, in Guid riid, void** ppv) mut => VT.BindToHandler(ref this, pszHandlerID, riid, ppv);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerCollection self, out IEnumString* ppenum) GetHandlerEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerCollection self, PWSTR pszHandlerID, in Guid riid, void** ppv) BindToHandler;
		}
	}
	[CRepr]
	public struct ISyncMgrHandler : IUnknown
	{
		public const new Guid IID = .(0x04ec2e43, 0xac77, 0x49f9, 0x9b, 0x98, 0x03, 0x07, 0xef, 0x7a, 0x72, 0xa2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetName(out PWSTR ppszName) mut => VT.GetName(ref this, out ppszName);
		public HRESULT GetHandlerInfo(out ISyncMgrHandlerInfo* ppHandlerInfo) mut => VT.GetHandlerInfo(ref this, out ppHandlerInfo);
		public HRESULT GetObject(in Guid rguidObjectID, in Guid riid, void** ppv) mut => VT.GetObject(ref this, rguidObjectID, riid, ppv);
		public HRESULT GetCapabilities(out SYNCMGR_HANDLER_CAPABILITIES pmCapabilities) mut => VT.GetCapabilities(ref this, out pmCapabilities);
		public HRESULT GetPolicies(out SYNCMGR_HANDLER_POLICIES pmPolicies) mut => VT.GetPolicies(ref this, out pmPolicies);
		public HRESULT Activate(BOOL fActivate) mut => VT.Activate(ref this, fActivate);
		public HRESULT Enable(BOOL fEnable) mut => VT.Enable(ref this, fEnable);
		public HRESULT Synchronize(PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ref ISyncMgrSessionCreator pSessionCreator, ref IUnknown punk) mut => VT.Synchronize(ref this, ppszItemIDs, cItems, hwndOwner, ref pSessionCreator, ref punk);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, out PWSTR ppszName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, out ISyncMgrHandlerInfo* ppHandlerInfo) GetHandlerInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, in Guid rguidObjectID, in Guid riid, void** ppv) GetObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, out SYNCMGR_HANDLER_CAPABILITIES pmCapabilities) GetCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, out SYNCMGR_HANDLER_POLICIES pmPolicies) GetPolicies;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, BOOL fActivate) Activate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, BOOL fEnable) Enable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandler self, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ref ISyncMgrSessionCreator pSessionCreator, ref IUnknown punk) Synchronize;
		}
	}
	[CRepr]
	public struct ISyncMgrHandlerInfo : IUnknown
	{
		public const new Guid IID = .(0x4ff1d798, 0xecf7, 0x4524, 0xaa, 0x81, 0x1e, 0x36, 0x2a, 0x0a, 0xef, 0x3a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ComGetType(out SYNCMGR_HANDLER_TYPE pnType) mut => VT.ComGetType(ref this, out pnType);
		public HRESULT GetTypeLabel(out PWSTR ppszTypeLabel) mut => VT.GetTypeLabel(ref this, out ppszTypeLabel);
		public HRESULT GetComment(out PWSTR ppszComment) mut => VT.GetComment(ref this, out ppszComment);
		public HRESULT GetLastSyncTime(out FILETIME pftLastSync) mut => VT.GetLastSyncTime(ref this, out pftLastSync);
		public HRESULT IsActive() mut => VT.IsActive(ref this);
		public HRESULT IsEnabled() mut => VT.IsEnabled(ref this);
		public HRESULT IsConnected() mut => VT.IsConnected(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self, out SYNCMGR_HANDLER_TYPE pnType) ComGetType;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self, out PWSTR ppszTypeLabel) GetTypeLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self, out PWSTR ppszComment) GetComment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self, out FILETIME pftLastSync) GetLastSyncTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self) IsActive;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self) IsEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrHandlerInfo self) IsConnected;
		}
	}
	[CRepr]
	public struct ISyncMgrSyncItemContainer : IUnknown
	{
		public const new Guid IID = .(0x90701133, 0xbe32, 0x4129, 0xa6, 0x5c, 0x99, 0xe6, 0x16, 0xca, 0xff, 0xf4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSyncItem(PWSTR pszItemID, out ISyncMgrSyncItem* ppItem) mut => VT.GetSyncItem(ref this, pszItemID, out ppItem);
		public HRESULT GetSyncItemEnumerator(out IEnumSyncMgrSyncItems* ppenum) mut => VT.GetSyncItemEnumerator(ref this, out ppenum);
		public HRESULT GetSyncItemCount(out uint32 pcItems) mut => VT.GetSyncItemCount(ref this, out pcItems);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemContainer self, PWSTR pszItemID, out ISyncMgrSyncItem* ppItem) GetSyncItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemContainer self, out IEnumSyncMgrSyncItems* ppenum) GetSyncItemEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemContainer self, out uint32 pcItems) GetSyncItemCount;
		}
	}
	[CRepr]
	public struct ISyncMgrSyncItem : IUnknown
	{
		public const new Guid IID = .(0xb20b24ce, 0x2593, 0x4f04, 0xbd, 0x8b, 0x7a, 0xd6, 0xc4, 0x50, 0x51, 0xcd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetItemID(out PWSTR ppszItemID) mut => VT.GetItemID(ref this, out ppszItemID);
		public HRESULT GetName(out PWSTR ppszName) mut => VT.GetName(ref this, out ppszName);
		public HRESULT GetItemInfo(out ISyncMgrSyncItemInfo* ppItemInfo) mut => VT.GetItemInfo(ref this, out ppItemInfo);
		public HRESULT GetObject(in Guid rguidObjectID, in Guid riid, void** ppv) mut => VT.GetObject(ref this, rguidObjectID, riid, ppv);
		public HRESULT GetCapabilities(out SYNCMGR_ITEM_CAPABILITIES pmCapabilities) mut => VT.GetCapabilities(ref this, out pmCapabilities);
		public HRESULT GetPolicies(out SYNCMGR_ITEM_POLICIES pmPolicies) mut => VT.GetPolicies(ref this, out pmPolicies);
		public HRESULT Enable(BOOL fEnable) mut => VT.Enable(ref this, fEnable);
		public HRESULT Delete() mut => VT.Delete(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, out PWSTR ppszItemID) GetItemID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, out PWSTR ppszName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, out ISyncMgrSyncItemInfo* ppItemInfo) GetItemInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, in Guid rguidObjectID, in Guid riid, void** ppv) GetObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, out SYNCMGR_ITEM_CAPABILITIES pmCapabilities) GetCapabilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, out SYNCMGR_ITEM_POLICIES pmPolicies) GetPolicies;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self, BOOL fEnable) Enable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItem self) Delete;
		}
	}
	[CRepr]
	public struct ISyncMgrSyncItemInfo : IUnknown
	{
		public const new Guid IID = .(0xe7fd9502, 0xbe0c, 0x4464, 0x90, 0xa1, 0x2b, 0x52, 0x77, 0x03, 0x12, 0x32);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetTypeLabel(out PWSTR ppszTypeLabel) mut => VT.GetTypeLabel(ref this, out ppszTypeLabel);
		public HRESULT GetComment(out PWSTR ppszComment) mut => VT.GetComment(ref this, out ppszComment);
		public HRESULT GetLastSyncTime(out FILETIME pftLastSync) mut => VT.GetLastSyncTime(ref this, out pftLastSync);
		public HRESULT IsEnabled() mut => VT.IsEnabled(ref this);
		public HRESULT IsConnected() mut => VT.IsConnected(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemInfo self, out PWSTR ppszTypeLabel) GetTypeLabel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemInfo self, out PWSTR ppszComment) GetComment;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemInfo self, out FILETIME pftLastSync) GetLastSyncTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemInfo self) IsEnabled;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncItemInfo self) IsConnected;
		}
	}
	[CRepr]
	public struct IEnumSyncMgrSyncItems : IUnknown
	{
		public const new Guid IID = .(0x54b3abf3, 0xf085, 0x4181, 0xb5, 0x46, 0xe2, 0x9c, 0x40, 0x3c, 0x72, 0x6b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, ISyncMgrSyncItem** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumSyncMgrSyncItems* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrSyncItems self, uint32 celt, ISyncMgrSyncItem** rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrSyncItems self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrSyncItems self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrSyncItems self, out IEnumSyncMgrSyncItems* ppenum) Clone;
		}
	}
	[CRepr]
	public struct ISyncMgrSessionCreator : IUnknown
	{
		public const new Guid IID = .(0x17f48517, 0xf305, 0x4321, 0xa0, 0x8d, 0xb2, 0x5a, 0x83, 0x49, 0x18, 0xfd);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateSession(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, out ISyncMgrSyncCallback* ppCallback) mut => VT.CreateSession(ref this, pszHandlerID, ppszItemIDs, cItems, out ppCallback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSessionCreator self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, out ISyncMgrSyncCallback* ppCallback) CreateSession;
		}
	}
	[CRepr]
	public struct ISyncMgrSyncCallback : IUnknown
	{
		public const new Guid IID = .(0x884ccd87, 0xb139, 0x4937, 0xa4, 0xba, 0x4f, 0x8e, 0x19, 0x51, 0x3f, 0xbe);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ReportProgress(PWSTR pszItemID, PWSTR pszProgressText, SYNCMGR_PROGRESS_STATUS nStatus, uint32 uCurrentStep, uint32 uMaxStep, out SYNCMGR_CANCEL_REQUEST pnCancelRequest) mut => VT.ReportProgress(ref this, pszItemID, pszProgressText, nStatus, uCurrentStep, uMaxStep, out pnCancelRequest);
		public HRESULT SetHandlerProgressText(PWSTR pszProgressText, out SYNCMGR_CANCEL_REQUEST pnCancelRequest) mut => VT.SetHandlerProgressText(ref this, pszProgressText, out pnCancelRequest);
		public HRESULT ReportEvent(PWSTR pszItemID, SYNCMGR_EVENT_LEVEL nLevel, SYNCMGR_EVENT_FLAGS nFlags, PWSTR pszName, PWSTR pszDescription, PWSTR pszLinkText, PWSTR pszLinkReference, PWSTR pszContext, out Guid pguidEventID) mut => VT.ReportEvent(ref this, pszItemID, nLevel, nFlags, pszName, pszDescription, pszLinkText, pszLinkReference, pszContext, out pguidEventID);
		public HRESULT CanContinue(PWSTR pszItemID) mut => VT.CanContinue(ref this, pszItemID);
		public HRESULT QueryForAdditionalItems(out IEnumString* ppenumItemIDs, out IEnumUnknown* ppenumPunks) mut => VT.QueryForAdditionalItems(ref this, out ppenumItemIDs, out ppenumPunks);
		public HRESULT AddItemToSession(PWSTR pszItemID) mut => VT.AddItemToSession(ref this, pszItemID);
		public HRESULT AddIUnknownToSession(ref IUnknown punk) mut => VT.AddIUnknownToSession(ref this, ref punk);
		public HRESULT ProposeItem(ref ISyncMgrSyncItem pNewItem) mut => VT.ProposeItem(ref this, ref pNewItem);
		public HRESULT CommitItem(PWSTR pszItemID) mut => VT.CommitItem(ref this, pszItemID);
		public HRESULT ReportManualSync() mut => VT.ReportManualSync(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszItemID, PWSTR pszProgressText, SYNCMGR_PROGRESS_STATUS nStatus, uint32 uCurrentStep, uint32 uMaxStep, out SYNCMGR_CANCEL_REQUEST pnCancelRequest) ReportProgress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszProgressText, out SYNCMGR_CANCEL_REQUEST pnCancelRequest) SetHandlerProgressText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszItemID, SYNCMGR_EVENT_LEVEL nLevel, SYNCMGR_EVENT_FLAGS nFlags, PWSTR pszName, PWSTR pszDescription, PWSTR pszLinkText, PWSTR pszLinkReference, PWSTR pszContext, out Guid pguidEventID) ReportEvent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszItemID) CanContinue;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, out IEnumString* ppenumItemIDs, out IEnumUnknown* ppenumPunks) QueryForAdditionalItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszItemID) AddItemToSession;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, ref IUnknown punk) AddIUnknownToSession;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, ref ISyncMgrSyncItem pNewItem) ProposeItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self, PWSTR pszItemID) CommitItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncCallback self) ReportManualSync;
		}
	}
	[CRepr]
	public struct ISyncMgrUIOperation : IUnknown
	{
		public const new Guid IID = .(0xfc7cfa47, 0xdfe1, 0x45b5, 0xa0, 0x49, 0x8c, 0xfd, 0x82, 0xbe, 0xc2, 0x71);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Run(HWND hwndOwner) mut => VT.Run(ref this, hwndOwner);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrUIOperation self, HWND hwndOwner) Run;
		}
	}
	[CRepr]
	public struct ISyncMgrEventLinkUIOperation : ISyncMgrUIOperation
	{
		public const new Guid IID = .(0x64522e52, 0x848b, 0x4015, 0x89, 0xce, 0x5a, 0x36, 0xf0, 0x0b, 0x94, 0xff);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Init(in Guid rguidEventID, ref ISyncMgrEvent pEvent) mut => VT.Init(ref this, rguidEventID, ref pEvent);

		[CRepr]
		public struct VTable : ISyncMgrUIOperation.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEventLinkUIOperation self, in Guid rguidEventID, ref ISyncMgrEvent pEvent) Init;
		}
	}
	[CRepr]
	public struct ISyncMgrScheduleWizardUIOperation : ISyncMgrUIOperation
	{
		public const new Guid IID = .(0x459a6c84, 0x21d2, 0x4ddc, 0x8a, 0x53, 0xf0, 0x23, 0xa4, 0x60, 0x66, 0xf2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT InitWizard(PWSTR pszHandlerID) mut => VT.InitWizard(ref this, pszHandlerID);

		[CRepr]
		public struct VTable : ISyncMgrUIOperation.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrScheduleWizardUIOperation self, PWSTR pszHandlerID) InitWizard;
		}
	}
	[CRepr]
	public struct ISyncMgrSyncResult : IUnknown
	{
		public const new Guid IID = .(0x2b90f17e, 0x5a3e, 0x4b33, 0xbb, 0x7f, 0x1b, 0xc4, 0x80, 0x56, 0xb9, 0x4d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Result(SYNCMGR_PROGRESS_STATUS nStatus, uint32 cError, uint32 cConflicts) mut => VT.Result(ref this, nStatus, cError, cConflicts);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSyncResult self, SYNCMGR_PROGRESS_STATUS nStatus, uint32 cError, uint32 cConflicts) Result;
		}
	}
	[CRepr]
	public struct ISyncMgrControl : IUnknown
	{
		public const new Guid IID = .(0x9b63616c, 0x36b2, 0x46bc, 0x95, 0x9f, 0xc1, 0x59, 0x39, 0x52, 0xd1, 0x9b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT StartHandlerSync(PWSTR pszHandlerID, HWND hwndOwner, ref IUnknown punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ref ISyncMgrSyncResult pResult) mut => VT.StartHandlerSync(ref this, pszHandlerID, hwndOwner, ref punk, nSyncControlFlags, ref pResult);
		public HRESULT StartItemSync(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ref IUnknown punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ref ISyncMgrSyncResult pResult) mut => VT.StartItemSync(ref this, pszHandlerID, ppszItemIDs, cItems, hwndOwner, ref punk, nSyncControlFlags, ref pResult);
		public HRESULT StartSyncAll(HWND hwndOwner) mut => VT.StartSyncAll(ref this, hwndOwner);
		public HRESULT StopHandlerSync(PWSTR pszHandlerID) mut => VT.StopHandlerSync(ref this, pszHandlerID);
		public HRESULT StopItemSync(PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems) mut => VT.StopItemSync(ref this, pszHandlerID, ppszItemIDs, cItems);
		public HRESULT StopSyncAll() mut => VT.StopSyncAll(ref this);
		public HRESULT UpdateHandlerCollection(in Guid rclsidCollectionID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.UpdateHandlerCollection(ref this, rclsidCollectionID, nControlFlags);
		public HRESULT UpdateHandler(PWSTR pszHandlerID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.UpdateHandler(ref this, pszHandlerID, nControlFlags);
		public HRESULT UpdateItem(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.UpdateItem(ref this, pszHandlerID, pszItemID, nControlFlags);
		public HRESULT UpdateEvents(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.UpdateEvents(ref this, pszHandlerID, pszItemID, nControlFlags);
		public HRESULT UpdateConflict(PWSTR pszHandlerID, PWSTR pszItemID, ref ISyncMgrConflict pConflict, SYNCMGR_UPDATE_REASON nReason) mut => VT.UpdateConflict(ref this, pszHandlerID, pszItemID, ref pConflict, nReason);
		public HRESULT UpdateConflicts(PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.UpdateConflicts(ref this, pszHandlerID, pszItemID, nControlFlags);
		public HRESULT ActivateHandler(BOOL fActivate, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.ActivateHandler(ref this, fActivate, pszHandlerID, hwndOwner, nControlFlags);
		public HRESULT EnableHandler(BOOL fEnable, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.EnableHandler(ref this, fEnable, pszHandlerID, hwndOwner, nControlFlags);
		public HRESULT EnableItem(BOOL fEnable, PWSTR pszHandlerID, PWSTR pszItemID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) mut => VT.EnableItem(ref this, fEnable, pszHandlerID, pszItemID, hwndOwner, nControlFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, HWND hwndOwner, ref IUnknown punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ref ISyncMgrSyncResult pResult) StartHandlerSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems, HWND hwndOwner, ref IUnknown punk, SYNCMGR_SYNC_CONTROL_FLAGS nSyncControlFlags, ref ISyncMgrSyncResult pResult) StartItemSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, HWND hwndOwner) StartSyncAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID) StopHandlerSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR* ppszItemIDs, uint32 cItems) StopItemSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self) StopSyncAll;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, in Guid rclsidCollectionID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateHandlerCollection;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateEvents;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR pszItemID, ref ISyncMgrConflict pConflict, SYNCMGR_UPDATE_REASON nReason) UpdateConflict;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, PWSTR pszHandlerID, PWSTR pszItemID, SYNCMGR_CONTROL_FLAGS nControlFlags) UpdateConflicts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, BOOL fActivate, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) ActivateHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, BOOL fEnable, PWSTR pszHandlerID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) EnableHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrControl self, BOOL fEnable, PWSTR pszHandlerID, PWSTR pszItemID, HWND hwndOwner, SYNCMGR_CONTROL_FLAGS nControlFlags) EnableItem;
		}
	}
	[CRepr]
	public struct ISyncMgrEventStore : IUnknown
	{
		public const new Guid IID = .(0x37e412f9, 0x016e, 0x44c2, 0x81, 0xff, 0xdb, 0x3a, 0xdd, 0x77, 0x42, 0x66);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEventEnumerator(out IEnumSyncMgrEvents* ppenum) mut => VT.GetEventEnumerator(ref this, out ppenum);
		public HRESULT GetEventCount(out uint32 pcEvents) mut => VT.GetEventCount(ref this, out pcEvents);
		public HRESULT GetEvent(in Guid rguidEventID, out ISyncMgrEvent* ppEvent) mut => VT.GetEvent(ref this, rguidEventID, out ppEvent);
		public HRESULT RemoveEvent(Guid* pguidEventIDs, uint32 cEvents) mut => VT.RemoveEvent(ref this, pguidEventIDs, cEvents);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEventStore self, out IEnumSyncMgrEvents* ppenum) GetEventEnumerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEventStore self, out uint32 pcEvents) GetEventCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEventStore self, in Guid rguidEventID, out ISyncMgrEvent* ppEvent) GetEvent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEventStore self, Guid* pguidEventIDs, uint32 cEvents) RemoveEvent;
		}
	}
	[CRepr]
	public struct ISyncMgrEvent : IUnknown
	{
		public const new Guid IID = .(0xfee0ef8b, 0x46bd, 0x4db4, 0xb7, 0xe6, 0xff, 0x2c, 0x68, 0x73, 0x13, 0xbc);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetEventID(out Guid pguidEventID) mut => VT.GetEventID(ref this, out pguidEventID);
		public HRESULT GetHandlerID(PWSTR* ppszHandlerID) mut => VT.GetHandlerID(ref this, ppszHandlerID);
		public HRESULT GetItemID(PWSTR* ppszItemID) mut => VT.GetItemID(ref this, ppszItemID);
		public HRESULT GetLevel(out SYNCMGR_EVENT_LEVEL pnLevel) mut => VT.GetLevel(ref this, out pnLevel);
		public HRESULT ComGetFlags(out SYNCMGR_EVENT_FLAGS pnFlags) mut => VT.ComGetFlags(ref this, out pnFlags);
		public HRESULT GetTime(out FILETIME pfCreationTime) mut => VT.GetTime(ref this, out pfCreationTime);
		public HRESULT GetName(PWSTR* ppszName) mut => VT.GetName(ref this, ppszName);
		public HRESULT GetDescription(PWSTR* ppszDescription) mut => VT.GetDescription(ref this, ppszDescription);
		public HRESULT GetLinkText(PWSTR* ppszLinkText) mut => VT.GetLinkText(ref this, ppszLinkText);
		public HRESULT GetLinkReference(PWSTR* ppszLinkReference) mut => VT.GetLinkReference(ref this, ppszLinkReference);
		public HRESULT GetContext(PWSTR* ppszContext) mut => VT.GetContext(ref this, ppszContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, out Guid pguidEventID) GetEventID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszHandlerID) GetHandlerID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszItemID) GetItemID;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, out SYNCMGR_EVENT_LEVEL pnLevel) GetLevel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, out SYNCMGR_EVENT_FLAGS pnFlags) ComGetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, out FILETIME pfCreationTime) GetTime;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszName) GetName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszDescription) GetDescription;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszLinkText) GetLinkText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszLinkReference) GetLinkReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEvent self, PWSTR* ppszContext) GetContext;
		}
	}
	[CRepr]
	public struct IEnumSyncMgrEvents : IUnknown
	{
		public const new Guid IID = .(0xc81a1d4e, 0x8cf7, 0x4683, 0x80, 0xe0, 0xbc, 0xae, 0x88, 0xd6, 0x77, 0xb6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, ISyncMgrEvent** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumSyncMgrEvents* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrEvents self, uint32 celt, ISyncMgrEvent** rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrEvents self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrEvents self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrEvents self, out IEnumSyncMgrEvents* ppenum) Clone;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictStore : IUnknown
	{
		public const new Guid IID = .(0xcf8fc579, 0xc396, 0x4774, 0x85, 0xf1, 0xd9, 0x08, 0xa8, 0x31, 0x15, 0x6e);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnumConflicts(PWSTR pszHandlerID, PWSTR pszItemID, out IEnumSyncMgrConflict* ppEnum) mut => VT.EnumConflicts(ref this, pszHandlerID, pszItemID, out ppEnum);
		public HRESULT BindToConflict(in SYNCMGR_CONFLICT_ID_INFO pConflictIdInfo, in Guid riid, void** ppv) mut => VT.BindToConflict(ref this, pConflictIdInfo, riid, ppv);
		public HRESULT RemoveConflicts(SYNCMGR_CONFLICT_ID_INFO* rgConflictIdInfo, uint32 cConflicts) mut => VT.RemoveConflicts(ref this, rgConflictIdInfo, cConflicts);
		public HRESULT GetCount(PWSTR pszHandlerID, PWSTR pszItemID, out uint32 pnConflicts) mut => VT.GetCount(ref this, pszHandlerID, pszItemID, out pnConflicts);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictStore self, PWSTR pszHandlerID, PWSTR pszItemID, out IEnumSyncMgrConflict* ppEnum) EnumConflicts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictStore self, in SYNCMGR_CONFLICT_ID_INFO pConflictIdInfo, in Guid riid, void** ppv) BindToConflict;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictStore self, SYNCMGR_CONFLICT_ID_INFO* rgConflictIdInfo, uint32 cConflicts) RemoveConflicts;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictStore self, PWSTR pszHandlerID, PWSTR pszItemID, out uint32 pnConflicts) GetCount;
		}
	}
	[CRepr]
	public struct IEnumSyncMgrConflict : IUnknown
	{
		public const new Guid IID = .(0x82705914, 0xdda3, 0x4893, 0xba, 0x99, 0x49, 0xde, 0x6c, 0x8c, 0x80, 0x36);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, ISyncMgrConflict** rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumSyncMgrConflict* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrConflict self, uint32 celt, ISyncMgrConflict** rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrConflict self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrConflict self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumSyncMgrConflict self, out IEnumSyncMgrConflict* ppenum) Clone;
		}
	}
	[CRepr]
	public struct ISyncMgrConflict : IUnknown
	{
		public const new Guid IID = .(0x9c204249, 0xc443, 0x4ba4, 0x85, 0xed, 0xc9, 0x72, 0x68, 0x1d, 0xb1, 0x37);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetProperty(in PROPERTYKEY propkey, out PROPVARIANT ppropvar) mut => VT.GetProperty(ref this, propkey, out ppropvar);
		public HRESULT GetConflictIdInfo(out SYNCMGR_CONFLICT_ID_INFO pConflictIdInfo) mut => VT.GetConflictIdInfo(ref this, out pConflictIdInfo);
		public HRESULT GetItemsArray(out ISyncMgrConflictItems* ppArray) mut => VT.GetItemsArray(ref this, out ppArray);
		public HRESULT Resolve(ref ISyncMgrConflictResolveInfo pResolveInfo) mut => VT.Resolve(ref this, ref pResolveInfo);
		public HRESULT GetResolutionHandler(in Guid riid, void** ppvResolutionHandler) mut => VT.GetResolutionHandler(ref this, riid, ppvResolutionHandler);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflict self, in PROPERTYKEY propkey, out PROPVARIANT ppropvar) GetProperty;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflict self, out SYNCMGR_CONFLICT_ID_INFO pConflictIdInfo) GetConflictIdInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflict self, out ISyncMgrConflictItems* ppArray) GetItemsArray;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflict self, ref ISyncMgrConflictResolveInfo pResolveInfo) Resolve;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflict self, in Guid riid, void** ppvResolutionHandler) GetResolutionHandler;
		}
	}
	[CRepr]
	public struct ISyncMgrResolutionHandler : IUnknown
	{
		public const new Guid IID = .(0x40a3d052, 0x8bff, 0x4c4b, 0xa3, 0x38, 0xd4, 0xa3, 0x95, 0x70, 0x0d, 0xe9);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryAbilities(out uint32 pdwAbilities) mut => VT.QueryAbilities(ref this, out pdwAbilities);
		public HRESULT KeepOther(ref IShellItem psiOther, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) mut => VT.KeepOther(ref this, ref psiOther, out pFeedback);
		public HRESULT KeepRecent(out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) mut => VT.KeepRecent(ref this, out pFeedback);
		public HRESULT RemoveFromSyncSet(out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) mut => VT.RemoveFromSyncSet(ref this, out pFeedback);
		public HRESULT KeepItems(ref ISyncMgrConflictResolutionItems pArray, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) mut => VT.KeepItems(ref this, ref pArray, out pFeedback);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrResolutionHandler self, out uint32 pdwAbilities) QueryAbilities;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrResolutionHandler self, ref IShellItem psiOther, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) KeepOther;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrResolutionHandler self, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) KeepRecent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrResolutionHandler self, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) RemoveFromSyncSet;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrResolutionHandler self, ref ISyncMgrConflictResolutionItems pArray, out SYNCMGR_RESOLUTION_FEEDBACK pFeedback) KeepItems;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictPresenter : IUnknown
	{
		public const new Guid IID = .(0x0b4f5353, 0xfd2b, 0x42cd, 0x87, 0x63, 0x47, 0x79, 0xf2, 0xd5, 0x08, 0xa3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PresentConflict(ref ISyncMgrConflict pConflict, ref ISyncMgrConflictResolveInfo pResolveInfo) mut => VT.PresentConflict(ref this, ref pConflict, ref pResolveInfo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictPresenter self, ref ISyncMgrConflict pConflict, ref ISyncMgrConflictResolveInfo pResolveInfo) PresentConflict;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictResolveInfo : IUnknown
	{
		public const new Guid IID = .(0xc405a219, 0x25a2, 0x442e, 0x87, 0x43, 0xb8, 0x45, 0xa2, 0xce, 0xe9, 0x3f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetIterationInfo(out uint32 pnCurrentConflict, out uint32 pcConflicts, out uint32 pcRemainingForApplyToAll) mut => VT.GetIterationInfo(ref this, out pnCurrentConflict, out pcConflicts, out pcRemainingForApplyToAll);
		public HRESULT GetPresenterNextStep(out SYNCMGR_PRESENTER_NEXT_STEP pnPresenterNextStep) mut => VT.GetPresenterNextStep(ref this, out pnPresenterNextStep);
		public HRESULT GetPresenterChoice(out SYNCMGR_PRESENTER_CHOICE pnPresenterChoice, out BOOL pfApplyToAll) mut => VT.GetPresenterChoice(ref this, out pnPresenterChoice, out pfApplyToAll);
		public HRESULT GetItemChoiceCount(out uint32 pcChoices) mut => VT.GetItemChoiceCount(ref this, out pcChoices);
		public HRESULT GetItemChoice(uint32 iChoice, out uint32 piChoiceIndex) mut => VT.GetItemChoice(ref this, iChoice, out piChoiceIndex);
		public HRESULT SetPresenterNextStep(SYNCMGR_PRESENTER_NEXT_STEP nPresenterNextStep) mut => VT.SetPresenterNextStep(ref this, nPresenterNextStep);
		public HRESULT SetPresenterChoice(SYNCMGR_PRESENTER_CHOICE nPresenterChoice, BOOL fApplyToAll) mut => VT.SetPresenterChoice(ref this, nPresenterChoice, fApplyToAll);
		public HRESULT SetItemChoices(out uint32 prgiConflictItemIndexes, uint32 cChoices) mut => VT.SetItemChoices(ref this, out prgiConflictItemIndexes, cChoices);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, out uint32 pnCurrentConflict, out uint32 pcConflicts, out uint32 pcRemainingForApplyToAll) GetIterationInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, out SYNCMGR_PRESENTER_NEXT_STEP pnPresenterNextStep) GetPresenterNextStep;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, out SYNCMGR_PRESENTER_CHOICE pnPresenterChoice, out BOOL pfApplyToAll) GetPresenterChoice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, out uint32 pcChoices) GetItemChoiceCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, uint32 iChoice, out uint32 piChoiceIndex) GetItemChoice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, SYNCMGR_PRESENTER_NEXT_STEP nPresenterNextStep) SetPresenterNextStep;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, SYNCMGR_PRESENTER_CHOICE nPresenterChoice, BOOL fApplyToAll) SetPresenterChoice;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolveInfo self, out uint32 prgiConflictItemIndexes, uint32 cChoices) SetItemChoices;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictFolder : IUnknown
	{
		public const new Guid IID = .(0x59287f5e, 0xbc81, 0x4fca, 0xa7, 0xf1, 0xe5, 0xa8, 0xec, 0xdb, 0x1d, 0x69);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetConflictIDList(ref ISyncMgrConflict pConflict, out ITEMIDLIST* ppidlConflict) mut => VT.GetConflictIDList(ref this, ref pConflict, out ppidlConflict);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictFolder self, ref ISyncMgrConflict pConflict, out ITEMIDLIST* ppidlConflict) GetConflictIDList;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictItems : IUnknown
	{
		public const new Guid IID = .(0x9c7ead52, 0x8023, 0x4936, 0xa4, 0xdb, 0xd2, 0xa9, 0xa9, 0x9e, 0x43, 0x6a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetItem(uint32 iIndex, out CONFIRM_CONFLICT_ITEM pItemInfo) mut => VT.GetItem(ref this, iIndex, out pItemInfo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictItems self, out uint32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictItems self, uint32 iIndex, out CONFIRM_CONFLICT_ITEM pItemInfo) GetItem;
		}
	}
	[CRepr]
	public struct ISyncMgrConflictResolutionItems : IUnknown
	{
		public const new Guid IID = .(0x458725b9, 0x129d, 0x4135, 0xa9, 0x98, 0x9c, 0xea, 0xfe, 0xc2, 0x70, 0x07);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetCount(out uint32 pCount) mut => VT.GetCount(ref this, out pCount);
		public HRESULT GetItem(uint32 iIndex, out CONFIRM_CONFLICT_RESULT_INFO pItemInfo) mut => VT.GetItem(ref this, iIndex, out pItemInfo);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolutionItems self, out uint32 pCount) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrConflictResolutionItems self, uint32 iIndex, out CONFIRM_CONFLICT_RESULT_INFO pItemInfo) GetItem;
		}
	}
	[CRepr]
	public struct IInputPanelConfiguration : IUnknown
	{
		public const new Guid IID = .(0x41c81592, 0x514c, 0x48bd, 0xa2, 0x2e, 0xe6, 0xaf, 0x63, 0x85, 0x21, 0xa6);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT EnableFocusTracking() mut => VT.EnableFocusTracking(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputPanelConfiguration self) EnableFocusTracking;
		}
	}
	[CRepr]
	public struct IInputPanelInvocationConfiguration : IUnknown
	{
		public const new Guid IID = .(0xa213f136, 0x3b45, 0x4362, 0xa3, 0x32, 0xef, 0xb6, 0x54, 0x7c, 0xd4, 0x32);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RequireTouchInEditControl() mut => VT.RequireTouchInEditControl(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputPanelInvocationConfiguration self) RequireTouchInEditControl;
		}
	}
	[CRepr]
	public struct ISharedBitmap : IUnknown
	{
		public const new Guid IID = .(0x091162a4, 0xbc96, 0x411f, 0xaa, 0xe8, 0xc5, 0x12, 0x2c, 0xd0, 0x33, 0x63);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetSharedBitmap(out HBITMAP phbm) mut => VT.GetSharedBitmap(ref this, out phbm);
		public HRESULT GetSize(out SIZE pSize) mut => VT.GetSize(ref this, out pSize);
		public HRESULT GetFormat(out WTS_ALPHATYPE pat) mut => VT.GetFormat(ref this, out pat);
		public HRESULT InitializeBitmap(HBITMAP hbm, WTS_ALPHATYPE wtsAT) mut => VT.InitializeBitmap(ref this, hbm, wtsAT);
		public HRESULT Detach(out HBITMAP phbm) mut => VT.Detach(ref this, out phbm);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedBitmap self, out HBITMAP phbm) GetSharedBitmap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedBitmap self, out SIZE pSize) GetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedBitmap self, out WTS_ALPHATYPE pat) GetFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedBitmap self, HBITMAP hbm, WTS_ALPHATYPE wtsAT) InitializeBitmap;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISharedBitmap self, out HBITMAP phbm) Detach;
		}
	}
	[CRepr]
	public struct IThumbnailCache : IUnknown
	{
		public const new Guid IID = .(0xf676c15d, 0x596a, 0x4ce2, 0x82, 0x34, 0x33, 0x99, 0x6f, 0x44, 0x5d, 0xb1);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetThumbnail(ref IShellItem pShellItem, uint32 cxyRequestedThumbSize, WTS_FLAGS flags, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags, WTS_THUMBNAILID* pThumbnailID) mut => VT.GetThumbnail(ref this, ref pShellItem, cxyRequestedThumbSize, flags, ppvThumb, pOutFlags, pThumbnailID);
		public HRESULT GetThumbnailByID(WTS_THUMBNAILID thumbnailID, uint32 cxyRequestedThumbSize, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags) mut => VT.GetThumbnailByID(ref this, thumbnailID, cxyRequestedThumbSize, ppvThumb, pOutFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailCache self, ref IShellItem pShellItem, uint32 cxyRequestedThumbSize, WTS_FLAGS flags, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags, WTS_THUMBNAILID* pThumbnailID) GetThumbnail;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailCache self, WTS_THUMBNAILID thumbnailID, uint32 cxyRequestedThumbSize, ISharedBitmap** ppvThumb, WTS_CACHEFLAGS* pOutFlags) GetThumbnailByID;
		}
	}
	[CRepr]
	public struct IThumbnailProvider : IUnknown
	{
		public const new Guid IID = .(0xe357fccd, 0xa995, 0x4576, 0xb0, 0x1f, 0x23, 0x46, 0x30, 0x15, 0x4e, 0x96);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetThumbnail(uint32 cx, out HBITMAP phbmp, out WTS_ALPHATYPE pdwAlpha) mut => VT.GetThumbnail(ref this, cx, out phbmp, out pdwAlpha);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailProvider self, uint32 cx, out HBITMAP phbmp, out WTS_ALPHATYPE pdwAlpha) GetThumbnail;
		}
	}
	[CRepr]
	public struct IThumbnailSettings : IUnknown
	{
		public const new Guid IID = .(0xf4376f00, 0xbef5, 0x4d45, 0x80, 0xf3, 0x1e, 0x02, 0x3b, 0xbf, 0x12, 0x09);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetContext(WTS_CONTEXTFLAGS dwContext) mut => VT.SetContext(ref this, dwContext);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailSettings self, WTS_CONTEXTFLAGS dwContext) SetContext;
		}
	}
	[CRepr]
	public struct IThumbnailCachePrimer : IUnknown
	{
		public const new Guid IID = .(0x0f03f8fe, 0x2b26, 0x46f0, 0x96, 0x5a, 0x21, 0x2a, 0xa8, 0xd6, 0x6b, 0x76);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT PageInThumbnail(ref IShellItem psi, WTS_FLAGS wtsFlags, uint32 cxyRequestedThumbSize) mut => VT.PageInThumbnail(ref this, ref psi, wtsFlags, cxyRequestedThumbSize);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailCachePrimer self, ref IShellItem psi, WTS_FLAGS wtsFlags, uint32 cxyRequestedThumbSize) PageInThumbnail;
		}
	}
	[CRepr]
	public struct IShellImageDataFactory : IUnknown
	{
		public const new Guid IID = .(0x9be8ed5c, 0xedab, 0x4d75, 0x90, 0xf3, 0xbd, 0x5b, 0xdb, 0xb2, 0x1c, 0x82);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateIShellImageData(IShellImageData** ppshimg) mut => VT.CreateIShellImageData(ref this, ppshimg);
		public HRESULT CreateImageFromFile(PWSTR pszPath, IShellImageData** ppshimg) mut => VT.CreateImageFromFile(ref this, pszPath, ppshimg);
		public HRESULT CreateImageFromStream(IStream* pStream, IShellImageData** ppshimg) mut => VT.CreateImageFromStream(ref this, pStream, ppshimg);
		public HRESULT GetDataFormatFromPath(PWSTR pszPath, out Guid pDataFormat) mut => VT.GetDataFormatFromPath(ref this, pszPath, out pDataFormat);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageDataFactory self, IShellImageData** ppshimg) CreateIShellImageData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageDataFactory self, PWSTR pszPath, IShellImageData** ppshimg) CreateImageFromFile;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageDataFactory self, IStream* pStream, IShellImageData** ppshimg) CreateImageFromStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageDataFactory self, PWSTR pszPath, out Guid pDataFormat) GetDataFormatFromPath;
		}
	}
	[CRepr]
	public struct IShellImageData : IUnknown
	{
		public const new Guid IID = .(0xbfdeec12, 0x8040, 0x4403, 0xa5, 0xea, 0x9e, 0x07, 0xda, 0xfc, 0xf5, 0x30);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Decode(uint32 dwFlags, uint32 cxDesired, uint32 cyDesired) mut => VT.Decode(ref this, dwFlags, cxDesired, cyDesired);
		public HRESULT Draw(HDC hdc, out RECT prcDest, out RECT prcSrc) mut => VT.Draw(ref this, hdc, out prcDest, out prcSrc);
		public HRESULT NextFrame() mut => VT.NextFrame(ref this);
		public HRESULT NextPage() mut => VT.NextPage(ref this);
		public HRESULT PrevPage() mut => VT.PrevPage(ref this);
		public HRESULT IsTransparent() mut => VT.IsTransparent(ref this);
		public HRESULT IsAnimated() mut => VT.IsAnimated(ref this);
		public HRESULT IsVector() mut => VT.IsVector(ref this);
		public HRESULT IsMultipage() mut => VT.IsMultipage(ref this);
		public HRESULT IsEditable() mut => VT.IsEditable(ref this);
		public HRESULT IsPrintable() mut => VT.IsPrintable(ref this);
		public HRESULT IsDecoded() mut => VT.IsDecoded(ref this);
		public HRESULT GetCurrentPage(out uint32 pnPage) mut => VT.GetCurrentPage(ref this, out pnPage);
		public HRESULT GetPageCount(out uint32 pcPages) mut => VT.GetPageCount(ref this, out pcPages);
		public HRESULT SelectPage(uint32 iPage) mut => VT.SelectPage(ref this, iPage);
		public HRESULT GetSize(out SIZE pSize) mut => VT.GetSize(ref this, out pSize);
		public HRESULT GetRawDataFormat(out Guid pDataFormat) mut => VT.GetRawDataFormat(ref this, out pDataFormat);
		public HRESULT GetPixelFormat(out uint32 pFormat) mut => VT.GetPixelFormat(ref this, out pFormat);
		public HRESULT GetDelay(out uint32 pdwDelay) mut => VT.GetDelay(ref this, out pdwDelay);
		public HRESULT GetProperties(uint32 dwMode, out IPropertySetStorage* ppPropSet) mut => VT.GetProperties(ref this, dwMode, out ppPropSet);
		public HRESULT Rotate(uint32 dwAngle) mut => VT.Rotate(ref this, dwAngle);
		public HRESULT Scale(uint32 cx, uint32 cy, uint32 hints) mut => VT.Scale(ref this, cx, cy, hints);
		public HRESULT DiscardEdit() mut => VT.DiscardEdit(ref this);
		public HRESULT SetEncoderParams(ref IPropertyBag pbagEnc) mut => VT.SetEncoderParams(ref this, ref pbagEnc);
		public HRESULT DisplayName(PWSTR wszName, uint32 cch) mut => VT.DisplayName(ref this, wszName, cch);
		public HRESULT GetResolution(out uint32 puResolutionX, out uint32 puResolutionY) mut => VT.GetResolution(ref this, out puResolutionX, out puResolutionY);
		public HRESULT GetEncoderParams(out Guid pguidFmt, out uint8* ppEncParams) mut => VT.GetEncoderParams(ref this, out pguidFmt, out ppEncParams);
		public HRESULT RegisterAbort(ref IShellImageDataAbort pAbort, out IShellImageDataAbort* ppAbortPrev) mut => VT.RegisterAbort(ref this, ref pAbort, out ppAbortPrev);
		public HRESULT CloneFrame(out uint8* ppImg) mut => VT.CloneFrame(ref this, out ppImg);
		public HRESULT ReplaceFrame(out uint8 pImg) mut => VT.ReplaceFrame(ref this, out pImg);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, uint32 dwFlags, uint32 cxDesired, uint32 cyDesired) Decode;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, HDC hdc, out RECT prcDest, out RECT prcSrc) Draw;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) NextFrame;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) NextPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) PrevPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsTransparent;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsAnimated;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsVector;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsMultipage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsEditable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsPrintable;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) IsDecoded;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint32 pnPage) GetCurrentPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint32 pcPages) GetPageCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, uint32 iPage) SelectPage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out SIZE pSize) GetSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out Guid pDataFormat) GetRawDataFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint32 pFormat) GetPixelFormat;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint32 pdwDelay) GetDelay;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, uint32 dwMode, out IPropertySetStorage* ppPropSet) GetProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, uint32 dwAngle) Rotate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, uint32 cx, uint32 cy, uint32 hints) Scale;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self) DiscardEdit;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, ref IPropertyBag pbagEnc) SetEncoderParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, PWSTR wszName, uint32 cch) DisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint32 puResolutionX, out uint32 puResolutionY) GetResolution;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out Guid pguidFmt, out uint8* ppEncParams) GetEncoderParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, ref IShellImageDataAbort pAbort, out IShellImageDataAbort* ppAbortPrev) RegisterAbort;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint8* ppImg) CloneFrame;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageData self, out uint8 pImg) ReplaceFrame;
		}
	}
	[CRepr]
	public struct IShellImageDataAbort : IUnknown
	{
		public const new Guid IID = .(0x53fb8e58, 0x50c0, 0x4003, 0xb4, 0xaa, 0x0c, 0x8d, 0xf2, 0x8e, 0x7f, 0x3a);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryAbort() mut => VT.QueryAbort(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellImageDataAbort self) QueryAbort;
		}
	}
	[CRepr]
	public struct IStorageProviderPropertyHandler : IUnknown
	{
		public const new Guid IID = .(0x301dfbe5, 0x524c, 0x4b0f, 0x8b, 0x2d, 0x21, 0xc4, 0x0b, 0x3a, 0x29, 0x88);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RetrieveProperties(PROPERTYKEY* propertiesToRetrieve, uint32 propertiesToRetrieveCount, out IPropertyStore* retrievedProperties) mut => VT.RetrieveProperties(ref this, propertiesToRetrieve, propertiesToRetrieveCount, out retrievedProperties);
		public HRESULT SaveProperties(ref IPropertyStore propertiesToSave) mut => VT.SaveProperties(ref this, ref propertiesToSave);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderPropertyHandler self, PROPERTYKEY* propertiesToRetrieve, uint32 propertiesToRetrieveCount, out IPropertyStore* retrievedProperties) RetrieveProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderPropertyHandler self, ref IPropertyStore propertiesToSave) SaveProperties;
		}
	}
	[CRepr]
	public struct IStorageProviderHandler : IUnknown
	{
		public const new Guid IID = .(0x162c6fb5, 0x44d3, 0x435b, 0x90, 0x3d, 0xe6, 0x13, 0xfa, 0x09, 0x3f, 0xb5);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetPropertyHandlerFromPath(PWSTR path, out IStorageProviderPropertyHandler* propertyHandler) mut => VT.GetPropertyHandlerFromPath(ref this, path, out propertyHandler);
		public HRESULT GetPropertyHandlerFromUri(PWSTR uri, out IStorageProviderPropertyHandler* propertyHandler) mut => VT.GetPropertyHandlerFromUri(ref this, uri, out propertyHandler);
		public HRESULT GetPropertyHandlerFromFileId(PWSTR fileId, out IStorageProviderPropertyHandler* propertyHandler) mut => VT.GetPropertyHandlerFromFileId(ref this, fileId, out propertyHandler);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderHandler self, PWSTR path, out IStorageProviderPropertyHandler* propertyHandler) GetPropertyHandlerFromPath;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderHandler self, PWSTR uri, out IStorageProviderPropertyHandler* propertyHandler) GetPropertyHandlerFromUri;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IStorageProviderHandler self, PWSTR fileId, out IStorageProviderPropertyHandler* propertyHandler) GetPropertyHandlerFromFileId;
		}
	}
	[CRepr]
	public struct ISyncMgrSynchronizeCallback : IUnknown
	{
		public const new Guid IID = .(0x6295df41, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ShowPropertiesCompleted(HRESULT hr) mut => VT.ShowPropertiesCompleted(ref this, hr);
		public HRESULT PrepareForSyncCompleted(HRESULT hr) mut => VT.PrepareForSyncCompleted(ref this, hr);
		public HRESULT SynchronizeCompleted(HRESULT hr) mut => VT.SynchronizeCompleted(ref this, hr);
		public HRESULT ShowErrorCompleted(HRESULT hr, uint32 cItems, Guid* pItemIDs) mut => VT.ShowErrorCompleted(ref this, hr, cItems, pItemIDs);
		public HRESULT EnableModeless(BOOL fEnable) mut => VT.EnableModeless(ref this, fEnable);
		public HRESULT Progress(in Guid ItemID, in SYNCMGRPROGRESSITEM pSyncProgressItem) mut => VT.Progress(ref this, ItemID, pSyncProgressItem);
		public HRESULT LogError(uint32 dwErrorLevel, PWSTR pszErrorText, in SYNCMGRLOGERRORINFO pSyncLogError) mut => VT.LogError(ref this, dwErrorLevel, pszErrorText, pSyncLogError);
		public HRESULT DeleteLogError(in Guid ErrorID, uint32 dwReserved) mut => VT.DeleteLogError(ref this, ErrorID, dwReserved);
		public HRESULT EstablishConnection(PWSTR pwszConnection, uint32 dwReserved) mut => VT.EstablishConnection(ref this, pwszConnection, dwReserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, HRESULT hr) ShowPropertiesCompleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, HRESULT hr) PrepareForSyncCompleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, HRESULT hr) SynchronizeCompleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, HRESULT hr, uint32 cItems, Guid* pItemIDs) ShowErrorCompleted;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, BOOL fEnable) EnableModeless;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, in Guid ItemID, in SYNCMGRPROGRESSITEM pSyncProgressItem) Progress;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, uint32 dwErrorLevel, PWSTR pszErrorText, in SYNCMGRLOGERRORINFO pSyncLogError) LogError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, in Guid ErrorID, uint32 dwReserved) DeleteLogError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeCallback self, PWSTR pwszConnection, uint32 dwReserved) EstablishConnection;
		}
	}
	[CRepr]
	public struct ISyncMgrEnumItems : IUnknown
	{
		public const new Guid IID = .(0x6295df2a, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, SYNCMGRITEM* rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out ISyncMgrEnumItems* ppenum) mut => VT.Clone(ref this, out ppenum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEnumItems self, uint32 celt, SYNCMGRITEM* rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEnumItems self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEnumItems self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrEnumItems self, out ISyncMgrEnumItems* ppenum) Clone;
		}
	}
	[CRepr]
	public struct ISyncMgrSynchronize : IUnknown
	{
		public const new Guid IID = .(0x6295df40, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Initialize(uint32 dwReserved, uint32 dwSyncMgrFlags, uint32 cbCookie, uint8* lpCookie) mut => VT.Initialize(ref this, dwReserved, dwSyncMgrFlags, cbCookie, lpCookie);
		public HRESULT GetHandlerInfo(out SYNCMGRHANDLERINFO* ppSyncMgrHandlerInfo) mut => VT.GetHandlerInfo(ref this, out ppSyncMgrHandlerInfo);
		public HRESULT EnumSyncMgrItems(out ISyncMgrEnumItems* ppSyncMgrEnumItems) mut => VT.EnumSyncMgrItems(ref this, out ppSyncMgrEnumItems);
		public HRESULT GetItemObject(in Guid ItemID, in Guid riid, void** ppv) mut => VT.GetItemObject(ref this, ItemID, riid, ppv);
		public HRESULT ShowProperties(HWND hWndParent, in Guid ItemID) mut => VT.ShowProperties(ref this, hWndParent, ItemID);
		public HRESULT SetProgressCallback(ref ISyncMgrSynchronizeCallback lpCallBack) mut => VT.SetProgressCallback(ref this, ref lpCallBack);
		public HRESULT PrepareForSync(uint32 cbNumItems, Guid* pItemIDs, HWND hWndParent, uint32 dwReserved) mut => VT.PrepareForSync(ref this, cbNumItems, pItemIDs, hWndParent, dwReserved);
		public HRESULT Synchronize(HWND hWndParent) mut => VT.Synchronize(ref this, hWndParent);
		public HRESULT SetItemStatus(in Guid pItemID, uint32 dwSyncMgrStatus) mut => VT.SetItemStatus(ref this, pItemID, dwSyncMgrStatus);
		public HRESULT ShowError(HWND hWndParent, in Guid ErrorID) mut => VT.ShowError(ref this, hWndParent, ErrorID);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, uint32 dwReserved, uint32 dwSyncMgrFlags, uint32 cbCookie, uint8* lpCookie) Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, out SYNCMGRHANDLERINFO* ppSyncMgrHandlerInfo) GetHandlerInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, out ISyncMgrEnumItems* ppSyncMgrEnumItems) EnumSyncMgrItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, in Guid ItemID, in Guid riid, void** ppv) GetItemObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, HWND hWndParent, in Guid ItemID) ShowProperties;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, ref ISyncMgrSynchronizeCallback lpCallBack) SetProgressCallback;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, uint32 cbNumItems, Guid* pItemIDs, HWND hWndParent, uint32 dwReserved) PrepareForSync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, HWND hWndParent) Synchronize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, in Guid pItemID, uint32 dwSyncMgrStatus) SetItemStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronize self, HWND hWndParent, in Guid ErrorID) ShowError;
		}
	}
	[CRepr]
	public struct ISyncMgrSynchronizeInvoke : IUnknown
	{
		public const new Guid IID = .(0x6295df2c, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT UpdateItems(uint32 dwInvokeFlags, in Guid clsid, uint32 cbCookie, uint8* pCookie) mut => VT.UpdateItems(ref this, dwInvokeFlags, clsid, cbCookie, pCookie);
		public HRESULT UpdateAll() mut => VT.UpdateAll(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeInvoke self, uint32 dwInvokeFlags, in Guid clsid, uint32 cbCookie, uint8* pCookie) UpdateItems;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrSynchronizeInvoke self) UpdateAll;
		}
	}
	[CRepr]
	public struct ISyncMgrRegister : IUnknown
	{
		public const new Guid IID = .(0x6295df42, 0x35ee, 0x11d1, 0x87, 0x07, 0x00, 0xc0, 0x4f, 0xd9, 0x33, 0x27);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT RegisterSyncMgrHandler(in Guid clsidHandler, PWSTR pwszDescription, uint32 dwSyncMgrRegisterFlags) mut => VT.RegisterSyncMgrHandler(ref this, clsidHandler, pwszDescription, dwSyncMgrRegisterFlags);
		public HRESULT UnregisterSyncMgrHandler(in Guid clsidHandler, uint32 dwReserved) mut => VT.UnregisterSyncMgrHandler(ref this, clsidHandler, dwReserved);
		public HRESULT GetHandlerRegistrationInfo(in Guid clsidHandler, out uint32 pdwSyncMgrRegisterFlags) mut => VT.GetHandlerRegistrationInfo(ref this, clsidHandler, out pdwSyncMgrRegisterFlags);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrRegister self, in Guid clsidHandler, PWSTR pwszDescription, uint32 dwSyncMgrRegisterFlags) RegisterSyncMgrHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrRegister self, in Guid clsidHandler, uint32 dwReserved) UnregisterSyncMgrHandler;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ISyncMgrRegister self, in Guid clsidHandler, out uint32 pdwSyncMgrRegisterFlags) GetHandlerRegistrationInfo;
		}
	}
	[CRepr]
	public struct IThumbnailStreamCache : IUnknown
	{
		public const new Guid IID = .(0x90e11430, 0x9569, 0x41d8, 0xae, 0x75, 0x6d, 0x4d, 0x2a, 0xe7, 0xcc, 0xa0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetThumbnailStream(PWSTR path, uint64 cacheId, ThumbnailStreamCacheOptions options, uint32 requestedThumbnailSize, out SIZE thumbnailSize, out IStream* thumbnailStream) mut => VT.GetThumbnailStream(ref this, path, cacheId, options, requestedThumbnailSize, out thumbnailSize, out thumbnailStream);
		public HRESULT SetThumbnailStream(PWSTR path, uint64 cacheId, SIZE thumbnailSize, ref IStream thumbnailStream) mut => VT.SetThumbnailStream(ref this, path, cacheId, thumbnailSize, ref thumbnailStream);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailStreamCache self, PWSTR path, uint64 cacheId, ThumbnailStreamCacheOptions options, uint32 requestedThumbnailSize, out SIZE thumbnailSize, out IStream* thumbnailStream) GetThumbnailStream;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IThumbnailStreamCache self, PWSTR path, uint64 cacheId, SIZE thumbnailSize, ref IStream thumbnailStream) SetThumbnailStream;
		}
	}
	[CRepr]
	public struct ITravelLogEntry : IUnknown
	{
		public const new Guid IID = .(0x7ebfdd87, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetTitle(out PWSTR ppszTitle) mut => VT.GetTitle(ref this, out ppszTitle);
		public HRESULT GetURL(out PWSTR ppszURL) mut => VT.GetURL(ref this, out ppszURL);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogEntry self, out PWSTR ppszTitle) GetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogEntry self, out PWSTR ppszURL) GetURL;
		}
	}
	[CRepr]
	public struct ITravelLogClient : IUnknown
	{
		public const new Guid IID = .(0x241c033e, 0xe659, 0x43da, 0xaa, 0x4d, 0x40, 0x86, 0xdb, 0xc4, 0x75, 0x8d);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FindWindowByIndex(uint32 dwID, out IUnknown* ppunk) mut => VT.FindWindowByIndex(ref this, dwID, out ppunk);
		public HRESULT GetWindowData(ref IStream pStream, out WINDOWDATA pWinData) mut => VT.GetWindowData(ref this, ref pStream, out pWinData);
		public HRESULT LoadHistoryPosition(PWSTR pszUrlLocation, uint32 dwPosition) mut => VT.LoadHistoryPosition(ref this, pszUrlLocation, dwPosition);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogClient self, uint32 dwID, out IUnknown* ppunk) FindWindowByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogClient self, ref IStream pStream, out WINDOWDATA pWinData) GetWindowData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogClient self, PWSTR pszUrlLocation, uint32 dwPosition) LoadHistoryPosition;
		}
	}
	[CRepr]
	public struct IEnumTravelLogEntry : IUnknown
	{
		public const new Guid IID = .(0x7ebfdd85, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 cElt, ITravelLogEntry** rgElt, out uint32 pcEltFetched) mut => VT.Next(ref this, cElt, rgElt, out pcEltFetched);
		public HRESULT Skip(uint32 cElt) mut => VT.Skip(ref this, cElt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumTravelLogEntry* ppEnum) mut => VT.Clone(ref this, out ppEnum);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTravelLogEntry self, uint32 cElt, ITravelLogEntry** rgElt, out uint32 pcEltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTravelLogEntry self, uint32 cElt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTravelLogEntry self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumTravelLogEntry self, out IEnumTravelLogEntry* ppEnum) Clone;
		}
	}
	[CRepr]
	public struct ITravelLogStg : IUnknown
	{
		public const new Guid IID = .(0x7ebfdd80, 0xad18, 0x11d3, 0xa4, 0xc5, 0x00, 0xc0, 0x4f, 0x72, 0xd6, 0xb8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT CreateEntry(PWSTR pszUrl, PWSTR pszTitle, ref ITravelLogEntry ptleRelativeTo, BOOL fPrepend, out ITravelLogEntry* pptle) mut => VT.CreateEntry(ref this, pszUrl, pszTitle, ref ptleRelativeTo, fPrepend, out pptle);
		public HRESULT TravelTo(ref ITravelLogEntry ptle) mut => VT.TravelTo(ref this, ref ptle);
		public HRESULT EnumEntries(TLENUMF flags, out IEnumTravelLogEntry* ppenum) mut => VT.EnumEntries(ref this, flags, out ppenum);
		public HRESULT FindEntries(TLENUMF flags, PWSTR pszUrl, out IEnumTravelLogEntry* ppenum) mut => VT.FindEntries(ref this, flags, pszUrl, out ppenum);
		public HRESULT GetCount(TLENUMF flags, out uint32 pcEntries) mut => VT.GetCount(ref this, flags, out pcEntries);
		public HRESULT RemoveEntry(ref ITravelLogEntry ptle) mut => VT.RemoveEntry(ref this, ref ptle);
		public HRESULT GetRelativeEntry(int32 iOffset, out ITravelLogEntry* ptle) mut => VT.GetRelativeEntry(ref this, iOffset, out ptle);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, PWSTR pszUrl, PWSTR pszTitle, ref ITravelLogEntry ptleRelativeTo, BOOL fPrepend, out ITravelLogEntry* pptle) CreateEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, ref ITravelLogEntry ptle) TravelTo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, TLENUMF flags, out IEnumTravelLogEntry* ppenum) EnumEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, TLENUMF flags, PWSTR pszUrl, out IEnumTravelLogEntry* ppenum) FindEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, TLENUMF flags, out uint32 pcEntries) GetCount;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, ref ITravelLogEntry ptle) RemoveEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLogStg self, int32 iOffset, out ITravelLogEntry* ptle) GetRelativeEntry;
		}
	}
	[CRepr]
	public struct IHlink : IUnknown
	{
		public const new Guid IID = .(0x79eac9c3, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetHlinkSite(ref IHlinkSite pihlSite, uint32 dwSiteData) mut => VT.SetHlinkSite(ref this, ref pihlSite, dwSiteData);
		public HRESULT GetHlinkSite(out IHlinkSite* ppihlSite, out uint32 pdwSiteData) mut => VT.GetHlinkSite(ref this, out ppihlSite, out pdwSiteData);
		public HRESULT SetMonikerReference(uint32 grfHLSETF, ref IMoniker pimkTarget, PWSTR pwzLocation) mut => VT.SetMonikerReference(ref this, grfHLSETF, ref pimkTarget, pwzLocation);
		public HRESULT GetMonikerReference(uint32 dwWhichRef, IMoniker** ppimkTarget, PWSTR* ppwzLocation) mut => VT.GetMonikerReference(ref this, dwWhichRef, ppimkTarget, ppwzLocation);
		public HRESULT SetStringReference(uint32 grfHLSETF, PWSTR pwzTarget, PWSTR pwzLocation) mut => VT.SetStringReference(ref this, grfHLSETF, pwzTarget, pwzLocation);
		public HRESULT GetStringReference(uint32 dwWhichRef, PWSTR* ppwzTarget, PWSTR* ppwzLocation) mut => VT.GetStringReference(ref this, dwWhichRef, ppwzTarget, ppwzLocation);
		public HRESULT SetFriendlyName(PWSTR pwzFriendlyName) mut => VT.SetFriendlyName(ref this, pwzFriendlyName);
		public HRESULT GetFriendlyName(uint32 grfHLFNAMEF, out PWSTR ppwzFriendlyName) mut => VT.GetFriendlyName(ref this, grfHLFNAMEF, out ppwzFriendlyName);
		public HRESULT SetTargetFrameName(PWSTR pwzTargetFrameName) mut => VT.SetTargetFrameName(ref this, pwzTargetFrameName);
		public HRESULT GetTargetFrameName(out PWSTR ppwzTargetFrameName) mut => VT.GetTargetFrameName(ref this, out ppwzTargetFrameName);
		public HRESULT GetMiscStatus(out uint32 pdwStatus) mut => VT.GetMiscStatus(ref this, out pdwStatus);
		public HRESULT Navigate(uint32 grfHLNF, ref IBindCtx pibc, ref IBindStatusCallback pibsc, ref IHlinkBrowseContext pihlbc) mut => VT.Navigate(ref this, grfHLNF, ref pibc, ref pibsc, ref pihlbc);
		public HRESULT SetAdditionalParams(PWSTR pwzAdditionalParams) mut => VT.SetAdditionalParams(ref this, pwzAdditionalParams);
		public HRESULT GetAdditionalParams(out PWSTR ppwzAdditionalParams) mut => VT.GetAdditionalParams(ref this, out ppwzAdditionalParams);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, ref IHlinkSite pihlSite, uint32 dwSiteData) SetHlinkSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, out IHlinkSite* ppihlSite, out uint32 pdwSiteData) GetHlinkSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 grfHLSETF, ref IMoniker pimkTarget, PWSTR pwzLocation) SetMonikerReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 dwWhichRef, IMoniker** ppimkTarget, PWSTR* ppwzLocation) GetMonikerReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 grfHLSETF, PWSTR pwzTarget, PWSTR pwzLocation) SetStringReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 dwWhichRef, PWSTR* ppwzTarget, PWSTR* ppwzLocation) GetStringReference;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, PWSTR pwzFriendlyName) SetFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 grfHLFNAMEF, out PWSTR ppwzFriendlyName) GetFriendlyName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, PWSTR pwzTargetFrameName) SetTargetFrameName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, out PWSTR ppwzTargetFrameName) GetTargetFrameName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, out uint32 pdwStatus) GetMiscStatus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, uint32 grfHLNF, ref IBindCtx pibc, ref IBindStatusCallback pibsc, ref IHlinkBrowseContext pihlbc) Navigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, PWSTR pwzAdditionalParams) SetAdditionalParams;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlink self, out PWSTR ppwzAdditionalParams) GetAdditionalParams;
		}
	}
	[CRepr]
	public struct IHlinkSite : IUnknown
	{
		public const new Guid IID = .(0x79eac9c2, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT QueryService(uint32 dwSiteData, in Guid guidService, in Guid riid, out IUnknown* ppiunk) mut => VT.QueryService(ref this, dwSiteData, guidService, riid, out ppiunk);
		public HRESULT GetMoniker(uint32 dwSiteData, uint32 dwAssign, uint32 dwWhich, out IMoniker* ppimk) mut => VT.GetMoniker(ref this, dwSiteData, dwAssign, dwWhich, out ppimk);
		public HRESULT ReadyToNavigate(uint32 dwSiteData, uint32 dwReserved) mut => VT.ReadyToNavigate(ref this, dwSiteData, dwReserved);
		public HRESULT OnNavigationComplete(uint32 dwSiteData, uint32 dwreserved, HRESULT hrError, PWSTR pwzError) mut => VT.OnNavigationComplete(ref this, dwSiteData, dwreserved, hrError, pwzError);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkSite self, uint32 dwSiteData, in Guid guidService, in Guid riid, out IUnknown* ppiunk) QueryService;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkSite self, uint32 dwSiteData, uint32 dwAssign, uint32 dwWhich, out IMoniker* ppimk) GetMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkSite self, uint32 dwSiteData, uint32 dwReserved) ReadyToNavigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkSite self, uint32 dwSiteData, uint32 dwreserved, HRESULT hrError, PWSTR pwzError) OnNavigationComplete;
		}
	}
	[CRepr]
	public struct IHlinkTarget : IUnknown
	{
		public const new Guid IID = .(0x79eac9c4, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBrowseContext(ref IHlinkBrowseContext pihlbc) mut => VT.SetBrowseContext(ref this, ref pihlbc);
		public HRESULT GetBrowseContext(out IHlinkBrowseContext* ppihlbc) mut => VT.GetBrowseContext(ref this, out ppihlbc);
		public HRESULT Navigate(uint32 grfHLNF, PWSTR pwzJumpLocation) mut => VT.Navigate(ref this, grfHLNF, pwzJumpLocation);
		public HRESULT GetMoniker(PWSTR pwzLocation, uint32 dwAssign, out IMoniker* ppimkLocation) mut => VT.GetMoniker(ref this, pwzLocation, dwAssign, out ppimkLocation);
		public HRESULT GetFriendlyName(PWSTR pwzLocation, out PWSTR ppwzFriendlyName) mut => VT.GetFriendlyName(ref this, pwzLocation, out ppwzFriendlyName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkTarget self, ref IHlinkBrowseContext pihlbc) SetBrowseContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkTarget self, out IHlinkBrowseContext* ppihlbc) GetBrowseContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkTarget self, uint32 grfHLNF, PWSTR pwzJumpLocation) Navigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkTarget self, PWSTR pwzLocation, uint32 dwAssign, out IMoniker* ppimkLocation) GetMoniker;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkTarget self, PWSTR pwzLocation, out PWSTR ppwzFriendlyName) GetFriendlyName;
		}
	}
	[CRepr]
	public struct IHlinkFrame : IUnknown
	{
		public const new Guid IID = .(0x79eac9c5, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetBrowseContext(ref IHlinkBrowseContext pihlbc) mut => VT.SetBrowseContext(ref this, ref pihlbc);
		public HRESULT GetBrowseContext(out IHlinkBrowseContext* ppihlbc) mut => VT.GetBrowseContext(ref this, out ppihlbc);
		public HRESULT Navigate(uint32 grfHLNF, ref IBindCtx pbc, ref IBindStatusCallback pibsc, ref IHlink pihlNavigate) mut => VT.Navigate(ref this, grfHLNF, ref pbc, ref pibsc, ref pihlNavigate);
		public HRESULT OnNavigate(uint32 grfHLNF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32 dwreserved) mut => VT.OnNavigate(ref this, grfHLNF, ref pimkTarget, pwzLocation, pwzFriendlyName, dwreserved);
		public HRESULT UpdateHlink(uint32 uHLID, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut => VT.UpdateHlink(ref this, uHLID, ref pimkTarget, pwzLocation, pwzFriendlyName);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkFrame self, ref IHlinkBrowseContext pihlbc) SetBrowseContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkFrame self, out IHlinkBrowseContext* ppihlbc) GetBrowseContext;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkFrame self, uint32 grfHLNF, ref IBindCtx pbc, ref IBindStatusCallback pibsc, ref IHlink pihlNavigate) Navigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkFrame self, uint32 grfHLNF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, uint32 dwreserved) OnNavigate;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkFrame self, uint32 uHLID, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) UpdateHlink;
		}
	}
	[CRepr]
	public struct IEnumHLITEM : IUnknown
	{
		public const new Guid IID = .(0x79eac9c6, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Next(uint32 celt, out HLITEM rgelt, out uint32 pceltFetched) mut => VT.Next(ref this, celt, out rgelt, out pceltFetched);
		public HRESULT Skip(uint32 celt) mut => VT.Skip(ref this, celt);
		public HRESULT Reset() mut => VT.Reset(ref this);
		public HRESULT Clone(out IEnumHLITEM* ppienumhlitem) mut => VT.Clone(ref this, out ppienumhlitem);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumHLITEM self, uint32 celt, out HLITEM rgelt, out uint32 pceltFetched) Next;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumHLITEM self, uint32 celt) Skip;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumHLITEM self) Reset;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IEnumHLITEM self, out IEnumHLITEM* ppienumhlitem) Clone;
		}
	}
	[CRepr]
	public struct IHlinkBrowseContext : IUnknown
	{
		public const new Guid IID = .(0x79eac9c7, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Register(uint32 reserved, ref IUnknown piunk, ref IMoniker pimk, out uint32 pdwRegister) mut => VT.Register(ref this, reserved, ref piunk, ref pimk, out pdwRegister);
		public HRESULT GetObject(ref IMoniker pimk, BOOL fBindIfRootRegistered, out IUnknown* ppiunk) mut => VT.GetObject(ref this, ref pimk, fBindIfRootRegistered, out ppiunk);
		public HRESULT Revoke(uint32 dwRegister) mut => VT.Revoke(ref this, dwRegister);
		public HRESULT SetBrowseWindowInfo(ref HLBWINFO phlbwi) mut => VT.SetBrowseWindowInfo(ref this, ref phlbwi);
		public HRESULT GetBrowseWindowInfo(out HLBWINFO phlbwi) mut => VT.GetBrowseWindowInfo(ref this, out phlbwi);
		public HRESULT SetInitialHlink(ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut => VT.SetInitialHlink(ref this, ref pimkTarget, pwzLocation, pwzFriendlyName);
		public HRESULT OnNavigateHlink(uint32 grfHLNF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, out uint32 puHLID) mut => VT.OnNavigateHlink(ref this, grfHLNF, ref pimkTarget, pwzLocation, pwzFriendlyName, out puHLID);
		public HRESULT UpdateHlink(uint32 uHLID, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) mut => VT.UpdateHlink(ref this, uHLID, ref pimkTarget, pwzLocation, pwzFriendlyName);
		public HRESULT EnumNavigationStack(uint32 dwReserved, uint32 grfHLFNAMEF, out IEnumHLITEM* ppienumhlitem) mut => VT.EnumNavigationStack(ref this, dwReserved, grfHLFNAMEF, out ppienumhlitem);
		public HRESULT QueryHlink(uint32 grfHLQF, uint32 uHLID) mut => VT.QueryHlink(ref this, grfHLQF, uHLID);
		public HRESULT GetHlink(uint32 uHLID, out IHlink* ppihl) mut => VT.GetHlink(ref this, uHLID, out ppihl);
		public HRESULT SetCurrentHlink(uint32 uHLID) mut => VT.SetCurrentHlink(ref this, uHLID);
		public HRESULT Clone(ref IUnknown piunkOuter, in Guid riid, out IUnknown* ppiunkObj) mut => VT.Clone(ref this, ref piunkOuter, riid, out ppiunkObj);
		public HRESULT Close(uint32 reserved) mut => VT.Close(ref this, reserved);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 reserved, ref IUnknown piunk, ref IMoniker pimk, out uint32 pdwRegister) Register;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, ref IMoniker pimk, BOOL fBindIfRootRegistered, out IUnknown* ppiunk) GetObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 dwRegister) Revoke;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, ref HLBWINFO phlbwi) SetBrowseWindowInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, out HLBWINFO phlbwi) GetBrowseWindowInfo;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) SetInitialHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 grfHLNF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, out uint32 puHLID) OnNavigateHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 uHLID, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName) UpdateHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 dwReserved, uint32 grfHLFNAMEF, out IEnumHLITEM* ppienumhlitem) EnumNavigationStack;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 grfHLQF, uint32 uHLID) QueryHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 uHLID, out IHlink* ppihl) GetHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 uHLID) SetCurrentHlink;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, ref IUnknown piunkOuter, in Guid riid, out IUnknown* ppiunkObj) Clone;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IHlinkBrowseContext self, uint32 reserved) Close;
		}
	}
	[CRepr]
	public struct IExtensionServices : IUnknown
	{
		public const new Guid IID = .(0x79eac9cb, 0xbaf9, 0x11ce, 0x8c, 0x82, 0x00, 0xaa, 0x00, 0x4b, 0xa9, 0x0b);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetAdditionalHeaders(PWSTR pwzAdditionalHeaders) mut => VT.SetAdditionalHeaders(ref this, pwzAdditionalHeaders);
		public HRESULT SetAuthenticateData(HWND phwnd, PWSTR pwzUsername, PWSTR pwzPassword) mut => VT.SetAuthenticateData(ref this, phwnd, pwzUsername, pwzPassword);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtensionServices self, PWSTR pwzAdditionalHeaders) SetAdditionalHeaders;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExtensionServices self, HWND phwnd, PWSTR pwzUsername, PWSTR pwzPassword) SetAuthenticateData;
		}
	}
	[CRepr]
	public struct ITravelEntry : IUnknown
	{
		public const new Guid IID = .(0xf46edb3b, 0xbc2f, 0x11d0, 0x94, 0x12, 0x00, 0xaa, 0x00, 0xa3, 0xeb, 0xd3);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT Invoke(IUnknown* punk) mut => VT.Invoke(ref this, punk);
		public HRESULT Update(IUnknown* punk, BOOL fIsLocalAnchor) mut => VT.Update(ref this, punk, fIsLocalAnchor);
		public HRESULT GetPidl(ITEMIDLIST** ppidl) mut => VT.GetPidl(ref this, ppidl);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelEntry self, IUnknown* punk) Invoke;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelEntry self, IUnknown* punk, BOOL fIsLocalAnchor) Update;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelEntry self, ITEMIDLIST** ppidl) GetPidl;
		}
	}
	[CRepr]
	public struct ITravelLog : IUnknown
	{
		public const new Guid IID = .(0x66a9cb08, 0x4802, 0x11d2, 0xa5, 0x61, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddEntry(IUnknown* punk, BOOL fIsLocalAnchor) mut => VT.AddEntry(ref this, punk, fIsLocalAnchor);
		public HRESULT UpdateEntry(IUnknown* punk, BOOL fIsLocalAnchor) mut => VT.UpdateEntry(ref this, punk, fIsLocalAnchor);
		public HRESULT UpdateExternal(IUnknown* punk, IUnknown* punkHLBrowseContext) mut => VT.UpdateExternal(ref this, punk, punkHLBrowseContext);
		public HRESULT Travel(IUnknown* punk, int32 iOffset) mut => VT.Travel(ref this, punk, iOffset);
		public HRESULT GetTravelEntry(ref IUnknown punk, int32 iOffset, ITravelEntry** ppte) mut => VT.GetTravelEntry(ref this, ref punk, iOffset, ppte);
		public HRESULT FindTravelEntry(IUnknown* punk, ref ITEMIDLIST pidl, ITravelEntry** ppte) mut => VT.FindTravelEntry(ref this, punk, ref pidl, ppte);
		public HRESULT GetToolTipText(IUnknown* punk, int32 iOffset, int32 idsTemplate, char16* pwzText, uint32 cchText) mut => VT.GetToolTipText(ref this, punk, iOffset, idsTemplate, pwzText, cchText);
		public HRESULT InsertMenuEntries(IUnknown* punk, HMENU hmenu, int32 nPos, int32 idFirst, int32 idLast, uint32 dwFlags) mut => VT.InsertMenuEntries(ref this, punk, hmenu, nPos, idFirst, idLast, dwFlags);
		public HRESULT Clone(ITravelLog** pptl) mut => VT.Clone(ref this, pptl);
		public uint32 CountEntries(ref IUnknown punk) mut => VT.CountEntries(ref this, ref punk);
		public HRESULT Revert() mut => VT.Revert(ref this);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, BOOL fIsLocalAnchor) AddEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, BOOL fIsLocalAnchor) UpdateEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, IUnknown* punkHLBrowseContext) UpdateExternal;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, int32 iOffset) Travel;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, ref IUnknown punk, int32 iOffset, ITravelEntry** ppte) GetTravelEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, ref ITEMIDLIST pidl, ITravelEntry** ppte) FindTravelEntry;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, int32 iOffset, int32 idsTemplate, char16* pwzText, uint32 cchText) GetToolTipText;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, IUnknown* punk, HMENU hmenu, int32 nPos, int32 idFirst, int32 idLast, uint32 dwFlags) InsertMenuEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self, ITravelLog** pptl) Clone;
			public new function [CallingConvention(.Stdcall)] uint32(ref ITravelLog self, ref IUnknown punk) CountEntries;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITravelLog self) Revert;
		}
	}
	[CRepr]
	public struct CIE4ConnectionPoint : IConnectionPoint
	{
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT DoInvokeIE4(out BOOL pf, void** ppv, int32 dispid, out DISPPARAMS pdispparams) mut => VT.DoInvokeIE4(ref this, out pf, ppv, dispid, out pdispparams);
		public HRESULT DoInvokePIDLIE4(int32 dispid, out ITEMIDLIST pidl, BOOL fCanCancel) mut => VT.DoInvokePIDLIE4(ref this, dispid, out pidl, fCanCancel);

		[CRepr]
		public struct VTable : IConnectionPoint.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref CIE4ConnectionPoint self, out BOOL pf, void** ppv, int32 dispid, out DISPPARAMS pdispparams) DoInvokeIE4;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref CIE4ConnectionPoint self, int32 dispid, out ITEMIDLIST pidl, BOOL fCanCancel) DoInvokePIDLIE4;
		}
	}
	[CRepr]
	public struct IExpDispSupportXP : IUnknown
	{
		public const new Guid IID = .(0x2f0dd58c, 0xf789, 0x4f14, 0x99, 0xfb, 0x92, 0x93, 0xb3, 0xc9, 0xc2, 0x12);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FindCIE4ConnectionPoint(in Guid riid, out CIE4ConnectionPoint* ppccp) mut => VT.FindCIE4ConnectionPoint(ref this, riid, out ppccp);
		public HRESULT OnTranslateAccelerator(ref MSG pMsg, uint32 grfModifiers) mut => VT.OnTranslateAccelerator(ref this, ref pMsg, grfModifiers);
		public HRESULT OnInvoke(int32 dispidMember, in Guid iid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pVarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) mut => VT.OnInvoke(ref this, dispidMember, iid, lcid, wFlags, ref pdispparams, out pVarResult, out pexcepinfo, out puArgErr);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupportXP self, in Guid riid, out CIE4ConnectionPoint* ppccp) FindCIE4ConnectionPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupportXP self, ref MSG pMsg, uint32 grfModifiers) OnTranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupportXP self, int32 dispidMember, in Guid iid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pVarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) OnInvoke;
		}
	}
	[CRepr]
	public struct IExpDispSupport : IUnknown
	{
		public const new Guid IID = .(0x0d7d1d00, 0x6fc0, 0x11d0, 0xa9, 0x74, 0x00, 0xc0, 0x4f, 0xd7, 0x05, 0xa2);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT FindConnectionPoint(in Guid riid, out IConnectionPoint* ppccp) mut => VT.FindConnectionPoint(ref this, riid, out ppccp);
		public HRESULT OnTranslateAccelerator(ref MSG pMsg, uint32 grfModifiers) mut => VT.OnTranslateAccelerator(ref this, ref pMsg, grfModifiers);
		public HRESULT OnInvoke(int32 dispidMember, in Guid iid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pVarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) mut => VT.OnInvoke(ref this, dispidMember, iid, lcid, wFlags, ref pdispparams, out pVarResult, out pexcepinfo, out puArgErr);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupport self, in Guid riid, out IConnectionPoint* ppccp) FindConnectionPoint;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupport self, ref MSG pMsg, uint32 grfModifiers) OnTranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IExpDispSupport self, int32 dispidMember, in Guid iid, uint32 lcid, uint16 wFlags, ref DISPPARAMS pdispparams, out VARIANT pVarResult, out EXCEPINFO pexcepinfo, out uint32 puArgErr) OnInvoke;
		}
	}
	[CRepr]
	public struct IBrowserService : IUnknown
	{
		public const new Guid IID = .(0x02ba3b52, 0x0547, 0x11d1, 0xb8, 0x33, 0x00, 0xc0, 0x4f, 0xc9, 0xb3, 0x1f);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT GetParentSite(out IOleInPlaceSite* ppipsite) mut => VT.GetParentSite(ref this, out ppipsite);
		public HRESULT SetTitle(ref IShellView psv, PWSTR pszName) mut => VT.SetTitle(ref this, ref psv, pszName);
		public HRESULT GetTitle(ref IShellView psv, char16* pszName, uint32 cchName) mut => VT.GetTitle(ref this, ref psv, pszName, cchName);
		public HRESULT GetOleObject(out IOleObject* ppobjv) mut => VT.GetOleObject(ref this, out ppobjv);
		public HRESULT GetTravelLog(ITravelLog** pptl) mut => VT.GetTravelLog(ref this, pptl);
		public HRESULT ShowControlWindow(uint32 id, BOOL fShow) mut => VT.ShowControlWindow(ref this, id, fShow);
		public HRESULT IsControlWindowShown(uint32 id, out BOOL pfShown) mut => VT.IsControlWindowShown(ref this, id, out pfShown);
		public HRESULT IEGetDisplayName(ref ITEMIDLIST pidl, PWSTR pwszName, uint32 uFlags) mut => VT.IEGetDisplayName(ref this, ref pidl, pwszName, uFlags);
		public HRESULT IEParseDisplayName(uint32 uiCP, PWSTR pwszPath, out ITEMIDLIST* ppidlOut) mut => VT.IEParseDisplayName(ref this, uiCP, pwszPath, out ppidlOut);
		public HRESULT DisplayParseError(HRESULT hres, PWSTR pwszPath) mut => VT.DisplayParseError(ref this, hres, pwszPath);
		public HRESULT NavigateToPidl(ref ITEMIDLIST pidl, uint32 grfHLNF) mut => VT.NavigateToPidl(ref this, ref pidl, grfHLNF);
		public HRESULT SetNavigateState(BNSTATE bnstate) mut => VT.SetNavigateState(ref this, bnstate);
		public HRESULT GetNavigateState(out BNSTATE pbnstate) mut => VT.GetNavigateState(ref this, out pbnstate);
		public HRESULT NotifyRedirect(ref IShellView psv, ref ITEMIDLIST pidl, out BOOL pfDidBrowse) mut => VT.NotifyRedirect(ref this, ref psv, ref pidl, out pfDidBrowse);
		public HRESULT UpdateWindowList() mut => VT.UpdateWindowList(ref this);
		public HRESULT UpdateBackForwardState() mut => VT.UpdateBackForwardState(ref this);
		public HRESULT SetFlags(uint32 dwFlags, uint32 dwFlagMask) mut => VT.SetFlags(ref this, dwFlags, dwFlagMask);
		public HRESULT ComGetFlags(out uint32 pdwFlags) mut => VT.ComGetFlags(ref this, out pdwFlags);
		public HRESULT CanNavigateNow() mut => VT.CanNavigateNow(ref this);
		public HRESULT GetPidl(out ITEMIDLIST* ppidl) mut => VT.GetPidl(ref this, out ppidl);
		public HRESULT SetReferrer(ref ITEMIDLIST pidl) mut => VT.SetReferrer(ref this, ref pidl);
		public uint32 GetBrowserIndex() mut => VT.GetBrowserIndex(ref this);
		public HRESULT GetBrowserByIndex(uint32 dwID, out IUnknown* ppunk) mut => VT.GetBrowserByIndex(ref this, dwID, out ppunk);
		public HRESULT GetHistoryObject(out IOleObject* ppole, out IStream* pstm, out IBindCtx* ppbc) mut => VT.GetHistoryObject(ref this, out ppole, out pstm, out ppbc);
		public HRESULT SetHistoryObject(ref IOleObject pole, BOOL fIsLocalAnchor) mut => VT.SetHistoryObject(ref this, ref pole, fIsLocalAnchor);
		public HRESULT CacheOLEServer(ref IOleObject pole) mut => VT.CacheOLEServer(ref this, ref pole);
		public HRESULT GetSetCodePage(ref VARIANT pvarIn, out VARIANT pvarOut) mut => VT.GetSetCodePage(ref this, ref pvarIn, out pvarOut);
		public HRESULT OnHttpEquiv(ref IShellView psv, BOOL fDone, ref VARIANT pvarargIn, out VARIANT pvarargOut) mut => VT.OnHttpEquiv(ref this, ref psv, fDone, ref pvarargIn, out pvarargOut);
		public HRESULT GetPalette(out HPALETTE hpal) mut => VT.GetPalette(ref this, out hpal);
		public HRESULT RegisterWindow(BOOL fForceRegister, int32 swc) mut => VT.RegisterWindow(ref this, fForceRegister, swc);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out IOleInPlaceSite* ppipsite) GetParentSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IShellView psv, PWSTR pszName) SetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IShellView psv, char16* pszName, uint32 cchName) GetTitle;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out IOleObject* ppobjv) GetOleObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ITravelLog** pptl) GetTravelLog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, uint32 id, BOOL fShow) ShowControlWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, uint32 id, out BOOL pfShown) IsControlWindowShown;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref ITEMIDLIST pidl, PWSTR pwszName, uint32 uFlags) IEGetDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, uint32 uiCP, PWSTR pwszPath, out ITEMIDLIST* ppidlOut) IEParseDisplayName;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, HRESULT hres, PWSTR pwszPath) DisplayParseError;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref ITEMIDLIST pidl, uint32 grfHLNF) NavigateToPidl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, BNSTATE bnstate) SetNavigateState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out BNSTATE pbnstate) GetNavigateState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IShellView psv, ref ITEMIDLIST pidl, out BOOL pfDidBrowse) NotifyRedirect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self) UpdateWindowList;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self) UpdateBackForwardState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, uint32 dwFlags, uint32 dwFlagMask) SetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out uint32 pdwFlags) ComGetFlags;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self) CanNavigateNow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out ITEMIDLIST* ppidl) GetPidl;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref ITEMIDLIST pidl) SetReferrer;
			public new function [CallingConvention(.Stdcall)] uint32(ref IBrowserService self) GetBrowserIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, uint32 dwID, out IUnknown* ppunk) GetBrowserByIndex;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out IOleObject* ppole, out IStream* pstm, out IBindCtx* ppbc) GetHistoryObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IOleObject pole, BOOL fIsLocalAnchor) SetHistoryObject;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IOleObject pole) CacheOLEServer;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref VARIANT pvarIn, out VARIANT pvarOut) GetSetCodePage;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, ref IShellView psv, BOOL fDone, ref VARIANT pvarargIn, out VARIANT pvarargOut) OnHttpEquiv;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, out HPALETTE hpal) GetPalette;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService self, BOOL fForceRegister, int32 swc) RegisterWindow;
		}
	}
	[CRepr]
	public struct IShellService : IUnknown
	{
		public const new Guid IID = .(0x5836fb00, 0x8187, 0x11cf, 0xa1, 0x2b, 0x00, 0xaa, 0x00, 0x4a, 0xe8, 0x37);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetOwner(IUnknown* punkOwner) mut => VT.SetOwner(ref this, punkOwner);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IShellService self, IUnknown* punkOwner) SetOwner;
		}
	}
	[CRepr]
	public struct IBrowserService2 : IBrowserService
	{
		public const new Guid IID = .(0x68bd21cc, 0x438b, 0x11d2, 0xa5, 0x60, 0x00, 0xa0, 0xc9, 0x2d, 0xbf, 0xe8);
		
		public new VTable* VT { get => (.)vt; }
		
		public LRESULT WndProcBS(HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.WndProcBS(ref this, hwnd, uMsg, wParam, lParam);
		public HRESULT SetAsDefFolderSettings() mut => VT.SetAsDefFolderSettings(ref this);
		public HRESULT GetViewRect(out RECT prc) mut => VT.GetViewRect(ref this, out prc);
		public HRESULT OnSize(WPARAM wParam) mut => VT.OnSize(ref this, wParam);
		public HRESULT OnCreate(ref CREATESTRUCTW pcs) mut => VT.OnCreate(ref this, ref pcs);
		public LRESULT OnCommand(WPARAM wParam, LPARAM lParam) mut => VT.OnCommand(ref this, wParam, lParam);
		public HRESULT OnDestroy() mut => VT.OnDestroy(ref this);
		public LRESULT OnNotify(ref NMHDR pnm) mut => VT.OnNotify(ref this, ref pnm);
		public HRESULT OnSetFocus() mut => VT.OnSetFocus(ref this);
		public HRESULT OnFrameWindowActivateBS(BOOL fActive) mut => VT.OnFrameWindowActivateBS(ref this, fActive);
		public HRESULT ReleaseShellView() mut => VT.ReleaseShellView(ref this);
		public HRESULT ActivatePendingView() mut => VT.ActivatePendingView(ref this);
		public HRESULT CreateViewWindow(ref IShellView psvNew, ref IShellView psvOld, ref RECT prcView, out HWND phwnd) mut => VT.CreateViewWindow(ref this, ref psvNew, ref psvOld, ref prcView, out phwnd);
		public HRESULT CreateBrowserPropSheetExt(in Guid riid, void** ppv) mut => VT.CreateBrowserPropSheetExt(ref this, riid, ppv);
		public HRESULT GetViewWindow(out HWND phwndView) mut => VT.GetViewWindow(ref this, out phwndView);
		public HRESULT GetBaseBrowserData(out BASEBROWSERDATALH* pbbd) mut => VT.GetBaseBrowserData(ref this, out pbbd);
		public BASEBROWSERDATALH* PutBaseBrowserData() mut => VT.PutBaseBrowserData(ref this);
		public HRESULT InitializeTravelLog(ref ITravelLog ptl, uint32 dw) mut => VT.InitializeTravelLog(ref this, ref ptl, dw);
		public HRESULT SetTopBrowser() mut => VT.SetTopBrowser(ref this);
		public HRESULT Offline(int32 iCmd) mut => VT.Offline(ref this, iCmd);
		public HRESULT AllowViewResize(BOOL f) mut => VT.AllowViewResize(ref this, f);
		public HRESULT SetActivateState(uint32 u) mut => VT.SetActivateState(ref this, u);
		public HRESULT UpdateSecureLockIcon(int32 eSecureLock) mut => VT.UpdateSecureLockIcon(ref this, eSecureLock);
		public HRESULT InitializeDownloadManager() mut => VT.InitializeDownloadManager(ref this);
		public HRESULT InitializeTransitionSite() mut => VT.InitializeTransitionSite(ref this);
		public HRESULT _Initialize(HWND hwnd, ref IUnknown pauto) mut => VT._Initialize(ref this, hwnd, ref pauto);
		public HRESULT _CancelPendingNavigationAsync() mut => VT._CancelPendingNavigationAsync(ref this);
		public HRESULT _CancelPendingView() mut => VT._CancelPendingView(ref this);
		public HRESULT _MaySaveChanges() mut => VT._MaySaveChanges(ref this);
		public HRESULT _PauseOrResumeView(BOOL fPaused) mut => VT._PauseOrResumeView(ref this, fPaused);
		public HRESULT _DisableModeless() mut => VT._DisableModeless(ref this);
		public HRESULT _NavigateToPidl2(ref ITEMIDLIST pidl, uint32 grfHLNF, uint32 dwFlags) mut => VT._NavigateToPidl2(ref this, ref pidl, grfHLNF, dwFlags);
		public HRESULT _TryShell2Rename(ref IShellView psv, ref ITEMIDLIST pidlNew) mut => VT._TryShell2Rename(ref this, ref psv, ref pidlNew);
		public HRESULT _SwitchActivationNow() mut => VT._SwitchActivationNow(ref this);
		public HRESULT _ExecChildren(ref IUnknown punkBar, BOOL fBroadcast, Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvarargIn, VARIANT* pvarargOut) mut => VT._ExecChildren(ref this, ref punkBar, fBroadcast, pguidCmdGroup, nCmdID, nCmdexecopt, pvarargIn, pvarargOut);
		public HRESULT _SendChildren(HWND hwndBar, BOOL fBroadcast, uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT._SendChildren(ref this, hwndBar, fBroadcast, uMsg, wParam, lParam);
		public HRESULT GetFolderSetData(out FOLDERSETDATA pfsd) mut => VT.GetFolderSetData(ref this, out pfsd);
		public HRESULT _OnFocusChange(uint32 itb) mut => VT._OnFocusChange(ref this, itb);
		public HRESULT v_ShowHideChildWindows(BOOL fChildOnly) mut => VT.v_ShowHideChildWindows(ref this, fChildOnly);
		public uint32 _get_itbLastFocus() mut => VT._get_itbLastFocus(ref this);
		public HRESULT _put_itbLastFocus(uint32 itbLastFocus) mut => VT._put_itbLastFocus(ref this, itbLastFocus);
		public HRESULT _UIActivateView(uint32 uState) mut => VT._UIActivateView(ref this, uState);
		public HRESULT _GetViewBorderRect(out RECT prc) mut => VT._GetViewBorderRect(ref this, out prc);
		public HRESULT _UpdateViewRectSize() mut => VT._UpdateViewRectSize(ref this);
		public HRESULT _ResizeNextBorder(uint32 itb) mut => VT._ResizeNextBorder(ref this, itb);
		public HRESULT _ResizeView() mut => VT._ResizeView(ref this);
		public HRESULT _GetEffectiveClientArea(out RECT lprectBorder, HMONITOR hmon) mut => VT._GetEffectiveClientArea(ref this, out lprectBorder, hmon);
		public IStream* v_GetViewStream(out ITEMIDLIST pidl, uint32 grfMode, PWSTR pwszName) mut => VT.v_GetViewStream(ref this, out pidl, grfMode, pwszName);
		public LRESULT ForwardViewMsg(uint32 uMsg, WPARAM wParam, LPARAM lParam) mut => VT.ForwardViewMsg(ref this, uMsg, wParam, lParam);
		public HRESULT SetAcceleratorMenu(HACCEL hacc) mut => VT.SetAcceleratorMenu(ref this, hacc);
		public int32 _GetToolbarCount() mut => VT._GetToolbarCount(ref this);
		public TOOLBARITEM* _GetToolbarItem(int32 itb) mut => VT._GetToolbarItem(ref this, itb);
		public HRESULT _SaveToolbars(ref IStream pstm) mut => VT._SaveToolbars(ref this, ref pstm);
		public HRESULT _LoadToolbars(ref IStream pstm) mut => VT._LoadToolbars(ref this, ref pstm);
		public HRESULT _CloseAndReleaseToolbars(BOOL fClose) mut => VT._CloseAndReleaseToolbars(ref this, fClose);
		public HRESULT v_MayGetNextToolbarFocus(ref MSG lpMsg, uint32 itbNext, int32 citb, out TOOLBARITEM* pptbi, out HWND phwnd) mut => VT.v_MayGetNextToolbarFocus(ref this, ref lpMsg, itbNext, citb, out pptbi, out phwnd);
		public HRESULT _ResizeNextBorderHelper(uint32 itb, BOOL bUseHmonitor) mut => VT._ResizeNextBorderHelper(ref this, itb, bUseHmonitor);
		public uint32 _FindTBar(ref IUnknown punkSrc) mut => VT._FindTBar(ref this, ref punkSrc);
		public HRESULT _SetFocus(ref TOOLBARITEM ptbi, HWND hwnd, ref MSG lpMsg) mut => VT._SetFocus(ref this, ref ptbi, hwnd, ref lpMsg);
		public HRESULT v_MayTranslateAccelerator(out MSG pmsg) mut => VT.v_MayTranslateAccelerator(ref this, out pmsg);
		public HRESULT _GetBorderDWHelper(ref IUnknown punkSrc, out RECT lprectBorder, BOOL bUseHmonitor) mut => VT._GetBorderDWHelper(ref this, ref punkSrc, out lprectBorder, bUseHmonitor);
		public HRESULT v_CheckZoneCrossing(ref ITEMIDLIST pidl) mut => VT.v_CheckZoneCrossing(ref this, ref pidl);

		[CRepr]
		public struct VTable : IBrowserService.VTable
		{
			public new function [CallingConvention(.Stdcall)] LRESULT(ref IBrowserService2 self, HWND hwnd, uint32 uMsg, WPARAM wParam, LPARAM lParam) WndProcBS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) SetAsDefFolderSettings;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out RECT prc) GetViewRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, WPARAM wParam) OnSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref CREATESTRUCTW pcs) OnCreate;
			public new function [CallingConvention(.Stdcall)] LRESULT(ref IBrowserService2 self, WPARAM wParam, LPARAM lParam) OnCommand;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) OnDestroy;
			public new function [CallingConvention(.Stdcall)] LRESULT(ref IBrowserService2 self, ref NMHDR pnm) OnNotify;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) OnSetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, BOOL fActive) OnFrameWindowActivateBS;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) ReleaseShellView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) ActivatePendingView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IShellView psvNew, ref IShellView psvOld, ref RECT prcView, out HWND phwnd) CreateViewWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, in Guid riid, void** ppv) CreateBrowserPropSheetExt;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out HWND phwndView) GetViewWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out BASEBROWSERDATALH* pbbd) GetBaseBrowserData;
			public new function [CallingConvention(.Stdcall)] BASEBROWSERDATALH*(ref IBrowserService2 self) PutBaseBrowserData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref ITravelLog ptl, uint32 dw) InitializeTravelLog;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) SetTopBrowser;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, int32 iCmd) Offline;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, BOOL f) AllowViewResize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 u) SetActivateState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, int32 eSecureLock) UpdateSecureLockIcon;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) InitializeDownloadManager;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) InitializeTransitionSite;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, HWND hwnd, ref IUnknown pauto) _Initialize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _CancelPendingNavigationAsync;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _CancelPendingView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _MaySaveChanges;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, BOOL fPaused) _PauseOrResumeView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _DisableModeless;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref ITEMIDLIST pidl, uint32 grfHLNF, uint32 dwFlags) _NavigateToPidl2;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IShellView psv, ref ITEMIDLIST pidlNew) _TryShell2Rename;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _SwitchActivationNow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IUnknown punkBar, BOOL fBroadcast, Guid* pguidCmdGroup, uint32 nCmdID, uint32 nCmdexecopt, VARIANT* pvarargIn, VARIANT* pvarargOut) _ExecChildren;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, HWND hwndBar, BOOL fBroadcast, uint32 uMsg, WPARAM wParam, LPARAM lParam) _SendChildren;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out FOLDERSETDATA pfsd) GetFolderSetData;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 itb) _OnFocusChange;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, BOOL fChildOnly) v_ShowHideChildWindows;
			public new function [CallingConvention(.Stdcall)] uint32(ref IBrowserService2 self) _get_itbLastFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 itbLastFocus) _put_itbLastFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 uState) _UIActivateView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out RECT prc) _GetViewBorderRect;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _UpdateViewRectSize;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 itb) _ResizeNextBorder;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self) _ResizeView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out RECT lprectBorder, HMONITOR hmon) _GetEffectiveClientArea;
			public new function [CallingConvention(.Stdcall)] IStream*(ref IBrowserService2 self, out ITEMIDLIST pidl, uint32 grfMode, PWSTR pwszName) v_GetViewStream;
			public new function [CallingConvention(.Stdcall)] LRESULT(ref IBrowserService2 self, uint32 uMsg, WPARAM wParam, LPARAM lParam) ForwardViewMsg;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, HACCEL hacc) SetAcceleratorMenu;
			public new function [CallingConvention(.Stdcall)] int32(ref IBrowserService2 self) _GetToolbarCount;
			public new function [CallingConvention(.Stdcall)] TOOLBARITEM*(ref IBrowserService2 self, int32 itb) _GetToolbarItem;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IStream pstm) _SaveToolbars;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IStream pstm) _LoadToolbars;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, BOOL fClose) _CloseAndReleaseToolbars;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref MSG lpMsg, uint32 itbNext, int32 citb, out TOOLBARITEM* pptbi, out HWND phwnd) v_MayGetNextToolbarFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, uint32 itb, BOOL bUseHmonitor) _ResizeNextBorderHelper;
			public new function [CallingConvention(.Stdcall)] uint32(ref IBrowserService2 self, ref IUnknown punkSrc) _FindTBar;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref TOOLBARITEM ptbi, HWND hwnd, ref MSG lpMsg) _SetFocus;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, out MSG pmsg) v_MayTranslateAccelerator;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref IUnknown punkSrc, out RECT lprectBorder, BOOL bUseHmonitor) _GetBorderDWHelper;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService2 self, ref ITEMIDLIST pidl) v_CheckZoneCrossing;
		}
	}
	[CRepr]
	public struct IBrowserService3 : IBrowserService2
	{
		public const new Guid IID = .(0x27d7ce21, 0x762d, 0x48f3, 0x86, 0xf3, 0x40, 0xe2, 0xfd, 0x37, 0x49, 0xc4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT _PositionViewWindow(HWND hwnd, ref RECT prc) mut => VT._PositionViewWindow(ref this, hwnd, ref prc);
		public HRESULT IEParseDisplayNameEx(uint32 uiCP, PWSTR pwszPath, uint32 dwFlags, out ITEMIDLIST* ppidlOut) mut => VT.IEParseDisplayNameEx(ref this, uiCP, pwszPath, dwFlags, out ppidlOut);

		[CRepr]
		public struct VTable : IBrowserService2.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService3 self, HWND hwnd, ref RECT prc) _PositionViewWindow;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService3 self, uint32 uiCP, PWSTR pwszPath, uint32 dwFlags, out ITEMIDLIST* ppidlOut) IEParseDisplayNameEx;
		}
	}
	[CRepr]
	public struct IBrowserService4 : IBrowserService3
	{
		public const new Guid IID = .(0x639f1bff, 0xe135, 0x4096, 0xab, 0xd8, 0xe0, 0xf5, 0x04, 0xd6, 0x49, 0xa4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT ActivateView(BOOL fPendingView) mut => VT.ActivateView(ref this, fPendingView);
		public HRESULT SaveViewState() mut => VT.SaveViewState(ref this);
		public HRESULT _ResizeAllBorders() mut => VT._ResizeAllBorders(ref this);

		[CRepr]
		public struct VTable : IBrowserService3.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService4 self, BOOL fPendingView) ActivateView;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService4 self) SaveViewState;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IBrowserService4 self) _ResizeAllBorders;
		}
	}
	[CRepr]
	public struct ITrackShellMenu : IShellMenu
	{
		public const new Guid IID = .(0x8278f932, 0x2a3e, 0x11d2, 0x83, 0x8f, 0x00, 0xc0, 0x4f, 0xd9, 0x18, 0xd0);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetObscured(HWND hwndTB, ref IUnknown punkBand, uint32 dwSMSetFlags) mut => VT.SetObscured(ref this, hwndTB, ref punkBand, dwSMSetFlags);
		public HRESULT Popup(HWND hwnd, out POINTL ppt, out RECTL prcExclude, int32 dwFlags) mut => VT.Popup(ref this, hwnd, out ppt, out prcExclude, dwFlags);

		[CRepr]
		public struct VTable : IShellMenu.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrackShellMenu self, HWND hwndTB, ref IUnknown punkBand, uint32 dwSMSetFlags) SetObscured;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITrackShellMenu self, HWND hwnd, out POINTL ppt, out RECTL prcExclude, int32 dwFlags) Popup;
		}
	}
	[CRepr]
	public struct ITranscodeImage : IUnknown
	{
		public const new Guid IID = .(0xbae86ddd, 0xdc11, 0x421c, 0xb7, 0xab, 0xcc, 0x55, 0xd1, 0xd6, 0x5c, 0x44);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT TranscodeImage(IShellItem* pShellItem, uint32 uiMaxWidth, uint32 uiMaxHeight, uint32 flags, IStream* pvImage, out uint32 puiWidth, out uint32 puiHeight) mut => VT.TranscodeImage(ref this, pShellItem, uiMaxWidth, uiMaxHeight, flags, pvImage, out puiWidth, out puiHeight);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref ITranscodeImage self, IShellItem* pShellItem, uint32 uiMaxWidth, uint32 uiMaxHeight, uint32 flags, IStream* pvImage, out uint32 puiWidth, out uint32 puiHeight) TranscodeImage;
		}
	}
	[CRepr]
	public struct IUniformResourceLocatorA : IUnknown
	{
		public const new Guid IID = .(0xfbf23b80, 0xe3f0, 0x101b, 0x84, 0x88, 0x00, 0xaa, 0x00, 0x3e, 0x56, 0xf8);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetURL(PSTR pcszURL, uint32 dwInFlags) mut => VT.SetURL(ref this, pcszURL, dwInFlags);
		public HRESULT GetURL(out PSTR ppszURL) mut => VT.GetURL(ref this, out ppszURL);
		public HRESULT InvokeCommand(out urlinvokecommandinfoA purlici) mut => VT.InvokeCommand(ref this, out purlici);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorA self, PSTR pcszURL, uint32 dwInFlags) SetURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorA self, out PSTR ppszURL) GetURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorA self, out urlinvokecommandinfoA purlici) InvokeCommand;
		}
	}
	[CRepr]
	public struct IUniformResourceLocatorW : IUnknown
	{
		public const new Guid IID = .(0xcabb0da0, 0xda57, 0x11cf, 0x99, 0x74, 0x00, 0x20, 0xaf, 0xd7, 0x97, 0x62);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT SetURL(PWSTR pcszURL, uint32 dwInFlags) mut => VT.SetURL(ref this, pcszURL, dwInFlags);
		public HRESULT GetURL(out PWSTR ppszURL) mut => VT.GetURL(ref this, out ppszURL);
		public HRESULT InvokeCommand(out urlinvokecommandinfoW purlici) mut => VT.InvokeCommand(ref this, out purlici);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorW self, PWSTR pcszURL, uint32 dwInFlags) SetURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorW self, out PWSTR ppszURL) GetURL;
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IUniformResourceLocatorW self, out urlinvokecommandinfoW purlici) InvokeCommand;
		}
	}
	[CRepr]
	public struct IInputPaneAnimationCoordinator : IUnknown
	{
		public const new Guid IID = .(0x2af16ba9, 0x2de5, 0x4b75, 0x82, 0xd9, 0x01, 0x37, 0x2a, 0xfb, 0xff, 0xb4);
		
		public new VTable* VT { get => (.)vt; }
		
		public HRESULT AddAnimation(ref IUnknown device, ref IDCompositionAnimation animation) mut => VT.AddAnimation(ref this, ref device, ref animation);

		[CRepr]
		public struct VTable : IUnknown.VTable
		{
			public new function [CallingConvention(.Stdcall)] HRESULT(ref IInputPaneAnimationCoordinator self, ref IUnknown device, ref IDCompositionAnimation animation) AddAnimation;
		}
	}
	#endregion
	
	#region Functions
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL LoadUserProfileA(HANDLE hToken, out PROFILEINFOA lpProfileInfo);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL LoadUserProfileW(HANDLE hToken, out PROFILEINFOW lpProfileInfo);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL UnloadUserProfile(HANDLE hToken, HANDLE hProfile);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetProfilesDirectoryA(uint8* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetProfilesDirectoryW(char16* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetProfileType(out uint32 dwFlags);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DeleteProfileA(PSTR lpSidString, PSTR lpProfilePath, PSTR lpComputerName);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DeleteProfileW(PWSTR lpSidString, PWSTR lpProfilePath, PWSTR lpComputerName);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CreateProfile(PWSTR pszUserSid, PWSTR pszUserName, char16* pszProfilePath, uint32 cchProfilePath);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetDefaultUserProfileDirectoryA(uint8* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetDefaultUserProfileDirectoryW(char16* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetAllUsersProfileDirectoryA(uint8* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetAllUsersProfileDirectoryW(char16* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetUserProfileDirectoryA(HANDLE hToken, uint8* lpProfileDir, out uint32 lpcchSize);
	[Import("userenv.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL GetUserProfileDirectoryW(HANDLE hToken, char16* lpProfileDir, out uint32 lpcchSize);
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
	public static extern HRESULT SHCreateItemFromIDList(ref ITEMIDLIST pidl, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateItemFromParsingName(PWSTR pszPath, IBindCtx* pbc, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateItemWithParent(ITEMIDLIST* pidlParent, IShellFolder* psfParent, ref ITEMIDLIST pidl, in Guid riid, void** ppvItem);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateItemFromRelativeName(ref IShellItem psiParent, PWSTR pszName, IBindCtx* pbc, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateItemInKnownFolder(in Guid kfid, uint32 dwKFFlags, PWSTR pszItem, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetIDListFromObject(ref IUnknown punk, out ITEMIDLIST* ppidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetItemFromObject(ref IUnknown punk, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetNameFromIDList(ref ITEMIDLIST pidl, SIGDN sigdnName, out PWSTR ppszName);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetItemFromDataObject(ref IDataObject pdtobj, DATAOBJ_GET_ITEM_FLAGS dwFlags, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellItemArray(ITEMIDLIST* pidlParent, IShellFolder* psf, uint32 cidl, ITEMIDLIST** ppidl, out IShellItemArray* ppsiItemArray);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellItemArrayFromDataObject(ref IDataObject pdo, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellItemArrayFromIDLists(uint32 cidl, ITEMIDLIST** rgpidl, out IShellItemArray* ppsiItemArray);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellItemArrayFromShellItem(ref IShellItem psi, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateAssociationRegistration(in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateDefaultExtractIcon(in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SetCurrentProcessExplicitAppUserModelID(PWSTR AppID);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetCurrentProcessExplicitAppUserModelID(out PWSTR AppID);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetTemporaryPropertyForItem(ref IShellItem psi, in PROPERTYKEY propkey, out PROPVARIANT ppropvar);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetTemporaryPropertyForItem(ref IShellItem psi, in PROPERTYKEY propkey, in PROPVARIANT propvar);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHShowManageLibraryUI(ref IShellItem psiLibrary, HWND hwndOwner, PWSTR pszTitle, PWSTR pszInstruction, LIBRARYMANAGEDIALOGOPTIONS lmdOptions);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHResolveLibrary(ref IShellItem psiLibrary);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHAssocEnumHandlers(PWSTR pszExtra, ASSOC_FILTER afFilter, out IEnumAssocHandlers* ppEnumHandler);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHAssocEnumHandlersForProtocolByApplication(PWSTR protocol, in Guid riid, void** enumHandlers);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 HMONITOR_UserSize(ref uint32 param0, uint32 param1, ref HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HMONITOR_UserMarshal(ref uint32 param0, out uint8 param1, ref HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HMONITOR_UserUnmarshal(ref uint32 param0, uint8* param1, out HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void HMONITOR_UserFree(ref uint32 param0, ref HMONITOR param1);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 HMONITOR_UserSize64(ref uint32 param0, uint32 param1, ref HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HMONITOR_UserMarshal64(ref uint32 param0, out uint8 param1, ref HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint8* HMONITOR_UserUnmarshal64(ref uint32 param0, uint8* param1, out HMONITOR param2);
	[Import("ole32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void HMONITOR_UserFree64(ref uint32 param0, ref HMONITOR param1);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateDefaultPropertiesOp(ref IShellItem psi, out IFileOperation* ppFileOp);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetDefaultProperties(HWND hwnd, ref IShellItem psi, uint32 dwFileOpFlags, IFileOperationProgressSink* pfops);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetMalloc(out IMalloc* ppMalloc);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void* SHAlloc(uint cb);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHFree(void* pv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHGetIconOverlayIndexA(PSTR pszIconPath, int32 iIconIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHGetIconOverlayIndexW(PWSTR pszIconPath, int32 iIconIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILClone(ref ITEMIDLIST pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILCloneFirst(ref ITEMIDLIST pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILCombine(ITEMIDLIST* pidl1, ITEMIDLIST* pidl2);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void ILFree(ITEMIDLIST* pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILGetNext(ITEMIDLIST* pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ILGetSize(ITEMIDLIST* pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILFindChild(ref ITEMIDLIST pidlParent, ref ITEMIDLIST pidlChild);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILFindLastID(ref ITEMIDLIST pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ILRemoveLastID(ITEMIDLIST* pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ILIsEqual(ref ITEMIDLIST pidl1, ref ITEMIDLIST pidl2);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ILIsParent(ref ITEMIDLIST pidl1, ref ITEMIDLIST pidl2, BOOL fImmediate);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ILSaveToStream(ref IStream pstm, ref ITEMIDLIST pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ILLoadFromStreamEx(ref IStream pstm, out ITEMIDLIST* pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILCreateFromPathA(PSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILCreateFromPathW(PWSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHILCreateFromPath(PWSTR pszPath, out ITEMIDLIST* ppidl, uint32* rgfInOut);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* ILAppendID(ITEMIDLIST* pidl, ref SHITEMID pmkid, BOOL fAppend);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetPathFromIDListEx(ref ITEMIDLIST pidl, char16* pszPath, uint32 cchPath, int32 uOpts);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetPathFromIDListA(ref ITEMIDLIST pidl, uint8* pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetPathFromIDListW(ref ITEMIDLIST pidl, char16* pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHCreateDirectory(HWND hwnd, PWSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHCreateDirectoryExA(HWND hwnd, PSTR pszPath, SECURITY_ATTRIBUTES* psa);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHCreateDirectoryExW(HWND hwnd, PWSTR pszPath, SECURITY_ATTRIBUTES* psa);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHOpenFolderAndSelectItems(ref ITEMIDLIST pidlFolder, uint32 cidl, ITEMIDLIST** apidl, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellItem(ITEMIDLIST* pidlParent, IShellFolder* psfParent, ref ITEMIDLIST pidl, out IShellItem* ppsi);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetSpecialFolderLocation(HWND hwnd, int32 csidl, out ITEMIDLIST* ppidl);
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
	public static extern HRESULT SHGetFolderLocation(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, out ITEMIDLIST* ppidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetFolderPathA(int32 csidl, HANDLE hToken, uint32 dwFlags, PSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetFolderPathW(int32 csidl, HANDLE hToken, uint32 dwFlags, PWSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetFolderPathAndSubDirA(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, PSTR pszSubDir, uint8* pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetFolderPathAndSubDirW(HWND hwnd, int32 csidl, HANDLE hToken, uint32 dwFlags, PWSTR pszSubDir, char16* pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetKnownFolderIDList(in Guid rfid, uint32 dwFlags, HANDLE hToken, out ITEMIDLIST* ppidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetKnownFolderPath(in Guid rfid, uint32 dwFlags, HANDLE hToken, PWSTR pszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetKnownFolderPath(in Guid rfid, uint32 dwFlags, HANDLE hToken, out PWSTR ppszPath);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetKnownFolderItem(in Guid rfid, KNOWN_FOLDER_FLAG flags, HANDLE hToken, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetSetFolderCustomSettings(out SHFOLDERCUSTOMSETTINGS pfcs, PWSTR pszPath, uint32 dwReadWrite);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* SHBrowseForFolderA(ref BROWSEINFOA lpbi);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ITEMIDLIST* SHBrowseForFolderW(ref BROWSEINFOW lpbi);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHLoadInProc(in Guid rclsid);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetDesktopFolder(out IShellFolder* ppshf);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHChangeNotify(SHCNE_ID wEventId, SHCNF_FLAGS uFlags, void* dwItem1, void* dwItem2);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHAddToRecentDocs(uint32 uFlags, void* pv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHHandleUpdateImage(ref ITEMIDLIST pidlExtra);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHUpdateImageA(PSTR pszHashItem, int32 iIndex, uint32 uFlags, int32 iImageIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHUpdateImageW(PWSTR pszHashItem, int32 iIndex, uint32 uFlags, int32 iImageIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SHChangeNotifyRegister(HWND hwnd, SHCNRF_SOURCE fSources, int32 fEvents, uint32 wMsg, int32 cEntries, in SHChangeNotifyEntry pshcne);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHChangeNotifyDeregister(uint32 ulID);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern ShFindChangeNotificationHandle SHChangeNotification_Lock(HANDLE hChange, uint32 dwProcId, ITEMIDLIST*** pppidl, int32* plEvent);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHChangeNotification_Unlock(HANDLE hLock);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetRealIDL(ref IShellFolder psf, ref ITEMIDLIST pidlSimple, out ITEMIDLIST* ppidlReal);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetInstanceExplorer(out IUnknown* ppunk);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetDataFromIDListA(ref IShellFolder psf, ref ITEMIDLIST pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetDataFromIDListW(ref IShellFolder psf, ref ITEMIDLIST pidl, SHGDFIL_FORMAT nFormat, void* pv, int32 cb);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 RestartDialog(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 RestartDialogEx(HWND hwnd, PWSTR pszPrompt, uint32 dwReturn, uint32 dwReasonCode);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCoCreateInstance(PWSTR pszCLSID, Guid* pclsid, IUnknown* pUnkOuter, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateDataObject(ITEMIDLIST* pidlFolder, uint32 cidl, ITEMIDLIST** apidl, IDataObject* pdtInner, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CIDLData_CreateFromIDArray(ref ITEMIDLIST pidlFolder, uint32 cidl, ITEMIDLIST** apidl, out IDataObject* ppdtobj);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateStdEnumFmtEtc(uint32 cfmt, FORMATETC* afmt, out IEnumFORMATETC* ppenumFormatEtc);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHDoDragDrop(HWND hwnd, ref IDataObject pdata, IDropSource* pdsrc, uint32 dwEffect, out uint32 pdwEffect);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DAD_SetDragImage(HIMAGELIST him, out POINT pptOffset);
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
	public static extern BOOL DAD_AutoScroll(HWND hwnd, out AUTO_SCROLL_DATA pad, in POINT pptNow);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ReadCabinetState(out CABINETSTATE pcs, int32 cLength);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL WriteCabinetState(ref CABINETSTATE pcs);
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
	public static extern BOOL SignalFileOpen(ref ITEMIDLIST pidl);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocGetDetailsOfPropKey(ref IShellFolder psf, ref ITEMIDLIST pidl, in PROPERTYKEY pkey, out VARIANT pv, BOOL* pfFoundPropKey);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHStartNetConnectionDialogW(HWND hwnd, PWSTR pszRemoteName, uint32 dwType);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHDefExtractIconA(PSTR pszIconFile, int32 iIndex, uint32 uFlags, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHDefExtractIconW(PWSTR pszIconFile, int32 iIndex, uint32 uFlags, HICON* phiconLarge, HICON* phiconSmall, uint32 nIconSize);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHOpenWithDialog(HWND hwndParent, in OPENASINFO poainfo);
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
	public static extern HRESULT SHCreateShellFolderView(in SFV_CREATE pcsfv, out IShellView* ppsv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT CDefFolderMenu_Create2(ITEMIDLIST* pidlFolder, HWND hwnd, uint32 cidl, ITEMIDLIST** apidl, IShellFolder* psf, LPFNDFMCALLBACK pfn, uint32 nKeys, HKEY* ahkeys, out IContextMenu* ppcm);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateDefaultContextMenu(in DEFCONTEXTMENU pdcm, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern IContextMenu* SHFind_InitMenuPopup(HMENU hmenu, HWND hwndOwner, uint32 idCmdFirst, uint32 idCmdLast);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateShellFolderViewEx(ref CSFV pcsfv, out IShellView* ppsv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHGetSetSettings(SHELLSTATEA* lpss, SSF_MASK dwMask, BOOL bSet);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHGetSettings(out SHELLFLAGSTATE psfs, uint32 dwMask);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHBindToParent(ref ITEMIDLIST pidl, in Guid riid, void** ppv, ITEMIDLIST** ppidlLast);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHBindToFolderIDListParent(IShellFolder* psfRoot, ref ITEMIDLIST pidl, in Guid riid, void** ppv, ITEMIDLIST** ppidlLast);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHBindToFolderIDListParentEx(IShellFolder* psfRoot, ref ITEMIDLIST pidl, IBindCtx* ppbc, in Guid riid, void** ppv, ITEMIDLIST** ppidlLast);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHBindToObject(IShellFolder* psf, ref ITEMIDLIST pidl, IBindCtx* pbc, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHParseDisplayName(PWSTR pszName, IBindCtx* pbc, out ITEMIDLIST* ppidl, uint32 sfgaoIn, uint32* psfgaoOut);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHPathPrepareForWriteA(HWND hwnd, IUnknown* punkEnableModless, PSTR pszPath, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHPathPrepareForWriteW(HWND hwnd, IUnknown* punkEnableModless, PWSTR pszPath, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateFileExtractIconW(PWSTR pszFile, uint32 dwFileAttributes, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHLimitInputEdit(HWND hwndEdit, ref IShellFolder psf);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetAttributesFromDataObject(IDataObject* pdo, uint32 dwAttributeMask, uint32* pdwAttributes, uint32* pcItems);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHMapPIDLToSystemImageListIndex(ref IShellFolder pshf, ref ITEMIDLIST pidl, int32* piIndexSel);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCLSIDFromString(PWSTR psz, out Guid pclsid);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 PickIconDlg(HWND hwnd, char16* pszIconPath, uint32 cchIconPath, int32* piIconIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StgMakeUniqueName(ref IStorage pstgParent, PWSTR pszFileSpec, uint32 grfMode, in Guid riid, void** ppv);
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
	public static extern BOOL SHOpenPropSheetW(PWSTR pszCaption, HKEY* ahkeys, uint32 ckeys, Guid* pclsidDefault, ref IDataObject pdtobj, IShellBrowser* psb, PWSTR pStartPage);
	[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 SoftwareUpdateMessageBox(HWND hWnd, PWSTR pszDistUnit, uint32 dwFlags, SOFTDISTINFO* psdi);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHMultiFileProperties(ref IDataObject pdtobj, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateQueryCancelAutoPlayMoniker(out IMoniker* ppmoniker);
	[Import("shdocvw.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ImportPrivacySettings(PWSTR pszFilename, out BOOL pfParsePrivacyPreferences, out BOOL pfParsePerSiteRules);
	[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern DEVICE_SCALE_FACTOR GetScaleFactorForDevice(DISPLAY_DEVICE_TYPE deviceType);
	[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterScaleChangeNotifications(DISPLAY_DEVICE_TYPE displayDevice, HWND hwndNotify, uint32 uMsgNotify, out uint32 pdwCookie);
	[Import("api-ms-win-shcore-scaling-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RevokeScaleChangeNotifications(DISPLAY_DEVICE_TYPE displayDevice, uint32 dwCookie);
	[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetScaleFactorForMonitor(HMONITOR hMon, out DEVICE_SCALE_FACTOR pScale);
	[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT RegisterScaleChangeEvent(HANDLE hEvent, out uint pdwCookie);
	[Import("api-ms-win-shcore-scaling-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UnregisterScaleChangeEvent(uint dwCookie);
	[Import("api-ms-win-shcore-scaling-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 GetDpiForShellUIComponent(SHELL_UI_COMPONENT param0);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern PWSTR* CommandLineToArgvW(PWSTR lpCmdLine, out int32 pNumArgs);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DragQueryFileA(HDROP hDrop, uint32 iFile, uint8* lpszFile, uint32 cch);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DragQueryFileW(HDROP hDrop, uint32 iFile, char16* lpszFile, uint32 cch);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL DragQueryPoint(HDROP hDrop, out POINT ppt);
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
	public static extern HICON ExtractAssociatedIconA(HINSTANCE hInst, uint8* pszIconPath, out uint16 piIcon);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON ExtractAssociatedIconW(HINSTANCE hInst, char16* pszIconPath, out uint16 piIcon);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON ExtractAssociatedIconExA(HINSTANCE hInst, uint8* pszIconPath, out uint16 piIconIndex, out uint16 piIconId);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON ExtractAssociatedIconExW(HINSTANCE hInst, char16* pszIconPath, out uint16 piIconIndex, out uint16 piIconId);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON ExtractIconA(HINSTANCE hInst, PSTR pszExeFileName, uint32 nIconIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HICON ExtractIconW(HINSTANCE hInst, PWSTR pszExeFileName, uint32 nIconIndex);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SHAppBarMessage(uint32 dwMessage, out APPBARDATA pData);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DoEnvironmentSubstA(uint8* pszSrc, uint32 cchSrc);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 DoEnvironmentSubstW(char16* pszSrc, uint32 cchSrc);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ExtractIconExA(PSTR lpszFile, int32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIcons);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ExtractIconExW(PWSTR lpszFile, int32 nIconIndex, HICON* phiconLarge, HICON* phiconSmall, uint32 nIcons);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHFileOperationA(out SHFILEOPSTRUCTA lpFileOp);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHFileOperationW(out SHFILEOPSTRUCTW lpFileOp);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern void SHFreeNameMappings(HANDLE hNameMappings);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShellExecuteExA(out SHELLEXECUTEINFOA pExecInfo);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL ShellExecuteExW(out SHELLEXECUTEINFOW pExecInfo);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHCreateProcessAsUserW(out SHCREATEPROCESSINFOW pscpi);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHEvaluateSystemCommandTemplate(PWSTR pszCmdTemplate, out PWSTR ppszApplication, PWSTR* ppszCommandLine, PWSTR* ppszParameters);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocCreateForClasses(ASSOCIATIONELEMENT* rgClasses, uint32 cClasses, in Guid riid, void** ppv);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHQueryRecycleBinA(PSTR pszRootPath, out SHQUERYRBINFO pSHQueryRBInfo);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHQueryRecycleBinW(PWSTR pszRootPath, out SHQUERYRBINFO pSHQueryRBInfo);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHEmptyRecycleBinA(HWND hwnd, PSTR pszRootPath, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHEmptyRecycleBinW(HWND hwnd, PWSTR pszRootPath, uint32 dwFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHQueryUserNotificationState(out QUERY_USER_NOTIFICATION_STATE pquns);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL Shell_NotifyIconA(NOTIFY_ICON_MESSAGE dwMessage, ref NOTIFYICONDATAA lpData);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL Shell_NotifyIconW(NOTIFY_ICON_MESSAGE dwMessage, ref NOTIFYICONDATAW lpData);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT Shell_NotifyIconGetRect(in NOTIFYICONIDENTIFIER identifier, out RECT iconLocation);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SHGetFileInfoA(PSTR pszPath, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes, SHFILEINFOA* psfi, uint32 cbFileInfo, SHGFI_FLAGS uFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern uint SHGetFileInfoW(PWSTR pszPath, FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes, SHFILEINFOW* psfi, uint32 cbFileInfo, SHGFI_FLAGS uFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetStockIconInfo(SHSTOCKICONID siid, uint32 uFlags, out SHSTOCKICONINFO psii);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetDiskFreeSpaceExA(PSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetDiskFreeSpaceExW(PWSTR pszDirectoryName, ULARGE_INTEGER* pulFreeBytesAvailableToCaller, ULARGE_INTEGER* pulTotalNumberOfBytes, ULARGE_INTEGER* pulTotalNumberOfFreeBytes);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetNewLinkInfoA(PSTR pszLinkTo, PSTR pszDir, uint8* pszName, out BOOL pfMustCopy, uint32 uFlags);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHGetNewLinkInfoW(PWSTR pszLinkTo, PWSTR pszDir, char16* pszName, out BOOL pfMustCopy, uint32 uFlags);
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
	public static extern HRESULT SHGetLocalizedName(PWSTR pszPath, char16* pszResModule, uint32 cch, out int32 pidsRes);
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
	public static extern HRESULT SHGetImageList(int32 iImageList, in Guid riid, void** ppvObj);
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL InitNetworkAddressControl();
	[Import("shell32.lib"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetDriveMedia(PWSTR pszDrive, out uint32 pdwMediaContent);
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
	public static extern BOOL StrToIntExA(PSTR pszString, int32 dwFlags, out int32 piRet);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL StrToIntExW(PWSTR pszString, int32 dwFlags, out int32 piRet);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL StrToInt64ExA(PSTR pszString, int32 dwFlags, out int64 pllRet);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL StrToInt64ExW(PWSTR pszString, int32 dwFlags, out int64 pllRet);
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
	public static extern int32 wvnsprintfA(uint8* pszDest, int32 cchDest, PSTR pszFmt, ref int8 arglist);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wvnsprintfW(char16* pszDest, int32 cchDest, PWSTR pszFmt, ref int8 arglist);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wnsprintfA(uint8* pszDest, int32 cchDest, PSTR pszFmt);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 wnsprintfW(char16* pszDest, int32 cchDest, PWSTR pszFmt);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StrRetToStrA(out STRRET pstr, ITEMIDLIST* pidl, out PSTR ppsz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StrRetToStrW(out STRRET pstr, ITEMIDLIST* pidl, out PWSTR ppsz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StrRetToBufA(out STRRET pstr, ITEMIDLIST* pidl, uint8* pszBuf, uint32 cchBuf);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StrRetToBufW(out STRRET pstr, ITEMIDLIST* pidl, char16* pszBuf, uint32 cchBuf);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHStrDupA(PSTR psz, out PWSTR ppwsz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHStrDupW(PWSTR psz, out PWSTR ppwsz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 StrCmpLogicalW(PWSTR psz1, PWSTR psz2);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 StrCatChainW(char16* pszDst, uint32 cchDst, uint32 ichAt, PWSTR pszSrc);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT StrRetToBSTR(out STRRET pstr, ITEMIDLIST* pidl, out BSTR pbstr);
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
	public static extern HRESULT UrlCombineA(PSTR pszBase, PSTR pszRelative, uint8* pszCombined, out uint32 pcchCombined, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlCombineW(PWSTR pszBase, PWSTR pszRelative, char16* pszCombined, out uint32 pcchCombined, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlCanonicalizeA(PSTR pszUrl, uint8* pszCanonicalized, out uint32 pcchCanonicalized, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlCanonicalizeW(PWSTR pszUrl, char16* pszCanonicalized, out uint32 pcchCanonicalized, uint32 dwFlags);
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
	public static extern HRESULT UrlEscapeA(PSTR pszUrl, uint8* pszEscaped, out uint32 pcchEscaped, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlEscapeW(PWSTR pszUrl, char16* pszEscaped, out uint32 pcchEscaped, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlCreateFromPathA(PSTR pszPath, uint8* pszUrl, out uint32 pcchUrl, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlCreateFromPathW(PWSTR pszPath, char16* pszUrl, out uint32 pcchUrl, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCreateFromUrlA(PSTR pszUrl, uint8* pszPath, out uint32 pcchPath, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCreateFromUrlW(PWSTR pszUrl, char16* pszPath, out uint32 pcchPath, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCreateFromUrlAlloc(PWSTR pszIn, out PWSTR ppszOut, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlHashA(PSTR pszUrl, out uint8 pbHash, uint32 cbHash);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlHashW(PWSTR pszUrl, out uint8 pbHash, uint32 cbHash);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlGetPartW(PWSTR pszIn, char16* pszOut, out uint32 pcchOut, uint32 dwPart, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlGetPartA(PSTR pszIn, uint8* pszOut, out uint32 pcchOut, uint32 dwPart, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlApplySchemeA(PSTR pszIn, uint8* pszOut, out uint32 pcchOut, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlApplySchemeW(PWSTR pszIn, char16* pszOut, out uint32 pcchOut, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HashData(ref uint8 pbData, uint32 cbData, out uint8 pbHash, uint32 cbHash);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT UrlFixupW(PWSTR pcszUrl, char16* pszTranslatedUrl, uint32 cchMax);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ParseURLA(PSTR pcszURL, out PARSEDURLA ppu);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ParseURLW(PWSTR pcszURL, out PARSEDURLW ppu);
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
	public static extern LSTATUS SHQueryValueExA(HKEY hkey, PSTR pszValue, out uint32 pdwReserved, uint32* pdwType, void* pvData, uint32* pcbData);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHQueryValueExW(HKEY hkey, PWSTR pszValue, out uint32 pdwReserved, uint32* pdwType, void* pvData, uint32* pcbData);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHEnumKeyExA(HKEY hkey, uint32 dwIndex, uint8* pszName, out uint32 pcchName);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHEnumKeyExW(HKEY hkey, uint32 dwIndex, char16* pszName, out uint32 pcchName);
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
	public static extern LSTATUS SHRegCreateUSKeyA(PSTR pszPath, uint32 samDesired, int hRelativeUSKey, out int phNewUSKey, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegCreateUSKeyW(PWSTR pwzPath, uint32 samDesired, int hRelativeUSKey, out int phNewUSKey, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegOpenUSKeyA(PSTR pszPath, uint32 samDesired, int hRelativeUSKey, out int phNewUSKey, BOOL fIgnoreHKCU);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegOpenUSKeyW(PWSTR pwzPath, uint32 samDesired, int hRelativeUSKey, out int phNewUSKey, BOOL fIgnoreHKCU);
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
	public static extern LSTATUS SHRegEnumUSKeyA(int hUSKey, uint32 dwIndex, uint8* pszName, out uint32 pcchName, SHREGENUM_FLAGS enumRegFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegEnumUSKeyW(int hUSKey, uint32 dwIndex, char16* pwzName, out uint32 pcchName, SHREGENUM_FLAGS enumRegFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegEnumUSValueA(int hUSkey, uint32 dwIndex, uint8* pszValueName, out uint32 pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData, SHREGENUM_FLAGS enumRegFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern LSTATUS SHRegEnumUSValueW(int hUSkey, uint32 dwIndex, char16* pszValueName, out uint32 pcchValueName, uint32* pdwType, void* pvData, uint32* pcbData, SHREGENUM_FLAGS enumRegFlags);
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
	public static extern HRESULT AssocCreate(Guid clsid, in Guid riid, void** ppv);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryStringA(uint32 flags, ASSOCSTR str, PSTR pszAssoc, PSTR pszExtra, uint8* pszOut, out uint32 pcchOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryStringW(uint32 flags, ASSOCSTR str, PWSTR pszAssoc, PWSTR pszExtra, char16* pszOut, out uint32 pcchOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryStringByKeyA(uint32 flags, ASSOCSTR str, HKEY hkAssoc, PSTR pszExtra, uint8* pszOut, out uint32 pcchOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryStringByKeyW(uint32 flags, ASSOCSTR str, HKEY hkAssoc, PWSTR pszExtra, char16* pszOut, out uint32 pcchOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryKeyA(uint32 flags, ASSOCKEY key, PSTR pszAssoc, PSTR pszExtra, out HKEY phkeyOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocQueryKeyW(uint32 flags, ASSOCKEY key, PWSTR pszAssoc, PWSTR pszExtra, out HKEY phkeyOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL AssocIsDangerous(PWSTR pszAssoc);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT AssocGetPerceivedType(PWSTR pszExt, out PERCEIVED ptype, out uint32 pflag, PWSTR* ppszType);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IStream* SHOpenRegStreamA(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IStream* SHOpenRegStreamW(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IStream* SHOpenRegStream2A(HKEY hkey, PSTR pszSubkey, PSTR pszValue, uint32 grfMode);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IStream* SHOpenRegStream2W(HKEY hkey, PWSTR pszSubkey, PWSTR pszValue, uint32 grfMode);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateStreamOnFileA(PSTR pszFile, uint32 grfMode, out IStream* ppstm);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateStreamOnFileW(PWSTR pszFile, uint32 grfMode, out IStream* ppstm);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateStreamOnFileEx(PWSTR pszFile, uint32 grfMode, uint32 dwAttributes, BOOL fCreate, IStream* pstmTemplate, out IStream* ppstm);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern IStream* SHCreateMemStream(uint8* pInit, uint32 cbInit);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetAcceptLanguagesA(uint8* pszLanguages, out uint32 pcchLanguages);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT GetAcceptLanguagesW(char16* pszLanguages, out uint32 pcchLanguages);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void IUnknown_Set(out IUnknown* ppunk, IUnknown* punk);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void IUnknown_AtomicRelease(void** ppunk);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IUnknown_GetWindow(ref IUnknown punk, out HWND phwnd);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IUnknown_SetSite(ref IUnknown punk, IUnknown* punkSite);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IUnknown_GetSite(ref IUnknown punk, in Guid riid, void** ppv);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IUnknown_QueryService(IUnknown* punk, in Guid guidService, in Guid riid, void** ppvOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_Read(ref IStream pstm, void* pv, uint32 cb);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_Write(ref IStream pstm, void* pv, uint32 cb);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_Reset(ref IStream pstm);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_Size(ref IStream pstm, out ULARGE_INTEGER pui);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT ConnectToConnectionPoint(IUnknown* punk, in Guid riidEvent, BOOL fConnect, ref IUnknown punkTarget, out uint32 pdwCookie, IConnectionPoint** ppcpOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_ReadPidl(ref IStream pstm, out ITEMIDLIST* ppidlOut);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_WritePidl(ref IStream pstm, ref ITEMIDLIST pidlWrite);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_ReadStr(ref IStream pstm, out PWSTR ppsz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_WriteStr(ref IStream pstm, PWSTR psz);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT IStream_Copy(ref IStream pstmFrom, ref IStream pstmTo, uint32 cb);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetViewStatePropertyBag(ITEMIDLIST* pidl, PWSTR pszBagName, uint32 dwFlags, in Guid riid, void** ppv);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHFormatDateTimeA(in FILETIME pft, uint32* pdwFlags, uint8* pszBuf, uint32 cchBuf);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 SHFormatDateTimeW(in FILETIME pft, uint32* pdwFlags, char16* pszBuf, uint32 cchBuf);
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
	public static extern HRESULT QISearch(void* that, ref QITAB pqit, in Guid riid, void** ppv);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHIsLowMemoryMachine(uint32 dwType);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern int32 GetMenuPosFromID(HMENU hmenu, uint32 id);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetInverseCMAP(out uint8 pbMap, uint32 cbMap);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHAutoComplete(HWND hwndEdit, uint32 dwFlags);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHCreateThreadRef(out int32 pcRef, out IUnknown* ppunk);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHSetThreadRef(IUnknown* punk);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHGetThreadRef(out IUnknown* ppunk);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHSkipJunction(IBindCtx* pbc, in Guid pclsid);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHCreateThread(LPTHREAD_START_ROUTINE pfnThreadProc, void* pData, uint32 flags, LPTHREAD_START_ROUTINE pfnCallback);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL SHCreateThreadWithHandle(LPTHREAD_START_ROUTINE pfnThreadProc, void* pData, uint32 flags, LPTHREAD_START_ROUTINE pfnCallback, HANDLE* pHandle);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT SHReleaseThreadRef();
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HPALETTE SHCreateShellPalette(HDC hdc);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void ColorRGBToHLS(uint32 clrRGB, out uint16 pwHue, out uint16 pwLuminance, out uint16 pwSaturation);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ColorHLSToRGB(uint16 wHue, uint16 wLuminance, uint16 wSaturation);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 ColorAdjustLuma(uint32 clrRGB, int32 n, BOOL fScale);
	[Import("shlwapi.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern BOOL IsInternetESCEnabled();
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateFromMoniker(ref IMoniker pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName, ref IHlinkSite pihlsite, uint32 dwSiteData, ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateFromString(PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, ref IHlinkSite pihlsite, uint32 dwSiteData, ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateFromData(ref IDataObject piDataObj, ref IHlinkSite pihlsite, uint32 dwSiteData, ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkQueryCreateFromData(ref IDataObject piDataObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkClone(ref IHlink pihl, in Guid riid, ref IHlinkSite pihlsiteForClone, uint32 dwSiteData, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateBrowseContext(ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkNavigateToStringReference(PWSTR pwzTarget, PWSTR pwzLocation, ref IHlinkSite pihlsite, uint32 dwSiteData, ref IHlinkFrame pihlframe, uint32 grfHLNF, ref IBindCtx pibc, ref IBindStatusCallback pibsc, ref IHlinkBrowseContext pihlbc);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkNavigate(ref IHlink pihl, ref IHlinkFrame pihlframe, uint32 grfHLNF, ref IBindCtx pbc, ref IBindStatusCallback pibsc, ref IHlinkBrowseContext pihlbc);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkOnNavigate(ref IHlinkFrame pihlframe, ref IHlinkBrowseContext pihlbc, uint32 grfHLNF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzFriendlyName, out uint32 puHLID);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkUpdateStackItem(ref IHlinkFrame pihlframe, ref IHlinkBrowseContext pihlbc, uint32 uHLID, ref IMoniker pimkTrgt, PWSTR pwzLocation, PWSTR pwzFriendlyName);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkOnRenameDocument(uint32 dwReserved, ref IHlinkBrowseContext pihlbc, ref IMoniker pimkOld, ref IMoniker pimkNew);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkResolveMonikerForData(ref IMoniker pimkReference, uint32 reserved, ref IBindCtx pibc, uint32 cFmtetc, out FORMATETC rgFmtetc, ref IBindStatusCallback pibsc, ref IMoniker pimkBase);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkResolveStringForData(PWSTR pwzReference, uint32 reserved, ref IBindCtx pibc, uint32 cFmtetc, out FORMATETC rgFmtetc, ref IBindStatusCallback pibsc, ref IMoniker pimkBase);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkParseDisplayName(ref IBindCtx pibc, PWSTR pwzDisplayName, BOOL fNoForceAbs, out uint32 pcchEaten, out IMoniker* ppimk);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateExtensionServices(PWSTR pwzAdditionalHeaders, HWND phwnd, PWSTR pszUsername, PWSTR pszPassword, ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkPreprocessMoniker(ref IBindCtx pibc, ref IMoniker pimkIn, out IMoniker* ppimkOut);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT OleSaveToStreamEx(ref IUnknown piunk, ref IStream pistm, BOOL fClearDirty);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkSetSpecialReference(uint32 uReference, PWSTR pwzReference);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkGetSpecialReference(uint32 uReference, out PWSTR ppwzReference);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateShortcut(uint32 grfHLSHORTCUTF, ref IHlink pihl, PWSTR pwzDir, PWSTR pwzFileName, out PWSTR ppwzShortcutFile, uint32 dwReserved);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateShortcutFromMoniker(uint32 grfHLSHORTCUTF, ref IMoniker pimkTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, out PWSTR ppwzShortcutFile, uint32 dwReserved);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkCreateShortcutFromString(uint32 grfHLSHORTCUTF, PWSTR pwzTarget, PWSTR pwzLocation, PWSTR pwzDir, PWSTR pwzFileName, out PWSTR ppwzShortcutFile, uint32 dwReserved);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkResolveShortcut(PWSTR pwzShortcutFileName, ref IHlinkSite pihlsite, uint32 dwSiteData, ref IUnknown piunkOuter, in Guid riid, void** ppvObj);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkResolveShortcutToMoniker(PWSTR pwzShortcutFileName, out IMoniker* ppimkTarget, out PWSTR ppwzLocation);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkResolveShortcutToString(PWSTR pwzShortcutFileName, out PWSTR ppwzTarget, out PWSTR ppwzLocation);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkIsShortcut(PWSTR pwzFileName);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkGetValueFromParams(PWSTR pwzParams, PWSTR pwzName, out PWSTR ppwzValue);
	[Import("hlink.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT HlinkTranslateURL(PWSTR pwzURL, uint32 grfFlags, out PWSTR ppwzTranslatedURL);
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
	public static extern HRESULT PathCchSkipRoot(PWSTR pszPath, out PWSTR ppszRootEnd);
	[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCchStripToRoot(PWSTR pszPath, uint cchPath);
	[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCchRemoveFileSpec(PWSTR pszPath, uint cchPath);
	[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathCchFindExtension(PWSTR pszPath, uint cchPath, out PWSTR ppszExt);
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
	public static extern HRESULT PathAllocCombine(PWSTR pszPathIn, PWSTR pszMore, uint32 dwFlags, out PWSTR ppszPathOut);
	[Import("api-ms-win-core-path-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern HRESULT PathAllocCanonicalize(PWSTR pszPathIn, uint32 dwFlags, out PWSTR ppszPathOut);
	[Import("api-ms-win-core-psm-appnotify-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterAppStateChangeNotification(PAPPSTATE_CHANGE_ROUTINE Routine, void* Context, out _APPSTATE_REGISTRATION* Registration);
	[Import("api-ms-win-core-psm-appnotify-l1-1-0.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UnregisterAppStateChangeNotification(out _APPSTATE_REGISTRATION Registration);
	[Import("api-ms-win-core-psm-appnotify-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern uint32 RegisterAppConstrainedChangeNotification(PAPPCONSTRAIN_CHANGE_ROUTINE Routine, void* Context, out _APPCONSTRAIN_REGISTRATION* Registration);
	[Import("api-ms-win-core-psm-appnotify-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
	public static extern void UnregisterAppConstrainedChangeNotification(out _APPCONSTRAIN_REGISTRATION Registration);
	#endregion
}
