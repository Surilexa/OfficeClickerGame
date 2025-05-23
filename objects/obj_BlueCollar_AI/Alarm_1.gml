/// @description Insert description here
// You can write your code in this editor
if(walking){
	if(walkingUp){
		if(image_index != 0){
		image_index = 0;
		}
		else{
			image_index = 1;
		}
	}
	else{
		if(image_index != 0){
		image_index = 0;
		}
		else{
			image_index = 3;
		}
	}
	
}
if(facingRight){
	image_xscale = -5;
}
else{
	image_xscale = 5;
}
alarm[1] = 20;