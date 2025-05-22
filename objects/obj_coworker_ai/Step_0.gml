/// @description Insert description here
// You can write your code in this editori
if(isWalking){
	scr_Walking(id, !isFacingRight, walkingSpeed * global.time_scale);
	image_speed = global.time_scale;
}

if(!hasTakenAction){
	if(!hasCheckedPlayer && !isCheckingPlayer && !obj_playerController.isBusy){
	
		if(place_meeting(x,y, obj_checkZone)){
			
			if(willThisBossStop <= (percentChanceToStop)/100){
				obj_playerController.isBusy = true;
				isCheckingPlayer = true;
				hasCheckedPlayer = true;
				image_index = indexToStopAs;
				isWalking = false;
			
				alarm[2] = 60 * howLongToStop;
				if(!isAlarmOn){
					alarm[0] = howLongToChange;
					isAlarmOn = true;
				}
				hasTakenAction = true;
			}
			else{
				hasCheckedPlayer = true;
			}
		}
	}
	//========================================================================================
	if(place_meeting(x,y,obj_coworker_ai)){
		checkOverlap = instance_place(x,y, obj_coworker_ai)
	
		if(checkOverlap.isFacingRight == isFacingRight || checkOverlap.hasTakenAction){
			checkOverlap = noone;
		}
	}
	else{
		checkOverlap = noone;
	}
	if(checkOverlap != noone)
	{
		scr_Talking(id, checkOverlap, howLongToTalk);
		hasTakenAction = true;
		checkOverlap = noone;
	}
	
}


if(isFacingRight){
	image_xscale = 15;
}
else{
	image_xscale = -15;
}
if(isFacingRight && place_meeting(x,y,obj_removeObjectR)){
	instance_destroy(id);
}
else if(!isFacingRight && place_meeting(x,y,obj_removeObjectL)){
	instance_destroy(id);
}


