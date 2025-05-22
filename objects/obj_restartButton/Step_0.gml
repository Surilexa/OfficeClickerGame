/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y, obj_restartButton)){
	if(mouse_check_button_released(mb_left)){
		game_restart();
		show_debug_message("restart");
	}
}



