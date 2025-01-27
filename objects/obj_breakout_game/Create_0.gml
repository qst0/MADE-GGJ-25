win = false
step = 0
timelimit = 40

randomize()

starting_difficulty = 1
difficulty_step = 0.5
difficulty_frequency = 10 //seconds
global.bubble_breakout_speed = starting_difficulty
global.lives = 3

if not audio_is_playing(Bubble_World_1){
	audio_stop_all()
	audio_play_sound(Bubble_World_1,10,true)
}