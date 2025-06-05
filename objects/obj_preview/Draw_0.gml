/// @description Insert description here
// You can write your code in this editor
if(!tilesOverlapping){
	//set shader
	shader_set(shd_ValidPlacement);
	draw_sprite(sprite,-1,x,y);
	//reset
	shader_reset();
}
else{
	shader_set(shd_InvalidPlacement);
	draw_sprite(sprite,-1,x,y);
	//reset
	shader_reset();
}

draw_set_alpha(1);