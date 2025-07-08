/// @description Insert description here
// You can write your code in this editor

var dx = x - previousX;
var dy = y - previousY;
dir = point_direction(0, 0, dx, dy);

movingRight = dir < 90 || dir > 270;
movingLeft = dir > 90 && dir <270;

alarm[10] = 12;