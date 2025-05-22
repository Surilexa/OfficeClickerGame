/// @description Insert description here
// You can write your code in this editor
draw_self();

if(alarm[0] > 0 && !isCurrentlyChecking){
	var calc = lerp(howLongToChange, 225, 1- (alarm[0]/howLongToChange));
	draw_sprite_ext(spr_checkBar, -1, x-160, y-190, 10,10,0, c_white, 1);
	draw_sprite_ext(spr_fillBar, -1, x-150, y-180, calc,20,0, c_white, 1);
}
if(isCurrentlyChecking){
	draw_sprite_ext(spr_emergency, -1, x, y-170, 2,2,0,c_white,1);
}
