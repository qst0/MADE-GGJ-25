/// @desc
draw_self()
if global.breakout_high_score > 0 {
	draw_text(x-sprite_width/3,y-20,"Highest: "+string(global.breakout_high_score))
} else {
	draw_text(x-sprite_width/3,y-20,"No Score, Play Now!")
}
draw_text(x-20,y,"Bubble Breakout")
