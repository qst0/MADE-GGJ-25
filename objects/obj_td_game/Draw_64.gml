/// @desc
draw_text(20,20,"Score: "+string(global.score))



if global.bubble_left == 0//instance_number(obj_bubble_bounce) == 0
{
    // Get the viewport dimensions
    var viewport_width = view_wport;  // View width
    var viewport_height = view_hport; // View height
    
    // Calculate the position to center the text
    var text = "You won!";
    var text_width = string_width(text);
    var text_height = string_height(text);
    
    // Draw the text at the center of the viewport
    draw_text(viewport_width / 2 - text_width / 2 + view_xview[0], viewport_height / 2 - text_height / 2 + view_yview[0], text);
    alarm[0] = 300;
}

var screen_w = view_wport;
var margin = 20;
var text_x = screen_w - margin;  // Position near the right edge
var text_y = margin;  // Top margin

// Build the ammo display string
var ammo_display = "";

for (var i = 0; i < array_length(global.ammo_list); i++) {
    var ammo_type = global.ammo_list[i];
    if (ds_map_exists(global.ammo_emojis, ammo_type)) {
        ammo_display += global.ammo_emojis[? ammo_type] + " ";
    } else {
        ammo_display += "? ";  // Fallback if no emoji found
    }
}

draw_text(220, text_y, "Ammo:" + ammo_display);