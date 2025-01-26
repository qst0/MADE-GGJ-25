/// @desc
if not win {
	if step / 120 >= 60 { // win the game after 60 seconds
		win = true
		room_goto(room_game_win)
	} else {
		if instance_count < 20 and step % 12 = 1 {
			instance_create_depth(
			irandom_range(32,room_width-32),
			irandom_range(64,256),
			0,
			obj_bubble_breakout_bounce
			) 
		}
		if step % 1200 = 1 {
			global.bubble_breakout_speed += 0.1 // newly created bubbles will be faster
		}
	}
	step++
} else {

	// step event after win
}