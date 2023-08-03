x = obj_player.x;
y = obj_player.y;

if (mouse_x < x){
	image_xscale = -1
	
	image_angle = point_direction(-x, -y, -mouse_x, -mouse_y)
}

else{
	image_xscale = 1
	
	image_angle = point_direction(x, y, mouse_x, mouse_y)
}