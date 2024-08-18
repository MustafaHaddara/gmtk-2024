var _scale = power(8, rm_scale - 1)
var _draw_offset_l = _scale * draw_offset
var _draw_offset_r = _scale * (48 + draw_offset)

draw_sprite_ext(spr_door_l, 0, x - _draw_offset_l, y, _scale, _scale, 0, c_white, 1)
draw_sprite_ext(spr_door_r, 0, x + _draw_offset_r, y, _scale, _scale, 0, c_white, 1)