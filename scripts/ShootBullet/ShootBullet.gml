/// instance calling must be an Entity

var shift = abs(dir) == 1 ? -1 : 0;

with (instance_create_layer(x + vx, y + shift + vy, "Instances", oBullet)) {
	if (abs(other.dir) >= 2) {
		vspeed = sign(other.dir) * 8;
	} else {
		hspeed = sign(other.dir) * 8;
	}
}

audio_play_sound(sndPistol, 0, 0);