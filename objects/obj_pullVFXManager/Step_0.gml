
if(skip){
	room_x = camera_get_view_x(view_camera[0]) + (0 / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
	room_y = camera_get_view_y(view_camera[0]) + (0 / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


	rectx = room_x + (ox1 * global.zoom_level);
	rectx2 = room_x +(ox2 * global.zoom_level);
	recty =  room_y +(oy1 * global.zoom_level);
	recty2 = room_y +(oy2 * global.zoom_level);

	isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;

}
