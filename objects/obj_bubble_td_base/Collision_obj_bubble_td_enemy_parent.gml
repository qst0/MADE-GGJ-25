instance_destroy(other);
audio_play_sound(sfx_block,1,false)
global.hp -= 1
if (global.hp == 0) {
    image_index = 25;
}

size += grow_delta;
image_xscale = size;
image_yscale = size;

x = 384 - sprite_width/2;
y = 683 - sprite_height/2;
