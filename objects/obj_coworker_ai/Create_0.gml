/// @description Insert description here
// You can write your code in this editor

walkingSpeed = 2.4;

//boss states
isWalking = true;
isTalking = false;
isCheckingPlayer = false;
isFacingRight = false;

hasCheckedPlayer = false;

isCurrentlyChecking = false;

image_xscale = 15;
image_yscale = 15;
alarm[1] = 1;

hasTakenAction = false;

indexToStopAs = irandom_range(2,4);
willThisBossStop = random_range(0,1);
percentChanceToStop = 10;

willThisCoworkerTalk = random_range(0,1);
percentChanceToTalk = 50;
currentlyTalking = false;
hasTalked = false;
howLongToTalk = 2;

howLongToStop = random_range(2,4);
howLongToChange = 60;

isAlarmOn = false;

isCheckingTime = 0;

checkOverlap = noone;