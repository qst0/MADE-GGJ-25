if other.solid {
	move_bounce_all(false);
	var angle = point_direction(other.x, other.y, x, y);
    x += lengthdir_x(1, angle);
    y += lengthdir_y(1, angle);
}