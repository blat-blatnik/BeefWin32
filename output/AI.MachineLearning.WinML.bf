using System;

// namespace AI.MachineLearning.WinML
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WINML_TENSOR_DIMENSION_COUNT_MAX = 4;
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum WINML_TENSOR_DATA_TYPE : int32
		{
			WINML_TENSOR_UNDEFINED = 0,
			WINML_TENSOR_FLOAT = 1,
			WINML_TENSOR_UINT8 = 2,
			WINML_TENSOR_INT8 = 3,
			WINML_TENSOR_UINT16 = 4,
			WINML_TENSOR_INT16 = 5,
			WINML_TENSOR_INT32 = 6,
			WINML_TENSOR_INT64 = 7,
			WINML_TENSOR_STRING = 8,
			WINML_TENSOR_BOOLEAN = 9,
			WINML_TENSOR_FLOAT16 = 10,
			WINML_TENSOR_DOUBLE = 11,
			WINML_TENSOR_UINT32 = 12,
			WINML_TENSOR_UINT64 = 13,
			WINML_TENSOR_COMPLEX64 = 14,
			WINML_TENSOR_COMPLEX128 = 15,
		}
		[AllowDuplicates]
		public enum WINML_FEATURE_TYPE : int32
		{
			WINML_FEATURE_UNDEFINED = 0,
			WINML_FEATURE_TENSOR = 1,
			WINML_FEATURE_SEQUENCE = 2,
			WINML_FEATURE_MAP = 3,
			WINML_FEATURE_IMAGE = 4,
		}
		[AllowDuplicates]
		public enum WINML_BINDING_TYPE : int32
		{
			WINML_BINDING_UNDEFINED = 0,
			WINML_BINDING_TENSOR = 1,
			WINML_BINDING_SEQUENCE = 2,
			WINML_BINDING_MAP = 3,
			WINML_BINDING_IMAGE = 4,
			WINML_BINDING_RESOURCE = 5,
		}
		[AllowDuplicates]
		public enum WINML_RUNTIME_TYPE : int32
		{
			WINML_RUNTIME_CNTK = 0,
		}
		[AllowDuplicates]
		public enum MLOperatorAttributeType : uint32
		{
			Undefined = 0,
			Float = 2,
			Int = 3,
			String = 4,
			FloatArray = 7,
			IntArray = 8,
			StringArray = 9,
		}
		[AllowDuplicates]
		public enum MLOperatorTensorDataType : uint32
		{
			Undefined = 0,
			Float = 1,
			UInt8 = 2,
			Int8 = 3,
			UInt16 = 4,
			Int16 = 5,
			Int32 = 6,
			Int64 = 7,
			String = 8,
			Bool = 9,
			Float16 = 10,
			Double = 11,
			UInt32 = 12,
			UInt64 = 13,
			Complex64 = 14,
			Complex128 = 15,
		}
		[AllowDuplicates]
		public enum MLOperatorEdgeType : uint32
		{
			Undefined = 0,
			Tensor = 1,
		}
		[AllowDuplicates]
		public enum MLOperatorParameterOptions : uint32
		{
			Single = 0,
			Optional = 1,
			Variadic = 2,
		}
		[AllowDuplicates]
		public enum MLOperatorSchemaEdgeTypeFormat : int32
		{
			EdgeDescription = 0,
			Label = 1,
		}
		[AllowDuplicates]
		public enum MLOperatorKernelOptions : uint32
		{
			None = 0,
			AllowDynamicInputShapes = 1,
		}
		[AllowDuplicates]
		public enum MLOperatorExecutionType : uint32
		{
			Undefined = 0,
			Cpu = 1,
			D3D12 = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct WINML_TENSOR_BINDING_DESC
		{
			public WINML_TENSOR_DATA_TYPE DataType;
			public uint32 NumDimensions;
			public int64* pShape;
			public uint32 DataSize;
			public void* pData;
		}
		[CRepr]
		public struct WINML_SEQUENCE_BINDING_DESC
		{
			public uint32 ElementCount;
			public WINML_TENSOR_DATA_TYPE ElementType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public PWSTR* pStrings;
				public int64* pInts;
				public float* pFloats;
				public double* pDoubles;
			}
		}
		[CRepr]
		public struct WINML_MAP_BINDING_DESC
		{
			public uint32 ElementCount;
			public WINML_TENSOR_DATA_TYPE KeyType;
			public _Anonymous1_e__Union Anonymous1;
			public WINML_TENSOR_DATA_TYPE Fields;
			public _Anonymous2_e__Union Anonymous2;
			
			[CRepr, Union]
			public struct _Anonymous2_e__Union
			{
				public PWSTR* pStringFields;
				public int64* pIntFields;
				public float* pFloatFields;
				public double* pDoubleFields;
			}
			[CRepr, Union]
			public struct _Anonymous1_e__Union
			{
				public PWSTR* pStringKeys;
				public int64* pIntKeys;
			}
		}
		[CRepr]
		public struct WINML_IMAGE_BINDING_DESC
		{
			public WINML_TENSOR_DATA_TYPE ElementType;
			public uint32 NumDimensions;
			public int64* pShape;
			public uint32 DataSize;
			public void* pData;
		}
		[CRepr]
		public struct WINML_RESOURCE_BINDING_DESC
		{
			public WINML_TENSOR_DATA_TYPE ElementType;
			public uint32 NumDimensions;
			public int64* pShape;
			public ID3D12Resource pResource;
		}
		[CRepr]
		public struct WINML_BINDING_DESC
		{
			public PWSTR Name;
			public WINML_BINDING_TYPE BindType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WINML_TENSOR_BINDING_DESC Tensor;
				public WINML_SEQUENCE_BINDING_DESC Sequence;
				public WINML_MAP_BINDING_DESC Map;
				public WINML_IMAGE_BINDING_DESC Image;
				public WINML_RESOURCE_BINDING_DESC Resource;
			}
		}
		[CRepr]
		public struct WINML_TENSOR_VARIABLE_DESC
		{
			public WINML_TENSOR_DATA_TYPE ElementType;
			public uint32 NumDimensions;
			public int64* pShape;
		}
		[CRepr]
		public struct WINML_SEQUENCE_VARIABLE_DESC
		{
			public WINML_TENSOR_DATA_TYPE ElementType;
		}
		[CRepr]
		public struct WINML_MAP_VARIABLE_DESC
		{
			public WINML_TENSOR_DATA_TYPE KeyType;
			public WINML_TENSOR_DATA_TYPE Fields;
		}
		[CRepr]
		public struct WINML_IMAGE_VARIABLE_DESC
		{
			public WINML_TENSOR_DATA_TYPE ElementType;
			public uint32 NumDimensions;
			public int64* pShape;
		}
		[CRepr]
		public struct WINML_VARIABLE_DESC
		{
			public PWSTR Name;
			public PWSTR Description;
			public WINML_FEATURE_TYPE FeatureType;
			public BOOL Required;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public WINML_TENSOR_VARIABLE_DESC Tensor;
				public WINML_SEQUENCE_VARIABLE_DESC Sequence;
				public WINML_MAP_VARIABLE_DESC Map;
				public WINML_IMAGE_VARIABLE_DESC Image;
			}
		}
		[CRepr]
		public struct WINML_MODEL_DESC
		{
			public PWSTR Author;
			public PWSTR Name;
			public PWSTR Domain;
			public PWSTR Description;
			public uint Version;
		}
		[CRepr]
		public struct MLOperatorEdgeDescription
		{
			public MLOperatorEdgeType edgeType;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public uint64 reserved;
				public MLOperatorTensorDataType tensorDataType;
			}
		}
		[CRepr]
		public struct MLOperatorSchemaEdgeDescription
		{
			public MLOperatorParameterOptions options;
			public MLOperatorSchemaEdgeTypeFormat typeFormat;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* reserved;
				public PSTR typeLabel;
				public MLOperatorEdgeDescription edgeDescription;
			}
		}
		[CRepr]
		public struct MLOperatorEdgeTypeConstraint
		{
			public PSTR typeLabel;
			public MLOperatorEdgeDescription* allowedTypes;
			public uint32 allowedTypeCount;
		}
		[CRepr]
		public struct MLOperatorAttribute
		{
			public PSTR name;
			public MLOperatorAttributeType type;
			public Boolean required;
		}
		[CRepr]
		public struct MLOperatorAttributeNameValue
		{
			public PSTR name;
			public MLOperatorAttributeType type;
			public uint32 valueCount;
			public _Anonymous_e__Union Anonymous;
			
			[CRepr, Union]
			public struct _Anonymous_e__Union
			{
				public void* reserved;
				public int64* ints;
				public int8** strings;
				public float* floats;
			}
		}
		[CRepr]
		public struct MLOperatorSchemaDescription
		{
			public PSTR name;
			public int32 operatorSetVersionAtLastChange;
			public MLOperatorSchemaEdgeDescription* inputs;
			public uint32 inputCount;
			public MLOperatorSchemaEdgeDescription* outputs;
			public uint32 outputCount;
			public MLOperatorEdgeTypeConstraint* typeConstraints;
			public uint32 typeConstraintCount;
			public MLOperatorAttribute* attributes;
			public uint32 attributeCount;
			public MLOperatorAttributeNameValue* defaultAttributes;
			public uint32 defaultAttributeCount;
		}
		[CRepr]
		public struct MLOperatorSetId
		{
			public PSTR domain;
			public int32 version;
		}
		[CRepr]
		public struct MLOperatorKernelDescription
		{
			public PSTR domain;
			public PSTR name;
			public int32 minimumOperatorSetVersion;
			public MLOperatorExecutionType executionType;
			public MLOperatorEdgeTypeConstraint* typeConstraints;
			public uint32 typeConstraintCount;
			public MLOperatorAttributeNameValue* defaultAttributes;
			public uint32 defaultAttributeCount;
			public MLOperatorKernelOptions options;
			public uint32 executionOptions;
		}
		
		// --- COM Interfaces ---
		
		public struct IWinMLModel {}
		public struct IWinMLEvaluationContext {}
		public struct IWinMLRuntime {}
		public struct IWinMLRuntimeFactory {}
		public struct IMLOperatorAttributes {}
		public struct IMLOperatorTensorShapeDescription {}
		public struct IMLOperatorKernelCreationContext {}
		public struct IMLOperatorTensor {}
		public struct IMLOperatorKernelContext {}
		public struct IMLOperatorKernel {}
		public struct IMLOperatorShapeInferenceContext {}
		public struct IMLOperatorTypeInferenceContext {}
		public struct IMLOperatorTypeInferrer {}
		public struct IMLOperatorShapeInferrer {}
		public struct IMLOperatorKernelFactory {}
		public struct IMLOperatorRegistry {}
		
		// --- Functions ---
		
		[Import("winml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinMLCreateRuntime(IWinMLRuntime* runtime);
		[Import("windows.ai.machinelearning.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MLCreateOperatorRegistry(IMLOperatorRegistry* registry);
		
	}
}
