/// @desc
if points < 0 {
	points = 0
}
if not win {
	if points >= 100 {
		win = true
		global.bounce_game_final_score = step / 120
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
}
