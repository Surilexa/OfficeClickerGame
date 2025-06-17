/// @description Insert description here
// You can write your code in this editor
isActive = false;
isFishing = false;
iconOverlap = false;

x = 0;
y = 0;

//Icon Overlap
room_x = 0;
room_y = 0;

ox1 = display_get_gui_width() - 40;
ox2 = ox1 + 70;
oy1 = 160;
oy2 = oy1 + 70;

//Progress Bar
fillMax = 0;
progressBarFill = 0;

bad = fillMax / 10;
good = fillMax / 8;
great = fillMax / 5;
perfect = fillMax / 3;
global.noteSpeed = 4;
global.fishDifficulty = 2;

combo = 0;

pirateCatSpeed = .05;
