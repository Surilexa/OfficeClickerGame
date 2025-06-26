// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PullGacha(numberOfTimes){
	global.currentGachaArray = [];
	var tier = 0;
	for(var i = 0; i < numberOfTimes; i++){
		//roll the available gacha
		randomize();
		var roll = random_range(0,1);
		//check the tier that they rolled and find random with that tier
		if(roll <= .01){
			tier = 4;
			//god red tier 1%
		}
		else if(roll <= .1)
		{
			tier = 3;
			//epic purple tier 10%
		}
		else if(roll <= .4){
			tier = 2;
			//uncommon green tier 30%
		}
		else{
			tier = 1;
			//common white tier 59 %
		}
		//add the available gacha to a temp array and the obtained array 
		var temp = global.availableGacha[tier-1];
		randomize();
		var rolledGacha = irandom_range(0,array_length(temp));
		array_push(global.currentGachaArray, temp[tier-1,rolledGacha]);
		
		var isDup = false;
		//compare what the player pulled with what they already own. (duplicates should return coins)
		for(var b = 0; b < array_length(global.obtainedGacha[tier-1]); b++){
			var temp2 = global.obtainedGacha[tier-1,b];
			if(temp2 == temp[rolledGacha]){
				//duplicate
				isDup = true;
			}
		}
		//spawn a gacha animation for each pulled gacha.
		if(isDup){
			//spawn coin amount animation
		}
		else{
			//spawn regular animation
		}
		//add the new stuff to the buy room button menu
		
	}
	for(var j = 0; j < array_length(global.currentGachaArray); j++){
		var spawn = instance_create_layer(0,0, "DecorationButtons", global.currentGachaArray[j]);
	}
}