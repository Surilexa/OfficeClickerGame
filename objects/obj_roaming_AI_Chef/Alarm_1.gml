/// @description Insert description here
// You can write your code in this editor

if(walking){
	if(movingUp){
		if(image_index != 0){
		image_index = 0;
		}
		else{
			image_index = 1;
		}
	}
	else if(movingDown){
		if(image_index != 0){
		image_index = 0;
		}
		else{
			image_index = 3;
		}
	}
	
}
if(movingLeft){
	image_xscale = -4;
}
else if(movingRight){
	image_xscale = 4;
}
alarm[1] = 20;
previousX = x;
previousY = y;