draw_set_font(fnt_label);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white)

if hide_on_key_id >= 0 {
	if door_should_open(hide_on_key_id, inverted) {
		return 
	}
}

draw_text_transformed(x + 0, y + 0, "" + string(text), image_xscale, image_yscale, 0);