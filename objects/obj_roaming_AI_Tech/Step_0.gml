/// @description Insert description here
// You can write your code in this editor



var dx = target_x - x;
var dy = target_y - y;

var dist = point_distance(x, y, target_x, target_y);

if (dist > move_speed) {
    var dir = point_direction(x, y, target_x, target_y);
    x += lengthdir_x(move_speed, dir);
    y += lengthdir_y(move_speed, dir);
	walking = true;
	if(target_x > x){
		facingRight = false;
	}
	else{
		facingRight = true;
	}
	if(target_y < y){
		walkingUp = true;
	}
	else{
		walkingUp = false;
	}
} else {
    walking = false;
    x = target_x;
    y = target_y;
}


if(path_index == -1 && !queuePath){
	target_x = x;
	target_y = y;
	show_debug_message("fire");
	queuePath = true;
	alarm[0] = 120;
}