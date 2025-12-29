// Center the text on screen
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(-1); // Use default font or create a custom one
draw_set_color(c_white);

var _center_x = GAME_WIDTH_FULL_CENTER; // From macros (window_get_width() / 2)
var _center_y = GAME_HEIGHT_FULL_CENTER; // From macros (window_get_height() / 2)

draw_text(_center_x, _center_y - 50, "Select Character:");
draw_text(_center_x, _center_y + 50, "Press F1 for Warrior");
draw_text(_center_x, _center_y + 100, "Press F2 for Scholar");
draw_text(_center_x, _center_y + 150, "Press F3 for Thief");