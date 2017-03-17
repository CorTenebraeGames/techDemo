#define TGMS_Utility


#define TGMS_Init
/// TGMS_Init()
/*
    !DO NOT CALL THIS!
    Automatically called by the extension.
*/

//-----------------------------------------------
// Declare default global system-wide settings
//-----------------------------------------------
global.TGMS_SharedTweener = noone;    // Declare global variable for holding shared tweener instance

//---------------------------
// Create ID Maps
//---------------------------
global.TGMS_MAP_TWEEN = ds_map_create();
global.TGMS_MAP_CALLBACK = ds_map_create();

//--------------------------------
// Initiate ID Indexes
//--------------------------------
global.TGMS_INDEX_TWEEN = 1;
global.TGMS_INDEX_CALLBACK = 1;

//-------------------------------
// Declare Enum Constants
//-------------------------------
// CALLBACK DATA
enum TWEEN_CALLBACK{ID,ENABLED,TARGET,SCRIPT,ARG0,ARG1,ARG2,ARG3,ARG4,ARG5,ARG6,ARG7,ARG8,ARG9,ARG10,ARG11,ARG12,ARG13,ARG14,ARG15};

// TWEEN STATES
enum TWEEN_STATE{DESTROYED=-4,STOPPED=-10,PAUSED=-11,DELAYED=-12};

// TWEEN DATA
enum TWEEN
{
    TIME,
    START,
    CHANGE,
    DURATION,
    STATE,
    DELTA,
    EASE,
    PROPERTY,
    TARGET,
    GROUP,
    DIRECTION,
    EVENTS,
    DESTROY,
    SIMPLE_KEY,
    MODE,
    DATA,
    DELAY,
    DELAY_START,
    ID,
    DATA_SIZE
};

//---------------------------
// Create Default Tween
//---------------------------
global.TGMS_TweenDefault[TWEEN.ID] = 0;
global.TGMS_TweenDefault[TWEEN.TARGET] = noone;
global.TGMS_TweenDefault[TWEEN.EASE] = EaseLinear;
global.TGMS_TweenDefault[TWEEN.TIME] = 0;
global.TGMS_TweenDefault[TWEEN.START] = 0;
global.TGMS_TweenDefault[TWEEN.CHANGE] = 1;
global.TGMS_TweenDefault[TWEEN.DURATION] = 1;
global.TGMS_TweenDefault[TWEEN.PROPERTY] = null__;
global.TGMS_TweenDefault[TWEEN.STATE] = TWEEN_STATE.STOPPED;
global.TGMS_TweenDefault[TWEEN.DELTA] = false;
global.TGMS_TweenDefault[TWEEN.GROUP] = 0;
global.TGMS_TweenDefault[TWEEN.EVENTS] = -1;
global.TGMS_TweenDefault[TWEEN.SIMPLE_KEY] = -1;
global.TGMS_TweenDefault[TWEEN.DESTROY] = 0;
global.TGMS_TweenDefault[TWEEN.DIRECTION] = 1;
global.TGMS_TweenDefault[TWEEN.MODE] = TWEEN_MODE_ONCE;
global.TGMS_TweenDefault[TWEEN.DATA] = 0;
global.TGMS_TweenDefault[TWEEN.DELAY] = -10;
global.TGMS_TweenDefault[TWEEN.DELAY_START] = 0;

// Assign default tween as first in global id map
global.TGMS_MAP_TWEEN[? 1] = global.TGMS_TweenDefault;


#define TGMS_Final
/// TGMS_Final()
/*
    !DO NOT CALL THIS!
    Automatically called by the extension.
*/

with(obj_SharedTweener) instance_destroy(); // Destroy shared tweener
ds_map_destroy(global.TGMS_MAP_TWEEN);      // Destroy global tween id map
ds_map_destroy(global.TGMS_MAP_CALLBACK);   // Destroy global callback id map

#define TGMS_FetchTween
/// TGMS_FetchTween(tween_id)

if (is_array(argument0)) { return argument0; }

if (is_real(argument0))
{
    if (ds_map_exists(global.TGMS_MAP_TWEEN, argument0))
    {
        return global.TGMS_MAP_TWEEN[? argument0];
    }

    // Show "invalid tween id" error message
    show_error("!!! INVALID TWEEN ID !!!
    " ,false);
}

return undefined;

#define TGMS_TargetExists
/// TGMS_TargetExists(target,deactivated)

if (argument1)
{
    if (instance_exists(argument0)) { return true; }

    instance_activate_object(argument0);
    
    if (instance_exists(argument0))
    {
        instance_deactivate_object(argument0);
        return true;
    }
}

return instance_number(argument0);

#define TGMS_ClearRoom
/// TGMS_ClearRoom(room)
/*
    @room = persistent room
    
    RETURN:
        na

    INFO:
        Clears persistent room's stored tween data
*/

var _sharedTweener = SharedTweener();
var _simpleTweens = _sharedTweener.simpleTweens;
var _pRoomTweens = _sharedTweener.pRoomTweens;
var _pRoomDelays = _sharedTweener.pRoomDelays;
var _key = argument0;

// Destroy tweens for persistent room
if (ds_map_exists(_pRoomTweens, _key))
{
    // Delete stored delays
    ds_queue_destroy(ds_map_find_value(_pRoomDelays, _key));
    ds_map_delete(_pRoomDelays, _key)
    
    // Get stored tweens queue
    var _queue = ds_map_find_value(_pRoomTweens, _key);
    
    // Destroy all stored tweens in queue
    repeat(ds_queue_size(_queue))
    {
        var _t = ds_queue_dequeue(_queue);                  // Get next tween from room's queue
        ds_map_delete(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]); // Invalidate tween handle
        ds_map_delete(_simpleTweens, _t[TWEEN.SIMPLE_KEY]); // Delete simple tween data
        _t[@ TWEEN.STATE] = TWEEN_STATE.DESTROYED;          // Set state as destroyed
        _t[@ TWEEN.ID] = undefined;                         // Nullify self reference
        
        // Destroy tween events if events map exists
        if (_t[TWEEN.EVENTS] != -1)
        {
            var _events = _t[TWEEN.EVENTS];        // Cache events
            var _key = ds_map_find_first(_events); // Find key to first event
            
            // Cycle through and destroy all events
            repeat(ds_map_size(_events))
            {
                var _event = _events[? _key]; // Cache event
                
                // Invalidate callback handles
                var _cbIndex = 0;
                repeat(ds_list_size(_event)-1)
                {
                    var _cb = _event[| ++_cbIndex];
                    ds_map_delete(global.TGMS_MAP_CALLBACK, _cb[TWEEN_CALLBACK.ID]);
                }
                
                ds_list_destroy(_event);                // Destroy event list
                _key = ds_map_find_next(_events, _key); // Find key for next event
            }
            
            ds_map_destroy(_events); // Destroy events map
        }
    }
    
    ds_queue_destroy(_queue);          // Destroy room's queue for stored tweens
    ds_map_delete(_pRoomTweens, _key); // Delete persistent room id from stored tweens map
}

#define TGMS_ClearAllRooms
/// TGMS_ClearAllRooms()
/*
    RETURN:
        na
        
    INFO:
        Clears stored tween data from all persistent rooms  
*/

var _pRoomTweens = SharedTweener().pRoomTweens;

repeat(ds_map_size(_pRoomTweens))
{
    TGMS_ClearRoom(ds_map_find_first(_pRoomTweens));
}

#define SharedTweenerActivate
/// SharedTweenerActivate()

instance_activate_object(obj_SharedTweener);

#define SharedTweenerDestroy
/// SharedTweenerDestroy()

with(obj_SharedTweener) instance_destroy();
#define TGMS_ExecuteEvent
/// TGMS_ExecuteEvent(event_list,event_type)
/*
    DON'T CALL THIS DIRECTLY!!!
*/

// IF events and event type initialized...
if (argument0 != -1)
{
    if (ds_map_exists(argument0, argument1))
    {
        // Get event data
        var _event = ds_map_find_value(argument0, argument1);
        
        // Iterate through all event callbacks (isEnabled * event list size)
        var _index = 0;
        repeat(_event[| 0] * (ds_list_size(_event)-1))
        {
            // Cache callback
            var _cb = _event[| ++_index];
            // Cache target
            var _target = _cb[TWEEN_CALLBACK.TARGET];
        
            with(_target) // Using target environment...
            {
                // Execute callback script with proper number of arguments
                switch(array_length_1d(_cb) * _cb[TWEEN_CALLBACK.ENABLED])
                {
                case TWEEN_CALLBACK.ARG0: script_execute(_cb[TWEEN_CALLBACK.SCRIPT]); break;
                case TWEEN_CALLBACK.ARG1: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0]); break;
                case TWEEN_CALLBACK.ARG2: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1]); break;
                case TWEEN_CALLBACK.ARG3: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2]); break;
                case TWEEN_CALLBACK.ARG4: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3]); break;
                case TWEEN_CALLBACK.ARG5: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4]); break;
                case TWEEN_CALLBACK.ARG6: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5]); break;
                case TWEEN_CALLBACK.ARG7: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6]); break;
                case TWEEN_CALLBACK.ARG8: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7]); break;
                case TWEEN_CALLBACK.ARG9: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8]); break;
                case TWEEN_CALLBACK.ARG10: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9]); break;
                case TWEEN_CALLBACK.ARG11: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10]); break;
                case TWEEN_CALLBACK.ARG12: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11]); break;
                case TWEEN_CALLBACK.ARG13: script_execute(_cb[TWEEN_CALLBACK.SCRIPT], _cb[TWEEN_CALLBACK.ARG0], _cb[TWEEN_CALLBACK.ARG1], _cb[TWEEN_CALLBACK.ARG2], _cb[TWEEN_CALLBACK.ARG3], _cb[TWEEN_CALLBACK.ARG4], _cb[TWEEN_CALLBACK.ARG5], _cb[TWEEN_CALLBACK.ARG6], _cb[TWEEN_CALLBACK.ARG7], _cb[TWEEN_CALLBACK.ARG8], _cb[TWEEN_CALLBACK.ARG9], _cb[TWEEN_CALLBACK.ARG10], _cb[TWEEN_CALLBACK.ARG11], _cb[TWEEN_CALLBACK.ARG12]); break;   
                }
            }
            
            // IF target does not exist
            if (instance_exists(_target) == false)
            {
                // Attempt to activate target
                instance_activate_object(_target);
                
                // IF target now exists
                if (instance_exists(_target))
                {
                    // Put target back to deactivated state
                    instance_deactivate_object(_target);
                }
                else
                {
                    // Delete callback from event list -- decrement loop index
                    ds_list_delete(_event, _index--);
                    // Invalidate callback handle
                    ds_map_delete(global.TGMS_MAP_CALLBACK, _cb[TWEEN_CALLBACK.ID]);
                }
            }
        }
    }
}
#define TweenDestroy
/// TweenDestroy(tween)
/*
    @tween = tween id
    
    RETURNS:
        null tween id
        
    INFO:
        Manually destroys the specified tween.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) { return undefined; }
if (_t[TWEEN.STATE] == TWEEN_STATE.DESTROYED) { return undefined; }

ds_map_delete(global.TGMS_MAP_TWEEN, _t[TWEEN.ID]);                // Invalidate tween handle
ds_map_delete(SharedTweener().simpleTweens, _t[TWEEN.SIMPLE_KEY]); // Delete simple tween data
_t[@ TWEEN.STATE] = TWEEN_STATE.DESTROYED;                         // Set state as destroyed
_t[@ TWEEN.ID] = undefined;                                        // Nullify self reference

// Invalidate tween target or destroy target instance depending on destroy mode
if (_t[TWEEN.DESTROY] != 2)
{ 
    _t[@ TWEEN.TARGET] = noone; // Invalidate target instance
}
else // Destroy target instance
{
    var _target = _t[TWEEN.TARGET]; // Get target to destroy
    
    if (instance_exists(_target))
    {
        with(_target) instance_destroy();
    }
    else
    {
        instance_activate_object(_target); // Attempt to activate target by chance it was deactivated
        with(_target) instance_destroy(); // Attempt to destroy target
    } 
}

// IF tween events map exists
if (_t[TWEEN.EVENTS] != -1)
{
    // Cache events and find first event key
    var _events = _t[TWEEN.EVENTS];
    var _key = ds_map_find_first(_events);
    
    // Iterate events
    repeat(ds_map_size(_events))
    {
        var _event = _events[? _key]; // Get event
        
        // Iterate through event callbacks
        var _cbIndex = 0;
        repeat(ds_list_size(_event)-1)
        {
            // Get callback and invalidate handle
            var _cb = _event[| ++_cbIndex];
            ds_map_delete(global.TGMS_MAP_CALLBACK, _cb[TWEEN_CALLBACK.ID]);
        }
        
        _key = ds_map_find_next(_events, _key); // Find key for next event
    }
}

return undefined;