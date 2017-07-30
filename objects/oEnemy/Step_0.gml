// shooting
if (shooting > 0) {
	shooting -= 1;
	if (shooting == floor(shootTime / 2)) ShootBullet();
}

if (!instance_exists(oPlayer)) return;

// movement
var player = instance_nearest(x, y, oPlayer);

// clear sight to player
if (
	!collision_line(x, y, player.x, player.y, oWall, 0, 1) &&
	collision_line(x, y, player.x, player.y, oPlayer, 0, 1)
) {
	
	// move closer
	if (distance_to_object(player) >= 32) {
		vx = sign(player.x - x) * moveSpeed;
		vy = sign(player.y - y) * moveSpeed;
	} else {
		vx = 0;
		vy = 0;
	}
	
	// face player
	dir = AngleToEntityDir(object_direction(player));
	
	// shoot
	var a = EntityDirToAngle(dir);
	if (
		collision_line(x, y, x + lengthdir_x(200, a), y + lengthdir_y(200, a), oPlayer, 0, 1)
	) {
		shooting = shootTime;
	}
} else {
	vx = 0;
	vy = 0;
}

// move in both directions slower
if (abs(vx) > 0 && abs(vy) > 0) {
	var sqrt2 = sqrt(2);
	vx /= sqrt2;
	vy /= sqrt2;
}