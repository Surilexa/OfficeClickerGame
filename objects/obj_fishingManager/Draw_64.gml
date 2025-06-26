/// @description Insert description here
// You can write your code in this editor

//UI button
draw_sprite_ext(spr_fishIcon, iconOverlap, 1815, 975, 1.5,1.5,0,c_white, 1);
if(global.isFishingActive){
	draw_sprite_ext(spr_fishingBackgroundBorder, -1, x+47, y+47,27.43, 15.47, 0, c_white, 1);
	draw_sprite(spr_fishingArtBackground, -1, x + 50, y + 50);
	
	image_speed = pirateCatSpeed;
	draw_sprite_ext(spr_pirateCat, -1, 1200, 800,4, 4, 0, c_white, 1);
	if(!isFishing){
		draw_sprite_ext(spr_fishingRod, -1, 1350, 800,2, 2, 0, c_white, 1);
	}
	else{
		draw_sprite_ext(spr_fishingRodAnimated, -1, 1350, 800,2, 2, 0, c_white, 1);
	}
}
if(global.isFishingActive && isFishing){
	
	//draw background
	//x difference 562
	draw_sprite_ext(spr_fishingBackground, -1, 388, 639, 8,1.54,0,c_white, 1);
	draw_sprite_ext(spr_fishingStrikeZone, -1, 950, 685, 2,2,0,c_white, 1);
	
	draw_set_color(c_black);
	draw_text(920, 500, "Combo: " + string(combo));
	//draw_set_color(c_white);
	
	//window border
	//draw_sprite_ext(, -1, 388, 639, 8,1.54,0,c_white, 1);
	
	//progress bar
	draw_sprite_ext(spr_fishingProgressBarBorder, -1, 385, 500, 8,1,0,c_white, 1);
	
	if(progressBarFill > 0 || progressBarFill > fillMax == false){
		draw_sprite_ext(spr_fishingProgressBarFill, -1, 387, 501, progressBarFill,62,0,c_white, 1);
	}
	if(progressBarFill < 0 == false){
		draw_sprite_ext(spr_fishIcon, 0, 360+progressBarFill, 435, 1,1,0,c_white, 1);
	}
	
}
