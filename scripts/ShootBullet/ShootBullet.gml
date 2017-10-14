/// instance calling must be an Entity

var shift = abs(dir) == 1 ? -1 : 0;

var bullet = instance_create_layer(x + vx, y + shift + vy, "Instances", oBullet)

with (bullet) {
	if (abs(other.dir) >= 2) {
		vspeed = sign(other.dir) * 8;
	} else {
		hspeed = sign(other.dir) * 8;
	}
}

audio_play_sound(sndPistol, 0, 0);

// make enemies look
with (oEnemy) {
	dir = AngleToEntityDir(object_direction(bullet));
}