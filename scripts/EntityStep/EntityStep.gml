var vxNew, vyNew;

// Handle sub-pixel movement
cx += vx;
cy += vy;
vxNew = round(cx);
vyNew = round(cy);
cx -= vxNew;
cy -= vyNew;

// move and collide
repeat (abs(vxNew)) {
	if (!place_meeting(x + sign(vxNew), y - 2, oParSolid)) x += sign(vxNew);
	else {
		vx = 0;
		cx = 0;
		break;
	}
}

repeat (abs(vyNew)) {
	if (!place_meeting(x, y + sign(vyNew) - 2, oParSolid)) y += sign(vyNew);
	else {
		vy = 0;
		cy = 0;
		break;
	}
}