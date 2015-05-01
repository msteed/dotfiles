function dropbox
    dropbox-cli "$argv"
end

function global
    /usr/bin/global --result=grep "$argv"
end

function grep
    /usr/bin/grep --color=always "$argv"
end

function ll
    /usr/bin/ls --color=always "$argv"
end

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
        man "$argv"
end

function pylint
    pylint2 --rcfile=$HOME/salt/.testing.pylintrc -r no $argv
end

set PATH $HOME/bin /usr/local/bin /usr/bin

set fish_greeting ""
set fish_color_cwd green
set fish_color_user cyan

fish_vi_mode

# why doesn't this work? could get rid of custom ~/.config/fish/functions/fish_vi_key_bindings.fish
#function fish_user_key_bindings
#    bind \cl 'clear; commandline -f repaint'
#    bind -M insert \cl 'clear; commandline -f repaint'
#end

