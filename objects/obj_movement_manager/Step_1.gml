var dir = noone;

if (keyboard_check(ord("A")) || keyboard_check(vk_left)) {
	dir = 180
} else if (keyboard_check(ord("S")) || keyboard_check(vk_down)) {
	dir = 270
} else if (keyboard_check(ord("D")) || keyboard_check(vk_right)) {
	dir = 0
} else if (keyboard_check(ord("W")) || keyboard_check(vk_up)) {
	dir = 90
}

if dir == noone {
	global.direction = noone
	return
}

var active_char = global.active_char

var new_x = active_char.x
var new_y = active_char.y
var diff = move_speed(active_char.rm_scale, true)

switch dir {
	case 0: new_x += diff; break;
	case 180: new_x -= diff; break;
	
	case 90: new_y -= diff; break;
	case 270: new_y += diff; break;
}

with active_char {
	maybe_instance = instance_place(new_x, new_y, global.active_colliders)
	if maybe_instance != noone {
		if maybe_instance.rm_scale == active_char.rm_scale {
			// real collision
			// cancel
			dir = noone
		}
	}
}

global.direction = dir