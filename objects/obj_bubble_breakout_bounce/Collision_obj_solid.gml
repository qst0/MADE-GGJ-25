move_bounce_all(false)
if other.y > 0 {
	x += (x - other.x)/15
} else {
	y += 1
}