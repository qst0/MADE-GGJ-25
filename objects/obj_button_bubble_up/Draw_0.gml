/// @desc
draw_self()
if global.bubble_up_highest > 0 {
	draw_text(x-sprite_width/3,y-20,"Highest: "+string(global.bubble_up_highest))
} else {
	draw_text(x-sprite_width/3,y-20,"No High Score, Play Now!")
}
draw_text(x-20,y,"Bubble Up")
