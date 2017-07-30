/// instance calling must be an Entity

with (instance_create_depth(x + vx, y - 1 + vy, 0, oBullet)) {
	if (abs(other.dir) >= 2) {
		vspeed = sign(other.dir) * 8;
	} else {
		hspeed = sign(other.dir) * 8;
	}
}

CameraShake( 2, 2 );
audio_play_sound(sndPistol, 0, 0);