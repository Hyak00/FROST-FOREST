if (instance_exists(obj_player))
{
    var cam_width = camera_get_view_width(cam);
    var cam_height = camera_get_view_height(cam);

    var target_x = obj_player.x - (cam_width / 2);
    var target_y = obj_player.y - (cam_height / 2);

    var current_x = camera_get_view_x(cam);
    var current_y = camera_get_view_y(cam);

    var new_x = lerp(current_x, target_x, follow_smooth);
    var new_y = lerp(current_y, target_y, follow_smooth);

    camera_set_view_pos(cam, new_x, new_y);
}