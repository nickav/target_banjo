// Draw blood surface
if (surface_exists(surf))
    draw_surface(surf, 0, 0);
// Create new surface if DX destroys old surface due to port resize
else
    surf = surface_create(room_width, room_height);