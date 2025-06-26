/// @description Insert description here
// You can write your code in this editor
global.isFishingActive = false;
isFishing = false;
iconOverlap = false;

x = 0;
y = 0;

//Icon Overlap
room_x = 0;
room_y = 0;

ox1 = display_get_gui_width() - 40;
ox2 = ox1 + 70;
oy1 = 990;
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
protection = 115;

//======================================================================
//fish
currentFish = 0;
global.availableFish = ds_map_create();
fish = ds_map_create();
ds_map_add(fish, "Price", 10);
ds_map_add(fish, "Difficulty", 1);
ds_map_add(fish, "Sprite", spr_goldfish);
ds_map_add_map(global.availableFish, 1, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 15);
ds_map_add(fish, "Difficulty", 1);
ds_map_add(fish, "Sprite", spr_koi);
ds_map_add_map(global.availableFish, 2, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 25);
ds_map_add(fish, "Difficulty", 1);
ds_map_add(fish, "Sprite", spr_catfish);
ds_map_add_map(global.availableFish, 3, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 50);
ds_map_add(fish, "Difficulty", 2);
ds_map_add(fish, "Sprite", spr_goldfish_gold);
ds_map_add_map(global.availableFish, 4, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 50);
ds_map_add(fish, "Difficulty", 2);
ds_map_add(fish, "Sprite", spr_mantaray);
ds_map_add_map(global.availableFish, 5, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 65);
ds_map_add(fish, "Difficulty", 2);
ds_map_add(fish, "Sprite", spr_koi_gold);
ds_map_add_map(global.availableFish, 6, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 120);
ds_map_add(fish, "Difficulty", 2);
ds_map_add(fish, "Sprite", spr_catfish_gold);
ds_map_add_map(global.availableFish, 7, fish);

fish = ds_map_create();
ds_map_add(fish, "Price", 150);
ds_map_add(fish, "Difficulty", 3);
ds_map_add(fish, "Sprite", spr_mantaray_gold);
ds_map_add_map(global.availableFish, 8, fish);



