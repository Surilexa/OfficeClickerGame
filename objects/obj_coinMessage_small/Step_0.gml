/// @description Insert description here
// You can write your code in this editor
if(disappear){
	currentAlpha -= .006;
}

if(currentAlpha <=0){
	instance_destroy(self);
}
y-=.75;