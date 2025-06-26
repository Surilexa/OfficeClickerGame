/// @description Insert description here
// You can write your code in this editor


if(global.buyMenuOpen){
	global.canScrollMenu = device_mouse_x_to_gui(0) > menux1 && device_mouse_x_to_gui(0) < menux2
			&& device_mouse_y_to_gui(0) > menuy1 && device_mouse_y_to_gui(0) < menuy2;
	if(mouse_wheel_down() && global.canScrollMenu){
		firstButtonShown ++;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayOfButtons)-buttonRange div 2);
		show_debug_message(string(firstButtonShown));
	}
	if(mouse_wheel_up() && global.canScrollMenu){
		firstButtonShown--;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayOfButtons)-1);
		show_debug_message(string(firstButtonShown));
	}
	for(var i = firstButtonShown; i < array_length(arrayOfButtons); i++){
		arrayOfButtons[i].y = (i - firstButtonShown) * buttonHeightOffset + offsetY;
		//show_debug_message(array_length(arrayOfButtons));
	}
}


room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


var rectx = room_x + (ox1 * global.zoom_level);
var rectx2 = room_x +(ox2 * global.zoom_level);
var recty =  room_y +(oy1 * global.zoom_level);
var recty2 = room_y +(oy2 * global.zoom_level);

isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;

if(isColliding){
	if(mouse_check_button_released(mb_left)){
		global.buyMenuOpen = !global.buyMenuOpen;
		global.buyMenuRoomOpen = false;
		global.isFishingActive = false;
	}
}
