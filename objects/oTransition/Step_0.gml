switch (transition_state) {
    case "fade_out":
        transition_alpha += transition_speed;
        if (transition_alpha >= 1) {
            transition_alpha = 1;
            // Go to the target room
            room_goto(target_room);
            transition_state = "fade_in";
        }
        break;
    
    case "fade_in":
        transition_alpha -= transition_speed;
        if (transition_alpha <= 0) {
            transition_alpha = 0;
            transition_state = "idle";
        }
        break;
}