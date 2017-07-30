/// @description Collisions

if (collision_rectangle(x, y - 2, x + hspeed, y + vspeed - 2, oParSolid, 0, 1)) {
	instance_destroy();
	instance_create_layer(x, y, "InstancesBg", oSpark);
}

with (oFxRoomCover) {
	if (CollisionBBox(self, other)) {
		instance_destroy(other);
	}
}

with (oParEntity) {
    if (CollisionBBox(self, other)) {
		var d = object_direction(other);
		BloodSplatter(x, y + 4, 24, d - 20, d + 20);
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