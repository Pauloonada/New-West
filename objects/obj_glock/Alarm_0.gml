global.ammomax += global.ammo;
global.ammo = min(30, global.ammomax);
global.ammomax -= global.ammo;

reload = false;