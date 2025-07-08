/// @description Insert description here
// You can write your code in this editor
spawnx = x;
spawny = y;
move_speed = 2;

image_xscale = 2;
image_yscale = 2;
alarm[1] = 1;

//states
walking = false;
facingRight = true;


//roaming stuff
path = path_add();
target_x = x;
target_y = y;

moneyPerSecond = 0;


alarm[0] = 60;
queuePath = true;

previousX = x;
previousY = y;

movingRight = false;
movingLeft = false;


dir = 0;

alarm[10] = 3;

whereTheyCanTravel = [obj_General_Bounds];

idleSprite = spr_g1_frog_blue_idle;
walkSprite = spr_g1_frog_blue_walk;