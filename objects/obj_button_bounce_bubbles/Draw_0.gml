/// @desc
draw_self()
draw_set_color(c_black)
if global.bounce_bubbles_time > 0 {
	draw_text(x-20,y-20,"Best Time: "+string(global.bounce_bubbles_time))
} else {
	draw_text(x-20,y-20,"Not finished!")
}
draw_text(x-20,y,"Bounce Bubbles")
draw_set_color(c_white)
