using System;

// namespace System.PasswordManagement
namespace Win32
{
	extension Win32
	{
		// --- Structs ---
		
		[CRepr]
		public struct CYPHER_BLOCK
		{
			public CHAR[8] data;
		}
		[CRepr]
		public struct LM_OWF_PASSWORD
		{
			public CYPHER_BLOCK[2] data;
		}
		[CRepr]
		public struct SAMPR_ENCRYPTED_USER_PASSWORD
		{
			public uint8[516] Buffer;
		}
		[CRepr]
		public struct ENCRYPTED_LM_OWF_PASSWORD
		{
			public CYPHER_BLOCK[2] data;
		}
		
		// --- Functions ---
		
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MSChapSrvChangePassword(PWSTR ServerName, PWSTR UserName, BOOLEAN LmOldPresent, LM_OWF_PASSWORD* LmOldOwfPassword, LM_OWF_PASSWORD* LmNewOwfPassword, LM_OWF_PASSWORD* NtOldOwfPassword, LM_OWF_PASSWORD* NtNewOwfPassword);
		[Import("advapi32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 MSChapSrvChangePassword2(PWSTR ServerName, PWSTR UserName, SAMPR_ENCRYPTED_USER_PASSWORD* NewPasswordEncryptedWithOldNt, ENCRYPTED_LM_OWF_PASSWORD* OldNtOwfPasswordEncryptedWithNewNt, BOOLEAN LmPresent, SAMPR_ENCRYPTED_USER_PASSWORD* NewPasswordEncryptedWithOldLm, ENCRYPTED_LM_OWF_PASSWORD* OldLmOwfPasswordEncryptedWithNewLmOrNt);
		
	}
}
