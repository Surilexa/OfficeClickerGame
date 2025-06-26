/// @description Insert description here
// You can write your code in this editor


//button background
draw_sprite_ext(spr_buy, isColliding,x,y,12,3.5,0,c_white,1);

//text
if(global.coins >= numberOfPulls * cost){
	draw_set_color(c_white);
}
else{
	draw_set_color(c_red);
}
if(numberOfPulls > 1){
	draw_text(x-65,y-20, string(numberOfPulls) + "x  " + string(numberOfPulls * cost));
}
else{
	draw_text(x-52,y-20, string(numberOfPulls) + "x   " + string(numberOfPulls * cost));
}



