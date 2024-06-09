function _fake_tide_prompt
    set_color normal
    echo -n ' '
    set_color $fake_tide_pwd_color_dirs
    echo -n $PWD
    set_color normal
end