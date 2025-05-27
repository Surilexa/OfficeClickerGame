/// @description Insert description here
// You can write your code in this editor
if(!hasSpawned){
	hasSpawned = true;
	for(var i = 0; i < array_length(global.EmployeeNames); i++){
		var button = instance_create_layer(x,y+i, "BuyButtons", obj_buyButton);
		var infoMap = global.buttonInfo[? global.EmployeeNames[i]];
		button.ObjToPurchase = infoMap[? "ObjToSpawn"];
		button.SpriteLogo = infoMap[? "SpriteLogo"];
		button.LimitOnScreen = infoMap[? "SpawnLimit"];
		button.canPurchase = infoMap[? "CanPurchase"];
		button.price = infoMap[? "CostToPurchase"];
		button.arrayPosition = i;
		//show_debug_message(string(infoMap[? "CostToPurchase"]));
	}
}