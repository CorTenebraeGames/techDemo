#define TGMS_TweenGet
/// TweenGet()


#define TweenGetTarget
/// TweenGetTarget(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return noone;

return _t[TWEEN.TARGET];

#define TweenGetProperty
/// TweenGetProperty(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return null__;

return _t[TWEEN.PROPERTY];

#define TweenGetDelta
/// TweenGetDelta(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return false;

return _t[TWEEN.DELTA];

#define TweenGetStart
/// TweenGetStart(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.START];

#define TweenGetDestination
/// TweenGetDestination(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.START] + _t[TWEEN.CHANGE];

#define TweenGetDuration
/// TweenGetDuration(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.DURATION];

#define TweenGetEase
/// TweenGetEase(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return EaseLinear;

return _t[TWEEN.EASE];

#define TweenGetChange
/// TweenGetChange(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.CHANGE];

#define TweenGetTime
/// TweenGetTime(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return 0;

return _t[TWEEN.TIME];

#define TweenGetState
/// TweenGetState(tween)

var _t = TGMS_FetchTween(argument0);
if (is_undefined(_t)) return TWEEN_STATE.STOPPED;

return _t[TWEEN.STATE];