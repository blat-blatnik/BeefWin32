using System;

// namespace AI.MachineLearning.WinML
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 WINML_TENSOR_DIMENSION_COUNT_MAX = 4;
		
		// --- Enums ---
		
		public enum WINML_TENSOR_DATA_TYPE : int32
		{
			UNDEFINED = 0,
			FLOAT = 1,
			UINT8 = 2,
			INT8 = 3,
			UINT16 = 4,
			INT16 = 5,
			INT32 = 6,
			INT64 = 7,
			STRING = 8,
			BOOLEAN = 9,
			FLOAT16 = 10,
			DOUBLE = 11,
			UINT32 = 12,
			UINT64 = 13,
			COMPLEX64 = 14,
			COMPLEX128 = 15,
		}
		public enum WINML_FEATURE_TYPE : int32
		{
			UNDEFINED = 0,
			TENSOR = 1,
			SEQUENCE = 2,
			MAP = 3,
			IMAGE = 4,
		}
		public enum WINML_BINDING_TYPE : int32
		{
			UNDEFINED = 0,
			TENSOR = 1,
			SEQUENCE = 2,
			MAP = 3,
			IMAGE = 4,
			RESOURCE = 5,
		}
		public enum WINML_RUNTIME_TYPE : int32
		{
			CNTK = 0,
		}
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
		public enum MLOperatorEdgeType : uint32
		{
			Undefined = 0,
			Tensor = 1,
		}
		public enum MLOperatorParameterOptions : uint32
		{
			Single = 0,
			Optional = 1,
			Variadic = 2,
		}
		public enum MLOperatorSchemaEdgeTypeFormat : int32
		{
			EdgeDescription = 0,
			Label = 1,
		}
		public enum MLOperatorKernelOptions : uint32
		{
			None = 0,
			AllowDynamicInputShapes = 1,
		}
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
			public ID3D12Resource* pResource;
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
		
		[CRepr]
		public struct IWinMLModel : IUnknown
		{
			public const new Guid IID = .(0xe2eeb6a9, 0xf31f, 0x4055, 0xa5, 0x21, 0xe3, 0x0b, 0x5b, 0x33, 0x66, 0x4a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDescription(out WINML_MODEL_DESC* ppDescription) mut => VT.GetDescription(ref this, out ppDescription);
			public HRESULT EnumerateMetadata(uint32 Index, out PWSTR pKey, out PWSTR pValue) mut => VT.EnumerateMetadata(ref this, Index, out pKey, out pValue);
			public HRESULT EnumerateModelInputs(uint32 Index, out WINML_VARIABLE_DESC* ppInputDescriptor) mut => VT.EnumerateModelInputs(ref this, Index, out ppInputDescriptor);
			public HRESULT EnumerateModelOutputs(uint32 Index, out WINML_VARIABLE_DESC* ppOutputDescriptor) mut => VT.EnumerateModelOutputs(ref this, Index, out ppOutputDescriptor);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLModel self, out WINML_MODEL_DESC* ppDescription) GetDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLModel self, uint32 Index, out PWSTR pKey, out PWSTR pValue) EnumerateMetadata;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLModel self, uint32 Index, out WINML_VARIABLE_DESC* ppInputDescriptor) EnumerateModelInputs;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLModel self, uint32 Index, out WINML_VARIABLE_DESC* ppOutputDescriptor) EnumerateModelOutputs;
			}
		}
		[CRepr]
		public struct IWinMLEvaluationContext : IUnknown
		{
			public const new Guid IID = .(0x95848f9e, 0x583d, 0x4054, 0xaf, 0x12, 0x91, 0x63, 0x87, 0xcd, 0x84, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindValue(ref WINML_BINDING_DESC pDescriptor) mut => VT.BindValue(ref this, ref pDescriptor);
			public HRESULT GetValueByName(PWSTR Name, out WINML_BINDING_DESC* pDescriptor) mut => VT.GetValueByName(ref this, Name, out pDescriptor);
			public HRESULT Clear() mut => VT.Clear(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLEvaluationContext self, ref WINML_BINDING_DESC pDescriptor) BindValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLEvaluationContext self, PWSTR Name, out WINML_BINDING_DESC* pDescriptor) GetValueByName;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLEvaluationContext self) Clear;
			}
		}
		[CRepr]
		public struct IWinMLRuntime : IUnknown
		{
			public const new Guid IID = .(0xa0425329, 0x40ae, 0x48d9, 0xbc, 0xe3, 0x82, 0x9e, 0xf7, 0xb8, 0xa4, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadModel(PWSTR Path, out IWinMLModel* ppModel) mut => VT.LoadModel(ref this, Path, out ppModel);
			public HRESULT CreateEvaluationContext(ID3D12Device* device, out IWinMLEvaluationContext* ppContext) mut => VT.CreateEvaluationContext(ref this, device, out ppContext);
			public HRESULT EvaluateModel(ref IWinMLEvaluationContext pContext) mut => VT.EvaluateModel(ref this, ref pContext);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLRuntime self, PWSTR Path, out IWinMLModel* ppModel) LoadModel;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLRuntime self, ID3D12Device* device, out IWinMLEvaluationContext* ppContext) CreateEvaluationContext;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLRuntime self, ref IWinMLEvaluationContext pContext) EvaluateModel;
			}
		}
		[CRepr]
		public struct IWinMLRuntimeFactory : IUnknown
		{
			public const new Guid IID = .(0xa807b84d, 0x4ae5, 0x4bc0, 0xa7, 0x6a, 0x94, 0x1a, 0xa2, 0x46, 0xbd, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRuntime(WINML_RUNTIME_TYPE RuntimeType, out IWinMLRuntime* ppRuntime) mut => VT.CreateRuntime(ref this, RuntimeType, out ppRuntime);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWinMLRuntimeFactory self, WINML_RUNTIME_TYPE RuntimeType, out IWinMLRuntime* ppRuntime) CreateRuntime;
			}
		}
		[CRepr]
		public struct IMLOperatorAttributes : IUnknown
		{
			public const new Guid IID = .(0x4b1b1759, 0xec40, 0x466c, 0xaa, 0xb4, 0xbe, 0xb5, 0x34, 0x7f, 0xd2, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeElementCount(PSTR name, MLOperatorAttributeType type, out uint32 elementCount) mut => VT.GetAttributeElementCount(ref this, name, type, out elementCount);
			public HRESULT GetAttribute(PSTR name, MLOperatorAttributeType type, uint32 elementCount, uint elementByteSize, void* value) mut => VT.GetAttribute(ref this, name, type, elementCount, elementByteSize, value);
			public HRESULT GetStringAttributeElementLength(PSTR name, uint32 elementIndex, out uint32 attributeElementByteSize) mut => VT.GetStringAttributeElementLength(ref this, name, elementIndex, out attributeElementByteSize);
			public HRESULT GetStringAttributeElement(PSTR name, uint32 elementIndex, uint32 attributeElementByteSize, uint8* attributeElement) mut => VT.GetStringAttributeElement(ref this, name, elementIndex, attributeElementByteSize, attributeElement);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorAttributes self, PSTR name, MLOperatorAttributeType type, out uint32 elementCount) GetAttributeElementCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorAttributes self, PSTR name, MLOperatorAttributeType type, uint32 elementCount, uint elementByteSize, void* value) GetAttribute;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorAttributes self, PSTR name, uint32 elementIndex, out uint32 attributeElementByteSize) GetStringAttributeElementLength;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorAttributes self, PSTR name, uint32 elementIndex, uint32 attributeElementByteSize, uint8* attributeElement) GetStringAttributeElement;
			}
		}
		[CRepr]
		public struct IMLOperatorTensorShapeDescription : IUnknown
		{
			public const new Guid IID = .(0xf20e8cbe, 0x3b28, 0x4248, 0xbe, 0x95, 0xf9, 0x6f, 0xbc, 0x6e, 0x46, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputTensorDimensionCount(uint32 inputIndex, out uint32 dimensionCount) mut => VT.GetInputTensorDimensionCount(ref this, inputIndex, out dimensionCount);
			public HRESULT GetInputTensorShape(uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) mut => VT.GetInputTensorShape(ref this, inputIndex, dimensionCount, dimensions);
			public Boolean HasOutputShapeDescription() mut => VT.HasOutputShapeDescription(ref this);
			public HRESULT GetOutputTensorDimensionCount(uint32 outputIndex, out uint32 dimensionCount) mut => VT.GetOutputTensorDimensionCount(ref this, outputIndex, out dimensionCount);
			public HRESULT GetOutputTensorShape(uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) mut => VT.GetOutputTensorShape(ref this, outputIndex, dimensionCount, dimensions);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTensorShapeDescription self, uint32 inputIndex, out uint32 dimensionCount) GetInputTensorDimensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTensorShapeDescription self, uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) GetInputTensorShape;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorTensorShapeDescription self) HasOutputShapeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTensorShapeDescription self, uint32 outputIndex, out uint32 dimensionCount) GetOutputTensorDimensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTensorShapeDescription self, uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) GetOutputTensorShape;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelCreationContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0x5459b53d, 0xa0fc, 0x4665, 0xad, 0xdd, 0x70, 0x17, 0x1e, 0xf7, 0xe6, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);
			public uint32 GetOutputCount() mut => VT.GetOutputCount(ref this);
			public Boolean IsInputValid(uint32 inputIndex) mut => VT.IsInputValid(ref this, inputIndex);
			public Boolean IsOutputValid(uint32 outputIndex) mut => VT.IsOutputValid(ref this, outputIndex);
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) mut => VT.GetInputEdgeDescription(ref this, inputIndex, out edgeDescription);
			public HRESULT GetOutputEdgeDescription(uint32 outputIndex, out MLOperatorEdgeDescription edgeDescription) mut => VT.GetOutputEdgeDescription(ref this, outputIndex, out edgeDescription);
			public Boolean HasTensorShapeDescription() mut => VT.HasTensorShapeDescription(ref this);
			public HRESULT GetTensorShapeDescription(out IMLOperatorTensorShapeDescription* shapeDescription) mut => VT.GetTensorShapeDescription(ref this, out shapeDescription);
			public void GetExecutionInterface(IUnknown** executionObject) mut => VT.GetExecutionInterface(ref this, executionObject);

			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorKernelCreationContext self) GetInputCount;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorKernelCreationContext self) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorKernelCreationContext self, uint32 inputIndex) IsInputValid;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorKernelCreationContext self, uint32 outputIndex) IsOutputValid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelCreationContext self, uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) GetInputEdgeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelCreationContext self, uint32 outputIndex, out MLOperatorEdgeDescription edgeDescription) GetOutputEdgeDescription;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorKernelCreationContext self) HasTensorShapeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelCreationContext self, out IMLOperatorTensorShapeDescription* shapeDescription) GetTensorShapeDescription;
				public new function [CallingConvention(.Stdcall)] void(ref IMLOperatorKernelCreationContext self, IUnknown** executionObject) GetExecutionInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorTensor : IUnknown
		{
			public const new Guid IID = .(0x7fe41f41, 0xf430, 0x440e, 0xae, 0xce, 0x54, 0x41, 0x6d, 0xc8, 0xb9, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetDimensionCount() mut => VT.GetDimensionCount(ref this);
			public HRESULT GetShape(uint32 dimensionCount, uint32* dimensions) mut => VT.GetShape(ref this, dimensionCount, dimensions);
			public MLOperatorTensorDataType GetTensorDataType() mut => VT.GetTensorDataType(ref this);
			public Boolean IsCpuData() mut => VT.IsCpuData(ref this);
			public Boolean IsDataInterface() mut => VT.IsDataInterface(ref this);
			public void* GetData() mut => VT.GetData(ref this);
			public void GetDataInterface(IUnknown** dataInterface) mut => VT.GetDataInterface(ref this, dataInterface);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorTensor self) GetDimensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTensor self, uint32 dimensionCount, uint32* dimensions) GetShape;
				public new function [CallingConvention(.Stdcall)] MLOperatorTensorDataType(ref IMLOperatorTensor self) GetTensorDataType;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorTensor self) IsCpuData;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorTensor self) IsDataInterface;
				public new function [CallingConvention(.Stdcall)] void*(ref IMLOperatorTensor self) GetData;
				public new function [CallingConvention(.Stdcall)] void(ref IMLOperatorTensor self, IUnknown** dataInterface) GetDataInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelContext : IUnknown
		{
			public const new Guid IID = .(0x82536a28, 0xf022, 0x4769, 0x9d, 0x3f, 0x8b, 0x27, 0x8f, 0x84, 0xc0, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputTensor(uint32 inputIndex, IMLOperatorTensor** tensor) mut => VT.GetInputTensor(ref this, inputIndex, tensor);
			public HRESULT GetOutputTensor(uint32 outputIndex, uint32 dimensionCount, uint32* dimensionSizes, IMLOperatorTensor** tensor) mut => VT.GetOutputTensor(ref this, outputIndex, dimensionCount, dimensionSizes, tensor);
			public HRESULT GetOutputTensor(uint32 outputIndex, IMLOperatorTensor** tensor) mut => VT.GetOutputTensor2(ref this, outputIndex, tensor);
			public HRESULT AllocateTemporaryData(uint size, out IUnknown* data) mut => VT.AllocateTemporaryData(ref this, size, out data);
			public void GetExecutionInterface(IUnknown** executionObject) mut => VT.GetExecutionInterface(ref this, executionObject);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelContext self, uint32 inputIndex, IMLOperatorTensor** tensor) GetInputTensor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelContext self, uint32 outputIndex, uint32 dimensionCount, uint32* dimensionSizes, IMLOperatorTensor** tensor) GetOutputTensor;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelContext self, uint32 outputIndex, IMLOperatorTensor** tensor) GetOutputTensor2;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelContext self, uint size, out IUnknown* data) AllocateTemporaryData;
				public new function [CallingConvention(.Stdcall)] void(ref IMLOperatorKernelContext self, IUnknown** executionObject) GetExecutionInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorKernel : IUnknown
		{
			public const new Guid IID = .(0x11c4b4a0, 0xb467, 0x4eaa, 0xa1, 0xa6, 0xb9, 0x61, 0xd8, 0xd0, 0xed, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compute(ref IMLOperatorKernelContext context) mut => VT.Compute(ref this, ref context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernel self, ref IMLOperatorKernelContext context) Compute;
			}
		}
		[CRepr]
		public struct IMLOperatorShapeInferenceContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0x105b6b29, 0x5408, 0x4a68, 0x99, 0x59, 0x09, 0xb5, 0x95, 0x5a, 0x34, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);
			public uint32 GetOutputCount() mut => VT.GetOutputCount(ref this);
			public Boolean IsInputValid(uint32 inputIndex) mut => VT.IsInputValid(ref this, inputIndex);
			public Boolean IsOutputValid(uint32 outputIndex) mut => VT.IsOutputValid(ref this, outputIndex);
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) mut => VT.GetInputEdgeDescription(ref this, inputIndex, out edgeDescription);
			public HRESULT GetInputTensorDimensionCount(uint32 inputIndex, out uint32 dimensionCount) mut => VT.GetInputTensorDimensionCount(ref this, inputIndex, out dimensionCount);
			public HRESULT GetInputTensorShape(uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) mut => VT.GetInputTensorShape(ref this, inputIndex, dimensionCount, dimensions);
			public HRESULT SetOutputTensorShape(uint32 outputIndex, uint32 dimensionCount, in uint32 dimensions) mut => VT.SetOutputTensorShape(ref this, outputIndex, dimensionCount, dimensions);

			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorShapeInferenceContext self) GetInputCount;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorShapeInferenceContext self) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorShapeInferenceContext self, uint32 inputIndex) IsInputValid;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorShapeInferenceContext self, uint32 outputIndex) IsOutputValid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorShapeInferenceContext self, uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) GetInputEdgeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorShapeInferenceContext self, uint32 inputIndex, out uint32 dimensionCount) GetInputTensorDimensionCount;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorShapeInferenceContext self, uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) GetInputTensorShape;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorShapeInferenceContext self, uint32 outputIndex, uint32 dimensionCount, in uint32 dimensions) SetOutputTensorShape;
			}
		}
		[CRepr]
		public struct IMLOperatorTypeInferenceContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0xec893bb1, 0xf938, 0x427b, 0x84, 0x88, 0xc8, 0xdc, 0xf7, 0x75, 0xf1, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut => VT.GetInputCount(ref this);
			public uint32 GetOutputCount() mut => VT.GetOutputCount(ref this);
			public Boolean IsInputValid(uint32 inputIndex) mut => VT.IsInputValid(ref this, inputIndex);
			public Boolean IsOutputValid(uint32 outputIndex) mut => VT.IsOutputValid(ref this, outputIndex);
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) mut => VT.GetInputEdgeDescription(ref this, inputIndex, out edgeDescription);
			public HRESULT SetOutputEdgeDescription(uint32 outputIndex, in MLOperatorEdgeDescription edgeDescription) mut => VT.SetOutputEdgeDescription(ref this, outputIndex, edgeDescription);

			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorTypeInferenceContext self) GetInputCount;
				public new function [CallingConvention(.Stdcall)] uint32(ref IMLOperatorTypeInferenceContext self) GetOutputCount;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorTypeInferenceContext self, uint32 inputIndex) IsInputValid;
				public new function [CallingConvention(.Stdcall)] Boolean(ref IMLOperatorTypeInferenceContext self, uint32 outputIndex) IsOutputValid;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTypeInferenceContext self, uint32 inputIndex, out MLOperatorEdgeDescription edgeDescription) GetInputEdgeDescription;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTypeInferenceContext self, uint32 outputIndex, in MLOperatorEdgeDescription edgeDescription) SetOutputEdgeDescription;
			}
		}
		[CRepr]
		public struct IMLOperatorTypeInferrer : IUnknown
		{
			public const new Guid IID = .(0x781aeb48, 0x9bcb, 0x4797, 0xbf, 0x77, 0x8b, 0xf4, 0x55, 0x21, 0x7b, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InferOutputTypes(ref IMLOperatorTypeInferenceContext context) mut => VT.InferOutputTypes(ref this, ref context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorTypeInferrer self, ref IMLOperatorTypeInferenceContext context) InferOutputTypes;
			}
		}
		[CRepr]
		public struct IMLOperatorShapeInferrer : IUnknown
		{
			public const new Guid IID = .(0x540be5be, 0xa6c9, 0x40ee, 0x83, 0xf6, 0xd2, 0xb8, 0xb4, 0x0a, 0x77, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InferOutputShapes(ref IMLOperatorShapeInferenceContext context) mut => VT.InferOutputShapes(ref this, ref context);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorShapeInferrer self, ref IMLOperatorShapeInferenceContext context) InferOutputShapes;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelFactory : IUnknown
		{
			public const new Guid IID = .(0xef15ad6f, 0x0dc9, 0x4908, 0xab, 0x35, 0xa5, 0x75, 0xa3, 0x0d, 0xfb, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateKernel(ref IMLOperatorKernelCreationContext context, out IMLOperatorKernel* kernel) mut => VT.CreateKernel(ref this, ref context, out kernel);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorKernelFactory self, ref IMLOperatorKernelCreationContext context, out IMLOperatorKernel* kernel) CreateKernel;
			}
		}
		[CRepr]
		public struct IMLOperatorRegistry : IUnknown
		{
			public const new Guid IID = .(0x2af9dd2d, 0xb516, 0x4672, 0x9a, 0xb5, 0x53, 0x0c, 0x20, 0x84, 0x93, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterOperatorSetSchema(in MLOperatorSetId operatorSetId, int32 baselineVersion, MLOperatorSchemaDescription** schema, uint32 schemaCount, IMLOperatorTypeInferrer* typeInferrer, IMLOperatorShapeInferrer* shapeInferrer) mut => VT.RegisterOperatorSetSchema(ref this, operatorSetId, baselineVersion, schema, schemaCount, typeInferrer, shapeInferrer);
			public HRESULT RegisterOperatorKernel(in MLOperatorKernelDescription operatorKernel, ref IMLOperatorKernelFactory operatorKernelFactory, IMLOperatorShapeInferrer* shapeInferrer) mut => VT.RegisterOperatorKernel(ref this, operatorKernel, ref operatorKernelFactory, shapeInferrer);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorRegistry self, in MLOperatorSetId operatorSetId, int32 baselineVersion, MLOperatorSchemaDescription** schema, uint32 schemaCount, IMLOperatorTypeInferrer* typeInferrer, IMLOperatorShapeInferrer* shapeInferrer) RegisterOperatorSetSchema;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IMLOperatorRegistry self, in MLOperatorKernelDescription operatorKernel, ref IMLOperatorKernelFactory operatorKernelFactory, IMLOperatorShapeInferrer* shapeInferrer) RegisterOperatorKernel;
			}
		}
		
		// --- Functions ---
		
		[Import("winml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinMLCreateRuntime(out IWinMLRuntime* runtime);
		[Import("windows.ai.machinelearning.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MLCreateOperatorRegistry(out IMLOperatorRegistry* registry);
	}
}
