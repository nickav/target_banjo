for (var i = 0; i < 16; i++) {
    // Spawn blood within a square
    instance_create_depth(x + random_range(-4, 4), y + random_range(-4, 4), 150, oBlood);
}