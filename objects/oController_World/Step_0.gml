if (keyboard_check_pressed(vk_tab)) {
    if (room_next(room) != -1) {
        fTransition_FadeToRoom(room_next(room));
    } else {
        fTransition_FadeToRoom(room_maze); // Loop back to first gameplay room
    }
}