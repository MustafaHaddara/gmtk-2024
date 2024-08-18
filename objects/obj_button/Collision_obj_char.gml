if is_active && !is_pressed && rm_scale == other.rm_scale {
	is_pressed = true
	sprite_index = spr_button_pressed
	set_global_key(key_id, true)
}