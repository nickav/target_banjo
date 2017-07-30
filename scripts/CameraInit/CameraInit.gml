/* */
//Enable the use of views
view_enabled = true;

//Make view 0 visible
view_set_visible(0, true);

//Set the port bounds of view
view_set_wport(0, vw);
view_set_hport(0, vh);

// Resize and center
var ww = vw * scale;
var hh = vh * scale;
window_set_rectangle((display_get_width() - ww) * 0.5, (display_get_height() - hh) * 0.5, ww, hh);
surface_resize(application_surface, ww, hh);

// Create camera
if (camera) camera_destroy(camera);
camera = camera_create_view(0, 0, vw, vh, 0, -1, -1, -1, 32, 32);
camera_set_view_size(camera, vw, vh);
view_set_camera(0, camera);