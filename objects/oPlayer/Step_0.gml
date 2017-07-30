// input
var kLeft, kRight, kUp, kDown, kShoot;

kLeft = keyboard_check(vk_left) || keyboard_check(ord("A"));
kRight = keyboard_check(vk_right) || keyboard_check(ord("D"));
kUp = keyboard_check(vk_up) || keyboard_check(ord("W"));
kDown = keyboard_check(vk_down) || keyboard_check(ord("S"));
kShoot = keyboard_check(vk_space) || keyboard_check(ord("J"));

// movement
vx = (kRight - kLeft) * moveSpeed;
vy = (kDown - kUp) * moveSpeed;

if (kLeft) {
	dir = -1;
} else if (kRight) {
	dir = 1;
} else if (kUp) {
	dir = -2;
} else if (kDown) {
	dir = 2;
}

if (abs(vx) > 0 && abs(vy) > 0) {
	var sqrt2 = sqrt(2);
	vx /= sqrt2;
	vy /= sqrt2;
}

// shoot
if (kShoot && shots > 0 && shooting <= 0) {
	with (instance_create_depth(x, y - 1, 0, oBullet)) {
		if (abs(other.dir) >= 2) {
			vspeed = sign(other.dir) * 6;
		} else {
			hspeed = sign(other.dir) * 6;
		}
	}
	shots -= 1;
	shooting = shootCooldown;
	
	// reload
	if (shots <= 0) {
		alarm[0] = 20;
	}
}

shooting = Approach(shooting, 0, 1);

// move and collide
repeat (abs(vx)) {
	if (!place_meeting(x + sign(vx), y - 2, oParSolid)) x += sign(vx);
}

repeat (abs(vy)) {
	if (!place_meeting(x, y + sign(vy) - 2, oParSolid)) y += sign(vy);
}