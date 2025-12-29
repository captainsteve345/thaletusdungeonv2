// Draw GUI event: draw the UI panel (GUI event draws in GUI coordinates and is not affected by cameras)
var gx = ui_x;
var gy = ui_y;
var gw = ui_w;
var gh = ui_h;

// panel background
draw_set_alpha(1);
draw_set_color(c_black);
draw_rectangle(gx, gy, gx+gw, gy+gh, false);

// Inventory area example (clickable)
draw_set_color(c_white);
draw_text(gx + margin, gy + gh - 20, "Inventory (click items to use)");

// Input routing
// If the mouse is inside UI panel, handle UI; otherwise let dungeon input run
if (mouse_check_button_pressed(mb_left)) {
    if (mouse_x >= gx && mouse_x <= gx + gw) {
        // UI click
        var local_x = mouse_x - gx;
        var local_y = mouse_y - gy;
        // TODO: convert to inventory slot and act
    } else {
        // dungeon click — convert to world coords if necessary
        // Example: feed to player or camera (no action here)
    }
}