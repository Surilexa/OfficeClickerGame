/// @description Insert description here
// You can write your code in this editor
if(isCaught){
	
	if(x >= targetx){
		x--;
	}
	if(y >= targety && count!=1){
		y -= 1 * moveSpeed;
	}
	else if(y <= targety){
		y += 1 * moveSpeed;
	}
	
	if(y <= targety){
		alarm[1] = effectDelay;
		count = 1;
	}
}
if(fail){
	alarm[0] = 1;
}