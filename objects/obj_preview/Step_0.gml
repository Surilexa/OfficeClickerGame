/// @description Insert description here
// You can write your code in this editor


//overlapping logic
if(!setup){
	setup = true;
}
if(active){
	visible = true;
	MovePreview(self,false);
	tilesOverlapping = CompareOccupiedTiles(global.OccupiedTiles, ConvertSpriteToTileArray(sprite));
	show_debug_message(tilesOverlapping);
}