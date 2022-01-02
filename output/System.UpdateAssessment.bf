using System;

// namespace System.UpdateAssessment
namespace Win32
{
	extension Win32
	{
		// --- Enums ---
		
		public enum UpdateImpactLevel : int32
		{
			None = 0,
			Low = 1,
			Medium = 2,
			High = 3,
		}
		public enum UpdateAssessmentStatus : int32
		{
			Latest = 0,
			NotLatestSoftRestriction = 1,
			NotLatestHardRestriction = 2,
			NotLatestEndOfSupport = 3,
			NotLatestServicingTrain = 4,
			NotLatestDeferredFeature = 5,
			NotLatestDeferredQuality = 6,
			NotLatestPausedFeature = 7,
			NotLatestPausedQuality = 8,
			NotLatestManaged = 9,
			NotLatestUnknown = 10,
			NotLatestTargetedVersion = 11,
		}
		
		// --- Structs ---
		
		[CRepr]
		public struct UpdateAssessment
		{
			public UpdateAssessmentStatus status;
			public UpdateImpactLevel impact;
			public uint32 daysOutOfDate;
		}
		[CRepr]
		public struct OSUpdateAssessment
		{
			public BOOL isEndOfSupport;
			public UpdateAssessment assessmentForCurrent;
			public UpdateAssessment assessmentForUpToDate;
			public UpdateAssessmentStatus securityStatus;
			public FILETIME assessmentTime;
			public FILETIME releaseInfoTime;
			public PWSTR currentOSBuild;
			public FILETIME currentOSReleaseTime;
			public PWSTR upToDateOSBuild;
			public FILETIME upToDateOSReleaseTime;
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_WaaSAssessor = .(0x098ef871, 0xfa9f, 0x46af, 0x89, 0x58, 0xc0, 0x83, 0x51, 0x5d, 0x7c, 0x9c);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IWaaSAssessor : IUnknown
		{
			public const new Guid IID = .(0x2347bbef, 0x1a3b, 0x45a4, 0x90, 0x2d, 0x3e, 0x09, 0xc2, 0x69, 0xb4, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetOSUpdateAssessment(out OSUpdateAssessment result) mut => VT.GetOSUpdateAssessment(ref this, out result);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IWaaSAssessor self, out OSUpdateAssessment result) GetOSUpdateAssessment;
			}
		}
		
	}
}
