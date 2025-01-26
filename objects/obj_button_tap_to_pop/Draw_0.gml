/// @desc
draw_self()
draw_set_color(c_black)
if global.tap_to_pop_time > 0 {
	draw_text(x-20,y-20,"Longest Run: "+string(global.tap_to_pop_time))
} else {
	draw_text(x-20,y-20,"No High Score, Play Now!")
}
draw_text(x-20,y,"Tap to Pop")
draw_set_color(c_white)
