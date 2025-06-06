/// @description Insert description here
// You can write your code in this editor
spawnx = x;
spawny = y;
move_speed = 2;

image_xscale = 4;
image_yscale = 4;
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

whereTheyCanTravel =  [obj_Chef_Bounds];