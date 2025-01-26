show_debug_message("step: " + string(step));
if (step == levels[active_level][next_enemy_index].spawn_time) {
    var enemy_specs = levels[active_level][next_enemy_index];
    
    var x_spawn;
    var y_spawn;
    if (enemy_specs.degree >= 45 && enemy_specs.degree < 135) {
        // spawn on south edge
        
        var deg = (135 - enemy_specs.degree)/90; // % of axis are spawning from
        x_spawn = deg * room_width;
        y_spawn = room_height;
    } else if (enemy_specs.degree >= 135 && enemy_specs.degree < 225) {
        // spawn on west edge
        
        var deg = (enemy_specs.degree - 135)/90;
        x_spawn = 0;
        y_spawn = deg * room_height;
    } else if (enemy_specs.degree >= 225 && enemy_specs.degree < 315) {
        // spawn on north edge
        
        var deg = (enemy_specs.degree - 225)/90;
        x_spawn = deg * room_width;
        y_spawn = 0;
    } else {
        // spawn on east edge
        
        var deg = 0;
        if (enemy_specs.degree >= 0) {
            deg += (45 + enemy_specs.degree)/90;
        } else {
            deg += (enemy_specs.degree - 315)/90;
        }
        x_spawn = room_width;
        y_spawn = deg * room_height;
    }
    
    x_spawn = clamp(x_spawn, bubble_animations_v1_width + 1, room_width - bubble_animations_v1_width - 1);
    y_spawn = clamp(y_spawn, bubble_animations_v1_width + 1, room_height - bubble_animations_v1_width - 1);
    
    show_debug_message("room_height: " + string(room_height) + " room_width: " + string(room_width) + " bubble width: " + string(bubble_animations_v1_width));
    show_debug_message("x_spawn: " + string(x_spawn) + " y_spawn: " + string(y_spawn));
    
    var _collision_instance = collision_circle(x_spawn, y_spawn, bubble_animations_v1_width, all, false, true);
    show_debug_message("num collisions: " + string(_collision_instance));
    
    // if there's already an enemy in that space, go back a step and just wait until it's valid to spawn there
    if (_collision_instance != noone) {
        step--;
    } else {
        instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_base);
        
        if (next_enemy_index < array_length(levels[active_level]) - 1) {
            next_enemy_index++;
        }
    }
}

step++;
