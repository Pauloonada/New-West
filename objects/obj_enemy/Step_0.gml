vspd = vspd + grv;


// PERSEGUIR PLAYER
if (instance_exists(obj_player)) {
    var _dir = point_direction(x, y, obj_player.x, obj_player.y);
    
    // mover-se na direção do player
    hspd = lengthdir_x(spd, _dir);
}
else {
    hspd = 0;
}

//COLISÃO COM OUTROS INIMIGOS
if (place_meeting(x + hspd, y, obj_enemy)) {
    hspd = 0;
}

vspd = vspd + grv;

// COLISÃO HORIZONTAL
if place_meeting(x + hspd, y, obj_floor)
{	
		while(!place_meeting(x + sign(hspd), y, obj_floor))
	{
		x = x + sign(hspd)
	}
	
	hspd = 0;
}

if place_meeting(x + hspd, y, obj_wall){
	while (!place_meeting(x + sign(hspd), y, obj_wall)){
		x += sign(hspd)
	}
	
	hspd = 0
}

x = x + hspd

// COLISÃO VERTICAL
if place_meeting(x,y+vspd,obj_wall){
	
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign(vspd);
	}
	
	vspd = 0;
}

if place_meeting(x, y + vspd, obj_floor){
	
	vspd = 0;
}

if place_meeting(x, y + vspd, obj_enemy){
	
	vspd = 0;
}

y = y + vspd

if (obj_player.x >= x) {
    image_xscale = 1;
}
else if (obj_player.x < x) {
    image_xscale = -1;
}