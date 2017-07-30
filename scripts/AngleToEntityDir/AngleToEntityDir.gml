/// @param angle (0 - 360)

var angle = argument0;

angle = angle mod 360;

if (angle >= 45  && angle < 135) return -2;
if (angle >= 135 && angle < 225) return -1;
if (angle >= 225 && angle < 315) return 2;

return 1;