/// @description Collisions

if (collision_rectangle(x, y - 2, x + hspeed, y + vspeed - 2, oParSolid, 0, 1)) {
//if (place_meeting(x, y - 2, oParSolid)) {
	instance_destroy();
	instance_create_layer(x, y, "InstancesBg", oSpark);
}

with (oFxRoomCover) {
	if (CollisionBBox(self, other)) {
		instance_destroy(other);
	}
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

// outside of room
if (
	x < -sprite_width || y > room_height + sprite_height ||
	x > room_width + sprite_width || y < -sprite_height
) {
	instance_destroy();
}