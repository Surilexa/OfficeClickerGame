/// @description Insert description here
// You can write your code in this editor

currentAlpha -= .03;
if(currentAlpha <=0){
	instance_destroy(self);
}
y--;