// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PreviewMouseLocation(tileSize){
	return [floor(mouse_x / tileSize), floor(mouse_y/tileSize)]
}