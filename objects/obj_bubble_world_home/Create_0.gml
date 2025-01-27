global.breakout_high_score = 0
global.bubble_up_highest  = 0
if not audio_is_playing(Bubble_World_3) {
	audio_stop_all()
	audio_play_sound(Bubble_World_3,10,true)
	
}
draw_set_font(font_press_start_2P)