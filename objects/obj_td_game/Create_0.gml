/// @desc
step = 0
randomize()
global.score = 0

//obj_width = sprite_get_width(object_get_sprite(obj_bubble));
//obj_height = sprite_get_height(object_get_sprite(obj_bubble));
//ammo_left = 5;

active_level = 0;
next_enemy_index = 0;

bubble_animations_v1_width = sprite_get_width(bubble_animations_v1);

levels = []; // 2D array where [level, enemy #] where enemy # is sorted chronologically by spawn time
levels[0] = [{ degree: 270, spawn_time: 3, enemy_type: 0 }, { degree: 0, spawn_time: round(1.5 * room_speed), enemy_type: 0 }, { degree: 90, spawn_time: 3 * room_speed, enemy_type: 0 }];
global.bubble_left = array_length(levels[0]);
global.ammo_list = ["lightning", "lightning", "freeze", "poison", "pin"];

global.ammo_dict = ds_map_create();
global.ammo_dict[? "bomb"] = obj_bubble_bomb;
global.ammo_dict[? "lightning"] = obj_bubble_lightning;
//global.ammo_dict["freeze"] = obj_bubble_freeze;
//global.ammo_dict["poison"] = obj_bubble_poison;
//global.ammo_dict["pin"] = obj_bubble_pin;

global.ammo_emojis = ds_map_create();
global.ammo_emojis[? "bomb"] = "B";
global.ammo_emojis[? "lightning"] = "L";
global.ammo_emojis[? "freeze"] = "F";
global.ammo_emojis[? "poison"] = "P";
global.ammo_emojis[? "pin"] = "N";
