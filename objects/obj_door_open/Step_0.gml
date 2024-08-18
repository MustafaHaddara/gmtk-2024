event_inherited()

if draw_offset < 48 {
	draw_offset += param_speed
}

if !get_global_key(key_id) {
	_d = instance_create_layer(x, y, self.layer, obj_door_close)
	_d.key_id = key_id
	_d.rm_scale = rm_scale
	_d.image_xscale = self.image_xscale
	_d.image_yscale = self.image_yscale
	
	instance_destroy(self)
}
