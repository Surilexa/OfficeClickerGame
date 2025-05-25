// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function FindRandomPath(ref, whereTheyCanGo){
	randomize();
	var where = irandom_range(0,array_length(whereTheyCanGo)-1);
	if(instance_exists(whereTheyCanGo[where])){
		randomize();
		var chooseObj = instance_find(whereTheyCanGo[where], irandom_range(0, instance_number(whereTheyCanGo[where])-1));
	
		var spr = chooseObj.sprite_index;
		var subimg = chooseObj.image_index;

		var spr_width = sprite_get_width(spr) * chooseObj.image_xscale;
		var spr_height = sprite_get_height(spr) * chooseObj.image_yscale;
		var origin_x = sprite_get_xoffset(spr) * chooseObj.image_xscale;
		var origin_y = sprite_get_yoffset(spr) * chooseObj.image_yscale;

		var left   = chooseObj.x - origin_x;
		var top    = chooseObj.y - origin_y;
		var right  = left + spr_width;
		var bottom = top + spr_height;

		randomize();
	    ref.target_x = irandom_range(left, right);
	    ref.target_y = irandom_range(top, bottom);
	}
	
}