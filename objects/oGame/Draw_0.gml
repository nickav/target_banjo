/* */
// Debug //////////////////////////////////////////
if (!debug) return;

draw_set_font(font0);
draw_set_color(c_white);
draw_text(6, 0, string(room_get_name(room)));

DebugLogDraw(6, 12, _debugLog);