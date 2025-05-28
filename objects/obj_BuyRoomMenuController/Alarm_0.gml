/// @description Insert description here
// You can write your code in this editor
//sort by price
arrayOfButtonsAmenities = SortByPrice(arrayOfButtonsAmenities);
arrayOfButtonsDemons = SortByPrice(arrayOfButtonsDemons);
arrayOfButtonsDefense = SortByPrice(arrayOfButtonsDefense);
arrayOfButtonsProduction = SortByPrice(arrayOfButtonsProduction);

global.ListOfRoomButtons = [arrayOfButtonsProduction, arrayOfButtonsAmenities, arrayOfButtonsDefense, arrayOfButtonsDemons];

for(var i = 0; i < array_length(global.ListOfRoomButtons); i++){
	var array = global.ListOfRoomButtons[i];
	for(var n = 0; n < array_length(array); n++){
		array[n].arrayPosition = n;
		show_debug_message(string(array[n]) + "Array " + string(global.ListOfRoomButtons[i])+ "   Position: " + string(n));
	}
}