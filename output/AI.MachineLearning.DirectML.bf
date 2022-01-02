using System;

// namespace AI.MachineLearning.DirectML
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 DML_TARGET_VERSION = 16384;
		public const uint32 DML_TENSOR_DIMENSION_COUNT_MAX = 5;
		public const uint32 DML_TENSOR_DIMENSION_COUNT_MAX1 = 8;
		public const uint32 DML_TEMPORARY_BUFFER_ALIGNMENT = 256;
		public const uint32 DML_PERSISTENT_BUFFER_ALIGNMENT = 256;
		public const uint32 DML_MINIMUM_BUFFER_TENSOR_ALIGNMENT = 16;
		
		// --- Enums ---
		
		public enum DML_TENSOR_DATA_TYPE : int32
		{
			UNKNOWN = 0,
			FLOAT32 = 1,
			FLOAT16 = 2,
			UINT32 = 3,
			UINT16 = 4,
			UINT8 = 5,
			INT32 = 6,
			INT16 = 7,
			INT8 = 8,
			FLOAT64 = 9,
			UINT64 = 10,
			INT64 = 11,
		}
		public enum DML_TENSOR_TYPE : int32
		{
			INVALID = 0,
			BUFFER = 1,
		}
		public enum DML_TENSOR_FLAGS : uint32
		{
			NONE = 0,
			OWNED_BY_DML = 1,
		}
		[AllowDuplicates]
		public enum DML_OPERATOR_TYPE : int32
		{
			INVALID = 0,
			ELEMENT_WISE_IDENTITY = 1,
			ELEMENT_WISE_ABS = 2,
			ELEMENT_WISE_ACOS = 3,
			ELEMENT_WISE_ADD = 4,
			ELEMENT_WISE_ASIN = 5,
			ELEMENT_WISE_ATAN = 6,
			ELEMENT_WISE_CEIL = 7,
			ELEMENT_WISE_CLIP = 8,
			ELEMENT_WISE_COS = 9,
			ELEMENT_WISE_DIVIDE = 10,
			ELEMENT_WISE_EXP = 11,
			ELEMENT_WISE_FLOOR = 12,
			ELEMENT_WISE_LOG = 13,
			ELEMENT_WISE_LOGICAL_AND = 14,
			ELEMENT_WISE_LOGICAL_EQUALS = 15,
			ELEMENT_WISE_LOGICAL_GREATER_THAN = 16,
			ELEMENT_WISE_LOGICAL_LESS_THAN = 17,
			ELEMENT_WISE_LOGICAL_NOT = 18,
			ELEMENT_WISE_LOGICAL_OR = 19,
			ELEMENT_WISE_LOGICAL_XOR = 20,
			ELEMENT_WISE_MAX = 21,
			ELEMENT_WISE_MEAN = 22,
			ELEMENT_WISE_MIN = 23,
			ELEMENT_WISE_MULTIPLY = 24,
			ELEMENT_WISE_POW = 25,
			ELEMENT_WISE_CONSTANT_POW = 26,
			ELEMENT_WISE_RECIP = 27,
			ELEMENT_WISE_SIN = 28,
			ELEMENT_WISE_SQRT = 29,
			ELEMENT_WISE_SUBTRACT = 30,
			ELEMENT_WISE_TAN = 31,
			ELEMENT_WISE_THRESHOLD = 32,
			ELEMENT_WISE_QUANTIZE_LINEAR = 33,
			ELEMENT_WISE_DEQUANTIZE_LINEAR = 34,
			ACTIVATION_ELU = 35,
			ACTIVATION_HARDMAX = 36,
			ACTIVATION_HARD_SIGMOID = 37,
			ACTIVATION_IDENTITY = 38,
			ACTIVATION_LEAKY_RELU = 39,
			ACTIVATION_LINEAR = 40,
			ACTIVATION_LOG_SOFTMAX = 41,
			ACTIVATION_PARAMETERIZED_RELU = 42,
			ACTIVATION_PARAMETRIC_SOFTPLUS = 43,
			ACTIVATION_RELU = 44,
			ACTIVATION_SCALED_ELU = 45,
			ACTIVATION_SCALED_TANH = 46,
			ACTIVATION_SIGMOID = 47,
			ACTIVATION_SOFTMAX = 48,
			ACTIVATION_SOFTPLUS = 49,
			ACTIVATION_SOFTSIGN = 50,
			ACTIVATION_TANH = 51,
			ACTIVATION_THRESHOLDED_RELU = 52,
			CONVOLUTION = 53,
			GEMM = 54,
			REDUCE = 55,
			AVERAGE_POOLING = 56,
			LP_POOLING = 57,
			MAX_POOLING = 58,
			ROI_POOLING = 59,
			SLICE = 60,
			CAST = 61,
			SPLIT = 62,
			JOIN = 63,
			PADDING = 64,
			VALUE_SCALE_2D = 65,
			UPSAMPLE_2D = 66,
			GATHER = 67,
			SPACE_TO_DEPTH = 68,
			DEPTH_TO_SPACE = 69,
			TILE = 70,
			TOP_K = 71,
			BATCH_NORMALIZATION = 72,
			MEAN_VARIANCE_NORMALIZATION = 73,
			LOCAL_RESPONSE_NORMALIZATION = 74,
			LP_NORMALIZATION = 75,
			RNN = 76,
			LSTM = 77,
			GRU = 78,
			ELEMENT_WISE_SIGN = 79,
			ELEMENT_WISE_IS_NAN = 80,
			ELEMENT_WISE_ERF = 81,
			ELEMENT_WISE_SINH = 82,
			ELEMENT_WISE_COSH = 83,
			ELEMENT_WISE_TANH = 84,
			ELEMENT_WISE_ASINH = 85,
			ELEMENT_WISE_ACOSH = 86,
			ELEMENT_WISE_ATANH = 87,
			ELEMENT_WISE_IF = 88,
			ELEMENT_WISE_ADD1 = 89,
			ACTIVATION_SHRINK = 90,
			MAX_POOLING1 = 91,
			MAX_UNPOOLING = 92,
			DIAGONAL_MATRIX = 93,
			SCATTER_ELEMENTS = 94,
			SCATTER = 94,
			ONE_HOT = 95,
			RESAMPLE = 96,
			ELEMENT_WISE_BIT_SHIFT_LEFT = 97,
			ELEMENT_WISE_BIT_SHIFT_RIGHT = 98,
			ELEMENT_WISE_ROUND = 99,
			ELEMENT_WISE_IS_INFINITY = 100,
			ELEMENT_WISE_MODULUS_TRUNCATE = 101,
			ELEMENT_WISE_MODULUS_FLOOR = 102,
			FILL_VALUE_CONSTANT = 103,
			FILL_VALUE_SEQUENCE = 104,
			CUMULATIVE_SUMMATION = 105,
			REVERSE_SUBSEQUENCES = 106,
			GATHER_ELEMENTS = 107,
			GATHER_ND = 108,
			SCATTER_ND = 109,
			MAX_POOLING2 = 110,
			SLICE1 = 111,
			TOP_K1 = 112,
			DEPTH_TO_SPACE1 = 113,
			SPACE_TO_DEPTH1 = 114,
			MEAN_VARIANCE_NORMALIZATION1 = 115,
			RESAMPLE1 = 116,
			MATRIX_MULTIPLY_INTEGER = 117,
			QUANTIZED_LINEAR_MATRIX_MULTIPLY = 118,
			CONVOLUTION_INTEGER = 119,
			QUANTIZED_LINEAR_CONVOLUTION = 120,
			ELEMENT_WISE_BIT_AND = 121,
			ELEMENT_WISE_BIT_OR = 122,
			ELEMENT_WISE_BIT_XOR = 123,
			ELEMENT_WISE_BIT_NOT = 124,
			ELEMENT_WISE_BIT_COUNT = 125,
			ELEMENT_WISE_LOGICAL_GREATER_THAN_OR_EQUAL = 126,
			ELEMENT_WISE_LOGICAL_LESS_THAN_OR_EQUAL = 127,
			ACTIVATION_CELU = 128,
			ACTIVATION_RELU_GRAD = 129,
			AVERAGE_POOLING_GRAD = 130,
			MAX_POOLING_GRAD = 131,
			RANDOM_GENERATOR = 132,
			NONZERO_COORDINATES = 133,
			RESAMPLE_GRAD = 134,
			SLICE_GRAD = 135,
			ADAM_OPTIMIZER = 136,
			ARGMIN = 137,
			ARGMAX = 138,
			ROI_ALIGN = 139,
			GATHER_ND1 = 140,
			ELEMENT_WISE_ATAN_YX = 141,
			ELEMENT_WISE_CLIP_GRAD = 142,
			ELEMENT_WISE_DIFFERENCE_SQUARE = 143,
			LOCAL_RESPONSE_NORMALIZATION_GRAD = 144,
			CUMULATIVE_PRODUCT = 145,
			BATCH_NORMALIZATION_GRAD = 146,
			ELEMENT_WISE_QUANTIZED_LINEAR_ADD = 147,
			DYNAMIC_QUANTIZE_LINEAR = 148,
			ROI_ALIGN1 = 149,
		}
		public enum DML_REDUCE_FUNCTION : int32
		{
			ARGMAX = 0,
			ARGMIN = 1,
			AVERAGE = 2,
			L1 = 3,
			L2 = 4,
			LOG_SUM = 5,
			LOG_SUM_EXP = 6,
			MAX = 7,
			MIN = 8,
			MULTIPLY = 9,
			SUM = 10,
			SUM_SQUARE = 11,
		}
		public enum DML_MATRIX_TRANSFORM : int32
		{
			NONE = 0,
			TRANSPOSE = 1,
		}
		public enum DML_CONVOLUTION_MODE : int32
		{
			CONVOLUTION = 0,
			CROSS_CORRELATION = 1,
		}
		public enum DML_CONVOLUTION_DIRECTION : int32
		{
			FORWARD = 0,
			BACKWARD = 1,
		}
		public enum DML_PADDING_MODE : int32
		{
			CONSTANT = 0,
			EDGE = 1,
			REFLECTION = 2,
			SYMMETRIC = 3,
		}
		public enum DML_INTERPOLATION_MODE : int32
		{
			NEAREST_NEIGHBOR = 0,
			LINEAR = 1,
		}
		public enum DML_RECURRENT_NETWORK_DIRECTION : int32
		{
			FORWARD = 0,
			BACKWARD = 1,
			BIDIRECTIONAL = 2,
		}
		public enum DML_ROUNDING_MODE : int32
		{
			HALVES_TO_NEAREST_EVEN = 0,
			TOWARD_ZERO = 1,
			TOWARD_INFINITY = 2,
		}
		public enum DML_IS_INFINITY_MODE : int32
		{
			EITHER = 0,
			POSITIVE = 1,
			NEGATIVE = 2,
		}
		public enum DML_AXIS_DIRECTION : int32
		{
			INCREASING = 0,
			DECREASING = 1,
		}
		public enum DML_DEPTH_SPACE_ORDER : int32
		{
			DEPTH_COLUMN_ROW = 0,
			COLUMN_ROW_DEPTH = 1,
		}
		public enum DML_RANDOM_GENERATOR_TYPE : int32
		{
			TYPE_PHILOX_4X32_10 = 0,
		}
		public enum DML_FEATURE_LEVEL : int32
		{
			_1_0 = 4096,
			_2_0 = 8192,
			_2_1 = 8448,
			_3_0 = 12288,
			_3_1 = 12544,
			_4_0 = 16384,
		}
		public enum DML_FEATURE : int32
		{
			TENSOR_DATA_TYPE_SUPPORT = 0,
			FEATURE_LEVELS = 1,
		}
		public enum DML_EXECUTION_FLAGS : uint32
		{
			NONE = 0,
			ALLOW_HALF_PRECISION_COMPUTATION = 1,
			DISABLE_META_COMMANDS = 2,
			DESCRIPTORS_VOLATILE = 4,
		}
		public enum DML_CREATE_DEVICE_FLAGS : uint32
		{
			NONE = 0,
			DEBUG = 1,
		}
		public enum DML_BINDING_TYPE : int32
		{
			NONE = 0,
			BUFFER = 1,
			BUFFER_ARRAY = 2,
		}
		public enum DML_GRAPH_EDGE_TYPE : int32
		{
			INVALID = 0,
			INPUT = 1,
			OUTPUT = 2,
			INTERMEDIATE = 3,
		}
		public enum DML_GRAPH_NODE_TYPE : int32
		{
			INVALID = 0,
			OPERATOR = 1,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct DML_BUFFER_TENSOR_DESC
		{
			public DML_TENSOR_DATA_TYPE DataType;
			public DML_TENSOR_FLAGS Flags;
			public uint32 DimensionCount;
			public uint32* Sizes;
			public uint32* Strides;
			public uint64 TotalTensorSizeInBytes;
			public uint32 GuaranteedBaseOffsetAlignment;
		}
		[CRepr]
		public struct DML_TENSOR_DESC
		{
			public DML_TENSOR_TYPE Type;
			public void* Desc;
		}
		[CRepr]
		public struct DML_SCALE_BIAS
		{
			public float Scale;
			public float Bias;
		}
		[CRepr]
		public struct DML_SIZE_2D
		{
			public uint32 Width;
			public uint32 Height;
		}
		[CRepr, Union]
		public struct DML_SCALAR_UNION
		{
			public uint8[8] Bytes;
			public int8 Int8;
			public uint8 UInt8;
			public int16 Int16;
			public uint16 UInt16;
			public int32 Int32;
			public uint32 UInt32;
			public int64 Int64;
			public uint64 UInt64;
			public float Float32;
			public double Float64;
		}
		[CRepr]
		public struct DML_OPERATOR_DESC
		{
			public DML_OPERATOR_TYPE Type;
			public void* Desc;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_IDENTITY_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ABS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ACOS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ADD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ADD1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ASIN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ATAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_CEIL_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_CLIP_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
			public float Min;
			public float Max;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_COS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_DIVIDE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_EXP_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_FLOOR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOG_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_AND_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_EQUALS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_GREATER_THAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_LESS_THAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_NOT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_OR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_XOR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MAX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MEAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MIN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MULTIPLY_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_POW_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ExponentTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_CONSTANT_POW_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
			public float Exponent;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_RECIP_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_SIN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_SQRT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_SUBTRACT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_TAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_THRESHOLD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
			public float Min;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_QUANTIZE_LINEAR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* ZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_DEQUANTIZE_LINEAR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* ZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_ELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
		}
		[CRepr]
		public struct DML_ACTIVATION_HARDMAX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_HARD_SIGMOID_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
			public float Beta;
		}
		[CRepr]
		public struct DML_ACTIVATION_IDENTITY_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_LEAKY_RELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
		}
		[CRepr]
		public struct DML_ACTIVATION_LINEAR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
			public float Beta;
		}
		[CRepr]
		public struct DML_ACTIVATION_LOG_SOFTMAX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_PARAMETERIZED_RELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* SlopeTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_PARAMETRIC_SOFTPLUS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
			public float Beta;
		}
		[CRepr]
		public struct DML_ACTIVATION_RELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_SCALED_ELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
			public float Gamma;
		}
		[CRepr]
		public struct DML_ACTIVATION_SCALED_TANH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
			public float Beta;
		}
		[CRepr]
		public struct DML_ACTIVATION_SIGMOID_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_SOFTMAX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_SOFTPLUS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Steepness;
		}
		[CRepr]
		public struct DML_ACTIVATION_SOFTSIGN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_TANH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_THRESHOLDED_RELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
		}
		[CRepr]
		public struct DML_CONVOLUTION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* FilterTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_CONVOLUTION_MODE Mode;
			public DML_CONVOLUTION_DIRECTION Direction;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* Dilations;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32* OutputPadding;
			public uint32 GroupCount;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_GEMM_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* CTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_MATRIX_TRANSFORM TransA;
			public DML_MATRIX_TRANSFORM TransB;
			public float Alpha;
			public float Beta;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_REDUCE_OPERATOR_DESC
		{
			public DML_REDUCE_FUNCTION Function;
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 AxisCount;
			public uint32* Axes;
		}
		[CRepr]
		public struct DML_AVERAGE_POOLING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public BOOL IncludePadding;
		}
		[CRepr]
		public struct DML_LP_POOLING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32 P;
		}
		[CRepr]
		public struct DML_MAX_POOLING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
		}
		[CRepr]
		public struct DML_ROI_POOLING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ROITensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float SpatialScale;
			public DML_SIZE_2D PooledSize;
		}
		[CRepr]
		public struct DML_SLICE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Offsets;
			public uint32* Sizes;
			public uint32* Strides;
		}
		[CRepr]
		public struct DML_CAST_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_SPLIT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public uint32 OutputCount;
			public DML_TENSOR_DESC* OutputTensors;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_JOIN_OPERATOR_DESC
		{
			public uint32 InputCount;
			public DML_TENSOR_DESC* InputTensors;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_PADDING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_PADDING_MODE PaddingMode;
			public float PaddingValue;
			public uint32 DimensionCount;
			public uint32* StartPadding;
			public uint32* EndPadding;
		}
		[CRepr]
		public struct DML_VALUE_SCALE_2D_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Scale;
			public uint32 ChannelCount;
			public float* Bias;
		}
		[CRepr]
		public struct DML_UPSAMPLE_2D_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SIZE_2D ScaleSize;
			public DML_INTERPOLATION_MODE InterpolationMode;
		}
		[CRepr]
		public struct DML_GATHER_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
			public uint32 IndexDimensions;
		}
		[CRepr]
		public struct DML_SPACE_TO_DEPTH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 BlockSize;
		}
		[CRepr]
		public struct DML_DEPTH_TO_SPACE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 BlockSize;
		}
		[CRepr]
		public struct DML_TILE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 RepeatsCount;
			public uint32* Repeats;
		}
		[CRepr]
		public struct DML_TOP_K_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputValueTensor;
			public DML_TENSOR_DESC* OutputIndexTensor;
			public uint32 Axis;
			public uint32 K;
		}
		[CRepr]
		public struct DML_BATCH_NORMALIZATION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* MeanTensor;
			public DML_TENSOR_DESC* VarianceTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public BOOL Spatial;
			public float Epsilon;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_MEAN_VARIANCE_NORMALIZATION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public BOOL CrossChannel;
			public BOOL NormalizeVariance;
			public float Epsilon;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_LOCAL_RESPONSE_NORMALIZATION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public BOOL CrossChannel;
			public uint32 LocalSize;
			public float Alpha;
			public float Beta;
			public float Bias;
		}
		[CRepr]
		public struct DML_LP_NORMALIZATION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
			public float Epsilon;
			public uint32 P;
		}
		[CRepr]
		public struct DML_RNN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* WeightTensor;
			public DML_TENSOR_DESC* RecurrenceTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* HiddenInitTensor;
			public DML_TENSOR_DESC* SequenceLengthsTensor;
			public DML_TENSOR_DESC* OutputSequenceTensor;
			public DML_TENSOR_DESC* OutputSingleTensor;
			public uint32 ActivationDescCount;
			public DML_OPERATOR_DESC* ActivationDescs;
			public DML_RECURRENT_NETWORK_DIRECTION Direction;
		}
		[CRepr]
		public struct DML_LSTM_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* WeightTensor;
			public DML_TENSOR_DESC* RecurrenceTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* HiddenInitTensor;
			public DML_TENSOR_DESC* CellMemInitTensor;
			public DML_TENSOR_DESC* SequenceLengthsTensor;
			public DML_TENSOR_DESC* PeepholeTensor;
			public DML_TENSOR_DESC* OutputSequenceTensor;
			public DML_TENSOR_DESC* OutputSingleTensor;
			public DML_TENSOR_DESC* OutputCellSingleTensor;
			public uint32 ActivationDescCount;
			public DML_OPERATOR_DESC* ActivationDescs;
			public DML_RECURRENT_NETWORK_DIRECTION Direction;
			public float ClipThreshold;
			public BOOL UseClipThreshold;
			public BOOL CoupleInputForget;
		}
		[CRepr]
		public struct DML_GRU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* WeightTensor;
			public DML_TENSOR_DESC* RecurrenceTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* HiddenInitTensor;
			public DML_TENSOR_DESC* SequenceLengthsTensor;
			public DML_TENSOR_DESC* OutputSequenceTensor;
			public DML_TENSOR_DESC* OutputSingleTensor;
			public uint32 ActivationDescCount;
			public DML_OPERATOR_DESC* ActivationDescs;
			public DML_RECURRENT_NETWORK_DIRECTION Direction;
			public BOOL LinearBeforeReset;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_SIGN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_IS_NAN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ERF_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_SINH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_COSH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_TANH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ASINH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ACOSH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ATANH_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_SCALE_BIAS* ScaleBias;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_IF_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ConditionTensor;
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_SHRINK_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Bias;
			public float Threshold;
		}
		[CRepr]
		public struct DML_MAX_POOLING1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DESC* OutputIndicesTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
		}
		[CRepr]
		public struct DML_MAX_UNPOOLING_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_DIAGONAL_MATRIX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* OutputTensor;
			public int32 Offset;
			public float Value;
		}
		[CRepr]
		public struct DML_SCATTER_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* UpdatesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_ONE_HOT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* ValuesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_RESAMPLE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_INTERPOLATION_MODE InterpolationMode;
			public uint32 ScaleCount;
			public float* Scales;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_SHIFT_LEFT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_SHIFT_RIGHT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ROUND_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_ROUNDING_MODE RoundingMode;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_IS_INFINITY_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_IS_INFINITY_MODE InfinityMode;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MODULUS_TRUNCATE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_MODULUS_FLOOR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_FILL_VALUE_CONSTANT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DATA_TYPE ValueDataType;
			public DML_SCALAR_UNION Value;
		}
		[CRepr]
		public struct DML_FILL_VALUE_SEQUENCE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DATA_TYPE ValueDataType;
			public DML_SCALAR_UNION ValueStart;
			public DML_SCALAR_UNION ValueDelta;
		}
		[CRepr]
		public struct DML_CUMULATIVE_SUMMATION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
			public DML_AXIS_DIRECTION AxisDirection;
			public BOOL HasExclusiveSum;
		}
		[CRepr]
		public struct DML_REVERSE_SUBSEQUENCES_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* SequenceLengthsTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_GATHER_ELEMENTS_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
		}
		[CRepr]
		public struct DML_GATHER_ND_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 InputDimensionCount;
			public uint32 IndicesDimensionCount;
		}
		[CRepr]
		public struct DML_SCATTER_ND_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* UpdatesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 InputDimensionCount;
			public uint32 IndicesDimensionCount;
		}
		[CRepr]
		public struct DML_MAX_POOLING2_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DESC* OutputIndicesTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32* Dilations;
		}
		[CRepr]
		public struct DML_SLICE1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* InputWindowOffsets;
			public uint32* InputWindowSizes;
			public int32* InputWindowStrides;
		}
		[CRepr]
		public struct DML_TOP_K1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputValueTensor;
			public DML_TENSOR_DESC* OutputIndexTensor;
			public uint32 Axis;
			public uint32 K;
			public DML_AXIS_DIRECTION AxisDirection;
		}
		[CRepr]
		public struct DML_DEPTH_TO_SPACE1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 BlockSize;
			public DML_DEPTH_SPACE_ORDER Order;
		}
		[CRepr]
		public struct DML_SPACE_TO_DEPTH1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 BlockSize;
			public DML_DEPTH_SPACE_ORDER Order;
		}
		[CRepr]
		public struct DML_MEAN_VARIANCE_NORMALIZATION1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 AxisCount;
			public uint32* Axes;
			public BOOL NormalizeVariance;
			public float Epsilon;
			public DML_OPERATOR_DESC* FusedActivation;
		}
		[CRepr]
		public struct DML_RESAMPLE1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_INTERPOLATION_MODE InterpolationMode;
			public uint32 DimensionCount;
			public float* Scales;
			public float* InputPixelOffsets;
			public float* OutputPixelOffsets;
		}
		[CRepr]
		public struct DML_MATRIX_MULTIPLY_INTEGER_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* AZeroPointTensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* BZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_QUANTIZED_LINEAR_MATRIX_MULTIPLY_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* AScaleTensor;
			public DML_TENSOR_DESC* AZeroPointTensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* BScaleTensor;
			public DML_TENSOR_DESC* BZeroPointTensor;
			public DML_TENSOR_DESC* OutputScaleTensor;
			public DML_TENSOR_DESC* OutputZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_CONVOLUTION_INTEGER_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputZeroPointTensor;
			public DML_TENSOR_DESC* FilterTensor;
			public DML_TENSOR_DESC* FilterZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* Dilations;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32 GroupCount;
		}
		[CRepr]
		public struct DML_QUANTIZED_LINEAR_CONVOLUTION_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputScaleTensor;
			public DML_TENSOR_DESC* InputZeroPointTensor;
			public DML_TENSOR_DESC* FilterTensor;
			public DML_TENSOR_DESC* FilterScaleTensor;
			public DML_TENSOR_DESC* FilterZeroPointTensor;
			public DML_TENSOR_DESC* BiasTensor;
			public DML_TENSOR_DESC* OutputScaleTensor;
			public DML_TENSOR_DESC* OutputZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* Dilations;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32 GroupCount;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_AND_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_OR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_XOR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_NOT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_BIT_COUNT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_GREATER_THAN_OR_EQUAL_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_LOGICAL_LESS_THAN_OR_EQUAL_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ACTIVATION_CELU_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public float Alpha;
		}
		[CRepr]
		public struct DML_ACTIVATION_RELU_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
		}
		[CRepr]
		public struct DML_AVERAGE_POOLING_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public BOOL IncludePadding;
		}
		[CRepr]
		public struct DML_MAX_POOLING_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public uint32 DimensionCount;
			public uint32* Strides;
			public uint32* WindowSize;
			public uint32* StartPadding;
			public uint32* EndPadding;
			public uint32* Dilations;
		}
		[CRepr]
		public struct DML_RANDOM_GENERATOR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputStateTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DESC* OutputStateTensor;
			public DML_RANDOM_GENERATOR_TYPE Type;
		}
		[CRepr]
		public struct DML_NONZERO_COORDINATES_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputCountTensor;
			public DML_TENSOR_DESC* OutputCoordinatesTensor;
		}
		[CRepr]
		public struct DML_RESAMPLE_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public DML_INTERPOLATION_MODE InterpolationMode;
			public uint32 DimensionCount;
			public float* Scales;
			public float* InputPixelOffsets;
			public float* OutputPixelOffsets;
		}
		[CRepr]
		public struct DML_SLICE_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public uint32 DimensionCount;
			public uint32* InputWindowOffsets;
			public uint32* InputWindowSizes;
			public int32* InputWindowStrides;
		}
		[CRepr]
		public struct DML_ADAM_OPTIMIZER_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputParametersTensor;
			public DML_TENSOR_DESC* InputFirstMomentTensor;
			public DML_TENSOR_DESC* InputSecondMomentTensor;
			public DML_TENSOR_DESC* GradientTensor;
			public DML_TENSOR_DESC* TrainingStepTensor;
			public DML_TENSOR_DESC* OutputParametersTensor;
			public DML_TENSOR_DESC* OutputFirstMomentTensor;
			public DML_TENSOR_DESC* OutputSecondMomentTensor;
			public float LearningRate;
			public float Beta1;
			public float Beta2;
			public float Epsilon;
		}
		[CRepr]
		public struct DML_ARGMIN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 AxisCount;
			public uint32* Axes;
			public DML_AXIS_DIRECTION AxisDirection;
		}
		[CRepr]
		public struct DML_ARGMAX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 AxisCount;
			public uint32* Axes;
			public DML_AXIS_DIRECTION AxisDirection;
		}
		[CRepr]
		public struct DML_ROI_ALIGN_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ROITensor;
			public DML_TENSOR_DESC* BatchIndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_REDUCE_FUNCTION ReductionFunction;
			public DML_INTERPOLATION_MODE InterpolationMode;
			public float SpatialScaleX;
			public float SpatialScaleY;
			public float OutOfBoundsInputValue;
			public uint32 MinimumSamplesPerOutput;
			public uint32 MaximumSamplesPerOutput;
		}
		[CRepr]
		public struct DML_GATHER_ND1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* IndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 InputDimensionCount;
			public uint32 IndicesDimensionCount;
			public uint32 BatchDimensionCount;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_ATAN_YX_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_CLIP_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public float Min;
			public float Max;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_DIFFERENCE_SQUARE_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_LOCAL_RESPONSE_NORMALIZATION_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public BOOL CrossChannel;
			public uint32 LocalSize;
			public float Alpha;
			public float Beta;
			public float Bias;
		}
		[CRepr]
		public struct DML_CUMULATIVE_PRODUCT_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public uint32 Axis;
			public DML_AXIS_DIRECTION AxisDirection;
			public BOOL HasExclusiveProduct;
		}
		[CRepr]
		public struct DML_BATCH_NORMALIZATION_GRAD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* InputGradientTensor;
			public DML_TENSOR_DESC* MeanTensor;
			public DML_TENSOR_DESC* VarianceTensor;
			public DML_TENSOR_DESC* ScaleTensor;
			public DML_TENSOR_DESC* OutputGradientTensor;
			public DML_TENSOR_DESC* OutputScaleGradientTensor;
			public DML_TENSOR_DESC* OutputBiasGradientTensor;
			public float Epsilon;
		}
		[CRepr]
		public struct DML_ELEMENT_WISE_QUANTIZED_LINEAR_ADD_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* ATensor;
			public DML_TENSOR_DESC* AScaleTensor;
			public DML_TENSOR_DESC* AZeroPointTensor;
			public DML_TENSOR_DESC* BTensor;
			public DML_TENSOR_DESC* BScaleTensor;
			public DML_TENSOR_DESC* BZeroPointTensor;
			public DML_TENSOR_DESC* OutputScaleTensor;
			public DML_TENSOR_DESC* OutputZeroPointTensor;
			public DML_TENSOR_DESC* OutputTensor;
		}
		[CRepr]
		public struct DML_DYNAMIC_QUANTIZE_LINEAR_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_TENSOR_DESC* OutputScaleTensor;
			public DML_TENSOR_DESC* OutputZeroPointTensor;
		}
		[CRepr]
		public struct DML_ROI_ALIGN1_OPERATOR_DESC
		{
			public DML_TENSOR_DESC* InputTensor;
			public DML_TENSOR_DESC* ROITensor;
			public DML_TENSOR_DESC* BatchIndicesTensor;
			public DML_TENSOR_DESC* OutputTensor;
			public DML_REDUCE_FUNCTION ReductionFunction;
			public DML_INTERPOLATION_MODE InterpolationMode;
			public float SpatialScaleX;
			public float SpatialScaleY;
			public float InputPixelOffset;
			public float OutputPixelOffset;
			public float OutOfBoundsInputValue;
			public uint32 MinimumSamplesPerOutput;
			public uint32 MaximumSamplesPerOutput;
			public BOOL AlignRegionsToCorners;
		}
		[CRepr]
		public struct DML_FEATURE_QUERY_TENSOR_DATA_TYPE_SUPPORT
		{
			public DML_TENSOR_DATA_TYPE DataType;
		}
		[CRepr]
		public struct DML_FEATURE_DATA_TENSOR_DATA_TYPE_SUPPORT
		{
			public BOOL IsSupported;
		}
		[CRepr]
		public struct DML_FEATURE_QUERY_FEATURE_LEVELS
		{
			public uint32 RequestedFeatureLevelCount;
			public DML_FEATURE_LEVEL* RequestedFeatureLevels;
		}
		[CRepr]
		public struct DML_FEATURE_DATA_FEATURE_LEVELS
		{
			public DML_FEATURE_LEVEL MaxSupportedFeatureLevel;
		}
		[CRepr]
		public struct DML_BINDING_TABLE_DESC
		{
			public IDMLDispatchable* Dispatchable;
			public D3D12_CPU_DESCRIPTOR_HANDLE CPUDescriptorHandle;
			public D3D12_GPU_DESCRIPTOR_HANDLE GPUDescriptorHandle;
			public uint32 SizeInDescriptors;
		}
		[CRepr]
		public struct DML_BINDING_PROPERTIES
		{
			public uint32 RequiredDescriptorCount;
			public uint64 TemporaryResourceSize;
			public uint64 PersistentResourceSize;
		}
		[CRepr]
		public struct DML_BINDING_DESC
		{
			public DML_BINDING_TYPE Type;
			public void* Desc;
		}
		[CRepr]
		public struct DML_BUFFER_BINDING
		{
			public ID3D12Resource* Buffer;
			public uint64 Offset;
			public uint64 SizeInBytes;
		}
		[CRepr]
		public struct DML_BUFFER_ARRAY_BINDING
		{
			public uint32 BindingCount;
			public DML_BUFFER_BINDING* Bindings;
		}
		[CRepr]
		public struct DML_GRAPH_EDGE_DESC
		{
			public DML_GRAPH_EDGE_TYPE Type;
			public void* Desc;
		}
		[CRepr]
		public struct DML_INPUT_GRAPH_EDGE_DESC
		{
			public uint32 GraphInputIndex;
			public uint32 ToNodeIndex;
			public uint32 ToNodeInputIndex;
			public PSTR Name;
		}
		[CRepr]
		public struct DML_OUTPUT_GRAPH_EDGE_DESC
		{
			public uint32 FromNodeIndex;
			public uint32 FromNodeOutputIndex;
			public uint32 GraphOutputIndex;
			public PSTR Name;
		}
		[CRepr]
		public struct DML_INTERMEDIATE_GRAPH_EDGE_DESC
		{
			public uint32 FromNodeIndex;
			public uint32 FromNodeOutputIndex;
			public uint32 ToNodeIndex;
			public uint32 ToNodeInputIndex;
			public PSTR Name;
		}
		[CRepr]
		public struct DML_GRAPH_NODE_DESC
		{
			public DML_GRAPH_NODE_TYPE Type;
			public void* Desc;
		}
		[CRepr]
		public struct DML_OPERATOR_GRAPH_NODE_DESC
		{
			public IDMLOperator* Operator;
			public PSTR Name;
		}
		[CRepr]
		public struct DML_GRAPH_DESC
		{
			public uint32 InputCount;
			public uint32 OutputCount;
			public uint32 NodeCount;
			public DML_GRAPH_NODE_DESC* Nodes;
			public uint32 InputEdgeCount;
			public DML_GRAPH_EDGE_DESC* InputEdges;
			public uint32 OutputEdgeCount;
			public DML_GRAPH_EDGE_DESC* OutputEdges;
			public uint32 IntermediateEdgeCount;
			public DML_GRAPH_EDGE_DESC* IntermediateEdges;
		}
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IDMLObject : IUnknown
		{
			public const new Guid IID = .(0xc8263aac, 0x9e0c, 0x4a2d, 0x9b, 0x8e, 0x00, 0x75, 0x21, 0xa3, 0x31, 0x7c);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetPrivateData(in Guid guid, out uint32 dataSize, void* data) mut => VT.GetPrivateData(ref this, guid, out dataSize, data);
			public HRESULT SetPrivateData(in Guid guid, uint32 dataSize, void* data) mut => VT.SetPrivateData(ref this, guid, dataSize, data);
			public HRESULT SetPrivateDataInterface(in Guid guid, IUnknown* data) mut => VT.SetPrivateDataInterface(ref this, guid, data);
			public HRESULT SetName(PWSTR name) mut => VT.SetName(ref this, name);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLObject self, in Guid guid, out uint32 dataSize, void* data) GetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLObject self, in Guid guid, uint32 dataSize, void* data) SetPrivateData;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLObject self, in Guid guid, IUnknown* data) SetPrivateDataInterface;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLObject self, PWSTR name) SetName;
			}
		}
		[CRepr]
		public struct IDMLDevice : IDMLObject
		{
			public const new Guid IID = .(0x6dbd6437, 0x96fd, 0x423f, 0xa9, 0x8c, 0xae, 0x5e, 0x7c, 0x2a, 0x57, 0x3f);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CheckFeatureSupport(DML_FEATURE feature, uint32 featureQueryDataSize, void* featureQueryData, uint32 featureSupportDataSize, void* featureSupportData) mut => VT.CheckFeatureSupport(ref this, feature, featureQueryDataSize, featureQueryData, featureSupportDataSize, featureSupportData);
			public HRESULT CreateOperator(in DML_OPERATOR_DESC desc, in Guid riid, void** ppv) mut => VT.CreateOperator(ref this, desc, riid, ppv);
			public HRESULT CompileOperator(ref IDMLOperator op, DML_EXECUTION_FLAGS flags, in Guid riid, void** ppv) mut => VT.CompileOperator(ref this, ref op, flags, riid, ppv);
			public HRESULT CreateOperatorInitializer(uint32 operatorCount, IDMLCompiledOperator** operators, in Guid riid, void** ppv) mut => VT.CreateOperatorInitializer(ref this, operatorCount, operators, riid, ppv);
			public HRESULT CreateCommandRecorder(in Guid riid, void** ppv) mut => VT.CreateCommandRecorder(ref this, riid, ppv);
			public HRESULT CreateBindingTable(DML_BINDING_TABLE_DESC* desc, in Guid riid, void** ppv) mut => VT.CreateBindingTable(ref this, desc, riid, ppv);
			public HRESULT Evict(uint32 count, IDMLPageable** ppObjects) mut => VT.Evict(ref this, count, ppObjects);
			public HRESULT MakeResident(uint32 count, IDMLPageable** ppObjects) mut => VT.MakeResident(ref this, count, ppObjects);
			public HRESULT GetDeviceRemovedReason() mut => VT.GetDeviceRemovedReason(ref this);
			public HRESULT GetParentDevice(in Guid riid, void** ppv) mut => VT.GetParentDevice(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IDMLObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, DML_FEATURE feature, uint32 featureQueryDataSize, void* featureQueryData, uint32 featureSupportDataSize, void* featureSupportData) CheckFeatureSupport;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, in DML_OPERATOR_DESC desc, in Guid riid, void** ppv) CreateOperator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, ref IDMLOperator op, DML_EXECUTION_FLAGS flags, in Guid riid, void** ppv) CompileOperator;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, uint32 operatorCount, IDMLCompiledOperator** operators, in Guid riid, void** ppv) CreateOperatorInitializer;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, in Guid riid, void** ppv) CreateCommandRecorder;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, DML_BINDING_TABLE_DESC* desc, in Guid riid, void** ppv) CreateBindingTable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, uint32 count, IDMLPageable** ppObjects) Evict;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, uint32 count, IDMLPageable** ppObjects) MakeResident;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self) GetDeviceRemovedReason;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice self, in Guid riid, void** ppv) GetParentDevice;
			}
		}
		[CRepr]
		public struct IDMLDeviceChild : IDMLObject
		{
			public const new Guid IID = .(0x27e83142, 0x8165, 0x49e3, 0x97, 0x4e, 0x2f, 0xd6, 0x6e, 0x4c, 0xb6, 0x9d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDevice(in Guid riid, void** ppv) mut => VT.GetDevice(ref this, riid, ppv);

			[CRepr]
			public struct VTable : IDMLObject.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDeviceChild self, in Guid riid, void** ppv) GetDevice;
			}
		}
		[CRepr]
		public struct IDMLPageable : IDMLDeviceChild
		{
			public const new Guid IID = .(0xb1ab0825, 0x4542, 0x4a4b, 0x86, 0x17, 0x6d, 0xde, 0x6e, 0x8f, 0x62, 0x01);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDMLDeviceChild.VTable {}
		}
		[CRepr]
		public struct IDMLOperator : IDMLDeviceChild
		{
			public const new Guid IID = .(0x26caae7a, 0x3081, 0x4633, 0x95, 0x81, 0x22, 0x6f, 0xbe, 0x57, 0x69, 0x5d);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDMLDeviceChild.VTable {}
		}
		[CRepr]
		public struct IDMLDispatchable : IDMLPageable
		{
			public const new Guid IID = .(0xdcb821a8, 0x1039, 0x441e, 0x9f, 0x1c, 0xb1, 0x75, 0x9c, 0x2f, 0x3c, 0xec);
			
			public new VTable* VT { get => (.)vt; }
			
			public DML_BINDING_PROPERTIES GetBindingProperties() mut => VT.GetBindingProperties(ref this);

			[CRepr]
			public struct VTable : IDMLPageable.VTable
			{
				public new function [CallingConvention(.Stdcall)] DML_BINDING_PROPERTIES(ref IDMLDispatchable self) GetBindingProperties;
			}
		}
		[CRepr]
		public struct IDMLCompiledOperator : IDMLDispatchable
		{
			public const new Guid IID = .(0x6b15e56a, 0xbf5c, 0x4902, 0x92, 0xd8, 0xda, 0x3a, 0x65, 0x0a, 0xfe, 0xa4);
			
			public new VTable* VT { get => (.)vt; }
			
			[CRepr]
			public struct VTable : IDMLDispatchable.VTable {}
		}
		[CRepr]
		public struct IDMLOperatorInitializer : IDMLDispatchable
		{
			public const new Guid IID = .(0x427c1113, 0x435c, 0x469c, 0x86, 0x76, 0x4d, 0x5d, 0xd0, 0x72, 0xf8, 0x13);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT Reset(uint32 operatorCount, IDMLCompiledOperator** operators) mut => VT.Reset(ref this, operatorCount, operators);

			[CRepr]
			public struct VTable : IDMLDispatchable.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLOperatorInitializer self, uint32 operatorCount, IDMLCompiledOperator** operators) Reset;
			}
		}
		[CRepr]
		public struct IDMLBindingTable : IDMLDeviceChild
		{
			public const new Guid IID = .(0x29c687dc, 0xde74, 0x4e3b, 0xab, 0x00, 0x11, 0x68, 0xf2, 0xfc, 0x3c, 0xfc);
			
			public new VTable* VT { get => (.)vt; }
			
			public void BindInputs(uint32 bindingCount, DML_BINDING_DESC* bindings) mut => VT.BindInputs(ref this, bindingCount, bindings);
			public void BindOutputs(uint32 bindingCount, DML_BINDING_DESC* bindings) mut => VT.BindOutputs(ref this, bindingCount, bindings);
			public void BindTemporaryResource(DML_BINDING_DESC* binding) mut => VT.BindTemporaryResource(ref this, binding);
			public void BindPersistentResource(DML_BINDING_DESC* binding) mut => VT.BindPersistentResource(ref this, binding);
			public HRESULT Reset(DML_BINDING_TABLE_DESC* desc) mut => VT.Reset(ref this, desc);

			[CRepr]
			public struct VTable : IDMLDeviceChild.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDMLBindingTable self, uint32 bindingCount, DML_BINDING_DESC* bindings) BindInputs;
				public new function [CallingConvention(.Stdcall)] void(ref IDMLBindingTable self, uint32 bindingCount, DML_BINDING_DESC* bindings) BindOutputs;
				public new function [CallingConvention(.Stdcall)] void(ref IDMLBindingTable self, DML_BINDING_DESC* binding) BindTemporaryResource;
				public new function [CallingConvention(.Stdcall)] void(ref IDMLBindingTable self, DML_BINDING_DESC* binding) BindPersistentResource;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLBindingTable self, DML_BINDING_TABLE_DESC* desc) Reset;
			}
		}
		[CRepr]
		public struct IDMLCommandRecorder : IDMLDeviceChild
		{
			public const new Guid IID = .(0xe6857a76, 0x2e3e, 0x4fdd, 0xbf, 0xf4, 0x5d, 0x2b, 0xa1, 0x0f, 0xb4, 0x53);
			
			public new VTable* VT { get => (.)vt; }
			
			public void RecordDispatch(ref ID3D12CommandList commandList, ref IDMLDispatchable dispatchable, ref IDMLBindingTable bindings) mut => VT.RecordDispatch(ref this, ref commandList, ref dispatchable, ref bindings);

			[CRepr]
			public struct VTable : IDMLDeviceChild.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDMLCommandRecorder self, ref ID3D12CommandList commandList, ref IDMLDispatchable dispatchable, ref IDMLBindingTable bindings) RecordDispatch;
			}
		}
		[CRepr]
		public struct IDMLDebugDevice : IUnknown
		{
			public const new Guid IID = .(0x7d6f3ac9, 0x394a, 0x4ac3, 0x92, 0xa7, 0x39, 0x0c, 0xc5, 0x7a, 0x82, 0x17);
			
			public new VTable* VT { get => (.)vt; }
			
			public void SetMuteDebugOutput(BOOL mute) mut => VT.SetMuteDebugOutput(ref this, mute);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] void(ref IDMLDebugDevice self, BOOL mute) SetMuteDebugOutput;
			}
		}
		[CRepr]
		public struct IDMLDevice1 : IDMLDevice
		{
			public const new Guid IID = .(0xa0884f9a, 0xd2be, 0x4355, 0xaa, 0x5d, 0x59, 0x01, 0x28, 0x1a, 0xd1, 0xd2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CompileGraph(in DML_GRAPH_DESC desc, DML_EXECUTION_FLAGS flags, in Guid riid, void** ppv) mut => VT.CompileGraph(ref this, desc, flags, riid, ppv);

			[CRepr]
			public struct VTable : IDMLDevice.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IDMLDevice1 self, in DML_GRAPH_DESC desc, DML_EXECUTION_FLAGS flags, in Guid riid, void** ppv) CompileGraph;
			}
		}
		
		// --- Functions ---
		
		[Import("directml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMLCreateDevice(ref ID3D12Device d3d12Device, DML_CREATE_DEVICE_FLAGS flags, in Guid riid, void** ppv);
		[Import("directml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMLCreateDevice1(ref ID3D12Device d3d12Device, DML_CREATE_DEVICE_FLAGS flags, DML_FEATURE_LEVEL minimumFeatureLevel, in Guid riid, void** ppv);
	}
}
