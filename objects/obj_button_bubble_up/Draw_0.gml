/// @desc
draw_self()
if global.bubble_up_highest > 0 {
	draw_text(x-sprite_width/3,y-20,"Higest Reached: "+string(global.bubble_up_highest))
} else {
	draw_text(x-sprite_width/3,y-20,"No Highest Height, Play Now!")
}
draw_text(x-20,y,"Bubble Up!")
