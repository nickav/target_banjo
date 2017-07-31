// input
var kLeft, kRight, kUp, kDown, kShoot, kStrafe;

kLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
kRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
kUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
kDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
kShoot = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("J"));
kStrafe = keyboard_check(vk_space) || keyboard_check(ord("J"));

// buffer strafe
if (kStrafe) strafeBuffer = 4;
else strafeBuffer -= 1;

// still hold strafe a little bit after releasing
kStrafe = kStrafe || strafeBuffer > 0;

// movement
vx = (kRight - kLeft) * moveSpeed;
vy = (kDown - kUp) * moveSpeed;

// move in both directions slower
if (abs(vx) > 0 && abs(vy) > 0) {
	var sqrt2 = sqrt(2);
	vx /= sqrt2;
	vy /= sqrt2;
}

// change directions
if (!kStrafe) {
	if (kLeft)       dir = Facing.LEFT;
	else if (kRight) dir = Facing.RIGHT;
	else if (kUp)    dir = Facing.UP;
	else if (kDown)  dir = Facing.DOWN;
}

// shoot
if (kShoot && shots > 0 && shooting <= 0) {
	ShootBullet();
	CameraShake( 2, 2 );
	shots -= 1;
	shooting = shootCooldown;
	
	// reload
	if (shots <= 0) {
		alarm[0] = reloadTime;
		alarm[1] = reloadTime / 3;
	}
}

shooting = Approach(shooting, 0, 1);