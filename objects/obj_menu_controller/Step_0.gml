/// @description Navegação e Lógica do Menu
if(global.pause) exit;

//De-seleciona todos os botões
obj_menu_button.button_selected = false;

//Verificando se uma tecla de movimento foi utilizada
var _mov_dir = global.a_input_pressed[INPUT_KEY.DOWN] - global.a_input_pressed[INPUT_KEY.UP];
m_current_option[m_current_page] += _mov_dir;

if(m_current_option[m_current_page] >= array_length(m_page[m_current_page])){
	m_current_option[m_current_page] = 0;
}else if(m_current_option[m_current_page] < 0){
	m_current_option[m_current_page] = array_length(m_page[m_current_page]) - 1;
}

//Verificando se o Mouse está sobre um botão.
if(global.mouse_moved || mouse_check_button_pressed(mb_left)){
	var _length = array_length(m_page[m_current_page]);
	for(var _i = 0; _i < _length; _i++){
		if(position_meeting(mouse_x, mouse_y, m_button[m_current_page][_i])){
			m_current_option[m_current_page] = _i;
			break;
		}
	}
}

//Destaca o botão
m_button[m_current_page][ m_current_option[m_current_page] ].button_selected = true;