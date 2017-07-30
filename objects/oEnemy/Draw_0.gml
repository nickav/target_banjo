EntityDraw(sEnemyRight, sEnemyUp, sEnemyDown, sEnemyWalkRight, sEnemyWalkUp, sEnemyWalkDown);

// shoot flash
// if (shooting) draw_sprite(sPlayerFlash, 0, x, y);

if (instance_exists(oGame) && oGame.debug) {
	var a = EntityDirToAngle(dir);
	draw_line(x, y, x + lengthdir_x(200, a), y + lengthdir_y(200, a));
}