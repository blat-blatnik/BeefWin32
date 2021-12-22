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
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationManager *self, double initialValue, IUIAnimationVariable** variable) CreateAnimationVariable;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, double timeNow) ScheduleTransition;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationStoryboard** storyboard) CreateStoryboard;
				public function HRESULT(IUIAnimationManager *self, double completionDeadline) FinishAllStoryboards;
				public function HRESULT(IUIAnimationManager *self) AbandonAllStoryboards;
				public function HRESULT(IUIAnimationManager *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public function HRESULT(IUIAnimationManager *self, IUnknown* object, uint32 id, IUIAnimationVariable** variable) GetVariableFromTag;
				public function HRESULT(IUIAnimationManager *self, IUnknown* object, uint32 id, IUIAnimationStoryboard** storyboard) GetStoryboardFromTag;
				public function HRESULT(IUIAnimationManager *self, UI_ANIMATION_MANAGER_STATUS* status) GetStatus;
				public function HRESULT(IUIAnimationManager *self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public function HRESULT(IUIAnimationManager *self) Pause;
				public function HRESULT(IUIAnimationManager *self) Resume;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationManagerEventHandler* handler) SetManagerEventHandler;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetCancelPriorityComparison;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetTrimPriorityComparison;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetCompressPriorityComparison;
				public function HRESULT(IUIAnimationManager *self, IUIAnimationPriorityComparison* comparison) SetConcludePriorityComparison;
				public function HRESULT(IUIAnimationManager *self, double delay) SetDefaultLongestAcceptableDelay;
				public function HRESULT(IUIAnimationManager *self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable : IUnknown
		{
			public const new Guid IID = .(0x8ceeb155, 0x2849, 0x4ce5, 0x94, 0x48, 0x91, 0xff, 0x70, 0xe1, 0xe4, 0xd9);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariable *self, double* value) GetValue;
				public function HRESULT(IUIAnimationVariable *self, double* finalValue) GetFinalValue;
				public function HRESULT(IUIAnimationVariable *self, double* previousValue) GetPreviousValue;
				public function HRESULT(IUIAnimationVariable *self, int32* value) GetIntegerValue;
				public function HRESULT(IUIAnimationVariable *self, int32* finalValue) GetFinalIntegerValue;
				public function HRESULT(IUIAnimationVariable *self, int32* previousValue) GetPreviousIntegerValue;
				public function HRESULT(IUIAnimationVariable *self, IUIAnimationStoryboard** storyboard) GetCurrentStoryboard;
				public function HRESULT(IUIAnimationVariable *self, double bound) SetLowerBound;
				public function HRESULT(IUIAnimationVariable *self, double bound) SetUpperBound;
				public function HRESULT(IUIAnimationVariable *self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public function HRESULT(IUIAnimationVariable *self, IUnknown* object, uint32 id) SetTag;
				public function HRESULT(IUIAnimationVariable *self, IUnknown** object, uint32* id) GetTag;
				public function HRESULT(IUIAnimationVariable *self, IUIAnimationVariableChangeHandler* handler) SetVariableChangeHandler;
				public function HRESULT(IUIAnimationVariable *self, IUIAnimationVariableIntegerChangeHandler* handler) SetVariableIntegerChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard : IUnknown
		{
			public const new Guid IID = .(0xa8ff128f, 0x9bf9, 0x4af1, 0x9e, 0x67, 0xe5, 0xe4, 0x10, 0xde, 0xfb, 0x84);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition) AddTransition;
				public function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAtOffset;
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAfterTransition;
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable, IUIAnimationTransition* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, int32 repetitionCount) RepeatBetweenKeyframes;
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationVariable* variable) HoldVariable;
				public function HRESULT(IUIAnimationStoryboard *self, double delay) SetLongestAcceptableDelay;
				public function HRESULT(IUIAnimationStoryboard *self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public function HRESULT(IUIAnimationStoryboard *self) Conclude;
				public function HRESULT(IUIAnimationStoryboard *self, double completionDeadline) Finish;
				public function HRESULT(IUIAnimationStoryboard *self) Abandon;
				public function HRESULT(IUIAnimationStoryboard *self, IUnknown* object, uint32 id) SetTag;
				public function HRESULT(IUIAnimationStoryboard *self, IUnknown** object, uint32* id) GetTag;
				public function HRESULT(IUIAnimationStoryboard *self, UI_ANIMATION_STORYBOARD_STATUS* status) GetStatus;
				public function HRESULT(IUIAnimationStoryboard *self, double* elapsedTime) GetElapsedTime;
				public function HRESULT(IUIAnimationStoryboard *self, IUIAnimationStoryboardEventHandler* handler) SetStoryboardEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition : IUnknown
		{
			public const new Guid IID = .(0xdc6ce252, 0xf731, 0x41cf, 0xb6, 0x10, 0x61, 0x4b, 0x6c, 0xa0, 0x49, 0xad);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransition *self, double value) SetInitialValue;
				public function HRESULT(IUIAnimationTransition *self, double velocity) SetInitialVelocity;
				public function HRESULT(IUIAnimationTransition *self) IsDurationKnown;
				public function HRESULT(IUIAnimationTransition *self, double* duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x783321ed, 0x78a3, 0x4366, 0xb5, 0x74, 0x6a, 0xf6, 0x07, 0xa6, 0x47, 0x88);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationManagerEventHandler *self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler : IUnknown
		{
			public const new Guid IID = .(0x6358b7ba, 0x87d2, 0x42d5, 0xbf, 0x71, 0x82, 0xe9, 0x19, 0xdd, 0x58, 0x62);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariableChangeHandler *self, IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, double newValue, double previousValue) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler : IUnknown
		{
			public const new Guid IID = .(0xbb3e1550, 0x356e, 0x44b0, 0x99, 0xda, 0x85, 0xac, 0x60, 0x17, 0x86, 0x5e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariableIntegerChangeHandler *self, IUIAnimationStoryboard* storyboard, IUIAnimationVariable* variable, int32 newValue, int32 previousValue) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler : IUnknown
		{
			public const new Guid IID = .(0x3d5c9008, 0xec7c, 0x4364, 0x9f, 0x8a, 0x9a, 0xf3, 0xc5, 0x8c, 0xba, 0xe6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationStoryboardEventHandler *self, IUIAnimationStoryboard* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public function HRESULT(IUIAnimationStoryboardEventHandler *self, IUIAnimationStoryboard* storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison : IUnknown
		{
			public const new Guid IID = .(0x83fa9b74, 0x5f86, 0x4618, 0xbc, 0x6a, 0xa2, 0xfa, 0xc1, 0x9b, 0x3f, 0x44);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationPriorityComparison *self, IUIAnimationStoryboard* scheduledStoryboard, IUIAnimationStoryboard* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary : IUnknown
		{
			public const new Guid IID = .(0xca5a14b1, 0xd24f, 0x48b8, 0x8f, 0xe4, 0xc7, 0x81, 0x69, 0xba, 0x95, 0x4e);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransitionLibrary *self, double finalValue, IUIAnimationTransition** transition) CreateInstantaneousTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, IUIAnimationTransition** transition) CreateConstantTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double delay, double finalValue, double hold, IUIAnimationTransition** transition) CreateDiscreteTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, IUIAnimationTransition** transition) CreateLinearTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double speed, double finalValue, IUIAnimationTransition** transition) CreateLinearTransitionFromSpeed;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double period, IUIAnimationTransition** transition) CreateSinusoidalTransitionFromVelocity;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition** transition) CreateSinusoidalTransitionFromRange;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition** transition) CreateAccelerateDecelerateTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, IUIAnimationTransition** transition) CreateReversalTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double duration, double finalValue, double finalVelocity, IUIAnimationTransition** transition) CreateCubicTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double maximumDuration, double finalValue, IUIAnimationTransition** transition) CreateSmoothStopTransition;
				public function HRESULT(IUIAnimationTransitionLibrary *self, double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition** transition) CreateParabolicTransitionFromAcceleration;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator : IUnknown
		{
			public const new Guid IID = .(0x7815cbba, 0xddf7, 0x478c, 0xa4, 0x6c, 0x7b, 0x6c, 0x73, 0x8b, 0x79, 0x78);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationInterpolator *self, double initialValue, double initialVelocity) SetInitialValueAndVelocity;
				public function HRESULT(IUIAnimationInterpolator *self, double duration) SetDuration;
				public function HRESULT(IUIAnimationInterpolator *self, double* duration) GetDuration;
				public function HRESULT(IUIAnimationInterpolator *self, double* value) GetFinalValue;
				public function HRESULT(IUIAnimationInterpolator *self, double offset, double* value) InterpolateValue;
				public function HRESULT(IUIAnimationInterpolator *self, double offset, double* velocity) InterpolateVelocity;
				public function HRESULT(IUIAnimationInterpolator *self, UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory : IUnknown
		{
			public const new Guid IID = .(0xfcd91e03, 0x3e3b, 0x45ad, 0xbb, 0xb1, 0x6d, 0xfc, 0x81, 0x53, 0x74, 0x3d);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransitionFactory *self, IUIAnimationInterpolator* interpolator, IUIAnimationTransition** transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationTimer : IUnknown
		{
			public const new Guid IID = .(0x6b0efad1, 0xa053, 0x41d6, 0x90, 0x85, 0x33, 0xa6, 0x89, 0x14, 0x46, 0x65);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTimer *self, IUIAnimationTimerUpdateHandler* updateHandler, UI_ANIMATION_IDLE_BEHAVIOR idleBehavior) SetTimerUpdateHandler;
				public function HRESULT(IUIAnimationTimer *self, IUIAnimationTimerEventHandler* handler) SetTimerEventHandler;
				public function HRESULT(IUIAnimationTimer *self) Enable;
				public function HRESULT(IUIAnimationTimer *self) Disable;
				public function HRESULT(IUIAnimationTimer *self) IsEnabled;
				public function HRESULT(IUIAnimationTimer *self, double* seconds) GetTime;
				public function HRESULT(IUIAnimationTimer *self, uint32 framesPerSecond) SetFrameRateThreshold;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerUpdateHandler : IUnknown
		{
			public const new Guid IID = .(0x195509b7, 0x5d5e, 0x4e3e, 0xb2, 0x78, 0xee, 0x37, 0x59, 0xb3, 0x67, 0xad);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTimerUpdateHandler *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* result) OnUpdate;
				public function HRESULT(IUIAnimationTimerUpdateHandler *self, IUIAnimationTimerClientEventHandler* handler) SetTimerClientEventHandler;
				public function HRESULT(IUIAnimationTimerUpdateHandler *self) ClearTimerClientEventHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerClientEventHandler : IUnknown
		{
			public const new Guid IID = .(0xbedb4db6, 0x94fa, 0x4bfb, 0xa4, 0x7f, 0xef, 0x2d, 0x9e, 0x40, 0x8c, 0x25);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTimerClientEventHandler *self, UI_ANIMATION_TIMER_CLIENT_STATUS newStatus, UI_ANIMATION_TIMER_CLIENT_STATUS previousStatus) OnTimerClientStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationTimerEventHandler : IUnknown
		{
			public const new Guid IID = .(0x274a7dea, 0xd771, 0x4095, 0xab, 0xbd, 0x8d, 0xf7, 0xab, 0xd2, 0x3c, 0xe3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTimerEventHandler *self) OnPreUpdate;
				public function HRESULT(IUIAnimationTimerEventHandler *self) OnPostUpdate;
				public function HRESULT(IUIAnimationTimerEventHandler *self, uint32 framesPerSecond) OnRenderingTooSlow;
			}
		}
		[CRepr]
		public struct IUIAnimationManager2 : IUnknown
		{
			public const new Guid IID = .(0xd8b6f7d4, 0x4109, 0x4d3f, 0xac, 0xee, 0x87, 0x99, 0x26, 0x96, 0x8c, 0xb1);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationManager2 *self, double* initialValue, uint32 cDimension, IUIAnimationVariable2** variable) CreateAnimationVectorVariable;
				public function HRESULT(IUIAnimationManager2 *self, double initialValue, IUIAnimationVariable2** variable) CreateAnimationVariable;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, double timeNow) ScheduleTransition;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationStoryboard2** storyboard) CreateStoryboard;
				public function HRESULT(IUIAnimationManager2 *self, double completionDeadline) FinishAllStoryboards;
				public function HRESULT(IUIAnimationManager2 *self) AbandonAllStoryboards;
				public function HRESULT(IUIAnimationManager2 *self, double timeNow, UI_ANIMATION_UPDATE_RESULT* updateResult) Update;
				public function HRESULT(IUIAnimationManager2 *self, IUnknown* object, uint32 id, IUIAnimationVariable2** variable) GetVariableFromTag;
				public function HRESULT(IUIAnimationManager2 *self, IUnknown* object, uint32 id, IUIAnimationStoryboard2** storyboard) GetStoryboardFromTag;
				public function HRESULT(IUIAnimationManager2 *self, double* seconds) EstimateNextEventTime;
				public function HRESULT(IUIAnimationManager2 *self, UI_ANIMATION_MANAGER_STATUS* status) GetStatus;
				public function HRESULT(IUIAnimationManager2 *self, UI_ANIMATION_MODE mode) SetAnimationMode;
				public function HRESULT(IUIAnimationManager2 *self) Pause;
				public function HRESULT(IUIAnimationManager2 *self) Resume;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationManagerEventHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetManagerEventHandler;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetCancelPriorityComparison;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetTrimPriorityComparison;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetCompressPriorityComparison;
				public function HRESULT(IUIAnimationManager2 *self, IUIAnimationPriorityComparison2* comparison) SetConcludePriorityComparison;
				public function HRESULT(IUIAnimationManager2 *self, double delay) SetDefaultLongestAcceptableDelay;
				public function HRESULT(IUIAnimationManager2 *self) Shutdown;
			}
		}
		[CRepr]
		public struct IUIAnimationVariable2 : IUnknown
		{
			public const new Guid IID = .(0x4914b304, 0x96ab, 0x44d9, 0x9e, 0x77, 0xd5, 0x10, 0x9b, 0x7e, 0x74, 0x66);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariable2 *self, uint32* dimension) GetDimension;
				public function HRESULT(IUIAnimationVariable2 *self, double* value) GetValue;
				public function HRESULT(IUIAnimationVariable2 *self, double* value, uint32 cDimension) GetVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, IDCompositionAnimation* animation) GetCurve;
				public function HRESULT(IUIAnimationVariable2 *self, IDCompositionAnimation** animation, uint32 cDimension) GetVectorCurve;
				public function HRESULT(IUIAnimationVariable2 *self, double* finalValue) GetFinalValue;
				public function HRESULT(IUIAnimationVariable2 *self, double* finalValue, uint32 cDimension) GetFinalVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, double* previousValue) GetPreviousValue;
				public function HRESULT(IUIAnimationVariable2 *self, double* previousValue, uint32 cDimension) GetPreviousVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* value) GetIntegerValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* value, uint32 cDimension) GetIntegerVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* finalValue) GetFinalIntegerValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* finalValue, uint32 cDimension) GetFinalIntegerVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* previousValue) GetPreviousIntegerValue;
				public function HRESULT(IUIAnimationVariable2 *self, int32* previousValue, uint32 cDimension) GetPreviousIntegerVectorValue;
				public function HRESULT(IUIAnimationVariable2 *self, IUIAnimationStoryboard2** storyboard) GetCurrentStoryboard;
				public function HRESULT(IUIAnimationVariable2 *self, double bound) SetLowerBound;
				public function HRESULT(IUIAnimationVariable2 *self, double* bound, uint32 cDimension) SetLowerBoundVector;
				public function HRESULT(IUIAnimationVariable2 *self, double bound) SetUpperBound;
				public function HRESULT(IUIAnimationVariable2 *self, double* bound, uint32 cDimension) SetUpperBoundVector;
				public function HRESULT(IUIAnimationVariable2 *self, UI_ANIMATION_ROUNDING_MODE mode) SetRoundingMode;
				public function HRESULT(IUIAnimationVariable2 *self, IUnknown* object, uint32 id) SetTag;
				public function HRESULT(IUIAnimationVariable2 *self, IUnknown** object, uint32* id) GetTag;
				public function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableChangeHandler;
				public function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableIntegerChangeHandler2* handler, BOOL fRegisterForNextAnimationEvent) SetVariableIntegerChangeHandler;
				public function HRESULT(IUIAnimationVariable2 *self, IUIAnimationVariableCurveChangeHandler2* handler) SetVariableCurveChangeHandler;
			}
		}
		[CRepr]
		public struct IUIAnimationTransition2 : IUnknown
		{
			public const new Guid IID = .(0x62ff9123, 0xa85a, 0x4e9b, 0xa2, 0x18, 0x43, 0x5a, 0x93, 0xe2, 0x68, 0xfd);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransition2 *self, uint32* dimension) GetDimension;
				public function HRESULT(IUIAnimationTransition2 *self, double value) SetInitialValue;
				public function HRESULT(IUIAnimationTransition2 *self, double* value, uint32 cDimension) SetInitialVectorValue;
				public function HRESULT(IUIAnimationTransition2 *self, double velocity) SetInitialVelocity;
				public function HRESULT(IUIAnimationTransition2 *self, double* velocity, uint32 cDimension) SetInitialVectorVelocity;
				public function HRESULT(IUIAnimationTransition2 *self) IsDurationKnown;
				public function HRESULT(IUIAnimationTransition2 *self, double* duration) GetDuration;
			}
		}
		[CRepr]
		public struct IUIAnimationManagerEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xf6e022ba, 0xbff3, 0x42ec, 0x90, 0x33, 0xe0, 0x73, 0xf3, 0x3e, 0x83, 0xc3);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationManagerEventHandler2 *self, UI_ANIMATION_MANAGER_STATUS newStatus, UI_ANIMATION_MANAGER_STATUS previousStatus) OnManagerStatusChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x63acc8d2, 0x6eae, 0x4bb0, 0xb8, 0x79, 0x58, 0x6d, 0xd8, 0xcf, 0xbe, 0x42);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariableChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, double* newValue, double* previousValue, uint32 cDimension) OnValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableIntegerChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x829b6cf1, 0x4f3a, 0x4412, 0xae, 0x09, 0xb2, 0x43, 0xeb, 0x4c, 0x6b, 0x58);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariableIntegerChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, IUIAnimationVariable2* variable, int32* newValue, int32* previousValue, uint32 cDimension) OnIntegerValueChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationVariableCurveChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x72895e91, 0x0145, 0x4c21, 0x91, 0x92, 0x5a, 0xab, 0x40, 0xed, 0xdf, 0x80);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationVariableCurveChangeHandler2 *self, IUIAnimationVariable2* variable) OnCurveChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboardEventHandler2 : IUnknown
		{
			public const new Guid IID = .(0xbac5f55a, 0xba7c, 0x414c, 0xb5, 0x99, 0xfb, 0xf8, 0x50, 0xf5, 0x53, 0xc6);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationStoryboardEventHandler2 *self, IUIAnimationStoryboard2* storyboard, UI_ANIMATION_STORYBOARD_STATUS newStatus, UI_ANIMATION_STORYBOARD_STATUS previousStatus) OnStoryboardStatusChanged;
				public function HRESULT(IUIAnimationStoryboardEventHandler2 *self, IUIAnimationStoryboard2* storyboard) OnStoryboardUpdated;
			}
		}
		[CRepr]
		public struct IUIAnimationLoopIterationChangeHandler2 : IUnknown
		{
			public const new Guid IID = .(0x2d3b15a4, 0x4762, 0x47ab, 0xa0, 0x30, 0xb2, 0x32, 0x21, 0xdf, 0x3a, 0xe0);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationLoopIterationChangeHandler2 *self, IUIAnimationStoryboard2* storyboard, uint id, uint32 newIterationCount, uint32 oldIterationCount) OnLoopIterationChanged;
			}
		}
		[CRepr]
		public struct IUIAnimationPriorityComparison2 : IUnknown
		{
			public const new Guid IID = .(0x5b6d7a37, 0x4621, 0x467c, 0x8b, 0x05, 0x70, 0x13, 0x1d, 0xe6, 0x2d, 0xdb);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationPriorityComparison2 *self, IUIAnimationStoryboard2* scheduledStoryboard, IUIAnimationStoryboard2* newStoryboard, UI_ANIMATION_PRIORITY_EFFECT priorityEffect) HasPriority;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionLibrary2 : IUnknown
		{
			public const new Guid IID = .(0x03cfae53, 0x9580, 0x4ee3, 0xb3, 0x63, 0x2e, 0xce, 0x51, 0xb4, 0xaf, 0x6a);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double finalValue, IUIAnimationTransition2** transition) CreateInstantaneousTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateInstantaneousVectorTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, IUIAnimationTransition2** transition) CreateConstantTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double delay, double finalValue, double hold, IUIAnimationTransition2** transition) CreateDiscreteTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double delay, double* finalValue, uint32 cDimension, double hold, IUIAnimationTransition2** transition) CreateDiscreteVectorTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, IUIAnimationTransition2** transition) CreateLinearTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateLinearVectorTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double speed, double finalValue, IUIAnimationTransition2** transition) CreateLinearTransitionFromSpeed;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double speed, double* finalValue, uint32 cDimension, IUIAnimationTransition2** transition) CreateLinearVectorTransitionFromSpeed;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double period, IUIAnimationTransition2** transition) CreateSinusoidalTransitionFromVelocity;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double minimumValue, double maximumValue, double period, UI_ANIMATION_SLOPE slope, IUIAnimationTransition2** transition) CreateSinusoidalTransitionFromRange;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double accelerationRatio, double decelerationRatio, IUIAnimationTransition2** transition) CreateAccelerateDecelerateTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, IUIAnimationTransition2** transition) CreateReversalTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double finalVelocity, IUIAnimationTransition2** transition) CreateCubicTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, double* finalVelocity, uint32 cDimension, IUIAnimationTransition2** transition) CreateCubicVectorTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double maximumDuration, double finalValue, IUIAnimationTransition2** transition) CreateSmoothStopTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double finalValue, double finalVelocity, double acceleration, IUIAnimationTransition2** transition) CreateParabolicTransitionFromAcceleration;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double finalValue, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) CreateCubicBezierLinearTransition;
				public function HRESULT(IUIAnimationTransitionLibrary2 *self, double duration, double* finalValue, uint32 cDimension, double x1, double y1, double x2, double y2, IUIAnimationTransition2** ppTransition) CreateCubicBezierLinearVectorTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationPrimitiveInterpolation : IUnknown
		{
			public const new Guid IID = .(0xbab20d63, 0x4361, 0x45da, 0xa2, 0x4f, 0xab, 0x85, 0x08, 0x84, 0x6b, 0x5b);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationPrimitiveInterpolation *self, uint32 dimension, double beginOffset, float constantCoefficient, float linearCoefficient, float quadraticCoefficient, float cubicCoefficient) AddCubic;
				public function HRESULT(IUIAnimationPrimitiveInterpolation *self, uint32 dimension, double beginOffset, float bias, float amplitude, float frequency, float phase) AddSinusoidal;
			}
		}
		[CRepr]
		public struct IUIAnimationInterpolator2 : IUnknown
		{
			public const new Guid IID = .(0xea76aff8, 0xea22, 0x4a23, 0xa0, 0xef, 0xa6, 0xa9, 0x66, 0x70, 0x35, 0x18);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationInterpolator2 *self, uint32* dimension) GetDimension;
				public function HRESULT(IUIAnimationInterpolator2 *self, double* initialValue, double* initialVelocity, uint32 cDimension) SetInitialValueAndVelocity;
				public function HRESULT(IUIAnimationInterpolator2 *self, double duration) SetDuration;
				public function HRESULT(IUIAnimationInterpolator2 *self, double* duration) GetDuration;
				public function HRESULT(IUIAnimationInterpolator2 *self, double* value, uint32 cDimension) GetFinalValue;
				public function HRESULT(IUIAnimationInterpolator2 *self, double offset, double* value, uint32 cDimension) InterpolateValue;
				public function HRESULT(IUIAnimationInterpolator2 *self, double offset, double* velocity, uint32 cDimension) InterpolateVelocity;
				public function HRESULT(IUIAnimationInterpolator2 *self, IUIAnimationPrimitiveInterpolation* interpolation, uint32 cDimension) GetPrimitiveInterpolation;
				public function HRESULT(IUIAnimationInterpolator2 *self, UI_ANIMATION_DEPENDENCIES* initialValueDependencies, UI_ANIMATION_DEPENDENCIES* initialVelocityDependencies, UI_ANIMATION_DEPENDENCIES* durationDependencies) GetDependencies;
			}
		}
		[CRepr]
		public struct IUIAnimationTransitionFactory2 : IUnknown
		{
			public const new Guid IID = .(0x937d4916, 0xc1a6, 0x42d5, 0x88, 0xd8, 0x30, 0x34, 0x4d, 0x6e, 0xfe, 0x31);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationTransitionFactory2 *self, IUIAnimationInterpolator2* interpolator, IUIAnimationTransition2** transition) CreateTransition;
			}
		}
		[CRepr]
		public struct IUIAnimationStoryboard2 : IUnknown
		{
			public const new Guid IID = .(0xae289cd2, 0x12d4, 0x4945, 0x94, 0x19, 0x9e, 0x41, 0xbe, 0x03, 0x4d, 0xf2);
			
			public VTable* VT { get => (.)vt; }			
			[CRepr]
			public struct VTable : IUnknown.VTable
			{
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition) AddTransition;
				public function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_KEYFRAME existingKeyframe, double offset, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAtOffset;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME* keyframe) AddKeyframeAfterTransition;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe) AddTransitionAtKeyframe;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable, IUIAnimationTransition2* transition, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe) AddTransitionBetweenKeyframes;
				public function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_KEYFRAME startKeyframe, UI_ANIMATION_KEYFRAME endKeyframe, double cRepetition, UI_ANIMATION_REPEAT_MODE repeatMode, IUIAnimationLoopIterationChangeHandler2* pIterationChangeHandler, uint id, BOOL fRegisterForNextAnimationEvent) RepeatBetweenKeyframes;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationVariable2* variable) HoldVariable;
				public function HRESULT(IUIAnimationStoryboard2 *self, double delay) SetLongestAcceptableDelay;
				public function HRESULT(IUIAnimationStoryboard2 *self, double secondsDuration) SetSkipDuration;
				public function HRESULT(IUIAnimationStoryboard2 *self, double timeNow, UI_ANIMATION_SCHEDULING_RESULT* schedulingResult) Schedule;
				public function HRESULT(IUIAnimationStoryboard2 *self) Conclude;
				public function HRESULT(IUIAnimationStoryboard2 *self, double completionDeadline) Finish;
				public function HRESULT(IUIAnimationStoryboard2 *self) Abandon;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUnknown* object, uint32 id) SetTag;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUnknown** object, uint32* id) GetTag;
				public function HRESULT(IUIAnimationStoryboard2 *self, UI_ANIMATION_STORYBOARD_STATUS* status) GetStatus;
				public function HRESULT(IUIAnimationStoryboard2 *self, double* elapsedTime) GetElapsedTime;
				public function HRESULT(IUIAnimationStoryboard2 *self, IUIAnimationStoryboardEventHandler2* handler, BOOL fRegisterStatusChangeForNextAnimationEvent, BOOL fRegisterUpdateForNextAnimationEvent) SetStoryboardEventHandler;
			}
		}
		
	}
}
