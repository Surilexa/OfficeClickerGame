/// @description Insert description here
// You can write your code in this editor

if(walking){
	sprite_index = spr_dogWalk;
	if(movingLeft){
		image_xscale = -1.25;
	}
	else if(movingRight){
		image_xscale = 1.25;
	}
}
else{
	sprite_index = spr_dogIdle;
}

alarm[1] = 20;
previousX = x;
previousY = y;