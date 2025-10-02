/// @description 
draw_self();
draw_set_font(ft_menu);
draw_set_color(obj_menu_controller.m_default_colour);
//
var _xcenter = x + sprite_width / 2;

draw_text(_xcenter - string_width(popup_text)/2, y + string_height(popup_text) + text_spacing, popup_text);
//
draw_set_color(noone);
draw_set_font(noone);