/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//grab all buttons in the scene
	for(var i = 0; i < instance_number(obj_buyButton); i++){
		array_push(arrayOfButtons, instance_find(obj_buyButton, i));
		arrayOfButtons[i].x = x + offsetX;
	}
	
	
	for(var i = 0; i < array_length(arrayOfButtons); i++){
		arrayOfButtons[i].arrayPosition = i;
	}
}


if(global.buyMenuOpen){
	global.canScrollMenu = device_mouse_x_to_gui(0) > menux1 && device_mouse_x_to_gui(0) < menux2
			&& device_mouse_y_to_gui(0) > menuy1 && device_mouse_y_to_gui(0) < menuy2;
	if(mouse_wheel_down() && global.canScrollMenu){
		firstButtonShown ++;
		firstButtonShown = clamp(firstButtonShown, 0, array_length(arrayOfButtons)-1);
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
visible = global.buyMenuOpen;

if(keyboard_check_pressed(vk_space)){
	global.buyMenuOpen = !global.buyMenuOpen;
}




