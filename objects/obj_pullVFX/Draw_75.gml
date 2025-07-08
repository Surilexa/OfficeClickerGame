
if(drawVFX){
	image_speed = .266666;
	draw_sprite_ext(vfx, -1,x,y,3,3,0,c_white,1);
}
else{
	image_speed = .1;
	draw_sprite_ext(sprite,-1,x,y,4,4,0,c_white,1);
	/*if(!isgone){
		alarm[2] = 120;
		isgone = true;
	}*/
}