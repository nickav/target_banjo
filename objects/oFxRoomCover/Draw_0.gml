if (image_alpha <= 0) return;

// draw black cover
draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_rectangle(x, y, x + sprite_width - 1, y + sprite_height - 1, 0);
draw_set_alpha(1);

// redraw player over cover
if (instance_exists(oPlayer) && collision_rectangle(x, y, x + sprite_width - 1, y + sprite_height - 1, oPlayer, 0, 1)) {
	with (oPlayer) event_perform(ev_draw, 0);
}