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
		
		public struct IUIAnimationManager {}
		public struct IUIAnimationVariable {}
		public struct IUIAnimationStoryboard {}
		public struct IUIAnimationTransition {}
		public struct IUIAnimationManagerEventHandler {}
		public struct IUIAnimationVariableChangeHandler {}
		public struct IUIAnimationVariableIntegerChangeHandler {}
		public struct IUIAnimationStoryboardEventHandler {}
		public struct IUIAnimationPriorityComparison {}
		public struct IUIAnimationTransitionLibrary {}
		public struct IUIAnimationInterpolator {}
		public struct IUIAnimationTransitionFactory {}
		public struct IUIAnimationTimer {}
		public struct IUIAnimationTimerUpdateHandler {}
		public struct IUIAnimationTimerClientEventHandler {}
		public struct IUIAnimationTimerEventHandler {}
		public struct IUIAnimationManager2 {}
		public struct IUIAnimationVariable2 {}
		public struct IUIAnimationTransition2 {}
		public struct IUIAnimationManagerEventHandler2 {}
		public struct IUIAnimationVariableChangeHandler2 {}
		public struct IUIAnimationVariableIntegerChangeHandler2 {}
		public struct IUIAnimationVariableCurveChangeHandler2 {}
		public struct IUIAnimationStoryboardEventHandler2 {}
		public struct IUIAnimationLoopIterationChangeHandler2 {}
		public struct IUIAnimationPriorityComparison2 {}
		public struct IUIAnimationTransitionLibrary2 {}
		public struct IUIAnimationPrimitiveInterpolation {}
		public struct IUIAnimationInterpolator2 {}
		public struct IUIAnimationTransitionFactory2 {}
		public struct IUIAnimationStoryboard2 {}
		
	}
}
