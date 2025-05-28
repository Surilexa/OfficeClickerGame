// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetSurroundingPlots(xvalue, yvalue, value){
	var rows = array_length(global.RoomPlots);
    var cols = array_length(global.RoomPlots);
	for (var dx = -1; dx <= 1; dx++) {
        for (var dy = -1; dy <= 1; dy++) {
            if (dx == 0 && dy == 0) continue; // Skip the center

            var nx = xvalue + dx;
            var ny = yvalue + dy;

            if (nx >= 0 && nx < rows && ny >= 0 && ny < cols) {
                global.RoomPlots[nx][ny] = value;
				//show_debug_message("Plot: " + string(nx) + "  " + string(ny) + " set to " + string(value));
            }
        }
    }
}