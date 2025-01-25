/// @desc

if step % 120 = 1 {
	instance_create_depth(irandom_range(0,room_width), -50, 0, obj_bubble)
}

step++