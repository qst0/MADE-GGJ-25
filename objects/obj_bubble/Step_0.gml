/// @desc
if !instance_place(x,y,obj_bubble) and y > 16 {
	y--
}
if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) = 27 {
	instance_destroy()
}