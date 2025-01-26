/// @desc
if win = false {
	draw_text(20,20,"Score: "+string(points))
} else {
	draw_text(20,20,"You Win!")
}
draw_text(20,40,"Time Spent: "+string(step/120))