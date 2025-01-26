// Get mouse position
var mx = mouse_x;
var my = mouse_y;

// Create obj_bubble_bomb at mouse position with a specific depth
instance_create_depth(mx, my, 0, obj_bubble_bomb)
//show_debug_message("Mouse clicked at: " + string(mouse_x) + ", " + string(mouse_y));