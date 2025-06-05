// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ConvertSpriteToTileArray(spr){
	var result = [];
	for(var i = 0; i < floor(sprite_get_width(spr)/48); i++){
		for(var j = 0; j < floor(sprite_get_height(spr)/48); j++){
			result[i,j] = true;
		}
	}
	return result;
}