set PATH $HOME/bin /usr/local/bin /usr/bin

set -x EDITOR "vim"
set -x PAGER "less"
set -x LESS "-I -R -S --shift=8"
#set -x SHELL "/usr/bin/fish"
set -x BROWSER "chromium"
set -x PYTHONPATH "$HOME/salt-current:$HOME/raas-current:$HOME/salt-pylint:$HOME/salt-testing"

set fish_greeting ""

set -g fish_key_bindings my_vi_key_bindings

abbr -a mtp mktags-python
abbr -a ts timer -s

abbr -a gs git status
abbr -a gd git diff
abbr -a gl git log --name-status
abbr -a ga git add
abbr -a gb git branch
abbr -a gci git commit
abbr -a gco git checkout
abbr -a gw git worktree
