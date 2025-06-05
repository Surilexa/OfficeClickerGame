// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PurchaseRoom(){
	global.buildMode = true;
	show_debug_message(global.selectedPlot);
	
	if(global.selectedRoom != ""){
		//run preview code here
		//setup the preview layers
		BuildTheRoom(global.selectedRoom, 0 , 0, true);
	}
	else if(global.selectedPlot != [-1,-1]){
		show_debug_message(string(global.selectedPlot));
		var plotref = FindPlotReference(global.selectedPlot[0], global.selectedPlot[1]);
		var placement = RoomPlacementUsingPlot(plotref.plotXLocation,plotref.plotYLocation, 3,3);
		if(global.selectedRoom != ""){
			//place down room at plot
			BuildTheRoom(global.selectedRoom, placement[0]/48 , placement[1]/48, false);
			SetSurroundingPlots(global.selectedPlot[0],global.selectedPlot[1], true);
			show_debug_message(string(global.selectedRoom) + "  x: " + string(placement[0]) + "  y: " + string(placement[1]));
			global.currentScore -= global.selectedPrice;
			global.buildMode = false;
			global.selectedRoom = "";
			global.selectedPlot = [-1,-1];
			global.buyMenuRoomOpen = false;
			global.selectedPrice = 0;
		}
		else{
			//open menu to choose room
			global.buyMenuRoomOpen = true;
		}
	}
}