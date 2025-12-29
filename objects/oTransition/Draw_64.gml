// Draw fade rectangle over entire screen
if (transition_state != "idle") {
    draw_set_alpha(transition_alpha);
    draw_rectangle_color(0, 0, GAME_WIDTH_FULL, GAME_HEIGHT_FULL, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
}