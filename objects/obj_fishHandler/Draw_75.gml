/// @description Insert description here
// You can write your code in this editor
if(isCaught){
	draw_sprite_ext(Sprite, -1, x,y,2,2,0,c_white,1);
	if(enableVFX){
		image_speed = .2;
		draw_sprite_ext(spr_fish_VFX_w, -1, x+42,y+55,3,3,0,c_white,1);
	}
} 