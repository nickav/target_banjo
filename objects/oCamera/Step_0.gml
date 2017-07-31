// Track player
if (instance_exists(oPlayer)) {
	var px = oPlayer.x, py = oPlayer.y;
	var tx = px - vw / 2;
	var ty = py - vh / 2;
	
	var margin = 0.3;
	vx = clamp(vx, tx - vw * margin, tx + vw * margin);
	vy = clamp(vy, ty - vh * margin, ty + vh * margin);
	
	
	var dir = EntityDirToAngle(oPlayer.dir);
	tx += lengthdir_x(30, dir);
	ty += lengthdir_y(30, dir);
	
	vx = Approach(vx, clamp(vx, tx - vw * margin, tx + vw * margin), 1);
	vy = Approach(vy, clamp(vy, ty - vh * margin, ty + vh * margin), 1);
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
	//camera_set_view_pos(camera, vx, vy);
}