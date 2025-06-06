/// @description Insert description here
// You can write your code in this editor

if(!setup){
	setup = true;
	for(var i = 0; i < room_width / 48; i++){
		for(var n = 0; n < room_height / 48; n++){
			if(i > 61 && i < 76 && n > 61 && n < 76){
				global.OccupiedTiles[i,n] = true;
			}
			else{
				global.OccupiedTiles[i,n] = false;
			}
			
		}
	}
}