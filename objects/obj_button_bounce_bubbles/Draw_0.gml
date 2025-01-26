/// @desc
draw_self()
if global.bounce_bubbles_time > 0 {
	draw_text(x-75,y-20,"Best Time: "+string(global.bounce_bubbles_time))
} else {
	draw_text(x-75,y-20,"No High Score, Play Now!")
}
draw_text(x-20,y,"Bounce Bubbles")
