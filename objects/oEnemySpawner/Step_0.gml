if (--nextSpawn <= 0) {
	if (--count >= 0) {
		instance_create_layer(x, y, "Instances", type);
		nextSpawn = irandom_range(minSpawn, maxSpawn);
	} else {
		instance_destroy();
	}
}