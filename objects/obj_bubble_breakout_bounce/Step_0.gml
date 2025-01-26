/// @desc

if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) >= 27 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}
if cooldown> 0 {
	cooldown --	
}

if y > 1300 and int64(image_index) < 24 {
	global.lives--
	image_index = 24
	
}