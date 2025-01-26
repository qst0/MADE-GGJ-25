/// @desc

if lives and instance_count < 50 and step % int64(120/4) == 1 {
	var rand_x_spot = irandom_range(32, room_width - 32)
	if !instance_place(rand_x_spot, room_height - 16, obj_bubble) { 
		instance_create_depth(rand_x_spot, room_height-16, 0, obj_bubble)
	}
}
 
if lives == 0 {
	global.tap_to_pop_time = step / 120
} else {
	step++
}