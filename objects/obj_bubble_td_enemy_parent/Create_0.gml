scale = 2
image_xscale = scale
image_yscale = scale
image_index = 6
speed = 1
orig_speed = speed
lightning_eff = false
lightning_radius = 0
is_frozen = false
freeze_timer = 0

prob_drop_bomb = 0.1
prob_drop_freeze = 0.1
prob_drop_lightning = 0.05


function trigger_lightning(trigger_time, radius)
{
    // Store the radius in an instance variable for use in the alarm event
    lightning_radius = radius;
    lightning_eff = true;
	audio_play_sound(sfx_lightning,1,false)
    // Set an alarm to trigger after the specified time
    alarm[0] = trigger_time;
}

function trigger_freeze(time)
{
    // Set the freeze time as an instance variable
    freeze_timer = time;
	audio_play_sound(sfx_ice,1,false)
    // Set the flag to indicate the object is frozen
    is_frozen = true;
}