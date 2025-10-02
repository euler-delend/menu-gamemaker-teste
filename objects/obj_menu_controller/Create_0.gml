/// @description Declaração de Variáveis
global.pause = false;
src_load();
//Tipo de Input
enum INPUT_TYPE {
	KEYBOARD,
	MOUSE,
}

//Tipos de Opções
enum OPTION_TYPE {
	SCRIPT_EXECUTER,
	PAGE_CHANGER,
	TOGGLE,
	SHIFT,
}

//Páginas do menu
enum MENU_PAGE {
	MAIN,
	SETTINGS,
	PAUSE,
	NUM,
}

#region Definindo as páginas do menu

//
m_page[MENU_PAGE.MAIN] = [

	["Jogar", OPTION_TYPE.SCRIPT_EXECUTER, menu_play],
	["Configurações", OPTION_TYPE.PAGE_CHANGER, MENU_PAGE.SETTINGS],
	["Sair", OPTION_TYPE.SCRIPT_EXECUTER, menu_exit],
	
];

//
m_page[MENU_PAGE.SETTINGS] = [

	["Volume", OPTION_TYPE.SHIFT, menu_change_volume, menu_get_volume, [0, 10]],
	["Tela Cheia", OPTION_TYPE.TOGGLE, menu_toggle_fullscreen, window_get_fullscreen],
	["Voltar", OPTION_TYPE.PAGE_CHANGER, MENU_PAGE.MAIN],
	
];

m_page[MENU_PAGE.PAUSE] = [
	 ["Retornar", OPTION_TYPE.SCRIPT_EXECUTER, menu_go_back],
];

#endregion

////Variáveis de navegação
m_current_page			= MENU_PAGE.MAIN;
m_current_option		= array_create(MENU_PAGE.NUM, 0);

//Estética
m_default_colour		= c_black;
m_selected_colour		= c_red;

m_vertical_spacing		= 20;
m_position					= [32, 32];

#region Criação dos Botões
draw_set_font(ft_menu);
//
var _xx = m_position[0], _text;
for(var _i = 0; _i < MENU_PAGE.NUM; _i++){
	var  _yy = m_position[1];
	var _length = array_length(m_page[_i]);
	for(var _j = 0; _j < _length;  _j++;){
		_text = m_page[_i][_j][0];
		m_button[_i][_j] = instance_create_layer(_xx, _yy, layer, obj_menu_button,
		{
			button_info : m_page[_i][_j],
		});	
		m_button[_i][_j].visible = false;
		_yy += string_height(m_button[_i][_j].button_info[0]) + m_vertical_spacing;
	}
}
//
draw_set_font(noone);

#endregion
