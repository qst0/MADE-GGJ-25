/// @desc
move_bounce_all(false)

if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) >= 27 {
	obj_bounce_game.points += 10
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}