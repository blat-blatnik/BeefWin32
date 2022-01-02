using System;

// namespace Devices.Communication
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 MDM_COMPRESSION = 1;
		public const uint32 MDM_ERROR_CONTROL = 2;
		public const uint32 MDM_FORCED_EC = 4;
		public const uint32 MDM_CELLULAR = 8;
		public const uint32 MDM_FLOWCONTROL_HARD = 16;
		public const uint32 MDM_FLOWCONTROL_SOFT = 32;
		public const uint32 MDM_CCITT_OVERRIDE = 64;
		public const uint32 MDM_SPEED_ADJUST = 128;
		public const uint32 MDM_TONE_DIAL = 256;
		public const uint32 MDM_BLIND_DIAL = 512;
		public const uint32 MDM_V23_OVERRIDE = 1024;
		public const uint32 MDM_DIAGNOSTICS = 2048;
		public const uint32 MDM_MASK_BEARERMODE = 61440;
		public const uint32 MDM_SHIFT_BEARERMODE = 12;
		public const uint32 MDM_MASK_PROTOCOLID = 983040;
		public const uint32 MDM_SHIFT_PROTOCOLID = 16;
		public const uint32 MDM_MASK_PROTOCOLDATA = 267386880;
		public const uint32 MDM_SHIFT_PROTOCOLDATA = 20;
		public const uint32 MDM_SHIFT_PROTOCOLINFO = 16;
		public const uint32 MDM_SHIFT_EXTENDEDINFO = 12;
		public const uint32 MDM_BEARERMODE_ANALOG = 0;
		public const uint32 MDM_BEARERMODE_ISDN = 1;
		public const uint32 MDM_BEARERMODE_GSM = 2;
		public const uint32 MDM_PROTOCOLID_DEFAULT = 0;
		public const uint32 MDM_PROTOCOLID_HDLCPPP = 1;
		public const uint32 MDM_PROTOCOLID_V128 = 2;
		public const uint32 MDM_PROTOCOLID_X75 = 3;
		public const uint32 MDM_PROTOCOLID_V110 = 4;
		public const uint32 MDM_PROTOCOLID_V120 = 5;
		public const uint32 MDM_PROTOCOLID_AUTO = 6;
		public const uint32 MDM_PROTOCOLID_ANALOG = 7;
		public const uint32 MDM_PROTOCOLID_GPRS = 8;
		public const uint32 MDM_PROTOCOLID_PIAFS = 9;
		public const uint32 MDM_SHIFT_HDLCPPP_SPEED = 0;
		public const uint32 MDM_MASK_HDLCPPP_SPEED = 7;
		public const uint32 MDM_HDLCPPP_SPEED_DEFAULT = 0;
		public const uint32 MDM_HDLCPPP_SPEED_64K = 1;
		public const uint32 MDM_HDLCPPP_SPEED_56K = 2;
		public const uint32 MDM_SHIFT_HDLCPPP_AUTH = 3;
		public const uint32 MDM_HDLCPPP_AUTH_DEFAULT = 0;
		public const uint32 MDM_HDLCPPP_AUTH_NONE = 1;
		public const uint32 MDM_HDLCPPP_AUTH_PAP = 2;
		public const uint32 MDM_HDLCPPP_AUTH_CHAP = 3;
		public const uint32 MDM_HDLCPPP_AUTH_MSCHAP = 4;
		public const uint32 MDM_SHIFT_HDLCPPP_ML = 6;
		public const uint32 MDM_HDLCPPP_ML_DEFAULT = 0;
		public const uint32 MDM_HDLCPPP_ML_NONE = 1;
		public const uint32 MDM_HDLCPPP_ML_2 = 2;
		public const uint32 MDM_SHIFT_V120_SPEED = 0;
		public const uint32 MDM_MASK_V120_SPEED = 7;
		public const uint32 MDM_V120_SPEED_DEFAULT = 0;
		public const uint32 MDM_V120_SPEED_64K = 1;
		public const uint32 MDM_V120_SPEED_56K = 2;
		public const uint32 MDM_SHIFT_V120_ML = 6;
		public const uint32 MDM_V120_ML_DEFAULT = 0;
		public const uint32 MDM_V120_ML_NONE = 1;
		public const uint32 MDM_V120_ML_2 = 2;
		public const uint32 MDM_SHIFT_X75_DATA = 0;
		public const uint32 MDM_MASK_X75_DATA = 7;
		public const uint32 MDM_X75_DATA_DEFAULT = 0;
		public const uint32 MDM_X75_DATA_64K = 1;
		public const uint32 MDM_X75_DATA_128K = 2;
		public const uint32 MDM_X75_DATA_T_70 = 3;
		public const uint32 MDM_X75_DATA_BTX = 4;
		public const uint32 MDM_SHIFT_V110_SPEED = 0;
		public const uint32 MDM_MASK_V110_SPEED = 15;
		public const uint32 MDM_V110_SPEED_DEFAULT = 0;
		public const uint32 MDM_V110_SPEED_1DOT2K = 1;
		public const uint32 MDM_V110_SPEED_2DOT4K = 2;
		public const uint32 MDM_V110_SPEED_4DOT8K = 3;
		public const uint32 MDM_V110_SPEED_9DOT6K = 4;
		public const uint32 MDM_V110_SPEED_12DOT0K = 5;
		public const uint32 MDM_V110_SPEED_14DOT4K = 6;
		public const uint32 MDM_V110_SPEED_19DOT2K = 7;
		public const uint32 MDM_V110_SPEED_28DOT8K = 8;
		public const uint32 MDM_V110_SPEED_38DOT4K = 9;
		public const uint32 MDM_V110_SPEED_57DOT6K = 10;
		public const uint32 MDM_SHIFT_AUTO_SPEED = 0;
		public const uint32 MDM_MASK_AUTO_SPEED = 7;
		public const uint32 MDM_AUTO_SPEED_DEFAULT = 0;
		public const uint32 MDM_SHIFT_AUTO_ML = 6;
		public const uint32 MDM_AUTO_ML_DEFAULT = 0;
		public const uint32 MDM_AUTO_ML_NONE = 1;
		public const uint32 MDM_AUTO_ML_2 = 2;
		public const uint32 MDM_ANALOG_RLP_ON = 0;
		public const uint32 MDM_ANALOG_RLP_OFF = 1;
		public const uint32 MDM_ANALOG_V34 = 2;
		public const uint32 MDM_PIAFS_INCOMING = 0;
		public const uint32 MDM_PIAFS_OUTGOING = 1;
		public const Guid SID_3GPP_SUPSVCMODEL = .(0xd7d08e07, 0xd767, 0x4478, 0xb1, 0x4a, 0xee, 0xcc, 0x87, 0xea, 0x12, 0xf7);
		public const uint32 MAXLENGTH_NAI = 72;
		public const uint32 MAXLENGTH_UICCDATASTORE = 10;
		
		// --- Enums ---
		
		public enum MODEM_STATUS_FLAGS : uint32
		{
			CTS_ON = 16,
			DSR_ON = 32,
			RING_ON = 64,
			RLSD_ON = 128,
		}
		public enum CLEAR_COMM_ERROR_FLAGS : uint32
		{
			BREAK = 16,
			FRAME = 8,
			OVERRUN = 2,
			RXOVER = 1,
			RXPARITY = 4,
		}
		public enum PURGE_COMM_FLAGS : uint32
		{
			RXABORT = 2,
			RXCLEAR = 8,
			TXABORT = 1,
			TXCLEAR = 4,
		}
		public enum COMM_EVENT_MASK : uint32
		{
			BREAK = 64,
			CTS = 8,
			DSR = 16,
			ERR = 128,
			EVENT1 = 2048,
			EVENT2 = 4096,
			PERR = 512,
			RING = 256,
			RLSD = 32,
			RX80FULL = 1024,
			RXCHAR = 1,
			RXFLAG = 2,
			TXEMPTY = 4,
		}
		public enum ESCAPE_COMM_FUNCTION : uint32
		{
			CLRBREAK = 9,
			CLRDTR = 6,
			CLRRTS = 4,
			SETBREAK = 8,
			SETDTR = 5,
			SETRTS = 3,
			SETXOFF = 1,
			SETXON = 2,
		}
		public enum MODEMDEVCAPS_DIAL_OPTIONS : uint32
		{
			BILLING = 64,
			DIALTONE = 256,
			QUIET = 128,
		}
		public enum MODEMSETTINGS_SPEAKER_MODE : uint32
		{
			CALLSETUP = 8,
			DIAL = 2,
			OFF = 1,
			ON = 4,
		}
		public enum COMMPROP_STOP_PARITY : uint16
		{
			STOPBITS_10 = 1,
			STOPBITS_15 = 2,
			STOPBITS_20 = 4,
			PARITY_NONE = 256,
			PARITY_ODD = 512,
			PARITY_EVEN = 1024,
			PARITY_MARK = 2048,
			PARITY_SPACE = 4096,
		}
		public enum MODEM_SPEAKER_VOLUME : uint32
		{
			HIGH = 2,
			LOW = 0,
			MEDIUM = 1,
		}
		public enum MODEMDEVCAPS_SPEAKER_VOLUME : uint32
		{
			HIGH = 4,
			LOW = 1,
			MEDIUM = 2,
		}
		public enum MODEMDEVCAPS_SPEAKER_MODE : uint32
		{
			CALLSETUP = 8,
			DIAL = 2,
			OFF = 1,
			ON = 4,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct MODEMDEVCAPS
		{
			public uint32 dwActualSize;
			public uint32 dwRequiredSize;
			public uint32 dwDevSpecificOffset;
			public uint32 dwDevSpecificSize;
			public uint32 dwModemProviderVersion;
			public uint32 dwModemManufacturerOffset;
			public uint32 dwModemManufacturerSize;
			public uint32 dwModemModelOffset;
			public uint32 dwModemModelSize;
			public uint32 dwModemVersionOffset;
			public uint32 dwModemVersionSize;
			public MODEMDEVCAPS_DIAL_OPTIONS dwDialOptions;
			public uint32 dwCallSetupFailTimer;
			public uint32 dwInactivityTimeout;
			public MODEMDEVCAPS_SPEAKER_VOLUME dwSpeakerVolume;
			public MODEMDEVCAPS_SPEAKER_MODE dwSpeakerMode;
			public uint32 dwModemOptions;
			public uint32 dwMaxDTERate;
			public uint32 dwMaxDCERate;
			public uint8[0] abVariablePortion;
		}
		[CRepr]
		public struct MODEMSETTINGS
		{
			public uint32 dwActualSize;
			public uint32 dwRequiredSize;
			public uint32 dwDevSpecificOffset;
			public uint32 dwDevSpecificSize;
			public uint32 dwCallSetupFailTimer;
			public uint32 dwInactivityTimeout;
			public MODEM_SPEAKER_VOLUME dwSpeakerVolume;
			public MODEMSETTINGS_SPEAKER_MODE dwSpeakerMode;
			public uint32 dwPreferredModemOptions;
			public uint32 dwNegotiatedModemOptions;
			public uint32 dwNegotiatedDCERate;
			public uint8[0] abVariablePortion;
		}
		[CRepr]
		public struct COMMPROP
		{
			public uint16 wPacketLength;
			public uint16 wPacketVersion;
			public uint32 dwServiceMask;
			public uint32 dwReserved1;
			public uint32 dwMaxTxQueue;
			public uint32 dwMaxRxQueue;
			public uint32 dwMaxBaud;
			public uint32 dwProvSubType;
			public uint32 dwProvCapabilities;
			public uint32 dwSettableParams;
			public uint32 dwSettableBaud;
			public uint16 wSettableData;
			public COMMPROP_STOP_PARITY wSettableStopParity;
			public uint32 dwCurrentTxQueue;
			public uint32 dwCurrentRxQueue;
			public uint32 dwProvSpec1;
			public uint32 dwProvSpec2;
			public char16[0] wcProvChar;
		}
		[CRepr]
		public struct COMSTAT
		{
			public uint32 _bitfield;
			public uint32 cbInQue;
			public uint32 cbOutQue;
		}
		[CRepr]
		public struct DCB
		{
			public uint32 DCBlength;
			public uint32 BaudRate;
			public uint32 _bitfield;
			public uint16 wReserved;
			public uint16 XonLim;
			public uint16 XoffLim;
			public uint8 ByteSize;
			public uint8 Parity;
			public uint8 StopBits;
			public CHAR XonChar;
			public CHAR XoffChar;
			public CHAR ErrorChar;
			public CHAR EofChar;
			public CHAR EvtChar;
			public uint16 wReserved1;
		}
		[CRepr]
		public struct COMMTIMEOUTS
		{
			public uint32 ReadIntervalTimeout;
			public uint32 ReadTotalTimeoutMultiplier;
			public uint32 ReadTotalTimeoutConstant;
			public uint32 WriteTotalTimeoutMultiplier;
			public uint32 WriteTotalTimeoutConstant;
		}
		[CRepr]
		public struct COMMCONFIG
		{
			public uint32 dwSize;
			public uint16 wVersion;
			public uint16 wReserved;
			public DCB dcb;
			public uint32 dwProviderSubType;
			public uint32 dwProviderOffset;
			public uint32 dwProviderSize;
			public char16[0] wcProviderData;
		}
		
		// --- Functions ---
		
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClearCommBreak(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL ClearCommError(HANDLE hFile, CLEAR_COMM_ERROR_FLAGS* lpErrors, COMSTAT* lpStat);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetupComm(HANDLE hFile, uint32 dwInQueue, uint32 dwOutQueue);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL EscapeCommFunction(HANDLE hFile, ESCAPE_COMM_FUNCTION dwFunc);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommConfig(HANDLE hCommDev, COMMCONFIG* lpCC, out uint32 lpdwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommMask(HANDLE hFile, out COMM_EVENT_MASK lpEvtMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommProperties(HANDLE hFile, out COMMPROP lpCommProp);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommModemStatus(HANDLE hFile, out MODEM_STATUS_FLAGS lpModemStat);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommState(HANDLE hFile, out DCB lpDCB);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetCommTimeouts(HANDLE hFile, out COMMTIMEOUTS lpCommTimeouts);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL PurgeComm(HANDLE hFile, PURGE_COMM_FLAGS dwFlags);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCommBreak(HANDLE hFile);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCommConfig(HANDLE hCommDev, ref COMMCONFIG lpCC, uint32 dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCommMask(HANDLE hFile, COMM_EVENT_MASK dwEvtMask);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCommState(HANDLE hFile, ref DCB lpDCB);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetCommTimeouts(HANDLE hFile, ref COMMTIMEOUTS lpCommTimeouts);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL TransmitCommChar(HANDLE hFile, CHAR cChar);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL WaitCommEvent(HANDLE hFile, out COMM_EVENT_MASK lpEvtMask, OVERLAPPED* lpOverlapped);
		[Import("api-ms-win-core-comm-l1-1-1.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HANDLE OpenCommPort(uint32 uPortNumber, uint32 dwDesiredAccess, uint32 dwFlagsAndAttributes);
		[Import("api-ms-win-core-comm-l1-1-2.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 GetCommPorts(uint32* lpPortNumbers, uint32 uPortNumbersCount, out uint32 puPortNumbersFound);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BuildCommDCBA(PSTR lpDef, out DCB lpDCB);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BuildCommDCBW(PWSTR lpDef, out DCB lpDCB);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BuildCommDCBAndTimeoutsA(PSTR lpDef, out DCB lpDCB, out COMMTIMEOUTS lpCommTimeouts);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL BuildCommDCBAndTimeoutsW(PWSTR lpDef, out DCB lpDCB, out COMMTIMEOUTS lpCommTimeouts);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommConfigDialogA(PSTR lpszName, HWND hWnd, out COMMCONFIG lpCC);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL CommConfigDialogW(PWSTR lpszName, HWND hWnd, out COMMCONFIG lpCC);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultCommConfigA(PSTR lpszName, out COMMCONFIG lpCC, out uint32 lpdwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL GetDefaultCommConfigW(PWSTR lpszName, out COMMCONFIG lpCC, out uint32 lpdwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDefaultCommConfigA(PSTR lpszName, ref COMMCONFIG lpCC, uint32 dwSize);
		[Import("kernel32.lib"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL SetDefaultCommConfigW(PWSTR lpszName, ref COMMCONFIG lpCC, uint32 dwSize);
	}
}
