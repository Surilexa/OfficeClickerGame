/// @description Insert description here
// You can write your code in this editor
//==================================================================================
//build mode

//==================================================================================
//scroll control
if(global.buyMenuRoomOpen){
	global.canScrollMenu = device_mouse_x_to_gui(0) > menux1 && device_mouse_x_to_gui(0) < menux2
			&& device_mouse_y_to_gui(0) > menuy1 && device_mouse_y_to_gui(0) < menuy2;
	if(mouse_wheel_down() && global.canScrollMenu){
		firstButtonShown = ScrollMenu(global.ListOfRoomButtons[global.buyMenuRoomTab], "Down", firstButtonShown, buttonRange, buttonHeightOffset, offsetY);
	}
	if(mouse_wheel_up() && global.canScrollMenu){
		firstButtonShown = ScrollMenu(global.ListOfRoomButtons[global.buyMenuRoomTab], "Up", firstButtonShown, buttonRange, buttonHeightOffset, offsetY)
	}
	var arrayReference = global.ListOfRoomButtons[global.buyMenuRoomTab];
	for(var i = firstButtonShown; i < array_length(arrayReference); i++){
		arrayReference[i].y = (i - firstButtonShown) * buttonHeightOffset + offsetY;
	}
}

if(keyboard_check_pressed(vk_backspace)){
	global.buyMenuRoomOpen = !global.buyMenuRoomOpen;
}
//==================================================================================
//colliding logic
room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


rectx = room_x + (ox1 * global.zoom_level);
rectx2 = room_x +(ox2 * global.zoom_level);
recty =  room_y +(oy1 * global.zoom_level);
recty2 = room_y +(oy2 * global.zoom_level);

isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;

if(isColliding){
	if(mouse_check_button_released(mb_left)){
		TabChange(0);
		global.buyMenuRoomOpen = !global.buyMenuRoomOpen;
		global.buyMenuOpen = false;
		TabChange(global.BuyRoomTab);
	}
}
//==================================================================================

if(keyboard_check_pressed(vk_enter)){
	TabChange(global.BuyRoomTab+1);
}