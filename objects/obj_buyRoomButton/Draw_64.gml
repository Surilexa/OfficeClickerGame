/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(1);
draw_sprite_ext(SpriteLogo, -1, x,y,currentXScale,currentYScale,0,c_white,1);
draw_set_alpha(1);
draw_sprite_ext(spr_buy, img_index,x+pricexOffset,y+priceyOffset,priceXScale,priceYScale,0,c_white,1);

if(!canPurchase){
	draw_set_color(c_red);
}
else{
	draw_set_color(c_white);
}

draw_text(x+pricexOffset-50, y+priceyOffset-20, "$ " + annotateScore(floor(price)));

draw_set_color(c_yellow);
draw_text_ext_transformed(x+pricexOffset+80, y+priceyOffset-20, "Remaining Purchases " + string(PurchaseLimit-totalPurchased), -1,-1,.75,.75,0)
//draw_text_color(x+pricexOffset-50, y+priceyOffset-20, 

//draw_text(x+pricexOffset, y+priceyOffset-20, string(floor(price)));