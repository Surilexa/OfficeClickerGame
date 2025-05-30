/// @description Insert description here
// You can write your code in this editor
hasSpawned = false;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Reception";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyReception;
temp.price = 100;
temp.basePrice = 100;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "CS";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyCS;
temp.price = 600;
temp.basePrice = 600;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Kitchen";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyKitchen;
temp.price = 1000;
temp.basePrice = 1000;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Gym";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyGym;
temp.price = 4000;
temp.basePrice = 4000;

temp = instance_create_layer(0,0, "DemonButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Demon";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyDemonAlter;
temp.price = 10000;
temp.basePrice = 10000;




