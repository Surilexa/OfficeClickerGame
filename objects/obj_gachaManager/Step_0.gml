/// @description Insert description here
// You can write your code in this editor
if(!Setup){
	Setup = true;
	for(var i = 0; i < 3; i++){
		var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g1_" + string(i+1)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 1);
		global.Gacha[0,i] = map;
		//show_debug_message(string(asset_get_index("g1_" + string(i+1)) )+ "   asset " )
	}
	for(var i = 0; i < 3; i++){
	 	var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g2_" + string(i+1)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 2);
		global.Gacha[1,i] = map;
	}
	for(var i = 0; i < 2; i++){
	 	var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g3_" + string(i+1)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 3);
		global.Gacha[2,i] = map;
	}
	
	var b1 = instance_create_layer(850,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =1;
	b1 = instance_create_layer(1100,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =10;
}

room_x = camera_get_view_x(view_camera[0]) + (0 / display_get_gui_width()) * camera_get_view_width(view_camera[0]);
room_y = camera_get_view_y(view_camera[0]) + (0 / display_get_gui_height()) * camera_get_view_height(view_camera[0]);


rectx = room_x + (ox1 * global.zoom_level);
rectx2 = room_x +(ox2 * global.zoom_level);
recty =  room_y +(oy1 * global.zoom_level);
recty2 = room_y +(oy2 * global.zoom_level);

isColliding = rectx <= mouse_x && recty < mouse_y && rectx2 > mouse_x && recty2 > mouse_y;


if(isColliding && mouse_check_button_released(mb_left)){
	global.isGacha = !global.isGacha;
}