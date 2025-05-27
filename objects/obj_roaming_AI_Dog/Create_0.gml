/// @description Insert description here
// You can write your code in this editor

move_speed = 2;

image_xscale = 1.25;
image_yscale = 1.25;
alarm[1] = 1;

//states
walking = false;
facingRight = true;
walkingUp = false;


//roaming stuff
path = path_add();
target_x = x;
target_y = y;

alarm[0] = 60;
queuePath = true;

previousX = x;
previousY = y;

movingRight = false;
movingLeft = false;
movingDown = false;
movingUp = false;
dir = 0;

alarm[10] = 3;

whereTheyCanTravel =  [obj_General_Bounds,obj_Lawyer_Bounds];