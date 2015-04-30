function global
    /usr/bin/global --result=grep "$argv"
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

