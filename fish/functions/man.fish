function man
    # LESS_TERMCAP_mb - begin blink
    # LESS_TERMCAP_md - begin bold
    # LESS_TERMCAP_me - end mode
    # LESS_TERMCAP_so - begin standout
    # LESS_TERMCAP_se - end standout
    # LESS_TERMCAP_us - begin underline
    # LESS_TERMCAP_ue - end underline
    env \
        LESS_TERMCAP_mb=(set_color blue) \
        LESS_TERMCAP_md=(set_color -o blue) \
        LESS_TERMCAP_me=(set_color normal) \
        LESS_TERMCAP_so=(set_color yellow) \
        LESS_TERMCAP_se=(set_color normal) \
        LESS_TERMCAP_us=(set_color magenta) \
        LESS_TERMCAP_ue=(set_color normal) \
        man $argv
end

