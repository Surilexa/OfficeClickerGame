/// @description Insert description here
// You can write your code in this editor
if(!Setup){
	Setup = true;
	for(var i = 0; i < 4; i++){
	 	global.availableGacha[0,i] = asset_get_index("g1_" + string(i));
	}
	for(var i = 0; i < 4; i++){
	 	global.availableGacha[1,i] = asset_get_index("g2_" + string(i));
	}
	for(var i = 0; i < 4; i++){
	 	global.availableGacha[2,i] = asset_get_index("g3_" + string(i));
	}
	for(var i = 0; i < 4; i++){
	 	global.availableGacha[3,i] = asset_get_index("g4_" + string(i));
	}
	for(var j = 0; j < array_length(global.obtainedGacha); j++){
		for(var b = 0; b < array_length(global.obtainedGacha[j]); b++){
			var temp = instance_create_layer(0,0, "DecorationButtons", global.obtainedGacha[j,b]);
		}
	}
	
	var b1 = instance_create_layer(850,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =1;
	b1 = instance_create_layer(1100,800,"gachaButtons", obj_gachaButton);
	b1.numberOfPulls =10;
}

visible = global.isGacha;
