/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);

// Loop through the 2D array
var width = array_length(global.DemonCollisionMask);

// Assuming each "cell" represents a tile of a known size (e.g., 16x16)
var cell_size = 16;

for (var w = 0; w < width; w++) {
    for (var h = 0; h < array_length(global.DemonCollisionMask[w,0]); h++) {
        if (global.DemonCollisionMask[w,h]) {
            // Draw a filled rectangle at the appropriate screen position
            draw_rectangle(
                w * cell_size,
                h * cell_size,
                (w + 1) * cell_size,
                (h + 1) * cell_size,
                false // false = filled rectangle
            );
        }
    }
}