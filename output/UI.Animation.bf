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
		
		[AllowDuplicates]
		public enum UI_ANIMATION_UPDATE_RESULT : int32
		{
			UI_ANIMATION_UPDATE_NO_CHANGE = 0,
			UI_ANIMATION_UPDATE_VARIABLES_CHANGED = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_MANAGER_STATUS : int32
		{
			UI_ANIMATION_MANAGER_IDLE = 0,
			UI_ANIMATION_MANAGER_BUSY = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_MODE : int32
		{
			UI_ANIMATION_MODE_DISABLED = 0,
			UI_ANIMATION_MODE_SYSTEM_DEFAULT = 1,
			UI_ANIMATION_MODE_ENABLED = 2,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_REPEAT_MODE : int32
		{
			UI_ANIMATION_REPEAT_MODE_NORMAL = 0,
			UI_ANIMATION_REPEAT_MODE_ALTERNATE = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_ROUNDING_MODE : int32
		{
			UI_ANIMATION_ROUNDING_NEAREST = 0,
			UI_ANIMATION_ROUNDING_FLOOR = 1,
			UI_ANIMATION_ROUNDING_CEILING = 2,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_STORYBOARD_STATUS : int32
		{
			UI_ANIMATION_STORYBOARD_BUILDING = 0,
			UI_ANIMATION_STORYBOARD_SCHEDULED = 1,
			UI_ANIMATION_STORYBOARD_CANCELLED = 2,
			UI_ANIMATION_STORYBOARD_PLAYING = 3,
			UI_ANIMATION_STORYBOARD_TRUNCATED = 4,
			UI_ANIMATION_STORYBOARD_FINISHED = 5,
			UI_ANIMATION_STORYBOARD_READY = 6,
			UI_ANIMATION_STORYBOARD_INSUFFICIENT_PRIORITY = 7,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_SCHEDULING_RESULT : int32
		{
			UI_ANIMATION_SCHEDULING_UNEXPECTED_FAILURE = 0,
			UI_ANIMATION_SCHEDULING_INSUFFICIENT_PRIORITY = 1,
			UI_ANIMATION_SCHEDULING_ALREADY_SCHEDULED = 2,
			UI_ANIMATION_SCHEDULING_SUCCEEDED = 3,
			UI_ANIMATION_SCHEDULING_DEFERRED = 4,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_PRIORITY_EFFECT : int32
		{
			UI_ANIMATION_PRIORITY_EFFECT_FAILURE = 0,
			UI_ANIMATION_PRIORITY_EFFECT_DELAY = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_SLOPE : int32
		{
			UI_ANIMATION_SLOPE_INCREASING = 0,
			UI_ANIMATION_SLOPE_DECREASING = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_DEPENDENCIES : uint32
		{
			UI_ANIMATION_DEPENDENCY_NONE = 0,
			UI_ANIMATION_DEPENDENCY_INTERMEDIATE_VALUES = 1,
			UI_ANIMATION_DEPENDENCY_FINAL_VALUE = 2,
			UI_ANIMATION_DEPENDENCY_FINAL_VELOCITY = 4,
			UI_ANIMATION_DEPENDENCY_DURATION = 8,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_IDLE_BEHAVIOR : int32
		{
			UI_ANIMATION_IDLE_BEHAVIOR_CONTINUE = 0,
			UI_ANIMATION_IDLE_BEHAVIOR_DISABLE = 1,
		}
		[AllowDuplicates]
		public enum UI_ANIMATION_TIMER_CLIENT_STATUS : int32
		{
			UI_ANIMATION_TIMER_CLIENT_IDLE = 0,
			UI_ANIMATION_TIMER_CLIENT_BUSY = 1,
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
			
			public HRESULT CreateAnimationVariable(double initialValue, IUIAnimationVariable** variable) mut
			{
				return VT.CreateAnimationVariable(&this, initialValue, variable);
			}
			public HRESULT ScheduleTransition(IUIAnimationVariable* variable, IUIAnimationTransition* transition, double timeNow) mut
			{
				return VT.ScheduleTransition(&this, variable, transition, timeNow);
			}
			public HRESULT CreateStoryboard(IUIAnimationStoryboard** storyboard) mut
			{
				return VT.CreateStoryboard(&this, storyboard);
			}
			public HRESULT FinishAllStoryboards(double completionDeadline) mut
			{
				return VT.FinishAllStoryboards(&this, completionDeadline);
			}
			public HRESULT AbandonAllStoryboards() mut
			{
				return VT.AbandonAllStoryboards(&this);
			}
			public HRESULT Update(double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) mut
			{
				return VT.Update(&this, timeNow, updateResult);
			}
			public HRESULT GetVariableFromTag(IUnknown* object, uint32 id, IUIAnimationVariable** variable) mut
			{
				return VT.GetVariableFromTag(&this, object, id, variable);
			}
			public HRESULT GetStoryboardFromTag(IUnknown* object, uint32 id, IUIAnimationStoryboard** storyboard) mut
			{
				return VT.GetStoryboardFromTag(&this, object, id, storyboard);
			}
			public HRESULT GetStatus(UI_ANIMATION_MANAGER_STATUS* status) mut
			{
				return VT.GetStatus(&this, status);
			}
			public HRESULT SetAnimationMode(UI_ANIMATION_MODE mode) mut
			{
				return VT.SetAnimationMode(&this, mode);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT SetManagerEventHandler(IUIAnimationManagerEventHandler* handler) mut
			{
				return VT.SetManagerEventHandler(&this, handler);
			}
			public HRESULT SetCancelPriorityComparison(IUIAnimationPriorityComparison* comparison) mut
			{
				return VT.SetCancelPriorityComparison(&this, comparison);
			}
			public HRESULT SetTrimPriorityComparison(IUIAnimationPriorityComparison* comparison) mut
			{
				return VT.SetTrimPriorityComparison(&this, comparison);
			}
			public HRESULT SetCompressPriorityComparison(IUIAnimationPriorityComparison* comparison) mut
			{
				return VT.SetCompressPriorityComparison(&this, comparison);
			}
			public HRESULT SetConcludePriorityComparison(IUIAnimationPriorityComparison* comparison) mut
			{
				return VT.SetConcludePriorityComparison(&this, comparison);
			}
			public HRESULT SetDefaultLongestAcceptableDelay(double delay) mut
			{
				return VT.SetDefaultLongestAcceptableDelay(&this, delay);
			}
			public HRESULT Shutdown() mut
			{
				return VT.Shutdown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationManager *self, double initialValue, IUIAnimationVariable** variable) CreateAnimationVariable;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, double timeNow) ScheduleTransition;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationStoryboard** storyboard) CreateStoryboard;
				public new function HRESULT(IUIAnimationManager *self, double completionDeadline) FinishAllStoryboards;
				public new function HRESULT(IUIAnimationManager *self) AbandonAllStoryboards;
				public new function HRESULT(IUIAnimationManager *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public new function HRESULT(IUIAnimationManager *self, IUnknown* object, uint32 id, IUIAnimationVariable** variable) GetVariableFromTag;
				public new function HRESULT(IUIAnimationManager *self, IUnknown* object, uint32 id, IUIAnimationStoryboard** storyboard) GetStoryboardFromTag;
				public new function HRESULT(IUIAnimationManager *self, UI_ANIMATION_MANAGER_STATUS* status) GetStatus;
				public new function HRESULT(IUIAnimationManager *self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public new function HRESULT(IUIAnimationManager *self) Pause;
				public new function HRESULT(IUIAnimationManager *self) Resume;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationManagerEventHandler* handler) SetManagerEventHandler;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetCancelPriorityComparison;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetTrimPriorityComparison;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetCompressPriorityComparison;
				public new function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetConcludePriorityComparison;
				public new function HRESULT(IUIAnimationManager *self, double delay) SetDefaultLongestAcceptableDelay;
				public new function HRESULT(IUIAnimationManager *self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable : IUnknown
		{
			public const new Guid IID = .(0x8ceeb155, 0x2849, 0x4ce5, 0x94, 0x48, 0x91, 0xff, 0x70, 0xe1, 0xe4, 0xd9);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetValue(double* value) mut
			{
				return VT.GetValue(&this, value);
			}
			public HRESULT GetFinalValue(double* finalValue) mut
			{
				return VT.GetFinalValue(&this, finalValue);
			}
			public HRESULT GetPreviousValue(double* previousValue) mut
			{
				return VT.GetPreviousValue(&this, previousValue);
			}
			public HRESULT GetIntegerValue(int32* value) mut
			{
				return VT.GetIntegerValue(&this, value);
			}
			public HRESULT GetFinalIntegerValue(int32* finalValue) mut
			{
				return VT.GetFinalIntegerValue(&this, finalValue);
			}
			public HRESULT GetPreviousIntegerValue(int32* previousValue) mut
			{
				return VT.GetPreviousIntegerValue(&this, previousValue);
			}
			public HRESULT GetCurrentStoryboard(IUIAnimationStoryboard** storyboard) mut
			{
				return VT.GetCurrentStoryboard(&this, storyboard);
			}
			public HRESULT SetLowerBound(double bound) mut
			{
				return VT.SetLowerBound(&this, bound);
			}
			public HRESULT SetUpperBound(double bound) mut
			{
				return VT.SetUpperBound(&this, bound);
			}
			public HRESULT SetRoundingMode(UI_ANIMATION_ROUNDING_MODE mode) mut
			{
				return VT.SetRoundingMode(&this, mode);
			}
			public HRESULT SetTag(IUnknown* object, uint32 id) mut
			{
				return VT.SetTag(&this, object, id);
			}
			public HRESULT GetTag(IUnknown** object, uint32* id) mut
			{
				return VT.GetTag(&this, object, id);
			}
			public HRESULT SetVariableChangeHandler(IUIAnimationVariableChangeHandler* handler) mut
			{
				return VT.SetVariableChangeHandler(&this, handler);
			}
			public HRESULT SetVariableIntegerChangeHandler(IUIAnimationVariableIntegerChangeHandler* handler) mut
			{
				return VT.SetVariableIntegerChangeHandler(&this, handler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariable *self, double* value) GetValue;
				public new function HRESULT(IUIAnimationVariable *self, double* finalValue) GetFinalValue;
				public new function HRESULT(IUIAnimationVariable *self, double* previousValue) GetPreviousValue;
				public new function HRESULT(IUIAnimationVariable *self, int32* value) GetIntegerValue;
				public new function HRESULT(IUIAnimationVariable *self, int32* finalValue) GetFinalIntegerValue;
				public new function HRESULT(IUIAnimationVariable *self, int32* previousValue) GetPreviousIntegerValue;
				public new function HRESULT(IUIAnimationVariable *self, IUIAnimationStoryboard** storyboard) GetCurrentStoryboard;
				public new function HRESULT(IUIAnimationVariable *self, double bound) SetLowerBound;
				public new function HRESULT(IUIAnimationVariable *self, double bound) SetUpperBound;
				public new function HRESULT(IUIAnimationVariable *self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public new function HRESULT(IUIAnimationVariable *self, IUnknown* object, uint32 id) SetTag;
				public new function HRESULT(IUIAnimationVariable *self, IUnknown** object, uint32* id) GetTag;
				public new function HRESULT(IUIAnimationVariable *self, IUIAnimationVariableChangeHandler* handler) SetVariableChangeHandler;
				public new function HRESULT(IUIAnimationVariable *self, IUIAnimationVariableIntegerChangeHandler* handler) SetVariableIntegerChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard : IUnknown
		{
			public const new Guid IID = .(0xa8ff128f, 0x9bf9, 0x4af1, 0x9e, 0x67, 0xe5, 0xe4, 0x10, 0xde, 0xfb, 0x84);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTransition(IUIAnimationVariable* variable, IUIAnimationTransition* transition) mut
			{
				return VT.AddTransition(&this, variable, transition);
			}
			public HRESULT AddKeyframeAtOffset(UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) mut
			{
				return VT.AddKeyframeAtOffset(&this, existingKeyframe, offset, keyframe);
			}
			public HRESULT AddKeyframeAfterTransition(IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME* keyframe) mut
			{
				return VT.AddKeyframeAfterTransition(&this, transition, keyframe);
			}
			public HRESULT AddTransitionAtKeyframe(IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe) mut
			{
				return VT.AddTransitionAtKeyframe(&this, variable, transition, startKeyframe);
			}
			public HRESULT AddTransitionBetweenKeyframes(IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) mut
			{
				return VT.AddTransitionBetweenKeyframes(&this, variable, transition, startKeyframe, endKeyframe);
			}
			public HRESULT RepeatBetweenKeyframes(UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, int32 repetitionCount) mut
			{
				return VT.RepeatBetweenKeyframes(&this, startKeyframe, endKeyframe, repetitionCount);
			}
			public HRESULT HoldVariable(IUIAnimationVariable* variable) mut
			{
				return VT.HoldVariable(&this, variable);
			}
			public HRESULT SetLongestAcceptableDelay(double delay) mut
			{
				return VT.SetLongestAcceptableDelay(&this, delay);
			}
			public HRESULT Schedule(double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) mut
			{
				return VT.Schedule(&this, timeNow, schedulingResult);
			}
			public HRESULT Conclude() mut
			{
				return VT.Conclude(&this);
			}
			public HRESULT Finish(double completionDeadline) mut
			{
				return VT.Finish(&this, completionDeadline);
			}
			public HRESULT Abandon() mut
			{
				return VT.Abandon(&this);
			}
			public HRESULT SetTag(IUnknown* object, uint32 id) mut
			{
				return VT.SetTag(&this, object, id);
			}
			public HRESULT GetTag(IUnknown** object, uint32* id) mut
			{
				return VT.GetTag(&this, object, id);
			}
			public HRESULT GetStatus(UI_ANIMATION_STORYBOARD_STATUS* status) mut
			{
				return VT.GetStatus(&this, status);
			}
			public HRESULT GetElapsedTime(double* elapsedTime) mut
			{
				return VT.GetElapsedTime(&this, elapsedTime);
			}
			public HRESULT SetStoryboardEventHandler(IUIAnimationStoryboardEventHandler* handler) mut
			{
				return VT.SetStoryboardEventHandler(&this, handler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition) AddTransition;
				public new function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAtOffset;
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAfterTransition;
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public new function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, int32 repetitionCount) RepeatBetweenKeyframes;
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable) HoldVariable;
				public new function HRESULT(IUIAnimationStoryboard *self, double delay) SetLongestAcceptableDelay;
				public new function HRESULT(IUIAnimationStoryboard *self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public new function HRESULT(IUIAnimationStoryboard *self) Conclude;
				public new function HRESULT(IUIAnimationStoryboard *self, double completionDeadline) Finish;
				public new function HRESULT(IUIAnimationStoryboard *self) Abandon;
				public new function HRESULT(IUIAnimationStoryboard *self, IUnknown* object, uint32 id) SetTag;
				public new function HRESULT(IUIAnimationStoryboard *self, IUnknown** object, uint32* id) GetTag;
				public new function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_STORYBOARD_STATUS* status) GetStatus;
				public new function HRESULT(IUIAnimationStoryboard *self, double* elapsedTime) GetElapsedTime;
				public new function HRESULT(IUIAnimationStoryboard *self, IUIAnimationStoryboardEventHandler* handler) SetStoryboardEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition : IUnknown
		{
			public const new Guid IID = .(0xdc6ce252, 0xf731, 0x41cf, 0xb6, 0x10, 0x61, 0x4b, 0x6c, 0xa0, 0x49, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialValue(double value) mut
			{
				return VT.SetInitialValue(&this, value);
			}
			public HRESULT SetInitialVelocity(double velocity) mut
			{
				return VT.SetInitialVelocity(&this, velocity);
			}
			public HRESULT IsDurationKnown() mut
			{
				return VT.IsDurationKnown(&this);
			}
			public HRESULT GetDuration(double* duration) mut
			{
				return VT.GetDuration(&this, duration);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransition *self, double value) SetInitialValue;
				public new function HRESULT(IUIAnimationTransition *self, double velocity) SetInitialVelocity;
				public new function HRESULT(IUIAnimationTransition *self) IsDurationKnown;
				public new function HRESULT(IUIAnimationTransition *self, double* duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x783321ed, 0x78a3, 0x4366, 0xb5, 0x74, 0x6a, 0xf6, 0x07, 0xa6, 0x47, 0x88);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnManagerStatusChanged(UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) mut
			{
				return VT.OnManagerStatusChanged(&this, newStatus, previousStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationManagerEventHandler *self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler : IUnknown
		{
			public const new Guid IID = .(0x6358b7ba, 0x87d2, 0x42d5, 0xbf, 0x71, 0x82, 0xe9, 0x19, 0xdd, 0x58, 0x62);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnValueChanged(IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, double newValue, double previousValue) mut
			{
				return VT.OnValueChanged(&this, storyboard, variable, newValue, previousValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariableChangeHandler *self, IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, double newValue, double previousValue) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler : IUnknown
		{
			public const new Guid IID = .(0xbb3e1550, 0x356e, 0x44b0, 0x99, 0xda, 0x85, 0xac, 0x60, 0x17, 0x86, 0x5e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIntegerValueChanged(IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, int32 newValue, int32 previousValue) mut
			{
				return VT.OnIntegerValueChanged(&this, storyboard, variable, newValue, previousValue);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariableIntegerChangeHandler *self, IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, int32 newValue, int32 previousValue) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler : IUnknown
		{
			public const new Guid IID = .(0x3d5c9008, 0xec7c, 0x4364, 0x9f, 0x8a, 0x9a, 0xf3, 0xc5, 0x8c, 0xba, 0xe6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStoryboardStatusChanged(IUIAnimationStoryboard* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) mut
			{
				return VT.OnStoryboardStatusChanged(&this, storyboard, newStatus, previousStatus);
			}
			public HRESULT OnStoryboardUpdated(IUIAnimationStoryboard* storyboard) mut
			{
				return VT.OnStoryboardUpdated(&this, storyboard);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationStoryboardEventHandler *self, IUIAnimationStoryboard* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public new function HRESULT(IUIAnimationStoryboardEventHandler *self, IUIAnimationStoryboard* storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison : IUnknown
		{
			public const new Guid IID = .(0x83fa9b74, 0x5f86, 0x4618, 0xbc, 0x6a, 0xa2, 0xfa, 0xc1, 0x9b, 0x3f, 0x44);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HasPriority(IUIAnimationStoryboard* scheduledStoryboard, IUIAnimationStoryboard* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) mut
			{
				return VT.HasPriority(&this, scheduledStoryboard, newStoryboard, priorityEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationPriorityComparison *self, IUIAnimationStoryboard* scheduledStoryboard, IUIAnimationStoryboard* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary : IUnknown
		{
			public const new Guid IID = .(0xca5a14b1, 0xd24f, 0x48b8, 0x8f, 0xe4, 0xc7, 0x81, 0x69, 0xba, 0x95, 0x4e);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstantaneousTransition(double finalValue, IUIAnimationTransition** transition) mut
			{
				return VT.CreateInstantaneousTransition(&this, finalValue, transition);
			}
			public HRESULT CreateConstantTransition(double duration, IUIAnimationTransition** transition) mut
			{
				return VT.CreateConstantTransition(&this, duration, transition);
			}
			public HRESULT CreateDiscreteTransition(double delay, double finalValue, double hold, IUIAnimationTransition** transition) mut
			{
				return VT.CreateDiscreteTransition(&this, delay, finalValue, hold, transition);
			}
			public HRESULT CreateLinearTransition(double duration, double finalValue, IUIAnimationTransition** transition) mut
			{
				return VT.CreateLinearTransition(&this, duration, finalValue, transition);
			}
			public HRESULT CreateLinearTransitionFromSpeed(double speed, double finalValue, IUIAnimationTransition** transition) mut
			{
				return VT.CreateLinearTransitionFromSpeed(&this, speed, finalValue, transition);
			}
			public HRESULT CreateSinusoidalTransitionFromVelocity(double duration, double period, IUIAnimationTransition** transition) mut
			{
				return VT.CreateSinusoidalTransitionFromVelocity(&this, duration, period, transition);
			}
			public HRESULT CreateSinusoidalTransitionFromRange(double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition** transition) mut
			{
				return VT.CreateSinusoidalTransitionFromRange(&this, duration, minimumValue, maximumValue, period, slope, transition);
			}
			public HRESULT CreateAccelerateDecelerateTransition(double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition** transition) mut
			{
				return VT.CreateAccelerateDecelerateTransition(&this, duration, finalValue, accelerationRatio, decelerationRatio, transition);
			}
			public HRESULT CreateReversalTransition(double duration, IUIAnimationTransition** transition) mut
			{
				return VT.CreateReversalTransition(&this, duration, transition);
			}
			public HRESULT CreateCubicTransition(double duration, double finalValue, double finalVelocity, IUIAnimationTransition** transition) mut
			{
				return VT.CreateCubicTransition(&this, duration, finalValue, finalVelocity, transition);
			}
			public HRESULT CreateSmoothStopTransition(double maximumDuration, double finalValue, IUIAnimationTransition** transition) mut
			{
				return VT.CreateSmoothStopTransition(&this, maximumDuration, finalValue, transition);
			}
			public HRESULT CreateParabolicTransitionFromAcceleration(double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition** transition) mut
			{
				return VT.CreateParabolicTransitionFromAcceleration(&this, finalValue, finalVelocity, acceleration, transition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double finalValue, IUIAnimationTransition** transition) CreateInstantaneousTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, IUIAnimationTransition** transition) CreateConstantTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double delay, double finalValue, double hold, IUIAnimationTransition** transition) CreateDiscreteTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, IUIAnimationTransition** transition) CreateLinearTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double speed, double finalValue, IUIAnimationTransition** transition) CreateLinearTransitionFromSpeed;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double period, IUIAnimationTransition** transition) CreateSinusoidalTransitionFromVelocity;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition** transition) CreateSinusoidalTransitionFromRange;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition** transition) CreateAccelerateDecelerateTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, IUIAnimationTransition** transition) CreateReversalTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, double finalVelocity, IUIAnimationTransition** transition) CreateCubicTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double maximumDuration, double finalValue, IUIAnimationTransition** transition) CreateSmoothStopTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary *self, double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition** transition) CreateParabolicTransitionFromAcceleration;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator : IUnknown
		{
			public const new Guid IID = .(0x7815cbba, 0xddf7, 0x478c, 0xa4, 0x6c, 0x7b, 0x6c, 0x73, 0x8b, 0x79, 0x78);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetInitialValueAndVelocity(double initialValue, double initialVelocity) mut
			{
				return VT.SetInitialValueAndVelocity(&this, initialValue, initialVelocity);
			}
			public HRESULT SetDuration(double duration) mut
			{
				return VT.SetDuration(&this, duration);
			}
			public HRESULT GetDuration(double* duration) mut
			{
				return VT.GetDuration(&this, duration);
			}
			public HRESULT GetFinalValue(double* value) mut
			{
				return VT.GetFinalValue(&this, value);
			}
			public HRESULT InterpolateValue(double offset, double* value) mut
			{
				return VT.InterpolateValue(&this, offset, value);
			}
			public HRESULT InterpolateVelocity(double offset, double* velocity) mut
			{
				return VT.InterpolateVelocity(&this, offset, velocity);
			}
			public HRESULT GetDependencies(UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) mut
			{
				return VT.GetDependencies(&this, initialValueDependencies, initialVelocityDependencies, durationDependencies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationInterpolator *self, double initialValue, double initialVelocity) SetInitialValueAndVelocity;
				public new function HRESULT(IUIAnimationInterpolator *self, double duration) SetDuration;
				public new function HRESULT(IUIAnimationInterpolator *self, double* duration) GetDuration;
				public new function HRESULT(IUIAnimationInterpolator *self, double* value) GetFinalValue;
				public new function HRESULT(IUIAnimationInterpolator *self, double offset, double* value) InterpolateValue;
				public new function HRESULT(IUIAnimationInterpolator *self, double offset, double* velocity) InterpolateVelocity;
				public new function HRESULT(IUIAnimationInterpolator *self, UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory : IUnknown
		{
			public const new Guid IID = .(0xfcd91e03, 0x3e3b, 0x45ad, 0xbb, 0xb1, 0x6d, 0xfc, 0x81, 0x53, 0x74, 0x3d);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTransition(IUIAnimationInterpolator* interpolator, IUIAnimationTransition** transition) mut
			{
				return VT.CreateTransition(&this, interpolator, transition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransitionFactory *self, IUIAnimationInterpolator* interpolator, IUIAnimationTransition** transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationTimer : IUnknown
		{
			public const new Guid IID = .(0x6b0efad1, 0xa053, 0x41d6, 0x90, 0x85, 0x33, 0xa6, 0x89, 0x14, 0x46, 0x65);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT SetTimerUpdateHandler(IUIAnimationTimerUpdateHandler* updateHandler, UI_ANIMATION_IDLE_BEHAVIOR idleBehavior) mut
			{
				return VT.SetTimerUpdateHandler(&this, updateHandler, idleBehavior);
			}
			public HRESULT SetTimerEventHandler(IUIAnimationTimerEventHandler* handler) mut
			{
				return VT.SetTimerEventHandler(&this, handler);
			}
			public HRESULT Enable() mut
			{
				return VT.Enable(&this);
			}
			public HRESULT Disable() mut
			{
				return VT.Disable(&this);
			}
			public HRESULT IsEnabled() mut
			{
				return VT.IsEnabled(&this);
			}
			public HRESULT GetTime(double* seconds) mut
			{
				return VT.GetTime(&this, seconds);
			}
			public HRESULT SetFrameRateThreshold(uint32 framesPerSecond) mut
			{
				return VT.SetFrameRateThreshold(&this, framesPerSecond);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTimer *self, IUIAnimationTimerUpdateHandler* updateHandler, UI_ANIMATION_IDLE_BEHAVIOR idleBehavior) SetTimerUpdateHandler;
				public new function HRESULT(IUIAnimationTimer *self, IUIAnimationTimerEventHandler* handler) SetTimerEventHandler;
				public new function HRESULT(IUIAnimationTimer *self) Enable;
				public new function HRESULT(IUIAnimationTimer *self) Disable;
				public new function HRESULT(IUIAnimationTimer *self) IsEnabled;
				public new function HRESULT(IUIAnimationTimer *self, double* seconds) GetTime;
				public new function HRESULT(IUIAnimationTimer *self, uint32 framesPerSecond) SetFrameRateThreshold;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerUpdateHandler : IUnknown
		{
			public const new Guid IID = .(0x195509b7, 0x5d5e, 0x4e3e, 0xb2, 0x78, 0xee, 0x37, 0x59, 0xb3, 0x67, 0xad);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnUpdate(double timeNow, UI_ANIMATION_UPDATE_RESULT* result) mut
			{
				return VT.OnUpdate(&this, timeNow, result);
			}
			public HRESULT SetTimerClientEventHandler(IUIAnimationTimerClientEventHandler* handler) mut
			{
				return VT.SetTimerClientEventHandler(&this, handler);
			}
			public HRESULT ClearTimerClientEventHandler() mut
			{
				return VT.ClearTimerClientEventHandler(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTimerUpdateHandler *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* result) OnUpdate;
				public new function HRESULT(IUIAnimationTimerUpdateHandler *self, IUIAnimationTimerClientEventHandler* handler) SetTimerClientEventHandler;
				public new function HRESULT(IUIAnimationTimerUpdateHandler *self) ClearTimerClientEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerClientEventHandler : IUnknown
		{
			public const new Guid IID = .(0xbedb4db6, 0x94fa, 0x4bfb, 0xa4, 0x7f, 0xef, 0x2d, 0x9e, 0x40, 0x8c, 0x25);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnTimerClientStatusChanged(UI_ANIMATION_TIMER_CLIENT_STATUS newStatus, UI_ANIMATION_TIMER_CLIENT_STATUS previousStatus) mut
			{
				return VT.OnTimerClientStatusChanged(&this, newStatus, previousStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTimerClientEventHandler *self, UI_ANIMATION_TIMER_CLIENT_STATUS newStatus, UI_ANIMATION_TIMER_CLIENT_STATUS previousStatus) OnTimerClientStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x274a7dea, 0xd771, 0x4095, 0xab, 0xbd, 0x8d, 0xf7, 0xab, 0xd2, 0x3c, 0xe3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnPreUpdate() mut
			{
				return VT.OnPreUpdate(&this);
			}
			public HRESULT OnPostUpdate() mut
			{
				return VT.OnPostUpdate(&this);
			}
			public HRESULT OnRenderingTooSlow(uint32 framesPerSecond) mut
			{
				return VT.OnRenderingTooSlow(&this, framesPerSecond);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTimerEventHandler *self) OnPreUpdate;
				public new function HRESULT(IUIAnimationTimerEventHandler *self) OnPostUpdate;
				public new function HRESULT(IUIAnimationTimerEventHandler *self, uint32 framesPerSecond) OnRenderingTooSlow;
			}
		}
		[CRepr]
		public struct IUIAnimationManager2 : IUnknown
		{
			public const new Guid IID = .(0xd8b6f7d4, 0x4109, 0x4d3f, 0xac, 0xee, 0x87, 0x99, 0x26, 0x96, 0x8c, 0xb1);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateAnimationVectorVariable(double* initialValue, uint32 cDimension, IUIAnimationVariable2** variable) mut
			{
				return VT.CreateAnimationVectorVariable(&this, initialValue, cDimension, variable);
			}
			public HRESULT CreateAnimationVariable(double initialValue, IUIAnimationVariable2** variable) mut
			{
				return VT.CreateAnimationVariable(&this, initialValue, variable);
			}
			public HRESULT ScheduleTransition(IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, double timeNow) mut
			{
				return VT.ScheduleTransition(&this, variable, transition, timeNow);
			}
			public HRESULT CreateStoryboard(IUIAnimationStoryboard2** storyboard) mut
			{
				return VT.CreateStoryboard(&this, storyboard);
			}
			public HRESULT FinishAllStoryboards(double completionDeadline) mut
			{
				return VT.FinishAllStoryboards(&this, completionDeadline);
			}
			public HRESULT AbandonAllStoryboards() mut
			{
				return VT.AbandonAllStoryboards(&this);
			}
			public HRESULT Update(double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) mut
			{
				return VT.Update(&this, timeNow, updateResult);
			}
			public HRESULT GetVariableFromTag(IUnknown* object, uint32 id, IUIAnimationVariable2** variable) mut
			{
				return VT.GetVariableFromTag(&this, object, id, variable);
			}
			public HRESULT GetStoryboardFromTag(IUnknown* object, uint32 id, IUIAnimationStoryboard2** storyboard) mut
			{
				return VT.GetStoryboardFromTag(&this, object, id, storyboard);
			}
			public HRESULT EstimateNextEventTime(double* seconds) mut
			{
				return VT.EstimateNextEventTime(&this, seconds);
			}
			public HRESULT GetStatus(UI_ANIMATION_MANAGER_STATUS* status) mut
			{
				return VT.GetStatus(&this, status);
			}
			public HRESULT SetAnimationMode(UI_ANIMATION_MODE mode) mut
			{
				return VT.SetAnimationMode(&this, mode);
			}
			public HRESULT Pause() mut
			{
				return VT.Pause(&this);
			}
			public HRESULT Resume() mut
			{
				return VT.Resume(&this);
			}
			public HRESULT SetManagerEventHandler(IUIAnimationManagerEventHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut
			{
				return VT.SetManagerEventHandler(&this, handler, fRegisterForNextAnimationEvent);
			}
			public HRESULT SetCancelPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut
			{
				return VT.SetCancelPriorityComparison(&this, comparison);
			}
			public HRESULT SetTrimPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut
			{
				return VT.SetTrimPriorityComparison(&this, comparison);
			}
			public HRESULT SetCompressPriorityComparison(IUIAnimationPriorityComparison2* comparison) mut
			{
				return VT.SetCompressPriorityComparison(&this, comparison);
			}
			public HRESULT SetConcludePriorityComparison(IUIAnimationPriorityComparison2* comparison) mut
			{
				return VT.SetConcludePriorityComparison(&this, comparison);
			}
			public HRESULT SetDefaultLongestAcceptableDelay(double delay) mut
			{
				return VT.SetDefaultLongestAcceptableDelay(&this, delay);
			}
			public HRESULT Shutdown() mut
			{
				return VT.Shutdown(&this);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationManager2 *self, double* initialValue, uint32 cDimension, IUIAnimationVariable2** variable) CreateAnimationVectorVariable;
				public new function HRESULT(IUIAnimationManager2 *self, double initialValue, IUIAnimationVariable2** variable) CreateAnimationVariable;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, double timeNow) ScheduleTransition;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationStoryboard2** storyboard) CreateStoryboard;
				public new function HRESULT(IUIAnimationManager2 *self, double completionDeadline) FinishAllStoryboards;
				public new function HRESULT(IUIAnimationManager2 *self) AbandonAllStoryboards;
				public new function HRESULT(IUIAnimationManager2 *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public new function HRESULT(IUIAnimationManager2 *self, IUnknown* object, uint32 id, IUIAnimationVariable2** variable) GetVariableFromTag;
				public new function HRESULT(IUIAnimationManager2 *self, IUnknown* object, uint32 id, IUIAnimationStoryboard2** storyboard) GetStoryboardFromTag;
				public new function HRESULT(IUIAnimationManager2 *self, double* seconds) EstimateNextEventTime;
				public new function HRESULT(IUIAnimationManager2 *self, UI_ANIMATION_MANAGER_STATUS* status) GetStatus;
				public new function HRESULT(IUIAnimationManager2 *self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public new function HRESULT(IUIAnimationManager2 *self) Pause;
				public new function HRESULT(IUIAnimationManager2 *self) Resume;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationManagerEventHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetManagerEventHandler;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetCancelPriorityComparison;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetTrimPriorityComparison;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetCompressPriorityComparison;
				public new function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetConcludePriorityComparison;
				public new function HRESULT(IUIAnimationManager2 *self, double delay) SetDefaultLongestAcceptableDelay;
				public new function HRESULT(IUIAnimationManager2 *self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable2 : IUnknown
		{
			public const new Guid IID = .(0x4914b304, 0x96ab, 0x44d9, 0x9e, 0x77, 0xd5, 0x10, 0x9b, 0x7e, 0x74, 0x66);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(uint32* dimension) mut
			{
				return VT.GetDimension(&this, dimension);
			}
			public HRESULT GetValue(double* value) mut
			{
				return VT.GetValue(&this, value);
			}
			public HRESULT GetVectorValue(double* value, uint32 cDimension) mut
			{
				return VT.GetVectorValue(&this, value, cDimension);
			}
			public HRESULT GetCurve(IDCompositionAnimation* animation) mut
			{
				return VT.GetCurve(&this, animation);
			}
			public HRESULT GetVectorCurve(IDCompositionAnimation** animation, uint32 cDimension) mut
			{
				return VT.GetVectorCurve(&this, animation, cDimension);
			}
			public HRESULT GetFinalValue(double* finalValue) mut
			{
				return VT.GetFinalValue(&this, finalValue);
			}
			public HRESULT GetFinalVectorValue(double* finalValue, uint32 cDimension) mut
			{
				return VT.GetFinalVectorValue(&this, finalValue, cDimension);
			}
			public HRESULT GetPreviousValue(double* previousValue) mut
			{
				return VT.GetPreviousValue(&this, previousValue);
			}
			public HRESULT GetPreviousVectorValue(double* previousValue, uint32 cDimension) mut
			{
				return VT.GetPreviousVectorValue(&this, previousValue, cDimension);
			}
			public HRESULT GetIntegerValue(int32* value) mut
			{
				return VT.GetIntegerValue(&this, value);
			}
			public HRESULT GetIntegerVectorValue(int32* value, uint32 cDimension) mut
			{
				return VT.GetIntegerVectorValue(&this, value, cDimension);
			}
			public HRESULT GetFinalIntegerValue(int32* finalValue) mut
			{
				return VT.GetFinalIntegerValue(&this, finalValue);
			}
			public HRESULT GetFinalIntegerVectorValue(int32* finalValue, uint32 cDimension) mut
			{
				return VT.GetFinalIntegerVectorValue(&this, finalValue, cDimension);
			}
			public HRESULT GetPreviousIntegerValue(int32* previousValue) mut
			{
				return VT.GetPreviousIntegerValue(&this, previousValue);
			}
			public HRESULT GetPreviousIntegerVectorValue(int32* previousValue, uint32 cDimension) mut
			{
				return VT.GetPreviousIntegerVectorValue(&this, previousValue, cDimension);
			}
			public HRESULT GetCurrentStoryboard(IUIAnimationStoryboard2** storyboard) mut
			{
				return VT.GetCurrentStoryboard(&this, storyboard);
			}
			public HRESULT SetLowerBound(double bound) mut
			{
				return VT.SetLowerBound(&this, bound);
			}
			public HRESULT SetLowerBoundVector(double* bound, uint32 cDimension) mut
			{
				return VT.SetLowerBoundVector(&this, bound, cDimension);
			}
			public HRESULT SetUpperBound(double bound) mut
			{
				return VT.SetUpperBound(&this, bound);
			}
			public HRESULT SetUpperBoundVector(double* bound, uint32 cDimension) mut
			{
				return VT.SetUpperBoundVector(&this, bound, cDimension);
			}
			public HRESULT SetRoundingMode(UI_ANIMATION_ROUNDING_MODE mode) mut
			{
				return VT.SetRoundingMode(&this, mode);
			}
			public HRESULT SetTag(IUnknown* object, uint32 id) mut
			{
				return VT.SetTag(&this, object, id);
			}
			public HRESULT GetTag(IUnknown** object, uint32* id) mut
			{
				return VT.GetTag(&this, object, id);
			}
			public HRESULT SetVariableChangeHandler(IUIAnimationVariableChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut
			{
				return VT.SetVariableChangeHandler(&this, handler, fRegisterForNextAnimationEvent);
			}
			public HRESULT SetVariableIntegerChangeHandler(IUIAnimationVariableIntegerChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) mut
			{
				return VT.SetVariableIntegerChangeHandler(&this, handler, fRegisterForNextAnimationEvent);
			}
			public HRESULT SetVariableCurveChangeHandler(IUIAnimationVariableCurveChangeHandler2* handler) mut
			{
				return VT.SetVariableCurveChangeHandler(&this, handler);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariable2 *self, uint32* dimension) GetDimension;
				public new function HRESULT(IUIAnimationVariable2 *self, double* value) GetValue;
				public new function HRESULT(IUIAnimationVariable2 *self, double* value, uint32 cDimension) GetVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, IDCompositionAnimation* animation) GetCurve;
				public new function HRESULT(IUIAnimationVariable2 *self, IDCompositionAnimation** animation, uint32 cDimension) GetVectorCurve;
				public new function HRESULT(IUIAnimationVariable2 *self, double* finalValue) GetFinalValue;
				public new function HRESULT(IUIAnimationVariable2 *self, double* finalValue, uint32 cDimension) GetFinalVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, double* previousValue) GetPreviousValue;
				public new function HRESULT(IUIAnimationVariable2 *self, double* previousValue, uint32 cDimension) GetPreviousVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* value) GetIntegerValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* value, uint32 cDimension) GetIntegerVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* finalValue) GetFinalIntegerValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* finalValue, uint32 cDimension) GetFinalIntegerVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* previousValue) GetPreviousIntegerValue;
				public new function HRESULT(IUIAnimationVariable2 *self, int32* previousValue, uint32 cDimension) GetPreviousIntegerVectorValue;
				public new function HRESULT(IUIAnimationVariable2 *self, IUIAnimationStoryboard2** storyboard) GetCurrentStoryboard;
				public new function HRESULT(IUIAnimationVariable2 *self, double bound) SetLowerBound;
				public new function HRESULT(IUIAnimationVariable2 *self, double* bound, uint32 cDimension) SetLowerBoundVector;
				public new function HRESULT(IUIAnimationVariable2 *self, double bound) SetUpperBound;
				public new function HRESULT(IUIAnimationVariable2 *self, double* bound, uint32 cDimension) SetUpperBoundVector;
				public new function HRESULT(IUIAnimationVariable2 *self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public new function HRESULT(IUIAnimationVariable2 *self, IUnknown* object, uint32 id) SetTag;
				public new function HRESULT(IUIAnimationVariable2 *self, IUnknown** object, uint32* id) GetTag;
				public new function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableChangeHandler;
				public new function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableIntegerChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableIntegerChangeHandler;
				public new function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableCurveChangeHandler2* handler) SetVariableCurveChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition2 : IUnknown
		{
			public const new Guid IID = .(0x62ff9123, 0xa85a, 0x4e9b, 0xa2, 0x18, 0x43, 0x5a, 0x93, 0xe2, 0x68, 0xfd);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(uint32* dimension) mut
			{
				return VT.GetDimension(&this, dimension);
			}
			public HRESULT SetInitialValue(double value) mut
			{
				return VT.SetInitialValue(&this, value);
			}
			public HRESULT SetInitialVectorValue(double* value, uint32 cDimension) mut
			{
				return VT.SetInitialVectorValue(&this, value, cDimension);
			}
			public HRESULT SetInitialVelocity(double velocity) mut
			{
				return VT.SetInitialVelocity(&this, velocity);
			}
			public HRESULT SetInitialVectorVelocity(double* velocity, uint32 cDimension) mut
			{
				return VT.SetInitialVectorVelocity(&this, velocity, cDimension);
			}
			public HRESULT IsDurationKnown() mut
			{
				return VT.IsDurationKnown(&this);
			}
			public HRESULT GetDuration(double* duration) mut
			{
				return VT.GetDuration(&this, duration);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransition2 *self, uint32* dimension) GetDimension;
				public new function HRESULT(IUIAnimationTransition2 *self, double value) SetInitialValue;
				public new function HRESULT(IUIAnimationTransition2 *self, double* value, uint32 cDimension) SetInitialVectorValue;
				public new function HRESULT(IUIAnimationTransition2 *self, double velocity) SetInitialVelocity;
				public new function HRESULT(IUIAnimationTransition2 *self, double* velocity, uint32 cDimension) SetInitialVectorVelocity;
				public new function HRESULT(IUIAnimationTransition2 *self) IsDurationKnown;
				public new function HRESULT(IUIAnimationTransition2 *self, double* duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xf6e022ba, 0xbff3, 0x42ec, 0x90, 0x33, 0xe0, 0x73, 0xf3, 0x3e, 0x83, 0xc3);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnManagerStatusChanged(UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) mut
			{
				return VT.OnManagerStatusChanged(&this, newStatus, previousStatus);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationManagerEventHandler2 *self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x63acc8d2, 0x6eae, 0x4bb0, 0xb8, 0x79, 0x58, 0x6d, 0xd8, 0xcf, 0xbe, 0x42);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnValueChanged(IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, double* newValue, double* previousValue, uint32 cDimension) mut
			{
				return VT.OnValueChanged(&this, storyboard, variable, newValue, previousValue, cDimension);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariableChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, double* newValue, double* previousValue, uint32 cDimension) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x829b6cf1, 0x4f3a, 0x4412, 0xae, 0x09, 0xb2, 0x43, 0xeb, 0x4c, 0x6b, 0x58);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnIntegerValueChanged(IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, int32* newValue, int32* previousValue, uint32 cDimension) mut
			{
				return VT.OnIntegerValueChanged(&this, storyboard, variable, newValue, previousValue, cDimension);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariableIntegerChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, int32* newValue, int32* previousValue, uint32 cDimension) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableCurveChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x72895e91, 0x0145, 0x4c21, 0x91, 0x92, 0x5a, 0xab, 0x40, 0xed, 0xdf, 0x80);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnCurveChanged(IUIAnimationVariable2* variable) mut
			{
				return VT.OnCurveChanged(&this, variable);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationVariableCurveChangeHandler2 *self, IUIAnimationVariable2* variable) OnCurveChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xbac5f55a, 0xba7c, 0x414c, 0xb5, 0x99, 0xfb, 0xf8, 0x50, 0xf5, 0x53, 0xc6);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnStoryboardStatusChanged(IUIAnimationStoryboard2* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) mut
			{
				return VT.OnStoryboardStatusChanged(&this, storyboard, newStatus, previousStatus);
			}
			public HRESULT OnStoryboardUpdated(IUIAnimationStoryboard2* storyboard) mut
			{
				return VT.OnStoryboardUpdated(&this, storyboard);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationStoryboardEventHandler2 *self, IUIAnimationStoryboard2* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public new function HRESULT(IUIAnimationStoryboardEventHandler2 *self, IUIAnimationStoryboard2* storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationLoopIterationChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x2d3b15a4, 0x4762, 0x47ab, 0xa0, 0x30, 0xb2, 0x32, 0x21, 0xdf, 0x3a, 0xe0);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT OnLoopIterationChanged(IUIAnimationStoryboard2* storyboard, uint id, uint32 newIterationCount, uint32 oldIterationCount) mut
			{
				return VT.OnLoopIterationChanged(&this, storyboard, id, newIterationCount, oldIterationCount);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationLoopIterationChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, uint id, uint32 newIterationCount, uint32 oldIterationCount) OnLoopIterationChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison2 : IUnknown
		{
			public const new Guid IID = .(0x5b6d7a37, 0x4621, 0x467c, 0x8b, 0x05, 0x70, 0x13, 0x1d, 0xe6, 0x2d, 0xdb);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT HasPriority(IUIAnimationStoryboard2* scheduledStoryboard, IUIAnimationStoryboard2* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) mut
			{
				return VT.HasPriority(&this, scheduledStoryboard, newStoryboard, priorityEffect);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationPriorityComparison2 *self, IUIAnimationStoryboard2* scheduledStoryboard, IUIAnimationStoryboard2* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary2 : IUnknown
		{
			public const new Guid IID = .(0x03cfae53, 0x9580, 0x4ee3, 0xb3, 0x63, 0x2e, 0xce, 0x51, 0xb4, 0xaf, 0x6a);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateInstantaneousTransition(double finalValue, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateInstantaneousTransition(&this, finalValue, transition);
			}
			public HRESULT CreateInstantaneousVectorTransition(double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateInstantaneousVectorTransition(&this, finalValue, cDimension, transition);
			}
			public HRESULT CreateConstantTransition(double duration, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateConstantTransition(&this, duration, transition);
			}
			public HRESULT CreateDiscreteTransition(double delay, double finalValue, double hold, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateDiscreteTransition(&this, delay, finalValue, hold, transition);
			}
			public HRESULT CreateDiscreteVectorTransition(double delay, double* finalValue, uint32 cDimension, double hold, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateDiscreteVectorTransition(&this, delay, finalValue, cDimension, hold, transition);
			}
			public HRESULT CreateLinearTransition(double duration, double finalValue, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateLinearTransition(&this, duration, finalValue, transition);
			}
			public HRESULT CreateLinearVectorTransition(double duration, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateLinearVectorTransition(&this, duration, finalValue, cDimension, transition);
			}
			public HRESULT CreateLinearTransitionFromSpeed(double speed, double finalValue, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateLinearTransitionFromSpeed(&this, speed, finalValue, transition);
			}
			public HRESULT CreateLinearVectorTransitionFromSpeed(double speed, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateLinearVectorTransitionFromSpeed(&this, speed, finalValue, cDimension, transition);
			}
			public HRESULT CreateSinusoidalTransitionFromVelocity(double duration, double period, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateSinusoidalTransitionFromVelocity(&this, duration, period, transition);
			}
			public HRESULT CreateSinusoidalTransitionFromRange(double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateSinusoidalTransitionFromRange(&this, duration, minimumValue, maximumValue, period, slope, transition);
			}
			public HRESULT CreateAccelerateDecelerateTransition(double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateAccelerateDecelerateTransition(&this, duration, finalValue, accelerationRatio, decelerationRatio, transition);
			}
			public HRESULT CreateReversalTransition(double duration, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateReversalTransition(&this, duration, transition);
			}
			public HRESULT CreateCubicTransition(double duration, double finalValue, double finalVelocity, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateCubicTransition(&this, duration, finalValue, finalVelocity, transition);
			}
			public HRESULT CreateCubicVectorTransition(double duration, double* finalValue, double* finalVelocity, uint32 cDimension, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateCubicVectorTransition(&this, duration, finalValue, finalVelocity, cDimension, transition);
			}
			public HRESULT CreateSmoothStopTransition(double maximumDuration, double finalValue, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateSmoothStopTransition(&this, maximumDuration, finalValue, transition);
			}
			public HRESULT CreateParabolicTransitionFromAcceleration(double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateParabolicTransitionFromAcceleration(&this, finalValue, finalVelocity, acceleration, transition);
			}
			public HRESULT CreateCubicBezierLinearTransition(double duration, double finalValue, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) mut
			{
				return VT.CreateCubicBezierLinearTransition(&this, duration, finalValue, x1, y1, x2, y2, ppTransition);
			}
			public HRESULT CreateCubicBezierLinearVectorTransition(double duration, double* finalValue, uint32 cDimension, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) mut
			{
				return VT.CreateCubicBezierLinearVectorTransition(&this, duration, finalValue, cDimension, x1, y1, x2, y2, ppTransition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double finalValue, IUIAnimationTransition2** transition) CreateInstantaneousTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateInstantaneousVectorTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, IUIAnimationTransition2** transition) CreateConstantTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double delay, double finalValue, double hold, IUIAnimationTransition2** transition) CreateDiscreteTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double delay, double* finalValue, uint32 cDimension, double hold, IUIAnimationTransition2** transition) CreateDiscreteVectorTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, IUIAnimationTransition2** transition) CreateLinearTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateLinearVectorTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double speed, double finalValue, IUIAnimationTransition2** transition) CreateLinearTransitionFromSpeed;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double speed, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateLinearVectorTransitionFromSpeed;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double period, IUIAnimationTransition2** transition) CreateSinusoidalTransitionFromVelocity;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition2** transition) CreateSinusoidalTransitionFromRange;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition2** transition) CreateAccelerateDecelerateTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, IUIAnimationTransition2** transition) CreateReversalTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double finalVelocity, IUIAnimationTransition2** transition) CreateCubicTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, double* finalVelocity, uint32 cDimension, IUIAnimationTransition2** transition) CreateCubicVectorTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double maximumDuration, double finalValue, IUIAnimationTransition2** transition) CreateSmoothStopTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition2** transition) CreateParabolicTransitionFromAcceleration;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) CreateCubicBezierLinearTransition;
				public new function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, uint32 cDimension, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) CreateCubicBezierLinearVectorTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationPrimitiveInterpolation : IUnknown
		{
			public const new Guid IID = .(0xbab20d63, 0x4361, 0x45da, 0xa2, 0x4f, 0xab, 0x85, 0x08, 0x84, 0x6b, 0x5b);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddCubic(uint32 dimension, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) mut
			{
				return VT.AddCubic(&this, dimension, beginOffset, constantCoefficient, linearCoefficient, quadraticCoefficient, cubicCoefficient);
			}
			public HRESULT AddSinusoidal(uint32 dimension, double beginOffset, float bias, float amplitude, float frequency, float phase) mut
			{
				return VT.AddSinusoidal(&this, dimension, beginOffset, bias, amplitude, frequency, phase);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationPrimitiveInterpolation *self, uint32 dimension, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
				public new function HRESULT(IUIAnimationPrimitiveInterpolation *self, uint32 dimension, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator2 : IUnknown
		{
			public const new Guid IID = .(0xea76aff8, 0xea22, 0x4a23, 0xa0, 0xef, 0xa6, 0xa9, 0x66, 0x70, 0x35, 0x18);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT GetDimension(uint32* dimension) mut
			{
				return VT.GetDimension(&this, dimension);
			}
			public HRESULT SetInitialValueAndVelocity(double* initialValue, double* initialVelocity, uint32 cDimension) mut
			{
				return VT.SetInitialValueAndVelocity(&this, initialValue, initialVelocity, cDimension);
			}
			public HRESULT SetDuration(double duration) mut
			{
				return VT.SetDuration(&this, duration);
			}
			public HRESULT GetDuration(double* duration) mut
			{
				return VT.GetDuration(&this, duration);
			}
			public HRESULT GetFinalValue(double* value, uint32 cDimension) mut
			{
				return VT.GetFinalValue(&this, value, cDimension);
			}
			public HRESULT InterpolateValue(double offset, double* value, uint32 cDimension) mut
			{
				return VT.InterpolateValue(&this, offset, value, cDimension);
			}
			public HRESULT InterpolateVelocity(double offset, double* velocity, uint32 cDimension) mut
			{
				return VT.InterpolateVelocity(&this, offset, velocity, cDimension);
			}
			public HRESULT GetPrimitiveInterpolation(IUIAnimationPrimitiveInterpolation* interpolation, uint32 cDimension) mut
			{
				return VT.GetPrimitiveInterpolation(&this, interpolation, cDimension);
			}
			public HRESULT GetDependencies(UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) mut
			{
				return VT.GetDependencies(&this, initialValueDependencies, initialVelocityDependencies, durationDependencies);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationInterpolator2 *self, uint32* dimension) GetDimension;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double* initialValue, double* initialVelocity, uint32 cDimension) SetInitialValueAndVelocity;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double duration) SetDuration;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double* duration) GetDuration;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double* value, uint32 cDimension) GetFinalValue;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double offset, double* value, uint32 cDimension) InterpolateValue;
				public new function HRESULT(IUIAnimationInterpolator2 *self, double offset, double* velocity, uint32 cDimension) InterpolateVelocity;
				public new function HRESULT(IUIAnimationInterpolator2 *self, IUIAnimationPrimitiveInterpolation* interpolation, uint32 cDimension) GetPrimitiveInterpolation;
				public new function HRESULT(IUIAnimationInterpolator2 *self, UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory2 : IUnknown
		{
			public const new Guid IID = .(0x937d4916, 0xc1a6, 0x42d5, 0x88, 0xd8, 0x30, 0x34, 0x4d, 0x6e, 0xfe, 0x31);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT CreateTransition(IUIAnimationInterpolator2* interpolator, IUIAnimationTransition2** transition) mut
			{
				return VT.CreateTransition(&this, interpolator, transition);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationTransitionFactory2 *self, IUIAnimationInterpolator2* interpolator, IUIAnimationTransition2** transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard2 : IUnknown
		{
			public const new Guid IID = .(0xae289cd2, 0x12d4, 0x4945, 0x94, 0x19, 0x9e, 0x41, 0xbe, 0x03, 0x4d, 0xf2);
			
			public new VTable* VT { get => (.)vt; }
			
			public HRESULT AddTransition(IUIAnimationVariable2* variable, IUIAnimationTransition2* transition) mut
			{
				return VT.AddTransition(&this, variable, transition);
			}
			public HRESULT AddKeyframeAtOffset(UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) mut
			{
				return VT.AddKeyframeAtOffset(&this, existingKeyframe, offset, keyframe);
			}
			public HRESULT AddKeyframeAfterTransition(IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME* keyframe) mut
			{
				return VT.AddKeyframeAfterTransition(&this, transition, keyframe);
			}
			public HRESULT AddTransitionAtKeyframe(IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe) mut
			{
				return VT.AddTransitionAtKeyframe(&this, variable, transition, startKeyframe);
			}
			public HRESULT AddTransitionBetweenKeyframes(IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) mut
			{
				return VT.AddTransitionBetweenKeyframes(&this, variable, transition, startKeyframe, endKeyframe);
			}
			public HRESULT RepeatBetweenKeyframes(UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, double cRepetition, UI_ANIMATION_REPEAT_MODE repeatMode, IUIAnimationLoopIterationChangeHandler2* pIterationChangeHandler, uint id, BOOL fRegisterForNextAnimationEvent) mut
			{
				return VT.RepeatBetweenKeyframes(&this, startKeyframe, endKeyframe, cRepetition, repeatMode, pIterationChangeHandler, id, fRegisterForNextAnimationEvent);
			}
			public HRESULT HoldVariable(IUIAnimationVariable2* variable) mut
			{
				return VT.HoldVariable(&this, variable);
			}
			public HRESULT SetLongestAcceptableDelay(double delay) mut
			{
				return VT.SetLongestAcceptableDelay(&this, delay);
			}
			public HRESULT SetSkipDuration(double secondsDuration) mut
			{
				return VT.SetSkipDuration(&this, secondsDuration);
			}
			public HRESULT Schedule(double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) mut
			{
				return VT.Schedule(&this, timeNow, schedulingResult);
			}
			public HRESULT Conclude() mut
			{
				return VT.Conclude(&this);
			}
			public HRESULT Finish(double completionDeadline) mut
			{
				return VT.Finish(&this, completionDeadline);
			}
			public HRESULT Abandon() mut
			{
				return VT.Abandon(&this);
			}
			public HRESULT SetTag(IUnknown* object, uint32 id) mut
			{
				return VT.SetTag(&this, object, id);
			}
			public HRESULT GetTag(IUnknown** object, uint32* id) mut
			{
				return VT.GetTag(&this, object, id);
			}
			public HRESULT GetStatus(UI_ANIMATION_STORYBOARD_STATUS* status) mut
			{
				return VT.GetStatus(&this, status);
			}
			public HRESULT GetElapsedTime(double* elapsedTime) mut
			{
				return VT.GetElapsedTime(&this, elapsedTime);
			}
			public HRESULT SetStoryboardEventHandler(IUIAnimationStoryboardEventHandler2* handler, BOOL fRegisterStatusChangeForNextAnimationEvent, BOOL fRegisterUpdateForNextAnimationEvent) mut
			{
				return VT.SetStoryboardEventHandler(&this, handler, fRegisterStatusChangeForNextAnimationEvent, fRegisterUpdateForNextAnimationEvent);
			}
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition) AddTransition;
				public new function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAtOffset;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAfterTransition;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public new function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, double cRepetition, UI_ANIMATION_REPEAT_MODE repeatMode, IUIAnimationLoopIterationChangeHandler2* pIterationChangeHandler, uint id, BOOL fRegisterForNextAnimationEvent) RepeatBetweenKeyframes;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable) HoldVariable;
				public new function HRESULT(IUIAnimationStoryboard2 *self, double delay) SetLongestAcceptableDelay;
				public new function HRESULT(IUIAnimationStoryboard2 *self, double secondsDuration) SetSkipDuration;
				public new function HRESULT(IUIAnimationStoryboard2 *self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public new function HRESULT(IUIAnimationStoryboard2 *self) Conclude;
				public new function HRESULT(IUIAnimationStoryboard2 *self, double completionDeadline) Finish;
				public new function HRESULT(IUIAnimationStoryboard2 *self) Abandon;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUnknown* object, uint32 id) SetTag;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUnknown** object, uint32* id) GetTag;
				public new function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_STORYBOARD_STATUS* status) GetStatus;
				public new function HRESULT(IUIAnimationStoryboard2 *self, double* elapsedTime) GetElapsedTime;
				public new function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationStoryboardEventHandler2* handler, BOOL fRegisterStatusChangeForNextAnimationEvent, BOOL fRegisterUpdateForNextAnimationEvent) SetStoryboardEventHandler;
			}
		}
		
	}
}
