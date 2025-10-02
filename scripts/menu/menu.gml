function menu_play(){
	room_goto(rm_gameplay);
	obj_menu_controller.m_current_page = MENU_PAGE.PAUSE;
}

function menu_go_back(){
	room_goto(rm_menu);
	obj_menu_controller.m_current_page = MENU_PAGE.MAIN;
}

function menu_exit(){
	global.pause = true;
	//
	instance_create_depth(128, 32, depth - 10, obj_menu_popupbox, {
		popup_text : "Você deseja sair?",
		popup_dimensions : [128, 128],
		popup_buttons : [
			["Sim", game_end], ["Não", popup_close]
		]
	});
}

function menu_change_volume(volume){
	global.sound_vol = volume/10;
}

function menu_get_volume(){
	return global.sound_vol * 10;	
}

function menu_toggle_fullscreen(){
	window_set_fullscreen(!window_get_fullscreen());	
}

function popup_close(){
	instance_destroy(obj_menu_popupbox);	
	global.pause = false;
}

