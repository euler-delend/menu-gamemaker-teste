/// @description Controle de Botões Ativos
if(global.pause) exit;
obj_menu_button.visible = false;

var _length = array_length(m_page[m_current_page]);
for(var _i = 0; _i < _length; _i++){
 	m_button[m_current_page][_i].visible = true;
}