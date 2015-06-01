set PATH $HOME/bin /usr/local/bin /usr/bin

set -x EDITOR "vim"
set -x PAGER "less"
set -x LESS "-I -R -S --shift=8"
#set -x SHELL "/usr/bin/fish"
set -x BROWSER "chromium"
set -x PYTHONPATH "$HOME/salt:$HOME/salt-pylint:$HOME/salt-testing"

set fish_greeting ""
set fish_color_cwd green
set fish_color_user cyan

my_vi_mode
