/// @description Insert description here
// You can write your code in this edito
var result = noone;

var randomPerson = irandom_range(0,total);
for(var p = 0; p < array_length(listOfWeightedSpawns); p++){
	if(randomPerson > listOfWeightedSpawns[p]){
		randomPerson -= listOfWeightedSpawns[p];
	}
	else{
		result = listOfSpawnablePeople[p];
		break;
	}
}
randomize();
var randomDirection = irandom_range(0,1);
if(randomDirection == 0){
	lastSpawnedPerson = instance_create_layer(spawnRefRight.x, spawnRefRight.y, "LeftPeople", result);
	currentSpawnedPeople++;
	lastSpawnedPerson.isFacingRight = false;
}
else{
	lastSpawnedPerson = instance_create_layer(spawnRefLeft.x, spawnRefLeft.y, "RightPeople", result);
	currentSpawnedPeople++;
	lastSpawnedPerson.isFacingRight = true;
}
randomize();
alarm[0] = 60 * irandom_range(2,4);
randomize();