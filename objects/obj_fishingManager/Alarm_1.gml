/// @description Insert description here
// You can write your code in this editor

//spawn note if progress bar not filled
if(progressBarFill < fillMax && isFishing){
	show_debug_message("Spawn note");
	instance_create_layer(400, 690, "Fishing_Notes", obj_Note);
	alarm[1] = 120 / (global.noteSpeed-1);
}



