// Thin out the blood as it spreads
image_xscale  -= sizeChange;
image_yscale  = image_xscale;

// I also decided to fade the blood out by a random percentage as it spreads
// These values seemed to feel right
if (movSpd > 0)
    image_alpha -= random_range(0.05, 0.1);

// Slow down the blood with friction
movSpd = Approach(movSpd, 0, fric);

// I decided to draw the blood to the surface here
// This isn't really necessary, you could put this somewhere else
if (instance_exists(oControllerBlood)) {
    surface_set_target(oControllerBlood.surf);
	gpu_set_blendmode(bm_dest_color);
    draw_sprite_ext(sBlood, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
    surface_reset_target();  
	gpu_set_blendmode(bm_normal);
}

// Once the blood thins away to nothing, destroy it
// Destroy self
if (image_xscale <= 0.5)
    instance_destroy();