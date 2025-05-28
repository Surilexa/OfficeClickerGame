/// @description Insert description here
// You can write your code in this editor
//=================================
global.buyMenuOpen = false;
loadRef = false;
//=================================
//button variables
arrayOfButtons = [];
buttonRange = 8;
firstButtonShown = 0;
//=================================
//menu values
buttonHeightOffset = 100;

menux1 = 1920 * .66;
menux2 = 2500;
menuy1 = -10;
menuy2 = 720;


spr_w = sprite_get_width(spr_BuyMenuIcon);
spr_h = sprite_get_height(spr_BuyMenuIcon);

offsetX = display_get_gui_width() -570;
offsetY = 200;
//=================================
//Overlapp Rect Size 
x = 0;
y = 0;
margin = 64;
ox1 = display_get_gui_width() - 50;
ox2 = display_get_gui_width() + spr_w - 40;
oy1 = 15;
oy2 = oy1 + spr_h * 1.5;
isColliding = false;
room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);
//=================================
alarm[0] = 20;
alarm[2] = 20;
//=================================

menuWidth = 700;
menuHeight = 900;

menuMarginY = 100;

global.BuyCharacterTab = false;
global.BuyRoomTab = false;
