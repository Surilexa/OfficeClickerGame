/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_buy,img_index,x,y,baseXScale + (priceLength * global.zoom_level +1),baseYScale,0,c_white,1);

//change color for the text
if(global.currentScore < price){
	draw_set_color(c_red);
	
}
else{
	draw_set_color(c_white);
}

var text = draw_text_ext_transformed(x - (textXScale),y-(textYScale * global.zoom_level), "$ "+string(price),1,
							10000,global.zoom_level-.3,global.zoom_level-.3,0);

//show_debug_message(string(global.currentScore < price))
//draw_rectangle(x - (8 * baseXScale), y - (8 * baseYScale),x + (8 * baseXScale), y + (8 * baseYScale), true);


