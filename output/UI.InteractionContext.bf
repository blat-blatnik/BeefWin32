using System;

// namespace UI.InteractionContext
namespace Win32
{
	extension Win32
	{
		// --- Typedefs ---
		
		public typealias HINTERACTIONCONTEXT = int;
		
		// --- Enums ---
		
		public enum INTERACTION_ID : int32
		{
			NONE = 0,
			MANIPULATION = 1,
			TAP = 2,
			SECONDARY_TAP = 3,
			HOLD = 4,
			DRAG = 5,
			CROSS_SLIDE = 6,
			MAX = -1,
		}
		public enum INTERACTION_FLAGS : uint32
		{
			NONE = 0,
			BEGIN = 1,
			END = 2,
			CANCEL = 4,
			INERTIA = 8,
			MAX = 4294967295,
		}
		[AllowDuplicates]
		public enum INTERACTION_CONFIGURATION_FLAGS : uint32
		{
			NONE = 0,
			MANIPULATION = 1,
			MANIPULATION_TRANSLATION_X = 2,
			MANIPULATION_TRANSLATION_Y = 4,
			MANIPULATION_ROTATION = 8,
			MANIPULATION_SCALING = 16,
			MANIPULATION_TRANSLATION_INERTIA = 32,
			MANIPULATION_ROTATION_INERTIA = 64,
			MANIPULATION_SCALING_INERTIA = 128,
			MANIPULATION_RAILS_X = 256,
			MANIPULATION_RAILS_Y = 512,
			MANIPULATION_EXACT = 1024,
			MANIPULATION_MULTIPLE_FINGER_PANNING = 2048,
			CROSS_SLIDE = 1,
			CROSS_SLIDE_HORIZONTAL = 2,
			CROSS_SLIDE_SELECT = 4,
			CROSS_SLIDE_SPEED_BUMP = 8,
			CROSS_SLIDE_REARRANGE = 16,
			CROSS_SLIDE_EXACT = 32,
			TAP = 1,
			TAP_DOUBLE = 2,
			TAP_MULTIPLE_FINGER = 4,
			SECONDARY_TAP = 1,
			HOLD = 1,
			HOLD_MOUSE = 2,
			HOLD_MULTIPLE_FINGER = 4,
			DRAG = 1,
			MAX = 4294967295,
		}
		public enum INERTIA_PARAMETER : int32
		{
			TRANSLATION_DECELERATION = 1,
			TRANSLATION_DISPLACEMENT = 2,
			ROTATION_DECELERATION = 3,
			ROTATION_ANGLE = 4,
			EXPANSION_DECELERATION = 5,
			EXPANSION_EXPANSION = 6,
			MAX = -1,
		}
		public enum INTERACTION_STATE : int32
		{
			IDLE = 0,
			IN_INTERACTION = 1,
			POSSIBLE_DOUBLE_TAP = 2,
			MAX = -1,
		}
		public enum INTERACTION_CONTEXT_PROPERTY : int32
		{
			MEASUREMENT_UNITS = 1,
			INTERACTION_UI_FEEDBACK = 2,
			FILTER_POINTERS = 3,
			MAX = -1,
		}
		public enum CROSS_SLIDE_THRESHOLD : int32
		{
			SELECT_START = 0,
			SPEED_BUMP_START = 1,
			SPEED_BUMP_END = 2,
			REARRANGE_START = 3,
			COUNT = 4,
			MAX = -1,
		}
		public enum CROSS_SLIDE_FLAGS : uint32
		{
			NONE = 0,
			SELECT = 1,
			SPEED_BUMP = 2,
			REARRANGE = 4,
			MAX = 4294967295,
		}
		public enum MOUSE_WHEEL_PARAMETER : int32
		{
			CHAR_TRANSLATION_X = 1,
			CHAR_TRANSLATION_Y = 2,
			DELTA_SCALE = 3,
			DELTA_ROTATION = 4,
			PAGE_TRANSLATION_X = 5,
			PAGE_TRANSLATION_Y = 6,
			MAX = -1,
		}
		public enum TAP_PARAMETER : int32
		{
			MIN_CONTACT_COUNT = 0,
			MAX_CONTACT_COUNT = 1,
			MAX = -1,
		}
		public enum HOLD_PARAMETER : int32
		{
			MIN_CONTACT_COUNT = 0,
			MAX_CONTACT_COUNT = 1,
			THRESHOLD_RADIUS = 2,
			THRESHOLD_START_DELAY = 3,
			MAX = -1,
		}
		public enum TRANSLATION_PARAMETER : int32
		{
			MIN_CONTACT_COUNT = 0,
			MAX_CONTACT_COUNT = 1,
			MAX = -1,
		}
		public enum MANIPULATION_RAILS_STATE : int32
		{
			UNDECIDED = 0,
			FREE = 1,
			RAILED = 2,
			MAX = -1,
		}
		
		// --- Function Pointers ---
		
		public function void INTERACTION_CONTEXT_OUTPUT_CALLBACK(void* clientData, in INTERACTION_CONTEXT_OUTPUT output);
		public function void INTERACTION_CONTEXT_OUTPUT_CALLBACK2(void* clientData, in INTERACTION_CONTEXT_OUTPUT2 output);
		
		// --- Structs ---
		
		[CRepr]
		public struct MANIPULATION_TRANSFORM
		{
			public float translationX;
			public float translationY;
			public float scale;
			public float expansion;
			public float rotation;
		}
		[CRepr]
		public struct MANIPULATION_VELOCITY
		{
			public float velocityX;
			public float velocityY;
			public float velocityExpansion;
			public float velocityAngular;
		}
		[CRepr]
		public struct INTERACTION_ARGUMENTS_MANIPULATION
		{
			public MANIPULATION_TRANSFORM delta;
			public MANIPULATION_TRANSFORM cumulative;
			public MANIPULATION_VELOCITY velocity;
			public MANIPULATION_RAILS_STATE railsState;
		}
		[CRepr]
		public struct INTERACTION_ARGUMENTS_TAP
		{
			public uint32 count;
		}
		[CRepr]
		public struct INTERACTION_ARGUMENTS_CROSS_SLIDE
		{
			public CROSS_SLIDE_FLAGS flags;
		}
		[CRepr]
		public struct INTERACTION_CONTEXT_OUTPUT
		{
			public INTERACTION_ID interactionId;
			public INTERACTION_FLAGS interactionFlags;
			public POINTER_INPUT_TYPE inputType;
			public float x;
			public float y;
			public _arguments_e__Union arguments;
			
			[CRepr, Union]
			public struct _arguments_e__Union
			{
				public INTERACTION_ARGUMENTS_MANIPULATION manipulation;
				public INTERACTION_ARGUMENTS_TAP tap;
				public INTERACTION_ARGUMENTS_CROSS_SLIDE crossSlide;
			}
		}
		[CRepr]
		public struct INTERACTION_CONTEXT_OUTPUT2
		{
			public INTERACTION_ID interactionId;
			public INTERACTION_FLAGS interactionFlags;
			public POINTER_INPUT_TYPE inputType;
			public uint32 contactCount;
			public uint32 currentContactCount;
			public float x;
			public float y;
			public _arguments_e__Union arguments;
			
			[CRepr, Union]
			public struct _arguments_e__Union
			{
				public INTERACTION_ARGUMENTS_MANIPULATION manipulation;
				public INTERACTION_ARGUMENTS_TAP tap;
				public INTERACTION_ARGUMENTS_CROSS_SLIDE crossSlide;
			}
		}
		[CRepr]
		public struct INTERACTION_CONTEXT_CONFIGURATION
		{
			public INTERACTION_ID interactionId;
			public INTERACTION_CONFIGURATION_FLAGS enable;
		}
		[CRepr]
		public struct CROSS_SLIDE_PARAMETER
		{
			public CROSS_SLIDE_THRESHOLD threshold;
			public float distance;
		}
		
		// --- Functions ---
		
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT CreateInteractionContext(out HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT DestroyInteractionContext(HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterOutputCallbackInteractionContext(HINTERACTIONCONTEXT interactionContext, INTERACTION_CONTEXT_OUTPUT_CALLBACK outputCallback, void* clientData);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RegisterOutputCallbackInteractionContext2(HINTERACTIONCONTEXT interactionContext, INTERACTION_CONTEXT_OUTPUT_CALLBACK2 outputCallback, void* clientData);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetInteractionConfigurationInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 configurationCount, INTERACTION_CONTEXT_CONFIGURATION* configuration);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetInteractionConfigurationInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 configurationCount, INTERACTION_CONTEXT_CONFIGURATION* configuration);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetPropertyInteractionContext(HINTERACTIONCONTEXT interactionContext, INTERACTION_CONTEXT_PROPERTY contextProperty, uint32 value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetPropertyInteractionContext(HINTERACTIONCONTEXT interactionContext, INTERACTION_CONTEXT_PROPERTY contextProperty, out uint32 value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetInertiaParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, INERTIA_PARAMETER inertiaParameter, float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetInertiaParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, INERTIA_PARAMETER inertiaParameter, out float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetCrossSlideParametersInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 parameterCount, CROSS_SLIDE_PARAMETER* crossSlideParameters);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetCrossSlideParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, CROSS_SLIDE_THRESHOLD threshold, out float distance);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetTapParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, TAP_PARAMETER parameter, float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetTapParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, TAP_PARAMETER parameter, out float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetHoldParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, HOLD_PARAMETER parameter, float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetHoldParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, HOLD_PARAMETER parameter, out float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetTranslationParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, TRANSLATION_PARAMETER parameter, float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetTranslationParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, TRANSLATION_PARAMETER parameter, out float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetMouseWheelParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, MOUSE_WHEEL_PARAMETER parameter, float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetMouseWheelParameterInteractionContext(HINTERACTIONCONTEXT interactionContext, MOUSE_WHEEL_PARAMETER parameter, out float value);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ResetInteractionContext(HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT GetStateInteractionContext(HINTERACTIONCONTEXT interactionContext, POINTER_INFO* pointerInfo, out INTERACTION_STATE state);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT AddPointerInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 pointerId);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT RemovePointerInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 pointerId);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProcessPointerFramesInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 entriesCount, uint32 pointerCount, in POINTER_INFO pointerInfo);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT BufferPointerPacketsInteractionContext(HINTERACTIONCONTEXT interactionContext, uint32 entriesCount, POINTER_INFO* pointerInfo);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProcessBufferedPacketsInteractionContext(HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT ProcessInertiaInteractionContext(HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT StopInteractionContext(HINTERACTIONCONTEXT interactionContext);
		[Import("ninput.dll"), CLink, CallingConvention(.Stdcall)]
		public static extern HRESULT SetPivotInteractionContext(HINTERACTIONCONTEXT interactionContext, float x, float y, float radius);
	}
}
