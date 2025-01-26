/// @desc
if global.prev_room = room_bubble_up {
	draw_text(x,y-15,"Your Score: "+string(global.last_up_score))
	draw_text(x,y+15,"High Score: "+string(global.bubble_up_highest))
}