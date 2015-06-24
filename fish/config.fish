set PATH $HOME/bin /usr/local/bin /usr/bin

set -x EDITOR "vim"
set -x PAGER "less"
set -x LESS "-I -R -S --shift=8"
#set -x SHELL "/usr/bin/fish"
set -x BROWSER "chromium"
set -x PYTHONPATH "$HOME/salt:$HOME/salt-pylint:$HOME/salt-testing"

set fish_greeting ""

function fish_prompt
    my_prompt
end

set -g fish_key_bindings my_vi_key_bindings

abbr -a mtp mktags-python
abbr -a ts timer -s
