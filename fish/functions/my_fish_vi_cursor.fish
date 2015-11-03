function __my_fish_cursor_rxvt -d 'Set cursor color (rxvt)'
  set -l color $argv[1]
  echo -en "\e]12;$color\x7"
end

function my_fish_vi_cursor -d 'Set cursor color to reflect vi mode'
  switch "$COLORTERM"
    case rxvt
      set fcn __my_fish_cursor_rxvt
    case '*'
      return
  end

  set -l tmux_prefix
  set -l tmux_postfix
  if set -q TMUX
    set tmux_prefix echo -ne "'\ePtmux;\e'"
    set tmux_postfix echo -ne "'\e\\\\'"
  end

  set -q fish_cursor_unknown
  or set -g fish_cursor_unknown '#657b83'

  echo "
  function fish_vi_cursor_handle --on-variable fish_bind_mode
    set -l varname fish_cursor_\$fish_bind_mode
    if not set -q \$varname
      set varname fish_cursor_unknown
    end
    #echo \$varname \$\$varname
    $tmux_prefix
    $fcn \$\$varname
    $tmux_postfix
  end
  " | source
end
