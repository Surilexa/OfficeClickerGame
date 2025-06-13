/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(SpriteLogo, -1, x + 70,y,currentXScale,currentYScale,0,c_white,1);
draw_sprite_ext(spr_buy, img_index,x+pricexOffset,y+priceyOffset,priceXScale,priceYScale,0,c_white,1);

if(!canPurchase){
	draw_set_color(c_red);
	
}
else{
	draw_set_color(c_white);
}

draw_text(x+pricexOffset-70, y+priceyOffset-20, "$ " + annotateScore(floor(price)));
if(totalPurchased == 0){
	draw_text(x+pricexOffset + 110, y + priceyOffset-20, "$" + annotateScore(moneyPerSecond * totalPurchased + moneyPerSecond * (MultiplierScore(totalPurchased))) + "/s");
}
else{
	draw_text(x+pricexOffset + 110, y + priceyOffset-20, "$" + annotateScore(moneyPerSecond * totalPurchased * (MultiplierScore(totalPurchased))) + "/s");
}
draw_set_color(c_white);
draw_text(x,y+ priceyOffset-20,totalPurchased)
//draw_text_color(x+pricexOffset-50, y+priceyOffset-20, 

//draw_text(x+pricexOffset, y+priceyOffset-20, string(floor(price)));