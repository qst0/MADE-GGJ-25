/// @desc
with other {
	image_blend = choose(c_aqua,c_red)
	score--
	if image_index <= 24 {
		image_index = 24
	}
}

if other.visible
{
    move_bounce_all(false);
}

if image_index <= 24 {
		image_index = 24
	}