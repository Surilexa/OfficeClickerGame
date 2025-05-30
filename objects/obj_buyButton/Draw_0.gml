/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(0);
draw_rectangle(room_x + (ox1 * global.zoom_level), room_y +(oy1 * global.zoom_level) ,
				room_x +(ox2 * global.zoom_level) ,room_y + (oy2 * global.zoom_level), false);

draw_set_alpha(1);

