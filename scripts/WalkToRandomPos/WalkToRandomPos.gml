// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function WalkToRandomPos(ref1, boundRef){
	
    var sw = boundRef.sprite_width - 200;
    var sh = boundRef.sprite_height - 200;

    var ox = boundRef.sprite_xoffset;
    var oy = boundRef.sprite_yoffset;

    // World bounds
    var left   = boundRef.x - ox;
    var top    = boundRef.y - oy;
    var right  = left + sw;
    var bottom = top + sh;
	randomize();
    ref1.target_x = irandom_range(left, right);
    ref1.target_y = irandom_range(top, bottom);
	
}