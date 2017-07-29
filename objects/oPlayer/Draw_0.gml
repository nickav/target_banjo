var sprite;

switch (dir) {
	case -1: sprite = sPlayerRight; break;
	case 1: sprite = sPlayerRight; break;
	case -2: sprite = sPlayerUp; break;
	case 2: sprite = sPlayerDown; break;
	default: sprite = sPlayerDown; break;
}

draw_sprite_ext(sprite, image_index, x, y, dir < 0 ? -1 : 1, 1, 0, c_white, 1);