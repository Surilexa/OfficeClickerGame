// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ChangeSizeOfObjInArray(arrayToChange, change){
	for(var i = 0; i < array_length(arrayToChange); i++){
	    arrayToChange[i].image_xscale = change +1;
	    arrayToChange[i].image_yscale = change +1;
	}
}