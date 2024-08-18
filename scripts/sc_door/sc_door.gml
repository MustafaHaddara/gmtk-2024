function door_should_open(key_id, inverted) {
	if inverted {
		return !get_global_key(key_id)
	} else {
		return get_global_key(key_id)
	}
}