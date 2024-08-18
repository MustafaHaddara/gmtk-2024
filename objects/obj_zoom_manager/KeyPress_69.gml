if global.scale == 1 {
	return
}

var _active_camera = view_camera[0]
start_size = camera_get_view_width(_active_camera)
start_x = camera_get_view_x(_active_camera)
start_y = camera_get_view_y(_active_camera)

// in seconds
var _gamespeed = game_get_speed(gamespeed_fps);
target_frames = _gamespeed * scale_time
current_frame = 0

global.scale -= 1

var _target
if global.scale == 1 {
	_target = instance_find(obj_zoom_target_sm, 0)
}
if global.scale == 2 {
	_target = instance_find(obj_zoom_target_md, 0)
}
if global.scale == 3 {
	_target = instance_find(obj_zoom_target_lg, 0)
}

target_size = sizes[global.scale-1]
target_x = _target.x
target_y = _target.y

set_active_char()
set_colliders()