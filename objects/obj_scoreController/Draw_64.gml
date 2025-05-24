/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(f_Score);
draw_set_color(c_orange);

draw_text(30, 30, "$$ " + string(floor(global.currentScore)));
