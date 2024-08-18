if rm_scale == other.rm_scale {
	var _transition = instance_create_layer(0, 0, "Instances", obj_transition_pixelate);
	var _next_room = room_next(room);
	if (_next_room) == -1 {
		_next_room = 0
	}
	_transition.target_room = _next_room;
	instance_destroy();
}