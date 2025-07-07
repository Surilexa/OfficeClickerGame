
if(drawVFX){
	image_speed = .26666;
	draw_sprite_ext(vfx, -1,x,y,2,2,0,c_white,1);
}
else{
	image_speed = .5;
	draw_sprite_ext(sprite,-1,x,y,2,2,0,c_white,1);
	instance_destroy(self);
}