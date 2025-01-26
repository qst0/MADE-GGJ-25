/// @desc
if y > ystart-100 {
	draw_text(20,20,"Go up higher!")
} else {
	global.last_up_score = ystart-y
	draw_text(20,20,global.last_up_score)
	if global.bubble_up_highest < global.last_up_score {
		global.bubble_up_highest = global.last_up_score 
	}
}
