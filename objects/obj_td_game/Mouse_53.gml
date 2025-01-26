// Get mouse position
var mx = mouse_x;
var my = mouse_y;

if (array_length(global.ammo_list) > 0) {
    // Get the first ammo type
    var next_ammo = global.ammo_list[0];
    
    // Remove the first element by shifting the array
    array_delete(global.ammo_list, 0, 1);
    
    if (ds_map_exists(global.ammo_dict, next_ammo)) {
        var obj_type = global.ammo_dict[? next_ammo];
        instance_create_depth(mx, my, 0, obj_type);
    } else {
        show_debug_message("Error: Unknown ammo type " + next_ammo);
    }
    
    // Show which ammo was used
    show_debug_message("Used ammo: " + next_ammo);
} else {
    show_debug_message("No more ammo left!");
}

// Create obj_bubble_bomb at mouse position with a specific depth
//if (ammo_left > 0){
    //instance_create_depth(mx, my, 0, obj_bubble_bomb);
    //ammo_left--;
//}
    
//show_debug_message("Mouse clicked at: " + string(mouse_x) + ", " + string(mouse_y));