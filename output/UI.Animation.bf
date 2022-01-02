using System;

// namespace UI.Animation
namespace Win32
{
	extension Win32
	{
		// --- Constants ---
		
		public const int32 UI_ANIMATION_SECONDS_EVENTUALLY = -1;
		public const int32 UI_ANIMATION_REPEAT_INDEFINITELY = -1;
		public const int32 UI_ANIMATION_REPEAT_INDEFINITELY_CONCLUDE_AT_END = -1;
		public const int32 UI_ANIMATION_REPEAT_INDEFINITELY_CONCLUDE_AT_START = -2;
		public const int32 UI_ANIMATION_SECONDS_INFINITE = -1;
		
		// --- Typedefs ---
		
		public typealias UI_ANIMATION_KEYFRAME = int;
		
		// --- Enums ---
		
		public enum UI_ANIMATION_UPDATE_RESULT : int32
		{
			NO_CHANGE = 0,
			VARIABLES_CHANGED = 1,
		}
		public enum UI_ANIMATION_MANAGER_STATUS : int32
		{
			IDLE = 0,
			BUSY = 1,
		}
		public enum UI_ANIMATION_MODE : int32
		{
			DISABLED = 0,
			SYSTEM_DEFAULT = 1,
			ENABLED = 2,
		}
		public enum UI_ANIMATION_REPEAT_MODE : int32
		{
			NORMAL = 0,
			ALTERNATE = 1,
		}
		public enum UI_ANIMATION_ROUNDING_MODE : int32
		{
			NEAREST = 0,
			FLOOR = 1,
			CEILING = 2,
		}
		public enum UI_ANIMATION_STORYBOARD_STATUS : int32
		{
			BUILDING = 0,
			SCHEDULED = 1,
			CANCELLED = 2,
			PLAYING = 3,
			TRUNCATED = 4,
			FINISHED = 5,
			READY = 6,
			INSUFFICIENT_PRIORITY = 7,
		}
		public enum UI_ANIMATION_SCHEDULING_RESULT : int32
		{
			UNEXPECTED_FAILURE = 0,
			INSUFFICIENT_PRIORITY = 1,
			ALREADY_SCHEDULED = 2,
			SUCCEEDED = 3,
			DEFERRED = 4,
		}
		public enum UI_ANIMATION_PRIORITY_EFFECT : int32
		{
			FAILURE = 0,
			DELAY = 1,
		}
		public enum UI_ANIMATION_SLOPE : int32
		{
			INCREASING = 0,
			DECREASING = 1,
		}
		public enum UI_ANIMATION_DEPENDENCIES : uint32
		{
			NONE = 0,
			INTERMEDIATE_VALUES = 1,
			FINAL_VALUE = 2,
			FINAL_VELOCITY = 4,
			DURATION = 8,
		}
		public enum UI_ANIMATION_IDLE_BEHAVIOR : int32
		{
			CONTINUE = 0,
			DISABLE = 1,
		}
		public enum UI_ANIMATION_TIMER_CLIENT_STATUS : int32
		{
			IDLE = 0,
			BUSY = 1,
		}
		
		// --- COM Class IDs ---
		
		public const Guid CLSID_UIAnimationManager = .(0x4c1fc63a, 0x695c, 0x47e8, 0xa3, 0x39, 0x1a, 0x19, 0x4b, 0xe3, 0xd0, 0xb8);
		public const Guid CLSID_UIAnimationManager2 = .(0xd25d8842, 0x8884, 0x4a4a, 0xb3, 0x21, 0x09, 0x13, 0x14, 0x37, 0x9b, 0xdd);
		public const Guid CLSID_UIAnimationTransitionLibrary = .(0x1d6322ad, 0xaa85, 0x4ef5, 0xa8, 0x28, 0x86, 0xd7, 0x10, 0x67, 0xd1, 0x45);
		public const Guid CLSID_UIAnimationTransitionLibrary2 = .(0x812f944a, 0xc5c8, 0x4cd9, 0xb0, 0xa6, 0xb3, 0xda, 0x80, 0x2f, 0x22, 0x8d);
		public const Guid CLSID_UIAnimationTransitionFactory = .(0x8a9b1cdd, 0xfcd7, 0x419c, 0x8b, 0x44, 0x42, 0xfd, 0x17, 0xdb, 0x18, 0x87);
		public const Guid CLSID_UIAnimationTransitionFactory2 = .(0x84302f97, 0x7f7b, 0x4040, 0xb1, 0x90, 0x72, 0xac, 0x9d, 0x18, 0xe4, 0x20);
		public const Guid CLSID_UIAnimationTimer = .(0xbfcd4a0c, 0x06b6, 0x4384, 0xb7, 0x68, 0x0d, 0xaa, 0x79, 0x2c, 0x38, 0x0e);
		
		// --- COM Interfaces ---
		
		[CRepr]
		public struct IUIAnimationManager : IUnknown
		{
			public const new Guid IID = .(0x9169896c, 0xac8d, 0x4e7d, 0x94, 0xe5, 0x67, 0xfa, 0x4d, 0xc2, 0xf2, 0xe8);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateAnimationVariable(double initialValue, out IUIAnimationVariable* variable) mut => VT.CreateAnimationVariable(ref this, initialValue, out variable);
			public HRESULT ScheduleTransition(ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, double timeNow) mut => VT.ScheduleTransition(ref this, ref variable, ref transition, timeNow);
			public HRESULT CreateStoryboard(out IUIAnimationStoryboard* storyboard) mut => VT.CreateStoryboard(ref this, out storyboard);
			public HRESULT FinishAllStoryboards(double completionDeadline) mut => VT.FinishAllStoryboards(ref this, completionDeadline);
			public HRESULT AbandonAllStoryboards() mut => VT.AbandonAllStoryboards(ref this);
			public HRESULT Update(double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) mut => VT.Update(ref this, timeNow, updateResult);
			public HRESULT GetVariableFromTag(IUnknown* object, uint32 id, out IUIAnimationVariable* variable) mut => VT.GetVariableFromTag(ref this, object, id, out variable);
			public HRESULT GetStoryboardFromTag(IUnknown* object, uint32 id, out IUIAnimationStoryboard* storyboard) mut => VT.GetStoryboardFromTag(ref this, object, id, out storyboard);
			public HRESULT GetStatus(out UI_ANIMATION_MANAGER_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT SetAnimationMode(UI_ANIMATION_MODE mode) mut => VT.SetAnimationMode(ref this, mode);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT SetManagerEventHandler(IUIAnimationManagerEventHandler* handler) mut => VT.SetManagerEventHandler(ref this, handler);
			public HRESULT SetCancelPriorityComparison(IUIAnimationPriorityComparison* comparison) mut => VT.SetCancelPriorityComparison(ref this, comparison);
			public HRESULT SetTrimPriorityComparison(IUIAnimationPriorityComparison* comparison) mut => VT.SetTrimPriorityComparison(ref this, comparison);
			public HRESULT SetCompressPriorityComparison(IUIAnimationPriorityComparison* comparison) mut => VT.SetCompressPriorityComparison(ref this, comparison);
			public HRESULT SetConcludePriorityComparison(IUIAnimationPriorityComparison* comparison) mut => VT.SetConcludePriorityComparison(ref this, comparison);
			public HRESULT SetDefaultLongestAcceptableDelay(double delay) mut => VT.SetDefaultLongestAcceptableDelay(ref this, delay);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, double initialValue, out IUIAnimationVariable* variable) CreateAnimationVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, double timeNow) ScheduleTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, out IUIAnimationStoryboard* storyboard) CreateStoryboard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, double completionDeadline) FinishAllStoryboards;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self) AbandonAllStoryboards;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUnknown* object, uint32 id, out IUIAnimationVariable* variable) GetVariableFromTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUnknown* object, uint32 id, out IUIAnimationStoryboard* storyboard) GetStoryboardFromTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, out UI_ANIMATION_MANAGER_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUIAnimationManagerEventHandler* handler) SetManagerEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUIAnimationPriorityComparison* comparison) SetCancelPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUIAnimationPriorityComparison* comparison) SetTrimPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUIAnimationPriorityComparison* comparison) SetCompressPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, IUIAnimationPriorityComparison* comparison) SetConcludePriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self, double delay) SetDefaultLongestAcceptableDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable : IUnknown
		{
			public const new Guid IID = .(0x8ceeb155, 0x2849, 0x4ce5, 0x94, 0x48, 0x91, 0xff, 0x70, 0xe1, 0xe4, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValue(out double value) mut => VT.GetValue(ref this, out value);
			public HRESULT GetFinalValue(out double finalValue) mut => VT.GetFinalValue(ref this, out finalValue);
			public HRESULT GetPreviousValue(out double previousValue) mut => VT.GetPreviousValue(ref this, out previousValue);
			public HRESULT GetIntegerValue(out int32 value) mut => VT.GetIntegerValue(ref this, out value);
			public HRESULT GetFinalIntegerValue(out int32 finalValue) mut => VT.GetFinalIntegerValue(ref this, out finalValue);
			public HRESULT GetPreviousIntegerValue(out int32 previousValue) mut => VT.GetPreviousIntegerValue(ref this, out previousValue);
			public HRESULT GetCurrentStoryboard(out IUIAnimationStoryboard* storyboard) mut => VT.GetCurrentStoryboard(ref this, out storyboard);
			public HRESULT SetLowerBound(double bound) mut => VT.SetLowerBound(ref this, bound);
			public HRESULT SetUpperBound(double bound) mut => VT.SetUpperBound(ref this, bound);
			public HRESULT SetRoundingMode(UI_ANIMATION_ROUNDING_MODE mode) mut => VT.SetRoundingMode(ref this, mode);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetTag(IUnknown** object, uint32* id) mut => VT.GetTag(ref this, object, id);
			public HRESULT SetVariableChangeHandler(IUIAnimationVariableChangeHandler* handler) mut => VT.SetVariableChangeHandler(ref this, handler);
			public HRESULT SetVariableIntegerChangeHandler(IUIAnimationVariableIntegerChangeHandler* handler) mut => VT.SetVariableIntegerChangeHandler(ref this, handler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out double value) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out double finalValue) GetFinalValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out double previousValue) GetPreviousValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out int32 value) GetIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out int32 finalValue) GetFinalIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out int32 previousValue) GetPreviousIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, out IUIAnimationStoryboard* storyboard) GetCurrentStoryboard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, double bound) SetLowerBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, double bound) SetUpperBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, IUnknown** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, IUIAnimationVariableChangeHandler* handler) SetVariableChangeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable self, IUIAnimationVariableIntegerChangeHandler* handler) SetVariableIntegerChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard : IUnknown
		{
			public const new Guid IID = .(0xa8ff128f, 0x9bf9, 0x4af1, 0x9e, 0x67, 0xe5, 0xe4, 0x10, 0xde, 0xfb, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTransition(ref IUIAnimationVariable variable, ref IUIAnimationTransition transition) mut => VT.AddTransition(ref this, ref variable, ref transition);
			public HRESULT AddKeyframeAtOffset(UI_ANIMATION_KEYFRAME existingKeyframe, double offset, out UI_ANIMATION_KEYFRAME keyframe) mut => VT.AddKeyframeAtOffset(ref this, existingKeyframe, offset, out keyframe);
			public HRESULT AddKeyframeAfterTransition(ref IUIAnimationTransition transition, out UI_ANIMATION_KEYFRAME keyframe) mut => VT.AddKeyframeAfterTransition(ref this, ref transition, out keyframe);
			public HRESULT AddTransitionAtKeyframe(ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, UI_ANIMATION_KEYFRAME startKeyframe) mut => VT.AddTransitionAtKeyframe(ref this, ref variable, ref transition, startKeyframe);
			public HRESULT AddTransitionBetweenKeyframes(ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) mut => VT.AddTransitionBetweenKeyframes(ref this, ref variable, ref transition, startKeyframe, endKeyframe);
			public HRESULT RepeatBetweenKeyframes(UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, int32 repetitionCount) mut => VT.RepeatBetweenKeyframes(ref this, startKeyframe, endKeyframe, repetitionCount);
			public HRESULT HoldVariable(ref IUIAnimationVariable variable) mut => VT.HoldVariable(ref this, ref variable);
			public HRESULT SetLongestAcceptableDelay(double delay) mut => VT.SetLongestAcceptableDelay(ref this, delay);
			public HRESULT Schedule(double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) mut => VT.Schedule(ref this, timeNow, schedulingResult);
			public HRESULT Conclude() mut => VT.Conclude(ref this);
			public HRESULT Finish(double completionDeadline) mut => VT.Finish(ref this, completionDeadline);
			public HRESULT Abandon() mut => VT.Abandon(ref this);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetTag(IUnknown** object, uint32* id) mut => VT.GetTag(ref this, object, id);
			public HRESULT GetStatus(out UI_ANIMATION_STORYBOARD_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT GetElapsedTime(out double elapsedTime) mut => VT.GetElapsedTime(ref this, out elapsedTime);
			public HRESULT SetStoryboardEventHandler(IUIAnimationStoryboardEventHandler* handler) mut => VT.SetStoryboardEventHandler(ref this, handler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, ref IUIAnimationVariable variable, ref IUIAnimationTransition transition) AddTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, out UI_ANIMATION_KEYFRAME keyframe) AddKeyframeAtOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, ref IUIAnimationTransition transition, out UI_ANIMATION_KEYFRAME keyframe) AddKeyframeAfterTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, ref IUIAnimationVariable variable, ref IUIAnimationTransition transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, int32 repetitionCount) RepeatBetweenKeyframes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, ref IUIAnimationVariable variable) HoldVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, double delay) SetLongestAcceptableDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self) Conclude;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, double completionDeadline) Finish;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self) Abandon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, IUnknown** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, out UI_ANIMATION_STORYBOARD_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, out double elapsedTime) GetElapsedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard self, IUIAnimationStoryboardEventHandler* handler) SetStoryboardEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition : IUnknown
		{
			public const new Guid IID = .(0xdc6ce252, 0xf731, 0x41cf, 0xb6, 0x10, 0x61, 0x4b, 0x6c, 0xa0, 0x49, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialValue(double value) mut => VT.SetInitialValue(ref this, value);
			public HRESULT SetInitialVelocity(double velocity) mut => VT.SetInitialVelocity(ref this, velocity);
			public HRESULT IsDurationKnown() mut => VT.IsDurationKnown(ref this);
			public HRESULT GetDuration(out double duration) mut => VT.GetDuration(ref this, out duration);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition self, double value) SetInitialValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition self, double velocity) SetInitialVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition self) IsDurationKnown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition self, out double duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x783321ed, 0x78a3, 0x4366, 0xb5, 0x74, 0x6a, 0xf6, 0x07, 0xa6, 0x47, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnManagerStatusChanged(UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) mut => VT.OnManagerStatusChanged(ref this, newStatus, previousStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManagerEventHandler self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler : IUnknown
		{
			public const new Guid IID = .(0x6358b7ba, 0x87d2, 0x42d5, 0xbf, 0x71, 0x82, 0xe9, 0x19, 0xdd, 0x58, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnValueChanged(ref IUIAnimationStoryboard storyboard, ref IUIAnimationVariable variable, double newValue, double previousValue) mut => VT.OnValueChanged(ref this, ref storyboard, ref variable, newValue, previousValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariableChangeHandler self, ref IUIAnimationStoryboard storyboard, ref IUIAnimationVariable variable, double newValue, double previousValue) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler : IUnknown
		{
			public const new Guid IID = .(0xbb3e1550, 0x356e, 0x44b0, 0x99, 0xda, 0x85, 0xac, 0x60, 0x17, 0x86, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIntegerValueChanged(ref IUIAnimationStoryboard storyboard, ref IUIAnimationVariable variable, int32 newValue, int32 previousValue) mut => VT.OnIntegerValueChanged(ref this, ref storyboard, ref variable, newValue, previousValue);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariableIntegerChangeHandler self, ref IUIAnimationStoryboard storyboard, ref IUIAnimationVariable variable, int32 newValue, int32 previousValue) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler : IUnknown
		{
			public const new Guid IID = .(0x3d5c9008, 0xec7c, 0x4364, 0x9f, 0x8a, 0x9a, 0xf3, 0xc5, 0x8c, 0xba, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStoryboardStatusChanged(ref IUIAnimationStoryboard storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) mut => VT.OnStoryboardStatusChanged(ref this, ref storyboard, newStatus, previousStatus);
			public HRESULT OnStoryboardUpdated(ref IUIAnimationStoryboard storyboard) mut => VT.OnStoryboardUpdated(ref this, ref storyboard);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboardEventHandler self, ref IUIAnimationStoryboard storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboardEventHandler self, ref IUIAnimationStoryboard storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison : IUnknown
		{
			public const new Guid IID = .(0x83fa9b74, 0x5f86, 0x4618, 0xbc, 0x6a, 0xa2, 0xfa, 0xc1, 0x9b, 0x3f, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HasPriority(ref IUIAnimationStoryboard scheduledStoryboard, ref IUIAnimationStoryboard newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) mut => VT.HasPriority(ref this, ref scheduledStoryboard, ref newStoryboard, priorityEffect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationPriorityComparison self, ref IUIAnimationStoryboard scheduledStoryboard, ref IUIAnimationStoryboard newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary : IUnknown
		{
			public const new Guid IID = .(0xca5a14b1, 0xd24f, 0x48b8, 0x8f, 0xe4, 0xc7, 0x81, 0x69, 0xba, 0x95, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstantaneousTransition(double finalValue, out IUIAnimationTransition* transition) mut => VT.CreateInstantaneousTransition(ref this, finalValue, out transition);
			public HRESULT CreateConstantTransition(double duration, out IUIAnimationTransition* transition) mut => VT.CreateConstantTransition(ref this, duration, out transition);
			public HRESULT CreateDiscreteTransition(double delay, double finalValue, double hold, out IUIAnimationTransition* transition) mut => VT.CreateDiscreteTransition(ref this, delay, finalValue, hold, out transition);
			public HRESULT CreateLinearTransition(double duration, double finalValue, out IUIAnimationTransition* transition) mut => VT.CreateLinearTransition(ref this, duration, finalValue, out transition);
			public HRESULT CreateLinearTransitionFromSpeed(double speed, double finalValue, out IUIAnimationTransition* transition) mut => VT.CreateLinearTransitionFromSpeed(ref this, speed, finalValue, out transition);
			public HRESULT CreateSinusoidalTransitionFromVelocity(double duration, double period, out IUIAnimationTransition* transition) mut => VT.CreateSinusoidalTransitionFromVelocity(ref this, duration, period, out transition);
			public HRESULT CreateSinusoidalTransitionFromRange(double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, out IUIAnimationTransition* transition) mut => VT.CreateSinusoidalTransitionFromRange(ref this, duration, minimumValue, maximumValue, period, slope, out transition);
			public HRESULT CreateAccelerateDecelerateTransition(double duration, double finalValue, double accelerationRatio, double decelerationRatio, out IUIAnimationTransition* transition) mut => VT.CreateAccelerateDecelerateTransition(ref this, duration, finalValue, accelerationRatio, decelerationRatio, out transition);
			public HRESULT CreateReversalTransition(double duration, out IUIAnimationTransition* transition) mut => VT.CreateReversalTransition(ref this, duration, out transition);
			public HRESULT CreateCubicTransition(double duration, double finalValue, double finalVelocity, out IUIAnimationTransition* transition) mut => VT.CreateCubicTransition(ref this, duration, finalValue, finalVelocity, out transition);
			public HRESULT CreateSmoothStopTransition(double maximumDuration, double finalValue, out IUIAnimationTransition* transition) mut => VT.CreateSmoothStopTransition(ref this, maximumDuration, finalValue, out transition);
			public HRESULT CreateParabolicTransitionFromAcceleration(double finalValue, double finalVelocity, double acceleration, out IUIAnimationTransition* transition) mut => VT.CreateParabolicTransitionFromAcceleration(ref this, finalValue, finalVelocity, acceleration, out transition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double finalValue, out IUIAnimationTransition* transition) CreateInstantaneousTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, out IUIAnimationTransition* transition) CreateConstantTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double delay, double finalValue, double hold, out IUIAnimationTransition* transition) CreateDiscreteTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, double finalValue, out IUIAnimationTransition* transition) CreateLinearTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double speed, double finalValue, out IUIAnimationTransition* transition) CreateLinearTransitionFromSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, double period, out IUIAnimationTransition* transition) CreateSinusoidalTransitionFromVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, out IUIAnimationTransition* transition) CreateSinusoidalTransitionFromRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, out IUIAnimationTransition* transition) CreateAccelerateDecelerateTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, out IUIAnimationTransition* transition) CreateReversalTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double duration, double finalValue, double finalVelocity, out IUIAnimationTransition* transition) CreateCubicTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double maximumDuration, double finalValue, out IUIAnimationTransition* transition) CreateSmoothStopTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary self, double finalValue, double finalVelocity, double acceleration, out IUIAnimationTransition* transition) CreateParabolicTransitionFromAcceleration;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator : IUnknown
		{
			public const new Guid IID = .(0x7815cbba, 0xddf7, 0x478c, 0xa4, 0x6c, 0x7b, 0x6c, 0x73, 0x8b, 0x79, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialValueAndVelocity(double initialValue, double initialVelocity) mut => VT.SetInitialValueAndVelocity(ref this, initialValue, initialVelocity);
			public HRESULT SetDuration(double duration) mut => VT.SetDuration(ref this, duration);
			public HRESULT GetDuration(out double duration) mut => VT.GetDuration(ref this, out duration);
			public HRESULT GetFinalValue(out double value) mut => VT.GetFinalValue(ref this, out value);
			public HRESULT InterpolateValue(double offset, out double value) mut => VT.InterpolateValue(ref this, offset, out value);
			public HRESULT InterpolateVelocity(double offset, out double velocity) mut => VT.InterpolateVelocity(ref this, offset, out velocity);
			public HRESULT GetDependencies(out UI_ANIMATION_DEPENDENCIES initialValueDependencies, out UI_ANIMATION_DEPENDENCIES initialVelocityDependencies, out UI_ANIMATION_DEPENDENCIES durationDependencies) mut => VT.GetDependencies(ref this, out initialValueDependencies, out initialVelocityDependencies, out durationDependencies);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, double initialValue, double initialVelocity) SetInitialValueAndVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, double duration) SetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, out double duration) GetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, out double value) GetFinalValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, double offset, out double value) InterpolateValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, double offset, out double velocity) InterpolateVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator self, out UI_ANIMATION_DEPENDENCIES initialValueDependencies, out UI_ANIMATION_DEPENDENCIES initialVelocityDependencies, out UI_ANIMATION_DEPENDENCIES durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory : IUnknown
		{
			public const new Guid IID = .(0xfcd91e03, 0x3e3b, 0x45ad, 0xbb, 0xb1, 0x6d, 0xfc, 0x81, 0x53, 0x74, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTransition(ref IUIAnimationInterpolator interpolator, out IUIAnimationTransition* transition) mut => VT.CreateTransition(ref this, ref interpolator, out transition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionFactory self, ref IUIAnimationInterpolator interpolator, out IUIAnimationTransition* transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationTimer : IUnknown
		{
			public const new Guid IID = .(0x6b0efad1, 0xa053, 0x41d6, 0x90, 0x85, 0x33, 0xa6, 0x89, 0x14, 0x46, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTimerUpdateHandler(IUIAnimationTimerUpdateHandler* updateHandler, UI_ANIMATION_IDLE_BEHAVIOR idleBehavior) mut => VT.SetTimerUpdateHandler(ref this, updateHandler, idleBehavior);
			public HRESULT SetTimerEventHandler(IUIAnimationTimerEventHandler* handler) mut => VT.SetTimerEventHandler(ref this, handler);
			public HRESULT Enable() mut => VT.Enable(ref this);
			public HRESULT Disable() mut => VT.Disable(ref this);
			public HRESULT IsEnabled() mut => VT.IsEnabled(ref this);
			public HRESULT GetTime(out double seconds) mut => VT.GetTime(ref this, out seconds);
			public HRESULT SetFrameRateThreshold(uint32 framesPerSecond) mut => VT.SetFrameRateThreshold(ref this, framesPerSecond);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self, IUIAnimationTimerUpdateHandler* updateHandler, UI_ANIMATION_IDLE_BEHAVIOR idleBehavior) SetTimerUpdateHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self, IUIAnimationTimerEventHandler* handler) SetTimerEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self) Enable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self) Disable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self) IsEnabled;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self, out double seconds) GetTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimer self, uint32 framesPerSecond) SetFrameRateThreshold;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerUpdateHandler : IUnknown
		{
			public const new Guid IID = .(0x195509b7, 0x5d5e, 0x4e3e, 0xb2, 0x78, 0xee, 0x37, 0x59, 0xb3, 0x67, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdate(double timeNow, out UI_ANIMATION_UPDATE_RESULT result) mut => VT.OnUpdate(ref this, timeNow, out result);
			public HRESULT SetTimerClientEventHandler(ref IUIAnimationTimerClientEventHandler handler) mut => VT.SetTimerClientEventHandler(ref this, ref handler);
			public HRESULT ClearTimerClientEventHandler() mut => VT.ClearTimerClientEventHandler(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerUpdateHandler self, double timeNow, out UI_ANIMATION_UPDATE_RESULT result) OnUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerUpdateHandler self, ref IUIAnimationTimerClientEventHandler handler) SetTimerClientEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerUpdateHandler self) ClearTimerClientEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerClientEventHandler : IUnknown
		{
			public const new Guid IID = .(0xbedb4db6, 0x94fa, 0x4bfb, 0xa4, 0x7f, 0xef, 0x2d, 0x9e, 0x40, 0x8c, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTimerClientStatusChanged(UI_ANIMATION_TIMER_CLIENT_STATUS newStatus, UI_ANIMATION_TIMER_CLIENT_STATUS previousStatus) mut => VT.OnTimerClientStatusChanged(ref this, newStatus, previousStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerClientEventHandler self, UI_ANIMATION_TIMER_CLIENT_STATUS newStatus, UI_ANIMATION_TIMER_CLIENT_STATUS previousStatus) OnTimerClientStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x274a7dea, 0xd771, 0x4095, 0xab, 0xbd, 0x8d, 0xf7, 0xab, 0xd2, 0x3c, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPreUpdate() mut => VT.OnPreUpdate(ref this);
			public HRESULT OnPostUpdate() mut => VT.OnPostUpdate(ref this);
			public HRESULT OnRenderingTooSlow(uint32 framesPerSecond) mut => VT.OnRenderingTooSlow(ref this, framesPerSecond);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerEventHandler self) OnPreUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerEventHandler self) OnPostUpdate;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTimerEventHandler self, uint32 framesPerSecond) OnRenderingTooSlow;
			}
		}
		[CRepr]
		public struct IUIAnimationManager2 : IUnknown
		{
			public const new Guid IID = .(0xd8b6f7d4, 0x4109, 0x4d3f, 0xac, 0xee, 0x87, 0x99, 0x26, 0x96, 0x8c, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateAnimationVectorVariable(double* initialValue, uint32 cDimension, out IUIAnimationVariable2* variable) mut => VT.CreateAnimationVectorVariable(ref this, initialValue, cDimension, out variable);
			public HRESULT CreateAnimationVariable(double initialValue, out IUIAnimationVariable2* variable) mut => VT.CreateAnimationVariable(ref this, initialValue, out variable);
			public HRESULT ScheduleTransition(ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, double timeNow) mut => VT.ScheduleTransition(ref this, ref variable, ref transition, timeNow);
			public HRESULT CreateStoryboard(out IUIAnimationStoryboard2* storyboard) mut => VT.CreateStoryboard(ref this, out storyboard);
			public HRESULT FinishAllStoryboards(double completionDeadline) mut => VT.FinishAllStoryboards(ref this, completionDeadline);
			public HRESULT AbandonAllStoryboards() mut => VT.AbandonAllStoryboards(ref this);
			public HRESULT Update(double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) mut => VT.Update(ref this, timeNow, updateResult);
			public HRESULT GetVariableFromTag(IUnknown* object, uint32 id, out IUIAnimationVariable2* variable) mut => VT.GetVariableFromTag(ref this, object, id, out variable);
			public HRESULT GetStoryboardFromTag(IUnknown* object, uint32 id, out IUIAnimationStoryboard2* storyboard) mut => VT.GetStoryboardFromTag(ref this, object, id, out storyboard);
			public HRESULT EstimateNextEventTime(out double seconds) mut => VT.EstimateNextEventTime(ref this, out seconds);
			public HRESULT GetStatus(out UI_ANIMATION_MANAGER_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT SetAnimationMode(UI_ANIMATION_MODE mode) mut => VT.SetAnimationMode(ref this, mode);
			public HRESULT Pause() mut => VT.Pause(ref this);
			public HRESULT Resume() mut => VT.Resume(ref this);
			public HRESULT SetManagerEventHandler(IUIAnimationManagerEventHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut => VT.SetManagerEventHandler(ref this, handler, fRegisterForNextAnimationEvent);
			public HRESULT SetCancelPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut => VT.SetCancelPriorityComparison(ref this, comparison);
			public HRESULT SetTrimPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut => VT.SetTrimPriorityComparison(ref this, comparison);
			public HRESULT SetCompressPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut => VT.SetCompressPriorityComparison(ref this, comparison);
			public HRESULT SetConcludePriorityComparison(IUIAnimationPriorityComparison2* comparison) mut => VT.SetConcludePriorityComparison(ref this, comparison);
			public HRESULT SetDefaultLongestAcceptableDelay(double delay) mut => VT.SetDefaultLongestAcceptableDelay(ref this, delay);
			public HRESULT Shutdown() mut => VT.Shutdown(ref this);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, double* initialValue, uint32 cDimension, out IUIAnimationVariable2* variable) CreateAnimationVectorVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, double initialValue, out IUIAnimationVariable2* variable) CreateAnimationVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, double timeNow) ScheduleTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, out IUIAnimationStoryboard2* storyboard) CreateStoryboard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, double completionDeadline) FinishAllStoryboards;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self) AbandonAllStoryboards;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUnknown* object, uint32 id, out IUIAnimationVariable2* variable) GetVariableFromTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUnknown* object, uint32 id, out IUIAnimationStoryboard2* storyboard) GetStoryboardFromTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, out double seconds) EstimateNextEventTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, out UI_ANIMATION_MANAGER_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self) Pause;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self) Resume;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUIAnimationManagerEventHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetManagerEventHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUIAnimationPriorityComparison2* comparison) SetCancelPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUIAnimationPriorityComparison2* comparison) SetTrimPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUIAnimationPriorityComparison2* comparison) SetCompressPriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, IUIAnimationPriorityComparison2* comparison) SetConcludePriorityComparison;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self, double delay) SetDefaultLongestAcceptableDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManager2 self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable2 : IUnknown
		{
			public const new Guid IID = .(0x4914b304, 0x96ab, 0x44d9, 0x9e, 0x77, 0xd5, 0x10, 0x9b, 0x7e, 0x74, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(out uint32 dimension) mut => VT.GetDimension(ref this, out dimension);
			public HRESULT GetValue(out double value) mut => VT.GetValue(ref this, out value);
			public HRESULT GetVectorValue(double* value, uint32 cDimension) mut => VT.GetVectorValue(ref this, value, cDimension);
			public HRESULT GetCurve(ref IDCompositionAnimation animation) mut => VT.GetCurve(ref this, ref animation);
			public HRESULT GetVectorCurve(IDCompositionAnimation** animation, uint32 cDimension) mut => VT.GetVectorCurve(ref this, animation, cDimension);
			public HRESULT GetFinalValue(out double finalValue) mut => VT.GetFinalValue(ref this, out finalValue);
			public HRESULT GetFinalVectorValue(double* finalValue, uint32 cDimension) mut => VT.GetFinalVectorValue(ref this, finalValue, cDimension);
			public HRESULT GetPreviousValue(out double previousValue) mut => VT.GetPreviousValue(ref this, out previousValue);
			public HRESULT GetPreviousVectorValue(double* previousValue, uint32 cDimension) mut => VT.GetPreviousVectorValue(ref this, previousValue, cDimension);
			public HRESULT GetIntegerValue(out int32 value) mut => VT.GetIntegerValue(ref this, out value);
			public HRESULT GetIntegerVectorValue(int32* value, uint32 cDimension) mut => VT.GetIntegerVectorValue(ref this, value, cDimension);
			public HRESULT GetFinalIntegerValue(out int32 finalValue) mut => VT.GetFinalIntegerValue(ref this, out finalValue);
			public HRESULT GetFinalIntegerVectorValue(int32* finalValue, uint32 cDimension) mut => VT.GetFinalIntegerVectorValue(ref this, finalValue, cDimension);
			public HRESULT GetPreviousIntegerValue(out int32 previousValue) mut => VT.GetPreviousIntegerValue(ref this, out previousValue);
			public HRESULT GetPreviousIntegerVectorValue(int32* previousValue, uint32 cDimension) mut => VT.GetPreviousIntegerVectorValue(ref this, previousValue, cDimension);
			public HRESULT GetCurrentStoryboard(out IUIAnimationStoryboard2* storyboard) mut => VT.GetCurrentStoryboard(ref this, out storyboard);
			public HRESULT SetLowerBound(double bound) mut => VT.SetLowerBound(ref this, bound);
			public HRESULT SetLowerBoundVector(double* bound, uint32 cDimension) mut => VT.SetLowerBoundVector(ref this, bound, cDimension);
			public HRESULT SetUpperBound(double bound) mut => VT.SetUpperBound(ref this, bound);
			public HRESULT SetUpperBoundVector(double* bound, uint32 cDimension) mut => VT.SetUpperBoundVector(ref this, bound, cDimension);
			public HRESULT SetRoundingMode(UI_ANIMATION_ROUNDING_MODE mode) mut => VT.SetRoundingMode(ref this, mode);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetTag(IUnknown** object, uint32* id) mut => VT.GetTag(ref this, object, id);
			public HRESULT SetVariableChangeHandler(IUIAnimationVariableChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut => VT.SetVariableChangeHandler(ref this, handler, fRegisterForNextAnimationEvent);
			public HRESULT SetVariableIntegerChangeHandler(IUIAnimationVariableIntegerChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut => VT.SetVariableIntegerChangeHandler(ref this, handler, fRegisterForNextAnimationEvent);
			public HRESULT SetVariableCurveChangeHandler(IUIAnimationVariableCurveChangeHandler2* handler) mut => VT.SetVariableCurveChangeHandler(ref this, handler);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out uint32 dimension) GetDimension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out double value) GetValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double* value, uint32 cDimension) GetVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, ref IDCompositionAnimation animation) GetCurve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IDCompositionAnimation** animation, uint32 cDimension) GetVectorCurve;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out double finalValue) GetFinalValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double* finalValue, uint32 cDimension) GetFinalVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out double previousValue) GetPreviousValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double* previousValue, uint32 cDimension) GetPreviousVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out int32 value) GetIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, int32* value, uint32 cDimension) GetIntegerVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out int32 finalValue) GetFinalIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, int32* finalValue, uint32 cDimension) GetFinalIntegerVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out int32 previousValue) GetPreviousIntegerValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, int32* previousValue, uint32 cDimension) GetPreviousIntegerVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, out IUIAnimationStoryboard2* storyboard) GetCurrentStoryboard;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double bound) SetLowerBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double* bound, uint32 cDimension) SetLowerBoundVector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double bound) SetUpperBound;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, double* bound, uint32 cDimension) SetUpperBoundVector;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IUnknown** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IUIAnimationVariableChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableChangeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IUIAnimationVariableIntegerChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableIntegerChangeHandler;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariable2 self, IUIAnimationVariableCurveChangeHandler2* handler) SetVariableCurveChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition2 : IUnknown
		{
			public const new Guid IID = .(0x62ff9123, 0xa85a, 0x4e9b, 0xa2, 0x18, 0x43, 0x5a, 0x93, 0xe2, 0x68, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(out uint32 dimension) mut => VT.GetDimension(ref this, out dimension);
			public HRESULT SetInitialValue(double value) mut => VT.SetInitialValue(ref this, value);
			public HRESULT SetInitialVectorValue(double* value, uint32 cDimension) mut => VT.SetInitialVectorValue(ref this, value, cDimension);
			public HRESULT SetInitialVelocity(double velocity) mut => VT.SetInitialVelocity(ref this, velocity);
			public HRESULT SetInitialVectorVelocity(double* velocity, uint32 cDimension) mut => VT.SetInitialVectorVelocity(ref this, velocity, cDimension);
			public HRESULT IsDurationKnown() mut => VT.IsDurationKnown(ref this);
			public HRESULT GetDuration(out double duration) mut => VT.GetDuration(ref this, out duration);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, out uint32 dimension) GetDimension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, double value) SetInitialValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, double* value, uint32 cDimension) SetInitialVectorValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, double velocity) SetInitialVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, double* velocity, uint32 cDimension) SetInitialVectorVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self) IsDurationKnown;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransition2 self, out double duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xf6e022ba, 0xbff3, 0x42ec, 0x90, 0x33, 0xe0, 0x73, 0xf3, 0x3e, 0x83, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnManagerStatusChanged(UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) mut => VT.OnManagerStatusChanged(ref this, newStatus, previousStatus);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationManagerEventHandler2 self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x63acc8d2, 0x6eae, 0x4bb0, 0xb8, 0x79, 0x58, 0x6d, 0xd8, 0xcf, 0xbe, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnValueChanged(ref IUIAnimationStoryboard2 storyboard, ref IUIAnimationVariable2 variable, double* newValue, double* previousValue, uint32 cDimension) mut => VT.OnValueChanged(ref this, ref storyboard, ref variable, newValue, previousValue, cDimension);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariableChangeHandler2 self, ref IUIAnimationStoryboard2 storyboard, ref IUIAnimationVariable2 variable, double* newValue, double* previousValue, uint32 cDimension) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x829b6cf1, 0x4f3a, 0x4412, 0xae, 0x09, 0xb2, 0x43, 0xeb, 0x4c, 0x6b, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIntegerValueChanged(ref IUIAnimationStoryboard2 storyboard, ref IUIAnimationVariable2 variable, int32* newValue, int32* previousValue, uint32 cDimension) mut => VT.OnIntegerValueChanged(ref this, ref storyboard, ref variable, newValue, previousValue, cDimension);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariableIntegerChangeHandler2 self, ref IUIAnimationStoryboard2 storyboard, ref IUIAnimationVariable2 variable, int32* newValue, int32* previousValue, uint32 cDimension) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableCurveChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x72895e91, 0x0145, 0x4c21, 0x91, 0x92, 0x5a, 0xab, 0x40, 0xed, 0xdf, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCurveChanged(ref IUIAnimationVariable2 variable) mut => VT.OnCurveChanged(ref this, ref variable);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationVariableCurveChangeHandler2 self, ref IUIAnimationVariable2 variable) OnCurveChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xbac5f55a, 0xba7c, 0x414c, 0xb5, 0x99, 0xfb, 0xf8, 0x50, 0xf5, 0x53, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStoryboardStatusChanged(ref IUIAnimationStoryboard2 storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) mut => VT.OnStoryboardStatusChanged(ref this, ref storyboard, newStatus, previousStatus);
			public HRESULT OnStoryboardUpdated(ref IUIAnimationStoryboard2 storyboard) mut => VT.OnStoryboardUpdated(ref this, ref storyboard);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboardEventHandler2 self, ref IUIAnimationStoryboard2 storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboardEventHandler2 self, ref IUIAnimationStoryboard2 storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationLoopIterationChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x2d3b15a4, 0x4762, 0x47ab, 0xa0, 0x30, 0xb2, 0x32, 0x21, 0xdf, 0x3a, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoopIterationChanged(ref IUIAnimationStoryboard2 storyboard, uint id, uint32 newIterationCount, uint32 oldIterationCount) mut => VT.OnLoopIterationChanged(ref this, ref storyboard, id, newIterationCount, oldIterationCount);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationLoopIterationChangeHandler2 self, ref IUIAnimationStoryboard2 storyboard, uint id, uint32 newIterationCount, uint32 oldIterationCount) OnLoopIterationChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison2 : IUnknown
		{
			public const new Guid IID = .(0x5b6d7a37, 0x4621, 0x467c, 0x8b, 0x05, 0x70, 0x13, 0x1d, 0xe6, 0x2d, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HasPriority(ref IUIAnimationStoryboard2 scheduledStoryboard, ref IUIAnimationStoryboard2 newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) mut => VT.HasPriority(ref this, ref scheduledStoryboard, ref newStoryboard, priorityEffect);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationPriorityComparison2 self, ref IUIAnimationStoryboard2 scheduledStoryboard, ref IUIAnimationStoryboard2 newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary2 : IUnknown
		{
			public const new Guid IID = .(0x03cfae53, 0x9580, 0x4ee3, 0xb3, 0x63, 0x2e, 0xce, 0x51, 0xb4, 0xaf, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstantaneousTransition(double finalValue, out IUIAnimationTransition2* transition) mut => VT.CreateInstantaneousTransition(ref this, finalValue, out transition);
			public HRESULT CreateInstantaneousVectorTransition(double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) mut => VT.CreateInstantaneousVectorTransition(ref this, finalValue, cDimension, out transition);
			public HRESULT CreateConstantTransition(double duration, out IUIAnimationTransition2* transition) mut => VT.CreateConstantTransition(ref this, duration, out transition);
			public HRESULT CreateDiscreteTransition(double delay, double finalValue, double hold, out IUIAnimationTransition2* transition) mut => VT.CreateDiscreteTransition(ref this, delay, finalValue, hold, out transition);
			public HRESULT CreateDiscreteVectorTransition(double delay, double* finalValue, uint32 cDimension, double hold, out IUIAnimationTransition2* transition) mut => VT.CreateDiscreteVectorTransition(ref this, delay, finalValue, cDimension, hold, out transition);
			public HRESULT CreateLinearTransition(double duration, double finalValue, out IUIAnimationTransition2* transition) mut => VT.CreateLinearTransition(ref this, duration, finalValue, out transition);
			public HRESULT CreateLinearVectorTransition(double duration, double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) mut => VT.CreateLinearVectorTransition(ref this, duration, finalValue, cDimension, out transition);
			public HRESULT CreateLinearTransitionFromSpeed(double speed, double finalValue, out IUIAnimationTransition2* transition) mut => VT.CreateLinearTransitionFromSpeed(ref this, speed, finalValue, out transition);
			public HRESULT CreateLinearVectorTransitionFromSpeed(double speed, double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) mut => VT.CreateLinearVectorTransitionFromSpeed(ref this, speed, finalValue, cDimension, out transition);
			public HRESULT CreateSinusoidalTransitionFromVelocity(double duration, double period, out IUIAnimationTransition2* transition) mut => VT.CreateSinusoidalTransitionFromVelocity(ref this, duration, period, out transition);
			public HRESULT CreateSinusoidalTransitionFromRange(double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, out IUIAnimationTransition2* transition) mut => VT.CreateSinusoidalTransitionFromRange(ref this, duration, minimumValue, maximumValue, period, slope, out transition);
			public HRESULT CreateAccelerateDecelerateTransition(double duration, double finalValue, double accelerationRatio, double decelerationRatio, out IUIAnimationTransition2* transition) mut => VT.CreateAccelerateDecelerateTransition(ref this, duration, finalValue, accelerationRatio, decelerationRatio, out transition);
			public HRESULT CreateReversalTransition(double duration, out IUIAnimationTransition2* transition) mut => VT.CreateReversalTransition(ref this, duration, out transition);
			public HRESULT CreateCubicTransition(double duration, double finalValue, double finalVelocity, out IUIAnimationTransition2* transition) mut => VT.CreateCubicTransition(ref this, duration, finalValue, finalVelocity, out transition);
			public HRESULT CreateCubicVectorTransition(double duration, double* finalValue, double* finalVelocity, uint32 cDimension, out IUIAnimationTransition2* transition) mut => VT.CreateCubicVectorTransition(ref this, duration, finalValue, finalVelocity, cDimension, out transition);
			public HRESULT CreateSmoothStopTransition(double maximumDuration, double finalValue, out IUIAnimationTransition2* transition) mut => VT.CreateSmoothStopTransition(ref this, maximumDuration, finalValue, out transition);
			public HRESULT CreateParabolicTransitionFromAcceleration(double finalValue, double finalVelocity, double acceleration, out IUIAnimationTransition2* transition) mut => VT.CreateParabolicTransitionFromAcceleration(ref this, finalValue, finalVelocity, acceleration, out transition);
			public HRESULT CreateCubicBezierLinearTransition(double duration, double finalValue, double x1, double y1, double x2, double y2, out IUIAnimationTransition2* ppTransition) mut => VT.CreateCubicBezierLinearTransition(ref this, duration, finalValue, x1, y1, x2, y2, out ppTransition);
			public HRESULT CreateCubicBezierLinearVectorTransition(double duration, double* finalValue, uint32 cDimension, double x1, double y1, double x2, double y2, out IUIAnimationTransition2* ppTransition) mut => VT.CreateCubicBezierLinearVectorTransition(ref this, duration, finalValue, cDimension, x1, y1, x2, y2, out ppTransition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double finalValue, out IUIAnimationTransition2* transition) CreateInstantaneousTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) CreateInstantaneousVectorTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, out IUIAnimationTransition2* transition) CreateConstantTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double delay, double finalValue, double hold, out IUIAnimationTransition2* transition) CreateDiscreteTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double delay, double* finalValue, uint32 cDimension, double hold, out IUIAnimationTransition2* transition) CreateDiscreteVectorTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double finalValue, out IUIAnimationTransition2* transition) CreateLinearTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) CreateLinearVectorTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double speed, double finalValue, out IUIAnimationTransition2* transition) CreateLinearTransitionFromSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double speed, double* finalValue, uint32 cDimension, out IUIAnimationTransition2* transition) CreateLinearVectorTransitionFromSpeed;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double period, out IUIAnimationTransition2* transition) CreateSinusoidalTransitionFromVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, out IUIAnimationTransition2* transition) CreateSinusoidalTransitionFromRange;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, out IUIAnimationTransition2* transition) CreateAccelerateDecelerateTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, out IUIAnimationTransition2* transition) CreateReversalTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double finalValue, double finalVelocity, out IUIAnimationTransition2* transition) CreateCubicTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double* finalValue, double* finalVelocity, uint32 cDimension, out IUIAnimationTransition2* transition) CreateCubicVectorTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double maximumDuration, double finalValue, out IUIAnimationTransition2* transition) CreateSmoothStopTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double finalValue, double finalVelocity, double acceleration, out IUIAnimationTransition2* transition) CreateParabolicTransitionFromAcceleration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double finalValue, double x1, double y1, double x2, double y2, out IUIAnimationTransition2* ppTransition) CreateCubicBezierLinearTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionLibrary2 self, double duration, double* finalValue, uint32 cDimension, double x1, double y1, double x2, double y2, out IUIAnimationTransition2* ppTransition) CreateCubicBezierLinearVectorTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationPrimitiveInterpolation : IUnknown
		{
			public const new Guid IID = .(0xbab20d63, 0x4361, 0x45da, 0xa2, 0x4f, 0xab, 0x85, 0x08, 0x84, 0x6b, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddCubic(uint32 dimension, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) mut => VT.AddCubic(ref this, dimension, beginOffset, constantCoefficient, linearCoefficient, quadraticCoefficient, cubicCoefficient);
			public HRESULT AddSinusoidal(uint32 dimension, double beginOffset, float bias, float amplitude, float frequency, float phase) mut => VT.AddSinusoidal(ref this, dimension, beginOffset, bias, amplitude, frequency, phase);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationPrimitiveInterpolation self, uint32 dimension, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationPrimitiveInterpolation self, uint32 dimension, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator2 : IUnknown
		{
			public const new Guid IID = .(0xea76aff8, 0xea22, 0x4a23, 0xa0, 0xef, 0xa6, 0xa9, 0x66, 0x70, 0x35, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(out uint32 dimension) mut => VT.GetDimension(ref this, out dimension);
			public HRESULT SetInitialValueAndVelocity(double* initialValue, double* initialVelocity, uint32 cDimension) mut => VT.SetInitialValueAndVelocity(ref this, initialValue, initialVelocity, cDimension);
			public HRESULT SetDuration(double duration) mut => VT.SetDuration(ref this, duration);
			public HRESULT GetDuration(out double duration) mut => VT.GetDuration(ref this, out duration);
			public HRESULT GetFinalValue(double* value, uint32 cDimension) mut => VT.GetFinalValue(ref this, value, cDimension);
			public HRESULT InterpolateValue(double offset, double* value, uint32 cDimension) mut => VT.InterpolateValue(ref this, offset, value, cDimension);
			public HRESULT InterpolateVelocity(double offset, double* velocity, uint32 cDimension) mut => VT.InterpolateVelocity(ref this, offset, velocity, cDimension);
			public HRESULT GetPrimitiveInterpolation(ref IUIAnimationPrimitiveInterpolation interpolation, uint32 cDimension) mut => VT.GetPrimitiveInterpolation(ref this, ref interpolation, cDimension);
			public HRESULT GetDependencies(out UI_ANIMATION_DEPENDENCIES initialValueDependencies, out UI_ANIMATION_DEPENDENCIES initialVelocityDependencies, out UI_ANIMATION_DEPENDENCIES durationDependencies) mut => VT.GetDependencies(ref this, out initialValueDependencies, out initialVelocityDependencies, out durationDependencies);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, out uint32 dimension) GetDimension;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, double* initialValue, double* initialVelocity, uint32 cDimension) SetInitialValueAndVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, double duration) SetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, out double duration) GetDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, double* value, uint32 cDimension) GetFinalValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, double offset, double* value, uint32 cDimension) InterpolateValue;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, double offset, double* velocity, uint32 cDimension) InterpolateVelocity;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, ref IUIAnimationPrimitiveInterpolation interpolation, uint32 cDimension) GetPrimitiveInterpolation;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationInterpolator2 self, out UI_ANIMATION_DEPENDENCIES initialValueDependencies, out UI_ANIMATION_DEPENDENCIES initialVelocityDependencies, out UI_ANIMATION_DEPENDENCIES durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory2 : IUnknown
		{
			public const new Guid IID = .(0x937d4916, 0xc1a6, 0x42d5, 0x88, 0xd8, 0x30, 0x34, 0x4d, 0x6e, 0xfe, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTransition(ref IUIAnimationInterpolator2 interpolator, out IUIAnimationTransition2* transition) mut => VT.CreateTransition(ref this, ref interpolator, out transition);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationTransitionFactory2 self, ref IUIAnimationInterpolator2 interpolator, out IUIAnimationTransition2* transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard2 : IUnknown
		{
			public const new Guid IID = .(0xae289cd2, 0x12d4, 0x4945, 0x94, 0x19, 0x9e, 0x41, 0xbe, 0x03, 0x4d, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTransition(ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition) mut => VT.AddTransition(ref this, ref variable, ref transition);
			public HRESULT AddKeyframeAtOffset(UI_ANIMATION_KEYFRAME existingKeyframe, double offset, out UI_ANIMATION_KEYFRAME keyframe) mut => VT.AddKeyframeAtOffset(ref this, existingKeyframe, offset, out keyframe);
			public HRESULT AddKeyframeAfterTransition(ref IUIAnimationTransition2 transition, out UI_ANIMATION_KEYFRAME keyframe) mut => VT.AddKeyframeAfterTransition(ref this, ref transition, out keyframe);
			public HRESULT AddTransitionAtKeyframe(ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, UI_ANIMATION_KEYFRAME startKeyframe) mut => VT.AddTransitionAtKeyframe(ref this, ref variable, ref transition, startKeyframe);
			public HRESULT AddTransitionBetweenKeyframes(ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) mut => VT.AddTransitionBetweenKeyframes(ref this, ref variable, ref transition, startKeyframe, endKeyframe);
			public HRESULT RepeatBetweenKeyframes(UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, double cRepetition, UI_ANIMATION_REPEAT_MODE repeatMode, IUIAnimationLoopIterationChangeHandler2* pIterationChangeHandler, uint id, BOOL fRegisterForNextAnimationEvent) mut => VT.RepeatBetweenKeyframes(ref this, startKeyframe, endKeyframe, cRepetition, repeatMode, pIterationChangeHandler, id, fRegisterForNextAnimationEvent);
			public HRESULT HoldVariable(ref IUIAnimationVariable2 variable) mut => VT.HoldVariable(ref this, ref variable);
			public HRESULT SetLongestAcceptableDelay(double delay) mut => VT.SetLongestAcceptableDelay(ref this, delay);
			public HRESULT SetSkipDuration(double secondsDuration) mut => VT.SetSkipDuration(ref this, secondsDuration);
			public HRESULT Schedule(double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) mut => VT.Schedule(ref this, timeNow, schedulingResult);
			public HRESULT Conclude() mut => VT.Conclude(ref this);
			public HRESULT Finish(double completionDeadline) mut => VT.Finish(ref this, completionDeadline);
			public HRESULT Abandon() mut => VT.Abandon(ref this);
			public HRESULT SetTag(IUnknown* object, uint32 id) mut => VT.SetTag(ref this, object, id);
			public HRESULT GetTag(IUnknown** object, uint32* id) mut => VT.GetTag(ref this, object, id);
			public HRESULT GetStatus(out UI_ANIMATION_STORYBOARD_STATUS status) mut => VT.GetStatus(ref this, out status);
			public HRESULT GetElapsedTime(out double elapsedTime) mut => VT.GetElapsedTime(ref this, out elapsedTime);
			public HRESULT SetStoryboardEventHandler(IUIAnimationStoryboardEventHandler2* handler, BOOL fRegisterStatusChangeForNextAnimationEvent, BOOL fRegisterUpdateForNextAnimationEvent) mut => VT.SetStoryboardEventHandler(ref this, handler, fRegisterStatusChangeForNextAnimationEvent, fRegisterUpdateForNextAnimationEvent);

			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition) AddTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, out UI_ANIMATION_KEYFRAME keyframe) AddKeyframeAtOffset;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, ref IUIAnimationTransition2 transition, out UI_ANIMATION_KEYFRAME keyframe) AddKeyframeAfterTransition;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, ref IUIAnimationVariable2 variable, ref IUIAnimationTransition2 transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, double cRepetition, UI_ANIMATION_REPEAT_MODE repeatMode, IUIAnimationLoopIterationChangeHandler2* pIterationChangeHandler, uint id, BOOL fRegisterForNextAnimationEvent) RepeatBetweenKeyframes;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, ref IUIAnimationVariable2 variable) HoldVariable;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, double delay) SetLongestAcceptableDelay;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, double secondsDuration) SetSkipDuration;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self) Conclude;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, double completionDeadline) Finish;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self) Abandon;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, IUnknown* object, uint32 id) SetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, IUnknown** object, uint32* id) GetTag;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, out UI_ANIMATION_STORYBOARD_STATUS status) GetStatus;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, out double elapsedTime) GetElapsedTime;
				public new function [CallingConvention(.Stdcall)] HRESULT(ref IUIAnimationStoryboard2 self, IUIAnimationStoryboardEventHandler2* handler, BOOL fRegisterStatusChangeForNextAnimationEvent, BOOL fRegisterUpdateForNextAnimationEvent) SetStoryboardEventHandler;
			}
		}
		
	}
}
