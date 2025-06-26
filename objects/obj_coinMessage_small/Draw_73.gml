/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(currentAlpha);
draw_set_color(c);
image_speed = .5;
draw_sprite_ext(spr_coin, -1,x-25,y+19, .3,.3,0,c_white,currentAlpha);

draw_text_ext_transformed(x,y,"+" + string(amount), -1,-1,1,1,0);