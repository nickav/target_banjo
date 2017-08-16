event_inherited();

// shooting
if (shooting > 0) {
	shooting -= 1;
	if (shooting == shootCooldown) ShootBullet();
}

var kShoot = false;

// shoot
var a = EntityDirToAngle(dir);
if (
	inSight &&
	collision_line(x, y, x + lengthdir_x(200, a), y + lengthdir_y(200, a), oPlayer, 0, 1)
) {
	kShoot = true;
}

// shoot
if (kShoot && shots > 0 && shooting <= 0) {
	shooting = shootCooldown + shootDelay;
}

followDist = kShoot ? 16 : 0;

if (shooting == shootCooldown) {
	ShootBullet();
	shots -= 1;
		
	// reload
	if (shots <= 0) {
		alarm[0] = reloadTime;
		alarm[1] = reloadTime / 3;
	}
}

shooting = Approach(shooting, 0, 1);