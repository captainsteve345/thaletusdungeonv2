// Step event
// Follow the player (world camera). Replace obj_player with your player object.
if instance_exists(oPlayer) {
    var px = oPlayer.x;
    var py = oPlayer.y;
    camera_set_view_pos(cam_dungeon, px - d_w/2, py - d_h/2);
}