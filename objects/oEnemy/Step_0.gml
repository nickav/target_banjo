if (!instance_exists(oPlayer)) return;

var player = instance_nearest(x, y, oPlayer);
var objDir = object_direction(player);

// clear sight to player
if (
	!collision_line(x, y, player.x, player.y, oWall, 0, 1) &&
	collision_line(x, y, player.x, player.y, oPlayer, 0, 1) &&
	abs(angle_difference(objDir, EntityDirToAngle(dir))) < 90
) {
	// set target positions
	sightx = player.x;
	sighty = player.y;
	// face player
	dir = AngleToEntityDir(objDir);
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
	
	// stop moving if we got stuck
	if (vx == 0 && vy == 0) {
		sightx = -1;
		sighty = -1;
	}
} else {
	vx = 0;
	vy = 0;
}