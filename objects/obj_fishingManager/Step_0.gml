/// @description Insert description here
// You can write your code in this editor

fillMax = 8 * 64;
if(keyboard_check_pressed(vk_space) && isActive){
	isFishing = true;
	alarm[0] = 60;
}

room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


var rectx = room_x + (ox1 * global.zoom_level);
var rectx2 = room_x +(ox2 * global.zoom_level);
var recty =  room_y +(oy1 * global.zoom_level);
var recty2 = room_y +(oy2 * global.zoom_level);

iconOverlap = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;

if(iconOverlap && mouse_check_button_released(mb_left)){
	isActive = !isActive;
}

progressBarFill = min(progressBarFill, fillMax);

//fish is caught
if(progressBarFill >= fillMax){
	currentFish.isCaught = true;
	currentFish = 0;
	progressBarFill = 0;
	isFishing = false;
	layer_destroy_instances("Fishing_Notes");
	combo++;
}
//remove protection
if(progressBarFill > 0){
	protection = -1;
}
//failed to catch fish
if(progressBarFill < 0){
	
	protection += progressBarFill;
	
	if(protection < 0 && progressBarFill < 0){
		//fail
		currentFish.fail = true;
		currentFish = 0;
		progressBarFill = 0;
		isFishing = false;
		layer_destroy_instances("Fishing_Notes");
		combo = 0;
	}
	progressBarFill = 0;
}



