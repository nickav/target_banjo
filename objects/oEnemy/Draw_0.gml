/*var sprite;

// standing
switch (dir) {
	case -1:
	case 1: sprite = sPlayerRight; break;
	case -2: sprite = sPlayerUp; break;
	case 2: sprite = sPlayerDown; break;
	default: sprite = sPlayerDown; break;
}

// walking
if (abs(vx) + abs(vy) > 0) {
	switch (dir) {
		case -1:
		case 1: sprite = sPlayerWalkRight; break;
		case -2: sprite = sPlayerWalkUp; break;
		case 2: sprite = sPlayerWalkDown; break;
		default: sprite = sPlayerWalkDown; break;
	}
}*/

image_xscale = dir < 0 ? -1: 1;
//sprite_index = sprite;


draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, 1, 0, c_white, 1);

// shoot flash
// if (shooting) draw_sprite(sPlayerFlash, 0, x, y);