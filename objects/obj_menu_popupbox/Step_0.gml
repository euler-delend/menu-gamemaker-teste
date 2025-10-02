/// @description Lógica de Navegação
var _mov_dir = global.a_input_pressed[INPUT_KEY.RIGHT] - global.a_input_pressed[INPUT_KEY.LEFT];
popup_current_option += _mov_dir;

if(popup_current_option < 0){
	popup_current_option = popup_button_count  - 1;
}else if(popup_current_option >= popup_button_count ){
	popup_current_option = 0;	
}

//Verificando se o mouse está acima de um botão
if(global.mouse_moved || mouse_check_button_pressed(mb_left)){
	for(var _i = 0; _i < popup_button_count ; _i++){
		if(position_meeting(mouse_x, mouse_y, popup_buttons[_i])){
			popup_current_option = _i;
			break;
		}
	}
}
//
popup_buttons[popup_current_option].button_selected = true;