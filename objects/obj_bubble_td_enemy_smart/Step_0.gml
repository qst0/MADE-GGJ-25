// Inherit the parent event
event_inherited();

if (collison_cooldown > 0) {
    collison_cooldown--;
}
var base = instance_exists(obj_bubble_td_base) ? instance_find(obj_bubble_td_base, 0) : noone;
    

if (evolve_lvl == 1){
        show_debug_message("level 1")
        speed = 1
    } else if (evolve_lvl == 2){
        show_debug_message("level 2")
        image_blend = c_lime;
        speed = 2
    } else {
        show_debug_message("level 3")
        speed = 0.5
        image_blend = c_red;
        direction = point_direction(x, y, base.x, base.y);
    }