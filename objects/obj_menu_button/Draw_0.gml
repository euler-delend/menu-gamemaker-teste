/// @description
draw_set_font(ft_menu);
draw_set_color(button_colour);
//
draw_self();
draw_text(x + button_text_spacing, y + button_text_spacing, button_info[0]);
//

switch(button_info[1]){
	case OPTION_TYPE.SHIFT:
		draw_sprite_ext(spr_menu_pointer, 0, shift_pos[0][0], shift_pos[0][1], 1, 1, 0, shift_colour[0], 1);
		draw_sprite_ext(spr_menu_pointer, 0, shift_pos[1][0], shift_pos[1][1], -1, 1, 0, shift_colour[1], 1);
		draw_text(shift_pos[0][0] + shift_size / 2 - string_width(shift_value) / 2 - button_text_spacing, shift_pos[0][1] - string_height(shift_value) / 2, shift_value);
		break;
	case OPTION_TYPE.TOGGLE:
		draw_sprite(spr_menu_toggle, script_execute(button_info[3]), x + string_width(button_info[0]) + button_text_spacing, y + string_height(button_info[0]) / 2 + button_text_spacing);
		break;
}

//
draw_set_font(noone);
draw_set_color(noone);
button_colour = obj_menu_controller.m_default_colour;




