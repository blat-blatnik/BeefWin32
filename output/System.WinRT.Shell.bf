using System;

// namespace System.WinRT.Shell
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum CreateProcessMethod : int32
		{
			CreateProcess = 0,
			CreateProcessAsUser = 1,
			AicLaunchAdminProcess = 2,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDDEInitializer : IUnknown
		{
			public const new Guid IID = .(0x30dc931f, 0x33fc, 0x4ffd, 0xa1, 0x68, 0x94, 0x22, 0x58, 0xcf, 0x3c, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Initialize(PWSTR fileExtensionOrProtocol, CreateProcessMethod method, PWSTR currentDirectory, ref IShellItem execTarget, ref IUnknown site, PWSTR application, PWSTR targetFile, PWSTR arguments, PWSTR verb) mut => VT.Initialize(ref this, fileExtensionOrProtocol, method, currentDirectory, ref execTarget, ref site, application, targetFile, arguments, verb);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDDEInitializer self, PWSTR fileExtensionOrProtocol, CreateProcessMethod method, PWSTR currentDirectory, ref IShellItem execTarget, ref IUnknown site, PWSTR application, PWSTR targetFile, PWSTR arguments, PWSTR verb) Initialize;
			}
		}
		
	}
}
