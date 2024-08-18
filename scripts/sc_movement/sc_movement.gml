// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function should_move(_rm_scale, _is_character) {
	if global.direction == noone {
		return false
	}

	if _is_character {
		return global.scale >= _rm_scale;
	}
	
	return global.scale > _rm_scale;
}

function move_speed(_rm_scale, _is_character) {
	_base_movement = 6

	var _mult = power(8, global.scale - 1)

	return _base_movement * _mult
}

function set_active_char() {
	var active_char;
	for (var i = 0; i < instance_number(obj_char); ++i) {
	     var char = instance_find(obj_char, i);
		 if (char.rm_scale == global.scale) {
			 active_char = char;
			 break;
		 }
	}
	global.active_char = active_char;
}

function set_colliders() {
	var colliders = array_create(0, noone)
	
	// do the walls
	push_active(obj_wall, colliders)
	push_active(obj_wall_elec, colliders)
	push_active(obj_door, colliders)
	
	global.active_colliders = colliders
}

function push_active(asset, arr) {
	for (var i = 0; i < instance_number(asset); ++i) {
	     var obj = instance_find(asset, i);
		 if (obj.rm_scale == global.scale) {
			 array_push(arr, obj)
		 }
	}
}