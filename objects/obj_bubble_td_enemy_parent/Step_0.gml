if (lightning_eff) {
    // Alternate between white and normal color to create flashing effect
    if (current_time mod 6 < 3) {
        image_blend = c_yellow;  // Blend with white to create flash effect
        draw_set_alpha(0.5);  // Set alpha (opacity) for blending, adjust as needed
    } else {
        image_blend = c_white;  // Reset to normal (no blending)
        draw_set_alpha(1);  // Set alpha to full (no transparency)
    }
} else {
    image_blend = c_white;  // Ensure normal state when lightning effect is off
    draw_set_alpha(1);  // Full opacity when no effect
}

if (is_frozen) {
    image_blend = c_aqua;
    // Decrease the freeze timer by 1 frame
    freeze_timer -= 1;
    speed = speed * 0.1

    // If the timer runs out, unfreeze the object
    if (freeze_timer <= 0) {
        is_frozen = false;
        image_blend = c_white;  // Restore the original color
        speed = orig_speed;
        // Optionally, add any other unfreeze logic here
    }
}

if int64(image_index) = 11 {
	image_index = 8
}

if int64(image_index) >= 27 {
	audio_play_sound(_278933_Bubble_Pop_Button_1,1,false)
	instance_destroy()
}