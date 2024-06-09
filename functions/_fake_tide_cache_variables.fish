function _fake_tide_cache_variables
    set_color -o $fake_tide_pwd_color_anchors | read -gx _fake_tide_color_anchors
    set -gx _fake_tide_color_truncated_dirs "$(set_color $fake_tide_pwd_color_truncated_dirs)"
    set -gx _fake_tide_reset_to_color_dirs (set_color normal -b $fake_tide_pwd_bg_color; set_color $fake_tide_pwd_color_dirs)
    contains git $fake_tide_left_prompt_items $fake_tide_right_prompt_items && set -gx _fake_tide_location_color "$(set_color $fake_tide_git_color_branch)"
    if contains private_mode $fake_tide_left_prompt_items $fake_tide_right_prompt_items && test -n "$fish_private_mode"
        set -gx _fake_tide_private_mode
    else
        set -e _fake_tide_private_mode
    end
    set -gx _fake_tide_color_separator_same_color "$(set_color $fake_tide_prompt_color_separator_same_color)"
    if contains newline $fake_tide_left_prompt_items
        set_color $fake_tide_prompt_color_frame_and_connection -b normal | read -gx _fake_tide_prompt_and_frame_color
    else
        set -e _fake_tide_prompt_and_frame_color
    end
    if test "$fake_tide_prompt_add_newline_before" = true
        set -gx _fake_tide_add_newline
    else
        set -e _fake_tide_add_newline
    end
    if test "$fake_tide_prompt_pad_items" = true
        set -gx _fake_tide_pad ' '
    else
        set -e _fake_tide_pad
    end
end
