

if image_blend = c_red and other.image_index < 24 {
	other.image_index = 24
	if scale < 3 {
		scale += 0.5
		image_xscale = scale
		image_yscale = scale
	} else {
		image_index = 24
	}
}

if other.image_index < 24 {
	move_bounce_all(true)
	if cooldown > 0 {
		x += (x - other.x)/10
		y += (y - other.y)/10
	}
	cooldown = 30
}
