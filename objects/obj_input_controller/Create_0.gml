/// @description Declaração de Variáveis


#region Keyboard

//Tipos de Input
enum INPUT_KEY {
	ANY,
	CONFIRM, CANCEL,
	RIGHT, LEFT, UP, DOWN,
	
	
	
	NUM,
}


global.a_input					= array_create(INPUT_KEY.NUM, false);
global.a_input_pressed	= array_create(INPUT_KEY.NUM, false);

//Botões associados aos Inputs
a_input_keys = array_create(INPUT_KEY.NUM, noone);	

a_input_keys[INPUT_KEY.ANY]				= [vk_anykey];
	
a_input_keys[INPUT_KEY.CONFIRM]	= [ord("Z"), vk_enter];
a_input_keys[INPUT_KEY.CANCEL]		= [ord("X"), vk_backspace, vk_escape];
	
a_input_keys[INPUT_KEY.RIGHT]			= [ord("D"), vk_right];
a_input_keys[INPUT_KEY.LEFT]				= [ord("A"), vk_left];
a_input_keys[INPUT_KEY.UP]				= [ord("W"), vk_up];
a_input_keys[INPUT_KEY.DOWN]			= [ord("S"), vk_down];


#endregion

#region Mouse
global.mouse_moved = false;
i_last_mouse_pos = [mouse_x, mouse_y];
#endregion


function clean_inputs(){
	for(var _i = 0; _i < INPUT_KEY.NUM; _i++){
		global.a_input_pressed[_i] = false;
	}

	i_last_mouse_pos[0] = mouse_x;
	i_last_mouse_pos[1] = mouse_y;
	global.mouse_moved = false;	
}