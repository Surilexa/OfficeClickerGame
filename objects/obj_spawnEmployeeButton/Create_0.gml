/// @description Insert description here
// You can write your code in this 

hasSpawned = false;
global.EmployeeNames = [];

info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", .2);
ds_map_add(info, "CostToPurchase", 5);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", true);
ds_map_add(info, "SpawnLimit", 25);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_General);
ds_map_add(info, "SpriteLogo", spr_buyCoworker);

ds_map_add_map(global.buttonInfo, "BlueCollar", info);
array_push(global.EmployeeNames, "BlueCollar");


info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", .8);
ds_map_add(info, "CostToPurchase", 40);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", false);
ds_map_add(info, "SpawnLimit", 15);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_Lawyer);
ds_map_add(info, "SpriteLogo", spr_buyLawyer);

ds_map_add_map(global.buttonInfo, "Lawyer", info);
array_push(global.EmployeeNames, "Lawyer");

info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", 8);
ds_map_add(info, "CostToPurchase", 600);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", false);
ds_map_add(info, "SpawnLimit", 8);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_Chef);
ds_map_add(info, "SpriteLogo", spr_buyChef);

ds_map_add_map(global.buttonInfo, "Chef", info);
array_push(global.EmployeeNames, "Chef");

info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", 47);
ds_map_add(info, "CostToPurchase", 3400);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", false);
ds_map_add(info, "SpawnLimit", 15);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_Dog);
ds_map_add(info, "SpriteLogo", spr_buyDog);

ds_map_add_map(global.buttonInfo, "Dog", info);
array_push(global.EmployeeNames, "Dog");

info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", 260);
ds_map_add(info, "CostToPurchase", 15600);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", false);
ds_map_add(info, "SpawnLimit", 10);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_General);
ds_map_add(info, "SpriteLogo", spr_buyManager);
ds_map_add_map(global.buttonInfo, "Manager", info);
array_push(global.EmployeeNames, "Manager");

info = ds_map_create();
ds_map_add(info, "MoneyPerSecond", 1400);
ds_map_add(info, "CostToPurchase", 84000);
ds_map_add(info, "TotalPurchased", 0);
ds_map_add(info, "CanPurchase", false);
ds_map_add(info, "SpawnLimit", 10);
ds_map_add(info, "ObjToSpawn", obj_roaming_AI_Tech);
ds_map_add(info, "SpriteLogo", spr_buyTech);
ds_map_add_map(global.buttonInfo, "Technicion", info);
array_push(global.EmployeeNames, "Technicion");


