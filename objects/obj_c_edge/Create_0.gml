scroll_speed = 10;
border_margin = 540;     

global.zoom_level = 1;
base_width = 1920;
base_height = 1080;

tempCam = view_get_camera(0);
camera_set_view_pos(tempCam, obj_player.x - base_width div 2,obj_player.y - base_height div 2);