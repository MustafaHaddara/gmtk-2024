// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_global_key(key_id) {
	return global.keys[$ global.room_key][key_id]
}

function set_global_key(key_id, val) {
	global.keys[$ global.room_key][key_id] = val
}