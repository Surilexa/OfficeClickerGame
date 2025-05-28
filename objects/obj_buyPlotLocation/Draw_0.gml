/// @description Insert description here
// You can write your code in this editor
if(!isColliding){
	draw_sprite_ext(spr_selectRoom,0,x,y,baseXScale,baseYScale,0,c_white,1);
}
else{
	draw_sprite_ext(spr_selectRoom,1,x,y,baseXScale+.4,baseYScale+.4,0,c_white,1);
}

//show_debug_message(string(global.currentScore < price))
//draw_rectangle(x - (8 * baseXScale), y - (8 * baseYScale),x + (8 * baseXScale), y + (8 * baseYScale), true);


