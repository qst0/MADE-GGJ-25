/// @desc
if not win {
	if points >= 1000 {
		win = true
		global.bounce_bubbles_time = step / 120
		room_goto(room_game_win)
	} else {
		if instance_count < 100 and step % 12 = 1 {
			instance_create_depth(
			irandom_range(32,room_width-32),
			irandom_range(32,room_height-32),
			0,
			obj_bubble_bounce
			)
		}
	}
	step++
} else {
	// step event after win
}
