/// @desc
if win = false {
	var remaining_time = string(timelimit - step/120)
	draw_text(20,20,"Time remaining: " + remaining_time)
} else {
	draw_text(20,20,"You Win!")
}
draw_text(20, 40, "Lives left: " + string(global.lives))