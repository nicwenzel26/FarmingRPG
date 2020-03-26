/// @description Insert description here
// You can write your code in this editor

if(do_transition) {
	if(room != spawn_room) {
		blackAlpha += 0.1
		
		if(blackAlpha >= 1) {
			room_goto(spawn_room)
		}
	}
	
	else {
		blackAlpha -= 0.1
		if(blackAlpha <= 0) {
			do_transition = false
		}
	}
	
	
	draw_set_alpha(blackAlpha);
	draw_rectangle_color(0,0, gui_width, gui_height,c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
}