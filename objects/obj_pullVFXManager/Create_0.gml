global.isGacha = false;
pulls = global.currentGachaArray;
i = 0;
alarm[0] = 10;

skip = false;

isColliding = false;

//=================================
//collision check
room_x = 0;
room_y = 0;

rectx = 0;
rectx2 = 0;
recty = 0;
recty2 = 0;

ox1 = display_get_gui_width()/2;
ox2 = ox1 + 70;
oy1 = 990;
oy2 = oy1 + 70;

randomize();
r = irandom_range(0,2);
backgrounds = [spr_pullBackground1,spr_pullBackground2,spr_pullBackground3];