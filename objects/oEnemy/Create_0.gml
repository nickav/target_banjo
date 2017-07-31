event_inherited();

if (instance_exists(oPlayer)) {
	var player = instance_nearest(x, y, oPlayer);
	var objDir = object_direction(player);
	dir = AngleToEntityDir(objDir);
}

// movement
moveSpeed = 1;
sightx = -1;
sighty = -1;
inSight = 0;
followDist = 0;