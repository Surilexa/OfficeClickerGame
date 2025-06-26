/// @description Insert description here
// You can write your code in this editor
//scoreAmount = (.01 * current_time/1000) * global.scoreMultiplier;
global.currentScore += global.buttonInfo[? global.EmployeeNames[0]][? "MoneyPerSecond"] * global.blueCollarWorkers/60 * MultiplierScore(global.blueCollarWorkers);
global.currentScore += global.buttonInfo[? global.EmployeeNames[1]][? "MoneyPerSecond"] * global.Lawyers /60 * MultiplierScore(global.Lawyers);
global.currentScore += global.buttonInfo[? global.EmployeeNames[2]][? "MoneyPerSecond"] * global.Chef / 60 * MultiplierScore(global.Chef);
global.currentScore += global.buttonInfo[? global.EmployeeNames[3]][? "MoneyPerSecond"] * global.Dog / 60 * MultiplierScore(global.Dog);
global.currentScore += global.buttonInfo[? global.EmployeeNames[4]][? "MoneyPerSecond"] * global.Manager / 60 * MultiplierScore(global.Manager);
global.currentScore += global.buttonInfo[? global.EmployeeNames[5]][? "MoneyPerSecond"] * global.Tech / 60 * MultiplierScore(global.Tech);




global.totalRevenue += global.buttonInfo[? global.EmployeeNames[0]][? "MoneyPerSecond"] * global.blueCollarWorkers/60 * MultiplierScore(global.blueCollarWorkers);
global.totalRevenue += global.buttonInfo[? global.EmployeeNames[1]][? "MoneyPerSecond"] * global.Lawyers /60 * MultiplierScore(global.Lawyers);
global.totalRevenue += global.buttonInfo[? global.EmployeeNames[2]][? "MoneyPerSecond"] * global.Chef / 60 * MultiplierScore(global.Chef);
global.totalRevenue += global.buttonInfo[? global.EmployeeNames[3]][? "MoneyPerSecond"] * global.Dog / 60 * MultiplierScore(global.Dog);
global.totalRevenue += global.buttonInfo[? global.EmployeeNames[4]][? "MoneyPerSecond"] * global.Manager / 60 * MultiplierScore(global.Manager);
global.totalRevenue += global.buttonInfo[? global.EmployeeNames[5]][? "MoneyPerSecond"] * global.Tech / 60 * MultiplierScore(global.Tech);

if(global.totalRevenue >= global.requriedExp){
	global.totalRevenue -= global.requriedExp;
	global.level++;
	global.requriedExp = 102.38 * power(1.396, global.level);
	
	//show_debug_message(global.requriedExp);
	//show_debug_message(global.level);
}
global.availableRoomsSlots = global.level - global.totalRooms;