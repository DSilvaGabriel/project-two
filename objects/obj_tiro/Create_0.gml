directioon = point_direction(x, y, mouse_x, mouse_y);

function fun_directionTiro(){
	x += lengthdir_x(1, directioon) * 5;
	y += lengthdir_y(1, directioon) * 5;	
}