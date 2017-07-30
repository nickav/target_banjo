

// shrink in larger direction
var xscale = 1, yscale = 1;
if (sprite_width > sprite_height) {
	xscale = val;
} else {
	yscale = val;
}

// draw fake 3d bottom
if (sprite_width > sprite_height) {
	draw_rectangle(x, y + sprite_height, x + sprite_width * xscale - 1, y + sprite_height * 2 - 1, 0);
}
draw_set_color(color);
draw_rectangle(x, y + sprite_height * ( 1 - yscale), x + sprite_width * xscale - 1, y + sprite_height - 1, 0);