var room_h = 1366;
var room_w = 768;

if (step == levels[active_level][next_enemy_index].spawn_time) {
    var enemy_specs = levels[active_level][next_enemy_index];
    
    var x_spawn;
    var y_spawn;
    if (enemy_specs.degree >= 45 && enemy_specs.degree < 135) {
        // spawn on south edge
        
        var deg = (135 - enemy_specs.degree)/90; // % of axis are spawning from
        x_spawn = deg * room_w;
        y_spawn = room_h;
    } else if (enemy_specs.degree >= 135 && enemy_specs.degree < 225) {
        // spawn on west edge
        
        var deg = (enemy_specs.degree - 135)/90;
        x_spawn = 0;
        y_spawn = deg * room_h;
    } else if (enemy_specs.degree >= 225 && enemy_specs.degree < 315) {
        // spawn on north edge
        
        var deg = (enemy_specs.degree - 225)/90;
        x_spawn = deg * room_w;
        y_spawn = 0;
    } else {
        // spawn on east edge
        
        var deg = 0;
        if (enemy_specs.degree >= 0) {
            deg += (45 + enemy_specs.degree)/90;
        } else {
            deg += (enemy_specs.degree - 315)/90;
        }
        x_spawn = room_w;
        y_spawn = deg * room_h;
    }
    
    x_spawn = clamp(x_spawn, bubble_animations_v1_width + 1, room_w - bubble_animations_v1_width - 1);
    y_spawn = clamp(y_spawn, bubble_animations_v1_width + 1, room_h - bubble_animations_v1_width - 1);
    
	// Get a list of all instances in the collision area
	var collisions = ds_list_create();
	collision_circle_list(x_spawn, y_spawn, bubble_animations_v1_width, all, false, true, collisions, false);

	var _collision_instance = noone;
	for (var i = 0; i < ds_list_size(collisions); i++) {
	    var instance = collisions[| i];
	    if (instance.solid) {
	        _collision_instance = instance;
	        break;
	    }
	}
	ds_list_destroy(collisions);
	if (_collision_instance != noone) {
	    step--;
	} else {
		var new_instance;
		switch (enemy_specs.enemy_type) {
			case 0:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_base);
				break;
			case 1:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_grower);
				break;
			case 2:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_smart);
				break;
			default:
				show_debug_message("invalid enemy type trying to be spawn");
		}
		
		new_instance.direction = enemy_specs.spawn_direction;
        
        if (next_enemy_index < array_length(levels[active_level]) - 1) {
            next_enemy_index++;
        } else {
			end_of_wave_reached = true;
		}
    }
}

if (end_of_wave_reached && step % (3 * room_speed)) {
	var enemy_specs = {
		degree: random(360),
		enemy_type: irandom(2),
		spawn_direction: random(360),
	};
	
	var x_spawn;
    var y_spawn;
    if (enemy_specs.degree >= 45 && enemy_specs.degree < 135) {
        // spawn on south edge
        
        var deg = (135 - enemy_specs.degree)/90; // % of axis are spawning from
        x_spawn = deg * room_w;
        y_spawn = room_h;
    } else if (enemy_specs.degree >= 135 && enemy_specs.degree < 225) {
        // spawn on west edge
        
        var deg = (enemy_specs.degree - 135)/90;
        x_spawn = 0;
        y_spawn = deg * room_h;
    } else if (enemy_specs.degree >= 225 && enemy_specs.degree < 315) {
        // spawn on north edge
        
        var deg = (enemy_specs.degree - 225)/90;
        x_spawn = deg * room_w;
        y_spawn = 0;
    } else {
        // spawn on east edge
        
        var deg = 0;
        if (enemy_specs.degree >= 0) {
            deg += (45 + enemy_specs.degree)/90;
        } else {
            deg += (enemy_specs.degree - 315)/90;
        }
        x_spawn = room_w;
        y_spawn = deg * room_h;
    }
    
    x_spawn = clamp(x_spawn, bubble_animations_v1_width + 1, room_w - bubble_animations_v1_width - 1);
    y_spawn = clamp(y_spawn, bubble_animations_v1_width + 1, room_h - bubble_animations_v1_width - 1);
    
    //show_debug_message("room_height: " + string(room_height) + " room_width: " + string(room_width) + " bubble width: " + string(bubble_animations_v1_width));
    //show_debug_message("x_spawn: " + string(x_spawn) + " y_spawn: " + string(y_spawn));
	
	// Get a list of all instances in the collision area
	var collisions = ds_list_create();
	collision_circle_list(x_spawn, y_spawn, bubble_animations_v1_width, all, false, true, collisions, false);

	var _collision_instance = noone;
	for (var i = 0; i < ds_list_size(collisions); i++) {
	    var instance = collisions[| i];
	    if (instance.solid) {
	        _collision_instance = instance;
	        break;
	    }
	}
	ds_list_destroy(collisions);
	if (_collision_instance != noone) {
	    step--;
	} else {
		var new_instance;
		switch (enemy_specs.enemy_type) {
			case 0:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_base);
				break;
			case 1:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_grower);
				break;
			case 2:
				new_instance = instance_create_depth(x_spawn, y_spawn, 0, obj_bubble_td_enemy_smart);
				break;
			default:
				show_debug_message("invalid enemy type trying to be spawn");
		}
		
		new_instance.direction = enemy_specs.spawn_direction;
	}
}

step++;
global.score++;
