using System;

// namespace System.IO
namespace Win32
{
	extension Win32
	{
		// --- Function Pointers ---
		
		public function void LPOVERLAPPED_COMPLETION_ROUTINE(uint32 dwErrorCode, uint32 dwNumberOfBytesTransfered, out OVERLAPPED lpOverlapped);
		
		// --- Structs ---
		
		[CRepr]
		public struct OVERLAPPED
		{
			public uint Internal;
			public uint InternalHigh;
			public _Anonymous_e__Union Anonymous;
			public HANDLE hEvent;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public void* Pointer;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 Offset;
					public uint32 OffsetHigh;
				}
			}
		}
		[CRepr]
		public struct OVERLAPPED_ENTRY
		{
			public uint lpCompletionKey;
			public OVERLAPPED* lpOverlapped;
			public uint Internal;
			public uint32 dwNumberOfBytesTransferred;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE CreateIoCompletionPort(HANDLE FileHandle, HANDLE ExistingCompletionPort, uint CompletionKey, uint32 NumberOfConcurrentThreads);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetQueuedCompletionStatus(HANDLE CompletionPort, out uint32 lpNumberOfBytesTransferred, out uint lpCompletionKey, out OVERLAPPED* lpOverlapped, uint32 dwMilliseconds);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetQueuedCompletionStatusEx(HANDLE CompletionPort, OVERLAPPED_ENTRY* lpCompletionPortEntries, uint32 ulCount, out uint32 ulNumEntriesRemoved, uint32 dwMilliseconds, BOOL fAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PostQueuedCompletionStatus(HANDLE CompletionPort, uint32 dwNumberOfBytesTransferred, uint dwCompletionKey, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL DeviceIoControl(HANDLE hDevice, uint32 dwIoControlCode, void* lpInBuffer, uint32 nInBufferSize, void* lpOutBuffer, uint32 nOutBufferSize, uint32* lpBytesReturned, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOverlappedResult(HANDLE hFile, ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, BOOL bWait);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CancelIoEx(HANDLE hFile, OVERLAPPED* lpOverlapped);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CancelIo(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetOverlappedResultEx(HANDLE hFile, ref OVERLAPPED lpOverlapped, out uint32 lpNumberOfBytesTransferred, uint32 dwMilliseconds, BOOL bAlertable);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CancelSynchronousIo(HANDLE hThread);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BindIoCompletionCallback(HANDLE FileHandle, LPOVERLAPPED_COMPLETION_ROUTINE Function, uint32 Flags);
	}
}
