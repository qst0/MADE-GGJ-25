instance_destroy(other);
effect_create_above(ef_explosion, x, y, 1, c_white);
size += 0.1;
image_xscale = size;
image_yscale = size;

x = 384 - sprite_width/2;
y = 683 - sprite_height/2;

if (size == 2) {
	show_debug_message("You have lost");
}