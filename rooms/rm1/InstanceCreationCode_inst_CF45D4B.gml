//[wave,type,spawnpoint,delay]

waves = ds_list_create();
ds_list_add(waves, [0, obj_enemy, 0, 0]);
ds_list_add(waves, [0, obj_enemy, 0, 50]);
ds_list_add(waves, [0, obj_enemy, 0, 100]);
ds_list_add(waves, [0, obj_enemy, 1, 0]);
ds_list_add(waves, [0, obj_enemy, 1, 50]);
ds_list_add(waves, [0, obj_enemy, 1, 100]);

ds_list_add(waves, [1, obj_enemy, 0, 0]);
ds_list_add(waves, [1, obj_enemy, 0, 50]);
ds_list_add(waves, [1, obj_enemy, 0, 100]);
ds_list_add(waves, [1, obj_enemy, 1, 0]);
ds_list_add(waves, [1, obj_enemy, 1, 50]);
ds_list_add(waves, [1, obj_enemy, 1, 100]);

ds_list_add(waves, [2, obj_enemy, 0, 0]);
ds_list_add(waves, [2, obj_enemy, 0, 50]);
ds_list_add(waves, [2, obj_enemy, 0, 100]);
ds_list_add(waves, [2, obj_enemy, 1, 0]);
ds_list_add(waves, [2, obj_enemy, 1, 50]);
ds_list_add(waves, [2, obj_enemy, 1, 100]);

//spawnpoint 0
	//x-coordinate
spawn[0, 0] = 800;
	//y-coordinate
spawn[0, 1] = 288;

//spawnpoint 1
	//x-coordinate
spawn[1, 0] = 1600;
	//y-coordinate
spawn[1, 1] = 288;