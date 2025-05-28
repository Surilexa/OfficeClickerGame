// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PasteInstanceData(data, layer_name, offsetX, offsetY){
	// Create new layer if it doesn't exist (optional)
    if (!layer_exists(layer_name)) {
        layer_create(0,layer_name);
    }

    for (var i = 0; i < ds_list_size(data); i++) {
        var info = data[| i];
        var temp = instance_create_layer(info.Ox + offsetX, info.Oy + offsetY, layer_name, info.obj);
		temp.image_xscale = info.scalex;
		temp.image_yscale = info.scaley;
		//show_debug_message( "Creating instance: "+ string(i) + ":  " + string(temp));
    }
}