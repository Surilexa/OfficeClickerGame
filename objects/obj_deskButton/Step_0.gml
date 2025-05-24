/// @description Insert description here
// You can write your code in this editor

/*if(array_length(playerObjectArray) == 0){
	array_push(playerObjectArray, instance_find(obj_computerScreenOverlay, 0));
	array_push(playerObjectArray, instance_find(obj_playerPet, 0));
	array_push(playerObjectArray, instance_find(obj_player, 0));
	array_push(playerObjectArray, instance_find(obj_chair, 0));
	array_push(playerObjectArray, instance_find(obj_deskButton, 0));
}*/
if(position_meeting(mouse_x,mouse_y, obj_deskButton)){
	image_index = 1;
	if(mouse_check_button_pressed(mb_left)){
		pressed = true;
	}
	
}
else{
	image_index = 0;
}
if(mouse_check_button_released(mb_left) && pressed){
	//ChangeSizeOfObjInArray(playerObjectArray, 1);
	pressed = false;
	IncreaseScore(1, "Click");
}
