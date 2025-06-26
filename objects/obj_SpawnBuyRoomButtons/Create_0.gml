/// @description Insert description here
// You can write your code in this editor
hasSpawned = false;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Reception";
temp.PurchaseLimit = 3;
temp.SpriteLogo = spr_buyReception;
temp.price = 100;
temp.basePrice = 100;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "CS";
temp.PurchaseLimit = 3;
temp.SpriteLogo = spr_buyCS;
temp.price = 2500;
temp.basePrice = 2500;


temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Manager";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_BuyRoomManager;
temp.price = 35000;
temp.basePrice = 35000;

temp = instance_create_layer(0,0, "ProductionButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Server";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyServer;
temp.price = 100000;
temp.basePrice = 100000;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Kitchen";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyKitchen;
temp.price = 1000;
temp.basePrice = 20000;

temp = instance_create_layer(0,0, "AmenityButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Gym";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyGym;
temp.price = 4000;
temp.basePrice = 90000;

temp = instance_create_layer(0,0, "DemonButtons", obj_buyRoomButton);
temp.ObjToPurchase = "Demon";
temp.PurchaseLimit = 2;
temp.SpriteLogo = spr_buyDemonAlter;
temp.price = 1000000;
temp.basePrice = 1000000;






