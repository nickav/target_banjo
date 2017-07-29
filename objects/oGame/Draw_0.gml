/* */
// Debug //////////////////////////////////////////
if (!debug) return;

draw_set_color(c_white);
draw_text(16, 16, string(room_get_name(room)));
DebugLogDraw(16, 32, _debugLog);