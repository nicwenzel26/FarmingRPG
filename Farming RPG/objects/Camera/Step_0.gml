
//Having the camera follow the player with a bit of wiggle room on either side. 
x = clamp(x, following.x - h_border, following.x + h_border)
y = clamp(y, following.y - v_border, following.y + v_border)