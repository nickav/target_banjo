// shooting
if (shooting > 0) {
	shooting -= 1;
	if (shooting == shootCooldown) ShootBullet();
}

if (!instance_exists(oPlayer)) return;

var kShoot = false;
var player = instance_nearest(x, y, oPlayer);

// clear sight to player
if (
	!collision_line(x, y, player.x, player.y, oWall, 0, 1) &&
	collision_line(x, y, player.x, player.y, oPlayer, 0, 1)
) {

	sightx = player.x;
	sighty = player.y;
	// face player
	dir = AngleToEntityDir(object_direction(player));
	
	// shoot
	var a = EntityDirToAngle(dir);
	if (
		collision_line(x, y, x + lengthdir_x(200, a), y + lengthdir_y(200, a), oPlayer, 0, 1)
	) {
		kShoot = true;
	}
} else {
	event_inherited();
}

// shoot
if (kShoot && shots > 0 && shooting <= 0) {
	ShootBullet();
	shots -= 1;
	shooting = shootCooldown;
	
	// reload
	if (shots <= 0) {
		alarm[0] = reloadTime;
		alarm[1] = reloadTime / 3;
	}
}

shooting = Approach(shooting, 0, 1);

// movement
if (sightx >= 0 && distance_to_point(sightx, sighty) > 8) {
	var prevx = x, prevy = y;
	mp_potential_step_object(sightx, sighty, moveSpeed, oWall);
	vx = x - prevx;
	vy = y - prevy;
	x = prevx;
	y = prevy;
	trace("mp_step:", vx, vy);
	trace("sight:", sightx, sighty);
} else {
	vx = 0;
	vy = 0;
}