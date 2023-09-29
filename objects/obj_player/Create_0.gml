spd = 5;
hspd = 0;
vspd = 0;
grv = 0.4;
global.life = 4;
image_speed = 1;
peak_cursor = function(){
	// CHECAR SE O X DO MOUSE É MAIOR QUE O DO PLAYER
	if (mouse_x >= x){
		// VIRA Á DIREITA
		image_xscale = 1;
	}
	
	else{
		// VIRA Á ESQUERDA
		image_xscale = -1;
	}
}