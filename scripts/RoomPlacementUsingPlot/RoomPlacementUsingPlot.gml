// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function RoomPlacementUsingPlot(plotx,ploty, marginTop, marginLeft){
	return [(plotx * 720) + (marginLeft * 48), (ploty * 720) + (marginTop * 48)];
}