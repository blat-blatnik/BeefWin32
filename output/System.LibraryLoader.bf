using System;

// namespace System.LibraryLoader
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 FIND_RESOURCE_DIRECTORY_TYPES = 256;
		public const uint32 FIND_RESOURCE_DIRECTORY_NAMES = 512;
		public const uint32 FIND_RESOURCE_DIRECTORY_LANGUAGES = 1024;
		public const uint32 RESOURCE_ENUM_LN = 1;
		public const uint32 RESOURCE_ENUM_MUI = 2;
		public const uint32 RESOURCE_ENUM_MUI_SYSTEM = 4;
		public const uint32 RESOURCE_ENUM_VALIDATE = 8;
		public const uint32 RESOURCE_ENUM_MODULE_EXACT = 16;
		public const uint32 SUPPORT_LANG_NUMBER = 32;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_PIN = 1;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT = 2;
		public const uint32 GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS = 4;
		public const uint32 CURRENT_IMPORT_REDIRECTION_VERSION = 1;
		public const uint32 LOAD_LIBRARY_OS_INTEGRITY_CONTINUITY = 32768;
		
		// --- Enums ---
		
		public enum LOAD_LIBRARY_FLAGS : uint32
		{
			DONT_RESOLVE_DLL_REFERENCES = 1,
			LOAD_LIBRARY_AS_DATAFILE = 2,
			LOAD_WITH_ALTERED_SEARCH_PATH = 8,
			LOAD_IGNORE_CODE_AUTHZ_LEVEL = 16,
			LOAD_LIBRARY_AS_IMAGE_RESOURCE = 32,
			LOAD_LIBRARY_AS_DATAFILE_EXCLUSIVE = 64,
			LOAD_LIBRARY_REQUIRE_SIGNED_TARGET = 128,
			LOAD_LIBRARY_SEARCH_DLL_LOAD_DIR = 256,
			LOAD_LIBRARY_SEARCH_APPLICATION_DIR = 512,
			LOAD_LIBRARY_SEARCH_USER_DIRS = 1024,
			LOAD_LIBRARY_SEARCH_SYSTEM32 = 2048,
			LOAD_LIBRARY_SEARCH_DEFAULT_DIRS = 4096,
			LOAD_LIBRARY_SAFE_CURRENT_DIRS = 8192,
			LOAD_LIBRARY_SEARCH_SYSTEM32_NO_FORWARDER = 16384,
		}
		
		// --- Function Pointers ---
		
		public function BOOL ENUMRESLANGPROCA(HINSTANCE hModule, PSTR lpType, PSTR lpName, uint16 wLanguage, int lParam);
		public function BOOL ENUMRESLANGPROCW(HINSTANCE hModule, PWSTR lpType, PWSTR lpName, uint16 wLanguage, int lParam);
		public function BOOL ENUMRESNAMEPROCA(HINSTANCE hModule, PSTR lpType, PSTR lpName, int lParam);
		public function BOOL ENUMRESNAMEPROCW(HINSTANCE hModule, PWSTR lpType, PWSTR lpName, int lParam);
		public function BOOL ENUMRESTYPEPROCA(HINSTANCE hModule, PSTR lpType, int lParam);
		public function BOOL ENUMRESTYPEPROCW(HINSTANCE hModule, PWSTR lpType, int lParam);
		public function BOOL PGET_MODULE_HANDLE_EXA(uint32 dwFlags, PSTR lpModuleName, out HINSTANCE phModule);
		public function BOOL PGET_MODULE_HANDLE_EXW(uint32 dwFlags, PWSTR lpModuleName, out HINSTANCE phModule);
		
		// --- Structs ---
		
		[CRepr]
		public struct ENUMUILANG
		{
			public uint32 NumOfEnumUILang;
			public uint32 SizeOfEnumUIBuffer;
			public uint16* pEnumUIBuffer;
		}
		[CRepr]
		public struct REDIRECTION_FUNCTION_DESCRIPTOR
		{
			public PSTR DllName;
			public PSTR FunctionName;
			public void* RedirectionTarget;
		}
		[CRepr]
		public struct REDIRECTION_DESCRIPTOR
		{
			public uint32 Version;
			public uint32 FunctionCount;
			public REDIRECTION_FUNCTION_DESCRIPTOR* Redirections;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DisableThreadLibraryCalls(HINSTANCE hLibModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceExW(HINSTANCE hModule, PWSTR lpType, PWSTR lpName, uint16 wLanguage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeLibrary(HINSTANCE hLibModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void FreeLibraryAndExitThread(HINSTANCE hLibModule, uint32 dwExitCode);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL FreeResource(int hResData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetModuleFileNameA(HINSTANCE hModule, uint8* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetModuleFileNameW(HINSTANCE hModule, char16* lpFilename, uint32 nSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE GetModuleHandleA(PSTR lpModuleName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE GetModuleHandleW(PWSTR lpModuleName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetModuleHandleExA(uint32 dwFlags, PSTR lpModuleName, out HINSTANCE phModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetModuleHandleExW(uint32 dwFlags, PWSTR lpModuleName, out HINSTANCE phModule);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern FARPROC GetProcAddress(HINSTANCE hModule, PSTR lpProcName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryExA(PSTR lpLibFileName, HANDLE hFile, LOAD_LIBRARY_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryExW(PWSTR lpLibFileName, HANDLE hFile, LOAD_LIBRARY_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern int LoadResource(HINSTANCE hModule, HRSRC hResInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* LockResource(int hResData);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 SizeofResource(HINSTANCE hModule, HRSRC hResInfo);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern void* AddDllDirectory(PWSTR NewDirectory);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL RemoveDllDirectory(void* Cookie);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDefaultDllDirectories(LOAD_LIBRARY_FLAGS DirectoryFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceLanguagesExA(HINSTANCE hModule, PSTR lpType, PSTR lpName, ENUMRESLANGPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceLanguagesExW(HINSTANCE hModule, PWSTR lpType, PWSTR lpName, ENUMRESLANGPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceNamesExA(HINSTANCE hModule, PSTR lpType, ENUMRESNAMEPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceNamesExW(HINSTANCE hModule, PWSTR lpType, ENUMRESNAMEPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceTypesExA(HINSTANCE hModule, ENUMRESTYPEPROCA lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceTypesExW(HINSTANCE hModule, ENUMRESTYPEPROCW lpEnumFunc, int lParam, uint32 dwFlags, uint16 LangId);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceW(HINSTANCE hModule, PWSTR lpName, PWSTR lpType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryA(PSTR lpLibFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadLibraryW(PWSTR lpLibFileName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceNamesW(HINSTANCE hModule, PWSTR lpType, ENUMRESNAMEPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceNamesA(HINSTANCE hModule, PSTR lpType, ENUMRESNAMEPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 LoadModule(PSTR lpModuleName, void* lpParameterBlock);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HINSTANCE LoadPackagedLibrary(PWSTR lpwLibFileName, uint32 Reserved);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceA(HINSTANCE hModule, PSTR lpName, PSTR lpType);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HRSRC FindResourceExA(HINSTANCE hModule, PSTR lpType, PSTR lpName, uint16 wLanguage);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceTypesA(HINSTANCE hModule, ENUMRESTYPEPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceTypesW(HINSTANCE hModule, ENUMRESTYPEPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceLanguagesA(HINSTANCE hModule, PSTR lpType, PSTR lpName, ENUMRESLANGPROCA lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EnumResourceLanguagesW(HINSTANCE hModule, PWSTR lpType, PWSTR lpName, ENUMRESLANGPROCW lpEnumFunc, int lParam);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE BeginUpdateResourceA(PSTR pFileName, BOOL bDeleteExistingResources);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE BeginUpdateResourceW(PWSTR pFileName, BOOL bDeleteExistingResources);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateResourceA(HANDLE hUpdate, PSTR lpType, PSTR lpName, uint16 wLanguage, void* lpData, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL UpdateResourceW(HANDLE hUpdate, PWSTR lpType, PWSTR lpName, uint16 wLanguage, void* lpData, uint32 cb);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndUpdateResourceA(HANDLE hUpdate, BOOL fDiscard);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EndUpdateResourceW(HANDLE hUpdate, BOOL fDiscard);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDllDirectoryA(PSTR lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDllDirectoryW(PWSTR lpPathName);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDllDirectoryA(uint32 nBufferLength, uint8* lpBuffer);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetDllDirectoryW(uint32 nBufferLength, char16* lpBuffer);
	}
}
