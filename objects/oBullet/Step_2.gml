/// @description Collisions

with (oParSolid) {
    if (CollisionBBox(self, other)) {
        instance_destroy(other);
    }
}

with (oEnemy) {
    if (CollisionBBox(self, other)) {
        instance_destroy();
		instance_destroy(other);
		instance_create_depth(x, y, 0, oEnemyDead);
    }
}