// Generate random value for each ammo drop
if (random(1) <= prob_drop_bomb) {
    array_push(global.ammo_list, "bomb");
}

if (random(1) <= prob_drop_freeze) {
    array_push(global.ammo_list, "freeze");
}

if (random(1) <= prob_drop_lightning) {
    array_push(global.ammo_list, "lightning");
}