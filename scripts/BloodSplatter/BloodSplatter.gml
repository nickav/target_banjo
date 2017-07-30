/// @param x
/// @param y
/// @param count
/// @param min_angle
/// @param max_angle

var _x = argument0,
	_y = argument1,
	count = argument2,
	min_angle = argument3,
	max_angle = argument4;

for (var i = 0; i < count; i++) {
	// Spawn blood within a square
	var blood = instance_create_layer(_x + random_range(-2, 2), _y + random_range(-2, 2), "Blood", oBlood);
	with (blood) movDir = random_range(min_angle, max_angle);
}