/// @description Declaração de Variáveis
draw_set_font(ft_menu);
//
button_selected			= false;
button_text_spacing	= 4;

button_width				= string_width(button_info[0]) + button_text_spacing * 2;
button_height				= (string_height(button_info[0]) + button_text_spacing * 2);

button_colour				= obj_menu_controller.m_default_colour;

switch(button_info[1]){
	case OPTION_TYPE.SHIFT:
		shift_value = script_execute(button_info[3]);
		shift_size = 64;
		button_width += shift_size + button_text_spacing;
		
		shift_pos[0]		= [x + string_width(button_info[0]) + button_text_spacing + sprite_get_width(spr_menu_pointer) / 2, y + button_height / 2];
		shift_pos[1]		= [x + button_width - button_text_spacing - sprite_get_width(spr_menu_pointer) / 2, y + button_height / 2];
		
		shift_colour[0]	= obj_menu_controller.m_default_colour;
		shift_colour[1]	= obj_menu_controller.m_default_colour;
		//
		break;
	case OPTION_TYPE.TOGGLE:
		button_width += sprite_get_width(spr_menu_toggle);
		
		break;
}

//Estética
image_xscale = button_width / sprite_width;
image_yscale = button_height / sprite_height;

//
draw_set_font(noone);