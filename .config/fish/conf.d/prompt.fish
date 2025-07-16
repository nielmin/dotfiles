function fish_prompt
    string join '' -- (set_color blue) $USER (set_color yellow) '@' (set_color magenta) $hostname ' ' (set_color green) (prompt_pwd --full-length-dirs 2) (set_color normal) ' '
end
