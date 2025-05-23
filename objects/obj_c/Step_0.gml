/// @description Insert description here
// You can write your code in this editor
// === Zoom Settings ===
var zoom_speed = 0.05;     // How fast to zoom
var min_zoom = 0.5;       // Smallest zoom (closer in)
var max_zoom = 1;         // Largest zoom (farther out)

if (mouse_wheel_up()) {
    zoom_level -= zoom_speed;
}
if (mouse_wheel_down()) {
    zoom_level += zoom_speed;
}

// Clamp zoom level
zoom_level = clamp(zoom_level, min_zoom, max_zoom);

// === Calculate camera size based on zoom level ===
var base_width = 1920;     // Base camera size (adjust to your game's default)
var base_height = 1080;

var new_width = base_width * zoom_level;
var new_height = base_height * zoom_level;

// === Get mouse world position ===
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

var mouse_x_room = camera_get_view_x(view_camera[0]) + mx;
var mouse_y_room = camera_get_view_y(view_camera[0]) + my;

// === Smooth camera follow ===
var cam_x = lerp(camera_get_view_x(view_camera[0]), mouse_x_room - new_width div 2, 0.1);
var cam_y = lerp(camera_get_view_y(view_camera[0]), mouse_y_room - new_height div 2, 0.1);

// === Apply new camera size and position ===
camera_set_view_size(view_camera[0], new_width, new_height);
camera_set_view_pos(view_camera[0], cam_x, cam_y);