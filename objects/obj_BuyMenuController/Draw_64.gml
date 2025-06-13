/// @description Insert description here
// You can write your code in this editor
//draw_sprite_ext(spr_buyMenuback, -1, 1920 * .66, 0, menuWidth, menuHeight, 0, c_white,1 );
if(global.buyMenuOpen){
	draw_sprite_ext(spr_background_Import, -1, 1920 - menuWidth, menuMarginY, menuWidth/68, menuHeight/68, 0, c_white,1 );
}
draw_set_alpha(1);
draw_sprite_ext(spr_BuyMenuIcon, isColliding,display_get_gui_width() - margin, margin, 2,2,0,c_white,1);

