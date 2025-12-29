/// @func fTransition_FadeToRoom(target_room)
/// @desc Initiates a fade transition to the target room
/// @arg {room} target_room
function fTransition_FadeToRoom(_target_room) {
    with (oTransition) {
        if (transition_state == "idle") {
            transition_state = "fade_out";
            target_room = _target_room;
            transition_alpha = 0;
        }
    }
}