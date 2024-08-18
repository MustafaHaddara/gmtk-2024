event_inherited()

if !is_active {
	if get_global_key(key_id) {
		is_active = true
		sprite_index = spr_wall_elec
		image_index = random(sprite_get_number(sprite_index))
	}
}

if is_active {
	if !get_global_key(key_id) {
		is_active = false
		sprite_index = spr_wall
	}
}