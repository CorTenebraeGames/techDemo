#define TGMS_TweenSet


#define TweenSetTarget
/// TweenSetTarget(tween,instance)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _target = argument1.id;
    
if (_t[TWEEN.TARGET] != noone)
{
    _t[@ TWEEN.TARGET] = _target;
    
    if (_t[TWEEN.STATE] >= 0) { _t[@ TWEEN.STATE] = _target; }
    
    _t[@ TWEEN.DATA] = _target;
}

#define TweenSetProperty
/// TweenSetProperty(tween,property)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.PROPERTY] = argument1;
_t[@ TWEEN.DATA] = _t[TWEEN.TARGET];


#define TweenSetDelta
/// TweenSetDelta(tween,bool)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.DELTA] = argument1;


#define TweenSetStart
/// TweenSetStart(tween,start)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

var _dest = _t[TWEEN.START] + _t[TWEEN.CHANGE];
_t[@ TWEEN.START] = argument1;
_t[@ TWEEN.CHANGE] = _dest - argument1;

#define TweenSetDestination
/// TweenSetDestination(tween,destination)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.CHANGE] = argument1 -_t[TWEEN.START];


#define TweenSetDuration
/// TweenSetDuration(tween,duration)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;
    
_t[@ TWEEN.DURATION] = argument1;

#define TweenSetEase
/// TweenSetEase(tween,ease)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

_t[@ TWEEN.EASE] = argument1;
if (_t[TWEEN.STATE] >= 0 && _t[TWEEN.DURATION]!= 0)
{
    if (_t[TWEEN.PROPERTY] != null__) script_execute(_t[TWEEN.PROPERTY], script_execute(_t[TWEEN.EASE], _t[TWEEN.TIME], _t[TWEEN.START], _t[TWEEN.CHANGE], _t[TWEEN.DURATION]), _t[TWEEN.DATA], _t[TWEEN.TARGET]);
}

#define TweenSetTime
/// TweenSetTime(tween,time)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

// Assign new time value
_t[@ TWEEN.TIME] = argument1;
if (_t[TWEEN.STATE] >= 0 && _t[TWEEN.DURATION]!= 0)
{
    if (_t[TWEEN.PROPERTY] != null__) script_execute(_t[TWEEN.PROPERTY], script_execute(_t[TWEEN.EASE], _t[TWEEN.TIME], _t[TWEEN.START], _t[TWEEN.CHANGE], _t[TWEEN.DURATION]), _t[TWEEN.DATA], _t[TWEEN.TARGET]);
}