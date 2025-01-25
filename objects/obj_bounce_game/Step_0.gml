/// @desc
if instance_count < 100 and step % 12 = 1{
	instance_create_depth(
	irandom_range(32,room_width-32),
	irandom_range(32,room_height-32),
	0,
	obj_bubble_bounce
	)
}
y+=10
step++