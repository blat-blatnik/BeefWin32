using System;

// namespace System.Contacts
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const uint32 CGD_DEFAULT = 0;
		public const uint32 CGD_UNKNOWN_PROPERTY = 0;
		public const uint32 CGD_STRING_PROPERTY = 1;
		public const uint32 CGD_DATE_PROPERTY = 2;
		public const uint32 CGD_BINARY_PROPERTY = 4;
		public const uint32 CGD_ARRAY_NODE = 8;
		public const Guid CLSID_ContactAggregationManager = .(0x96c8ad95, 0xc199, 0x44de, 0xb3, 0x4e, 0xac, 0x33, 0xc4, 0x42, 0xdf, 0x39);
		
		// --- Enums ---
		
		[AllowDuplicates]
		public enum CONTACT_AGGREGATION_CREATE_OR_OPEN_OPTIONS : int32
		{
			CA_CREATE_LOCAL = 0,
			CA_CREATE_EXTERNAL = 1,
		}
		[AllowDuplicates]
		public enum CONTACT_AGGREGATION_COLLECTION_OPTIONS : int32
		{
			CACO_DEFAULT = 0,
			CACO_INCLUDE_EXTERNAL = 1,
			CACO_EXTERNAL_ONLY = 2,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct CONTACT_AGGREGATION_BLOB
		{
			public uint32 dwCount;
			public uint8* lpb;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_Contact = .(0x61b68808, 0x8eee, 0x4fd1, 0xac, 0xb8, 0x3d, 0x80, 0x4c, 0x8d, 0xb0, 0x56);
		public const Guid CLSID_ContactManager = .(0x7165c8ab, 0xaf88, 0x42bd, 0x86, 0xfd, 0x53, 0x10, 0xb4, 0x28, 0x5a, 0x02);
		
		// --- COM Interfaces ---
		
		public struct IContactManager {}
		public struct IContactCollection {}
		public struct IContactProperties {}
		public struct IContact {}
		public struct IContactPropertyCollection {}
		public struct IContactAggregationManager {}
		public struct IContactAggregationContact {}
		public struct IContactAggregationContactCollection {}
		public struct IContactAggregationAggregate {}
		public struct IContactAggregationAggregateCollection {}
		public struct IContactAggregationGroup {}
		public struct IContactAggregationGroupCollection {}
		public struct IContactAggregationLink {}
		public struct IContactAggregationLinkCollection {}
		public struct IContactAggregationServerPerson {}
		public struct IContactAggregationServerPersonCollection {}
		
	}
}
