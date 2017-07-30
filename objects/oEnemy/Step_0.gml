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

// move and collide
repeat (abs(vx)) {
	if (!place_meeting(x + sign(vx), y - 2, oParSolid)) x += sign(vx);
}

repeat (abs(vy)) {
	if (!place_meeting(x, y + sign(vy) - 2, oParSolid)) y += sign(vy);
}