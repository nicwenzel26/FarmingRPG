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
//Else if allows only for 4 directional movement
if(input_up) {
	move_y -= spd;
}
else if(input_left) {
	move_x -= spd;
}
else if(input_right) {
	move_x += spd;
}
else if(input_down) {
	move_y += spd;
}

//COLLISION ***********************************************************

//If COLLISION MOVEMENT ZERO

//APPLY MOVEMENT *******************************************************
x += move_x
y += move_y