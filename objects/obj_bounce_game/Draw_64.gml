/// @desc
if win = false {
	var pointString = points > 0 ? string(points) : "0"
	draw_text(20,20,"Score: " + pointString)
} else {
	draw_text(20,20,"You Win!")
}
draw_text(20,40,"Time Spent: "+string(step/120))