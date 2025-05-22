/// @description Insert description here
// You can write your code in this editor
if (!qte_done) {
    qte_timer--;

    if (keyboard_check_pressed(qte_key)) {
        qte_success = true;
        qte_done = true;
        show_debug_message("QTE Success!");
    }

    if (qte_timer <= 0) {
        qte_success = false;
        qte_done = true;
        show_debug_message("QTE Failed!");
    }
} else {
    // Restore time and destroy QTE
    global.time_scale = 1;
    instance_destroy();
}