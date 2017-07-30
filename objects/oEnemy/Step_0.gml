if (instance_exists(oPlayer)) {
	var player = instance_nearest(x, y, oPlayer);
	if (!collision_line(x, y, player.x, player.y, oWall, 0, 1) &&
		collision_line(x, y, player.x, player.y, oPlayer, 0, 1)) {
		
		vx = sign(player.x - x) * moveSpeed;
		vy = sign(player.y - y) * moveSpeed;
	} else vx = 0;
}

// move in both directions slower
if (abs(vx) > 0 && abs(vy) > 0) {
	var sqrt2 = sqrt(2);
	vx /= sqrt2;
	vy /= sqrt2;
}

// change directions
if (vx < 0) dir = -1;
if (vy > 0) dir = 1;