/// @desc
draw_text(20,20,"Score: "+string(global.score))
//draw_text(200,20,"Ammo: "+string(array_length(global.ammo_list)))



if global.bubble_left == 0//instance_number(obj_bubble_bounce) == 0
{
    // Get the viewport dimensions
    var viewport_width = view_wport[0];  // View width
    var viewport_height = view_hport[0]; // View height
    
    // Calculate the position to center the text
    var text = "You won!";
    var text_width = string_width(text);
    var text_height = string_height(text);
    
    // Draw the text at the center of the viewport
    draw_text(viewport_width / 2 - text_width / 2 + view_xview[0], viewport_height / 2 - text_height / 2 + view_yview[0], text);
    alarm[0] = 300;
}

var screen_w = view_wport[0];
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

//// Align text to the right
//draw_set_halign(fa_right);
//draw_set_valign(fa_top);
    