// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PullGacha(numberOfTimes){
	//global.currentGachaArray = [];
	var tier = 0;
	for(var i = 0; i < numberOfTimes; i++){
		//roll the available gacha
		randomize();
		var roll = random_range(0,1);
		//check the tier that they rolled and find random with that tier
		if(roll <= .03)
		{
			tier = 3;
			//epic purple tier 3%
		}
		else if(roll <= .27){
			tier = 2;
			//uncommon green tier 27%
		}
		else{
			tier = 1;
			//common white tier 70%
		}
		//add the available gacha to a temp array and the obtained array 
		var temp = global.Gacha[tier-1];
		randomize();
		var rolledGacha = irandom_range(0,array_length(temp));
		
		//compare what the player pulled with what they already own.
		var pull = global.Gacha[tier-1, rolledGacha];
		//spawn a gacha animation for each pulled gacha.
		pull[? "AmountObtained"] += 1;
	}
}