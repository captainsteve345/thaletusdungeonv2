/// @func fPlayer_Get_InMotion
/// @desc {bool} gets if the player object is moving
function fPlayer_Get_InMotion() {

	var _inMotion = moving || turning;

	return _inMotion;


}
