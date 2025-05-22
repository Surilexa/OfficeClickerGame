/// @description Insert description here
// You can write your code in this editor
//show_debug_message("Checking player");
if(isCheckingTime == 0){
	isCheckingTime = 1;
	isCurrentlyChecking = true;
}
if(!obj_playerController.isWorking){
	obj_GameController.lose = true;
	show_debug_message("lose");
}

if(isCurrentlyChecking){
	alarm[0] = 1;
}
else{
	isAlarmOn = false;
	isCheckingTime = 0;
	isCheckingPlayer = false;
}