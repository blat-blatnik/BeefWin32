using System;

// namespace Data.Xml.XmlLite
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const Guid _IID_IXmlReader = .(0x7279fc81, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		public const Guid _IID_IXmlWriter = .(0x7279fc88, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		public const Guid _IID_IXmlResolver = .(0x7279fc82, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum XmlNodeType : int32
		{
			XmlNodeType_None = 0,
			XmlNodeType_Element = 1,
			XmlNodeType_Attribute = 2,
			XmlNodeType_Text = 3,
			XmlNodeType_CDATA = 4,
			XmlNodeType_ProcessingInstruction = 7,
			XmlNodeType_Comment = 8,
			XmlNodeType_DocumentType = 10,
			XmlNodeType_Whitespace = 13,
			XmlNodeType_EndElement = 15,
			XmlNodeType_XmlDeclaration = 17,
			_XmlNodeType_Last = 17,
		}
		[AllowDuplicates]
		public enum XmlConformanceLevel : int32
		{
			XmlConformanceLevel_Auto = 0,
			XmlConformanceLevel_Fragment = 1,
			XmlConformanceLevel_Document = 2,
			_XmlConformanceLevel_Last = 2,
		}
		[AllowDuplicates]
		public enum DtdProcessing : int32
		{
			DtdProcessing_Prohibit = 0,
			DtdProcessing_Parse = 1,
			_DtdProcessing_Last = 1,
		}
		public enum XmlReadState : int32
		{
			Initial = 0,
			Interactive = 1,
			Error = 2,
			EndOfFile = 3,
			Closed = 4,
		}
		[AllowDuplicates]
		public enum XmlReaderProperty : int32
		{
			XmlReaderProperty_MultiLanguage = 0,
			XmlReaderProperty_ConformanceLevel = 1,
			XmlReaderProperty_RandomAccess = 2,
			XmlReaderProperty_XmlResolver = 3,
			XmlReaderProperty_DtdProcessing = 4,
			XmlReaderProperty_ReadState = 5,
			XmlReaderProperty_MaxElementDepth = 6,
			XmlReaderProperty_MaxEntityExpansion = 7,
			_XmlReaderProperty_Last = 7,
		}
		public enum XmlError : int32
		{
			MX_E_MX = -1072894464,
			MX_E_INPUTEND = -1072894463,
			MX_E_ENCODING = -1072894462,
			MX_E_ENCODINGSWITCH = -1072894461,
			MX_E_ENCODINGSIGNATURE = -1072894460,
			WC_E_WC = -1072894432,
			WC_E_WHITESPACE = -1072894431,
			WC_E_SEMICOLON = -1072894430,
			WC_E_GREATERTHAN = -1072894429,
			WC_E_QUOTE = -1072894428,
			WC_E_EQUAL = -1072894427,
			WC_E_LESSTHAN = -1072894426,
			WC_E_HEXDIGIT = -1072894425,
			WC_E_DIGIT = -1072894424,
			WC_E_LEFTBRACKET = -1072894423,
			WC_E_LEFTPAREN = -1072894422,
			WC_E_XMLCHARACTER = -1072894421,
			WC_E_NAMECHARACTER = -1072894420,
			WC_E_SYNTAX = -1072894419,
			WC_E_CDSECT = -1072894418,
			WC_E_COMMENT = -1072894417,
			WC_E_CONDSECT = -1072894416,
			WC_E_DECLATTLIST = -1072894415,
			WC_E_DECLDOCTYPE = -1072894414,
			WC_E_DECLELEMENT = -1072894413,
			WC_E_DECLENTITY = -1072894412,
			WC_E_DECLNOTATION = -1072894411,
			WC_E_NDATA = -1072894410,
			WC_E_PUBLIC = -1072894409,
			WC_E_SYSTEM = -1072894408,
			WC_E_NAME = -1072894407,
			WC_E_ROOTELEMENT = -1072894406,
			WC_E_ELEMENTMATCH = -1072894405,
			WC_E_UNIQUEATTRIBUTE = -1072894404,
			WC_E_TEXTXMLDECL = -1072894403,
			WC_E_LEADINGXML = -1072894402,
			WC_E_TEXTDECL = -1072894401,
			WC_E_XMLDECL = -1072894400,
			WC_E_ENCNAME = -1072894399,
			WC_E_PUBLICID = -1072894398,
			WC_E_PESINTERNALSUBSET = -1072894397,
			WC_E_PESBETWEENDECLS = -1072894396,
			WC_E_NORECURSION = -1072894395,
			WC_E_ENTITYCONTENT = -1072894394,
			WC_E_UNDECLAREDENTITY = -1072894393,
			WC_E_PARSEDENTITY = -1072894392,
			WC_E_NOEXTERNALENTITYREF = -1072894391,
			WC_E_PI = -1072894390,
			WC_E_SYSTEMID = -1072894389,
			WC_E_QUESTIONMARK = -1072894388,
			WC_E_CDSECTEND = -1072894387,
			WC_E_MOREDATA = -1072894386,
			WC_E_DTDPROHIBITED = -1072894385,
			WC_E_INVALIDXMLSPACE = -1072894384,
			NC_E_NC = -1072894368,
			NC_E_QNAMECHARACTER = -1072894367,
			NC_E_QNAMECOLON = -1072894366,
			NC_E_NAMECOLON = -1072894365,
			NC_E_DECLAREDPREFIX = -1072894364,
			NC_E_UNDECLAREDPREFIX = -1072894363,
			NC_E_EMPTYURI = -1072894362,
			NC_E_XMLPREFIXRESERVED = -1072894361,
			NC_E_XMLNSPREFIXRESERVED = -1072894360,
			NC_E_XMLURIRESERVED = -1072894359,
			NC_E_XMLNSURIRESERVED = -1072894358,
			SC_E_SC = -1072894336,
			SC_E_MAXELEMENTDEPTH = -1072894335,
			SC_E_MAXENTITYEXPANSION = -1072894334,
			WR_E_WR = -1072894208,
			WR_E_NONWHITESPACE = -1072894207,
			WR_E_NSPREFIXDECLARED = -1072894206,
			WR_E_NSPREFIXWITHEMPTYNSURI = -1072894205,
			WR_E_DUPLICATEATTRIBUTE = -1072894204,
			WR_E_XMLNSPREFIXDECLARATION = -1072894203,
			WR_E_XMLPREFIXDECLARATION = -1072894202,
			WR_E_XMLURIDECLARATION = -1072894201,
			WR_E_XMLNSURIDECLARATION = -1072894200,
			WR_E_NAMESPACEUNDECLARED = -1072894199,
			WR_E_INVALIDXMLSPACE = -1072894198,
			WR_E_INVALIDACTION = -1072894197,
			WR_E_INVALIDSURROGATEPAIR = -1072894196,
			XML_E_INVALID_DECIMAL = -1072898019,
			XML_E_INVALID_HEXIDECIMAL = -1072898018,
			XML_E_INVALID_UNICODE = -1072898017,
			XML_E_INVALIDENCODING = -1072897938,
		}
		[AllowDuplicates]
		public enum XmlStandalone : int32
		{
			XmlStandalone_Omit = 0,
			XmlStandalone_Yes = 1,
			XmlStandalone_No = 2,
			_XmlStandalone_Last = 2,
		}
		[AllowDuplicates]
		public enum XmlWriterProperty : int32
		{
			XmlWriterProperty_MultiLanguage = 0,
			XmlWriterProperty_Indent = 1,
			XmlWriterProperty_ByteOrderMark = 2,
			XmlWriterProperty_OmitXmlDeclaration = 3,
			XmlWriterProperty_ConformanceLevel = 4,
			XmlWriterProperty_CompactEmptyElement = 5,
			_XmlWriterProperty_Last = 5,
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IXmlReader : IUnknown
		{
			public const new Guid IID = .(0x7279fc81, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInput(IUnknown* pInput) mut
			{
				return VT.SetInput(&this, pInput);
			}
			public HRESULT GetProperty(uint32 nProperty, int* ppValue) mut
			{
				return VT.GetProperty(&this, nProperty, ppValue);
			}
			public HRESULT SetProperty(uint32 nProperty, int pValue) mut
			{
				return VT.SetProperty(&this, nProperty, pValue);
			}
			public HRESULT Read(XmlNodeType* pNodeType) mut
			{
				return VT.Read(&this, pNodeType);
			}
			public HRESULT GetNodeType(XmlNodeType* pNodeType) mut
			{
				return VT.GetNodeType(&this, pNodeType);
			}
			public HRESULT MoveToFirstAttribute() mut
			{
				return VT.MoveToFirstAttribute(&this);
			}
			public HRESULT MoveToNextAttribute() mut
			{
				return VT.MoveToNextAttribute(&this);
			}
			public HRESULT MoveToAttributeByName(PWSTR pwszLocalName, PWSTR pwszNamespaceUri) mut
			{
				return VT.MoveToAttributeByName(&this, pwszLocalName, pwszNamespaceUri);
			}
			public HRESULT MoveToElement() mut
			{
				return VT.MoveToElement(&this);
			}
			public HRESULT GetQualifiedName(PWSTR* ppwszQualifiedName, uint32* pcwchQualifiedName) mut
			{
				return VT.GetQualifiedName(&this, ppwszQualifiedName, pcwchQualifiedName);
			}
			public HRESULT GetNamespaceUri(PWSTR* ppwszNamespaceUri, uint32* pcwchNamespaceUri) mut
			{
				return VT.GetNamespaceUri(&this, ppwszNamespaceUri, pcwchNamespaceUri);
			}
			public HRESULT GetLocalName(PWSTR* ppwszLocalName, uint32* pcwchLocalName) mut
			{
				return VT.GetLocalName(&this, ppwszLocalName, pcwchLocalName);
			}
			public HRESULT GetPrefix(PWSTR* ppwszPrefix, uint32* pcwchPrefix) mut
			{
				return VT.GetPrefix(&this, ppwszPrefix, pcwchPrefix);
			}
			public HRESULT GetValue(PWSTR* ppwszValue, uint32* pcwchValue) mut
			{
				return VT.GetValue(&this, ppwszValue, pcwchValue);
			}
			public HRESULT ReadValueChunk(char16* pwchBuffer, uint32 cwchChunkSize, uint32* pcwchRead) mut
			{
				return VT.ReadValueChunk(&this, pwchBuffer, cwchChunkSize, pcwchRead);
			}
			public HRESULT GetBaseUri(PWSTR* ppwszBaseUri, uint32* pcwchBaseUri) mut
			{
				return VT.GetBaseUri(&this, ppwszBaseUri, pcwchBaseUri);
			}
			public BOOL IsDefault() mut
			{
				return VT.IsDefault(&this);
			}
			public BOOL IsEmptyElement() mut
			{
				return VT.IsEmptyElement(&this);
			}
			public HRESULT GetLineNumber(uint32* pnLineNumber) mut
			{
				return VT.GetLineNumber(&this, pnLineNumber);
			}
			public HRESULT GetLinePosition(uint32* pnLinePosition) mut
			{
				return VT.GetLinePosition(&this, pnLinePosition);
			}
			public HRESULT GetAttributeCount(uint32* pnAttributeCount) mut
			{
				return VT.GetAttributeCount(&this, pnAttributeCount);
			}
			public HRESULT GetDepth(uint32* pnDepth) mut
			{
				return VT.GetDepth(&this, pnDepth);
			}
			public BOOL IsEOF() mut
			{
				return VT.IsEOF(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXmlReader *self, IUnknown* pInput) SetInput;
				public new function HRESULT(IXmlReader *self, uint32 nProperty, int* ppValue) GetProperty;
				public new function HRESULT(IXmlReader *self, uint32 nProperty, int pValue) SetProperty;
				public new function HRESULT(IXmlReader *self, XmlNodeType* pNodeType) Read;
				public new function HRESULT(IXmlReader *self, XmlNodeType* pNodeType) GetNodeType;
				public new function HRESULT(IXmlReader *self) MoveToFirstAttribute;
				public new function HRESULT(IXmlReader *self) MoveToNextAttribute;
				public new function HRESULT(IXmlReader *self, PWSTR pwszLocalName, PWSTR pwszNamespaceUri) MoveToAttributeByName;
				public new function HRESULT(IXmlReader *self) MoveToElement;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszQualifiedName, uint32* pcwchQualifiedName) GetQualifiedName;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszNamespaceUri, uint32* pcwchNamespaceUri) GetNamespaceUri;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszLocalName, uint32* pcwchLocalName) GetLocalName;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszPrefix, uint32* pcwchPrefix) GetPrefix;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszValue, uint32* pcwchValue) GetValue;
				public new function HRESULT(IXmlReader *self, char16* pwchBuffer, uint32 cwchChunkSize, uint32* pcwchRead) ReadValueChunk;
				public new function HRESULT(IXmlReader *self, PWSTR* ppwszBaseUri, uint32* pcwchBaseUri) GetBaseUri;
				public new function BOOL(IXmlReader *self) IsDefault;
				public new function BOOL(IXmlReader *self) IsEmptyElement;
				public new function HRESULT(IXmlReader *self, uint32* pnLineNumber) GetLineNumber;
				public new function HRESULT(IXmlReader *self, uint32* pnLinePosition) GetLinePosition;
				public new function HRESULT(IXmlReader *self, uint32* pnAttributeCount) GetAttributeCount;
				public new function HRESULT(IXmlReader *self, uint32* pnDepth) GetDepth;
				public new function BOOL(IXmlReader *self) IsEOF;
			}
		}
		[CRepr]
		public struct IXmlResolver : IUnknown
		{
			public const new Guid IID = .(0x7279fc82, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT ResolveUri(PWSTR pwszBaseUri, PWSTR pwszPublicIdentifier, PWSTR pwszSystemIdentifier, IUnknown** ppResolvedInput) mut
			{
				return VT.ResolveUri(&this, pwszBaseUri, pwszPublicIdentifier, pwszSystemIdentifier, ppResolvedInput);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXmlResolver *self, PWSTR pwszBaseUri, PWSTR pwszPublicIdentifier, PWSTR pwszSystemIdentifier, IUnknown** ppResolvedInput) ResolveUri;
			}
		}
		[CRepr]
		public struct IXmlWriter : IUnknown
		{
			public const new Guid IID = .(0x7279fc88, 0x709d, 0x4095, 0xb6, 0x3d, 0x69, 0xfe, 0x4b, 0x0d, 0x90, 0x30);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutput(IUnknown* pOutput) mut
			{
				return VT.SetOutput(&this, pOutput);
			}
			public HRESULT GetProperty(uint32 nProperty, int* ppValue) mut
			{
				return VT.GetProperty(&this, nProperty, ppValue);
			}
			public HRESULT SetProperty(uint32 nProperty, int pValue) mut
			{
				return VT.SetProperty(&this, nProperty, pValue);
			}
			public HRESULT WriteAttributes(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteAttributes(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteAttributeString(PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri, PWSTR pwszValue) mut
			{
				return VT.WriteAttributeString(&this, pwszPrefix, pwszLocalName, pwszNamespaceUri, pwszValue);
			}
			public HRESULT WriteCData(PWSTR pwszText) mut
			{
				return VT.WriteCData(&this, pwszText);
			}
			public HRESULT WriteCharEntity(char16 wch) mut
			{
				return VT.WriteCharEntity(&this, wch);
			}
			public HRESULT WriteChars(char16* pwch, uint32 cwch) mut
			{
				return VT.WriteChars(&this, pwch, cwch);
			}
			public HRESULT WriteComment(PWSTR pwszComment) mut
			{
				return VT.WriteComment(&this, pwszComment);
			}
			public HRESULT WriteDocType(PWSTR pwszName, PWSTR pwszPublicId, PWSTR pwszSystemId, PWSTR pwszSubset) mut
			{
				return VT.WriteDocType(&this, pwszName, pwszPublicId, pwszSystemId, pwszSubset);
			}
			public HRESULT WriteElementString(PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri, PWSTR pwszValue) mut
			{
				return VT.WriteElementString(&this, pwszPrefix, pwszLocalName, pwszNamespaceUri, pwszValue);
			}
			public HRESULT WriteEndDocument() mut
			{
				return VT.WriteEndDocument(&this);
			}
			public HRESULT WriteEndElement() mut
			{
				return VT.WriteEndElement(&this);
			}
			public HRESULT WriteEntityRef(PWSTR pwszName) mut
			{
				return VT.WriteEntityRef(&this, pwszName);
			}
			public HRESULT WriteFullEndElement() mut
			{
				return VT.WriteFullEndElement(&this);
			}
			public HRESULT WriteName(PWSTR pwszName) mut
			{
				return VT.WriteName(&this, pwszName);
			}
			public HRESULT WriteNmToken(PWSTR pwszNmToken) mut
			{
				return VT.WriteNmToken(&this, pwszNmToken);
			}
			public HRESULT WriteNode(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteNode(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteNodeShallow(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteNodeShallow(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteProcessingInstruction(PWSTR pwszName, PWSTR pwszText) mut
			{
				return VT.WriteProcessingInstruction(&this, pwszName, pwszText);
			}
			public HRESULT WriteQualifiedName(PWSTR pwszLocalName, PWSTR pwszNamespaceUri) mut
			{
				return VT.WriteQualifiedName(&this, pwszLocalName, pwszNamespaceUri);
			}
			public HRESULT WriteRaw(PWSTR pwszData) mut
			{
				return VT.WriteRaw(&this, pwszData);
			}
			public HRESULT WriteRawChars(char16* pwch, uint32 cwch) mut
			{
				return VT.WriteRawChars(&this, pwch, cwch);
			}
			public HRESULT WriteStartDocument(XmlStandalone standalone) mut
			{
				return VT.WriteStartDocument(&this, standalone);
			}
			public HRESULT WriteStartElement(PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri) mut
			{
				return VT.WriteStartElement(&this, pwszPrefix, pwszLocalName, pwszNamespaceUri);
			}
			public HRESULT WriteString(PWSTR pwszText) mut
			{
				return VT.WriteString(&this, pwszText);
			}
			public HRESULT WriteSurrogateCharEntity(char16 wchLow, char16 wchHigh) mut
			{
				return VT.WriteSurrogateCharEntity(&this, wchLow, wchHigh);
			}
			public HRESULT WriteWhitespace(PWSTR pwszWhitespace) mut
			{
				return VT.WriteWhitespace(&this, pwszWhitespace);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXmlWriter *self, IUnknown* pOutput) SetOutput;
				public new function HRESULT(IXmlWriter *self, uint32 nProperty, int* ppValue) GetProperty;
				public new function HRESULT(IXmlWriter *self, uint32 nProperty, int pValue) SetProperty;
				public new function HRESULT(IXmlWriter *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteAttributes;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri, PWSTR pwszValue) WriteAttributeString;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszText) WriteCData;
				public new function HRESULT(IXmlWriter *self, char16 wch) WriteCharEntity;
				public new function HRESULT(IXmlWriter *self, char16* pwch, uint32 cwch) WriteChars;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszComment) WriteComment;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszName, PWSTR pwszPublicId, PWSTR pwszSystemId, PWSTR pwszSubset) WriteDocType;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri, PWSTR pwszValue) WriteElementString;
				public new function HRESULT(IXmlWriter *self) WriteEndDocument;
				public new function HRESULT(IXmlWriter *self) WriteEndElement;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszName) WriteEntityRef;
				public new function HRESULT(IXmlWriter *self) WriteFullEndElement;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszName) WriteName;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszNmToken) WriteNmToken;
				public new function HRESULT(IXmlWriter *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteNode;
				public new function HRESULT(IXmlWriter *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteNodeShallow;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszName, PWSTR pwszText) WriteProcessingInstruction;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszLocalName, PWSTR pwszNamespaceUri) WriteQualifiedName;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszData) WriteRaw;
				public new function HRESULT(IXmlWriter *self, char16* pwch, uint32 cwch) WriteRawChars;
				public new function HRESULT(IXmlWriter *self, XmlStandalone standalone) WriteStartDocument;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszPrefix, PWSTR pwszLocalName, PWSTR pwszNamespaceUri) WriteStartElement;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszText) WriteString;
				public new function HRESULT(IXmlWriter *self, char16 wchLow, char16 wchHigh) WriteSurrogateCharEntity;
				public new function HRESULT(IXmlWriter *self, PWSTR pwszWhitespace) WriteWhitespace;
				public new function HRESULT(IXmlWriter *self) Flush;
			}
		}
		[CRepr]
		public struct IXmlWriterLite : IUnknown
		{
			public const new Guid IID = .(0x862494c6, 0x1310, 0x4aad, 0xb3, 0xcd, 0x2d, 0xbe, 0xeb, 0xf6, 0x70, 0xd3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetOutput(IUnknown* pOutput) mut
			{
				return VT.SetOutput(&this, pOutput);
			}
			public HRESULT GetProperty(uint32 nProperty, int* ppValue) mut
			{
				return VT.GetProperty(&this, nProperty, ppValue);
			}
			public HRESULT SetProperty(uint32 nProperty, int pValue) mut
			{
				return VT.SetProperty(&this, nProperty, pValue);
			}
			public HRESULT WriteAttributes(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteAttributes(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteAttributeString(char16* pwszQName, uint32 cwszQName, char16* pwszValue, uint32 cwszValue) mut
			{
				return VT.WriteAttributeString(&this, pwszQName, cwszQName, pwszValue, cwszValue);
			}
			public HRESULT WriteCData(PWSTR pwszText) mut
			{
				return VT.WriteCData(&this, pwszText);
			}
			public HRESULT WriteCharEntity(char16 wch) mut
			{
				return VT.WriteCharEntity(&this, wch);
			}
			public HRESULT WriteChars(char16* pwch, uint32 cwch) mut
			{
				return VT.WriteChars(&this, pwch, cwch);
			}
			public HRESULT WriteComment(PWSTR pwszComment) mut
			{
				return VT.WriteComment(&this, pwszComment);
			}
			public HRESULT WriteDocType(PWSTR pwszName, PWSTR pwszPublicId, PWSTR pwszSystemId, PWSTR pwszSubset) mut
			{
				return VT.WriteDocType(&this, pwszName, pwszPublicId, pwszSystemId, pwszSubset);
			}
			public HRESULT WriteElementString(char16* pwszQName, uint32 cwszQName, PWSTR pwszValue) mut
			{
				return VT.WriteElementString(&this, pwszQName, cwszQName, pwszValue);
			}
			public HRESULT WriteEndDocument() mut
			{
				return VT.WriteEndDocument(&this);
			}
			public HRESULT WriteEndElement(char16* pwszQName, uint32 cwszQName) mut
			{
				return VT.WriteEndElement(&this, pwszQName, cwszQName);
			}
			public HRESULT WriteEntityRef(PWSTR pwszName) mut
			{
				return VT.WriteEntityRef(&this, pwszName);
			}
			public HRESULT WriteFullEndElement(char16* pwszQName, uint32 cwszQName) mut
			{
				return VT.WriteFullEndElement(&this, pwszQName, cwszQName);
			}
			public HRESULT WriteName(PWSTR pwszName) mut
			{
				return VT.WriteName(&this, pwszName);
			}
			public HRESULT WriteNmToken(PWSTR pwszNmToken) mut
			{
				return VT.WriteNmToken(&this, pwszNmToken);
			}
			public HRESULT WriteNode(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteNode(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteNodeShallow(IXmlReader* pReader, BOOL fWriteDefaultAttributes) mut
			{
				return VT.WriteNodeShallow(&this, pReader, fWriteDefaultAttributes);
			}
			public HRESULT WriteProcessingInstruction(PWSTR pwszName, PWSTR pwszText) mut
			{
				return VT.WriteProcessingInstruction(&this, pwszName, pwszText);
			}
			public HRESULT WriteRaw(PWSTR pwszData) mut
			{
				return VT.WriteRaw(&this, pwszData);
			}
			public HRESULT WriteRawChars(char16* pwch, uint32 cwch) mut
			{
				return VT.WriteRawChars(&this, pwch, cwch);
			}
			public HRESULT WriteStartDocument(XmlStandalone standalone) mut
			{
				return VT.WriteStartDocument(&this, standalone);
			}
			public HRESULT WriteStartElement(char16* pwszQName, uint32 cwszQName) mut
			{
				return VT.WriteStartElement(&this, pwszQName, cwszQName);
			}
			public HRESULT WriteString(PWSTR pwszText) mut
			{
				return VT.WriteString(&this, pwszText);
			}
			public HRESULT WriteSurrogateCharEntity(char16 wchLow, char16 wchHigh) mut
			{
				return VT.WriteSurrogateCharEntity(&this, wchLow, wchHigh);
			}
			public HRESULT WriteWhitespace(PWSTR pwszWhitespace) mut
			{
				return VT.WriteWhitespace(&this, pwszWhitespace);
			}
			public HRESULT Flush() mut
			{
				return VT.Flush(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IXmlWriterLite *self, IUnknown* pOutput) SetOutput;
				public new function HRESULT(IXmlWriterLite *self, uint32 nProperty, int* ppValue) GetProperty;
				public new function HRESULT(IXmlWriterLite *self, uint32 nProperty, int pValue) SetProperty;
				public new function HRESULT(IXmlWriterLite *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteAttributes;
				public new function HRESULT(IXmlWriterLite *self, char16* pwszQName, uint32 cwszQName, char16* pwszValue, uint32 cwszValue) WriteAttributeString;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszText) WriteCData;
				public new function HRESULT(IXmlWriterLite *self, char16 wch) WriteCharEntity;
				public new function HRESULT(IXmlWriterLite *self, char16* pwch, uint32 cwch) WriteChars;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszComment) WriteComment;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszName, PWSTR pwszPublicId, PWSTR pwszSystemId, PWSTR pwszSubset) WriteDocType;
				public new function HRESULT(IXmlWriterLite *self, char16* pwszQName, uint32 cwszQName, PWSTR pwszValue) WriteElementString;
				public new function HRESULT(IXmlWriterLite *self) WriteEndDocument;
				public new function HRESULT(IXmlWriterLite *self, char16* pwszQName, uint32 cwszQName) WriteEndElement;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszName) WriteEntityRef;
				public new function HRESULT(IXmlWriterLite *self, char16* pwszQName, uint32 cwszQName) WriteFullEndElement;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszName) WriteName;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszNmToken) WriteNmToken;
				public new function HRESULT(IXmlWriterLite *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteNode;
				public new function HRESULT(IXmlWriterLite *self, IXmlReader* pReader, BOOL fWriteDefaultAttributes) WriteNodeShallow;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszName, PWSTR pwszText) WriteProcessingInstruction;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszData) WriteRaw;
				public new function HRESULT(IXmlWriterLite *self, char16* pwch, uint32 cwch) WriteRawChars;
				public new function HRESULT(IXmlWriterLite *self, XmlStandalone standalone) WriteStartDocument;
				public new function HRESULT(IXmlWriterLite *self, char16* pwszQName, uint32 cwszQName) WriteStartElement;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszText) WriteString;
				public new function HRESULT(IXmlWriterLite *self, char16 wchLow, char16 wchHigh) WriteSurrogateCharEntity;
				public new function HRESULT(IXmlWriterLite *self, PWSTR pwszWhitespace) WriteWhitespace;
				public new function HRESULT(IXmlWriterLite *self) Flush;
			}
		}
		
		// --- Functions ---
		
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlReader(Guid* riid, void** ppvObject, IMalloc* pMalloc);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlReaderInputWithEncodingCodePage(IUnknown* pInputStream, IMalloc* pMalloc, uint32 nEncodingCodePage, BOOL fEncodingHint, PWSTR pwszBaseUri, IUnknown** ppInput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlReaderInputWithEncodingName(IUnknown* pInputStream, IMalloc* pMalloc, PWSTR pwszEncodingName, BOOL fEncodingHint, PWSTR pwszBaseUri, IUnknown** ppInput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlWriter(Guid* riid, void** ppvObject, IMalloc* pMalloc);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlWriterOutputWithEncodingCodePage(IUnknown* pOutputStream, IMalloc* pMalloc, uint32 nEncodingCodePage, IUnknown** ppOutput);
		[Import("xmllite.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateXmlWriterOutputWithEncodingName(IUnknown* pOutputStream, IMalloc* pMalloc, PWSTR pwszEncodingName, IUnknown** ppOutput);
		
	}
}
