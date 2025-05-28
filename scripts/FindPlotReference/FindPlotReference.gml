// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindPlotReference(plotx,ploty){
	var temp = GetAllInstancesInLayer("RoomButtons");
	for(var i = 0; i < array_length(temp); i++){
		if(temp[i].plotXLocation == plotx && temp[i].plotYLocation == ploty){
			return temp[i];
		}
	}
}