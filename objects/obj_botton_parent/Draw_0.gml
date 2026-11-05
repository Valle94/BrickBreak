draw_self();

//Button Font
if button_text = "PLAY"
{
	draw_set_font(fnt_buttons)
}

draw_set_color(c_black)

//Text alignment within button
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//Text variable is drawn in the button
draw_text(x, y, button_text);

//Resetting draw alignment
draw_set_font(fnt_game_ui)
draw_set_halign(fa_left);
draw_set_valign(fa_top);