/// @description Collisions
invincible -= 1;
if (invincible >= 0) return;

if (place_meeting(x, y - 2, oParSolid)) {
	instance_destroy();
}

with (oEnemy) {
    if (CollisionBBox(self, other)) {
        instance_destroy();
		instance_destroy(other);
    }
}

with (oPlayer) {
    if (CollisionBBox(self, other)) {
        instance_destroy();
		instance_destroy(other);
    }
}

with (oFxRoomCover) {
	if (CollisionBBox(self, other)) {
		instance_destroy(other);
	}
}

// outside of room
if (
	x < -sprite_width || y > room_height + sprite_height ||
	x > room_width + sprite_width || y < -sprite_height
) {
	instance_destroy();
}