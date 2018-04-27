/// @description Collisions

var ww = sprite_width;
var hh = sprite_height;

var wall = collision_rectangle(x, y, x + hspeed, y + vspeed, oParSolid, 0, 1);
if (wall) {
	instance_destroy();
	
	// move towards wall
	var xx = 0, yy = 0;
	if (hspeed > 0) {
		xx = wall.bbox_left - x;
	} else if (hspeed < 0) {
		xx = wall.bbox_right - x;
	} else if (vspeed > 0) {
		yy = wall.bbox_top - y;
	} else if (vspeed < 0) {
		yy = wall.bbox_bottom - y + 4;
	}
	
	// add a little random
	xx += choose(1, 0, -1);
	yy += choose(1, 0, -1);
	
	instance_create_layer(x + xx, y + yy, "InstancesBg", oSpark);
}

with (oFxRoomCover) {
	if (image_alpha >= 1 && CollisionBBox(self, other)) {
		instance_destroy(other);
	}
}

// use speed rect to prevent tunneling
var entity = collision_rectangle(x - hh, y - hh, x + hh + hspeed, y + hh + vspeed, oParEntity, 0, 1);
if (entity) {
	var d = object_direction(entity);
	BloodSplatter(entity.x, entity.y + 4, 24, d - 20, d + 20);
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