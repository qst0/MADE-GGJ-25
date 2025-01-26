/// @desc
if not win {
	if score <= 0 {
		win = true
		global.bounce_bubbles_time = step / 120
		//Set Try Again Various
		global.prev_room = room
		room_goto(room_game_win)
	} else {
		if instance_count < 100 and step % 12 = 1{
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
