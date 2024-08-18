event_inherited()

if active_key_id >= 0 {
	is_active = get_global_key(active_key_id)
	
	if !self.was_active && is_active {
		// newly active
		sprite_index = spr_button
		self.was_active = is_active
	}
}