/// @desc
step = 0
randomize()
global.score = 0

//obj_width = sprite_get_width(object_get_sprite(obj_bubble));
//obj_height = sprite_get_height(object_get_sprite(obj_bubble));
ammo_left = 5;

active_level = 0;
next_enemy_index = 0;

bubble_animations_v1_width = sprite_get_width(bubble_animations_v1);

levels = []; // 2D array where [level, enemy #] where enemy # is sorted chronologically by spawn time
levels[0] = [{ degree: 270, spawn_time: 3, enemy_type: 0 }, { degree: 0, spawn_time: round(1.5 * room_speed), enemy_type: 0 }, { degree: 90, spawn_time: 3 * room_speed, enemy_type: 0 }];
global.bubble_left = array_length(levels[0]);