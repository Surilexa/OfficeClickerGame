/// @description Insert description here
// You can write your code in this editor
hasSpawned = false;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Reception";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyReception;
temp.price = 100;
temp.basePrice = 100;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Gym";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyDemonAlter;
temp.price = 200;
temp.basePrice = 200;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Kitchen";
temp.PurchaseLimit = 2;
temp.SpriteLogo = Kitchen_Singles_48x48_152;
temp.price = 500;
temp.basePrice = 500;

temp = instance_create_layer(0,0, "DemonButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Demon";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyDemonAlter;
temp.price = 10000;
temp.basePrice = 10000;
