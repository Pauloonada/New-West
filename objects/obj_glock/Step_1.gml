mb_shoot = mouse_check_button_pressed(mb_left);
key_reload = keyboard_check_pressed(ord("R"))

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

#region TIRO

//de onde o tiro sai
if (image_xscale = 1){
	var _xx = x + lengthdir_x(80, image_angle)
}

if (image_xscale = -1){
	var _xx = x + lengthdir_x(-80, image_angle)
}

if (mb_shoot) && (!room_first){
	
	
		if (global.ammo > 0) && (reload = false) && (can_shoot = true){
		
			can_shoot = false;
			alarm[1] = 35;
			
			with(instance_create_layer(_xx, y, "shoot", obj_shoot)){
			
				global.ammo--;
				speed = 18;
				direction = point_direction(x, y, mouse_x, mouse_y);
				image_angle = direction;
				}
		}
}

// recarga de balas
if (key_reload){
	
	if (reload = false) && (global.ammo < 30) && (global.ammomax >= 1){
		
		reload = true;
		audio_play_sound(Glock_shoot, 1, 0)
		alarm[0] = 50
	}
}

#endregion