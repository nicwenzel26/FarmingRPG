



//SPRITE MANAGMENT ****************************************************
if(move_y > 0) {
	sprite_index = down_sprite
}
else if(move_x < 0) {
	sprite_index = left_sprite
}

else if(move_x > 0) {
	sprite_index = right_sprite
}
else if(move_y < 0) {
	sprite_index = up_sprite
}

if(move_x == 0 and move_y == 0) {
	image_index = 0
}


//APPLY MOVEMENT *******************************************************
x += move_x
y += move_y