using System;

// namespace System.Search.Common
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum CONDITION_TYPE : int32
		{
			AND_CONDITION = 0,
			OR_CONDITION = 1,
			NOT_CONDITION = 2,
			LEAF_CONDITION = 3,
		}
		public enum CONDITION_OPERATION : int32
		{
			IMPLICIT = 0,
			EQUAL = 1,
			NOTEQUAL = 2,
			LESSTHAN = 3,
			GREATERTHAN = 4,
			LESSTHANOREQUAL = 5,
			GREATERTHANOREQUAL = 6,
			VALUE_STARTSWITH = 7,
			VALUE_ENDSWITH = 8,
			VALUE_CONTAINS = 9,
			VALUE_NOTCONTAINS = 10,
			DOSWILDCARDS = 11,
			WORD_EQUAL = 12,
			WORD_STARTSWITH = 13,
			APPLICATION_SPECIFIC = 14,
		}
		
	}
}
