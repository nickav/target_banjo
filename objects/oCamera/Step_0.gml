//var camera = view_camera[view_current];
var vw = camera_get_view_width(camera), vh = camera_get_view_height(camera);

// Track player
if (instance_exists(oPlayer)) {
	var px = oPlayer.x, py = oPlayer.y;
	var tx = px - vw / 2;
	var ty = py - vh / 2;
	
	var margin = 80;
	vx = clamp(vx, tx - margin, tx + margin);
	vy = clamp(vy, ty - margin, ty + margin);
}

//Shake the camera assigned to the current view
if (isShaking) {
	camera_set_view_pos(
		camera,
		vxStart + random_range(-magnitude, magnitude),
		vyStart + random_range(-magnitude, magnitude)
	);
} else {
	// clamp camera to room bounds
	camera_set_view_pos(
		camera,
		clamp( vx, 0, room_width - vw ),
		clamp( vy, 0, room_height - vh )
	);
}