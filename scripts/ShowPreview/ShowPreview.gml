// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShowPreview(spr){
	var instance = instance_find(obj_preview, 0);
	if(instance_exists(instance)){
		instance.sprite = spr;
		instance.active = true;
	}
}