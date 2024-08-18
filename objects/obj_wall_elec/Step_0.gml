event_inherited()

if !is_active {
	if get_global_key(key_id) {
		is_active = true
	}
}

if is_active {
	if !get_global_key(key_id) {
		is_active = false
		image_index = 0
	} else {
		image_index = random(sprite_get_number(sprite_index))
	}
}