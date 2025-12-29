// Check for input to select character
if (keyboard_check_pressed(vk_f1) && !char_selected) {
    char_selected = true;
    // Trigger fade-out transition to the first gameplay room
    fTransition_FadeToRoom(room_maze);
}
if (keyboard_check_pressed(vk_f2) && !char_selected) {
    char_selected = true;
    // Trigger fade-out transition to the first gameplay room
    fTransition_FadeToRoom(room_maze);
}
if (keyboard_check_pressed(vk_f3) && !char_selected) {
    char_selected = true;
    // Trigger fade-out transition to the first gameplay room
    fTransition_FadeToRoom(room_maze);
}