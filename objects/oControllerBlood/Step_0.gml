// Left-mouse click
if (instance_exists(oGame) && oGame.debug && mouse_check_button_pressed(mb_left)) {
    for (var i = 0; i < 16; i++) {
        // Spawn blood within an 8x8 square around the mouse cursor
        instance_create_depth(mouse_x + random_range(-4, 4), mouse_y + random_range(-4, 4), 150, oBlood);
    }
}