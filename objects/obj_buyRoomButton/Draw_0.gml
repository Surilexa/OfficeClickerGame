/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
//draw_set_alpha(0);
/*if(global.zoom_level > 1){
	draw_rectangle(((x + view_x +140) * global.zoom_level) - view_x, 
				((y + view_y+10) * global.zoom_level) - view_y, 
				((x + view_x + 370) * global.zoom_level) - view_x, 
				((y + view_y +90) * global.zoom_level) - view_y, false);
}
else{
	draw_rectangle((x + view_x +140), 
				(y + view_y+10), 
				(x + view_x + 370), 
				(y + view_y +90), false);
}*/

draw_rectangle(room_x + (140 * global.zoom_level), room_y +(10 * global.zoom_level) ,room_x +(370 * global.zoom_level) ,room_y + (90 * global.zoom_level), false);



