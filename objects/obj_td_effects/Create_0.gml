global.current_lightning_effects = ds_list_create();

/// @description add_lightning_effect(x1, y1, x2, y2)
/// @param {real} x1 - Starting x coordinate
/// @param {real} y1 - Starting y coordinate
/// @param {real} x2 - Ending x coordinate
/// @param {real} y2 - Ending y coordinate

function add_lightning_effect(x1, y1, x2, y2)
{
    var effect_data = array_create(10);

    effect_data[0] = x1;         // Start position X (target)
    effect_data[1] = y1;         // Start position Y (target)
    effect_data[2] = x2;         // End position X (self)
    effect_data[3] = y2;         // End position Y (self)
    effect_data[4] = c_white;    // Color 1
    effect_data[5] = c_yellow;   // Color 2
    effect_data[6] = 0.2;        // Alpha min
    effect_data[7] = 0.5;        // Alpha max
    effect_data[8] = room_speed;  // Lifetime in frames (5 seconds)
    effect_data[9] = current_time;    // Start time

    ds_list_add(global.current_lightning_effects, effect_data);
}