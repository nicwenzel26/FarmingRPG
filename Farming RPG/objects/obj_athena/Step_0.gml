//MOVEMENT VARS*****************************************************
input_up = keyboard_check(ord("W"))
input_left = keyboard_check(ord("A"))
input_down = keyboard_check(ord("S"))
input_right = keyboard_check(ord("D"))

input_walk = keyboard_check(vk_control)
input_run = keyboard_check(vk_shift)

move_x = 0
move_y = 0

//ALTER SPEED *********************************************************
if(input_walk) {
	spd = walking_speed
}
else if(input_run) {
	spd = running_speed
}
else {
	spd = normal_speed
}

//MOVE WITH WASD *****************************************************
//This code allows movement to be canced when both keys are pressed
move_y = (input_down - input_up) * spd
if(move_y == 0) { move_x = (input_right - input_left) * spd }


//SPRITE MANAGMENT ****************************************************
if(move_y > 0) {
	sprite_index = spr_athena_down
}
else if(move_x < 0) {
	sprite_index = spr_athena_left
}

else if(move_x > 0) {
	sprite_index = spr_athena_right
}
else if(move_y < 0) {
	sprite_index = spr_athena_up
}

if(move_x == 0 and move_y == 0) {
	image_index = 0
}


//APPLY MOVEMENT *******************************************************
x += move_x
y += move_y