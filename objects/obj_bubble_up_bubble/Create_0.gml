/// @desc
global.last_up_score = 0
if not global.bubble_up_highest {
	global.bubble_up_highest = 0
}
win = false
global.phys_gravity_force = 8;
global.phys_gravity_direction = 90; // Up? //270 is Down

global.phys_gravity_x = lengthdir_x(global.phys_gravity_force, global.phys_gravity_direction);
global.phys_gravity_y = lengthdir_y(global.phys_gravity_force, global.phys_gravity_direction);
//show_debug_message(global.phys_gravity_x);
//show_debug_message(global.phys_gravity_y);

physics_world_gravity(global.phys_gravity_x, global.phys_gravity_y);

