if (!destroy && CollisionBBox(self, oPlayer)) {
	destroy = true;
	instance_activate_region(x, y, sprite_width, sprite_height, 1);
}

if (destroy) {
	delay = Approach(delay, 0, 1);
	if (delay <= 0) image_alpha -= 0.1;
}

if (image_alpha <= 0) {
	instance_destroy();
}