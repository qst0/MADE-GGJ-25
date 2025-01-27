/// @desc
if global.prev_room = room_bubble_up {
	draw_text(x,y-15,"Your Score: "+string(global.last_up_score))
	draw_text(x,y+15,"High Score: "+string(global.bubble_up_highest))
}
if global.prev_room = room_bubble_breakout {
	draw_text(x,y-15,"Your Score: "+string(global.breakout_score))
	draw_text(x,y+15,"High Score: "+string(global.breakout_high_score))
}
if global.prev_room = room_td {
    draw_text(x,y-15,"Your Score: "+string(global.score))
    if global.score > global.td_high_score{
        global.td_high_score = global.score
    }
    draw_text(x,y+15,"High Score: "+string(global.td_high_score))
}
