/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_buy,img_index,x,y,baseXScale,baseYScale,0,c_white,1);

draw_text_ext_transformed(x -(8*baseXScale) + (8 * global.zoom_level),y-(8 * baseYScale)+ (8 * global.zoom_level), "$ "+string(price),1,
							10000,global.zoom_level-.3,global.zoom_level-.3,0);

//draw_rectangle(x - (8 * baseXScale), y - (8 * baseYScale),x + (8 * baseXScale), y + (8 * baseYScale), true);


