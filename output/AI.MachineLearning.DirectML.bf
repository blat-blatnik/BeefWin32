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
		
		[AllowDuplicates]
		public enum DML_TENSOR_DATA_TYPE : int32
		{
			DML_TENSOR_DATA_TYPE_UNKNOWN = 0,
			DML_TENSOR_DATA_TYPE_FLOAT32 = 1,
			DML_TENSOR_DATA_TYPE_FLOAT16 = 2,
			DML_TENSOR_DATA_TYPE_UINT32 = 3,
			DML_TENSOR_DATA_TYPE_UINT16 = 4,
			DML_TENSOR_DATA_TYPE_UINT8 = 5,
			DML_TENSOR_DATA_TYPE_INT32 = 6,
			DML_TENSOR_DATA_TYPE_INT16 = 7,
			DML_TENSOR_DATA_TYPE_INT8 = 8,
			DML_TENSOR_DATA_TYPE_FLOAT64 = 9,
			DML_TENSOR_DATA_TYPE_UINT64 = 10,
			DML_TENSOR_DATA_TYPE_INT64 = 11,
		}
		[AllowDuplicates]
		public enum DML_TENSOR_TYPE : int32
		{
			DML_TENSOR_TYPE_INVALID = 0,
			DML_TENSOR_TYPE_BUFFER = 1,
		}
		[AllowDuplicates]
		public enum DML_TENSOR_FLAGS : uint32
		{
			DML_TENSOR_FLAG_NONE = 0,
			DML_TENSOR_FLAG_OWNED_BY_DML = 1,
		}
		[AllowDuplicates]
		public enum DML_OPERATOR_TYPE : int32
		{
			DML_OPERATOR_INVALID = 0,
			DML_OPERATOR_ELEMENT_WISE_IDENTITY = 1,
			DML_OPERATOR_ELEMENT_WISE_ABS = 2,
			DML_OPERATOR_ELEMENT_WISE_ACOS = 3,
			DML_OPERATOR_ELEMENT_WISE_ADD = 4,
			DML_OPERATOR_ELEMENT_WISE_ASIN = 5,
			DML_OPERATOR_ELEMENT_WISE_ATAN = 6,
			DML_OPERATOR_ELEMENT_WISE_CEIL = 7,
			DML_OPERATOR_ELEMENT_WISE_CLIP = 8,
			DML_OPERATOR_ELEMENT_WISE_COS = 9,
			DML_OPERATOR_ELEMENT_WISE_DIVIDE = 10,
			DML_OPERATOR_ELEMENT_WISE_EXP = 11,
			DML_OPERATOR_ELEMENT_WISE_FLOOR = 12,
			DML_OPERATOR_ELEMENT_WISE_LOG = 13,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_AND = 14,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_EQUALS = 15,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_GREATER_THAN = 16,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_LESS_THAN = 17,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_NOT = 18,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_OR = 19,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_XOR = 20,
			DML_OPERATOR_ELEMENT_WISE_MAX = 21,
			DML_OPERATOR_ELEMENT_WISE_MEAN = 22,
			DML_OPERATOR_ELEMENT_WISE_MIN = 23,
			DML_OPERATOR_ELEMENT_WISE_MULTIPLY = 24,
			DML_OPERATOR_ELEMENT_WISE_POW = 25,
			DML_OPERATOR_ELEMENT_WISE_CONSTANT_POW = 26,
			DML_OPERATOR_ELEMENT_WISE_RECIP = 27,
			DML_OPERATOR_ELEMENT_WISE_SIN = 28,
			DML_OPERATOR_ELEMENT_WISE_SQRT = 29,
			DML_OPERATOR_ELEMENT_WISE_SUBTRACT = 30,
			DML_OPERATOR_ELEMENT_WISE_TAN = 31,
			DML_OPERATOR_ELEMENT_WISE_THRESHOLD = 32,
			DML_OPERATOR_ELEMENT_WISE_QUANTIZE_LINEAR = 33,
			DML_OPERATOR_ELEMENT_WISE_DEQUANTIZE_LINEAR = 34,
			DML_OPERATOR_ACTIVATION_ELU = 35,
			DML_OPERATOR_ACTIVATION_HARDMAX = 36,
			DML_OPERATOR_ACTIVATION_HARD_SIGMOID = 37,
			DML_OPERATOR_ACTIVATION_IDENTITY = 38,
			DML_OPERATOR_ACTIVATION_LEAKY_RELU = 39,
			DML_OPERATOR_ACTIVATION_LINEAR = 40,
			DML_OPERATOR_ACTIVATION_LOG_SOFTMAX = 41,
			DML_OPERATOR_ACTIVATION_PARAMETERIZED_RELU = 42,
			DML_OPERATOR_ACTIVATION_PARAMETRIC_SOFTPLUS = 43,
			DML_OPERATOR_ACTIVATION_RELU = 44,
			DML_OPERATOR_ACTIVATION_SCALED_ELU = 45,
			DML_OPERATOR_ACTIVATION_SCALED_TANH = 46,
			DML_OPERATOR_ACTIVATION_SIGMOID = 47,
			DML_OPERATOR_ACTIVATION_SOFTMAX = 48,
			DML_OPERATOR_ACTIVATION_SOFTPLUS = 49,
			DML_OPERATOR_ACTIVATION_SOFTSIGN = 50,
			DML_OPERATOR_ACTIVATION_TANH = 51,
			DML_OPERATOR_ACTIVATION_THRESHOLDED_RELU = 52,
			DML_OPERATOR_CONVOLUTION = 53,
			DML_OPERATOR_GEMM = 54,
			DML_OPERATOR_REDUCE = 55,
			DML_OPERATOR_AVERAGE_POOLING = 56,
			DML_OPERATOR_LP_POOLING = 57,
			DML_OPERATOR_MAX_POOLING = 58,
			DML_OPERATOR_ROI_POOLING = 59,
			DML_OPERATOR_SLICE = 60,
			DML_OPERATOR_CAST = 61,
			DML_OPERATOR_SPLIT = 62,
			DML_OPERATOR_JOIN = 63,
			DML_OPERATOR_PADDING = 64,
			DML_OPERATOR_VALUE_SCALE_2D = 65,
			DML_OPERATOR_UPSAMPLE_2D = 66,
			DML_OPERATOR_GATHER = 67,
			DML_OPERATOR_SPACE_TO_DEPTH = 68,
			DML_OPERATOR_DEPTH_TO_SPACE = 69,
			DML_OPERATOR_TILE = 70,
			DML_OPERATOR_TOP_K = 71,
			DML_OPERATOR_BATCH_NORMALIZATION = 72,
			DML_OPERATOR_MEAN_VARIANCE_NORMALIZATION = 73,
			DML_OPERATOR_LOCAL_RESPONSE_NORMALIZATION = 74,
			DML_OPERATOR_LP_NORMALIZATION = 75,
			DML_OPERATOR_RNN = 76,
			DML_OPERATOR_LSTM = 77,
			DML_OPERATOR_GRU = 78,
			DML_OPERATOR_ELEMENT_WISE_SIGN = 79,
			DML_OPERATOR_ELEMENT_WISE_IS_NAN = 80,
			DML_OPERATOR_ELEMENT_WISE_ERF = 81,
			DML_OPERATOR_ELEMENT_WISE_SINH = 82,
			DML_OPERATOR_ELEMENT_WISE_COSH = 83,
			DML_OPERATOR_ELEMENT_WISE_TANH = 84,
			DML_OPERATOR_ELEMENT_WISE_ASINH = 85,
			DML_OPERATOR_ELEMENT_WISE_ACOSH = 86,
			DML_OPERATOR_ELEMENT_WISE_ATANH = 87,
			DML_OPERATOR_ELEMENT_WISE_IF = 88,
			DML_OPERATOR_ELEMENT_WISE_ADD1 = 89,
			DML_OPERATOR_ACTIVATION_SHRINK = 90,
			DML_OPERATOR_MAX_POOLING1 = 91,
			DML_OPERATOR_MAX_UNPOOLING = 92,
			DML_OPERATOR_DIAGONAL_MATRIX = 93,
			DML_OPERATOR_SCATTER_ELEMENTS = 94,
			DML_OPERATOR_SCATTER = 94,
			DML_OPERATOR_ONE_HOT = 95,
			DML_OPERATOR_RESAMPLE = 96,
			DML_OPERATOR_ELEMENT_WISE_BIT_SHIFT_LEFT = 97,
			DML_OPERATOR_ELEMENT_WISE_BIT_SHIFT_RIGHT = 98,
			DML_OPERATOR_ELEMENT_WISE_ROUND = 99,
			DML_OPERATOR_ELEMENT_WISE_IS_INFINITY = 100,
			DML_OPERATOR_ELEMENT_WISE_MODULUS_TRUNCATE = 101,
			DML_OPERATOR_ELEMENT_WISE_MODULUS_FLOOR = 102,
			DML_OPERATOR_FILL_VALUE_CONSTANT = 103,
			DML_OPERATOR_FILL_VALUE_SEQUENCE = 104,
			DML_OPERATOR_CUMULATIVE_SUMMATION = 105,
			DML_OPERATOR_REVERSE_SUBSEQUENCES = 106,
			DML_OPERATOR_GATHER_ELEMENTS = 107,
			DML_OPERATOR_GATHER_ND = 108,
			DML_OPERATOR_SCATTER_ND = 109,
			DML_OPERATOR_MAX_POOLING2 = 110,
			DML_OPERATOR_SLICE1 = 111,
			DML_OPERATOR_TOP_K1 = 112,
			DML_OPERATOR_DEPTH_TO_SPACE1 = 113,
			DML_OPERATOR_SPACE_TO_DEPTH1 = 114,
			DML_OPERATOR_MEAN_VARIANCE_NORMALIZATION1 = 115,
			DML_OPERATOR_RESAMPLE1 = 116,
			DML_OPERATOR_MATRIX_MULTIPLY_INTEGER = 117,
			DML_OPERATOR_QUANTIZED_LINEAR_MATRIX_MULTIPLY = 118,
			DML_OPERATOR_CONVOLUTION_INTEGER = 119,
			DML_OPERATOR_QUANTIZED_LINEAR_CONVOLUTION = 120,
			DML_OPERATOR_ELEMENT_WISE_BIT_AND = 121,
			DML_OPERATOR_ELEMENT_WISE_BIT_OR = 122,
			DML_OPERATOR_ELEMENT_WISE_BIT_XOR = 123,
			DML_OPERATOR_ELEMENT_WISE_BIT_NOT = 124,
			DML_OPERATOR_ELEMENT_WISE_BIT_COUNT = 125,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_GREATER_THAN_OR_EQUAL = 126,
			DML_OPERATOR_ELEMENT_WISE_LOGICAL_LESS_THAN_OR_EQUAL = 127,
			DML_OPERATOR_ACTIVATION_CELU = 128,
			DML_OPERATOR_ACTIVATION_RELU_GRAD = 129,
			DML_OPERATOR_AVERAGE_POOLING_GRAD = 130,
			DML_OPERATOR_MAX_POOLING_GRAD = 131,
			DML_OPERATOR_RANDOM_GENERATOR = 132,
			DML_OPERATOR_NONZERO_COORDINATES = 133,
			DML_OPERATOR_RESAMPLE_GRAD = 134,
			DML_OPERATOR_SLICE_GRAD = 135,
			DML_OPERATOR_ADAM_OPTIMIZER = 136,
			DML_OPERATOR_ARGMIN = 137,
			DML_OPERATOR_ARGMAX = 138,
			DML_OPERATOR_ROI_ALIGN = 139,
			DML_OPERATOR_GATHER_ND1 = 140,
			DML_OPERATOR_ELEMENT_WISE_ATAN_YX = 141,
			DML_OPERATOR_ELEMENT_WISE_CLIP_GRAD = 142,
			DML_OPERATOR_ELEMENT_WISE_DIFFERENCE_SQUARE = 143,
			DML_OPERATOR_LOCAL_RESPONSE_NORMALIZATION_GRAD = 144,
			DML_OPERATOR_CUMULATIVE_PRODUCT = 145,
			DML_OPERATOR_BATCH_NORMALIZATION_GRAD = 146,
			DML_OPERATOR_ELEMENT_WISE_QUANTIZED_LINEAR_ADD = 147,
			DML_OPERATOR_DYNAMIC_QUANTIZE_LINEAR = 148,
			DML_OPERATOR_ROI_ALIGN1 = 149,
		}
		[AllowDuplicates]
		public enum DML_REDUCE_FUNCTION : int32
		{
			DML_REDUCE_FUNCTION_ARGMAX = 0,
			DML_REDUCE_FUNCTION_ARGMIN = 1,
			DML_REDUCE_FUNCTION_AVERAGE = 2,
			DML_REDUCE_FUNCTION_L1 = 3,
			DML_REDUCE_FUNCTION_L2 = 4,
			DML_REDUCE_FUNCTION_LOG_SUM = 5,
			DML_REDUCE_FUNCTION_LOG_SUM_EXP = 6,
			DML_REDUCE_FUNCTION_MAX = 7,
			DML_REDUCE_FUNCTION_MIN = 8,
			DML_REDUCE_FUNCTION_MULTIPLY = 9,
			DML_REDUCE_FUNCTION_SUM = 10,
			DML_REDUCE_FUNCTION_SUM_SQUARE = 11,
		}
		[AllowDuplicates]
		public enum DML_MATRIX_TRANSFORM : int32
		{
			DML_MATRIX_TRANSFORM_NONE = 0,
			DML_MATRIX_TRANSFORM_TRANSPOSE = 1,
		}
		[AllowDuplicates]
		public enum DML_CONVOLUTION_MODE : int32
		{
			DML_CONVOLUTION_MODE_CONVOLUTION = 0,
			DML_CONVOLUTION_MODE_CROSS_CORRELATION = 1,
		}
		[AllowDuplicates]
		public enum DML_CONVOLUTION_DIRECTION : int32
		{
			DML_CONVOLUTION_DIRECTION_FORWARD = 0,
			DML_CONVOLUTION_DIRECTION_BACKWARD = 1,
		}
		[AllowDuplicates]
		public enum DML_PADDING_MODE : int32
		{
			DML_PADDING_MODE_CONSTANT = 0,
			DML_PADDING_MODE_EDGE = 1,
			DML_PADDING_MODE_REFLECTION = 2,
			DML_PADDING_MODE_SYMMETRIC = 3,
		}
		[AllowDuplicates]
		public enum DML_INTERPOLATION_MODE : int32
		{
			DML_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
			DML_INTERPOLATION_MODE_LINEAR = 1,
		}
		[AllowDuplicates]
		public enum DML_RECURRENT_NETWORK_DIRECTION : int32
		{
			DML_RECURRENT_NETWORK_DIRECTION_FORWARD = 0,
			DML_RECURRENT_NETWORK_DIRECTION_BACKWARD = 1,
			DML_RECURRENT_NETWORK_DIRECTION_BIDIRECTIONAL = 2,
		}
		[AllowDuplicates]
		public enum DML_ROUNDING_MODE : int32
		{
			DML_ROUNDING_MODE_HALVES_TO_NEAREST_EVEN = 0,
			DML_ROUNDING_MODE_TOWARD_ZERO = 1,
			DML_ROUNDING_MODE_TOWARD_INFINITY = 2,
		}
		[AllowDuplicates]
		public enum DML_IS_INFINITY_MODE : int32
		{
			DML_IS_INFINITY_MODE_EITHER = 0,
			DML_IS_INFINITY_MODE_POSITIVE = 1,
			DML_IS_INFINITY_MODE_NEGATIVE = 2,
		}
		[AllowDuplicates]
		public enum DML_AXIS_DIRECTION : int32
		{
			DML_AXIS_DIRECTION_INCREASING = 0,
			DML_AXIS_DIRECTION_DECREASING = 1,
		}
		[AllowDuplicates]
		public enum DML_DEPTH_SPACE_ORDER : int32
		{
			DML_DEPTH_SPACE_ORDER_DEPTH_COLUMN_ROW = 0,
			DML_DEPTH_SPACE_ORDER_COLUMN_ROW_DEPTH = 1,
		}
		[AllowDuplicates]
		public enum DML_RANDOM_GENERATOR_TYPE : int32
		{
			DML_RANDOM_GENERATOR_TYPE_PHILOX_4X32_10 = 0,
		}
		[AllowDuplicates]
		public enum DML_FEATURE_LEVEL : int32
		{
			DML_FEATURE_LEVEL_1_0 = 4096,
			DML_FEATURE_LEVEL_2_0 = 8192,
			DML_FEATURE_LEVEL_2_1 = 8448,
			DML_FEATURE_LEVEL_3_0 = 12288,
			DML_FEATURE_LEVEL_3_1 = 12544,
			DML_FEATURE_LEVEL_4_0 = 16384,
		}
		[AllowDuplicates]
		public enum DML_FEATURE : int32
		{
			DML_FEATURE_TENSOR_DATA_TYPE_SUPPORT = 0,
			DML_FEATURE_FEATURE_LEVELS = 1,
		}
		[AllowDuplicates]
		public enum DML_EXECUTION_FLAGS : uint32
		{
			DML_EXECUTION_FLAG_NONE = 0,
			DML_EXECUTION_FLAG_ALLOW_HALF_PRECISION_COMPUTATION = 1,
			DML_EXECUTION_FLAG_DISABLE_META_COMMANDS = 2,
			DML_EXECUTION_FLAG_DESCRIPTORS_VOLATILE = 4,
		}
		[AllowDuplicates]
		public enum DML_CREATE_DEVICE_FLAGS : uint32
		{
			DML_CREATE_DEVICE_FLAG_NONE = 0,
			DML_CREATE_DEVICE_FLAG_DEBUG = 1,
		}
		[AllowDuplicates]
		public enum DML_BINDING_TYPE : int32
		{
			DML_BINDING_TYPE_NONE = 0,
			DML_BINDING_TYPE_BUFFER = 1,
			DML_BINDING_TYPE_BUFFER_ARRAY = 2,
		}
		[AllowDuplicates]
		public enum DML_GRAPH_EDGE_TYPE : int32
		{
			DML_GRAPH_EDGE_TYPE_INVALID = 0,
			DML_GRAPH_EDGE_TYPE_INPUT = 1,
			DML_GRAPH_EDGE_TYPE_OUTPUT = 2,
			DML_GRAPH_EDGE_TYPE_INTERMEDIATE = 3,
		}
		[AllowDuplicates]
		public enum DML_GRAPH_NODE_TYPE : int32
		{
			DML_GRAPH_NODE_TYPE_INVALID = 0,
			DML_GRAPH_NODE_TYPE_OPERATOR = 1,
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
			public IDMLDispatchable Dispatchable;
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
			public ID3D12Resource Buffer;
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
			public IDMLOperator Operator;
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
		
		public struct IDMLObject {}
		public struct IDMLDevice {}
		public struct IDMLDeviceChild {}
		public struct IDMLPageable {}
		public struct IDMLOperator {}
		public struct IDMLDispatchable {}
		public struct IDMLCompiledOperator {}
		public struct IDMLOperatorInitializer {}
		public struct IDMLBindingTable {}
		public struct IDMLCommandRecorder {}
		public struct IDMLDebugDevice {}
		public struct IDMLDevice1 {}
		
		// --- Functions ---
		
		[Import("directml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMLCreateDevice(ID3D12Device d3d12Device, DML_CREATE_DEVICE_FLAGS flags, Guid* riid, void** ppv);
		[Import("directml.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DMLCreateDevice1(ID3D12Device d3d12Device, DML_CREATE_DEVICE_FLAGS flags, DML_FEATURE_LEVEL minimumFeatureLevel, Guid* riid, void** ppv);
		
	}
}