/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(f_Score);

draw_set_alpha(1);
draw_sprite_ext(spr_money, 0, 45,60,1,1,0,c_white,1);
draw_text(110, 60, annotateScore(global.currentScore));

draw_sprite_ext(spr_coin, 0, 320,80,.4,.4,0,c_white,1);
draw_text(350, 60, global.coins);

draw_set_color(c_lime);
draw_circle_sector_custom(80,display_get_gui_height()-80,52,90, -360*(global.totalRevenue/global.requriedExp) +90, 64);
draw_sprite_ext(spr_CorprateLevel, -1,80,display_get_gui_height()-80,2,2,0,c_white, 1);


draw_set_color(c_white);
if(global.level > 9){
	draw_text(68,display_get_gui_height()-101, global.level);
}
else{
	draw_text(72,display_get_gui_height()-101, global.level);
}
