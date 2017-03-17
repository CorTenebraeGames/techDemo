#define TGMS_Deprecated_CreateDestroy


#define TweenCreate
/// TweenCreate(**Deprecated**target,property,delta,[ease,start,dest,dur])

var _t = global.TGMS_TweenDefault;

// Set tween properties -- creates new array from copy
_t[TWEEN.TARGET] = argument[0].id;
_t[TWEEN.PROPERTY] = argument[1];
_t[TWEEN.DELTA] = argument[2];
_t[TWEEN.DATA] = _t[TWEEN.TARGET];

// Set defined tween values
if (argument_count == 7)
{
    _t[TWEEN.EASE] = argument[3];
    _t[TWEEN.START] = argument[4];
    _t[TWEEN.CHANGE] = argument[5]-argument[4];
    _t[TWEEN.DURATION] = argument[6];
}

// Store tween index handle inside tween
_t[TWEEN.ID] = ++global.TGMS_INDEX_TWEEN;
// Assign tween handle to map
global.TGMS_MAP_TWEEN[? global.TGMS_INDEX_TWEEN] = _t;
// Add new tween to tweening list
ds_list_add(SharedTweener().tweens, _t);
// Return tween index handle
return global.TGMS_INDEX_TWEEN;

#define TweenDestroyAll
/// TweenDestroyAll(**Deprecated**deactivated)
/*
    @deactivated = destroy tweens associated with deactivated targets?
    
    RETURNS:
        NA
        
    INFO:
        Manually destroys the all tweens.
        Note: Tweens are automatically destroyed when their target instance is destroyed.
*/
    
var _tweens = SharedTweener().tweens;
var _deactivated = argument0;

var _tIndex = 0;
repeat(ds_list_size(_tweens))
{  
    var _t = _tweens[| _tIndex++];
    if (TGMS_TargetExists(_t[TWEEN.TARGET], _deactivated)) TweenDestroy(_t);
}

#define TweenDestroyWhenDone
/// TweenDestroyWhenDone(**Deprecated**tween,destroy[,kill_target])
/*
    @tween       = tween id
    @destroy     = destroy tween when it finishes?
    @kill_target = (optional) destroy target when tween finishes?
    
    RETURN:
        NA
        
    INFO:
        Forces tween to be destroyed when finished or stopped.
        Optionally destroys target as well.
*/

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return 0; }
    
if (argument_count == 2)
{
    _t[@ TWEEN.DESTROY] = argument[1];
}
else
{
    _t[@ TWEEN.DESTROY] = (argument[1]+argument[2])*argument[1];
}

#define TweenIsStopped
/// TweenIsStopped(**Deprecated**tween)
/*
    @tween      tween id
    
    RETURN:
        bool
        
    INFO:
        Returns true if the specified tween is stopped
        
    Example:
        if (TweenIsStopped(tween))
        {
            TweenPlay(tween);
        }
*/

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.STATE] == TWEEN_STATE.STOPPED;
