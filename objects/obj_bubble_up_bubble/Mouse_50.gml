show_debug_message("x: "+string(mouse_x));
show_debug_message("y: "+string(mouse_y));
var gui_mouse_x = device_mouse_x_to_gui(0)
var gui_mouse_y = device_mouse_y_to_gui(0)
show_debug_message(gui_mouse_x)
show_debug_message(gui_mouse_y)

var tilt_dir = 1
// this should be a fancy funtion in gms2 that knows this magic number
if gui_mouse_x >= (display_get_gui_width()/2) {
	tilt_dir = -1
}

var camera = view_camera[view_current];
var cameraNewAngle = camera_get_view_angle(camera) - tilt_dir;
camera_set_view_angle(camera, cameraNewAngle);

show_debug_message(cameraNewAngle);
global.phys_gravity_force = 8;
global.phys_gravity_direction = -cameraNewAngle + 90 % 360; // 90 is up?? // 270 is Down

global.phys_gravity_x = lengthdir_x(global.phys_gravity_force, global.phys_gravity_direction);
global.phys_gravity_y = lengthdir_y(global.phys_gravity_force, global.phys_gravity_direction);
show_debug_message(global.phys_gravity_x);
show_debug_message(global.phys_gravity_y);

physics_world_gravity(global.phys_gravity_x, global.phys_gravity_y);