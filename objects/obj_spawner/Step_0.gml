/// spawn

if (triggered){
	//Checa a lista de inimigos prontos pra spawnar e se estão, a wave spawna eles!
	
	for (var i = 0; i < ds_list_size(waves); i++){
		
		var next = ds_list_find_value(waves, i);
		
		if (next[_WAVE] == current_wave) && (next[_DELAY] == timer){
			
			var spawnpoint = next[_SPAWN];
			instance_create_layer(spawn[spawnpoint, 0], spawn[spawnpoint, 1], "Instances", next[_TYPE]);
		}
	}
	
	//increase timer
	timer++;
	
	//Next wave or end spawner when all enemies have died
	if (remaining[current_wave] <= 0){
		
		if (current_wave == total_waves){ // ran out of waves
			instance_destroy();
		}
		
		else{
			current_wave++;
			timer = 0;
		}
	}
}