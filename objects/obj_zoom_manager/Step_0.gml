var _active_camera = view_camera[0]

current_frame += 1
if current_frame > target_frames {
	return
}

var _t = current_frame / target_frames
var _size = eerp(start_size, target_size, _t)
var _x = eerp(start_x, target_x, _t)
var _y = eerp(start_y, target_y, _t)
	
camera_set_view_size(_active_camera, _size, _size)
camera_set_view_pos(_active_camera, _x, _y)
