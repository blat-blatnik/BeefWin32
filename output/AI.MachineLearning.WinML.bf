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
		[AllowDuplicates]
		public enum WINML_FEATURE_TYPE : int32
		{
			UNDEFINED = 0,
			TENSOR = 1,
			SEQUENCE = 2,
			MAP = 3,
			IMAGE = 4,
		}
		[AllowDuplicates]
		public enum WINML_BINDING_TYPE : int32
		{
			UNDEFINED = 0,
			TENSOR = 1,
			SEQUENCE = 2,
			MAP = 3,
			IMAGE = 4,
			RESOURCE = 5,
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
			
			public HRESULT GetDescription(WINML_MODEL_DESC** ppDescription) mut
			{
				return VT.GetDescription(&this, ppDescription);
			}
			public HRESULT EnumerateMetadata(uint32 Index, PWSTR* pKey, PWSTR* pValue) mut
			{
				return VT.EnumerateMetadata(&this, Index, pKey, pValue);
			}
			public HRESULT EnumerateModelInputs(uint32 Index, WINML_VARIABLE_DESC** ppInputDescriptor) mut
			{
				return VT.EnumerateModelInputs(&this, Index, ppInputDescriptor);
			}
			public HRESULT EnumerateModelOutputs(uint32 Index, WINML_VARIABLE_DESC** ppOutputDescriptor) mut
			{
				return VT.EnumerateModelOutputs(&this, Index, ppOutputDescriptor);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWinMLModel *self, WINML_MODEL_DESC** ppDescription) GetDescription;
				public new function HRESULT(IWinMLModel *self, uint32 Index, PWSTR* pKey, PWSTR* pValue) EnumerateMetadata;
				public new function HRESULT(IWinMLModel *self, uint32 Index, WINML_VARIABLE_DESC** ppInputDescriptor) EnumerateModelInputs;
				public new function HRESULT(IWinMLModel *self, uint32 Index, WINML_VARIABLE_DESC** ppOutputDescriptor) EnumerateModelOutputs;
			}
		}
		[CRepr]
		public struct IWinMLEvaluationContext : IUnknown
		{
			public const new Guid IID = .(0x95848f9e, 0x583d, 0x4054, 0xaf, 0x12, 0x91, 0x63, 0x87, 0xcd, 0x84, 0x26);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT BindValue(WINML_BINDING_DESC* pDescriptor) mut
			{
				return VT.BindValue(&this, pDescriptor);
			}
			public HRESULT GetValueByName(PWSTR Name, WINML_BINDING_DESC** pDescriptor) mut
			{
				return VT.GetValueByName(&this, Name, pDescriptor);
			}
			public HRESULT Clear() mut
			{
				return VT.Clear(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWinMLEvaluationContext *self, WINML_BINDING_DESC* pDescriptor) BindValue;
				public new function HRESULT(IWinMLEvaluationContext *self, PWSTR Name, WINML_BINDING_DESC** pDescriptor) GetValueByName;
				public new function HRESULT(IWinMLEvaluationContext *self) Clear;
			}
		}
		[CRepr]
		public struct IWinMLRuntime : IUnknown
		{
			public const new Guid IID = .(0xa0425329, 0x40ae, 0x48d9, 0xbc, 0xe3, 0x82, 0x9e, 0xf7, 0xb8, 0xa4, 0x1a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT LoadModel(PWSTR Path, IWinMLModel** ppModel) mut
			{
				return VT.LoadModel(&this, Path, ppModel);
			}
			public HRESULT CreateEvaluationContext(ID3D12Device* device, IWinMLEvaluationContext** ppContext) mut
			{
				return VT.CreateEvaluationContext(&this, device, ppContext);
			}
			public HRESULT EvaluateModel(IWinMLEvaluationContext* pContext) mut
			{
				return VT.EvaluateModel(&this, pContext);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWinMLRuntime *self, PWSTR Path, IWinMLModel** ppModel) LoadModel;
				public new function HRESULT(IWinMLRuntime *self, ID3D12Device* device, IWinMLEvaluationContext** ppContext) CreateEvaluationContext;
				public new function HRESULT(IWinMLRuntime *self, IWinMLEvaluationContext* pContext) EvaluateModel;
			}
		}
		[CRepr]
		public struct IWinMLRuntimeFactory : IUnknown
		{
			public const new Guid IID = .(0xa807b84d, 0x4ae5, 0x4bc0, 0xa7, 0x6a, 0x94, 0x1a, 0xa2, 0x46, 0xbd, 0x41);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateRuntime(WINML_RUNTIME_TYPE RuntimeType, IWinMLRuntime** ppRuntime) mut
			{
				return VT.CreateRuntime(&this, RuntimeType, ppRuntime);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IWinMLRuntimeFactory *self, WINML_RUNTIME_TYPE RuntimeType, IWinMLRuntime** ppRuntime) CreateRuntime;
			}
		}
		[CRepr]
		public struct IMLOperatorAttributes : IUnknown
		{
			public const new Guid IID = .(0x4b1b1759, 0xec40, 0x466c, 0xaa, 0xb4, 0xbe, 0xb5, 0x34, 0x7f, 0xd2, 0x4c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetAttributeElementCount(PSTR name, MLOperatorAttributeType type, uint32* elementCount) mut
			{
				return VT.GetAttributeElementCount(&this, name, type, elementCount);
			}
			public HRESULT GetAttribute(PSTR name, MLOperatorAttributeType type, uint32 elementCount, uint elementByteSize, void* value) mut
			{
				return VT.GetAttribute(&this, name, type, elementCount, elementByteSize, value);
			}
			public HRESULT GetStringAttributeElementLength(PSTR name, uint32 elementIndex, uint32* attributeElementByteSize) mut
			{
				return VT.GetStringAttributeElementLength(&this, name, elementIndex, attributeElementByteSize);
			}
			public HRESULT GetStringAttributeElement(PSTR name, uint32 elementIndex, uint32 attributeElementByteSize, uint8* attributeElement) mut
			{
				return VT.GetStringAttributeElement(&this, name, elementIndex, attributeElementByteSize, attributeElement);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorAttributes *self, PSTR name, MLOperatorAttributeType type, uint32* elementCount) GetAttributeElementCount;
				public new function HRESULT(IMLOperatorAttributes *self, PSTR name, MLOperatorAttributeType type, uint32 elementCount, uint elementByteSize, void* value) GetAttribute;
				public new function HRESULT(IMLOperatorAttributes *self, PSTR name, uint32 elementIndex, uint32* attributeElementByteSize) GetStringAttributeElementLength;
				public new function HRESULT(IMLOperatorAttributes *self, PSTR name, uint32 elementIndex, uint32 attributeElementByteSize, uint8* attributeElement) GetStringAttributeElement;
			}
		}
		[CRepr]
		public struct IMLOperatorTensorShapeDescription : IUnknown
		{
			public const new Guid IID = .(0xf20e8cbe, 0x3b28, 0x4248, 0xbe, 0x95, 0xf9, 0x6f, 0xbc, 0x6e, 0x46, 0x43);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputTensorDimensionCount(uint32 inputIndex, uint32* dimensionCount) mut
			{
				return VT.GetInputTensorDimensionCount(&this, inputIndex, dimensionCount);
			}
			public HRESULT GetInputTensorShape(uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) mut
			{
				return VT.GetInputTensorShape(&this, inputIndex, dimensionCount, dimensions);
			}
			public Boolean HasOutputShapeDescription() mut
			{
				return VT.HasOutputShapeDescription(&this);
			}
			public HRESULT GetOutputTensorDimensionCount(uint32 outputIndex, uint32* dimensionCount) mut
			{
				return VT.GetOutputTensorDimensionCount(&this, outputIndex, dimensionCount);
			}
			public HRESULT GetOutputTensorShape(uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) mut
			{
				return VT.GetOutputTensorShape(&this, outputIndex, dimensionCount, dimensions);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorTensorShapeDescription *self, uint32 inputIndex, uint32* dimensionCount) GetInputTensorDimensionCount;
				public new function HRESULT(IMLOperatorTensorShapeDescription *self, uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) GetInputTensorShape;
				public new function Boolean(IMLOperatorTensorShapeDescription *self) HasOutputShapeDescription;
				public new function HRESULT(IMLOperatorTensorShapeDescription *self, uint32 outputIndex, uint32* dimensionCount) GetOutputTensorDimensionCount;
				public new function HRESULT(IMLOperatorTensorShapeDescription *self, uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) GetOutputTensorShape;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelCreationContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0x5459b53d, 0xa0fc, 0x4665, 0xad, 0xdd, 0x70, 0x17, 0x1e, 0xf7, 0xe6, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			public uint32 GetOutputCount() mut
			{
				return VT.GetOutputCount(&this);
			}
			public Boolean IsInputValid(uint32 inputIndex) mut
			{
				return VT.IsInputValid(&this, inputIndex);
			}
			public Boolean IsOutputValid(uint32 outputIndex) mut
			{
				return VT.IsOutputValid(&this, outputIndex);
			}
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) mut
			{
				return VT.GetInputEdgeDescription(&this, inputIndex, edgeDescription);
			}
			public HRESULT GetOutputEdgeDescription(uint32 outputIndex, MLOperatorEdgeDescription* edgeDescription) mut
			{
				return VT.GetOutputEdgeDescription(&this, outputIndex, edgeDescription);
			}
			public Boolean HasTensorShapeDescription() mut
			{
				return VT.HasTensorShapeDescription(&this);
			}
			public HRESULT GetTensorShapeDescription(IMLOperatorTensorShapeDescription** shapeDescription) mut
			{
				return VT.GetTensorShapeDescription(&this, shapeDescription);
			}
			public void GetExecutionInterface(IUnknown** executionObject) mut
			{
				VT.GetExecutionInterface(&this, executionObject);
			}
			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function uint32(IMLOperatorKernelCreationContext *self) GetInputCount;
				public new function uint32(IMLOperatorKernelCreationContext *self) GetOutputCount;
				public new function Boolean(IMLOperatorKernelCreationContext *self, uint32 inputIndex) IsInputValid;
				public new function Boolean(IMLOperatorKernelCreationContext *self, uint32 outputIndex) IsOutputValid;
				public new function HRESULT(IMLOperatorKernelCreationContext *self, uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) GetInputEdgeDescription;
				public new function HRESULT(IMLOperatorKernelCreationContext *self, uint32 outputIndex, MLOperatorEdgeDescription* edgeDescription) GetOutputEdgeDescription;
				public new function Boolean(IMLOperatorKernelCreationContext *self) HasTensorShapeDescription;
				public new function HRESULT(IMLOperatorKernelCreationContext *self, IMLOperatorTensorShapeDescription** shapeDescription) GetTensorShapeDescription;
				public new function void(IMLOperatorKernelCreationContext *self, IUnknown** executionObject) GetExecutionInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorTensor : IUnknown
		{
			public const new Guid IID = .(0x7fe41f41, 0xf430, 0x440e, 0xae, 0xce, 0x54, 0x41, 0x6d, 0xc8, 0xb9, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetDimensionCount() mut
			{
				return VT.GetDimensionCount(&this);
			}
			public HRESULT GetShape(uint32 dimensionCount, uint32* dimensions) mut
			{
				return VT.GetShape(&this, dimensionCount, dimensions);
			}
			public MLOperatorTensorDataType GetTensorDataType() mut
			{
				return VT.GetTensorDataType(&this);
			}
			public Boolean IsCpuData() mut
			{
				return VT.IsCpuData(&this);
			}
			public Boolean IsDataInterface() mut
			{
				return VT.IsDataInterface(&this);
			}
			public void* GetData() mut
			{
				return VT.GetData(&this);
			}
			public void GetDataInterface(IUnknown** dataInterface) mut
			{
				VT.GetDataInterface(&this, dataInterface);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function uint32(IMLOperatorTensor *self) GetDimensionCount;
				public new function HRESULT(IMLOperatorTensor *self, uint32 dimensionCount, uint32* dimensions) GetShape;
				public new function MLOperatorTensorDataType(IMLOperatorTensor *self) GetTensorDataType;
				public new function Boolean(IMLOperatorTensor *self) IsCpuData;
				public new function Boolean(IMLOperatorTensor *self) IsDataInterface;
				public new function void*(IMLOperatorTensor *self) GetData;
				public new function void(IMLOperatorTensor *self, IUnknown** dataInterface) GetDataInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelContext : IUnknown
		{
			public const new Guid IID = .(0x82536a28, 0xf022, 0x4769, 0x9d, 0x3f, 0x8b, 0x27, 0x8f, 0x84, 0xc0, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetInputTensor(uint32 inputIndex, IMLOperatorTensor** tensor) mut
			{
				return VT.GetInputTensor(&this, inputIndex, tensor);
			}
			public HRESULT GetOutputTensor(uint32 outputIndex, uint32 dimensionCount, uint32* dimensionSizes, IMLOperatorTensor** tensor) mut
			{
				return VT.GetOutputTensor(&this, outputIndex, dimensionCount, dimensionSizes, tensor);
			}
			public HRESULT GetOutputTensor(uint32 outputIndex, IMLOperatorTensor** tensor) mut
			{
				return VT.GetOutputTensor2(&this, outputIndex, tensor);
			}
			public HRESULT AllocateTemporaryData(uint size, IUnknown** data) mut
			{
				return VT.AllocateTemporaryData(&this, size, data);
			}
			public void GetExecutionInterface(IUnknown** executionObject) mut
			{
				VT.GetExecutionInterface(&this, executionObject);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorKernelContext *self, uint32 inputIndex, IMLOperatorTensor** tensor) GetInputTensor;
				public new function HRESULT(IMLOperatorKernelContext *self, uint32 outputIndex, uint32 dimensionCount, uint32* dimensionSizes, IMLOperatorTensor** tensor) GetOutputTensor;
				public new function HRESULT(IMLOperatorKernelContext *self, uint32 outputIndex, IMLOperatorTensor** tensor) GetOutputTensor2;
				public new function HRESULT(IMLOperatorKernelContext *self, uint size, IUnknown** data) AllocateTemporaryData;
				public new function void(IMLOperatorKernelContext *self, IUnknown** executionObject) GetExecutionInterface;
			}
		}
		[CRepr]
		public struct IMLOperatorKernel : IUnknown
		{
			public const new Guid IID = .(0x11c4b4a0, 0xb467, 0x4eaa, 0xa1, 0xa6, 0xb9, 0x61, 0xd8, 0xd0, 0xed, 0x79);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Compute(IMLOperatorKernelContext* context) mut
			{
				return VT.Compute(&this, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorKernel *self, IMLOperatorKernelContext* context) Compute;
			}
		}
		[CRepr]
		public struct IMLOperatorShapeInferenceContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0x105b6b29, 0x5408, 0x4a68, 0x99, 0x59, 0x09, 0xb5, 0x95, 0x5a, 0x34, 0x92);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			public uint32 GetOutputCount() mut
			{
				return VT.GetOutputCount(&this);
			}
			public Boolean IsInputValid(uint32 inputIndex) mut
			{
				return VT.IsInputValid(&this, inputIndex);
			}
			public Boolean IsOutputValid(uint32 outputIndex) mut
			{
				return VT.IsOutputValid(&this, outputIndex);
			}
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) mut
			{
				return VT.GetInputEdgeDescription(&this, inputIndex, edgeDescription);
			}
			public HRESULT GetInputTensorDimensionCount(uint32 inputIndex, uint32* dimensionCount) mut
			{
				return VT.GetInputTensorDimensionCount(&this, inputIndex, dimensionCount);
			}
			public HRESULT GetInputTensorShape(uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) mut
			{
				return VT.GetInputTensorShape(&this, inputIndex, dimensionCount, dimensions);
			}
			public HRESULT SetOutputTensorShape(uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) mut
			{
				return VT.SetOutputTensorShape(&this, outputIndex, dimensionCount, dimensions);
			}
			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function uint32(IMLOperatorShapeInferenceContext *self) GetInputCount;
				public new function uint32(IMLOperatorShapeInferenceContext *self) GetOutputCount;
				public new function Boolean(IMLOperatorShapeInferenceContext *self, uint32 inputIndex) IsInputValid;
				public new function Boolean(IMLOperatorShapeInferenceContext *self, uint32 outputIndex) IsOutputValid;
				public new function HRESULT(IMLOperatorShapeInferenceContext *self, uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) GetInputEdgeDescription;
				public new function HRESULT(IMLOperatorShapeInferenceContext *self, uint32 inputIndex, uint32* dimensionCount) GetInputTensorDimensionCount;
				public new function HRESULT(IMLOperatorShapeInferenceContext *self, uint32 inputIndex, uint32 dimensionCount, uint32* dimensions) GetInputTensorShape;
				public new function HRESULT(IMLOperatorShapeInferenceContext *self, uint32 outputIndex, uint32 dimensionCount, uint32* dimensions) SetOutputTensorShape;
			}
		}
		[CRepr]
		public struct IMLOperatorTypeInferenceContext : IMLOperatorAttributes
		{
			public const new Guid IID = .(0xec893bb1, 0xf938, 0x427b, 0x84, 0x88, 0xc8, 0xdc, 0xf7, 0x75, 0xf1, 0x38);
			
			public new VTable* VT { get => (.)vt; }
			
			public uint32 GetInputCount() mut
			{
				return VT.GetInputCount(&this);
			}
			public uint32 GetOutputCount() mut
			{
				return VT.GetOutputCount(&this);
			}
			public Boolean IsInputValid(uint32 inputIndex) mut
			{
				return VT.IsInputValid(&this, inputIndex);
			}
			public Boolean IsOutputValid(uint32 outputIndex) mut
			{
				return VT.IsOutputValid(&this, outputIndex);
			}
			public HRESULT GetInputEdgeDescription(uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) mut
			{
				return VT.GetInputEdgeDescription(&this, inputIndex, edgeDescription);
			}
			public HRESULT SetOutputEdgeDescription(uint32 outputIndex, MLOperatorEdgeDescription* edgeDescription) mut
			{
				return VT.SetOutputEdgeDescription(&this, outputIndex, edgeDescription);
			}
			[CRepr]
			public struct VTable : IMLOperatorAttributes.VTable
			{
				public new function uint32(IMLOperatorTypeInferenceContext *self) GetInputCount;
				public new function uint32(IMLOperatorTypeInferenceContext *self) GetOutputCount;
				public new function Boolean(IMLOperatorTypeInferenceContext *self, uint32 inputIndex) IsInputValid;
				public new function Boolean(IMLOperatorTypeInferenceContext *self, uint32 outputIndex) IsOutputValid;
				public new function HRESULT(IMLOperatorTypeInferenceContext *self, uint32 inputIndex, MLOperatorEdgeDescription* edgeDescription) GetInputEdgeDescription;
				public new function HRESULT(IMLOperatorTypeInferenceContext *self, uint32 outputIndex, MLOperatorEdgeDescription* edgeDescription) SetOutputEdgeDescription;
			}
		}
		[CRepr]
		public struct IMLOperatorTypeInferrer : IUnknown
		{
			public const new Guid IID = .(0x781aeb48, 0x9bcb, 0x4797, 0xbf, 0x77, 0x8b, 0xf4, 0x55, 0x21, 0x7b, 0xeb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InferOutputTypes(IMLOperatorTypeInferenceContext* context) mut
			{
				return VT.InferOutputTypes(&this, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorTypeInferrer *self, IMLOperatorTypeInferenceContext* context) InferOutputTypes;
			}
		}
		[CRepr]
		public struct IMLOperatorShapeInferrer : IUnknown
		{
			public const new Guid IID = .(0x540be5be, 0xa6c9, 0x40ee, 0x83, 0xf6, 0xd2, 0xb8, 0xb4, 0x0a, 0x77, 0x98);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT InferOutputShapes(IMLOperatorShapeInferenceContext* context) mut
			{
				return VT.InferOutputShapes(&this, context);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorShapeInferrer *self, IMLOperatorShapeInferenceContext* context) InferOutputShapes;
			}
		}
		[CRepr]
		public struct IMLOperatorKernelFactory : IUnknown
		{
			public const new Guid IID = .(0xef15ad6f, 0x0dc9, 0x4908, 0xab, 0x35, 0xa5, 0x75, 0xa3, 0x0d, 0xfb, 0xf8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateKernel(IMLOperatorKernelCreationContext* context, IMLOperatorKernel** kernel) mut
			{
				return VT.CreateKernel(&this, context, kernel);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorKernelFactory *self, IMLOperatorKernelCreationContext* context, IMLOperatorKernel** kernel) CreateKernel;
			}
		}
		[CRepr]
		public struct IMLOperatorRegistry : IUnknown
		{
			public const new Guid IID = .(0x2af9dd2d, 0xb516, 0x4672, 0x9a, 0xb5, 0x53, 0x0c, 0x20, 0x84, 0x93, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT RegisterOperatorSetSchema(MLOperatorSetId* operatorSetId, int32 baselineVersion, MLOperatorSchemaDescription** schema, uint32 schemaCount, IMLOperatorTypeInferrer* typeInferrer, IMLOperatorShapeInferrer* shapeInferrer) mut
			{
				return VT.RegisterOperatorSetSchema(&this, operatorSetId, baselineVersion, schema, schemaCount, typeInferrer, shapeInferrer);
			}
			public HRESULT RegisterOperatorKernel(MLOperatorKernelDescription* operatorKernel, IMLOperatorKernelFactory* operatorKernelFactory, IMLOperatorShapeInferrer* shapeInferrer) mut
			{
				return VT.RegisterOperatorKernel(&this, operatorKernel, operatorKernelFactory, shapeInferrer);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IMLOperatorRegistry *self, MLOperatorSetId* operatorSetId, int32 baselineVersion, MLOperatorSchemaDescription** schema, uint32 schemaCount, IMLOperatorTypeInferrer* typeInferrer, IMLOperatorShapeInferrer* shapeInferrer) RegisterOperatorSetSchema;
				public new function HRESULT(IMLOperatorRegistry *self, MLOperatorKernelDescription* operatorKernel, IMLOperatorKernelFactory* operatorKernelFactory, IMLOperatorShapeInferrer* shapeInferrer) RegisterOperatorKernel;
			}
		}
		
		// --- Functions ---
		
		[Import("winml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT WinMLCreateRuntime(IWinMLRuntime** runtime);
		[Import("windows.ai.machinelearning.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT MLCreateOperatorRegistry(IMLOperatorRegistry** registry);
		
	}
}
