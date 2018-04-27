/// @description Collisions

event_inherited();

with (oEnemy) {
	if (CollisionBBox(self, other)) {
		instance_destroy(other);
		BloodSplatter(other.x, other.y, 24, 0, 360);
	}
}

/*
with (oAmmo) {
	if (CollisionBBox(self, other)) {
		instance_destroy(self);
		other.shots = 3;
        other.alarm[0] = other.reloadTime;
        other.alarm[1] = other.reloadTime / 3;
	}
}
*/