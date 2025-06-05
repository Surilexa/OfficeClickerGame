/// @description Insert description here
// You can write your code in this editor
previewMode = 0 < ds_map_size(global.previewLayers);

if(previewMode && alarm[0] < 0){
	
	alarm[0] = 1;
}
if(!setup){
	setup = true;
	for(var i = 0; i < room_width / 48; i++){
		for(var n = 0; n < room_height / 48; n++){
			if(i > 61 && i < 75 && n > 61 && n < 75){
				global.OccupiedTiles[i,n] = true;
			}
			else{
				global.OccupiedTiles[i,n] = false;
			}
			
		}
	}
	show_debug_message(global.OccupiedTiles);
}