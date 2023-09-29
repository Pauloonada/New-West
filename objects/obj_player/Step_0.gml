#region CONTROLES
key_right = keyboard_check(ord("D"));	// DIREITA
key_left = keyboard_check(ord("A"));		// ESQUERDA
key_jump = keyboard_check(ord("W"));		// PULO
key_reload = keyboard_check_pressed(ord("R"));	// RECARGA
mb_shoot = mouse_check_button_pressed(mb_left);
#endregion

#region MOVIMENTAÇÃO
var move = key_right - key_left


hspd = move * spd;

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
if place_meeting(x,y+vspd,obj_wall)
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y = y + sign(vspd);
	}
	
	vspd = 0;
}

if place_meeting(x, y + vspd, obj_floor){
	
	vspd = 0;
}

y = y + vspd

// JUMP
if (place_meeting(x,y+1,obj_wall) and key_jump) or (place_meeting(x, y + 1, obj_floor) and key_jump){
	
	//AJUSTAR A ALTITUDE:
	vspd -=12;	
}
#endregion

if global.life <= 0 game_restart();

peak_cursor();

#region TROCA DE SPRITES

if (!place_meeting(x,y+1,obj_wall))
{
	sprite_index = spr_player_jumpInicial;
	if (sign(vspd) > 0.5) sprite_index = spr_player; else sprite_index = spr_player_jumpInicial;
	
}
else
{
	if (hspd != 0)
	{
		sprite_index = spr_player_walking
	}
}
if hspd = 0 {
	if place_meeting(x, y+1, obj_wall){
		sprite_index = spr_player_idle;
	}
}

#endregion