

if other.image_blend = c_red {
	instance_destroy()
}

if cooldown = 0 {
	move_bounce_all(true)
	x += (x - other.x)/15
	y += (y - other.y)/15
	cooldown = 30
}
