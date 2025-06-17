/// @description Insert description here
// You can write your code in this editor

draw_x += 1 * global.noteSpeed;

if(draw_x >= 950-registerMargin){
	registerNote = true;
}
if(draw_x >= 950 + registerMargin-50){
	obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), false, temp);
	instance_destroy(self);
}

if(registerNote == true){
	
	if(keyboard_check_pressed(vk_up) && type == 0){
		obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), true, temp);
		instance_destroy(self);
	}
	else if(keyboard_check_pressed(vk_right) && type == 1){
		obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), true, temp);
		instance_destroy(self);
	}
	else if(keyboard_check_pressed(vk_down) && type == 2){
		obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), true, temp);
		instance_destroy(self);
	}
	else if(keyboard_check_pressed(vk_left) && type == 3){
		obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), true,temp);
		instance_destroy(self);
	}
	else if(keyboard_check_pressed(vk_anykey)){
		obj_fishingManager.progressBarFill += handleNoteScore(abs(draw_x-950), false, temp);
		instance_destroy(self);
	}
}