/// @description Lógica de Execucão
if(!visible || !button_selected) exit;

button_colour = obj_menu_controller.m_selected_colour;

if(global.a_input_pressed[INPUT_KEY.CONFIRM] ||
( mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) ){
	button_selected = false;
	
	switch(button_info[1]){	
		case OPTION_TYPE.SCRIPT_EXECUTER:
				script_execute(button_info[2]);			
			break;
			
		case OPTION_TYPE.PAGE_CHANGER:
				obj_menu_controller.m_current_page = button_info[2];			
			break;	
			
		case OPTION_TYPE.TOGGLE:
				script_execute(button_info[2]);			
			break;	
	}
}

//

if(button_info[1] == OPTION_TYPE.SHIFT){
	shift_colour[0] = obj_menu_controller.m_default_colour;
	shift_colour[1] = obj_menu_controller.m_default_colour;
	
	var _mov_dir = global.a_input_pressed[INPUT_KEY.RIGHT] - global.a_input_pressed[INPUT_KEY.LEFT];
	
	if(point_in_circle(mouse_x, mouse_y, shift_pos[0][0], shift_pos[0][1], sprite_get_width(spr_menu_pointer) / 2)){
		shift_colour[0] = obj_menu_controller.m_selected_colour;
		//
		if(mouse_check_button_pressed(mb_left)){
			_mov_dir = -1;
		}
	}else if(point_in_circle(mouse_x, mouse_y, shift_pos[1][0], shift_pos[1][1], sprite_get_width(spr_menu_pointer) / 2)){
		shift_colour[1] = obj_menu_controller.m_selected_colour;
		//
		if(mouse_check_button_pressed(mb_left)){
			_mov_dir = 1;
		}
	}
	
	//
	if(_mov_dir != 0){
		script_execute(button_info[2], clamp(shift_value + _mov_dir, button_info[4][0], button_info[4][1]));
	}
	shift_value = script_execute(button_info[3]);
}

	