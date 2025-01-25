/// @desc
move_bounce_all(false)
if score <= 0 {
game_restart()
}

if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) >= 27 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}