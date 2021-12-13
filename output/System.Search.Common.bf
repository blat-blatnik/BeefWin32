using System;

// namespace System.Search.Common
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CONDITION_TYPE : int32
		{
			CT_AND_CONDITION = 0,
			CT_OR_CONDITION = 1,
			CT_NOT_CONDITION = 2,
			CT_LEAF_CONDITION = 3,
		}
		[AllowDuplicates]
		public enum CONDITION_OPERATION : int32
		{
			COP_IMPLICIT = 0,
			COP_EQUAL = 1,
			COP_NOTEQUAL = 2,
			COP_LESSTHAN = 3,
			COP_GREATERTHAN = 4,
			COP_LESSTHANOREQUAL = 5,
			COP_GREATERTHANOREQUAL = 6,
			COP_VALUE_STARTSWITH = 7,
			COP_VALUE_ENDSWITH = 8,
			COP_VALUE_CONTAINS = 9,
			COP_VALUE_NOTCONTAINS = 10,
			COP_DOSWILDCARDS = 11,
			COP_WORD_EQUAL = 12,
			COP_WORD_STARTSWITH = 13,
			COP_APPLICATION_SPECIFIC = 14,
		}
		
	}
}
