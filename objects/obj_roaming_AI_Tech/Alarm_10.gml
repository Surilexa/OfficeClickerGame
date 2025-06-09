/// @description Insert description here
// You can write your code in this editor

var dx = x - previousX;
var dy = y - previousY;
dir = point_direction(0, 0, dx, dy);

movingRight = dir < 90 || dir > 270;
movingLeft = dir > 90 && dir <270;
movingUp = dir >= 0 && dir <= 180;
movingDown = dir > 180 && dir < 360;

alarm[10] = 12;