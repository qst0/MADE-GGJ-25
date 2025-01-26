win = false
step = 0
randomize()
global.bubble_breakout_speed = 1

if not audio_is_playing(Bubble_World_1){
	audio_stop_all()
	audio_play_sound(Bubble_World_1,10,true)
}