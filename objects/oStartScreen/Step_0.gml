// Check for input to start the game
if (keyboard_check_pressed(vk_enter) && !start_selected) {
    start_selected = true;
    // Trigger fade-out transition to the first gameplay room
    fTransition_FadeToRoom(room_charselect);
}