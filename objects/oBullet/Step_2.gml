/// @description Collisions

if (collision_rectangle(x, y - 2, x + hspeed, y + vspeed - 2, oParSolid, 0, 1)) {
	instance_destroy();
	instance_create_layer(x, y, "InstancesBg", oSpark);
}

with (oFxRoomCover) {
	if (image_alpha <= 1 && CollisionBBox(self, other)) {
		instance_destroy(other);
	}
}

// use speed rect to prevent tunneling
var ww = sprite_height;
var entity = collision_rectangle(x - ww, y - ww, x + ww + hspeed, y + ww + vspeed, oParEntity, 0, 1);
if (entity) {
	var d = object_direction(entity);
	BloodSplatter(x, y + 4, 24, d - 20, d + 20);
	instance_destroy();
	instance_destroy(entity);
}

// outside of room
if (
	x < -sprite_width || y > room_height + sprite_height ||
	x > room_width + sprite_width || y < -sprite_height
) {
	instance_destroy();
}