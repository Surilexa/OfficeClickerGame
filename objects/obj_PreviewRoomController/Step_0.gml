/// @description Insert description here
// You can write your code in this editor

if(!setup){
	setup = true;
	for(var i = 0; i < (room_width / 48); i++){
		for(var n = 0; (n < room_height / 48); n++){
			if(i > 115 && i < 134 && n > 111 && n < 130){
				global.OccupiedTiles[i,n] = true;
			}
			else{
				global.OccupiedTiles[i,n] = false;
			}
			
		}
	}
}