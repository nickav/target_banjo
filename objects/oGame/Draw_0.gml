/* */
// Debug //////////////////////////////////////////
if (!debug) return;

draw_set_font(font0);
draw_set_color(c_white);
draw_text(6, 0, string(room_get_name(room)));

DebugLogDraw(6, 12, _debugLog);

if (keyboard_check(ord("O"))) {
	draw_set_color(c_white);
	with (oEnemy) {
		var a = EntityDirToAngle(dir);
		draw_line(x, y, x + lengthdir_x(200, a), y + lengthdir_y(200, a));
	}
	
	draw_set_color(c_red);
	with (oAtkBox) {
		draw_rectangle(left, top, right, bottom, 1);
	}
}

if (keyboard_check(ord("P"))) {
	draw_set_alpha(0.5);
	draw_set_color(c_red);
	with (oEnemy) draw_rectangle(sightx, sighty, sightx + 1, sighty + 1, 0);
	draw_set_alpha(1);
	draw_set_color(c_white);
}