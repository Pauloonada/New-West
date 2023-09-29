var mouse_click = mouse_check_button_pressed(mb_left);

if (mouse_click or keyboard_check_pressed(vk_space)){
	if (meutexto == noone){
		meutexto = instance_create_layer(x, y, "Dialogo", obj_texto);
		meutexto.texto = texto;
	}

	else{
		if (meutexto.pag >= meutexto.pag_limite){
			instance_destroy(meutexto);
			meutexto = noone;
		}
			
		else{
				
			with(meutexto){
				if (letra < tamanho_do_texto){
						letra = tamanho_do_texto;
				}
					
				else{
					pag++;
					letra = 0;
				}
			}
		}
	}
}

if keyboard_check_pressed(vk_enter){
	room_goto(2);
}