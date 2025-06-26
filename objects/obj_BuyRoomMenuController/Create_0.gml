/// @description Insert description here
// You can write your code in this editor
//=================================
global.buyMenuRoomOpen = false;
global.buyMenuRoomTab = 0;

global.selectedRoom = ""; //prefix for the room template to place
global.selectedPrice = 0; //price to purchase room

global.buildMode = false;
global.previewMode = false;

global.totalRooms = 0;
global.availableRoomsSlots = 1;
loadRef = false;
//=================================
//button variables
arrayOfButtonsAmenities = [];
arrayOfButtonsDemons = [];
arrayOfButtonsDefense = [];
arrayOfButtonsProduction = [];
global.ListOfRoomButtons = [];
ListOfRoomTypes = [];
buttonRange = 4;
firstButtonShown = 0;
//=================================
//menu values
buttonHeightOffset = 150;

menux1 = 1920 * .66;
menux2 = 2500;
menuy1 = -10;
menuy2 = 720;

offsetX = 590;
offsetY = 210;

spr_w = sprite_get_width(spr_BuyMenuRoomIcon);
spr_h = sprite_get_height(spr_BuyMenuRoomIcon);
//=================================
//Overlapp Rect Size 
x = 0;
y = 0;
marginx = 220;
marginy = 70;
ox1 = display_get_gui_width() - 210;
ox2 = display_get_gui_width() + spr_w - 180;
oy1 = 15;
oy2 = oy1 + spr_h * 1.5;

rectx = 0;
rectx2 = 0;
recty = 0;
recty2 = 0;
isColliding = false;
room_x = camera_get_view_x(view_camera[0]) + (x / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (y / display_get_gui_height()) * camera_get_view_height(view_camera[0]);
//=================================
alarm[2] = 20; // grab button references and place them in their arrays
//=================================

menuWidth = 700;
menuHeight = 900;

menuMarginY = 100;
