using System;

// namespace Graphics.Direct3D9
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 D3DRTYPECOUNT = 8;
		public const int32 D3DCS_LEFT = 1;
		public const int32 D3DCS_RIGHT = 2;
		public const int32 D3DCS_TOP = 4;
		public const int32 D3DCS_BOTTOM = 8;
		public const int32 D3DCS_FRONT = 16;
		public const int32 D3DCS_BACK = 32;
		public const int32 D3DCS_PLANE0 = 64;
		public const int32 D3DCS_PLANE1 = 128;
		public const int32 D3DCS_PLANE2 = 256;
		public const int32 D3DCS_PLANE3 = 512;
		public const int32 D3DCS_PLANE4 = 1024;
		public const int32 D3DCS_PLANE5 = 2048;
		public const uint32 D3D_MAX_SIMULTANEOUS_RENDERTARGETS = 4;
		public const int32 D3DWRAP_W = 4;
		public const uint32 D3DDMAPSAMPLER = 256;
		public const uint32 D3DVERTEXTEXTURESAMPLER0 = 257;
		public const uint32 D3DVERTEXTEXTURESAMPLER1 = 258;
		public const uint32 D3DVERTEXTEXTURESAMPLER2 = 259;
		public const uint32 D3DVERTEXTEXTURESAMPLER3 = 260;
		public const uint32 D3DTSS_TCI_SPHEREMAP = 262144;
		public const uint32 D3DTA_TEMP = 5;
		public const uint32 D3DTA_CONSTANT = 6;
		public const uint32 D3DFVF_XYZW = 16386;
		public const uint32 D3DFVF_PSIZE = 32;
		public const uint32 D3DFVF_LASTBETA_UBYTE4 = 4096;
		public const uint32 D3DFVF_LASTBETA_D3DCOLOR = 32768;
		public const uint32 MAXD3DDECLUSAGEINDEX = 15;
		public const uint32 MAXD3DDECLLENGTH = 64;
		public const uint32 D3DSTREAMSOURCE_INDEXEDDATA = 1073741824;
		public const uint32 D3DSTREAMSOURCE_INSTANCEDATA = 2147483648;
		public const uint32 D3DSI_OPCODE_MASK = 65535;
		public const uint32 D3DSI_INSTLENGTH_MASK = 251658240;
		public const uint32 D3DSI_INSTLENGTH_SHIFT = 24;
		public const uint32 D3DSI_COISSUE = 1073741824;
		public const uint32 D3DSP_OPCODESPECIFICCONTROL_MASK = 16711680;
		public const uint32 D3DSP_OPCODESPECIFICCONTROL_SHIFT = 16;
		public const uint32 D3DSHADER_COMPARISON_SHIFT = 16;
		public const uint32 D3DSP_DCL_USAGE_SHIFT = 0;
		public const uint32 D3DSP_DCL_USAGE_MASK = 15;
		public const uint32 D3DSP_DCL_USAGEINDEX_SHIFT = 16;
		public const uint32 D3DSP_DCL_USAGEINDEX_MASK = 983040;
		public const uint32 D3DSP_TEXTURETYPE_SHIFT = 27;
		public const uint32 D3DSP_TEXTURETYPE_MASK = 2013265920;
		public const uint32 D3DSP_REGNUM_MASK = 2047;
		public const uint32 D3DSP_WRITEMASK_0 = 65536;
		public const uint32 D3DSP_WRITEMASK_1 = 131072;
		public const uint32 D3DSP_WRITEMASK_2 = 262144;
		public const uint32 D3DSP_WRITEMASK_3 = 524288;
		public const uint32 D3DSP_WRITEMASK_ALL = 983040;
		public const uint32 D3DSP_DSTMOD_SHIFT = 20;
		public const uint32 D3DSP_DSTMOD_MASK = 15728640;
		public const uint32 D3DSP_DSTSHIFT_SHIFT = 24;
		public const uint32 D3DSP_DSTSHIFT_MASK = 251658240;
		public const uint32 D3DSP_REGTYPE_SHIFT = 28;
		public const uint32 D3DSP_REGTYPE_SHIFT2 = 8;
		public const uint32 D3DSP_REGTYPE_MASK = 1879048192;
		public const uint32 D3DSP_REGTYPE_MASK2 = 6144;
		public const uint32 D3DVS_ADDRESSMODE_SHIFT = 13;
		public const uint32 D3DSHADER_ADDRESSMODE_SHIFT = 13;
		public const uint32 D3DVS_SWIZZLE_SHIFT = 16;
		public const uint32 D3DVS_SWIZZLE_MASK = 16711680;
		public const uint32 D3DSP_SWIZZLE_SHIFT = 16;
		public const uint32 D3DSP_SWIZZLE_MASK = 16711680;
		public const uint32 D3DSP_SRCMOD_SHIFT = 24;
		public const uint32 D3DSP_SRCMOD_MASK = 251658240;
		public const uint32 D3DSP_MIN_PRECISION_SHIFT = 14;
		public const uint32 D3DSP_MIN_PRECISION_MASK = 49152;
		public const uint32 D3DSI_COMMENTSIZE_SHIFT = 16;
		public const uint32 D3DSI_COMMENTSIZE_MASK = 2147418112;
		public const uint32 D3DPRESENT_RATE_DEFAULT = 0;
		public const uint32 D3DPRESENTFLAG_LOCKABLE_BACKBUFFER = 1;
		public const uint32 D3DPRESENTFLAG_DISCARD_DEPTHSTENCIL = 2;
		public const uint32 D3DPRESENTFLAG_DEVICECLIP = 4;
		public const uint32 D3DPRESENTFLAG_VIDEO = 16;
		public const uint32 D3DPRESENTFLAG_NOAUTOROTATE = 32;
		public const uint32 D3DPRESENTFLAG_UNPRUNEDMODE = 64;
		public const uint32 D3DPRESENTFLAG_OVERLAY_LIMITEDRGB = 128;
		public const uint32 D3DPRESENTFLAG_OVERLAY_YCbCr_BT709 = 256;
		public const uint32 D3DPRESENTFLAG_OVERLAY_YCbCr_xvYCC = 512;
		public const uint32 D3DPRESENTFLAG_RESTRICTED_CONTENT = 1024;
		public const uint32 D3DPRESENTFLAG_RESTRICT_SHARED_RESOURCE_DRIVER = 2048;
		public const int32 D3DUSAGE_RENDERTARGET = 1;
		public const int32 D3DUSAGE_DEPTHSTENCIL = 2;
		public const int32 D3DUSAGE_DYNAMIC = 512;
		public const int32 D3DUSAGE_NONSECURE = 8388608;
		public const int32 D3DUSAGE_AUTOGENMIPMAP = 1024;
		public const int32 D3DUSAGE_DMAP = 16384;
		public const int32 D3DUSAGE_QUERY_LEGACYBUMPMAP = 32768;
		public const int32 D3DUSAGE_QUERY_SRGBREAD = 65536;
		public const int32 D3DUSAGE_QUERY_FILTER = 131072;
		public const int32 D3DUSAGE_QUERY_SRGBWRITE = 262144;
		public const int32 D3DUSAGE_QUERY_POSTPIXELSHADER_BLENDING = 524288;
		public const int32 D3DUSAGE_QUERY_VERTEXTEXTURE = 1048576;
		public const int32 D3DUSAGE_QUERY_WRAPANDMIP = 2097152;
		public const int32 D3DUSAGE_WRITEONLY = 8;
		public const int32 D3DUSAGE_SOFTWAREPROCESSING = 16;
		public const int32 D3DUSAGE_DONOTCLIP = 32;
		public const int32 D3DUSAGE_POINTS = 64;
		public const int32 D3DUSAGE_RTPATCHES = 128;
		public const int32 D3DUSAGE_NPATCHES = 256;
		public const int32 D3DUSAGE_TEXTAPI = 268435456;
		public const int32 D3DUSAGE_RESTRICTED_CONTENT = 2048;
		public const int32 D3DUSAGE_RESTRICT_SHARED_RESOURCE = 8192;
		public const int32 D3DUSAGE_RESTRICT_SHARED_RESOURCE_DRIVER = 4096;
		public const int32 D3DLOCK_READONLY = 16;
		public const int32 D3DLOCK_DISCARD = 8192;
		public const int32 D3DLOCK_NOOVERWRITE = 4096;
		public const int32 D3DLOCK_NOSYSLOCK = 2048;
		public const int32 D3DLOCK_DONOTWAIT = 16384;
		public const int32 D3DLOCK_NO_DIRTY_UPDATE = 32768;
		public const uint32 MAX_DEVICE_IDENTIFIER_STRING = 512;
		public const uint32 D3DISSUE_END = 1;
		public const uint32 D3DISSUE_BEGIN = 2;
		public const uint32 D3DGETDATA_FLUSH = 1;
		public const uint32 D3DCOMPOSERECTS_MAXNUMRECTS = 65535;
		public const uint32 D3DCONVOLUTIONMONO_MAXWIDTH = 7;
		public const uint32 D3DCONVOLUTIONMONO_MAXHEIGHT = 7;
		public const uint32 D3DFMT_A1_SURFACE_MAXWIDTH = 8192;
		public const uint32 D3DFMT_A1_SURFACE_MAXHEIGHT = 2048;
		public const uint32 D3D9_RESOURCE_PRIORITY_MINIMUM = 671088640;
		public const uint32 D3D9_RESOURCE_PRIORITY_LOW = 1342177280;
		public const uint32 D3D9_RESOURCE_PRIORITY_NORMAL = 2013265920;
		public const uint32 D3D9_RESOURCE_PRIORITY_HIGH = 2684354560;
		public const uint32 D3D9_RESOURCE_PRIORITY_MAXIMUM = 3355443200;
		public const uint32 D3D_OMAC_SIZE = 16;
		public const Guid D3DAUTHENTICATEDQUERY_PROTECTION = .(0xa84eb584, 0xc495, 0x48aa, 0xb9, 0x4d, 0x8b, 0xd2, 0xd6, 0xfb, 0xce, 0x05);
		public const Guid D3DAUTHENTICATEDQUERY_CHANNELTYPE = .(0xbc1b18a5, 0xb1fb, 0x42ab, 0xbd, 0x94, 0xb5, 0x82, 0x8b, 0x4b, 0xf7, 0xbe);
		public const Guid D3DAUTHENTICATEDQUERY_DEVICEHANDLE = .(0xec1c539d, 0x8cff, 0x4e2a, 0xbc, 0xc4, 0xf5, 0x69, 0x2f, 0x99, 0xf4, 0x80);
		public const Guid D3DAUTHENTICATEDQUERY_CRYPTOSESSION = .(0x2634499e, 0xd018, 0x4d74, 0xac, 0x17, 0x7f, 0x72, 0x40, 0x59, 0x52, 0x8d);
		public const Guid D3DAUTHENTICATEDQUERY_RESTRICTEDSHAREDRESOURCEPROCESSCOUNT = .(0x0db207b3, 0x9450, 0x46a6, 0x82, 0xde, 0x1b, 0x96, 0xd4, 0x4f, 0x9c, 0xf2);
		public const Guid D3DAUTHENTICATEDQUERY_RESTRICTEDSHAREDRESOURCEPROCESS = .(0x649bbadb, 0xf0f4, 0x4639, 0xa1, 0x5b, 0x24, 0x39, 0x3f, 0xc3, 0xab, 0xac);
		public const Guid D3DAUTHENTICATEDQUERY_UNRESTRICTEDPROTECTEDSHAREDRESOURCECOUNT = .(0x012f0bd6, 0xe662, 0x4474, 0xbe, 0xfd, 0xaa, 0x53, 0xe5, 0x14, 0x3c, 0x6d);
		public const Guid D3DAUTHENTICATEDQUERY_OUTPUTIDCOUNT = .(0x2c042b5e, 0x8c07, 0x46d5, 0xaa, 0xbe, 0x8f, 0x75, 0xcb, 0xad, 0x4c, 0x31);
		public const Guid D3DAUTHENTICATEDQUERY_OUTPUTID = .(0x839ddca3, 0x9b4e, 0x41e4, 0xb0, 0x53, 0x89, 0x2b, 0xd2, 0xa1, 0x1e, 0xe7);
		public const Guid D3DAUTHENTICATEDQUERY_ACCESSIBILITYATTRIBUTES = .(0x6214d9d2, 0x432c, 0x4abb, 0x9f, 0xce, 0x21, 0x6e, 0xea, 0x26, 0x9e, 0x3b);
		public const Guid D3DAUTHENTICATEDQUERY_ENCRYPTIONWHENACCESSIBLEGUIDCOUNT = .(0xb30f7066, 0x203c, 0x4b07, 0x93, 0xfc, 0xce, 0xaa, 0xfd, 0x61, 0x24, 0x1e);
		public const Guid D3DAUTHENTICATEDQUERY_ENCRYPTIONWHENACCESSIBLEGUID = .(0xf83a5958, 0xe986, 0x4bda, 0xbe, 0xb0, 0x41, 0x1f, 0x6a, 0x7a, 0x01, 0xb7);
		public const Guid D3DAUTHENTICATEDQUERY_CURRENTENCRYPTIONWHENACCESSIBLE = .(0xec1791c7, 0xdad3, 0x4f15, 0x9e, 0xc3, 0xfa, 0xa9, 0x3d, 0x60, 0xd4, 0xf0);
		public const Guid D3DAUTHENTICATEDCONFIGURE_INITIALIZE = .(0x06114bdb, 0x3523, 0x470a, 0x8d, 0xca, 0xfb, 0xc2, 0x84, 0x51, 0x54, 0xf0);
		public const Guid D3DAUTHENTICATEDCONFIGURE_PROTECTION = .(0x50455658, 0x3f47, 0x4362, 0xbf, 0x99, 0xbf, 0xdf, 0xcd, 0xe9, 0xed, 0x29);
		public const Guid D3DAUTHENTICATEDCONFIGURE_CRYPTOSESSION = .(0x6346cc54, 0x2cfc, 0x4ad4, 0x82, 0x24, 0xd1, 0x58, 0x37, 0xde, 0x77, 0x00);
		public const Guid D3DAUTHENTICATEDCONFIGURE_SHAREDRESOURCE = .(0x0772d047, 0x1b40, 0x48e8, 0x9c, 0xa6, 0xb5, 0xf5, 0x10, 0xde, 0x9f, 0x01);
		public const Guid D3DAUTHENTICATEDCONFIGURE_ENCRYPTIONWHENACCESSIBLE = .(0x41fff286, 0x6ae0, 0x4d43, 0x9d, 0x55, 0xa4, 0x6e, 0x9e, 0xfd, 0x15, 0x8a);
		public const uint32 D3DVS20CAPS_PREDICATION = 1;
		public const uint32 D3DVS20_MAX_DYNAMICFLOWCONTROLDEPTH = 24;
		public const uint32 D3DVS20_MIN_DYNAMICFLOWCONTROLDEPTH = 0;
		public const uint32 D3DVS20_MAX_NUMTEMPS = 32;
		public const uint32 D3DVS20_MIN_NUMTEMPS = 12;
		public const uint32 D3DVS20_MAX_STATICFLOWCONTROLDEPTH = 4;
		public const uint32 D3DVS20_MIN_STATICFLOWCONTROLDEPTH = 1;
		public const uint32 D3DPS20CAPS_ARBITRARYSWIZZLE = 1;
		public const uint32 D3DPS20CAPS_GRADIENTINSTRUCTIONS = 2;
		public const uint32 D3DPS20CAPS_PREDICATION = 4;
		public const uint32 D3DPS20CAPS_NODEPENDENTREADLIMIT = 8;
		public const uint32 D3DPS20CAPS_NOTEXINSTRUCTIONLIMIT = 16;
		public const uint32 D3DPS20_MAX_DYNAMICFLOWCONTROLDEPTH = 24;
		public const uint32 D3DPS20_MIN_DYNAMICFLOWCONTROLDEPTH = 0;
		public const uint32 D3DPS20_MAX_NUMTEMPS = 32;
		public const uint32 D3DPS20_MIN_NUMTEMPS = 12;
		public const uint32 D3DPS20_MAX_STATICFLOWCONTROLDEPTH = 4;
		public const uint32 D3DPS20_MIN_STATICFLOWCONTROLDEPTH = 0;
		public const uint32 D3DPS20_MAX_NUMINSTRUCTIONSLOTS = 512;
		public const uint32 D3DPS20_MIN_NUMINSTRUCTIONSLOTS = 96;
		public const uint32 D3DMIN30SHADERINSTRUCTIONS = 512;
		public const uint32 D3DMAX30SHADERINSTRUCTIONS = 32768;
		public const uint32 D3DOVERLAYCAPS_FULLRANGERGB = 1;
		public const uint32 D3DOVERLAYCAPS_LIMITEDRANGERGB = 2;
		public const uint32 D3DOVERLAYCAPS_YCbCr_BT601 = 4;
		public const uint32 D3DOVERLAYCAPS_YCbCr_BT709 = 8;
		public const uint32 D3DOVERLAYCAPS_YCbCr_BT601_xvYCC = 16;
		public const uint32 D3DOVERLAYCAPS_YCbCr_BT709_xvYCC = 32;
		public const uint32 D3DOVERLAYCAPS_STRETCHX = 64;
		public const uint32 D3DOVERLAYCAPS_STRETCHY = 128;
		public const uint32 D3DCPCAPS_SOFTWARE = 1;
		public const uint32 D3DCPCAPS_HARDWARE = 2;
		public const uint32 D3DCPCAPS_PROTECTIONALWAYSON = 4;
		public const uint32 D3DCPCAPS_PARTIALDECRYPTION = 8;
		public const uint32 D3DCPCAPS_CONTENTKEY = 16;
		public const uint32 D3DCPCAPS_FRESHENSESSIONKEY = 32;
		public const uint32 D3DCPCAPS_ENCRYPTEDREADBACK = 64;
		public const uint32 D3DCPCAPS_ENCRYPTEDREADBACKKEY = 128;
		public const uint32 D3DCPCAPS_SEQUENTIAL_CTR_IV = 256;
		public const uint32 D3DCPCAPS_ENCRYPTSLICEDATAONLY = 512;
		public const Guid D3DCRYPTOTYPE_AES128_CTR = .(0x9b6bd711, 0x4f74, 0x41c9, 0x9e, 0x7b, 0x0b, 0xe2, 0xd7, 0xd9, 0x3b, 0x4f);
		public const Guid D3DCRYPTOTYPE_PROPRIETARY = .(0xab4e9afd, 0x1d1c, 0x46e6, 0xa7, 0x2f, 0x08, 0x69, 0x91, 0x7b, 0x0d, 0xe8);
		public const Guid D3DKEYEXCHANGE_RSAES_OAEP = .(0xc1949895, 0xd72a, 0x4a1d, 0x8e, 0x5d, 0xed, 0x85, 0x7d, 0x17, 0x15, 0x20);
		public const Guid D3DKEYEXCHANGE_DXVA = .(0x43d3775c, 0x38e5, 0x4924, 0x8d, 0x86, 0xd3, 0xfc, 0xcf, 0x15, 0x3e, 0x9b);
		public const int32 D3DCAPS_OVERLAY = 2048;
		public const int32 D3DCAPS_READ_SCANLINE = 131072;
		public const int32 D3DCAPS2_FULLSCREENGAMMA = 131072;
		public const int32 D3DCAPS2_CANCALIBRATEGAMMA = 1048576;
		public const int32 D3DCAPS2_RESERVED = 33554432;
		public const int32 D3DCAPS2_CANMANAGERESOURCE = 268435456;
		public const int32 D3DCAPS2_DYNAMICTEXTURES = 536870912;
		public const int32 D3DCAPS2_CANAUTOGENMIPMAP = 1073741824;
		public const int32 D3DCAPS2_CANSHARERESOURCE = -2147483648;
		public const int32 D3DCAPS3_RESERVED = -2147483617;
		public const int32 D3DCAPS3_ALPHA_FULLSCREEN_FLIP_OR_DISCARD = 32;
		public const int32 D3DCAPS3_LINEAR_TO_SRGB_PRESENTATION = 128;
		public const int32 D3DCAPS3_COPY_TO_VIDMEM = 256;
		public const int32 D3DCAPS3_COPY_TO_SYSTEMMEM = 512;
		public const int32 D3DCAPS3_DXVAHD = 1024;
		public const int32 D3DCAPS3_DXVAHD_LIMITED = 2048;
		public const int32 D3DPRESENT_INTERVAL_DEFAULT = 0;
		public const int32 D3DPRESENT_INTERVAL_ONE = 1;
		public const int32 D3DPRESENT_INTERVAL_TWO = 2;
		public const int32 D3DPRESENT_INTERVAL_THREE = 4;
		public const int32 D3DPRESENT_INTERVAL_FOUR = 8;
		public const int32 D3DPRESENT_INTERVAL_IMMEDIATE = -2147483648;
		public const int32 D3DCURSORCAPS_COLOR = 1;
		public const int32 D3DCURSORCAPS_LOWRES = 2;
		public const int32 D3DDEVCAPS_PUREDEVICE = 1048576;
		public const int32 D3DDEVCAPS_QUINTICRTPATCHES = 2097152;
		public const int32 D3DDEVCAPS_RTPATCHES = 4194304;
		public const int32 D3DDEVCAPS_RTPATCHHANDLEZERO = 8388608;
		public const int32 D3DDEVCAPS_NPATCHES = 16777216;
		public const int32 D3DPMISCCAPS_COLORWRITEENABLE = 128;
		public const int32 D3DPMISCCAPS_CLIPPLANESCALEDPOINTS = 256;
		public const int32 D3DPMISCCAPS_CLIPTLVERTS = 512;
		public const int32 D3DPMISCCAPS_TSSARGTEMP = 1024;
		public const int32 D3DPMISCCAPS_BLENDOP = 2048;
		public const int32 D3DPMISCCAPS_NULLREFERENCE = 4096;
		public const int32 D3DPMISCCAPS_INDEPENDENTWRITEMASKS = 16384;
		public const int32 D3DPMISCCAPS_PERSTAGECONSTANT = 32768;
		public const int32 D3DPMISCCAPS_FOGANDSPECULARALPHA = 65536;
		public const int32 D3DPMISCCAPS_SEPARATEALPHABLEND = 131072;
		public const int32 D3DPMISCCAPS_MRTINDEPENDENTBITDEPTHS = 262144;
		public const int32 D3DPMISCCAPS_MRTPOSTPIXELSHADERBLENDING = 524288;
		public const int32 D3DPMISCCAPS_FOGVERTEXCLAMPED = 1048576;
		public const int32 D3DPMISCCAPS_POSTBLENDSRGBCONVERT = 2097152;
		public const int32 D3DLINECAPS_TEXTURE = 1;
		public const int32 D3DLINECAPS_ZTEST = 2;
		public const int32 D3DLINECAPS_BLEND = 4;
		public const int32 D3DLINECAPS_ALPHACMP = 8;
		public const int32 D3DLINECAPS_FOG = 16;
		public const int32 D3DLINECAPS_ANTIALIAS = 32;
		public const int32 D3DPRASTERCAPS_COLORPERSPECTIVE = 4194304;
		public const int32 D3DPRASTERCAPS_SCISSORTEST = 16777216;
		public const int32 D3DPRASTERCAPS_SLOPESCALEDEPTHBIAS = 33554432;
		public const int32 D3DPRASTERCAPS_DEPTHBIAS = 67108864;
		public const int32 D3DPRASTERCAPS_MULTISAMPLE_TOGGLE = 134217728;
		public const int32 D3DPBLENDCAPS_BLENDFACTOR = 8192;
		public const int32 D3DPBLENDCAPS_SRCCOLOR2 = 16384;
		public const int32 D3DPBLENDCAPS_INVSRCCOLOR2 = 32768;
		public const int32 D3DPTEXTURECAPS_VOLUMEMAP = 8192;
		public const int32 D3DPTEXTURECAPS_MIPMAP = 16384;
		public const int32 D3DPTEXTURECAPS_MIPVOLUMEMAP = 32768;
		public const int32 D3DPTEXTURECAPS_MIPCUBEMAP = 65536;
		public const int32 D3DPTEXTURECAPS_CUBEMAP_POW2 = 131072;
		public const int32 D3DPTEXTURECAPS_VOLUMEMAP_POW2 = 262144;
		public const int32 D3DPTEXTURECAPS_NOPROJECTEDBUMPENV = 2097152;
		public const int32 D3DPTFILTERCAPS_MINFPYRAMIDALQUAD = 2048;
		public const int32 D3DPTFILTERCAPS_MINFGAUSSIANQUAD = 4096;
		public const int32 D3DPTFILTERCAPS_CONVOLUTIONMONO = 262144;
		public const int32 D3DPTFILTERCAPS_MAGFPYRAMIDALQUAD = 134217728;
		public const int32 D3DPTFILTERCAPS_MAGFGAUSSIANQUAD = 268435456;
		public const int32 D3DPTADDRESSCAPS_MIRRORONCE = 32;
		public const int32 D3DSTENCILCAPS_TWOSIDED = 256;
		public const int32 D3DTEXOPCAPS_MULTIPLYADD = 16777216;
		public const int32 D3DTEXOPCAPS_LERP = 33554432;
		public const int32 D3DFVFCAPS_PSIZE = 1048576;
		public const int32 D3DVTXPCAPS_TWEENING = 64;
		public const int32 D3DVTXPCAPS_TEXGEN_SPHEREMAP = 256;
		public const int32 D3DVTXPCAPS_NO_TEXGEN_NONLOCALVIEWER = 512;
		public const int32 D3DDEVCAPS2_STREAMOFFSET = 1;
		public const int32 D3DDEVCAPS2_DMAPNPATCH = 2;
		public const int32 D3DDEVCAPS2_ADAPTIVETESSRTPATCH = 4;
		public const int32 D3DDEVCAPS2_ADAPTIVETESSNPATCH = 8;
		public const int32 D3DDEVCAPS2_CAN_STRETCHRECT_FROM_TEXTURES = 16;
		public const int32 D3DDEVCAPS2_PRESAMPLEDDMAPNPATCH = 32;
		public const int32 D3DDEVCAPS2_VERTEXELEMENTSCANSHARESTREAMOFFSET = 64;
		public const int32 D3DDTCAPS_UBYTE4 = 1;
		public const int32 D3DDTCAPS_UBYTE4N = 2;
		public const int32 D3DDTCAPS_SHORT2N = 4;
		public const int32 D3DDTCAPS_SHORT4N = 8;
		public const int32 D3DDTCAPS_USHORT2N = 16;
		public const int32 D3DDTCAPS_USHORT4N = 32;
		public const int32 D3DDTCAPS_UDEC3 = 64;
		public const int32 D3DDTCAPS_DEC3N = 128;
		public const int32 D3DDTCAPS_FLOAT16_2 = 256;
		public const int32 D3DDTCAPS_FLOAT16_4 = 512;
		public const int32 D3DSPD_IUNKNOWN = 1;
		public const int32 D3DCREATE_FPU_PRESERVE = 2;
		public const int32 D3DCREATE_MULTITHREADED = 4;
		public const int32 D3DCREATE_PUREDEVICE = 16;
		public const int32 D3DCREATE_SOFTWARE_VERTEXPROCESSING = 32;
		public const int32 D3DCREATE_HARDWARE_VERTEXPROCESSING = 64;
		public const int32 D3DCREATE_MIXED_VERTEXPROCESSING = 128;
		public const int32 D3DCREATE_DISABLE_DRIVER_MANAGEMENT = 256;
		public const int32 D3DCREATE_ADAPTERGROUP_DEVICE = 512;
		public const uint32 D3DADAPTER_DEFAULT = 0;
		public const int32 D3DENUM_NO_DRIVERVERSION = 4;
		public const int32 D3DPRESENT_BACK_BUFFERS_MAX = 3;
		public const int32 D3DSGR_NO_CALIBRATION = 0;
		public const int32 D3DSGR_CALIBRATE = 1;
		public const int32 D3DCURSOR_IMMEDIATE_UPDATE = 1;
		public const int32 D3DPRESENT_DONOTWAIT = 1;
		public const int32 D3DPRESENT_LINEAR_CONTENT = 2;
		public const uint32 _FACD3D = 2166;
		public const uint32 D3D_SDK_VERSION = 32;
		public const uint32 D3D9b_SDK_VERSION = 31;
		public const int32 D3DCREATE_DISABLE_DRIVER_MANAGEMENT_EX = 1024;
		public const int32 D3DCREATE_NOWINDOWCHANGES = 2048;
		public const int32 D3DCREATE_DISABLE_PSGP_THREADING = 8192;
		public const int32 D3DCREATE_ENABLE_PRESENTSTATS = 16384;
		public const int32 D3DCREATE_DISABLE_PRINTSCREEN = 32768;
		public const int32 D3DCREATE_SCREENSAVER = 268435456;
		public const int32 D3DENUM_WHQL_LEVEL = 2;
		public const int32 D3DPRESENT_BACK_BUFFERS_MAX_EX = 30;
		public const int32 D3DPRESENT_DONOTFLIP = 4;
		public const int32 D3DPRESENT_FLIPRESTART = 8;
		public const int32 D3DPRESENT_VIDEO_RESTRICT_TO_MONITOR = 16;
		public const int32 D3DPRESENT_UPDATEOVERLAYONLY = 32;
		public const int32 D3DPRESENT_HIDEOVERLAY = 64;
		public const int32 D3DPRESENT_UPDATECOLORKEY = 128;
		public const int32 D3DPRESENT_FORCEIMMEDIATE = 256;
		
		// --- Enums ---
		
		public enum D3DLIGHTTYPE : int32
		{
			POINT = 1,
			SPOT = 2,
			DIRECTIONAL = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADEMODE : int32
		{
			FLAT = 1,
			GOURAUD = 2,
			PHONG = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DFILLMODE : int32
		{
			POINT = 1,
			WIREFRAME = 2,
			SOLID = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DBLEND : uint32
		{
			ZERO = 1,
			ONE = 2,
			SRCCOLOR = 3,
			INVSRCCOLOR = 4,
			SRCALPHA = 5,
			INVSRCALPHA = 6,
			DESTALPHA = 7,
			INVDESTALPHA = 8,
			DESTCOLOR = 9,
			INVDESTCOLOR = 10,
			SRCALPHASAT = 11,
			BOTHSRCALPHA = 12,
			BOTHINVSRCALPHA = 13,
			BLENDFACTOR = 14,
			INVBLENDFACTOR = 15,
			SRCCOLOR2 = 16,
			INVSRCCOLOR2 = 17,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DBLENDOP : uint32
		{
			ADD = 1,
			SUBTRACT = 2,
			REVSUBTRACT = 3,
			MIN = 4,
			MAX = 5,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTEXTUREADDRESS : int32
		{
			WRAP = 1,
			MIRROR = 2,
			CLAMP = 3,
			BORDER = 4,
			MIRRORONCE = 5,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DCULL : uint32
		{
			NONE = 1,
			CW = 2,
			CCW = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DCMPFUNC : int32
		{
			NEVER = 1,
			LESS = 2,
			EQUAL = 3,
			LESSEQUAL = 4,
			GREATER = 5,
			NOTEQUAL = 6,
			GREATEREQUAL = 7,
			ALWAYS = 8,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSTENCILOP : uint32
		{
			KEEP = 1,
			ZERO = 2,
			REPLACE = 3,
			INCRSAT = 4,
			DECRSAT = 5,
			INVERT = 6,
			INCR = 7,
			DECR = 8,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DFOGMODE : int32
		{
			NONE = 0,
			EXP = 1,
			EXP2 = 2,
			LINEAR = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DZBUFFERTYPE : int32
		{
			FALSE = 0,
			TRUE = 1,
			USEW = 2,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DPRIMITIVETYPE : int32
		{
			POINTLIST = 1,
			LINELIST = 2,
			LINESTRIP = 3,
			TRIANGLELIST = 4,
			TRIANGLESTRIP = 5,
			TRIANGLEFAN = 6,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTRANSFORMSTATETYPE : int32
		{
			VIEW = 2,
			PROJECTION = 3,
			TEXTURE0 = 16,
			TEXTURE1 = 17,
			TEXTURE2 = 18,
			TEXTURE3 = 19,
			TEXTURE4 = 20,
			TEXTURE5 = 21,
			TEXTURE6 = 22,
			TEXTURE7 = 23,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DRENDERSTATETYPE : int32
		{
			ZENABLE = 7,
			FILLMODE = 8,
			SHADEMODE = 9,
			ZWRITEENABLE = 14,
			ALPHATESTENABLE = 15,
			LASTPIXEL = 16,
			SRCBLEND = 19,
			DESTBLEND = 20,
			CULLMODE = 22,
			ZFUNC = 23,
			ALPHAREF = 24,
			ALPHAFUNC = 25,
			DITHERENABLE = 26,
			ALPHABLENDENABLE = 27,
			FOGENABLE = 28,
			SPECULARENABLE = 29,
			FOGCOLOR = 34,
			FOGTABLEMODE = 35,
			FOGSTART = 36,
			FOGEND = 37,
			FOGDENSITY = 38,
			RANGEFOGENABLE = 48,
			STENCILENABLE = 52,
			STENCILFAIL = 53,
			STENCILZFAIL = 54,
			STENCILPASS = 55,
			STENCILFUNC = 56,
			STENCILREF = 57,
			STENCILMASK = 58,
			STENCILWRITEMASK = 59,
			TEXTUREFACTOR = 60,
			WRAP0 = 128,
			WRAP1 = 129,
			WRAP2 = 130,
			WRAP3 = 131,
			WRAP4 = 132,
			WRAP5 = 133,
			WRAP6 = 134,
			WRAP7 = 135,
			CLIPPING = 136,
			LIGHTING = 137,
			AMBIENT = 139,
			FOGVERTEXMODE = 140,
			COLORVERTEX = 141,
			LOCALVIEWER = 142,
			NORMALIZENORMALS = 143,
			DIFFUSEMATERIALSOURCE = 145,
			SPECULARMATERIALSOURCE = 146,
			AMBIENTMATERIALSOURCE = 147,
			EMISSIVEMATERIALSOURCE = 148,
			VERTEXBLEND = 151,
			CLIPPLANEENABLE = 152,
			POINTSIZE = 154,
			POINTSIZE_MIN = 155,
			POINTSPRITEENABLE = 156,
			POINTSCALEENABLE = 157,
			POINTSCALE_A = 158,
			POINTSCALE_B = 159,
			POINTSCALE_C = 160,
			MULTISAMPLEANTIALIAS = 161,
			MULTISAMPLEMASK = 162,
			PATCHEDGESTYLE = 163,
			DEBUGMONITORTOKEN = 165,
			POINTSIZE_MAX = 166,
			INDEXEDVERTEXBLENDENABLE = 167,
			COLORWRITEENABLE = 168,
			TWEENFACTOR = 170,
			BLENDOP = 171,
			POSITIONDEGREE = 172,
			NORMALDEGREE = 173,
			SCISSORTESTENABLE = 174,
			SLOPESCALEDEPTHBIAS = 175,
			ANTIALIASEDLINEENABLE = 176,
			MINTESSELLATIONLEVEL = 178,
			MAXTESSELLATIONLEVEL = 179,
			ADAPTIVETESS_X = 180,
			ADAPTIVETESS_Y = 181,
			ADAPTIVETESS_Z = 182,
			ADAPTIVETESS_W = 183,
			ENABLEADAPTIVETESSELLATION = 184,
			TWOSIDEDSTENCILMODE = 185,
			CCW_STENCILFAIL = 186,
			CCW_STENCILZFAIL = 187,
			CCW_STENCILPASS = 188,
			CCW_STENCILFUNC = 189,
			COLORWRITEENABLE1 = 190,
			COLORWRITEENABLE2 = 191,
			COLORWRITEENABLE3 = 192,
			BLENDFACTOR = 193,
			SRGBWRITEENABLE = 194,
			DEPTHBIAS = 195,
			WRAP8 = 198,
			WRAP9 = 199,
			WRAP10 = 200,
			WRAP11 = 201,
			WRAP12 = 202,
			WRAP13 = 203,
			WRAP14 = 204,
			WRAP15 = 205,
			SEPARATEALPHABLENDENABLE = 206,
			SRCBLENDALPHA = 207,
			DESTBLENDALPHA = 208,
			BLENDOPALPHA = 209,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DMATERIALCOLORSOURCE : int32
		{
			MATERIAL = 0,
			COLOR1 = 1,
			COLOR2 = 2,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTEXTURESTAGESTATETYPE : int32
		{
			COLOROP = 1,
			COLORARG1 = 2,
			COLORARG2 = 3,
			ALPHAOP = 4,
			ALPHAARG1 = 5,
			ALPHAARG2 = 6,
			BUMPENVMAT00 = 7,
			BUMPENVMAT01 = 8,
			BUMPENVMAT10 = 9,
			BUMPENVMAT11 = 10,
			TEXCOORDINDEX = 11,
			BUMPENVLSCALE = 22,
			BUMPENVLOFFSET = 23,
			TEXTURETRANSFORMFLAGS = 24,
			COLORARG0 = 26,
			ALPHAARG0 = 27,
			RESULTARG = 28,
			CONSTANT = 32,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSAMPLERSTATETYPE : int32
		{
			ADDRESSU = 1,
			ADDRESSV = 2,
			ADDRESSW = 3,
			BORDERCOLOR = 4,
			MAGFILTER = 5,
			MINFILTER = 6,
			MIPFILTER = 7,
			MIPMAPLODBIAS = 8,
			MAXMIPLEVEL = 9,
			MAXANISOTROPY = 10,
			SRGBTEXTURE = 11,
			ELEMENTINDEX = 12,
			DMAPOFFSET = 13,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTEXTUREOP : int32
		{
			DISABLE = 1,
			SELECTARG1 = 2,
			SELECTARG2 = 3,
			MODULATE = 4,
			MODULATE2X = 5,
			MODULATE4X = 6,
			ADD = 7,
			ADDSIGNED = 8,
			ADDSIGNED2X = 9,
			SUBTRACT = 10,
			ADDSMOOTH = 11,
			BLENDDIFFUSEALPHA = 12,
			BLENDTEXTUREALPHA = 13,
			BLENDFACTORALPHA = 14,
			BLENDTEXTUREALPHAPM = 15,
			BLENDCURRENTALPHA = 16,
			PREMODULATE = 17,
			MODULATEALPHA_ADDCOLOR = 18,
			MODULATECOLOR_ADDALPHA = 19,
			MODULATEINVALPHA_ADDCOLOR = 20,
			MODULATEINVCOLOR_ADDALPHA = 21,
			BUMPENVMAP = 22,
			BUMPENVMAPLUMINANCE = 23,
			DOTPRODUCT3 = 24,
			MULTIPLYADD = 25,
			LERP = 26,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTEXTUREFILTERTYPE : int32
		{
			NONE = 0,
			POINT = 1,
			LINEAR = 2,
			ANISOTROPIC = 3,
			PYRAMIDALQUAD = 6,
			GAUSSIANQUAD = 7,
			CONVOLUTIONMONO = 8,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DDECLUSAGE : int32
		{
			POSITION = 0,
			BLENDWEIGHT = 1,
			BLENDINDICES = 2,
			NORMAL = 3,
			PSIZE = 4,
			TEXCOORD = 5,
			TANGENT = 6,
			BINORMAL = 7,
			TESSFACTOR = 8,
			POSITIONT = 9,
			COLOR = 10,
			FOG = 11,
			DEPTH = 12,
			SAMPLE = 13,
		}
		public enum D3DDECLMETHOD : int32
		{
			DEFAULT = 0,
			PARTIALU = 1,
			PARTIALV = 2,
			CROSSUV = 3,
			UV = 4,
			LOOKUP = 5,
			LOOKUPPRESAMPLED = 6,
		}
		public enum D3DDECLTYPE : int32
		{
			FLOAT1 = 0,
			FLOAT2 = 1,
			FLOAT3 = 2,
			FLOAT4 = 3,
			D3DCOLOR = 4,
			UBYTE4 = 5,
			SHORT2 = 6,
			SHORT4 = 7,
			UBYTE4N = 8,
			SHORT2N = 9,
			SHORT4N = 10,
			USHORT2N = 11,
			USHORT4N = 12,
			UDEC3 = 13,
			DEC3N = 14,
			FLOAT16_2 = 15,
			FLOAT16_4 = 16,
			UNUSED = 17,
		}
		public enum D3DSHADER_INSTRUCTION_OPCODE_TYPE : int32
		{
			NOP = 0,
			MOV = 1,
			ADD = 2,
			SUB = 3,
			MAD = 4,
			MUL = 5,
			RCP = 6,
			RSQ = 7,
			DP3 = 8,
			DP4 = 9,
			MIN = 10,
			MAX = 11,
			SLT = 12,
			SGE = 13,
			EXP = 14,
			LOG = 15,
			LIT = 16,
			DST = 17,
			LRP = 18,
			FRC = 19,
			M4x4 = 20,
			M4x3 = 21,
			M3x4 = 22,
			M3x3 = 23,
			M3x2 = 24,
			CALL = 25,
			CALLNZ = 26,
			LOOP = 27,
			RET = 28,
			ENDLOOP = 29,
			LABEL = 30,
			DCL = 31,
			POW = 32,
			CRS = 33,
			SGN = 34,
			ABS = 35,
			NRM = 36,
			SINCOS = 37,
			REP = 38,
			ENDREP = 39,
			IF = 40,
			IFC = 41,
			ELSE = 42,
			ENDIF = 43,
			BREAK = 44,
			BREAKC = 45,
			MOVA = 46,
			DEFB = 47,
			DEFI = 48,
			TEXCOORD = 64,
			TEXKILL = 65,
			TEX = 66,
			TEXBEM = 67,
			TEXBEML = 68,
			TEXREG2AR = 69,
			TEXREG2GB = 70,
			TEXM3x2PAD = 71,
			TEXM3x2TEX = 72,
			TEXM3x3PAD = 73,
			TEXM3x3TEX = 74,
			RESERVED0 = 75,
			TEXM3x3SPEC = 76,
			TEXM3x3VSPEC = 77,
			EXPP = 78,
			LOGP = 79,
			CND = 80,
			DEF = 81,
			TEXREG2RGB = 82,
			TEXDP3TEX = 83,
			TEXM3x2DEPTH = 84,
			TEXDP3 = 85,
			TEXM3x3 = 86,
			TEXDEPTH = 87,
			CMP = 88,
			BEM = 89,
			DP2ADD = 90,
			DSX = 91,
			DSY = 92,
			TEXLDD = 93,
			SETP = 94,
			TEXLDL = 95,
			BREAKP = 96,
			PHASE = 65533,
			COMMENT = 65534,
			END = 65535,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADER_COMPARISON : int32
		{
			RESERVED0 = 0,
			GT = 1,
			EQ = 2,
			GE = 3,
			LT = 4,
			NE = 5,
			LE = 6,
			RESERVED1 = 7,
		}
		public enum D3DSAMPLER_TEXTURE_TYPE : int32
		{
			UNKNOWN = 0,
			_2D = 268435456,
			CUBE = 402653184,
			VOLUME = 536870912,
			FORCE_DWORD = 2147483647,
		}
		[AllowDuplicates]
		public enum D3DSHADER_PARAM_REGISTER_TYPE : int32
		{
			TEMP = 0,
			INPUT = 1,
			CONST = 2,
			ADDR = 3,
			TEXTURE = 3,
			RASTOUT = 4,
			ATTROUT = 5,
			TEXCRDOUT = 6,
			OUTPUT = 6,
			CONSTINT = 7,
			COLOROUT = 8,
			DEPTHOUT = 9,
			SAMPLER = 10,
			CONST2 = 11,
			CONST3 = 12,
			CONST4 = 13,
			CONSTBOOL = 14,
			LOOP = 15,
			TEMPFLOAT16 = 16,
			MISCTYPE = 17,
			LABEL = 18,
			PREDICATE = 19,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADER_MISCTYPE_OFFSETS : int32
		{
			POSITION = 0,
			FACE = 1,
		}
		public enum D3DVS_RASTOUT_OFFSETS : int32
		{
			POSITION = 0,
			FOG = 1,
			POINT_SIZE = 2,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DVS_ADDRESSMODE_TYPE : int32
		{
			ABSOLUTE = 0,
			RELATIVE = 8192,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADER_ADDRESSMODE_TYPE : int32
		{
			ABSOLUTE = 0,
			RELATIVE = 8192,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADER_PARAM_SRCMOD_TYPE : int32
		{
			NONE = 0,
			NEG = 16777216,
			BIAS = 33554432,
			BIASNEG = 50331648,
			SIGN = 67108864,
			SIGNNEG = 83886080,
			COMP = 100663296,
			X2 = 117440512,
			X2NEG = 134217728,
			DZ = 150994944,
			DW = 167772160,
			ABS = 184549376,
			ABSNEG = 201326592,
			NOT = 218103808,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSHADER_MIN_PRECISION : int32
		{
			DEFAULT = 0,
			_16 = 1,
			_2_8 = 2,
		}
		public enum D3DBASISTYPE : int32
		{
			BEZIER = 0,
			BSPLINE = 1,
			CATMULL_ROM = 2,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DDEGREETYPE : int32
		{
			LINEAR = 1,
			QUADRATIC = 2,
			CUBIC = 3,
			QUINTIC = 5,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DPATCHEDGESTYLE : int32
		{
			DISCRETE = 0,
			CONTINUOUS = 1,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSTATEBLOCKTYPE : int32
		{
			ALL = 1,
			PIXELSTATE = 2,
			VERTEXSTATE = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DVERTEXBLENDFLAGS : int32
		{
			DISABLE = 0,
			_1WEIGHTS = 1,
			_2WEIGHTS = 2,
			_3WEIGHTS = 3,
			TWEENING = 255,
			_0WEIGHTS = 256,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DTEXTURETRANSFORMFLAGS : int32
		{
			DISABLE = 0,
			COUNT1 = 1,
			COUNT2 = 2,
			COUNT3 = 3,
			COUNT4 = 4,
			PROJECTED = 256,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DDEVTYPE : uint32
		{
			HAL = 1,
			REF = 2,
			SW = 3,
			NULLREF = 4,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DMULTISAMPLE_TYPE : int32
		{
			NONE = 0,
			NONMASKABLE = 1,
			_2_SAMPLES = 2,
			_3_SAMPLES = 3,
			_4_SAMPLES = 4,
			_5_SAMPLES = 5,
			_6_SAMPLES = 6,
			_7_SAMPLES = 7,
			_8_SAMPLES = 8,
			_9_SAMPLES = 9,
			_10_SAMPLES = 10,
			_11_SAMPLES = 11,
			_12_SAMPLES = 12,
			_13_SAMPLES = 13,
			_14_SAMPLES = 14,
			_15_SAMPLES = 15,
			_16_SAMPLES = 16,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DFORMAT : uint32
		{
			UNKNOWN = 0,
			R8G8B8 = 20,
			A8R8G8B8 = 21,
			X8R8G8B8 = 22,
			R5G6B5 = 23,
			X1R5G5B5 = 24,
			A1R5G5B5 = 25,
			A4R4G4B4 = 26,
			R3G3B2 = 27,
			A8 = 28,
			A8R3G3B2 = 29,
			X4R4G4B4 = 30,
			A2B10G10R10 = 31,
			A8B8G8R8 = 32,
			X8B8G8R8 = 33,
			G16R16 = 34,
			A2R10G10B10 = 35,
			A16B16G16R16 = 36,
			A8P8 = 40,
			P8 = 41,
			L8 = 50,
			A8L8 = 51,
			A4L4 = 52,
			V8U8 = 60,
			L6V5U5 = 61,
			X8L8V8U8 = 62,
			Q8W8V8U8 = 63,
			V16U16 = 64,
			A2W10V10U10 = 67,
			UYVY = 1498831189,
			R8G8_B8G8 = 1195525970,
			YUY2 = 844715353,
			G8R8_G8B8 = 1111970375,
			DXT1 = 827611204,
			DXT2 = 844388420,
			DXT3 = 861165636,
			DXT4 = 877942852,
			DXT5 = 894720068,
			D16_LOCKABLE = 70,
			D32 = 71,
			D15S1 = 73,
			D24S8 = 75,
			D24X8 = 77,
			D24X4S4 = 79,
			D16 = 80,
			D32F_LOCKABLE = 82,
			D24FS8 = 83,
			D32_LOCKABLE = 84,
			S8_LOCKABLE = 85,
			L16 = 81,
			VERTEXDATA = 100,
			INDEX16 = 101,
			INDEX32 = 102,
			Q16W16V16U16 = 110,
			MULTI2_ARGB8 = 827606349,
			R16F = 111,
			G16R16F = 112,
			A16B16G16R16F = 113,
			R32F = 114,
			G32R32F = 115,
			A32B32G32R32F = 116,
			CxV8U8 = 117,
			A1 = 118,
			A2B10G10R10_XR_BIAS = 119,
			BINARYBUFFER = 199,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSWAPEFFECT : uint32
		{
			DISCARD = 1,
			FLIP = 2,
			COPY = 3,
			OVERLAY = 4,
			FLIPEX = 5,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DPOOL : uint32
		{
			DEFAULT = 0,
			MANAGED = 1,
			SYSTEMMEM = 2,
			SCRATCH = 3,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DBACKBUFFER_TYPE : uint32
		{
			MONO = 0,
			LEFT = 1,
			RIGHT = 2,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DRESOURCETYPE : int32
		{
			SURFACE = 1,
			VOLUME = 2,
			TEXTURE = 3,
			VOLUMETEXTURE = 4,
			CUBETEXTURE = 5,
			VERTEXBUFFER = 6,
			INDEXBUFFER = 7,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DCUBEMAP_FACES : int32
		{
			POSITIVE_X = 0,
			NEGATIVE_X = 1,
			POSITIVE_Y = 2,
			NEGATIVE_Y = 3,
			POSITIVE_Z = 4,
			NEGATIVE_Z = 5,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DDEBUGMONITORTOKENS : int32
		{
			ENABLE = 0,
			DISABLE = 1,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DQUERYTYPE : int32
		{
			VCACHE = 4,
			RESOURCEMANAGER = 5,
			VERTEXSTATS = 6,
			EVENT = 8,
			OCCLUSION = 9,
			TIMESTAMP = 10,
			TIMESTAMPDISJOINT = 11,
			TIMESTAMPFREQ = 12,
			PIPELINETIMINGS = 13,
			INTERFACETIMINGS = 14,
			VERTEXTIMINGS = 15,
			PIXELTIMINGS = 16,
			BANDWIDTHTIMINGS = 17,
			CACHEUTILIZATION = 18,
			MEMORYPRESSURE = 19,
		}
		public enum D3DCOMPOSERECTSOP : int32
		{
			COPY = 1,
			OR = 2,
			AND = 3,
			NEG = 4,
			FORCE_DWORD = 2147483647,
		}
		public enum D3DSCANLINEORDERING : int32
		{
			UNKNOWN = 0,
			PROGRESSIVE = 1,
			INTERLACED = 2,
		}
		public enum D3DDISPLAYROTATION : int32
		{
			IDENTITY = 1,
			_90 = 2,
			_180 = 3,
			_270 = 4,
		}
		public enum D3DAUTHENTICATEDCHANNELTYPE : int32
		{
			D3D9 = 1,
			DRIVER_SOFTWARE = 2,
			DRIVER_HARDWARE = 3,
		}
		public enum D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE : int32
		{
			UNKNOWN = 0,
			DWM = 1,
			HANDLE = 2,
		}
		public enum D3DBUSTYPE : int32
		{
			D3DBUSTYPE_OTHER = 0,
			D3DBUSTYPE_PCI = 1,
			D3DBUSTYPE_PCIX = 2,
			D3DBUSTYPE_PCIEXPRESS = 3,
			D3DBUSTYPE_AGP = 4,
			D3DBUSIMPL_MODIFIER_INSIDE_OF_CHIPSET = 65536,
			D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_CHIP = 131072,
			D3DBUSIMPL_MODIFIER_TRACKS_ON_MOTHER_BOARD_TO_SOCKET = 196608,
			D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR = 262144,
			D3DBUSIMPL_MODIFIER_DAUGHTER_BOARD_CONNECTOR_INSIDE_OF_NUAE = 327680,
			D3DBUSIMPL_MODIFIER_NON_STANDARD = -2147483648,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct D3DCOLORVALUE
		{
			public float r;
			public float g;
			public float b;
			public float a;
		}
		[CRepr]
		public struct D3DRECT
		{
			public int32 x1;
			public int32 y1;
			public int32 x2;
			public int32 y2;
		}
		[CRepr]
		public struct D3DVIEWPORT9
		{
			public uint32 X;
			public uint32 Y;
			public uint32 Width;
			public uint32 Height;
			public float MinZ;
			public float MaxZ;
		}
		[CRepr]
		public struct D3DCLIPSTATUS9
		{
			public uint32 ClipUnion;
			public uint32 ClipIntersection;
		}
		[CRepr]
		public struct D3DMATERIAL9
		{
			public D3DCOLORVALUE Diffuse;
			public D3DCOLORVALUE Ambient;
			public D3DCOLORVALUE Specular;
			public D3DCOLORVALUE Emissive;
			public float Power;
		}
		[CRepr]
		public struct D3DLIGHT9
		{
			public D3DLIGHTTYPE Type;
			public D3DCOLORVALUE Diffuse;
			public D3DCOLORVALUE Specular;
			public D3DCOLORVALUE Ambient;
			public D3DVECTOR Position;
			public D3DVECTOR Direction;
			public float Range;
			public float Falloff;
			public float Attenuation0;
			public float Attenuation1;
			public float Attenuation2;
			public float Theta;
			public float Phi;
		}
		[CRepr]
		public struct D3DVERTEXELEMENT9
		{
			public uint16 Stream;
			public uint16 Offset;
			public uint8 Type;
			public uint8 Method;
			public uint8 Usage;
			public uint8 UsageIndex;
		}
		[CRepr]
		public struct D3DDISPLAYMODE
		{
			public uint32 Width;
			public uint32 Height;
			public uint32 RefreshRate;
			public D3DFORMAT Format;
		}
		[CRepr]
		public struct D3DDEVICE_CREATION_PARAMETERS
		{
			public uint32 AdapterOrdinal;
			public D3DDEVTYPE DeviceType;
			public HWND hFocusWindow;
			public uint32 BehaviorFlags;
		}
		[CRepr]
		public struct D3DPRESENT_PARAMETERS
		{
			public uint32 BackBufferWidth;
			public uint32 BackBufferHeight;
			public D3DFORMAT BackBufferFormat;
			public uint32 BackBufferCount;
			public D3DMULTISAMPLE_TYPE MultiSampleType;
			public uint32 MultiSampleQuality;
			public D3DSWAPEFFECT SwapEffect;
			public HWND hDeviceWindow;
			public BOOL Windowed;
			public BOOL EnableAutoDepthStencil;
			public D3DFORMAT AutoDepthStencilFormat;
			public uint32 Flags;
			public uint32 FullScreen_RefreshRateInHz;
			public uint32 PresentationInterval;
		}
		[CRepr]
		public struct D3DGAMMARAMP
		{
			public uint16[256] red;
			public uint16[256] green;
			public uint16[256] blue;
		}
		[CRepr]
		public struct D3DVERTEXBUFFER_DESC
		{
			public D3DFORMAT Format;
			public D3DRESOURCETYPE Type;
			public uint32 Usage;
			public D3DPOOL Pool;
			public uint32 Size;
			public uint32 FVF;
		}
		[CRepr]
		public struct D3DINDEXBUFFER_DESC
		{
			public D3DFORMAT Format;
			public D3DRESOURCETYPE Type;
			public uint32 Usage;
			public D3DPOOL Pool;
			public uint32 Size;
		}
		[CRepr]
		public struct D3DSURFACE_DESC
		{
			public D3DFORMAT Format;
			public D3DRESOURCETYPE Type;
			public uint32 Usage;
			public D3DPOOL Pool;
			public D3DMULTISAMPLE_TYPE MultiSampleType;
			public uint32 MultiSampleQuality;
			public uint32 Width;
			public uint32 Height;
		}
		[CRepr]
		public struct D3DVOLUME_DESC
		{
			public D3DFORMAT Format;
			public D3DRESOURCETYPE Type;
			public uint32 Usage;
			public D3DPOOL Pool;
			public uint32 Width;
			public uint32 Height;
			public uint32 Depth;
		}
		[CRepr]
		public struct D3DLOCKED_RECT
		{
			public int32 Pitch;
			public void* pBits;
		}
		[CRepr]
		public struct D3DBOX
		{
			public uint32 Left;
			public uint32 Top;
			public uint32 Right;
			public uint32 Bottom;
			public uint32 Front;
			public uint32 Back;
		}
		[CRepr]
		public struct D3DLOCKED_BOX
		{
			public int32 RowPitch;
			public int32 SlicePitch;
			public void* pBits;
		}
		[CRepr]
		public struct D3DRANGE
		{
			public uint32 Offset;
			public uint32 Size;
		}
		[CRepr]
		public struct D3DRECTPATCH_INFO
		{
			public uint32 StartVertexOffsetWidth;
			public uint32 StartVertexOffsetHeight;
			public uint32 Width;
			public uint32 Height;
			public uint32 Stride;
			public D3DBASISTYPE Basis;
			public D3DDEGREETYPE Degree;
		}
		[CRepr]
		public struct D3DTRIPATCH_INFO
		{
			public uint32 StartVertexOffset;
			public uint32 NumVertices;
			public D3DBASISTYPE Basis;
			public D3DDEGREETYPE Degree;
		}
		[CRepr]
		public struct D3DADAPTER_IDENTIFIER9
		{
			public CHAR[512] Driver;
			public CHAR[512] Description;
			public CHAR[32] DeviceName;
			public LARGE_INTEGER DriverVersion;
			public uint32 VendorId;
			public uint32 DeviceId;
			public uint32 SubSysId;
			public uint32 Revision;
			public Guid DeviceIdentifier;
			public uint32 WHQLLevel;
		}
		[CRepr]
		public struct D3DRASTER_STATUS
		{
			public BOOL InVBlank;
			public uint32 ScanLine;
		}
		[CRepr]
		public struct D3DRESOURCESTATS
		{
			public BOOL bThrashing;
			public uint32 ApproxBytesDownloaded;
			public uint32 NumEvicts;
			public uint32 NumVidCreates;
			public uint32 LastPri;
			public uint32 NumUsed;
			public uint32 NumUsedInVidMem;
			public uint32 WorkingSet;
			public uint32 WorkingSetBytes;
			public uint32 TotalManaged;
			public uint32 TotalBytes;
		}
		[CRepr]
		public struct D3DDEVINFO_RESOURCEMANAGER
		{
			public D3DRESOURCESTATS[8] stats;
		}
		[CRepr]
		public struct D3DDEVINFO_D3DVERTEXSTATS
		{
			public uint32 NumRenderedTriangles;
			public uint32 NumExtraClippingTriangles;
		}
		[CRepr]
		public struct D3DDEVINFO_VCACHE
		{
			public uint32 Pattern;
			public uint32 OptMethod;
			public uint32 CacheSize;
			public uint32 MagicNumber;
		}
		[CRepr]
		public struct D3DDEVINFO_D3D9PIPELINETIMINGS
		{
			public float VertexProcessingTimePercent;
			public float PixelProcessingTimePercent;
			public float OtherGPUProcessingTimePercent;
			public float GPUIdleTimePercent;
		}
		[CRepr]
		public struct D3DDEVINFO_D3D9INTERFACETIMINGS
		{
			public float WaitingForGPUToUseApplicationResourceTimePercent;
			public float WaitingForGPUToAcceptMoreCommandsTimePercent;
			public float WaitingForGPUToStayWithinLatencyTimePercent;
			public float WaitingForGPUExclusiveResourceTimePercent;
			public float WaitingForGPUOtherTimePercent;
		}
		[CRepr]
		public struct D3DDEVINFO_D3D9STAGETIMINGS
		{
			public float MemoryProcessingPercent;
			public float ComputationProcessingPercent;
		}
		[CRepr]
		public struct D3DDEVINFO_D3D9BANDWIDTHTIMINGS
		{
			public float MaxBandwidthUtilized;
			public float FrontEndUploadMemoryUtilizedPercent;
			public float VertexRateUtilizedPercent;
			public float TriangleSetupRateUtilizedPercent;
			public float FillRateUtilizedPercent;
		}
		[CRepr]
		public struct D3DDEVINFO_D3D9CACHEUTILIZATION
		{
			public float TextureCacheHitRate;
			public float PostTransformVertexCacheHitRate;
		}
		[CRepr]
		public struct D3DMEMORYPRESSURE
		{
			public uint64 BytesEvictedFromProcess;
			public uint64 SizeOfInefficientAllocation;
			public uint32 LevelOfEfficiency;
		}
		[CRepr]
		public struct D3DCOMPOSERECTDESC
		{
			public uint16 X;
			public uint16 Y;
			public uint16 Width;
			public uint16 Height;
		}
		[CRepr]
		public struct D3DCOMPOSERECTDESTINATION
		{
			public uint16 SrcRectIndex;
			public uint16 Reserved;
			public int16 X;
			public int16 Y;
		}
		[CRepr]
		public struct D3DPRESENTSTATS
		{
			public uint32 PresentCount;
			public uint32 PresentRefreshCount;
			public uint32 SyncRefreshCount;
			public LARGE_INTEGER SyncQPCTime;
			public LARGE_INTEGER SyncGPUTime;
		}
		[CRepr]
		public struct D3DDISPLAYMODEEX
		{
			public uint32 Size;
			public uint32 Width;
			public uint32 Height;
			public uint32 RefreshRate;
			public D3DFORMAT Format;
			public D3DSCANLINEORDERING ScanLineOrdering;
		}
		[CRepr]
		public struct D3DDISPLAYMODEFILTER
		{
			public uint32 Size;
			public D3DFORMAT Format;
			public D3DSCANLINEORDERING ScanLineOrdering;
		}
		[CRepr]
		public struct D3D_OMAC
		{
			public uint8[16] Omac;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERY_INPUT
		{
			public Guid QueryType;
			public HANDLE hChannel;
			public uint32 SequenceNumber;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT
		{
			public D3D_OMAC omac;
			public Guid QueryType;
			public HANDLE hChannel;
			public uint32 SequenceNumber;
			public HRESULT ReturnCode;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS
		{
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public _Anonymous_e__Struct Anonymous;
				public uint32 Value;
				
				[CRepr]
				public struct _Anonymous_e__Struct
				{
					public uint32 _bitfield;
				}
			}
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYPROTECTION_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS ProtectionFlags;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYCHANNELTYPE_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public D3DAUTHENTICATEDCHANNELTYPE ChannelType;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYDEVICEHANDLE_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public HANDLE DeviceHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_INPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
			public HANDLE DXVA2DecodeHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYCRYPTOSESSION_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public HANDLE DXVA2DecodeHandle;
			public HANDLE CryptoSessionHandle;
			public HANDLE DeviceHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESSCOUNT_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public uint32 NumRestrictedSharedResourceProcesses;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_INPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
			public uint32 ProcessIndex;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYRESTRICTEDSHAREDRESOURCEPROCESS_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public uint32 ProcessIndex;
			public D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE ProcessIdentifer;
			public HANDLE ProcessHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYUNRESTRICTEDPROTECTEDSHAREDRESOURCECOUNT_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public uint32 NumUnrestrictedProtectedSharedResources;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_INPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
			public HANDLE DeviceHandle;
			public HANDLE CryptoSessionHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTIDCOUNT_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public HANDLE DeviceHandle;
			public HANDLE CryptoSessionHandle;
			public uint32 NumOutputIDs;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_INPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
			public HANDLE DeviceHandle;
			public HANDLE CryptoSessionHandle;
			public uint32 OutputIDIndex;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYOUTPUTID_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public HANDLE DeviceHandle;
			public HANDLE CryptoSessionHandle;
			public uint32 OutputIDIndex;
			public uint64 OutputID;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYINFOBUSTYPE_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public D3DBUSTYPE BusType;
			public BOOL bAccessibleInContiguousBlocks;
			public BOOL bAccessibleInNonContiguousBlocks;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUIDCOUNT_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public uint32 NumEncryptionGuids;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_INPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_INPUT Input;
			public uint32 EncryptionGuidIndex;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYEVICTIONENCRYPTIONGUID_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public uint32 EncryptionGuidIndex;
			public Guid EncryptionGuid;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_QUERYUNCOMPRESSEDENCRYPTIONLEVEL_OUTPUT
		{
			public D3DAUTHENTICATEDCHANNEL_QUERY_OUTPUT Output;
			public Guid EncryptionGuid;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT
		{
			public D3D_OMAC omac;
			public Guid ConfigureType;
			public HANDLE hChannel;
			public uint32 SequenceNumber;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT
		{
			public D3D_OMAC omac;
			public Guid ConfigureType;
			public HANDLE hChannel;
			public uint32 SequenceNumber;
			public HRESULT ReturnCode;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGUREINITIALIZE
		{
			public D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
			public uint32 StartSequenceQuery;
			public uint32 StartSequenceConfigure;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGUREPROTECTION
		{
			public D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
			public D3DAUTHENTICATEDCHANNEL_PROTECTION_FLAGS Protections;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGURECRYPTOSESSION
		{
			public D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
			public HANDLE DXVA2DecodeHandle;
			public HANDLE CryptoSessionHandle;
			public HANDLE DeviceHandle;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGURESHAREDRESOURCE
		{
			public D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
			public D3DAUTHENTICATEDCHANNEL_PROCESSIDENTIFIERTYPE ProcessIdentiferType;
			public HANDLE ProcessHandle;
			public BOOL AllowAccess;
		}
		[CRepr]
		public struct D3DAUTHENTICATEDCHANNEL_CONFIGUREUNCOMPRESSEDENCRYPTION
		{
			public D3DAUTHENTICATEDCHANNEL_CONFIGURE_INPUT Parameters;
			public Guid EncryptionGuid;
		}
		[CRepr]
		public struct D3DENCRYPTED_BLOCK_INFO
		{
			public uint32 NumEncryptedBytesAtBeginning;
			public uint32 NumBytesInSkipPattern;
			public uint32 NumBytesInEncryptPattern;
		}
		[CRepr]
		public struct D3DAES_CTR_IV
		{
			public uint64 IV;
			public uint64 Count;
		}
		[CRepr]
		public struct D3DVSHADERCAPS2_0
		{
			public uint32 Caps;
			public int32 DynamicFlowControlDepth;
			public int32 NumTemps;
			public int32 StaticFlowControlDepth;
		}
		[CRepr]
		public struct D3DPSHADERCAPS2_0
		{
			public uint32 Caps;
			public int32 DynamicFlowControlDepth;
			public int32 NumTemps;
			public int32 StaticFlowControlDepth;
			public int32 NumInstructionSlots;
		}
		[CRepr]
		public struct D3DCAPS9
		{
			public D3DDEVTYPE DeviceType;
			public uint32 AdapterOrdinal;
			public uint32 Caps;
			public uint32 Caps2;
			public uint32 Caps3;
			public uint32 PresentationIntervals;
			public uint32 CursorCaps;
			public uint32 DevCaps;
			public uint32 PrimitiveMiscCaps;
			public uint32 RasterCaps;
			public uint32 ZCmpCaps;
			public uint32 SrcBlendCaps;
			public uint32 DestBlendCaps;
			public uint32 AlphaCmpCaps;
			public uint32 ShadeCaps;
			public uint32 TextureCaps;
			public uint32 TextureFilterCaps;
			public uint32 CubeTextureFilterCaps;
			public uint32 VolumeTextureFilterCaps;
			public uint32 TextureAddressCaps;
			public uint32 VolumeTextureAddressCaps;
			public uint32 LineCaps;
			public uint32 MaxTextureWidth;
			public uint32 MaxTextureHeight;
			public uint32 MaxVolumeExtent;
			public uint32 MaxTextureRepeat;
			public uint32 MaxTextureAspectRatio;
			public uint32 MaxAnisotropy;
			public float MaxVertexW;
			public float GuardBandLeft;
			public float GuardBandTop;
			public float GuardBandRight;
			public float GuardBandBottom;
			public float ExtentsAdjust;
			public uint32 StencilCaps;
			public uint32 FVFCaps;
			public uint32 TextureOpCaps;
			public uint32 MaxTextureBlendStages;
			public uint32 MaxSimultaneousTextures;
			public uint32 VertexProcessingCaps;
			public uint32 MaxActiveLights;
			public uint32 MaxUserClipPlanes;
			public uint32 MaxVertexBlendMatrices;
			public uint32 MaxVertexBlendMatrixIndex;
			public float MaxPointSize;
			public uint32 MaxPrimitiveCount;
			public uint32 MaxVertexIndex;
			public uint32 MaxStreams;
			public uint32 MaxStreamStride;
			public uint32 VertexShaderVersion;
			public uint32 MaxVertexShaderConst;
			public uint32 PixelShaderVersion;
			public float PixelShader1xMaxValue;
			public uint32 DevCaps2;
			public float MaxNpatchTessellationLevel;
			public uint32 Reserved5;
			public uint32 MasterAdapterOrdinal;
			public uint32 AdapterOrdinalInGroup;
			public uint32 NumberOfAdaptersInGroup;
			public uint32 DeclTypes;
			public uint32 NumSimultaneousRTs;
			public uint32 StretchRectFilterCaps;
			public D3DVSHADERCAPS2_0 VS20Caps;
			public D3DPSHADERCAPS2_0 PS20Caps;
			public uint32 VertexTextureFilterCaps;
			public uint32 MaxVShaderInstructionsExecuted;
			public uint32 MaxPShaderInstructionsExecuted;
			public uint32 MaxVertexShader30InstructionSlots;
			public uint32 MaxPixelShader30InstructionSlots;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDirect3D9 : IUnknown
		{
			public const new Guid IID = .(0x81bdcbca, 0x64d4, 0x426d, 0xae, 0x8d, 0xad, 0x01, 0x47, 0xf4, 0x27, 0x5c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterSoftwareDevice(void* pInitializeFunction) mut => VT.RegisterSoftwareDevice(ref this, pInitializeFunction);
			public uint32 GetAdapterCount() mut => VT.GetAdapterCount(ref this);
			public HRESULT GetAdapterIdentifier(uint32 Adapter, uint32 Flags, out D3DADAPTER_IDENTIFIER9 pIdentifier) mut => VT.GetAdapterIdentifier(ref this, Adapter, Flags, out pIdentifier);
			public uint32 GetAdapterModeCount(uint32 Adapter, D3DFORMAT Format) mut => VT.GetAdapterModeCount(ref this, Adapter, Format);
			public HRESULT EnumAdapterModes(uint32 Adapter, D3DFORMAT Format, uint32 Mode, out D3DDISPLAYMODE pMode) mut => VT.EnumAdapterModes(ref this, Adapter, Format, Mode, out pMode);
			public HRESULT GetAdapterDisplayMode(uint32 Adapter, out D3DDISPLAYMODE pMode) mut => VT.GetAdapterDisplayMode(ref this, Adapter, out pMode);
			public HRESULT CheckDeviceType(uint32 Adapter, D3DDEVTYPE DevType, D3DFORMAT AdapterFormat, D3DFORMAT BackBufferFormat, BOOL bWindowed) mut => VT.CheckDeviceType(ref this, Adapter, DevType, AdapterFormat, BackBufferFormat, bWindowed);
			public HRESULT CheckDeviceFormat(uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, uint32 Usage, D3DRESOURCETYPE RType, D3DFORMAT CheckFormat) mut => VT.CheckDeviceFormat(ref this, Adapter, DeviceType, AdapterFormat, Usage, RType, CheckFormat);
			public HRESULT CheckDeviceMultiSampleType(uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT SurfaceFormat, BOOL Windowed, D3DMULTISAMPLE_TYPE MultiSampleType, out uint32 pQualityLevels) mut => VT.CheckDeviceMultiSampleType(ref this, Adapter, DeviceType, SurfaceFormat, Windowed, MultiSampleType, out pQualityLevels);
			public HRESULT CheckDepthStencilMatch(uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, D3DFORMAT RenderTargetFormat, D3DFORMAT DepthStencilFormat) mut => VT.CheckDepthStencilMatch(ref this, Adapter, DeviceType, AdapterFormat, RenderTargetFormat, DepthStencilFormat);
			public HRESULT CheckDeviceFormatConversion(uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT SourceFormat, D3DFORMAT TargetFormat) mut => VT.CheckDeviceFormatConversion(ref this, Adapter, DeviceType, SourceFormat, TargetFormat);
			public HRESULT GetDeviceCaps(uint32 Adapter, D3DDEVTYPE DeviceType, out D3DCAPS9 pCaps) mut => VT.GetDeviceCaps(ref this, Adapter, DeviceType, out pCaps);
			public HMONITOR GetAdapterMonitor(uint32 Adapter) mut => VT.GetAdapterMonitor(ref this, Adapter);
			public HRESULT CreateDevice(uint32 Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, uint32 BehaviorFlags, out D3DPRESENT_PARAMETERS pPresentationParameters, out IDirect3DDevice9* ppReturnedDeviceInterface) mut => VT.CreateDevice(ref this, Adapter, DeviceType, hFocusWindow, BehaviorFlags, out pPresentationParameters, out ppReturnedDeviceInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, void* pInitializeFunction) RegisterSoftwareDevice;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3D9 self) GetAdapterCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, uint32 Flags, out D3DADAPTER_IDENTIFIER9 pIdentifier) GetAdapterIdentifier;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3D9 self, uint32 Adapter, D3DFORMAT Format) GetAdapterModeCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DFORMAT Format, uint32 Mode, out D3DDISPLAYMODE pMode) EnumAdapterModes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, out D3DDISPLAYMODE pMode) GetAdapterDisplayMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DevType, D3DFORMAT AdapterFormat, D3DFORMAT BackBufferFormat, BOOL bWindowed) CheckDeviceType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, uint32 Usage, D3DRESOURCETYPE RType, D3DFORMAT CheckFormat) CheckDeviceFormat;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT SurfaceFormat, BOOL Windowed, D3DMULTISAMPLE_TYPE MultiSampleType, out uint32 pQualityLevels) CheckDeviceMultiSampleType;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT AdapterFormat, D3DFORMAT RenderTargetFormat, D3DFORMAT DepthStencilFormat) CheckDepthStencilMatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, D3DFORMAT SourceFormat, D3DFORMAT TargetFormat) CheckDeviceFormatConversion;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, out D3DCAPS9 pCaps) GetDeviceCaps;
				public new function [CallingConvention(.Stdcall)] HMONITOR(ref IDirect3D9 self, uint32 Adapter) GetAdapterMonitor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9 self, uint32 Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, uint32 BehaviorFlags, out D3DPRESENT_PARAMETERS pPresentationParameters, out IDirect3DDevice9* ppReturnedDeviceInterface) CreateDevice;
			}
		}
		[CRepr]
		public struct IDirect3DDevice9 : IUnknown
		{
			public const new Guid IID = .(0xd0223b96, 0xbf7a, 0x43fd, 0x92, 0xbd, 0xa4, 0x3b, 0x0d, 0x82, 0xb9, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT TestCooperativeLevel() mut => VT.TestCooperativeLevel(ref this);
			public uint32 GetAvailableTextureMem() mut => VT.GetAvailableTextureMem(ref this);
			public HRESULT EvictManagedResources() mut => VT.EvictManagedResources(ref this);
			public HRESULT GetDirect3D(out IDirect3D9* ppD3D9) mut => VT.GetDirect3D(ref this, out ppD3D9);
			public HRESULT GetDeviceCaps(out D3DCAPS9 pCaps) mut => VT.GetDeviceCaps(ref this, out pCaps);
			public HRESULT GetDisplayMode(uint32 iSwapChain, out D3DDISPLAYMODE pMode) mut => VT.GetDisplayMode(ref this, iSwapChain, out pMode);
			public HRESULT GetCreationParameters(out D3DDEVICE_CREATION_PARAMETERS pParameters) mut => VT.GetCreationParameters(ref this, out pParameters);
			public HRESULT SetCursorProperties(uint32 XHotSpot, uint32 YHotSpot, ref IDirect3DSurface9 pCursorBitmap) mut => VT.SetCursorProperties(ref this, XHotSpot, YHotSpot, ref pCursorBitmap);
			public void SetCursorPosition(int32 X, int32 Y, uint32 Flags) mut => VT.SetCursorPosition(ref this, X, Y, Flags);
			public BOOL ShowCursor(BOOL bShow) mut => VT.ShowCursor(ref this, bShow);
			public HRESULT CreateAdditionalSwapChain(out D3DPRESENT_PARAMETERS pPresentationParameters, out IDirect3DSwapChain9* pSwapChain) mut => VT.CreateAdditionalSwapChain(ref this, out pPresentationParameters, out pSwapChain);
			public HRESULT GetSwapChain(uint32 iSwapChain, out IDirect3DSwapChain9* pSwapChain) mut => VT.GetSwapChain(ref this, iSwapChain, out pSwapChain);
			public uint32 GetNumberOfSwapChains() mut => VT.GetNumberOfSwapChains(ref this);
			public HRESULT Reset(out D3DPRESENT_PARAMETERS pPresentationParameters) mut => VT.Reset(ref this, out pPresentationParameters);
			public HRESULT Present(in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion) mut => VT.Present(ref this, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion);
			public HRESULT GetBackBuffer(uint32 iSwapChain, uint32 iBackBuffer, D3DBACKBUFFER_TYPE Type, out IDirect3DSurface9* ppBackBuffer) mut => VT.GetBackBuffer(ref this, iSwapChain, iBackBuffer, Type, out ppBackBuffer);
			public HRESULT GetRasterStatus(uint32 iSwapChain, out D3DRASTER_STATUS pRasterStatus) mut => VT.GetRasterStatus(ref this, iSwapChain, out pRasterStatus);
			public HRESULT SetDialogBoxMode(BOOL bEnableDialogs) mut => VT.SetDialogBoxMode(ref this, bEnableDialogs);
			public void SetGammaRamp(uint32 iSwapChain, uint32 Flags, in D3DGAMMARAMP pRamp) mut => VT.SetGammaRamp(ref this, iSwapChain, Flags, pRamp);
			public void GetGammaRamp(uint32 iSwapChain, out D3DGAMMARAMP pRamp) mut => VT.GetGammaRamp(ref this, iSwapChain, out pRamp);
			public HRESULT CreateTexture(uint32 Width, uint32 Height, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DTexture9* ppTexture, out HANDLE pSharedHandle) mut => VT.CreateTexture(ref this, Width, Height, Levels, Usage, Format, Pool, out ppTexture, out pSharedHandle);
			public HRESULT CreateVolumeTexture(uint32 Width, uint32 Height, uint32 Depth, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DVolumeTexture9* ppVolumeTexture, out HANDLE pSharedHandle) mut => VT.CreateVolumeTexture(ref this, Width, Height, Depth, Levels, Usage, Format, Pool, out ppVolumeTexture, out pSharedHandle);
			public HRESULT CreateCubeTexture(uint32 EdgeLength, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DCubeTexture9* ppCubeTexture, out HANDLE pSharedHandle) mut => VT.CreateCubeTexture(ref this, EdgeLength, Levels, Usage, Format, Pool, out ppCubeTexture, out pSharedHandle);
			public HRESULT CreateVertexBuffer(uint32 Length, uint32 Usage, uint32 FVF, D3DPOOL Pool, out IDirect3DVertexBuffer9* ppVertexBuffer, out HANDLE pSharedHandle) mut => VT.CreateVertexBuffer(ref this, Length, Usage, FVF, Pool, out ppVertexBuffer, out pSharedHandle);
			public HRESULT CreateIndexBuffer(uint32 Length, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DIndexBuffer9* ppIndexBuffer, out HANDLE pSharedHandle) mut => VT.CreateIndexBuffer(ref this, Length, Usage, Format, Pool, out ppIndexBuffer, out pSharedHandle);
			public HRESULT CreateRenderTarget(uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Lockable, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) mut => VT.CreateRenderTarget(ref this, Width, Height, Format, MultiSample, MultisampleQuality, Lockable, out ppSurface, out pSharedHandle);
			public HRESULT CreateDepthStencilSurface(uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Discard, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) mut => VT.CreateDepthStencilSurface(ref this, Width, Height, Format, MultiSample, MultisampleQuality, Discard, out ppSurface, out pSharedHandle);
			public HRESULT UpdateSurface(ref IDirect3DSurface9 pSourceSurface, in RECT pSourceRect, ref IDirect3DSurface9 pDestinationSurface, in POINT pDestPoint) mut => VT.UpdateSurface(ref this, ref pSourceSurface, pSourceRect, ref pDestinationSurface, pDestPoint);
			public HRESULT UpdateTexture(ref IDirect3DBaseTexture9 pSourceTexture, ref IDirect3DBaseTexture9 pDestinationTexture) mut => VT.UpdateTexture(ref this, ref pSourceTexture, ref pDestinationTexture);
			public HRESULT GetRenderTargetData(ref IDirect3DSurface9 pRenderTarget, ref IDirect3DSurface9 pDestSurface) mut => VT.GetRenderTargetData(ref this, ref pRenderTarget, ref pDestSurface);
			public HRESULT GetFrontBufferData(uint32 iSwapChain, ref IDirect3DSurface9 pDestSurface) mut => VT.GetFrontBufferData(ref this, iSwapChain, ref pDestSurface);
			public HRESULT StretchRect(ref IDirect3DSurface9 pSourceSurface, in RECT pSourceRect, ref IDirect3DSurface9 pDestSurface, in RECT pDestRect, D3DTEXTUREFILTERTYPE Filter) mut => VT.StretchRect(ref this, ref pSourceSurface, pSourceRect, ref pDestSurface, pDestRect, Filter);
			public HRESULT ColorFill(ref IDirect3DSurface9 pSurface, in RECT pRect, uint32 color) mut => VT.ColorFill(ref this, ref pSurface, pRect, color);
			public HRESULT CreateOffscreenPlainSurface(uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) mut => VT.CreateOffscreenPlainSurface(ref this, Width, Height, Format, Pool, out ppSurface, out pSharedHandle);
			public HRESULT SetRenderTarget(uint32 RenderTargetIndex, ref IDirect3DSurface9 pRenderTarget) mut => VT.SetRenderTarget(ref this, RenderTargetIndex, ref pRenderTarget);
			public HRESULT GetRenderTarget(uint32 RenderTargetIndex, out IDirect3DSurface9* ppRenderTarget) mut => VT.GetRenderTarget(ref this, RenderTargetIndex, out ppRenderTarget);
			public HRESULT SetDepthStencilSurface(ref IDirect3DSurface9 pNewZStencil) mut => VT.SetDepthStencilSurface(ref this, ref pNewZStencil);
			public HRESULT GetDepthStencilSurface(out IDirect3DSurface9* ppZStencilSurface) mut => VT.GetDepthStencilSurface(ref this, out ppZStencilSurface);
			public HRESULT BeginScene() mut => VT.BeginScene(ref this);
			public HRESULT EndScene() mut => VT.EndScene(ref this);
			public HRESULT Clear(uint32 Count, in D3DRECT pRects, uint32 Flags, uint32 Color, float Z, uint32 Stencil) mut => VT.Clear(ref this, Count, pRects, Flags, Color, Z, Stencil);
			public HRESULT SetTransform(D3DTRANSFORMSTATETYPE State, in D3DMATRIX pMatrix) mut => VT.SetTransform(ref this, State, pMatrix);
			public HRESULT GetTransform(D3DTRANSFORMSTATETYPE State, out D3DMATRIX pMatrix) mut => VT.GetTransform(ref this, State, out pMatrix);
			public HRESULT MultiplyTransform(D3DTRANSFORMSTATETYPE param0, in D3DMATRIX param1) mut => VT.MultiplyTransform(ref this, param0, param1);
			public HRESULT SetViewport(in D3DVIEWPORT9 pViewport) mut => VT.SetViewport(ref this, pViewport);
			public HRESULT GetViewport(out D3DVIEWPORT9 pViewport) mut => VT.GetViewport(ref this, out pViewport);
			public HRESULT SetMaterial(in D3DMATERIAL9 pMaterial) mut => VT.SetMaterial(ref this, pMaterial);
			public HRESULT GetMaterial(out D3DMATERIAL9 pMaterial) mut => VT.GetMaterial(ref this, out pMaterial);
			public HRESULT SetLight(uint32 Index, in D3DLIGHT9 param1) mut => VT.SetLight(ref this, Index, param1);
			public HRESULT GetLight(uint32 Index, out D3DLIGHT9 param1) mut => VT.GetLight(ref this, Index, out param1);
			public HRESULT LightEnable(uint32 Index, BOOL Enable) mut => VT.LightEnable(ref this, Index, Enable);
			public HRESULT GetLightEnable(uint32 Index, out BOOL pEnable) mut => VT.GetLightEnable(ref this, Index, out pEnable);
			public HRESULT SetClipPlane(uint32 Index, in float pPlane) mut => VT.SetClipPlane(ref this, Index, pPlane);
			public HRESULT GetClipPlane(uint32 Index, out float pPlane) mut => VT.GetClipPlane(ref this, Index, out pPlane);
			public HRESULT SetRenderState(D3DRENDERSTATETYPE State, uint32 Value) mut => VT.SetRenderState(ref this, State, Value);
			public HRESULT GetRenderState(D3DRENDERSTATETYPE State, out uint32 pValue) mut => VT.GetRenderState(ref this, State, out pValue);
			public HRESULT CreateStateBlock(D3DSTATEBLOCKTYPE Type, out IDirect3DStateBlock9* ppSB) mut => VT.CreateStateBlock(ref this, Type, out ppSB);
			public HRESULT BeginStateBlock() mut => VT.BeginStateBlock(ref this);
			public HRESULT EndStateBlock(out IDirect3DStateBlock9* ppSB) mut => VT.EndStateBlock(ref this, out ppSB);
			public HRESULT SetClipStatus(in D3DCLIPSTATUS9 pClipStatus) mut => VT.SetClipStatus(ref this, pClipStatus);
			public HRESULT GetClipStatus(out D3DCLIPSTATUS9 pClipStatus) mut => VT.GetClipStatus(ref this, out pClipStatus);
			public HRESULT GetTexture(uint32 Stage, out IDirect3DBaseTexture9* ppTexture) mut => VT.GetTexture(ref this, Stage, out ppTexture);
			public HRESULT SetTexture(uint32 Stage, ref IDirect3DBaseTexture9 pTexture) mut => VT.SetTexture(ref this, Stage, ref pTexture);
			public HRESULT GetTextureStageState(uint32 Stage, D3DTEXTURESTAGESTATETYPE Type, out uint32 pValue) mut => VT.GetTextureStageState(ref this, Stage, Type, out pValue);
			public HRESULT SetTextureStageState(uint32 Stage, D3DTEXTURESTAGESTATETYPE Type, uint32 Value) mut => VT.SetTextureStageState(ref this, Stage, Type, Value);
			public HRESULT GetSamplerState(uint32 Sampler, D3DSAMPLERSTATETYPE Type, out uint32 pValue) mut => VT.GetSamplerState(ref this, Sampler, Type, out pValue);
			public HRESULT SetSamplerState(uint32 Sampler, D3DSAMPLERSTATETYPE Type, uint32 Value) mut => VT.SetSamplerState(ref this, Sampler, Type, Value);
			public HRESULT ValidateDevice(out uint32 pNumPasses) mut => VT.ValidateDevice(ref this, out pNumPasses);
			public HRESULT SetPaletteEntries(uint32 PaletteNumber, in PALETTEENTRY pEntries) mut => VT.SetPaletteEntries(ref this, PaletteNumber, pEntries);
			public HRESULT GetPaletteEntries(uint32 PaletteNumber, out PALETTEENTRY pEntries) mut => VT.GetPaletteEntries(ref this, PaletteNumber, out pEntries);
			public HRESULT SetCurrentTexturePalette(uint32 PaletteNumber) mut => VT.SetCurrentTexturePalette(ref this, PaletteNumber);
			public HRESULT GetCurrentTexturePalette(out uint32 PaletteNumber) mut => VT.GetCurrentTexturePalette(ref this, out PaletteNumber);
			public HRESULT SetScissorRect(in RECT pRect) mut => VT.SetScissorRect(ref this, pRect);
			public HRESULT GetScissorRect(out RECT pRect) mut => VT.GetScissorRect(ref this, out pRect);
			public HRESULT SetSoftwareVertexProcessing(BOOL bSoftware) mut => VT.SetSoftwareVertexProcessing(ref this, bSoftware);
			public BOOL GetSoftwareVertexProcessing() mut => VT.GetSoftwareVertexProcessing(ref this);
			public HRESULT SetNPatchMode(float nSegments) mut => VT.SetNPatchMode(ref this, nSegments);
			public float GetNPatchMode() mut => VT.GetNPatchMode(ref this);
			public HRESULT DrawPrimitive(D3DPRIMITIVETYPE PrimitiveType, uint32 StartVertex, uint32 PrimitiveCount) mut => VT.DrawPrimitive(ref this, PrimitiveType, StartVertex, PrimitiveCount);
			public HRESULT DrawIndexedPrimitive(D3DPRIMITIVETYPE param0, int32 BaseVertexIndex, uint32 MinVertexIndex, uint32 NumVertices, uint32 startIndex, uint32 primCount) mut => VT.DrawIndexedPrimitive(ref this, param0, BaseVertexIndex, MinVertexIndex, NumVertices, startIndex, primCount);
			public HRESULT DrawPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, uint32 PrimitiveCount, void* pVertexStreamZeroData, uint32 VertexStreamZeroStride) mut => VT.DrawPrimitiveUP(ref this, PrimitiveType, PrimitiveCount, pVertexStreamZeroData, VertexStreamZeroStride);
			public HRESULT DrawIndexedPrimitiveUP(D3DPRIMITIVETYPE PrimitiveType, uint32 MinVertexIndex, uint32 NumVertices, uint32 PrimitiveCount, void* pIndexData, D3DFORMAT IndexDataFormat, void* pVertexStreamZeroData, uint32 VertexStreamZeroStride) mut => VT.DrawIndexedPrimitiveUP(ref this, PrimitiveType, MinVertexIndex, NumVertices, PrimitiveCount, pIndexData, IndexDataFormat, pVertexStreamZeroData, VertexStreamZeroStride);
			public HRESULT ProcessVertices(uint32 SrcStartIndex, uint32 DestIndex, uint32 VertexCount, ref IDirect3DVertexBuffer9 pDestBuffer, ref IDirect3DVertexDeclaration9 pVertexDecl, uint32 Flags) mut => VT.ProcessVertices(ref this, SrcStartIndex, DestIndex, VertexCount, ref pDestBuffer, ref pVertexDecl, Flags);
			public HRESULT CreateVertexDeclaration(in D3DVERTEXELEMENT9 pVertexElements, out IDirect3DVertexDeclaration9* ppDecl) mut => VT.CreateVertexDeclaration(ref this, pVertexElements, out ppDecl);
			public HRESULT SetVertexDeclaration(ref IDirect3DVertexDeclaration9 pDecl) mut => VT.SetVertexDeclaration(ref this, ref pDecl);
			public HRESULT GetVertexDeclaration(out IDirect3DVertexDeclaration9* ppDecl) mut => VT.GetVertexDeclaration(ref this, out ppDecl);
			public HRESULT SetFVF(uint32 FVF) mut => VT.SetFVF(ref this, FVF);
			public HRESULT GetFVF(out uint32 pFVF) mut => VT.GetFVF(ref this, out pFVF);
			public HRESULT CreateVertexShader(in uint32 pFunction, out IDirect3DVertexShader9* ppShader) mut => VT.CreateVertexShader(ref this, pFunction, out ppShader);
			public HRESULT SetVertexShader(ref IDirect3DVertexShader9 pShader) mut => VT.SetVertexShader(ref this, ref pShader);
			public HRESULT GetVertexShader(out IDirect3DVertexShader9* ppShader) mut => VT.GetVertexShader(ref this, out ppShader);
			public HRESULT SetVertexShaderConstantF(uint32 StartRegister, in float pConstantData, uint32 Vector4fCount) mut => VT.SetVertexShaderConstantF(ref this, StartRegister, pConstantData, Vector4fCount);
			public HRESULT GetVertexShaderConstantF(uint32 StartRegister, out float pConstantData, uint32 Vector4fCount) mut => VT.GetVertexShaderConstantF(ref this, StartRegister, out pConstantData, Vector4fCount);
			public HRESULT SetVertexShaderConstantI(uint32 StartRegister, in int32 pConstantData, uint32 Vector4iCount) mut => VT.SetVertexShaderConstantI(ref this, StartRegister, pConstantData, Vector4iCount);
			public HRESULT GetVertexShaderConstantI(uint32 StartRegister, out int32 pConstantData, uint32 Vector4iCount) mut => VT.GetVertexShaderConstantI(ref this, StartRegister, out pConstantData, Vector4iCount);
			public HRESULT SetVertexShaderConstantB(uint32 StartRegister, in BOOL pConstantData, uint32 BoolCount) mut => VT.SetVertexShaderConstantB(ref this, StartRegister, pConstantData, BoolCount);
			public HRESULT GetVertexShaderConstantB(uint32 StartRegister, out BOOL pConstantData, uint32 BoolCount) mut => VT.GetVertexShaderConstantB(ref this, StartRegister, out pConstantData, BoolCount);
			public HRESULT SetStreamSource(uint32 StreamNumber, ref IDirect3DVertexBuffer9 pStreamData, uint32 OffsetInBytes, uint32 Stride) mut => VT.SetStreamSource(ref this, StreamNumber, ref pStreamData, OffsetInBytes, Stride);
			public HRESULT GetStreamSource(uint32 StreamNumber, out IDirect3DVertexBuffer9* ppStreamData, out uint32 pOffsetInBytes, out uint32 pStride) mut => VT.GetStreamSource(ref this, StreamNumber, out ppStreamData, out pOffsetInBytes, out pStride);
			public HRESULT SetStreamSourceFreq(uint32 StreamNumber, uint32 Setting) mut => VT.SetStreamSourceFreq(ref this, StreamNumber, Setting);
			public HRESULT GetStreamSourceFreq(uint32 StreamNumber, out uint32 pSetting) mut => VT.GetStreamSourceFreq(ref this, StreamNumber, out pSetting);
			public HRESULT SetIndices(ref IDirect3DIndexBuffer9 pIndexData) mut => VT.SetIndices(ref this, ref pIndexData);
			public HRESULT GetIndices(out IDirect3DIndexBuffer9* ppIndexData) mut => VT.GetIndices(ref this, out ppIndexData);
			public HRESULT CreatePixelShader(in uint32 pFunction, out IDirect3DPixelShader9* ppShader) mut => VT.CreatePixelShader(ref this, pFunction, out ppShader);
			public HRESULT SetPixelShader(ref IDirect3DPixelShader9 pShader) mut => VT.SetPixelShader(ref this, ref pShader);
			public HRESULT GetPixelShader(out IDirect3DPixelShader9* ppShader) mut => VT.GetPixelShader(ref this, out ppShader);
			public HRESULT SetPixelShaderConstantF(uint32 StartRegister, in float pConstantData, uint32 Vector4fCount) mut => VT.SetPixelShaderConstantF(ref this, StartRegister, pConstantData, Vector4fCount);
			public HRESULT GetPixelShaderConstantF(uint32 StartRegister, out float pConstantData, uint32 Vector4fCount) mut => VT.GetPixelShaderConstantF(ref this, StartRegister, out pConstantData, Vector4fCount);
			public HRESULT SetPixelShaderConstantI(uint32 StartRegister, in int32 pConstantData, uint32 Vector4iCount) mut => VT.SetPixelShaderConstantI(ref this, StartRegister, pConstantData, Vector4iCount);
			public HRESULT GetPixelShaderConstantI(uint32 StartRegister, out int32 pConstantData, uint32 Vector4iCount) mut => VT.GetPixelShaderConstantI(ref this, StartRegister, out pConstantData, Vector4iCount);
			public HRESULT SetPixelShaderConstantB(uint32 StartRegister, in BOOL pConstantData, uint32 BoolCount) mut => VT.SetPixelShaderConstantB(ref this, StartRegister, pConstantData, BoolCount);
			public HRESULT GetPixelShaderConstantB(uint32 StartRegister, out BOOL pConstantData, uint32 BoolCount) mut => VT.GetPixelShaderConstantB(ref this, StartRegister, out pConstantData, BoolCount);
			public HRESULT DrawRectPatch(uint32 Handle, in float pNumSegs, in D3DRECTPATCH_INFO pRectPatchInfo) mut => VT.DrawRectPatch(ref this, Handle, pNumSegs, pRectPatchInfo);
			public HRESULT DrawTriPatch(uint32 Handle, in float pNumSegs, in D3DTRIPATCH_INFO pTriPatchInfo) mut => VT.DrawTriPatch(ref this, Handle, pNumSegs, pTriPatchInfo);
			public HRESULT DeletePatch(uint32 Handle) mut => VT.DeletePatch(ref this, Handle);
			public HRESULT CreateQuery(D3DQUERYTYPE Type, out IDirect3DQuery9* ppQuery) mut => VT.CreateQuery(ref this, Type, out ppQuery);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self) TestCooperativeLevel;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DDevice9 self) GetAvailableTextureMem;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self) EvictManagedResources;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3D9* ppD3D9) GetDirect3D;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DCAPS9 pCaps) GetDeviceCaps;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 iSwapChain, out D3DDISPLAYMODE pMode) GetDisplayMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DDEVICE_CREATION_PARAMETERS pParameters) GetCreationParameters;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 XHotSpot, uint32 YHotSpot, ref IDirect3DSurface9 pCursorBitmap) SetCursorProperties;
				public new function [CallingConvention(.Stdcall)] void(ref IDirect3DDevice9 self, int32 X, int32 Y, uint32 Flags) SetCursorPosition;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IDirect3DDevice9 self, BOOL bShow) ShowCursor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DPRESENT_PARAMETERS pPresentationParameters, out IDirect3DSwapChain9* pSwapChain) CreateAdditionalSwapChain;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 iSwapChain, out IDirect3DSwapChain9* pSwapChain) GetSwapChain;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DDevice9 self) GetNumberOfSwapChains;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DPRESENT_PARAMETERS pPresentationParameters) Reset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion) Present;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 iSwapChain, uint32 iBackBuffer, D3DBACKBUFFER_TYPE Type, out IDirect3DSurface9* ppBackBuffer) GetBackBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 iSwapChain, out D3DRASTER_STATUS pRasterStatus) GetRasterStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, BOOL bEnableDialogs) SetDialogBoxMode;
				public new function [CallingConvention(.Stdcall)] void(ref IDirect3DDevice9 self, uint32 iSwapChain, uint32 Flags, in D3DGAMMARAMP pRamp) SetGammaRamp;
				public new function [CallingConvention(.Stdcall)] void(ref IDirect3DDevice9 self, uint32 iSwapChain, out D3DGAMMARAMP pRamp) GetGammaRamp;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Width, uint32 Height, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DTexture9* ppTexture, out HANDLE pSharedHandle) CreateTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Width, uint32 Height, uint32 Depth, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DVolumeTexture9* ppVolumeTexture, out HANDLE pSharedHandle) CreateVolumeTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 EdgeLength, uint32 Levels, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DCubeTexture9* ppCubeTexture, out HANDLE pSharedHandle) CreateCubeTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Length, uint32 Usage, uint32 FVF, D3DPOOL Pool, out IDirect3DVertexBuffer9* ppVertexBuffer, out HANDLE pSharedHandle) CreateVertexBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Length, uint32 Usage, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DIndexBuffer9* ppIndexBuffer, out HANDLE pSharedHandle) CreateIndexBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Lockable, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) CreateRenderTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Discard, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) CreateDepthStencilSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DSurface9 pSourceSurface, in RECT pSourceRect, ref IDirect3DSurface9 pDestinationSurface, in POINT pDestPoint) UpdateSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DBaseTexture9 pSourceTexture, ref IDirect3DBaseTexture9 pDestinationTexture) UpdateTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DSurface9 pRenderTarget, ref IDirect3DSurface9 pDestSurface) GetRenderTargetData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 iSwapChain, ref IDirect3DSurface9 pDestSurface) GetFrontBufferData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DSurface9 pSourceSurface, in RECT pSourceRect, ref IDirect3DSurface9 pDestSurface, in RECT pDestRect, D3DTEXTUREFILTERTYPE Filter) StretchRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DSurface9 pSurface, in RECT pRect, uint32 color) ColorFill;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle) CreateOffscreenPlainSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 RenderTargetIndex, ref IDirect3DSurface9 pRenderTarget) SetRenderTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 RenderTargetIndex, out IDirect3DSurface9* ppRenderTarget) GetRenderTarget;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DSurface9 pNewZStencil) SetDepthStencilSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DSurface9* ppZStencilSurface) GetDepthStencilSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self) BeginScene;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self) EndScene;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Count, in D3DRECT pRects, uint32 Flags, uint32 Color, float Z, uint32 Stencil) Clear;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DTRANSFORMSTATETYPE State, in D3DMATRIX pMatrix) SetTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DTRANSFORMSTATETYPE State, out D3DMATRIX pMatrix) GetTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DTRANSFORMSTATETYPE param0, in D3DMATRIX param1) MultiplyTransform;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in D3DVIEWPORT9 pViewport) SetViewport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DVIEWPORT9 pViewport) GetViewport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in D3DMATERIAL9 pMaterial) SetMaterial;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DMATERIAL9 pMaterial) GetMaterial;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, in D3DLIGHT9 param1) SetLight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, out D3DLIGHT9 param1) GetLight;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, BOOL Enable) LightEnable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, out BOOL pEnable) GetLightEnable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, in float pPlane) SetClipPlane;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Index, out float pPlane) GetClipPlane;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DRENDERSTATETYPE State, uint32 Value) SetRenderState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DRENDERSTATETYPE State, out uint32 pValue) GetRenderState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DSTATEBLOCKTYPE Type, out IDirect3DStateBlock9* ppSB) CreateStateBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self) BeginStateBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DStateBlock9* ppSB) EndStateBlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in D3DCLIPSTATUS9 pClipStatus) SetClipStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out D3DCLIPSTATUS9 pClipStatus) GetClipStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Stage, out IDirect3DBaseTexture9* ppTexture) GetTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Stage, ref IDirect3DBaseTexture9 pTexture) SetTexture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Stage, D3DTEXTURESTAGESTATETYPE Type, out uint32 pValue) GetTextureStageState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Stage, D3DTEXTURESTAGESTATETYPE Type, uint32 Value) SetTextureStageState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Sampler, D3DSAMPLERSTATETYPE Type, out uint32 pValue) GetSamplerState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Sampler, D3DSAMPLERSTATETYPE Type, uint32 Value) SetSamplerState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out uint32 pNumPasses) ValidateDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 PaletteNumber, in PALETTEENTRY pEntries) SetPaletteEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 PaletteNumber, out PALETTEENTRY pEntries) GetPaletteEntries;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 PaletteNumber) SetCurrentTexturePalette;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out uint32 PaletteNumber) GetCurrentTexturePalette;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in RECT pRect) SetScissorRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out RECT pRect) GetScissorRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, BOOL bSoftware) SetSoftwareVertexProcessing;
				public new function [CallingConvention(.Stdcall)] BOOL(ref IDirect3DDevice9 self) GetSoftwareVertexProcessing;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, float nSegments) SetNPatchMode;
				public new function [CallingConvention(.Stdcall)] float(ref IDirect3DDevice9 self) GetNPatchMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DPRIMITIVETYPE PrimitiveType, uint32 StartVertex, uint32 PrimitiveCount) DrawPrimitive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DPRIMITIVETYPE param0, int32 BaseVertexIndex, uint32 MinVertexIndex, uint32 NumVertices, uint32 startIndex, uint32 primCount) DrawIndexedPrimitive;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DPRIMITIVETYPE PrimitiveType, uint32 PrimitiveCount, void* pVertexStreamZeroData, uint32 VertexStreamZeroStride) DrawPrimitiveUP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DPRIMITIVETYPE PrimitiveType, uint32 MinVertexIndex, uint32 NumVertices, uint32 PrimitiveCount, void* pIndexData, D3DFORMAT IndexDataFormat, void* pVertexStreamZeroData, uint32 VertexStreamZeroStride) DrawIndexedPrimitiveUP;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 SrcStartIndex, uint32 DestIndex, uint32 VertexCount, ref IDirect3DVertexBuffer9 pDestBuffer, ref IDirect3DVertexDeclaration9 pVertexDecl, uint32 Flags) ProcessVertices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in D3DVERTEXELEMENT9 pVertexElements, out IDirect3DVertexDeclaration9* ppDecl) CreateVertexDeclaration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DVertexDeclaration9 pDecl) SetVertexDeclaration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DVertexDeclaration9* ppDecl) GetVertexDeclaration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 FVF) SetFVF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out uint32 pFVF) GetFVF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in uint32 pFunction, out IDirect3DVertexShader9* ppShader) CreateVertexShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DVertexShader9 pShader) SetVertexShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DVertexShader9* ppShader) GetVertexShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in float pConstantData, uint32 Vector4fCount) SetVertexShaderConstantF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out float pConstantData, uint32 Vector4fCount) GetVertexShaderConstantF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in int32 pConstantData, uint32 Vector4iCount) SetVertexShaderConstantI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out int32 pConstantData, uint32 Vector4iCount) GetVertexShaderConstantI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in BOOL pConstantData, uint32 BoolCount) SetVertexShaderConstantB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out BOOL pConstantData, uint32 BoolCount) GetVertexShaderConstantB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StreamNumber, ref IDirect3DVertexBuffer9 pStreamData, uint32 OffsetInBytes, uint32 Stride) SetStreamSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StreamNumber, out IDirect3DVertexBuffer9* ppStreamData, out uint32 pOffsetInBytes, out uint32 pStride) GetStreamSource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StreamNumber, uint32 Setting) SetStreamSourceFreq;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StreamNumber, out uint32 pSetting) GetStreamSourceFreq;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DIndexBuffer9 pIndexData) SetIndices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DIndexBuffer9* ppIndexData) GetIndices;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, in uint32 pFunction, out IDirect3DPixelShader9* ppShader) CreatePixelShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, ref IDirect3DPixelShader9 pShader) SetPixelShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, out IDirect3DPixelShader9* ppShader) GetPixelShader;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in float pConstantData, uint32 Vector4fCount) SetPixelShaderConstantF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out float pConstantData, uint32 Vector4fCount) GetPixelShaderConstantF;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in int32 pConstantData, uint32 Vector4iCount) SetPixelShaderConstantI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out int32 pConstantData, uint32 Vector4iCount) GetPixelShaderConstantI;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, in BOOL pConstantData, uint32 BoolCount) SetPixelShaderConstantB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 StartRegister, out BOOL pConstantData, uint32 BoolCount) GetPixelShaderConstantB;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Handle, in float pNumSegs, in D3DRECTPATCH_INFO pRectPatchInfo) DrawRectPatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Handle, in float pNumSegs, in D3DTRIPATCH_INFO pTriPatchInfo) DrawTriPatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, uint32 Handle) DeletePatch;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9 self, D3DQUERYTYPE Type, out IDirect3DQuery9* ppQuery) CreateQuery;
			}
		}
		[CRepr]
		public struct IDirect3DStateBlock9 : IUnknown
		{
			public const new Guid IID = .(0xb07c4fe5, 0x310d, 0x4ba8, 0xa2, 0x3c, 0x4f, 0x0f, 0x20, 0x6f, 0x21, 0x8b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT Capture() mut => VT.Capture(ref this);
			public HRESULT Apply() mut => VT.Apply(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DStateBlock9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DStateBlock9 self) Capture;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DStateBlock9 self) Apply;
			}
		}
		[CRepr]
		public struct IDirect3DSwapChain9 : IUnknown
		{
			public const new Guid IID = .(0x794950f2, 0xadfc, 0x458a, 0x90, 0x5e, 0x10, 0xa1, 0x0b, 0x0b, 0x50, 0x3b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Present(in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion, uint32 dwFlags) mut => VT.Present(ref this, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags);
			public HRESULT GetFrontBufferData(ref IDirect3DSurface9 pDestSurface) mut => VT.GetFrontBufferData(ref this, ref pDestSurface);
			public HRESULT GetBackBuffer(uint32 iBackBuffer, D3DBACKBUFFER_TYPE Type, out IDirect3DSurface9* ppBackBuffer) mut => VT.GetBackBuffer(ref this, iBackBuffer, Type, out ppBackBuffer);
			public HRESULT GetRasterStatus(out D3DRASTER_STATUS pRasterStatus) mut => VT.GetRasterStatus(ref this, out pRasterStatus);
			public HRESULT GetDisplayMode(out D3DDISPLAYMODE pMode) mut => VT.GetDisplayMode(ref this, out pMode);
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT GetPresentParameters(out D3DPRESENT_PARAMETERS pPresentationParameters) mut => VT.GetPresentParameters(ref this, out pPresentationParameters);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion, uint32 dwFlags) Present;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, ref IDirect3DSurface9 pDestSurface) GetFrontBufferData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, uint32 iBackBuffer, D3DBACKBUFFER_TYPE Type, out IDirect3DSurface9* ppBackBuffer) GetBackBuffer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, out D3DRASTER_STATUS pRasterStatus) GetRasterStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, out D3DDISPLAYMODE pMode) GetDisplayMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9 self, out D3DPRESENT_PARAMETERS pPresentationParameters) GetPresentParameters;
			}
		}
		[CRepr]
		public struct IDirect3DResource9 : IUnknown
		{
			public const new Guid IID = .(0x05eec05d, 0x8f7d, 0x4362, 0xb9, 0x99, 0xd1, 0xba, 0xf3, 0x57, 0xc7, 0x04);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT SetPrivateData(in Guid refguid, void* pData, uint32 SizeOfData, uint32 Flags) mut => VT.SetPrivateData(ref this, refguid, pData, SizeOfData, Flags);
			public HRESULT GetPrivateData(in Guid refguid, void* pData, out uint32 pSizeOfData) mut => VT.GetPrivateData(ref this, refguid, pData, out pSizeOfData);
			public HRESULT FreePrivateData(in Guid refguid) mut => VT.FreePrivateData(ref this, refguid);
			public uint32 SetPriority(uint32 PriorityNew) mut => VT.SetPriority(ref this, PriorityNew);
			public uint32 GetPriority() mut => VT.GetPriority(ref this);
			public void PreLoad() mut => VT.PreLoad(ref this);
			public D3DRESOURCETYPE ComGetType() mut => VT.ComGetType(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DResource9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DResource9 self, in Guid refguid, void* pData, uint32 SizeOfData, uint32 Flags) SetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DResource9 self, in Guid refguid, void* pData, out uint32 pSizeOfData) GetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DResource9 self, in Guid refguid) FreePrivateData;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DResource9 self, uint32 PriorityNew) SetPriority;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DResource9 self) GetPriority;
				public new function [CallingConvention(.Stdcall)] void(ref IDirect3DResource9 self) PreLoad;
				public new function [CallingConvention(.Stdcall)] D3DRESOURCETYPE(ref IDirect3DResource9 self) ComGetType;
			}
		}
		[CRepr]
		public struct IDirect3DVertexDeclaration9 : IUnknown
		{
			public const new Guid IID = .(0xdd13c59c, 0x36fa, 0x4098, 0xa8, 0xfb, 0xc7, 0xed, 0x39, 0xdc, 0x85, 0x46);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT GetDeclaration(out D3DVERTEXELEMENT9 pElement, out uint32 pNumElements) mut => VT.GetDeclaration(ref this, out pElement, out pNumElements);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexDeclaration9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexDeclaration9 self, out D3DVERTEXELEMENT9 pElement, out uint32 pNumElements) GetDeclaration;
			}
		}
		[CRepr]
		public struct IDirect3DVertexShader9 : IUnknown
		{
			public const new Guid IID = .(0xefc5557e, 0x6265, 0x4613, 0x8a, 0x94, 0x43, 0x85, 0x78, 0x89, 0xeb, 0x36);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT GetFunction(void* param0, out uint32 pSizeOfData) mut => VT.GetFunction(ref this, param0, out pSizeOfData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexShader9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexShader9 self, void* param0, out uint32 pSizeOfData) GetFunction;
			}
		}
		[CRepr]
		public struct IDirect3DPixelShader9 : IUnknown
		{
			public const new Guid IID = .(0x6d3bdbdc, 0x5b02, 0x4415, 0xb8, 0x52, 0xce, 0x5e, 0x8b, 0xcc, 0xb2, 0x89);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT GetFunction(void* param0, out uint32 pSizeOfData) mut => VT.GetFunction(ref this, param0, out pSizeOfData);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DPixelShader9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DPixelShader9 self, void* param0, out uint32 pSizeOfData) GetFunction;
			}
		}
		[CRepr]
		public struct IDirect3DBaseTexture9 : IDirect3DResource9
		{
			public const new Guid IID = .(0x580ca87e, 0x1d3c, 0x4d54, 0x99, 0x1d, 0xb7, 0xd3, 0xe3, 0xc2, 0x98, 0xce);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 SetLOD(uint32 LODNew) mut => VT.SetLOD(ref this, LODNew);
			public uint32 GetLOD() mut => VT.GetLOD(ref this);
			public uint32 GetLevelCount() mut => VT.GetLevelCount(ref this);
			public HRESULT SetAutoGenFilterType(D3DTEXTUREFILTERTYPE FilterType) mut => VT.SetAutoGenFilterType(ref this, FilterType);
			public D3DTEXTUREFILTERTYPE GetAutoGenFilterType() mut => VT.GetAutoGenFilterType(ref this);
			public void GenerateMipSubLevels() mut => VT.GenerateMipSubLevels(ref this);

			[CRepr]
			public struct VTable : IDirect3DResource9.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DBaseTexture9 self, uint32 LODNew) SetLOD;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DBaseTexture9 self) GetLOD;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DBaseTexture9 self) GetLevelCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DBaseTexture9 self, D3DTEXTUREFILTERTYPE FilterType) SetAutoGenFilterType;
				public new function [CallingConvention(.Stdcall)] D3DTEXTUREFILTERTYPE(ref IDirect3DBaseTexture9 self) GetAutoGenFilterType;
				public new function [CallingConvention(.Stdcall)] void(ref IDirect3DBaseTexture9 self) GenerateMipSubLevels;
			}
		}
		[CRepr]
		public struct IDirect3DTexture9 : IDirect3DBaseTexture9
		{
			public const new Guid IID = .(0x85c31227, 0x3de5, 0x4f00, 0x9b, 0x3a, 0xf1, 0x1a, 0xc3, 0x8c, 0x18, 0xb5);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLevelDesc(uint32 Level, out D3DSURFACE_DESC pDesc) mut => VT.GetLevelDesc(ref this, Level, out pDesc);
			public HRESULT GetSurfaceLevel(uint32 Level, out IDirect3DSurface9* ppSurfaceLevel) mut => VT.GetSurfaceLevel(ref this, Level, out ppSurfaceLevel);
			public HRESULT LockRect(uint32 Level, out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) mut => VT.LockRect(ref this, Level, out pLockedRect, pRect, Flags);
			public HRESULT UnlockRect(uint32 Level) mut => VT.UnlockRect(ref this, Level);
			public HRESULT AddDirtyRect(in RECT pDirtyRect) mut => VT.AddDirtyRect(ref this, pDirtyRect);

			[CRepr]
			public struct VTable : IDirect3DBaseTexture9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DTexture9 self, uint32 Level, out D3DSURFACE_DESC pDesc) GetLevelDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DTexture9 self, uint32 Level, out IDirect3DSurface9* ppSurfaceLevel) GetSurfaceLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DTexture9 self, uint32 Level, out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) LockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DTexture9 self, uint32 Level) UnlockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DTexture9 self, in RECT pDirtyRect) AddDirtyRect;
			}
		}
		[CRepr]
		public struct IDirect3DVolumeTexture9 : IDirect3DBaseTexture9
		{
			public const new Guid IID = .(0x2518526c, 0xe789, 0x4111, 0xa7, 0xb9, 0x47, 0xef, 0x32, 0x8d, 0x13, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLevelDesc(uint32 Level, out D3DVOLUME_DESC pDesc) mut => VT.GetLevelDesc(ref this, Level, out pDesc);
			public HRESULT GetVolumeLevel(uint32 Level, out IDirect3DVolume9* ppVolumeLevel) mut => VT.GetVolumeLevel(ref this, Level, out ppVolumeLevel);
			public HRESULT LockBox(uint32 Level, out D3DLOCKED_BOX pLockedVolume, in D3DBOX pBox, uint32 Flags) mut => VT.LockBox(ref this, Level, out pLockedVolume, pBox, Flags);
			public HRESULT UnlockBox(uint32 Level) mut => VT.UnlockBox(ref this, Level);
			public HRESULT AddDirtyBox(in D3DBOX pDirtyBox) mut => VT.AddDirtyBox(ref this, pDirtyBox);

			[CRepr]
			public struct VTable : IDirect3DBaseTexture9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolumeTexture9 self, uint32 Level, out D3DVOLUME_DESC pDesc) GetLevelDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolumeTexture9 self, uint32 Level, out IDirect3DVolume9* ppVolumeLevel) GetVolumeLevel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolumeTexture9 self, uint32 Level, out D3DLOCKED_BOX pLockedVolume, in D3DBOX pBox, uint32 Flags) LockBox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolumeTexture9 self, uint32 Level) UnlockBox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolumeTexture9 self, in D3DBOX pDirtyBox) AddDirtyBox;
			}
		}
		[CRepr]
		public struct IDirect3DCubeTexture9 : IDirect3DBaseTexture9
		{
			public const new Guid IID = .(0xfff32f81, 0xd953, 0x473a, 0x92, 0x23, 0x93, 0xd6, 0x52, 0xab, 0xa9, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLevelDesc(uint32 Level, out D3DSURFACE_DESC pDesc) mut => VT.GetLevelDesc(ref this, Level, out pDesc);
			public HRESULT GetCubeMapSurface(D3DCUBEMAP_FACES FaceType, uint32 Level, out IDirect3DSurface9* ppCubeMapSurface) mut => VT.GetCubeMapSurface(ref this, FaceType, Level, out ppCubeMapSurface);
			public HRESULT LockRect(D3DCUBEMAP_FACES FaceType, uint32 Level, out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) mut => VT.LockRect(ref this, FaceType, Level, out pLockedRect, pRect, Flags);
			public HRESULT UnlockRect(D3DCUBEMAP_FACES FaceType, uint32 Level) mut => VT.UnlockRect(ref this, FaceType, Level);
			public HRESULT AddDirtyRect(D3DCUBEMAP_FACES FaceType, in RECT pDirtyRect) mut => VT.AddDirtyRect(ref this, FaceType, pDirtyRect);

			[CRepr]
			public struct VTable : IDirect3DBaseTexture9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCubeTexture9 self, uint32 Level, out D3DSURFACE_DESC pDesc) GetLevelDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCubeTexture9 self, D3DCUBEMAP_FACES FaceType, uint32 Level, out IDirect3DSurface9* ppCubeMapSurface) GetCubeMapSurface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCubeTexture9 self, D3DCUBEMAP_FACES FaceType, uint32 Level, out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) LockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCubeTexture9 self, D3DCUBEMAP_FACES FaceType, uint32 Level) UnlockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DCubeTexture9 self, D3DCUBEMAP_FACES FaceType, in RECT pDirtyRect) AddDirtyRect;
			}
		}
		[CRepr]
		public struct IDirect3DVertexBuffer9 : IDirect3DResource9
		{
			public const new Guid IID = .(0xb64bb1b5, 0xfd70, 0x4df6, 0xbf, 0x91, 0x19, 0xd0, 0xa1, 0x24, 0x55, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock(uint32 OffsetToLock, uint32 SizeToLock, void** ppbData, uint32 Flags) mut => VT.Lock(ref this, OffsetToLock, SizeToLock, ppbData, Flags);
			public HRESULT Unlock() mut => VT.Unlock(ref this);
			public HRESULT GetDesc(out D3DVERTEXBUFFER_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);

			[CRepr]
			public struct VTable : IDirect3DResource9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexBuffer9 self, uint32 OffsetToLock, uint32 SizeToLock, void** ppbData, uint32 Flags) Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexBuffer9 self) Unlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVertexBuffer9 self, out D3DVERTEXBUFFER_DESC pDesc) GetDesc;
			}
		}
		[CRepr]
		public struct IDirect3DIndexBuffer9 : IDirect3DResource9
		{
			public const new Guid IID = .(0x7c9dd65e, 0xd3f7, 0x4529, 0xac, 0xee, 0x78, 0x58, 0x30, 0xac, 0xde, 0x35);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Lock(uint32 OffsetToLock, uint32 SizeToLock, void** ppbData, uint32 Flags) mut => VT.Lock(ref this, OffsetToLock, SizeToLock, ppbData, Flags);
			public HRESULT Unlock() mut => VT.Unlock(ref this);
			public HRESULT GetDesc(out D3DINDEXBUFFER_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);

			[CRepr]
			public struct VTable : IDirect3DResource9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DIndexBuffer9 self, uint32 OffsetToLock, uint32 SizeToLock, void** ppbData, uint32 Flags) Lock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DIndexBuffer9 self) Unlock;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DIndexBuffer9 self, out D3DINDEXBUFFER_DESC pDesc) GetDesc;
			}
		}
		[CRepr]
		public struct IDirect3DSurface9 : IDirect3DResource9
		{
			public const new Guid IID = .(0x0cfbaf3a, 0x9ff6, 0x429a, 0x99, 0xb3, 0xa2, 0x79, 0x6a, 0xf8, 0xb8, 0x9b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetContainer(in Guid riid, void** ppContainer) mut => VT.GetContainer(ref this, riid, ppContainer);
			public HRESULT GetDesc(out D3DSURFACE_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
			public HRESULT LockRect(out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) mut => VT.LockRect(ref this, out pLockedRect, pRect, Flags);
			public HRESULT UnlockRect() mut => VT.UnlockRect(ref this);
			public HRESULT GetDC(out HDC phdc) mut => VT.GetDC(ref this, out phdc);
			public HRESULT ReleaseDC(HDC hdc) mut => VT.ReleaseDC(ref this, hdc);

			[CRepr]
			public struct VTable : IDirect3DResource9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self, in Guid riid, void** ppContainer) GetContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self, out D3DSURFACE_DESC pDesc) GetDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self, out D3DLOCKED_RECT pLockedRect, in RECT pRect, uint32 Flags) LockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self) UnlockRect;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self, out HDC phdc) GetDC;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSurface9 self, HDC hdc) ReleaseDC;
			}
		}
		[CRepr]
		public struct IDirect3DVolume9 : IUnknown
		{
			public const new Guid IID = .(0x24f416e6, 0x1f67, 0x4aa7, 0xb8, 0x8e, 0xd3, 0x3f, 0x6f, 0x31, 0x28, 0xa1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public HRESULT SetPrivateData(in Guid refguid, void* pData, uint32 SizeOfData, uint32 Flags) mut => VT.SetPrivateData(ref this, refguid, pData, SizeOfData, Flags);
			public HRESULT GetPrivateData(in Guid refguid, void* pData, out uint32 pSizeOfData) mut => VT.GetPrivateData(ref this, refguid, pData, out pSizeOfData);
			public HRESULT FreePrivateData(in Guid refguid) mut => VT.FreePrivateData(ref this, refguid);
			public HRESULT GetContainer(in Guid riid, void** ppContainer) mut => VT.GetContainer(ref this, riid, ppContainer);
			public HRESULT GetDesc(out D3DVOLUME_DESC pDesc) mut => VT.GetDesc(ref this, out pDesc);
			public HRESULT LockBox(out D3DLOCKED_BOX pLockedVolume, in D3DBOX pBox, uint32 Flags) mut => VT.LockBox(ref this, out pLockedVolume, pBox, Flags);
			public HRESULT UnlockBox() mut => VT.UnlockBox(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, in Guid refguid, void* pData, uint32 SizeOfData, uint32 Flags) SetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, in Guid refguid, void* pData, out uint32 pSizeOfData) GetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, in Guid refguid) FreePrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, in Guid riid, void** ppContainer) GetContainer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, out D3DVOLUME_DESC pDesc) GetDesc;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self, out D3DLOCKED_BOX pLockedVolume, in D3DBOX pBox, uint32 Flags) LockBox;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DVolume9 self) UnlockBox;
			}
		}
		[CRepr]
		public struct IDirect3DQuery9 : IUnknown
		{
			public const new Guid IID = .(0xd9771460, 0xa695, 0x4f26, 0xbb, 0xd3, 0x27, 0xb8, 0x40, 0xb5, 0x41, 0xcc);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(out IDirect3DDevice9* ppDevice) mut => VT.GetDevice(ref this, out ppDevice);
			public D3DQUERYTYPE ComGetType() mut => VT.ComGetType(ref this);
			public uint32 GetDataSize() mut => VT.GetDataSize(ref this);
			public HRESULT Issue(uint32 dwIssueFlags) mut => VT.Issue(ref this, dwIssueFlags);
			public HRESULT GetData(void* pData, uint32 dwSize, uint32 dwGetDataFlags) mut => VT.GetData(ref this, pData, dwSize, dwGetDataFlags);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DQuery9 self, out IDirect3DDevice9* ppDevice) GetDevice;
				public new function [CallingConvention(.Stdcall)] D3DQUERYTYPE(ref IDirect3DQuery9 self) ComGetType;
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3DQuery9 self) GetDataSize;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DQuery9 self, uint32 dwIssueFlags) Issue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DQuery9 self, void* pData, uint32 dwSize, uint32 dwGetDataFlags) GetData;
			}
		}
		[CRepr]
		public struct IDirect3D9Ex : IDirect3D9
		{
			public const new Guid IID = .(0x02177241, 0x69fc, 0x400c, 0x8f, 0xf1, 0x93, 0xa4, 0x4d, 0xf6, 0x86, 0x1d);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetAdapterModeCountEx(uint32 Adapter, in D3DDISPLAYMODEFILTER pFilter) mut => VT.GetAdapterModeCountEx(ref this, Adapter, pFilter);
			public HRESULT EnumAdapterModesEx(uint32 Adapter, in D3DDISPLAYMODEFILTER pFilter, uint32 Mode, out D3DDISPLAYMODEEX pMode) mut => VT.EnumAdapterModesEx(ref this, Adapter, pFilter, Mode, out pMode);
			public HRESULT GetAdapterDisplayModeEx(uint32 Adapter, out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) mut => VT.GetAdapterDisplayModeEx(ref this, Adapter, out pMode, out pRotation);
			public HRESULT CreateDeviceEx(uint32 Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, uint32 BehaviorFlags, out D3DPRESENT_PARAMETERS pPresentationParameters, out D3DDISPLAYMODEEX pFullscreenDisplayMode, out IDirect3DDevice9Ex* ppReturnedDeviceInterface) mut => VT.CreateDeviceEx(ref this, Adapter, DeviceType, hFocusWindow, BehaviorFlags, out pPresentationParameters, out pFullscreenDisplayMode, out ppReturnedDeviceInterface);
			public HRESULT GetAdapterLUID(uint32 Adapter, out LUID pLUID) mut => VT.GetAdapterLUID(ref this, Adapter, out pLUID);

			[CRepr]
			public struct VTable : IDirect3D9.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IDirect3D9Ex self, uint32 Adapter, in D3DDISPLAYMODEFILTER pFilter) GetAdapterModeCountEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9Ex self, uint32 Adapter, in D3DDISPLAYMODEFILTER pFilter, uint32 Mode, out D3DDISPLAYMODEEX pMode) EnumAdapterModesEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9Ex self, uint32 Adapter, out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) GetAdapterDisplayModeEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9Ex self, uint32 Adapter, D3DDEVTYPE DeviceType, HWND hFocusWindow, uint32 BehaviorFlags, out D3DPRESENT_PARAMETERS pPresentationParameters, out D3DDISPLAYMODEEX pFullscreenDisplayMode, out IDirect3DDevice9Ex* ppReturnedDeviceInterface) CreateDeviceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3D9Ex self, uint32 Adapter, out LUID pLUID) GetAdapterLUID;
			}
		}
		[CRepr]
		public struct IDirect3DDevice9Ex : IDirect3DDevice9
		{
			public const new Guid IID = .(0xb18b10ce, 0x2649, 0x405a, 0x87, 0x0f, 0x95, 0xf7, 0x77, 0xd4, 0x31, 0x3a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetConvolutionMonoKernel(uint32 width, uint32 height, out float rows, out float columns) mut => VT.SetConvolutionMonoKernel(ref this, width, height, out rows, out columns);
			public HRESULT ComposeRects(ref IDirect3DSurface9 pSrc, ref IDirect3DSurface9 pDst, ref IDirect3DVertexBuffer9 pSrcRectDescs, uint32 NumRects, ref IDirect3DVertexBuffer9 pDstRectDescs, D3DCOMPOSERECTSOP Operation, int32 Xoffset, int32 Yoffset) mut => VT.ComposeRects(ref this, ref pSrc, ref pDst, ref pSrcRectDescs, NumRects, ref pDstRectDescs, Operation, Xoffset, Yoffset);
			public HRESULT PresentEx(in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion, uint32 dwFlags) mut => VT.PresentEx(ref this, pSourceRect, pDestRect, hDestWindowOverride, pDirtyRegion, dwFlags);
			public HRESULT GetGPUThreadPriority(out int32 pPriority) mut => VT.GetGPUThreadPriority(ref this, out pPriority);
			public HRESULT SetGPUThreadPriority(int32 Priority) mut => VT.SetGPUThreadPriority(ref this, Priority);
			public HRESULT WaitForVBlank(uint32 iSwapChain) mut => VT.WaitForVBlank(ref this, iSwapChain);
			public HRESULT CheckResourceResidency(out IDirect3DResource9* pResourceArray, uint32 NumResources) mut => VT.CheckResourceResidency(ref this, out pResourceArray, NumResources);
			public HRESULT SetMaximumFrameLatency(uint32 MaxLatency) mut => VT.SetMaximumFrameLatency(ref this, MaxLatency);
			public HRESULT GetMaximumFrameLatency(out uint32 pMaxLatency) mut => VT.GetMaximumFrameLatency(ref this, out pMaxLatency);
			public HRESULT CheckDeviceState(HWND hDestinationWindow) mut => VT.CheckDeviceState(ref this, hDestinationWindow);
			public HRESULT CreateRenderTargetEx(uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Lockable, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) mut => VT.CreateRenderTargetEx(ref this, Width, Height, Format, MultiSample, MultisampleQuality, Lockable, out ppSurface, out pSharedHandle, Usage);
			public HRESULT CreateOffscreenPlainSurfaceEx(uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) mut => VT.CreateOffscreenPlainSurfaceEx(ref this, Width, Height, Format, Pool, out ppSurface, out pSharedHandle, Usage);
			public HRESULT CreateDepthStencilSurfaceEx(uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Discard, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) mut => VT.CreateDepthStencilSurfaceEx(ref this, Width, Height, Format, MultiSample, MultisampleQuality, Discard, out ppSurface, out pSharedHandle, Usage);
			public HRESULT ResetEx(out D3DPRESENT_PARAMETERS pPresentationParameters, out D3DDISPLAYMODEEX pFullscreenDisplayMode) mut => VT.ResetEx(ref this, out pPresentationParameters, out pFullscreenDisplayMode);
			public HRESULT GetDisplayModeEx(uint32 iSwapChain, out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) mut => VT.GetDisplayModeEx(ref this, iSwapChain, out pMode, out pRotation);

			[CRepr]
			public struct VTable : IDirect3DDevice9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 width, uint32 height, out float rows, out float columns) SetConvolutionMonoKernel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, ref IDirect3DSurface9 pSrc, ref IDirect3DSurface9 pDst, ref IDirect3DVertexBuffer9 pSrcRectDescs, uint32 NumRects, ref IDirect3DVertexBuffer9 pDstRectDescs, D3DCOMPOSERECTSOP Operation, int32 Xoffset, int32 Yoffset) ComposeRects;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, in RECT pSourceRect, in RECT pDestRect, HWND hDestWindowOverride, in RGNDATA pDirtyRegion, uint32 dwFlags) PresentEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, out int32 pPriority) GetGPUThreadPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, int32 Priority) SetGPUThreadPriority;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 iSwapChain) WaitForVBlank;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, out IDirect3DResource9* pResourceArray, uint32 NumResources) CheckResourceResidency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 MaxLatency) SetMaximumFrameLatency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, out uint32 pMaxLatency) GetMaximumFrameLatency;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, HWND hDestinationWindow) CheckDeviceState;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Lockable, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) CreateRenderTargetEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DPOOL Pool, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) CreateOffscreenPlainSurfaceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 Width, uint32 Height, D3DFORMAT Format, D3DMULTISAMPLE_TYPE MultiSample, uint32 MultisampleQuality, BOOL Discard, out IDirect3DSurface9* ppSurface, out HANDLE pSharedHandle, uint32 Usage) CreateDepthStencilSurfaceEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, out D3DPRESENT_PARAMETERS pPresentationParameters, out D3DDISPLAYMODEEX pFullscreenDisplayMode) ResetEx;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DDevice9Ex self, uint32 iSwapChain, out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) GetDisplayModeEx;
			}
		}
		[CRepr]
		public struct IDirect3DSwapChain9Ex : IDirect3DSwapChain9
		{
			public const new Guid IID = .(0x91886caf, 0x1c3d, 0x4d2e, 0xa0, 0xab, 0x3e, 0x4c, 0x7d, 0x8d, 0x33, 0x03);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetLastPresentCount(out uint32 pLastPresentCount) mut => VT.GetLastPresentCount(ref this, out pLastPresentCount);
			public HRESULT GetPresentStats(out D3DPRESENTSTATS pPresentationStatistics) mut => VT.GetPresentStats(ref this, out pPresentationStatistics);
			public HRESULT GetDisplayModeEx(out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) mut => VT.GetDisplayModeEx(ref this, out pMode, out pRotation);

			[CRepr]
			public struct VTable : IDirect3DSwapChain9.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9Ex self, out uint32 pLastPresentCount) GetLastPresentCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9Ex self, out D3DPRESENTSTATS pPresentationStatistics) GetPresentStats;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDirect3DSwapChain9Ex self, out D3DDISPLAYMODEEX pMode, out D3DDISPLAYROTATION pRotation) GetDisplayModeEx;
			}
		}
		
		// --- Functions ---
		
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern IDirect3D9* Direct3DCreate9(uint32 SDKVersion);
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 D3DPERF_BeginEvent(uint32 col, PWSTR wszName);
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern int32 D3DPERF_EndEvent();
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D3DPERF_SetMarker(uint32 col, PWSTR wszName);
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D3DPERF_SetRegion(uint32 col, PWSTR wszName);
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern BOOL D3DPERF_QueryRepeatFrame();
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern void D3DPERF_SetOptions(uint32 dwOptions);
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern uint32 D3DPERF_GetStatus();
		[Import("d3d9.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT Direct3DCreate9Ex(uint32 SDKVersion, out IDirect3D9Ex* param1);
	}
}
