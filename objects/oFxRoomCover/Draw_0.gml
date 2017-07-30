if (image_alpha <= 0) return;

draw_set_alpha(image_alpha);
draw_set_color(c_black);
draw_rectangle(x, y, x + sprite_width, y + sprite_height, 0);
draw_set_alpha(1);