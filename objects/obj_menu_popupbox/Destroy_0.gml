/// @description Limpando botões.
for(var _i = 0; _i < popup_button_count ; _i++){
	if(instance_exists(popup_buttons[_i])){
		instance_destroy(popup_buttons[_i]);
	}
}




