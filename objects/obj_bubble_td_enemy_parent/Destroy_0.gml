if (random(1) <= prob_drop_bomb) {
    array_push(global.ammo_list, "bomb");
}

else
{
    if (random(1) <= prob_drop_freeze) {
    array_push(global.ammo_list, "freeze");
}

    else if (random(1) <= prob_drop_lightning) {
        array_push(global.ammo_list, "lightning");
    }
}