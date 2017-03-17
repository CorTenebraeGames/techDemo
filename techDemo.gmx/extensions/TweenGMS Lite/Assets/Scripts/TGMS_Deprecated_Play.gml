#define TGMS_Deprecated_Play


#define TweenPlayOnce
/// TweenPlayOnce(**Deprecated**tween,[ease,start,dest,dur])

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return 0; }

if (argument_count == 1)
{
    _t[@ TWEEN.MODE] = TWEEN_MODE_ONCE;
    TGMS_TweenPlay(_t);
}
else
{
    TGMS_TweenPlay(_t, _t[TWEEN.PROPERTY], argument[1], TWEEN_MODE_ONCE, _t[TWEEN.DELTA], argument[4], argument[2], argument[3]); 
}

#define TweenPlayBounce
/// TweenPlayBounce(**Deprecated**tween,[ease,start,dest,dur])

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return 0; }

if (argument_count == 1)
{
    _t[@ TWEEN.MODE] = TWEEN_MODE_BOUNCE;
    TGMS_TweenPlay(_t);
}
else
{
    TGMS_TweenPlay(_t, _t[TWEEN.PROPERTY], argument[1], TWEEN_MODE_BOUNCE, _t[TWEEN.DELTA], argument[4], argument[2], argument[3]); 
}

#define TweenPlayPatrol
/// TweenPlayPatrol(**Deprecated**tween,[ease,start,dest,dur])

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return 0; }

if (argument_count == 1)
{
    _t[@ TWEEN.MODE] = TWEEN_MODE_PATROL;
    TGMS_TweenPlay(_t);
}
else
{
    TGMS_TweenPlay(_t, _t[TWEEN.PROPERTY], argument[1], TWEEN_MODE_PATROL, _t[TWEEN.DELTA], argument[4], argument[2], argument[3]); 
}

#define TGMS_TweenPlay
/// TGMS_TweenPlay(**Deprecated**tween[,prop,ease,mode,delta,dur,start,dest])

var _t = TGMS_FetchTween(argument[0]);
if (is_undefined(_t)) { return undefined; }

var _property = _t[TWEEN.PROPERTY];

_t[@ TWEEN.TIME] = 0;
//_t[@ TWEEN.DATA] = _t[TWEEN.TARGET];

if (argument_count > 1)
{
    _property = argument[1];
    _t[@ TWEEN.PROPERTY] = _property;
    _t[@ TWEEN.EASE] = argument[2];
    _t[@ TWEEN.MODE] = argument[3];
    _t[@ TWEEN.DELTA] = argument[4];
    _t[@ TWEEN.DURATION] = argument[5];
    _t[@ TWEEN.START] = argument[6];
    _t[@ TWEEN.CHANGE] = argument[7]-argument[6];
}

// Set tween as active
_t[@ TWEEN.STATE] = _t[TWEEN.TARGET];
// Mark tween for delay-list removal if not already removed
if (_t[TWEEN.DELAY] != -10) { _t[@ TWEEN.DELAY] = -1; }
// Update property with start value
script_execute(_property, _t[TWEEN.START], _t[TWEEN.DATA], _t[TWEEN.TARGET]);
    
