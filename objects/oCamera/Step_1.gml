var prevIsShaking = isShaking;
vx = camera_get_view_x(camera);
vy = camera_get_view_y(camera);

// Shake
if (shakeTime > 0) shakeTime -= 1;
isShaking = shake || shakeTime > 0;

// save positoin before shake
if (!prevIsShaking && isShaking) {
	vxStart = vx;
	vyStart = vy;
}

// restore position after shake
if (prevIsShaking && !isShaking) {
	vx = vxStart;
	vy = vyStart;
}