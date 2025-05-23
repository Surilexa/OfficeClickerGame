/// @description Insert description here
// You can write your code in this editor

visible = false;

arrayPosition = 0;

img_index = 0;
//alarm[0] = 60;


baseXScale = 1.5;
baseYScale = 1.5;

currentXScale = baseXScale;
currentYScale = baseYScale;

totalPurchased = 0;
cam = view_camera[0];

view_x = camera_get_view_x(cam);
view_y = camera_get_view_y(cam);

isColliding = false;

rectx = x + view_x +140;
rectx2 = x + view_x + 370;
recty =  y + view_y+10;
recty2 = y + view_y +90