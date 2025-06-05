// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function UpdateOccupiedTiles(array, height, width, value){
	//Takes in an array of newly taken tiles.
	array[height,width] = value;
}