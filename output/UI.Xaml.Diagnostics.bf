using System;

// namespace UI.Xaml.Diagnostics
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const HRESULT E_UNKNOWNTYPE = -2144665560;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum VisualMutationType : int32
		{
			Add = 0,
			Remove = 1,
		}
		[AllowDuplicates]
		public enum BaseValueSource : int32
		{
			BaseValueSourceUnknown = 0,
			BaseValueSourceDefault = 1,
			BaseValueSourceBuiltInStyle = 2,
			BaseValueSourceStyle = 3,
			BaseValueSourceLocal = 4,
			Inherited = 5,
			DefaultStyleTrigger = 6,
			TemplateTrigger = 7,
			StyleTrigger = 8,
			ImplicitStyleReference = 9,
			ParentTemplate = 10,
			ParentTemplateTrigger = 11,
			Animation = 12,
			Coercion = 13,
			BaseValueSourceVisualState = 14,
		}
		[AllowDuplicates]
		public enum MetadataBit : int32
		{
			None = 0,
			IsValueHandle = 1,
			IsPropertyReadOnly = 2,
			IsValueCollection = 4,
			IsValueCollectionReadOnly = 8,
			IsValueBindingExpression = 16,
			IsValueNull = 32,
			IsValueHandleAndEvaluatedValue = 64,
		}
		[AllowDuplicates]
		public enum RenderTargetBitmapOptions : int32
		{
			RenderTarget = 0,
			RenderTargetAndChildren = 1,
		}
		[AllowDuplicates]
		public enum ResourceType : int32
		{
			ResourceTypeStatic = 0,
			ResourceTypeTheme = 1,
		}
		[AllowDuplicates]
		public enum VisualElementState : int32
		{
			ErrorResolved = 0,
			ErrorResourceNotFound = 1,
			ErrorInvalidResource = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct SourceInfo
		{
			public BSTR FileName;
			public uint32 LineNumber;
			public uint32 ColumnNumber;
			public uint32 CharPosition;
			public BSTR Hash;
		}
		[CRepr]
		public struct ParentChildRelation
		{
			public uint64 Parent;
			public uint64 Child;
			public uint32 ChildIndex;
		}
		[CRepr]
		public struct VisualElement
		{
			public uint64 Handle;
			public SourceInfo SrcInfo;
			public BSTR Type;
			public BSTR Name;
			public uint32 NumChildren;
		}
		[CRepr]
		public struct PropertyChainSource
		{
			public uint64 Handle;
			public BSTR TargetType;
			public BSTR Name;
			public BaseValueSource Source;
			public SourceInfo SrcInfo;
		}
		[CRepr]
		public struct PropertyChainValue
		{
			public uint32 Index;
			public BSTR Type;
			public BSTR DeclaringType;
			public BSTR ValueType;
			public BSTR ItemType;
			public BSTR Value;
			public BOOL Overridden;
			public int64 MetadataBits;
			public BSTR PropertyName;
			public uint32 PropertyChainIndex;
		}
		[CRepr]
		public struct EnumType
		{
			public BSTR Name;
			public SAFEARRAY* ValueInts;
			public SAFEARRAY* ValueStrings;
		}
		[CRepr]
		public struct CollectionElementValue
		{
			public uint32 Index;
			public BSTR ValueType;
			public BSTR Value;
			public int64 MetadataBits;
		}
		[CRepr]
		public struct BitmapDescription
		{
			public uint32 Width;
			public uint32 Height;
			public DXGI_FORMAT Format;
			public DXGI_ALPHA_MODE AlphaMode;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IVisualTreeServiceCallback : IUnknown
		{
			public const new Guid IID = .(0xaa7a8931, 0x80e4, 0x4fec, 0x8f, 0x3b, 0x55, 0x3f, 0x87, 0xb4, 0x96, 0x6e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVisualTreeServiceCallback *self, ParentChildRelation relation, VisualElement element, VisualMutationType mutationType) OnVisualTreeChange;
			}
		}
		[CRepr]
		public struct IVisualTreeServiceCallback2 : IVisualTreeServiceCallback
		{
			public const new Guid IID = .(0xbad9eb88, 0xae77, 0x4397, 0xb9, 0x48, 0x5f, 0xa2, 0xdb, 0x0a, 0x19, 0xea);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVisualTreeServiceCallback.VTable
			{
				public function HRESULT(IVisualTreeServiceCallback2 *self, uint64 element, VisualElementState elementState, PWSTR context) OnElementStateChanged;
			}
		}
		[CRepr]
		public struct IVisualTreeService : IUnknown
		{
			public const new Guid IID = .(0xa593b11a, 0xd17f, 0x48bb, 0x8f, 0x66, 0x83, 0x91, 0x07, 0x31, 0xc8, 0xa5);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IVisualTreeService *self, IVisualTreeServiceCallback* pCallback) AdviseVisualTreeChange;
				public function HRESULT(IVisualTreeService *self, IVisualTreeServiceCallback* pCallback) UnadviseVisualTreeChange;
				public function HRESULT(IVisualTreeService *self, uint32* pCount, EnumType** ppEnums) GetEnums;
				public function HRESULT(IVisualTreeService *self, BSTR typeName, BSTR value, uint64* pInstanceHandle) CreateInstance;
				public function HRESULT(IVisualTreeService *self, uint64 instanceHandle, uint32* pSourceCount, PropertyChainSource** ppPropertySources, uint32* pPropertyCount, PropertyChainValue** ppPropertyValues) GetPropertyValuesChain;
				public function HRESULT(IVisualTreeService *self, uint64 instanceHandle, uint64 value, uint32 propertyIndex) SetProperty;
				public function HRESULT(IVisualTreeService *self, uint64 instanceHandle, uint32 propertyIndex) ClearProperty;
				public function HRESULT(IVisualTreeService *self, uint64 instanceHandle, uint32* pCollectionSize) GetCollectionCount;
				public function HRESULT(IVisualTreeService *self, uint64 instanceHandle, uint32 startIndex, uint32* pElementCount, CollectionElementValue** ppElementValues) GetCollectionElements;
				public function HRESULT(IVisualTreeService *self, uint64 parent, uint64 child, uint32 index) AddChild;
				public function HRESULT(IVisualTreeService *self, uint64 parent, uint32 index) RemoveChild;
				public function HRESULT(IVisualTreeService *self, uint64 parent) ClearChildren;
			}
		}
		[CRepr]
		public struct IXamlDiagnostics : IUnknown
		{
			public const new Guid IID = .(0x18c9e2b6, 0x3f43, 0x4116, 0x9f, 0x2b, 0xff, 0x93, 0x5d, 0x77, 0x70, 0xd2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IXamlDiagnostics *self, IInspectable** ppDispatcher) GetDispatcher;
				public function HRESULT(IXamlDiagnostics *self, IInspectable** ppLayer) GetUiLayer;
				public function HRESULT(IXamlDiagnostics *self, IInspectable** ppApplication) GetApplication;
				public function HRESULT(IXamlDiagnostics *self, uint64 instanceHandle, IInspectable** ppInstance) GetIInspectableFromHandle;
				public function HRESULT(IXamlDiagnostics *self, IInspectable* pInstance, uint64* pHandle) GetHandleFromIInspectable;
				public function HRESULT(IXamlDiagnostics *self, RECT rect, uint32* pCount, uint64** ppInstanceHandles) HitTest;
				public function HRESULT(IXamlDiagnostics *self, IInspectable* pInstance, uint64* pInstanceHandle) RegisterInstance;
				public function HRESULT(IXamlDiagnostics *self, BSTR* pInitializationData) GetInitializationData;
			}
		}
		[CRepr]
		public struct IBitmapData : IUnknown
		{
			public const new Guid IID = .(0xd1a34ef2, 0xcad8, 0x4635, 0xa3, 0xd2, 0xfc, 0xda, 0x8d, 0x3f, 0x3c, 0xaf);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IBitmapData *self, uint32 sourceOffsetInBytes, uint32 maxBytesToCopy, uint8* pvBytes, uint32* numberOfBytesCopied) CopyBytesTo;
				public function HRESULT(IBitmapData *self, uint32* pStride) GetStride;
				public function HRESULT(IBitmapData *self, BitmapDescription* pBitmapDescription) GetBitmapDescription;
				public function HRESULT(IBitmapData *self, BitmapDescription* pBitmapDescription) GetSourceBitmapDescription;
			}
		}
		[CRepr]
		public struct IVisualTreeService2 : IVisualTreeService
		{
			public const new Guid IID = .(0x130f5136, 0xec43, 0x4f61, 0x89, 0xc7, 0x98, 0x01, 0xa3, 0x6d, 0x2e, 0x95);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVisualTreeService.VTable
			{
				public function HRESULT(IVisualTreeService2 *self, uint64 object, PWSTR propertyName, uint32* pPropertyIndex) GetPropertyIndex;
				public function HRESULT(IVisualTreeService2 *self, uint64 object, uint32 propertyIndex, uint64* pValue) GetProperty;
				public function HRESULT(IVisualTreeService2 *self, uint64 resourceDictionary, uint64 key, uint64 newValue) ReplaceResource;
				public function HRESULT(IVisualTreeService2 *self, uint64 handle, RenderTargetBitmapOptions options, uint32 maxPixelWidth, uint32 maxPixelHeight, IBitmapData** ppBitmapData) RenderTargetBitmap;
			}
		}
		[CRepr]
		public struct IVisualTreeService3 : IVisualTreeService2
		{
			public const new Guid IID = .(0x0e79c6e0, 0x85a0, 0x4be8, 0xb4, 0x1a, 0x65, 0x5c, 0xf1, 0xfd, 0x19, 0xbd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IVisualTreeService2.VTable
			{
				public function HRESULT(IVisualTreeService3 *self, uint64 resourceContext, PWSTR resourceName, ResourceType resourceType, uint32 propertyIndex) ResolveResource;
				public function HRESULT(IVisualTreeService3 *self, uint64 dictionaryHandle, PWSTR resourceName, BOOL resourceIsImplicitStyle, uint64* resourceHandle) GetDictionaryItem;
				public function HRESULT(IVisualTreeService3 *self, uint64 dictionaryHandle, uint64 resourceKey, uint64 resourceHandle) AddDictionaryItem;
				public function HRESULT(IVisualTreeService3 *self, uint64 dictionaryHandle, uint64 resourceKey) RemoveDictionaryItem;
			}
		}
		
		// --- Functions ---
		
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitializeXamlDiagnostic(PWSTR endPointName, uint32 pid, PWSTR wszDllXamlDiagnostics, PWSTR wszTAPDllName, Guid tapClsid);
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitializeXamlDiagnosticsEx(PWSTR endPointName, uint32 pid, PWSTR wszDllXamlDiagnostics, PWSTR wszTAPDllName, Guid tapClsid, PWSTR wszInitializationData);
		
	}
}
