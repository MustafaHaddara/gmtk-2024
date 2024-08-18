draw_set_font(fnt_label);

draw_set_halign(fa_center);
draw_set_valign(fa_top);

draw_set_color(c_black)

draw_text_transformed(x + 0, y + 0, text, image_xscale, image_yscale, 0);