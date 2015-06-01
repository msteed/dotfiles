function my_vi_key_bindings
  fish_vi_key_bindings
  bind \cl 'clear; commandline -f repaint'
  bind \cu backward-kill-line
  bind -M insert \cl 'clear; commandline -f repaint'
  bind -M insert \ce accept-autosuggestion
end

set -g fish_key_bindings my_vi_key_bindings
