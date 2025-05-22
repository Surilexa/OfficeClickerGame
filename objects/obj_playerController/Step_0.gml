/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)){
	//instance_create_layer(x,y,"TempObjects", obj_QTE_Controller);
	if(instance_exists(obj_g_shader)){
		obj_g_shader.use_greyScale = !obj_g_shader.use_greyScale;
		isWorking = !isWorking;
		show_debug_message(string(isWorking));
	}
}

if(!obj_g_shader.use_greyScale && !obj_GameController.lose){
	global.currentScore += obj_scoreController.scoreAmount;
}
