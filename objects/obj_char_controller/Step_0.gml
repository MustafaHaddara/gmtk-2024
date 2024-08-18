if !should_move(rm_scale, is_character) {
	return
}

direction = global.direction;
diff = move_speed(rm_scale, is_character)
switch (direction) {
	case 0: x += diff; break;
	case 180: x -= diff; break;
	
	case 270: y += diff; break;
	case 90: y -= diff; break;
}
