// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Talking(ref1,ref2, howLongToTalk){
	if(ref1.willThisCoworkerTalk <= (ref1.percentChanceToTalk)/100){
		if(!ref1.hasTakenAction && !ref2.hasTakenAction){
			
			
			ref2.isTalking = true;
			ref2.isWalking = false;
			ref2.hasTalked = true;
			ref2.hasTakenAction = true;
			
			ref1.isTalking = true;
			ref1.isWalking = false;
			ref1.hasTalked = true;
			ref1.alarm[3] = howLongToTalk * 60;
			
			var bubble1 = instance_create_layer(ref1.x-50,ref1.y-170, "TempObjects", obj_TalkingBubble1);
			bubble1.facingRight = ref1.isFacingRight;
			bubble1.alarm[0] = howLongToTalk * 60;
			
			ref2.currentlyTalking = true;
			ref2.alarm[3] = howLongToTalk * 60;
			
			var bubble2 = instance_create_layer(ref2.x-50,ref2.y-170, "TempObjects", obj_TalkingBubble1);
			bubble2.facingRight = ref2.isFacingRight;
			bubble2.alarm[0] = howLongToTalk * 60;
		}
		
		
	}
	else{
		ref1.hasTalked = true;
		ref2.hasTalked = true;
	}
}