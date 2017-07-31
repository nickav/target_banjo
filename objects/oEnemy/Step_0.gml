if (!instance_exists(oPlayer)) return;

var player = instance_nearest(x, y, oPlayer);
// clear sight to player
if (
	!collision_line(x, y, player.x, player.y, oWall, 0, 1) &&
	collision_line(x, y, player.x, player.y, oPlayer, 0, 1)
) {
	// set target positions
	sightx = player.x;
	sighty = player.y;
	// face player
	dir = AngleToEntityDir(object_direction(player));
	inSight = true;
} else {
	event_inherited();
	inSight = false;
}

// movement
if (sightx >= 0 && distance_to_point(sightx, sighty) > followDist) {
	var prevx = x, prevy = y;
	mp_potential_step_object(sightx, sighty, moveSpeed, oWall);
	vx = x - prevx;
	vy = y - prevy;
	x = prevx;
	y = prevy;
} else {
	vx = 0;
	vy = 0;
}