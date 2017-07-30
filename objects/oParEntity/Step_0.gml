if (abs(vx) > 0 && abs(vx) > abs(vy)) {
	if (vx > 0) dir = Facing.RIGHT;
	else dir = Facing.LEFT;
}

if (abs(vy) > 0 && abs(vy) >= abs(vx)) {
	if (vy > 0) dir = Facing.DOWN;
	else dir = Facing.UP;
}