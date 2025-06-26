/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, self)) {
	alarm[0] = 3;
}	

if(follow){
	x = lerp(x, mouse_x, 0.1);
	y = lerp(y, mouse_y, 0.1);
	if (position_meeting(mouse_x, mouse_y, self)) {
		var inst = instance_create_layer(x, y,"TempObjects", obj_coinMessage_small);
		inst.amount = value;
		instance_destroy(self);
	}	
}