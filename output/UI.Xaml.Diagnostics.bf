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
		
		public struct IVisualTreeServiceCallback {}
		public struct IVisualTreeServiceCallback2 {}
		public struct IVisualTreeService {}
		public struct IXamlDiagnostics {}
		public struct IBitmapData {}
		public struct IVisualTreeService2 {}
		public struct IVisualTreeService3 {}
		
		// --- Functions ---
		
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitializeXamlDiagnostic(PWSTR endPointName, uint32 pid, PWSTR wszDllXamlDiagnostics, PWSTR wszTAPDllName, Guid tapClsid);
		[Import("windows.ui.xaml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT InitializeXamlDiagnosticsEx(PWSTR endPointName, uint32 pid, PWSTR wszDllXamlDiagnostics, PWSTR wszTAPDllName, Guid tapClsid, PWSTR wszInitializationData);
		
	}
}
