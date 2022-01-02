using System;

// namespace Storage.Compression
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 COMPRESS_ALGORITHM_INVALID = 0;
		public const uint32 COMPRESS_ALGORITHM_NULL = 1;
		public const uint32 COMPRESS_ALGORITHM_MAX = 6;
		public const uint32 COMPRESS_RAW = 536870912;
		
		// --- Typedefs ---
		
		public typealias COMPRESSOR_HANDLE = int;
		
		// --- Enums ---
		
		public enum COMPRESS_ALGORITHM : uint32
		{
			MSZIP = 2,
			XPRESS = 3,
			XPRESS_HUFF = 4,
			LZMS = 5,
		}
		public enum COMPRESS_INFORMATION_CLASS : int32
		{
			INVALID = 0,
			BLOCK_SIZE = 1,
			LEVEL = 2,
		}
		
		// --- Function Pointers ---
		
		public function void* PFN_COMPRESS_ALLOCATE(void* UserContext, uint Size);
		public function void PFN_COMPRESS_FREE(void* UserContext, void* Memory);
		
		// --- Structs ---
		
		[CRepr]
		public struct COMPRESS_ALLOCATION_ROUTINES
		{
			public PFN_COMPRESS_ALLOCATE Allocate;
			public PFN_COMPRESS_FREE Free;
			public void* UserContext;
		}
		
		// --- Functions ---
		
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateCompressor(COMPRESS_ALGORITHM Algorithm, COMPRESS_ALLOCATION_ROUTINES* AllocationRoutines, out int CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCompressorInformation(COMPRESSOR_HANDLE CompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryCompressorInformation(COMPRESSOR_HANDLE CompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Compress(COMPRESSOR_HANDLE CompressorHandle, void* UncompressedData, uint UncompressedDataSize, void* CompressedBuffer, uint CompressedBufferSize, out uint CompressedDataSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ResetCompressor(COMPRESSOR_HANDLE CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseCompressor(COMPRESSOR_HANDLE CompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CreateDecompressor(COMPRESS_ALGORITHM Algorithm, COMPRESS_ALLOCATION_ROUTINES* AllocationRoutines, out int DecompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDecompressorInformation(int DecompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL QueryDecompressorInformation(int DecompressorHandle, COMPRESS_INFORMATION_CLASS CompressInformationClass, void* CompressInformation, uint CompressInformationSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL Decompress(int DecompressorHandle, void* CompressedData, uint CompressedDataSize, void* UncompressedBuffer, uint UncompressedBufferSize, uint* UncompressedDataSize);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ResetDecompressor(int DecompressorHandle);
		[Import("cabinet.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CloseDecompressor(int DecompressorHandle);
	}
}
