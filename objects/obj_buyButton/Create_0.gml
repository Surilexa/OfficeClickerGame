/// @description Insert description here
// You can write your code in this editor

visible = false;

arrayPosition = 0;
img_index = 0;

baseXScale = 1.5;
baseYScale = 1.5;

currentXScale = baseXScale;
currentYScale = baseYScale;

totalPurchased = 0;

cam = view_camera[0];

view_x = camera_get_view_x(cam);
view_y = camera_get_view_y(cam);

isColliding = false;

ox1 = 140;
ox2 = 300;
oy1 = 10;
oy2 = 90;

pricexOffset = 230;
priceyOffset = 50;
priceXScale = 144/16;
priceYScale = 64/16

rectx = x + view_x +ox1;
rectx2 = x + view_x + ox2;
recty =  y + view_y+oy1;
recty2 = y + view_y +oy2;

room_x= 0;
room_y = 0;

spawnRef = instance_find(obj_NPCSpawn, 0);

//==============================
//imported variables
ObjToPurchase = obj_roaming_AI_General;
SpriteLogo = spr_buyCoworker;
LimitOnScreen = 0;
canPurchase = false;
price = 0;
basePrice = price;

alarm[0] = 2;