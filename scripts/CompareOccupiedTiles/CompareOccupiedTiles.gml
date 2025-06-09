// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CompareOccupiedTiles(array1, array2){
	var result = array1;
	var w =  floor(mouse_x/48);
	var h =  floor(mouse_y/48);
	for(var i = 0; i < array_length(array2); i++){
		for(var j = 0; j < array_length(array2[i]); j++){
			if(mouse_x + i*48 >= array_length(result)*48 || mouse_y + j*48 >= array_length(result[j])*48 || mouse_x < 0 || mouse_y <0){
				return true;
			}
			if(result[i+w,j+h] == 1 && result[i+w,j+h] == array2[i,j]){
				show_debug_message("overlapping tile at " + string(i) + "    " + string(j));
				return true;
			}
		}
	}
	return false;
}