/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//spawning room buttons
	for(var i = 0; i < (room_width/720)-1; i++){
		for(var n = 0; n < (room_height/720)-1; n++){
			if(i == 4 && n == 4){
				continue;
			}
			global.RoomPlots[i,n] = false;
			var last_instance = instance_create_layer(i*720 + 430, n*720 + 425,"RoomButtons", obj_buyPlotLocation);
			last_instance.plotXLocation = i;
			last_instance.plotYLocation = n;
		}
		SetSurroundingPlots(4,4,true);
	}
}




