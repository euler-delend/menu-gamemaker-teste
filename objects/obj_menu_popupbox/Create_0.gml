/// @description Declaração de Variáveis
popup_current_option = 0;
popup_button_count = array_length(popup_buttons);
//
draw_set_font(ft_menu);
//
text_spacing = 4;
popup_dimensions[0] = max(popup_dimensions[0], string_width(popup_text) + text_spacing * 2);

//Estética
image_xscale = popup_dimensions[0] / sprite_width;
image_yscale = popup_dimensions[1] / sprite_height;

//Criando botões
for(var _i = 0; _i < popup_button_count ; _i++){
	popup_buttons[_i] = instance_create_depth(x, y, depth - 1, obj_menu_button, {
		button_info : [popup_buttons[_i][0], OPTION_TYPE.SCRIPT_EXECUTER, popup_buttons[_i][1]],
	});
}

//Alinhando os botões de forma uniforme
var _button_spacing = (popup_dimensions[0] - text_spacing * 2) / popup_button_count ;

for(var _i = 0; _i < popup_button_count ; _i++){
	popup_buttons[_i].x = x + text_spacing + _button_spacing*_i + popup_buttons[_i].button_width/2;
	popup_buttons[_i].y = y + popup_dimensions[1] - popup_buttons[_i].button_height - text_spacing;
}
//
draw_set_font(noone);