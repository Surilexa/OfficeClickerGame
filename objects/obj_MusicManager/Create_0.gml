/// @description Insert description here
// You can write your code in this editor
trackNum = 0;
currentBackgroundMusic = 0;
backgroundMusic = ds_map_create();


info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_1);
ds_map_add(info, "Time", 200);
ds_map_add_map(backgroundMusic, 1, info);

info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_2);
ds_map_add(info, "Time", 49.29);
ds_map_add_map(backgroundMusic, 2, info);

info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_3);
ds_map_add(info, "Time", 197.65);
ds_map_add_map(backgroundMusic, 3, info);

info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_5);
ds_map_add(info, "Time", 79.5);
ds_map_add_map(backgroundMusic, 4, info);

info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_6);
ds_map_add(info, "Time", 123.2);
ds_map_add_map(backgroundMusic, 5, info);


info = ds_map_create();
ds_map_add(info, "Track", s_backgroundTheme_7);
ds_map_add(info, "Time", 60);
ds_map_add_map(backgroundMusic, 6, info);

alarm[1] = 60 *5;