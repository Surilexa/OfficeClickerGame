/// @description Insert description here
// You can write your code in this editor
//==========================================
global.currentScore = 100000000;
global.scoreMultiplier = 1;
global.clickMultiplier = 1;

global.coins = 0;

//scoreAmount = .01 * global.scoreMultiplier;
//==========================================
global.canScrollMenu = false;
//Score Math
//==========================================
//PEOPLE
global.blueCollarWorkers = 0;
global.Lawyers = 0;
global.Chef = 0;
global.Dog = 0;
global.Manager = 0;
global.Tech = 0;

//ButtonInfo
global.buttonInfo = ds_map_create();

//==========================================
//ROOMS
global.ReceptionRoomNum = 0;
global.CSRoomNum = 0;
global.KitchenRoomNum = 0;
global.CatRoomNum = 0;
global.DemonRoomNum = 0;
global.GymRoomNum = 0;
global.ServerRoomNum = 0;
global.ManagerRoomNum = 0;

//==========================================
//EXP
global.level = 1;
global.totalRevenue = 0;
global.requriedExp = 102.38 * power(1.396, global.level);
