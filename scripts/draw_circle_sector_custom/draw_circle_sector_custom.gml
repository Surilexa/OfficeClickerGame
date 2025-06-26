// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// draw_circle_sector_custom(x, y, radius, angle_start, angle_end, resolution)
function draw_circle_sector_custom(x, y, radius, angle_start, angle_end, resolution = 64) {
    var ang1 = degtorad(angle_start);
    var ang2 = degtorad(angle_end);
    
    var angle_step = (ang2 - ang1) / resolution;
    
    draw_primitive_begin(pr_trianglefan);
    draw_vertex(x, y); // center of circle

    for (var i = 0; i <= resolution; i++) {
        var a = ang1 + i * angle_step;
        var vx = x + lengthdir_x(radius, radtodeg(a));
        var vy = y + lengthdir_y(radius, radtodeg(a));
        draw_vertex(vx, vy);
    }

    draw_primitive_end();
}