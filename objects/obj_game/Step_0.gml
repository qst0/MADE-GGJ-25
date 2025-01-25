/// @desc

if step % 120 = 1 {
	instance_create_depth(irandom_range(32,room_width-32), room_height-16, 0, obj_bubble)
}

step++