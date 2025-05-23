/// @description Insert description here
// You can write your code in this editor

move_speed = 2;

image_xscale = 5;
image_yscale = 5;
alarm[1] = 1;

//states
walking = false;
facingRight = true;
walkingUp = false;

boundref = instance_find(obj_BlueCollar_Bounds, 0);

x = boundref.sprite_height;
y = boundref.sprite_width div 2;

queueMove = false;


target_x = x;
target_y = y;

moneyPerSecond = 1;

alarm[2] = 60;