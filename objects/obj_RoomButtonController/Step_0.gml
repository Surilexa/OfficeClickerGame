/// @description Insert description here
// You can write your code in this editor
if(!loadRef){
	loadRef = true;
	//grab all buttons in the scene
	for(var i = 0; i < instance_number(obj_buyRoomButton); i++){
		var instanceFind = instance_find(obj_buyRoomButton, i);
		array_push(arrayOfButtons, instanceFind);
		if(i == 0){
			instanceFind.previousPurchased = true;
			array_push(global.RoomsPurchased, true);
		}
		else{
			array_push(global.RoomsPurchased, false);
		}
	}
}



