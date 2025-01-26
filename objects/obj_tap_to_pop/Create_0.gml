/// @desc
if not audio_is_playing(Bubble_World_2) {
	audio_stop_all()
	audio_play_sound(Bubble_World_2,10,true)
	
}
draw_set_font(font_press_start_2P)
step = 0
lives = 10