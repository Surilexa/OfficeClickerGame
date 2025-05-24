if(!global.canScrollMenu){
	border_margin = 400 * global.zoom_level;
	var zoom_speed = 0.1;
	var min_zoom = 1;
	var max_zoom = room_height/base_height;

	var cam = view_camera[0];
	var cam_x = camera_get_view_x(cam);
	var cam_y = camera_get_view_y(cam);
	var view_w = camera_get_view_width(cam);
	var view_h = camera_get_view_height(cam);


	var mx_gui = device_mouse_x_to_gui(0) * global.zoom_level;
	var my_gui = device_mouse_y_to_gui(0) * global.zoom_level;

	var mouse_world_x = cam_x + mx_gui;
	var mouse_world_y = cam_y + my_gui;


	var old_zoom = global.zoom_level;
	if (mouse_wheel_up()) global.zoom_level -= zoom_speed;
	if (mouse_wheel_down()) global.zoom_level += zoom_speed;
	global.zoom_level = clamp(global.zoom_level, min_zoom, max_zoom);


	var new_view_w = base_width * global.zoom_level;
	var new_view_h = base_height * global.zoom_level;


	var scale = global.zoom_level / old_zoom;

	var new_cam_x = mouse_world_x - mx_gui * scale;
	var new_cam_y = mouse_world_y - my_gui * scale;

if(mouse_check_button(mb_middle) || mouse_check_button(mb_right)){


	if (mx_gui < border_margin) {
	    new_cam_x -= scroll_speed;
	}
	if (mx_gui > new_view_w - border_margin) {
	    new_cam_x += scroll_speed;
	}
	if (my_gui < border_margin) {
	    new_cam_y -= scroll_speed;
	}
	if (my_gui > new_view_h - border_margin) {
	    new_cam_y += scroll_speed;
	}
}
	new_cam_x = clamp(new_cam_x, 0, room_width - new_view_w);
	new_cam_y = clamp(new_cam_y, 0, room_height - new_view_h);

	camera_set_view_size(cam, new_view_w, new_view_h);
	camera_set_view_pos(cam, new_cam_x, new_cam_y);
}