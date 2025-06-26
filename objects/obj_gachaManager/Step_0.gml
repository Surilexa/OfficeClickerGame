/// @description Insert description here
// You can write your code in this editor
if(!Setup){
	Setup = true;
	for(var i = 0; i < 1; i++){
		var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g1_" + string(i)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 1);
		global.Gacha[0,i] = map;
	}
	for(var i = 0; i < 1; i++){
	 	var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g2_" + string(i)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 2);
		global.Gacha[1,i] = map;
	}
	for(var i = 0; i < 1; i++){
	 	var map = ds_map_create();
		ds_map_add(map, "Name",  asset_get_index("g3_" + string(i)));
		ds_map_add(map, "AmountObtained", 0);
		ds_map_add(map, "rarity", 3);
		global.Gacha[2,i] = map;
	}
	
	var b1 = instance_create_layer(850,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =1;
	b1 = instance_create_layer(1100,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =10;
}

visible = global.isGacha;
