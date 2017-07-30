/// @param sprite_right
/// @param sprite_up
/// @param sprite_down
/// @param sprite_walk_right
/// @param sprite_walk_up
/// @param sprite_walk_down

var sprite;

// standing
switch (dir) {
	case Facing.LEFT:
	case Facing.RIGHT: sprite = argument0; break;
	case Facing.UP: sprite = argument1; break;
	default:
	case Facing.DOWN: sprite = argument2; break;
}

// walking
if (abs(vx) + abs(vy) > 0) {
	switch (dir) {
		case Facing.LEFT:
		case Facing.RIGHT: sprite = argument3; break;
		case Facing.UP: sprite = argument4; break;
		default:
		case Facing.DOWN: sprite = argument5; break;
	}
}

// update sprite and xscale
image_xscale = dir < 0 ? -1: 1;
sprite_index = sprite;

// draw
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, 1);