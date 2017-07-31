with (target) {
	if (!(bbox_left > other.right || bbox_right < other.left || bbox_top > other.bottom || bbox_bottom < other.top)) {
		instance_destroy();
	}
}