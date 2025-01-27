instance_destroy(other);
audio_play_sound(sfx_block,1,false)
size += grow_delta;
image_xscale = size;
image_yscale = size;

x = 384 - sprite_width/2;
y = 683 - sprite_height/2;

if (size == 1 + grow_delta * 10) {
	image_index = 25;
	show_debug_message("You have lost");
    room_goto(room_game_loss);
}