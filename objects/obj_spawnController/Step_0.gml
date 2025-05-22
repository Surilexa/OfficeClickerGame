/// @description Insert description here
// You can write your code in this editor
if(!hasGrabbedRef){
	refList[0] = instance_find(obj_spawnZone, 1);
	refList[1] = instance_find(obj_spawnZone, 0);
	if(refList[0].x > refList[1]){
		spawnRefRight = refList[0];
		spawnRefLeft = refList[1];
		hasGrabbedRef = true;
	}
	else{
		spawnRefRight = refList[0];
		spawnRefLeft = refList[1];
		hasGrabbedRef = true;
	}
	//show_debug_message("Right " + string(spawnRefRight.x) + " left " + string(spawnRefLeft.x));
}


