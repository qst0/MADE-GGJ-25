scale = 2
image_xscale = scale
image_yscale = scale
image_index = 6
speed = 1
lightning_eff = false
lightning_radius = 0

function trigger_lightning(trigger_time, radius)
{
    // Store the radius in an instance variable for use in the alarm event
    lightning_radius = radius;
    lightning_eff = true;

    // Set an alarm to trigger after the specified time
    alarm[0] = trigger_time;
}
