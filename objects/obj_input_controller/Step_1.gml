/// @description Verificando Inputs

//Keyboard
for(var _i = 0; _i < INPUT_KEY.NUM; _i++){
	var _length = array_length(a_input_keys[_i]);
	for(var _j = 0; _j <= _length; _j++){
		if(_j == _length){
			//Input não detectado
			global.a_input[_i] = false;
			break;
		}

		if(keyboard_check(a_input_keys[_i][_j])){
			//Input detectado
			if(!global.a_input[_i]){
				global.a_input_pressed[_i] = true;
			}
			global.a_input[_i] = true;			
			break;
		}
	}
}

//Mouse
if(mouse_x != i_last_mouse_pos[0] || mouse_y != i_last_mouse_pos[1]){
	global.mouse_moved = true;	
}
