/// @desc
step = 0
randomize()
global.score = 0

obj_width = sprite_get_width(object_get_sprite(obj_bubble));
obj_height = sprite_get_height(object_get_sprite(obj_bubble));
ammo_left = 5;
num_bubble = 2;
bubble_created = 0
global.bubble_left = num_bubble;